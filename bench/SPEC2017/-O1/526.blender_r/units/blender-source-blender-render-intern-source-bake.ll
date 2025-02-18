; ModuleID = 'blender/source/blender/render/intern/source/bake.c'
source_filename = "blender/source/blender/render/intern/source/bake.c"
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
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.BakeShade = type { %struct.ShadeSample, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, [3 x float], ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, float, float, i8, ptr, [3 x float], [3 x float], ptr, ptr }
%struct.ShadeSample = type { i32, [16 x ptr], [16 x %struct.ShadeInput], [16 x %struct.ShadeResult] }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.BakeImBufuserData = type { ptr, ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }

@R = external global %struct.Render, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"BakeShade\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"zspan for bake\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@get_next_bake_face.v = internal unnamed_addr global i32 0, align 4
@get_next_bake_face.obi = internal unnamed_addr global ptr null, align 8
@__const.get_next_bake_face.vec_solid = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@__const.get_next_bake_face.nor_alpha = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00], align 16
@__const.get_next_bake_face.nor_solid = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00], align 16
@__const.get_next_bake_face.disp_alpha = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00], align 16
@__const.get_next_bake_face.disp_solid = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"BakeImBufuserData\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"BakeMask\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"BakeDisp\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @RE_bake_ibuf_filter(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %5 = load i8, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i8 %5, 32
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @BKE_imbuf_alpha_test(ptr noundef %0) #12
  %9 = icmp eq i8 %8, 0
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i1 [ true, %3 ], [ %9, %7 ]
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @IMB_filter_extend(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %14

14:                                               ; preds = %13, %10
  br i1 %11, label %16, label %15

15:                                               ; preds = %14
  store i8 32, ptr %4, align 8, !tbaa !34
  br label %21

16:                                               ; preds = %14
  br i1 %12, label %21, label %17

17:                                               ; preds = %16
  %18 = load i8, ptr %4, align 8, !tbaa !34
  %19 = icmp eq i8 %18, 32
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @IMB_rectfill_alpha(ptr noundef %0, float noundef 1.000000e+00) #12
  br label %21

21:                                               ; preds = %16, %17, %20, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BKE_imbuf_alpha_test(ptr noundef) local_unnamed_addr #2

declare void @IMB_filter_extend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_rectfill_alpha(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RE_bake_ibuf_normalize_displacement(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  %6 = tail call float @llvm.fabs.f32(float %3)
  %7 = tail call float @llvm.fabs.f32(float %4)
  %8 = fcmp ogt float %6, %7
  %9 = select i1 %8, float %6, float %7
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %10, align 8, !tbaa !43
  %13 = load i32, ptr %11, align 4, !tbaa !44
  %14 = mul nsw i32 %13, %12
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %5
  %17 = fcmp ogt float %9, 0x3EE4F8B580000000
  %18 = fmul float %9, 2.000000e+00
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  br label %21

21:                                               ; preds = %16, %59
  %22 = phi i64 [ 0, %16 ], [ %62, %59 ]
  %23 = phi ptr [ %1, %16 ], [ %60, %59 ]
  %24 = phi ptr [ %2, %16 ], [ %61, %59 ]
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = icmp eq i8 %25, 2
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  br i1 %17, label %28, label %32

28:                                               ; preds = %27
  %29 = load float, ptr %23, align 4, !tbaa !46
  %30 = fadd float %9, %29
  %31 = fdiv float %30, %18
  br label %32

32:                                               ; preds = %27, %28
  %33 = phi float [ %31, %28 ], [ 5.000000e-01, %27 ]
  %34 = load ptr, ptr %19, align 8, !tbaa !47
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = shl i64 %22, 2
  %38 = and i64 %37, 4294967292
  %39 = getelementptr inbounds float, ptr %34, i64 %38
  %40 = getelementptr inbounds float, ptr %39, i64 2
  store float %33, ptr %40, align 4, !tbaa !46
  %41 = getelementptr inbounds float, ptr %39, i64 1
  store float %33, ptr %41, align 4, !tbaa !46
  store float %33, ptr %39, align 4, !tbaa !46
  %42 = getelementptr inbounds float, ptr %39, i64 3
  store float 1.000000e+00, ptr %42, align 4, !tbaa !46
  br label %43

43:                                               ; preds = %36, %32
  %44 = load ptr, ptr %20, align 8, !tbaa !48
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds i32, ptr %44, i64 %22
  %48 = fcmp ugt float %33, 0.000000e+00
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = fcmp ogt float %33, 0x3FEFEFEFE0000000
  %51 = tail call float @llvm.fmuladd.f32(float %33, float 2.550000e+02, float 5.000000e-01)
  %52 = select i1 %50, float 2.550000e+02, float %51
  br label %53

53:                                               ; preds = %46, %49
  %54 = phi float [ %52, %49 ], [ 0.000000e+00, %46 ]
  %55 = fptoui float %54 to i8
  %56 = getelementptr inbounds i8, ptr %47, i64 2
  store i8 %55, ptr %56, align 1, !tbaa !45
  %57 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %55, ptr %57, align 1, !tbaa !45
  store i8 %55, ptr %47, align 1, !tbaa !45
  %58 = getelementptr inbounds i8, ptr %47, i64 3
  store i8 -1, ptr %58, align 1, !tbaa !45
  br label %59

59:                                               ; preds = %43, %53, %21
  %60 = getelementptr inbounds float, ptr %23, i64 1
  %61 = getelementptr inbounds i8, ptr %24, i64 1
  %62 = add nuw nsw i64 %22, 1
  %63 = load i32, ptr %10, align 8, !tbaa !43
  %64 = load i32, ptr %11, align 4, !tbaa !44
  %65 = mul nsw i32 %64, %63
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %62, %66
  br i1 %67, label %21, label %68, !llvm.loop !49

68:                                               ; preds = %59, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @RE_bake_shade_all_selected(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %8) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %10) #12
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  store i8 %11, ptr %12, align 8, !tbaa !68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !69
  store ptr null, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 72), align 8, !tbaa !74
  store i32 0, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %13 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 70), align 8, !tbaa !75
  store ptr %13, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 73
  %15 = load i16, ptr %14, align 2, !tbaa !76
  %16 = icmp ne i16 %15, 0
  %17 = icmp eq i32 %1, 13
  switch i32 %1, label %27 [
    i32 13, label %18
    i32 5, label %18
  ]

18:                                               ; preds = %5, %5
  %19 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %20 = and i16 %19, 8
  %21 = icmp ne i16 %20, 0
  %22 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 78), align 4
  %23 = fcmp oeq float %22, 0.000000e+00
  %24 = select i1 %21, i1 %23, i1 false
  %25 = or i1 %17, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %5, %26, %18
  %28 = phi i1 [ false, %26 ], [ true, %18 ], [ true, %5 ]
  %29 = phi i8 [ 1, %26 ], [ 0, %18 ], [ 0, %5 ]
  %30 = phi i1 [ true, %26 ], [ %16, %18 ], [ %16, %5 ]
  %31 = zext i1 %30 to i8
  %32 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %33 = and i16 %32, 64
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %27
  %36 = load ptr, ptr @G, align 8, !tbaa !78
  %37 = getelementptr inbounds %struct.Main, ptr %36, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !70
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %35, %52
  %41 = phi ptr [ %53, %52 ], [ %38, %35 ]
  %42 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %41, ptr noundef null, ptr noundef null) #12
  %43 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 5
  %44 = load i16, ptr %43, align 2, !tbaa !80
  %45 = or i16 %44, 1024
  store i16 %45, ptr %43, align 2, !tbaa !80
  %46 = getelementptr inbounds %struct.Image, ptr %41, i64 0, i32 10
  %47 = load i16, ptr %46, align 2, !tbaa !83
  %48 = and i16 %47, -513
  store i16 %48, ptr %46, align 2, !tbaa !83
  %49 = icmp eq ptr %42, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.ImBuf, ptr %42, i64 0, i32 25
  store ptr null, ptr %51, align 8, !tbaa !84
  br label %52

52:                                               ; preds = %50, %40
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %41, ptr noundef %42, ptr noundef null) #12
  %53 = load ptr, ptr %41, align 8, !tbaa !70
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %40, !llvm.loop !85

55:                                               ; preds = %52, %35, %27
  %56 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %57 = and i16 %56, 64
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @G, align 8, !tbaa !78
  %61 = getelementptr inbounds %struct.Main, ptr %60, i64 0, i32 14
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %61, i8 noundef zeroext 0) #12
  br label %62

62:                                               ; preds = %59, %55
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %64 = load i16, ptr %63, align 2, !tbaa !86
  %65 = sext i16 %64 to i32
  call void @BLI_init_threads(ptr noundef nonnull %6, ptr noundef nonnull @do_bake_thread, i32 noundef %65) #12
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %67 = load i16, ptr %63, align 2, !tbaa !86
  %68 = sext i16 %67 to i64
  %69 = mul nsw i64 %68, 27288
  %70 = call ptr %66(i64 noundef %69, ptr noundef nonnull @.str) #12
  %71 = load i16, ptr %63, align 2, !tbaa !86
  %72 = icmp sgt i16 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %75 = icmp eq i32 %1, 6
  %76 = select i1 %75, i32 32, i32 1
  br label %84

77:                                               ; preds = %102, %62
  %78 = load i16, ptr %63, align 2, !tbaa !86
  %79 = sext i16 %78 to i32
  %80 = icmp eq i16 %78, 0
  br i1 %80, label %156, label %81

81:                                               ; preds = %77
  %82 = icmp eq ptr %4, null
  %83 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  br label %114

84:                                               ; preds = %73, %102
  %85 = phi i64 [ 0, %73 ], [ %110, %102 ]
  %86 = load i32, ptr %74, align 8, !tbaa !87
  %87 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %85
  %88 = getelementptr inbounds %struct.ShadeSample, ptr %87, i64 0, i32 2, i64 0, i32 117
  store i32 %86, ptr %88, align 8, !tbaa !88
  %89 = getelementptr inbounds %struct.ShadeSample, ptr %87, i64 0, i32 2, i64 0, i32 119
  store i32 %76, ptr %89, align 8, !tbaa !90
  %90 = getelementptr inbounds %struct.ShadeSample, ptr %87, i64 0, i32 2, i64 0, i32 120
  store i32 -17, ptr %90, align 4, !tbaa !91
  %91 = trunc i64 %85 to i16
  %92 = getelementptr inbounds %struct.ShadeSample, ptr %87, i64 0, i32 2, i64 0, i32 114
  store i16 %91, ptr %92, align 2, !tbaa !92
  %93 = getelementptr inbounds %struct.ShadeSample, ptr %87, i64 0, i32 2, i64 0, i32 113
  store i8 %9, ptr %93, align 1, !tbaa !93
  store i32 1, ptr %87, align 8, !tbaa !94
  %94 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %85, i32 9
  store i32 %1, ptr %94, align 4, !tbaa !97
  %95 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %85, i32 13
  store ptr %2, ptr %95, align 8, !tbaa !98
  %96 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %97 = and i16 %96, 64
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %84
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %101 = call ptr %100(i64 noundef 224, ptr noundef nonnull @.str.1) #12
  br label %102

102:                                              ; preds = %84, %99
  %103 = phi ptr [ %101, %99 ], [ null, %84 ]
  %104 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %85, i32 3
  store ptr %103, ptr %104, align 8, !tbaa !99
  %105 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %85, i32 23
  store i8 %31, ptr %105, align 8, !tbaa !100
  %106 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %85, i32 19
  store i8 %29, ptr %106, align 8, !tbaa !101
  %107 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %85, i32 27
  store ptr %3, ptr %107, align 8, !tbaa !102
  %108 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %85, i32 21
  store float 0x47EFFFFFE0000000, ptr %108, align 8, !tbaa !103
  %109 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %85, i32 22
  store float 0xC7EFFFFFE0000000, ptr %109, align 4, !tbaa !104
  call void @BLI_insert_thread(ptr noundef nonnull %6, ptr noundef nonnull %87) #12
  %110 = add nuw nsw i64 %85, 1
  %111 = load i16, ptr %63, align 2, !tbaa !86
  %112 = sext i16 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %84, label %77, !llvm.loop !105

114:                                              ; preds = %81, %149
  call void @PIL_sleep_ms(i32 noundef 50) #12
  %115 = load i16, ptr %63, align 2, !tbaa !86
  %116 = sext i16 %115 to i32
  %117 = icmp sgt i16 %115, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = zext nneg i32 %116 to i64
  br label %120

120:                                              ; preds = %118, %120
  %121 = phi i64 [ 0, %118 ], [ %126, %120 ]
  %122 = phi i32 [ 0, %118 ], [ %125, %120 ]
  %123 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %121, i32 10
  %124 = load i32, ptr %123, align 8, !tbaa !106
  %125 = add nsw i32 %124, %122
  %126 = add nuw nsw i64 %121, 1
  %127 = icmp eq i64 %126, %119
  br i1 %127, label %128, label %120, !llvm.loop !107

128:                                              ; preds = %120, %114
  %129 = phi i32 [ 0, %114 ], [ %125, %120 ]
  br i1 %82, label %135, label %130

130:                                              ; preds = %128
  %131 = sitofp i32 %129 to float
  %132 = load i32, ptr %83, align 8, !tbaa !108
  %133 = sitofp i32 %132 to float
  %134 = fdiv float %131, %133
  store float %134, ptr %4, align 4, !tbaa !46
  br label %135

135:                                              ; preds = %130, %128
  %136 = icmp sgt i16 %115, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %135
  %138 = zext nneg i32 %116 to i64
  br label %139

139:                                              ; preds = %137, %144
  %140 = phi i64 [ 0, %137 ], [ %145, %144 ]
  %141 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %140, i32 11
  %142 = load i8, ptr %141, align 4, !tbaa !109
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = add nuw nsw i64 %140, 1
  %146 = icmp eq i64 %145, %138
  br i1 %146, label %149, label %139, !llvm.loop !110

147:                                              ; preds = %139
  %148 = trunc i64 %140 to i32
  br label %149

149:                                              ; preds = %147, %144, %135
  %150 = phi i32 [ 0, %135 ], [ %148, %147 ], [ %116, %144 ]
  %151 = load i16, ptr %63, align 2, !tbaa !86
  %152 = sext i16 %151 to i32
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %114, !llvm.loop !111

154:                                              ; preds = %149
  %155 = icmp eq i32 %129, 0
  br label %156

156:                                              ; preds = %154, %77
  %157 = phi i1 [ true, %77 ], [ %155, %154 ]
  %158 = phi i32 [ %79, %77 ], [ %152, %154 ]
  %159 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %160 = and i16 %159, 64
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %330

162:                                              ; preds = %156
  %163 = icmp slt i32 %158, 1
  %164 = or i1 %163, %28
  br i1 %164, label %181, label %165

165:                                              ; preds = %162
  %166 = zext i32 %158 to i64
  br label %167

167:                                              ; preds = %165, %167
  %168 = phi i64 [ 0, %165 ], [ %179, %167 ]
  %169 = phi float [ 0xC7EFFFFFE0000000, %165 ], [ %178, %167 ]
  %170 = phi float [ 0x47EFFFFFE0000000, %165 ], [ %174, %167 ]
  %171 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %168, i32 21
  %172 = load float, ptr %171, align 8, !tbaa !103
  %173 = fcmp olt float %170, %172
  %174 = select i1 %173, float %170, float %172
  %175 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %168, i32 22
  %176 = load float, ptr %175, align 4, !tbaa !104
  %177 = fcmp ogt float %169, %176
  %178 = select i1 %177, float %169, float %176
  %179 = add nuw nsw i64 %168, 1
  %180 = icmp eq i64 %179, %166
  br i1 %180, label %181, label %167, !llvm.loop !112

181:                                              ; preds = %167, %162
  %182 = phi float [ 0x47EFFFFFE0000000, %162 ], [ %174, %167 ]
  %183 = phi float [ 0xC7EFFFFFE0000000, %162 ], [ %178, %167 ]
  %184 = load ptr, ptr @G, align 8, !tbaa !78
  %185 = getelementptr inbounds %struct.Main, ptr %184, i64 0, i32 19
  %186 = load ptr, ptr %185, align 8, !tbaa !70
  %187 = icmp eq ptr %186, null
  br i1 %187, label %195, label %188

188:                                              ; preds = %181
  %189 = call float @llvm.fabs.f32(float %182)
  %190 = call float @llvm.fabs.f32(float %183)
  %191 = fcmp ogt float %189, %190
  %192 = select i1 %191, float %189, float %190
  %193 = fcmp ogt float %192, 0x3EE4F8B580000000
  %194 = fmul float %192, 2.000000e+00
  br label %199

195:                                              ; preds = %316, %181
  %196 = phi i32 [ 0, %181 ], [ %317, %316 ]
  %197 = load i16, ptr %63, align 2, !tbaa !86
  %198 = icmp sgt i16 %197, 0
  br i1 %198, label %320, label %330

199:                                              ; preds = %188, %316
  %200 = phi ptr [ %186, %188 ], [ %318, %316 ]
  %201 = phi i32 [ 0, %188 ], [ %317, %316 ]
  %202 = getelementptr inbounds %struct.ID, ptr %200, i64 0, i32 5
  %203 = load i16, ptr %202, align 2, !tbaa !80
  %204 = and i16 %203, 1024
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %206, label %316

206:                                              ; preds = %199
  %207 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %200, ptr noundef null, ptr noundef null) #12
  %208 = getelementptr inbounds %struct.Image, ptr %200, i64 0, i32 10
  %209 = load i16, ptr %208, align 2, !tbaa !83
  %210 = and i16 %209, 512
  %211 = icmp eq i16 %210, 0
  %212 = select i1 %211, i32 %201, i32 2
  %213 = icmp eq ptr %207, null
  br i1 %213, label %316, label %214

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.ImBuf, ptr %207, i64 0, i32 25
  %216 = load ptr, ptr %215, align 8, !tbaa !84
  %217 = icmp eq ptr %216, null
  br i1 %217, label %312, label %218

218:                                              ; preds = %214
  br i1 %28, label %290, label %219

219:                                              ; preds = %218
  br i1 %17, label %220, label %230

220:                                              ; preds = %219
  %221 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %222 = and i16 %221, 128
  %223 = icmp eq i16 %222, 0
  %224 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 82), align 8
  %225 = select i1 %223, float -1.000000e+00, float %224
  %226 = load ptr, ptr %216, align 8, !tbaa !113
  %227 = getelementptr inbounds %struct.BakeImBufuserData, ptr %216, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !115
  %229 = call float @RE_bake_make_derivative(ptr noundef nonnull %207, ptr noundef %226, ptr noundef %228, float noundef %182, float noundef %183, float noundef %225)
  br label %290

230:                                              ; preds = %219
  %231 = getelementptr inbounds %struct.ImBuf, ptr %207, i64 0, i32 2
  %232 = getelementptr inbounds %struct.ImBuf, ptr %207, i64 0, i32 3
  %233 = load i32, ptr %231, align 8, !tbaa !43
  %234 = load i32, ptr %232, align 4, !tbaa !44
  %235 = mul nsw i32 %234, %233
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %290

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.BakeImBufuserData, ptr %216, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !115
  %240 = load ptr, ptr %216, align 8, !tbaa !113
  %241 = getelementptr inbounds %struct.ImBuf, ptr %207, i64 0, i32 9
  %242 = getelementptr inbounds %struct.ImBuf, ptr %207, i64 0, i32 8
  br label %243

243:                                              ; preds = %281, %237
  %244 = phi i64 [ 0, %237 ], [ %284, %281 ]
  %245 = phi ptr [ %240, %237 ], [ %282, %281 ]
  %246 = phi ptr [ %239, %237 ], [ %283, %281 ]
  %247 = load i8, ptr %246, align 1, !tbaa !45
  %248 = icmp eq i8 %247, 2
  br i1 %248, label %249, label %281

249:                                              ; preds = %243
  br i1 %193, label %250, label %254

250:                                              ; preds = %249
  %251 = load float, ptr %245, align 4, !tbaa !46
  %252 = fadd float %192, %251
  %253 = fdiv float %252, %194
  br label %254

254:                                              ; preds = %250, %249
  %255 = phi float [ %253, %250 ], [ 5.000000e-01, %249 ]
  %256 = load ptr, ptr %241, align 8, !tbaa !47
  %257 = icmp eq ptr %256, null
  br i1 %257, label %265, label %258

258:                                              ; preds = %254
  %259 = shl i64 %244, 2
  %260 = and i64 %259, 4294967292
  %261 = getelementptr inbounds float, ptr %256, i64 %260
  %262 = getelementptr inbounds float, ptr %261, i64 2
  store float %255, ptr %262, align 4, !tbaa !46
  %263 = getelementptr inbounds float, ptr %261, i64 1
  store float %255, ptr %263, align 4, !tbaa !46
  store float %255, ptr %261, align 4, !tbaa !46
  %264 = getelementptr inbounds float, ptr %261, i64 3
  store float 1.000000e+00, ptr %264, align 4, !tbaa !46
  br label %265

265:                                              ; preds = %258, %254
  %266 = load ptr, ptr %242, align 8, !tbaa !48
  %267 = icmp eq ptr %266, null
  br i1 %267, label %281, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds i32, ptr %266, i64 %244
  %270 = fcmp ugt float %255, 0.000000e+00
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = fcmp ogt float %255, 0x3FEFEFEFE0000000
  %273 = call float @llvm.fmuladd.f32(float %255, float 2.550000e+02, float 5.000000e-01)
  %274 = select i1 %272, float 2.550000e+02, float %273
  br label %275

275:                                              ; preds = %271, %268
  %276 = phi float [ %274, %271 ], [ 0.000000e+00, %268 ]
  %277 = fptoui float %276 to i8
  %278 = getelementptr inbounds i8, ptr %269, i64 2
  store i8 %277, ptr %278, align 1, !tbaa !45
  %279 = getelementptr inbounds i8, ptr %269, i64 1
  store i8 %277, ptr %279, align 1, !tbaa !45
  store i8 %277, ptr %269, align 1, !tbaa !45
  %280 = getelementptr inbounds i8, ptr %269, i64 3
  store i8 -1, ptr %280, align 1, !tbaa !45
  br label %281

281:                                              ; preds = %275, %265, %243
  %282 = getelementptr inbounds float, ptr %245, i64 1
  %283 = getelementptr inbounds i8, ptr %246, i64 1
  %284 = add nuw nsw i64 %244, 1
  %285 = load i32, ptr %231, align 8, !tbaa !43
  %286 = load i32, ptr %232, align 4, !tbaa !44
  %287 = mul nsw i32 %286, %285
  %288 = sext i32 %287 to i64
  %289 = icmp slt i64 %284, %288
  br i1 %289, label %243, label %290, !llvm.loop !49

290:                                              ; preds = %281, %230, %220, %218
  %291 = getelementptr inbounds %struct.BakeImBufuserData, ptr %216, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !115
  %293 = load i16, ptr %14, align 2, !tbaa !76
  %294 = sext i16 %293 to i32
  %295 = getelementptr inbounds %struct.ImBuf, ptr %207, i64 0, i32 4
  %296 = load i8, ptr %295, align 8, !tbaa !34
  %297 = icmp eq i8 %296, 32
  br i1 %297, label %301, label %298

298:                                              ; preds = %290
  %299 = call zeroext i8 @BKE_imbuf_alpha_test(ptr noundef nonnull %207) #12
  %300 = icmp eq i8 %299, 0
  br label %301

301:                                              ; preds = %298, %290
  %302 = phi i1 [ true, %290 ], [ %300, %298 ]
  %303 = icmp eq i16 %293, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %301
  call void @IMB_filter_extend(ptr noundef nonnull %207, ptr noundef %292, i32 noundef %294) #12
  br label %305

305:                                              ; preds = %304, %301
  br i1 %302, label %307, label %306

306:                                              ; preds = %305
  store i8 32, ptr %295, align 8, !tbaa !34
  br label %312

307:                                              ; preds = %305
  br i1 %303, label %312, label %308

308:                                              ; preds = %307
  %309 = load i8, ptr %295, align 8, !tbaa !34
  %310 = icmp eq i8 %309, 32
  br i1 %310, label %312, label %311

311:                                              ; preds = %308
  call void @IMB_rectfill_alpha(ptr noundef nonnull %207, float noundef 1.000000e+00) #12
  br label %312

312:                                              ; preds = %311, %308, %307, %306, %214
  %313 = getelementptr inbounds %struct.ImBuf, ptr %207, i64 0, i32 23
  %314 = load i32, ptr %313, align 4, !tbaa !116
  %315 = or i32 %314, 2
  store i32 %315, ptr %313, align 4, !tbaa !116
  call void @BKE_image_release_ibuf(ptr noundef nonnull %200, ptr noundef nonnull %207, ptr noundef null) #12
  br label %316

316:                                              ; preds = %312, %206, %199
  %317 = phi i32 [ %201, %199 ], [ %212, %206 ], [ %212, %312 ]
  %318 = load ptr, ptr %200, align 8, !tbaa !70
  %319 = icmp eq ptr %318, null
  br i1 %319, label %195, label %199, !llvm.loop !117

320:                                              ; preds = %195, %320
  %321 = phi i64 [ %326, %320 ], [ 0, %195 ]
  %322 = getelementptr inbounds %struct.BakeShade, ptr %70, i64 %321, i32 3
  %323 = load ptr, ptr %322, align 8, !tbaa !99
  call void @zbuf_free_span(ptr noundef %323) #12
  %324 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  %325 = load ptr, ptr %322, align 8, !tbaa !99
  call void %324(ptr noundef %325) #12
  %326 = add nuw nsw i64 %321, 1
  %327 = load i16, ptr %63, align 2, !tbaa !86
  %328 = sext i16 %327 to i64
  %329 = icmp slt i64 %326, %328
  br i1 %329, label %320, label %330, !llvm.loop !118

330:                                              ; preds = %320, %195, %156
  %331 = phi i32 [ 0, %156 ], [ %196, %195 ], [ %196, %320 ]
  %332 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %332(ptr noundef %70) #12
  call void @BLI_end_threads(ptr noundef nonnull %6) #12
  %333 = select i1 %157, i32 1, i32 %331
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  ret i32 %333
}

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_main_id_tag_listbase(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @do_bake_thread(ptr noundef %0) #0 {
  %2 = alloca [4 x float], align 16
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x [2 x float]], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = icmp eq ptr %0, null
  br i1 %12, label %72, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 13
  %15 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 14
  %16 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %17 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 15
  %18 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 10
  %21 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 4
  %23 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 17
  %24 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 20
  %25 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 21
  %26 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 22
  %27 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 8
  %28 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25
  %29 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 14
  %31 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 15
  %32 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %33 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 14
  %35 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 15
  %36 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %37 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 14
  %39 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 15
  %40 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %41 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 14
  %42 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 15
  %43 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %44 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 14
  %45 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 15
  %46 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %47 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 14
  %48 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 15
  %49 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %50 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 2
  %51 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %52 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 4
  %53 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 5
  %54 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 3
  %55 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 5
  %56 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %57 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 7
  %58 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 17
  %59 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 28
  %60 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 18
  %61 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %62 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 8
  %63 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 24
  %64 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 20
  %65 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 23
  %66 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 19
  %67 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 19
  %68 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 3
  %69 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 2
  %70 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 3
  %71 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 27
  br label %74

72:                                               ; preds = %576, %1
  store i32 0, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %73 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 70), align 8, !tbaa !75
  store ptr %73, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  br label %577

74:                                               ; preds = %13, %576
  call void @BLI_lock_thread(i32 noundef 3) #12
  %75 = load ptr, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  %76 = icmp eq ptr %75, null
  br i1 %76, label %236, label %77

77:                                               ; preds = %74, %232
  %78 = phi ptr [ %234, %232 ], [ %75, %74 ]
  %79 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !119
  %81 = getelementptr inbounds %struct.ObjectRen, ptr %80, i64 0, i32 11
  %82 = load i32, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %83 = load i32, ptr %81, align 4, !tbaa !121
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %232

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.ObjectRen, ptr %80, i64 0, i32 2
  %87 = getelementptr inbounds %struct.ObjectRen, ptr %80, i64 0, i32 27
  br label %88

88:                                               ; preds = %227, %85
  %89 = phi i32 [ %82, %85 ], [ %229, %227 ]
  %90 = call ptr @RE_findOrAddVlak(ptr noundef %80, i32 noundef %89) #12
  %91 = load ptr, ptr %14, align 8, !tbaa !98
  %92 = icmp eq ptr %91, null
  %93 = load ptr, ptr %86, align 8, !tbaa !123
  br i1 %92, label %96, label %94

94:                                               ; preds = %88
  %95 = icmp eq ptr %91, %93
  br i1 %95, label %101, label %227

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.Object, ptr %93, i64 0, i32 53
  %98 = load i16, ptr %97, align 4, !tbaa !124
  %99 = and i16 %98, 1
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %227, label %101

101:                                              ; preds = %96, %94
  %102 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %103 = and i16 %102, 64
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %143, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %86, align 8, !tbaa !123
  %107 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 3
  %108 = load i16, ptr %107, align 8, !tbaa !128
  %109 = icmp eq i16 %108, 1
  br i1 %109, label %110, label %227

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 19
  %112 = load ptr, ptr %111, align 8, !tbaa !129
  %113 = call ptr @RE_vlakren_get_origindex(ptr noundef %80, ptr noundef %90, i32 noundef 0) #12
  %114 = icmp eq ptr %113, null
  br i1 %114, label %227, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr %113, align 4, !tbaa !71
  %117 = getelementptr inbounds %struct.Mesh, ptr %112, i64 0, i32 30
  %118 = load i32, ptr %117, align 8, !tbaa !130
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %227

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.Mesh, ptr %112, i64 0, i32 25
  %122 = call i32 @CustomData_get_render_layer_index(ptr noundef nonnull %121, i32 noundef 17) #12
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %227, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %121, align 8, !tbaa !133
  %126 = sext i32 %122 to i64
  %127 = getelementptr inbounds %struct.Mesh, ptr %112, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !134
  %129 = load i32, ptr %113, align 4, !tbaa !71
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.MPoly, ptr %128, i64 %130
  store ptr %131, ptr %15, align 8, !tbaa !135
  %132 = getelementptr inbounds %struct.CustomDataLayer, ptr %125, i64 %126, i32 9
  %133 = load ptr, ptr %132, align 8, !tbaa !136
  %134 = load i32, ptr %131, align 4, !tbaa !138
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.MLoopCol, ptr %133, i64 %135
  store ptr %136, ptr %16, align 8, !tbaa !140
  %137 = getelementptr inbounds %struct.Mesh, ptr %112, i64 0, i32 9
  %138 = load ptr, ptr %137, align 8, !tbaa !141
  %139 = getelementptr inbounds %struct.MLoop, ptr %138, i64 %135
  store ptr %139, ptr %17, align 8, !tbaa !142
  %140 = getelementptr inbounds %struct.ID, ptr %112, i64 0, i32 5
  %141 = load i16, ptr %140, align 2, !tbaa !143
  %142 = or i16 %141, 1024
  store i16 %142, ptr %140, align 2, !tbaa !143
  br label %216

143:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_next_bake_face.vec_solid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_next_bake_face.nor_alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_next_bake_face.nor_solid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_next_bake_face.disp_alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_next_bake_face.disp_solid, i64 16, i1 false)
  %144 = load i32, ptr %87, align 8, !tbaa !144
  %145 = call ptr @RE_vlakren_get_tface(ptr noundef %80, ptr noundef %90, i32 noundef %144, ptr noundef null, i32 noundef 0) #12
  %146 = icmp eq ptr %145, null
  br i1 %146, label %226, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.MTFace, ptr %145, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !145
  %150 = icmp eq ptr %149, null
  br i1 %150, label %226, label %151

151:                                              ; preds = %147
  %152 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %149, ptr noundef null, ptr noundef null) #12
  %153 = icmp eq ptr %152, null
  br i1 %153, label %226, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.ImBuf, ptr %152, i64 0, i32 8
  %156 = load ptr, ptr %155, align 8, !tbaa !48
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.ImBuf, ptr %152, i64 0, i32 9
  %160 = load ptr, ptr %159, align 8, !tbaa !47
  %161 = icmp eq ptr %160, null
  br i1 %161, label %225, label %162

162:                                              ; preds = %158, %154
  %163 = getelementptr inbounds %struct.ImBuf, ptr %152, i64 0, i32 9
  %164 = load ptr, ptr %163, align 8, !tbaa !47
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.ImBuf, ptr %152, i64 0, i32 5
  %168 = load i32, ptr %167, align 4, !tbaa !147
  switch i32 %168, label %225 [
    i32 0, label %169
    i32 4, label %169
  ]

169:                                              ; preds = %166, %166, %162
  %170 = getelementptr inbounds %struct.Image, ptr %149, i64 0, i32 10
  %171 = load i16, ptr %170, align 2, !tbaa !83
  %172 = and i16 %171, 512
  %173 = icmp eq i16 %172, 0
  %174 = getelementptr inbounds %struct.ID, ptr %149, i64 0, i32 5
  %175 = load i16, ptr %174, align 2, !tbaa !80
  br i1 %173, label %178, label %176

176:                                              ; preds = %169
  %177 = and i16 %175, -1025
  store i16 %177, ptr %174, align 2, !tbaa !80
  br label %225

178:                                              ; preds = %169
  %179 = and i16 %175, 1024
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %212, label %181

181:                                              ; preds = %178
  %182 = and i16 %175, -1025
  store i16 %182, ptr %174, align 2, !tbaa !80
  br i1 %165, label %184, label %183

183:                                              ; preds = %181
  call void @imb_freerectImBuf(ptr noundef nonnull %152) #12
  br label %184

184:                                              ; preds = %183, %181
  %185 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %186 = and i16 %185, 1
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %211, label %188

188:                                              ; preds = %184
  %189 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 74), align 4
  %190 = icmp eq i16 %189, 3
  %191 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 76), align 8
  %192 = icmp eq i16 %191, 3
  %193 = select i1 %190, i1 %192, i1 false
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.ImBuf, ptr %152, i64 0, i32 4
  %196 = load i8, ptr %195, align 8, !tbaa !34
  %197 = icmp eq i8 %196, 32
  %198 = select i1 %197, ptr %4, ptr %5
  br label %209

199:                                              ; preds = %188
  %200 = and i16 %189, -9
  %201 = icmp eq i16 %200, 5
  %202 = getelementptr inbounds %struct.ImBuf, ptr %152, i64 0, i32 4
  %203 = load i8, ptr %202, align 8, !tbaa !34
  %204 = icmp eq i8 %203, 32
  br i1 %201, label %205, label %207

205:                                              ; preds = %199
  %206 = select i1 %204, ptr %6, ptr %7
  br label %209

207:                                              ; preds = %199
  %208 = select i1 %204, ptr %2, ptr %3
  br label %209

209:                                              ; preds = %194, %205, %207
  %210 = phi ptr [ %208, %207 ], [ %206, %205 ], [ %198, %194 ]
  call void @IMB_rectfill(ptr noundef nonnull %152, ptr noundef nonnull %210) #12
  br label %211

211:                                              ; preds = %209, %184
  store ptr %149, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 72), align 8, !tbaa !74
  br label %212

212:                                              ; preds = %211, %178
  %213 = getelementptr inbounds %struct.ImBuf, ptr %152, i64 0, i32 23
  %214 = load i32, ptr %213, align 4, !tbaa !116
  %215 = or i32 %214, 16
  store i32 %215, ptr %213, align 4, !tbaa !116
  call void @BKE_image_release_ibuf(ptr noundef nonnull %149, ptr noundef nonnull %152, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  br label %216

216:                                              ; preds = %212, %124
  %217 = load ptr, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  store ptr %217, ptr %18, align 8, !tbaa !148
  store ptr %90, ptr %19, align 8, !tbaa !149
  %218 = load i32, ptr %20, align 8, !tbaa !106
  %219 = add nsw i32 %218, 1
  store i32 %219, ptr %20, align 8, !tbaa !106
  %220 = load i32, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr @get_next_bake_face.v, align 4, !tbaa !71
  call void @BLI_unlock_thread(i32 noundef 3) #12
  %222 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %223 = and i16 %222, 64
  %224 = icmp eq i16 %223, 0
  br i1 %224, label %433, label %237

225:                                              ; preds = %166, %158, %176
  call void @BKE_image_release_ibuf(ptr noundef nonnull %149, ptr noundef nonnull %152, ptr noundef null) #12
  br label %226

226:                                              ; preds = %225, %151, %147, %143
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  br label %227

227:                                              ; preds = %94, %226, %120, %115, %110, %105, %96
  %228 = load i32, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %229 = add nsw i32 %228, 1
  store i32 %229, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %230 = load i32, ptr %81, align 4, !tbaa !121
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %88, label %232, !llvm.loop !150

232:                                              ; preds = %227, %77
  %233 = load ptr, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  %234 = load ptr, ptr %233, align 8, !tbaa !151
  store ptr %234, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  store i32 0, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %77, !llvm.loop !152

236:                                              ; preds = %74, %232
  call void @BLI_unlock_thread(i32 noundef 3) #12
  br label %577

237:                                              ; preds = %216
  %238 = load ptr, ptr %21, align 8, !tbaa !149
  store ptr null, ptr %22, align 8, !tbaa !153
  store ptr null, ptr %24, align 8, !tbaa !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  store float 0x47EFFFFFE0000000, ptr %25, align 8, !tbaa !103
  store float 0xC7EFFFFFE0000000, ptr %26, align 4, !tbaa !104
  store i32 0, ptr %27, align 8, !tbaa !155
  %239 = getelementptr inbounds %struct.VlakRen, ptr %238, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %240 = load i8, ptr %239, align 1, !tbaa !156
  %241 = zext i8 %240 to i32
  %242 = and i32 %241, 16
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %370

244:                                              ; preds = %237
  %245 = load ptr, ptr %238, align 8, !tbaa !158
  %246 = load ptr, ptr %37, align 8, !tbaa !148
  %247 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %246, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !119
  %249 = call ptr @RE_vertren_get_origindex(ptr noundef %248, ptr noundef %245, i32 noundef 0) #12
  %250 = icmp eq ptr %249, null
  br i1 %250, label %273, label %251

251:                                              ; preds = %244
  %252 = load i32, ptr %249, align 4, !tbaa !71
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %273, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %38, align 8, !tbaa !135
  %256 = getelementptr inbounds %struct.MPoly, ptr %255, i64 0, i32 1
  %257 = load i32, ptr %256, align 4, !tbaa !159
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %273

259:                                              ; preds = %254
  %260 = load ptr, ptr %39, align 8, !tbaa !142
  %261 = zext nneg i32 %257 to i64
  br label %265

262:                                              ; preds = %265
  %263 = add nuw nsw i64 %266, 1
  %264 = icmp eq i64 %263, %261
  br i1 %264, label %273, label %265, !llvm.loop !160

265:                                              ; preds = %262, %259
  %266 = phi i64 [ 0, %259 ], [ %263, %262 ]
  %267 = getelementptr inbounds %struct.MLoop, ptr %260, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !161
  %269 = icmp eq i32 %268, %252
  br i1 %269, label %270, label %262

270:                                              ; preds = %265
  %271 = load ptr, ptr %40, align 8, !tbaa !140
  %272 = getelementptr inbounds %struct.MLoopCol, ptr %271, i64 %266
  store ptr %272, ptr %40, align 8, !tbaa !140
  call void @do_bake_shade(ptr noundef %0, i32 noundef 0, i32 noundef 0, float noundef 1.000000e+00, float noundef 0.000000e+00)
  store ptr %271, ptr %40, align 8, !tbaa !140
  br label %273

273:                                              ; preds = %262, %244, %251, %254, %270
  %274 = load ptr, ptr %21, align 8, !tbaa !149
  %275 = getelementptr inbounds %struct.VlakRen, ptr %274, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !163
  %277 = load ptr, ptr %37, align 8, !tbaa !148
  %278 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %277, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !119
  %280 = call ptr @RE_vertren_get_origindex(ptr noundef %279, ptr noundef %276, i32 noundef 0) #12
  %281 = icmp eq ptr %280, null
  br i1 %281, label %304, label %282

282:                                              ; preds = %273
  %283 = load i32, ptr %280, align 4, !tbaa !71
  %284 = icmp eq i32 %283, -1
  br i1 %284, label %304, label %285

285:                                              ; preds = %282
  %286 = load ptr, ptr %41, align 8, !tbaa !135
  %287 = getelementptr inbounds %struct.MPoly, ptr %286, i64 0, i32 1
  %288 = load i32, ptr %287, align 4, !tbaa !159
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %304

290:                                              ; preds = %285
  %291 = load ptr, ptr %42, align 8, !tbaa !142
  %292 = zext nneg i32 %288 to i64
  br label %296

293:                                              ; preds = %296
  %294 = add nuw nsw i64 %297, 1
  %295 = icmp eq i64 %294, %292
  br i1 %295, label %304, label %296, !llvm.loop !160

296:                                              ; preds = %293, %290
  %297 = phi i64 [ 0, %290 ], [ %294, %293 ]
  %298 = getelementptr inbounds %struct.MLoop, ptr %291, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !161
  %300 = icmp eq i32 %299, %283
  br i1 %300, label %301, label %293

301:                                              ; preds = %296
  %302 = load ptr, ptr %43, align 8, !tbaa !140
  %303 = getelementptr inbounds %struct.MLoopCol, ptr %302, i64 %297
  store ptr %303, ptr %43, align 8, !tbaa !140
  call void @do_bake_shade(ptr noundef %0, i32 noundef 0, i32 noundef 0, float noundef 0.000000e+00, float noundef 1.000000e+00)
  store ptr %302, ptr %43, align 8, !tbaa !140
  br label %304

304:                                              ; preds = %293, %273, %282, %285, %301
  %305 = load ptr, ptr %21, align 8, !tbaa !149
  %306 = getelementptr inbounds %struct.VlakRen, ptr %305, i64 0, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !164
  %308 = load ptr, ptr %37, align 8, !tbaa !148
  %309 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %308, i64 0, i32 2
  %310 = load ptr, ptr %309, align 8, !tbaa !119
  %311 = call ptr @RE_vertren_get_origindex(ptr noundef %310, ptr noundef %307, i32 noundef 0) #12
  %312 = icmp eq ptr %311, null
  br i1 %312, label %335, label %313

313:                                              ; preds = %304
  %314 = load i32, ptr %311, align 4, !tbaa !71
  %315 = icmp eq i32 %314, -1
  br i1 %315, label %335, label %316

316:                                              ; preds = %313
  %317 = load ptr, ptr %44, align 8, !tbaa !135
  %318 = getelementptr inbounds %struct.MPoly, ptr %317, i64 0, i32 1
  %319 = load i32, ptr %318, align 4, !tbaa !159
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %335

321:                                              ; preds = %316
  %322 = load ptr, ptr %45, align 8, !tbaa !142
  %323 = zext nneg i32 %319 to i64
  br label %327

324:                                              ; preds = %327
  %325 = add nuw nsw i64 %328, 1
  %326 = icmp eq i64 %325, %323
  br i1 %326, label %335, label %327, !llvm.loop !160

327:                                              ; preds = %324, %321
  %328 = phi i64 [ 0, %321 ], [ %325, %324 ]
  %329 = getelementptr inbounds %struct.MLoop, ptr %322, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !161
  %331 = icmp eq i32 %330, %314
  br i1 %331, label %332, label %324

332:                                              ; preds = %327
  %333 = load ptr, ptr %46, align 8, !tbaa !140
  %334 = getelementptr inbounds %struct.MLoopCol, ptr %333, i64 %328
  store ptr %334, ptr %46, align 8, !tbaa !140
  call void @do_bake_shade(ptr noundef %0, i32 noundef 0, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00)
  store ptr %333, ptr %46, align 8, !tbaa !140
  br label %335

335:                                              ; preds = %324, %304, %313, %316, %332
  %336 = getelementptr inbounds %struct.VlakRen, ptr %238, i64 0, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !165
  %338 = icmp eq ptr %337, null
  br i1 %338, label %567, label %339

339:                                              ; preds = %335
  store i32 1, ptr %27, align 8, !tbaa !155
  %340 = load ptr, ptr %21, align 8, !tbaa !149
  %341 = getelementptr inbounds %struct.VlakRen, ptr %340, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !165
  %343 = load ptr, ptr %37, align 8, !tbaa !148
  %344 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %343, i64 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !119
  %346 = call ptr @RE_vertren_get_origindex(ptr noundef %345, ptr noundef %342, i32 noundef 0) #12
  %347 = icmp eq ptr %346, null
  br i1 %347, label %567, label %348

348:                                              ; preds = %339
  %349 = load i32, ptr %346, align 4, !tbaa !71
  %350 = icmp eq i32 %349, -1
  br i1 %350, label %567, label %351

351:                                              ; preds = %348
  %352 = load ptr, ptr %47, align 8, !tbaa !135
  %353 = getelementptr inbounds %struct.MPoly, ptr %352, i64 0, i32 1
  %354 = load i32, ptr %353, align 4, !tbaa !159
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %567

356:                                              ; preds = %351
  %357 = load ptr, ptr %48, align 8, !tbaa !142
  %358 = zext nneg i32 %354 to i64
  br label %362

359:                                              ; preds = %362
  %360 = add nuw nsw i64 %363, 1
  %361 = icmp eq i64 %360, %358
  br i1 %361, label %567, label %362, !llvm.loop !160

362:                                              ; preds = %359, %356
  %363 = phi i64 [ 0, %356 ], [ %360, %359 ]
  %364 = getelementptr inbounds %struct.MLoop, ptr %357, i64 %363
  %365 = load i32, ptr %364, align 4, !tbaa !161
  %366 = icmp eq i32 %365, %349
  br i1 %366, label %367, label %359

367:                                              ; preds = %362
  %368 = load ptr, ptr %49, align 8, !tbaa !140
  %369 = getelementptr inbounds %struct.MLoopCol, ptr %368, i64 %363
  store ptr %369, ptr %49, align 8, !tbaa !140
  call void @do_bake_shade(ptr noundef %0, i32 noundef 0, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00)
  store ptr %368, ptr %49, align 8, !tbaa !140
  br label %567

370:                                              ; preds = %237
  %371 = and i32 %241, 32
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %403, label %373

373:                                              ; preds = %370
  %374 = getelementptr inbounds %struct.VlakRen, ptr %238, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !163
  %376 = load ptr, ptr %29, align 8, !tbaa !148
  %377 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %376, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !119
  %379 = call ptr @RE_vertren_get_origindex(ptr noundef %378, ptr noundef %375, i32 noundef 0) #12
  %380 = icmp eq ptr %379, null
  br i1 %380, label %567, label %381

381:                                              ; preds = %373
  %382 = load i32, ptr %379, align 4, !tbaa !71
  %383 = icmp eq i32 %382, -1
  br i1 %383, label %567, label %384

384:                                              ; preds = %381
  %385 = load ptr, ptr %30, align 8, !tbaa !135
  %386 = getelementptr inbounds %struct.MPoly, ptr %385, i64 0, i32 1
  %387 = load i32, ptr %386, align 4, !tbaa !159
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %567

389:                                              ; preds = %384
  %390 = load ptr, ptr %31, align 8, !tbaa !142
  %391 = zext nneg i32 %387 to i64
  br label %395

392:                                              ; preds = %395
  %393 = add nuw nsw i64 %396, 1
  %394 = icmp eq i64 %393, %391
  br i1 %394, label %567, label %395, !llvm.loop !160

395:                                              ; preds = %392, %389
  %396 = phi i64 [ 0, %389 ], [ %393, %392 ]
  %397 = getelementptr inbounds %struct.MLoop, ptr %390, i64 %396
  %398 = load i32, ptr %397, align 4, !tbaa !161
  %399 = icmp eq i32 %398, %382
  br i1 %399, label %400, label %392

400:                                              ; preds = %395
  %401 = load ptr, ptr %32, align 8, !tbaa !140
  %402 = getelementptr inbounds %struct.MLoopCol, ptr %401, i64 %396
  store ptr %402, ptr %32, align 8, !tbaa !140
  call void @do_bake_shade(ptr noundef %0, i32 noundef 0, i32 noundef 0, float noundef 0.000000e+00, float noundef 1.000000e+00)
  store ptr %401, ptr %32, align 8, !tbaa !140
  br label %567

403:                                              ; preds = %370
  %404 = getelementptr inbounds %struct.VlakRen, ptr %238, i64 0, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !164
  %406 = load ptr, ptr %33, align 8, !tbaa !148
  %407 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %406, i64 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !119
  %409 = call ptr @RE_vertren_get_origindex(ptr noundef %408, ptr noundef %405, i32 noundef 0) #12
  %410 = icmp eq ptr %409, null
  br i1 %410, label %567, label %411

411:                                              ; preds = %403
  %412 = load i32, ptr %409, align 4, !tbaa !71
  %413 = icmp eq i32 %412, -1
  br i1 %413, label %567, label %414

414:                                              ; preds = %411
  %415 = load ptr, ptr %34, align 8, !tbaa !135
  %416 = getelementptr inbounds %struct.MPoly, ptr %415, i64 0, i32 1
  %417 = load i32, ptr %416, align 4, !tbaa !159
  %418 = icmp sgt i32 %417, 0
  br i1 %418, label %419, label %567

419:                                              ; preds = %414
  %420 = load ptr, ptr %35, align 8, !tbaa !142
  %421 = zext nneg i32 %417 to i64
  br label %425

422:                                              ; preds = %425
  %423 = add nuw nsw i64 %426, 1
  %424 = icmp eq i64 %423, %421
  br i1 %424, label %567, label %425, !llvm.loop !160

425:                                              ; preds = %422, %419
  %426 = phi i64 [ 0, %419 ], [ %423, %422 ]
  %427 = getelementptr inbounds %struct.MLoop, ptr %420, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !161
  %429 = icmp eq i32 %428, %412
  br i1 %429, label %430, label %422

430:                                              ; preds = %425
  %431 = load ptr, ptr %36, align 8, !tbaa !140
  %432 = getelementptr inbounds %struct.MLoopCol, ptr %431, i64 %426
  store ptr %432, ptr %36, align 8, !tbaa !140
  call void @do_bake_shade(ptr noundef %0, i32 noundef 0, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00)
  store ptr %431, ptr %36, align 8, !tbaa !140
  br label %567

433:                                              ; preds = %216
  %434 = load ptr, ptr %50, align 8, !tbaa !149
  %435 = load ptr, ptr %51, align 8, !tbaa !148
  %436 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %435, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !119
  %438 = getelementptr inbounds %struct.ObjectRen, ptr %437, i64 0, i32 27
  %439 = load i32, ptr %438, align 8, !tbaa !144
  %440 = call ptr @RE_vlakren_get_tface(ptr noundef %437, ptr noundef %434, i32 noundef %439, ptr noundef null, i32 noundef 0) #12
  %441 = getelementptr inbounds %struct.MTFace, ptr %440, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  %443 = load ptr, ptr %52, align 8, !tbaa !153
  %444 = icmp eq ptr %442, %443
  br i1 %444, label %456, label %445

445:                                              ; preds = %433
  %446 = load ptr, ptr %53, align 8, !tbaa !166
  call void @BKE_image_release_ibuf(ptr noundef %443, ptr noundef %446, ptr noundef null) #12
  store ptr %442, ptr %52, align 8, !tbaa !153
  %447 = call ptr @BKE_image_acquire_ibuf(ptr noundef %442, ptr noundef null, ptr noundef null) #12
  store ptr %447, ptr %53, align 8, !tbaa !166
  %448 = load ptr, ptr %54, align 8, !tbaa !99
  call void @zbuf_free_span(ptr noundef %448) #12
  %449 = load ptr, ptr %54, align 8, !tbaa !99
  %450 = load ptr, ptr %53, align 8, !tbaa !166
  %451 = getelementptr inbounds %struct.ImBuf, ptr %450, i64 0, i32 2
  %452 = load i32, ptr %451, align 8, !tbaa !43
  %453 = getelementptr inbounds %struct.ImBuf, ptr %450, i64 0, i32 3
  %454 = load i32, ptr %453, align 4, !tbaa !44
  %455 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !167
  call void @zbuf_alloc_span(ptr noundef %449, i32 noundef %452, i32 noundef %454, float noundef %455) #12
  br label %456

456:                                              ; preds = %445, %433
  %457 = load ptr, ptr %55, align 8, !tbaa !166
  %458 = getelementptr inbounds %struct.ImBuf, ptr %457, i64 0, i32 2
  %459 = load i32, ptr %458, align 8, !tbaa !43
  store i32 %459, ptr %56, align 8, !tbaa !168
  %460 = getelementptr inbounds %struct.ImBuf, ptr %457, i64 0, i32 3
  %461 = load i32, ptr %460, align 4, !tbaa !44
  store i32 %461, ptr %57, align 4, !tbaa !169
  %462 = getelementptr inbounds %struct.ImBuf, ptr %457, i64 0, i32 8
  %463 = load ptr, ptr %462, align 8, !tbaa !48
  store ptr %463, ptr %58, align 8, !tbaa !170
  %464 = getelementptr inbounds %struct.ImBuf, ptr %457, i64 0, i32 34
  %465 = load ptr, ptr %464, align 8, !tbaa !171
  store ptr %465, ptr %59, align 8, !tbaa !172
  %466 = getelementptr inbounds %struct.ImBuf, ptr %457, i64 0, i32 9
  %467 = load ptr, ptr %466, align 8, !tbaa !47
  store ptr %467, ptr %60, align 8, !tbaa !173
  store ptr null, ptr %61, align 8, !tbaa !140
  store i32 0, ptr %62, align 8, !tbaa !155
  store ptr null, ptr %63, align 8, !tbaa !174
  store ptr null, ptr %64, align 8, !tbaa !154
  %468 = load i8, ptr %65, align 8, !tbaa !100
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %456
  %471 = load i8, ptr %66, align 8, !tbaa !101
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %524, label %473

473:                                              ; preds = %470, %456
  %474 = getelementptr inbounds %struct.ImBuf, ptr %457, i64 0, i32 25
  %475 = load ptr, ptr %474, align 8, !tbaa !84
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %519

477:                                              ; preds = %473
  call void @BLI_lock_thread(i32 noundef 3) #12
  %478 = load ptr, ptr %55, align 8, !tbaa !166
  %479 = getelementptr inbounds %struct.ImBuf, ptr %478, i64 0, i32 25
  %480 = load ptr, ptr %479, align 8, !tbaa !84
  %481 = icmp eq ptr %480, null
  br i1 %481, label %482, label %485

482:                                              ; preds = %477
  %483 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %484 = call ptr %483(i64 noundef 16, ptr noundef nonnull @.str.2) #12
  br label %485

485:                                              ; preds = %482, %477
  %486 = phi ptr [ %484, %482 ], [ %480, %477 ]
  %487 = load i8, ptr %65, align 8, !tbaa !100
  %488 = icmp eq i8 %487, 0
  br i1 %488, label %501, label %489

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.BakeImBufuserData, ptr %486, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !115
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %501

493:                                              ; preds = %489
  %494 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %495 = load i32, ptr %56, align 8, !tbaa !168
  %496 = sext i32 %495 to i64
  %497 = load i32, ptr %57, align 4, !tbaa !169
  %498 = sext i32 %497 to i64
  %499 = mul nsw i64 %498, %496
  %500 = call ptr %494(i64 noundef %499, ptr noundef nonnull @.str.3) #12
  store ptr %500, ptr %490, align 8, !tbaa !115
  br label %501

501:                                              ; preds = %493, %489, %485
  %502 = load i8, ptr %67, align 8, !tbaa !101
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %516, label %504

504:                                              ; preds = %501
  %505 = load ptr, ptr %486, align 8, !tbaa !113
  %506 = icmp eq ptr %505, null
  br i1 %506, label %507, label %516

507:                                              ; preds = %504
  %508 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %509 = load i32, ptr %56, align 8, !tbaa !168
  %510 = sext i32 %509 to i64
  %511 = shl nsw i64 %510, 2
  %512 = load i32, ptr %57, align 4, !tbaa !169
  %513 = sext i32 %512 to i64
  %514 = mul i64 %511, %513
  %515 = call ptr %508(i64 noundef %514, ptr noundef nonnull @.str.4) #12
  store ptr %515, ptr %486, align 8, !tbaa !113
  br label %516

516:                                              ; preds = %507, %504, %501
  %517 = load ptr, ptr %55, align 8, !tbaa !166
  %518 = getelementptr inbounds %struct.ImBuf, ptr %517, i64 0, i32 25
  store ptr %486, ptr %518, align 8, !tbaa !84
  call void @BLI_unlock_thread(i32 noundef 3) #12
  br label %519

519:                                              ; preds = %516, %473
  %520 = phi ptr [ %486, %516 ], [ %475, %473 ]
  %521 = getelementptr inbounds %struct.BakeImBufuserData, ptr %520, i64 0, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !115
  store ptr %522, ptr %63, align 8, !tbaa !174
  %523 = load ptr, ptr %520, align 8, !tbaa !113
  store ptr %523, ptr %64, align 8, !tbaa !154
  br label %524

524:                                              ; preds = %519, %470
  %525 = load i32, ptr %56, align 8, !tbaa !168
  %526 = sitofp i32 %525 to float
  %527 = load i32, ptr %57, align 4, !tbaa !169
  %528 = sitofp i32 %527 to float
  br label %529

529:                                              ; preds = %524, %529
  %530 = phi i64 [ 0, %524 ], [ %539, %529 ]
  %531 = getelementptr inbounds [4 x [2 x float]], ptr %440, i64 0, i64 %530
  %532 = load float, ptr %531, align 8, !tbaa !46
  %533 = call float @llvm.fmuladd.f32(float %532, float %526, float 0xBFE0083120000000)
  %534 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 %530
  store float %533, ptr %534, align 8, !tbaa !46
  %535 = getelementptr inbounds [4 x [2 x float]], ptr %440, i64 0, i64 %530, i64 1
  %536 = load float, ptr %535, align 4, !tbaa !46
  %537 = call float @llvm.fmuladd.f32(float %536, float %528, float 0xBFE0106240000000)
  %538 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 %530, i64 1
  store float %537, ptr %538, align 4, !tbaa !46
  %539 = add nuw nsw i64 %530, 1
  %540 = icmp eq i64 %539, 4
  br i1 %540, label %541, label %529, !llvm.loop !175

541:                                              ; preds = %529
  store i32 0, ptr %9, align 4, !tbaa !71
  store i32 1, ptr %10, align 4, !tbaa !71
  store i32 2, ptr %11, align 4, !tbaa !71
  call void @vlr_set_uv_indices(ptr noundef %434, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %542 = load i32, ptr %9, align 4, !tbaa !71
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 %543
  %545 = load i32, ptr %10, align 4, !tbaa !71
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 %546
  %548 = load i32, ptr %11, align 4, !tbaa !71
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 %549
  call fastcc void @bake_set_vlr_dxyco(ptr noundef %0, ptr noundef nonnull %544, ptr noundef nonnull %547, ptr noundef nonnull %550)
  %551 = load ptr, ptr %68, align 8, !tbaa !99
  %552 = load i32, ptr %9, align 4, !tbaa !71
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 %553
  %555 = load i32, ptr %10, align 4, !tbaa !71
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 %556
  %558 = load i32, ptr %11, align 4, !tbaa !71
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 %559
  call void @zspan_scanconvert(ptr noundef %551, ptr noundef %0, ptr noundef nonnull %554, ptr noundef nonnull %557, ptr noundef nonnull %560, ptr noundef nonnull @do_bake_shade) #12
  %561 = getelementptr inbounds %struct.VlakRen, ptr %434, i64 0, i32 3
  %562 = load ptr, ptr %561, align 8, !tbaa !165
  %563 = icmp eq ptr %562, null
  br i1 %563, label %566, label %564

564:                                              ; preds = %541
  store i32 1, ptr %62, align 8, !tbaa !155
  call fastcc void @bake_set_vlr_dxyco(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %69, ptr noundef nonnull %70)
  %565 = load ptr, ptr %68, align 8, !tbaa !99
  call void @zspan_scanconvert(ptr noundef %565, ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %69, ptr noundef nonnull %70, ptr noundef nonnull @do_bake_shade) #12
  br label %566

566:                                              ; preds = %541, %564
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #12
  br label %567

567:                                              ; preds = %392, %422, %359, %430, %414, %411, %403, %400, %384, %381, %373, %367, %351, %348, %339, %335, %566
  %568 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !176
  %569 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !177
  %570 = call i32 %568(ptr noundef %569) #12
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %577

572:                                              ; preds = %567
  %573 = load ptr, ptr %71, align 8, !tbaa !102
  %574 = icmp eq ptr %573, null
  br i1 %574, label %576, label %575

575:                                              ; preds = %572
  store i16 1, ptr %573, align 2, !tbaa !72
  br label %576

576:                                              ; preds = %575, %572
  br i1 %12, label %72, label %74, !llvm.loop !178

577:                                              ; preds = %567, %72, %236
  %578 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 11
  store i8 1, ptr %578, align 4, !tbaa !109
  %579 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 4
  %580 = load ptr, ptr %579, align 8, !tbaa !153
  %581 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 5
  %582 = load ptr, ptr %581, align 8, !tbaa !166
  call void @BKE_image_release_ibuf(ptr noundef %580, ptr noundef %582, ptr noundef null) #12
  ret ptr null
}

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local float @RE_bake_make_derivative(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #6 {
  %7 = fsub float %4, %3
  %8 = fcmp ogt float %7, 0.000000e+00
  %9 = fmul float %7, 8.000000e+00
  %10 = select i1 %8, float %9, float 1.000000e+00
  %11 = fcmp ole float %5, 0.000000e+00
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !44
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %96

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !43
  %18 = icmp sgt i32 %17, 0
  %19 = add nsw i32 %17, -1
  %20 = add nsw i32 %13, -1
  %21 = zext nneg i32 %13 to i64
  %22 = zext nneg i32 %17 to i64
  br label %23

23:                                               ; preds = %15, %93
  %24 = phi i64 [ 0, %15 ], [ %94, %93 ]
  br i1 %18, label %25, label %93

25:                                               ; preds = %23
  %26 = trunc i64 %24 to i32
  %27 = mul i32 %17, %26
  %28 = zext i32 %27 to i64
  %29 = trunc i64 %24 to i32
  br label %30

30:                                               ; preds = %25, %90
  %31 = phi i64 [ 0, %25 ], [ %91, %90 ]
  %32 = add nuw nsw i64 %31, %28
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !45
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %90, label %36

36:                                               ; preds = %30
  %37 = trunc i64 %31 to i32
  br label %38

38:                                               ; preds = %36, %81
  %39 = phi i32 [ %82, %81 ], [ -1, %36 ]
  %40 = phi i32 [ %78, %81 ], [ 0, %36 ]
  %41 = phi float [ %77, %81 ], [ 0.000000e+00, %36 ]
  %42 = icmp eq i32 %39, 0
  %43 = select i1 %42, i32 2, i32 1
  %44 = add nsw i32 %39, %29
  %45 = icmp slt i32 %44, 0
  %46 = icmp slt i32 %44, %13
  %47 = select i1 %46, i32 %44, i32 %20
  %48 = select i1 %45, i32 0, i32 %47
  %49 = mul nsw i32 %48, %17
  br label %50

50:                                               ; preds = %38, %76
  %51 = phi i32 [ -1, %38 ], [ %79, %76 ]
  %52 = phi i32 [ %40, %38 ], [ %78, %76 ]
  %53 = phi float [ %41, %38 ], [ %77, %76 ]
  %54 = icmp eq i32 %51, 0
  %55 = zext i1 %54 to i32
  %56 = add nuw nsw i32 %43, %55
  %57 = or i32 %51, %39
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %50
  %60 = add nsw i32 %51, %37
  %61 = icmp slt i32 %60, 0
  %62 = icmp slt i32 %60, %17
  %63 = select i1 %62, i32 %60, i32 %19
  %64 = select i1 %61, i32 0, i32 %63
  %65 = add nsw i32 %64, %49
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %2, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !45
  %69 = icmp eq i8 %68, 2
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = sitofp i32 %56 to float
  %72 = getelementptr inbounds float, ptr %1, i64 %66
  %73 = load float, ptr %72, align 4, !tbaa !46
  %74 = tail call float @llvm.fmuladd.f32(float %71, float %73, float %53)
  %75 = add nsw i32 %56, %52
  br label %76

76:                                               ; preds = %70, %59, %50
  %77 = phi float [ %53, %50 ], [ %74, %70 ], [ %53, %59 ]
  %78 = phi i32 [ %52, %50 ], [ %75, %70 ], [ %52, %59 ]
  %79 = add nsw i32 %51, 1
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %50, !llvm.loop !179

81:                                               ; preds = %76
  %82 = add nsw i32 %39, 1
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %38, !llvm.loop !180

84:                                               ; preds = %81
  %85 = icmp sgt i32 %78, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = sitofp i32 %78 to float
  %88 = fdiv float %77, %87
  %89 = getelementptr inbounds float, ptr %1, i64 %32
  store float %88, ptr %89, align 4, !tbaa !46
  br label %90

90:                                               ; preds = %86, %84, %30
  %91 = add nuw nsw i64 %31, 1
  %92 = icmp eq i64 %91, %22
  br i1 %92, label %93, label %30, !llvm.loop !181

93:                                               ; preds = %90, %23
  %94 = add nuw nsw i64 %24, 1
  %95 = icmp eq i64 %94, %21
  br i1 %95, label %96, label %23, !llvm.loop !182

96:                                               ; preds = %93, %6
  %97 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %98 = icmp sgt i32 %13, 0
  %99 = and i1 %11, %98
  br i1 %99, label %100, label %193

100:                                              ; preds = %96
  %101 = add nsw i32 %13, -1
  %102 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !43
  %104 = icmp sgt i32 %103, 0
  %105 = add nsw i32 %103, -1
  %106 = zext i32 %105 to i64
  %107 = zext i32 %101 to i64
  %108 = sext i32 %103 to i64
  %109 = zext i32 %13 to i64
  %110 = zext nneg i32 %103 to i64
  br label %114

111:                                              ; preds = %190, %114
  %112 = phi float [ %116, %114 ], [ %191, %190 ]
  %113 = icmp eq i64 %117, %109
  br i1 %113, label %193, label %114, !llvm.loop !183

114:                                              ; preds = %100, %111
  %115 = phi i64 [ 0, %100 ], [ %117, %111 ]
  %116 = phi float [ -1.000000e+00, %100 ], [ %112, %111 ]
  %117 = add nuw nsw i64 %115, 1
  br i1 %104, label %118, label %111

118:                                              ; preds = %114
  %119 = trunc i64 %115 to i32
  %120 = tail call i32 @llvm.usub.sat.i32(i32 %119, i32 1)
  %121 = icmp eq i64 %115, %107
  %122 = trunc i64 %117 to i32
  %123 = select i1 %121, i32 %101, i32 %122
  %124 = mul nsw i64 %115, %108
  %125 = mul nsw i32 %103, %123
  %126 = mul nsw i32 %103, %120
  %127 = sext i32 %125 to i64
  %128 = sext i32 %126 to i64
  %129 = getelementptr i8, ptr %2, i64 %124
  %130 = getelementptr float, ptr %1, i64 %127
  %131 = getelementptr float, ptr %1, i64 %128
  %132 = getelementptr float, ptr %1, i64 %124
  %133 = trunc i64 %124 to i32
  br label %134

134:                                              ; preds = %118, %190
  %135 = phi i64 [ 0, %118 ], [ %137, %190 ]
  %136 = phi float [ %116, %118 ], [ %191, %190 ]
  %137 = add nuw nsw i64 %135, 1
  %138 = getelementptr i8, ptr %129, i64 %135
  %139 = load i8, ptr %138, align 1, !tbaa !45
  %140 = icmp eq i8 %139, 2
  br i1 %140, label %141, label %190

141:                                              ; preds = %134
  %142 = getelementptr float, ptr %130, i64 %135
  %143 = load float, ptr %142, align 4, !tbaa !46
  %144 = getelementptr float, ptr %131, i64 %135
  %145 = load float, ptr %144, align 4, !tbaa !46
  %146 = fsub float %143, %145
  %147 = icmp eq i64 %135, %106
  %148 = trunc i64 %137 to i32
  %149 = select i1 %147, i32 %105, i32 %148
  %150 = add nsw i32 %149, %125
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, ptr %1, i64 %151
  %153 = load float, ptr %152, align 4, !tbaa !46
  %154 = add nsw i32 %149, %126
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, ptr %1, i64 %155
  %157 = load float, ptr %156, align 4, !tbaa !46
  %158 = fsub float %153, %157
  %159 = tail call float @llvm.fmuladd.f32(float %146, float 2.000000e+00, float %158)
  %160 = trunc i64 %135 to i32
  %161 = tail call i32 @llvm.usub.sat.i32(i32 %160, i32 1)
  %162 = add nsw i32 %125, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, ptr %1, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !46
  %166 = add nuw nsw i32 %126, %161
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds float, ptr %1, i64 %167
  %169 = load float, ptr %168, align 4, !tbaa !46
  %170 = fsub float %165, %169
  %171 = fadd float %159, %170
  %172 = sext i32 %149 to i64
  %173 = getelementptr float, ptr %132, i64 %172
  %174 = load float, ptr %173, align 4, !tbaa !46
  %175 = add nuw nsw i32 %161, %133
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds float, ptr %1, i64 %176
  %178 = load float, ptr %177, align 4, !tbaa !46
  %179 = fsub float %174, %178
  %180 = fsub float %153, %165
  %181 = tail call float @llvm.fmuladd.f32(float %179, float 2.000000e+00, float %180)
  %182 = fsub float %157, %169
  %183 = fadd float %182, %181
  %184 = tail call float @llvm.fabs.f32(float %183)
  %185 = fcmp ogt float %184, %136
  %186 = select i1 %185, float %184, float %136
  %187 = tail call float @llvm.fabs.f32(float %171)
  %188 = fcmp ogt float %187, %186
  %189 = select i1 %188, float %187, float %186
  br label %190

190:                                              ; preds = %134, %141
  %191 = phi float [ %189, %141 ], [ %136, %134 ]
  %192 = icmp eq i64 %137, %110
  br i1 %192, label %111, label %134, !llvm.loop !184

193:                                              ; preds = %111, %96
  %194 = phi float [ -1.000000e+00, %96 ], [ %112, %111 ]
  %195 = fcmp ogt float %194, 0.000000e+00
  %196 = and i1 %11, %195
  %197 = load i32, ptr %97, align 4, !tbaa !44
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %332

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %201 = fdiv float %5, %10
  %202 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %203 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  br label %207

204:                                              ; preds = %329, %207
  %205 = load i32, ptr %97, align 4, !tbaa !44
  %206 = icmp slt i32 %212, %205
  br i1 %206, label %207, label %332, !llvm.loop !185

207:                                              ; preds = %199, %204
  %208 = phi i32 [ %197, %199 ], [ %205, %204 ]
  %209 = phi i32 [ 0, %199 ], [ %212, %204 ]
  %210 = add nsw i32 %208, -1
  %211 = icmp eq i32 %209, %210
  %212 = add nuw nsw i32 %209, 1
  %213 = select i1 %211, i32 %210, i32 %212
  %214 = tail call i32 @llvm.usub.sat.i32(i32 %209, i32 1)
  %215 = load i32, ptr %200, align 8, !tbaa !43
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %204

217:                                              ; preds = %207, %329
  %218 = phi i32 [ %330, %329 ], [ %215, %207 ]
  %219 = phi i32 [ %220, %329 ], [ 0, %207 ]
  %220 = add nuw nsw i32 %219, 1
  %221 = mul nsw i32 %218, %209
  %222 = add nsw i32 %221, %219
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %2, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !45
  %226 = icmp eq i8 %225, 2
  br i1 %226, label %227, label %329

227:                                              ; preds = %217
  %228 = mul nsw i32 %218, %213
  %229 = tail call i32 @llvm.usub.sat.i32(i32 %219, i32 1)
  %230 = add nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, ptr %1, i64 %231
  %233 = load float, ptr %232, align 4, !tbaa !46
  %234 = mul nsw i32 %218, %214
  %235 = add nsw i32 %234, %229
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, ptr %1, i64 %236
  %238 = load float, ptr %237, align 4, !tbaa !46
  %239 = fsub float %233, %238
  %240 = add nsw i32 %228, %219
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, ptr %1, i64 %241
  %243 = load float, ptr %242, align 4, !tbaa !46
  %244 = add nsw i32 %234, %219
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, ptr %1, i64 %245
  %247 = load float, ptr %246, align 4, !tbaa !46
  %248 = fsub float %243, %247
  %249 = add nsw i32 %218, -1
  %250 = icmp eq i32 %219, %249
  %251 = select i1 %250, i32 %249, i32 %220
  %252 = add nsw i32 %251, %228
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, ptr %1, i64 %253
  %255 = load float, ptr %254, align 4, !tbaa !46
  %256 = add nsw i32 %251, %234
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, ptr %1, i64 %257
  %259 = load float, ptr %258, align 4, !tbaa !46
  %260 = fsub float %255, %259
  %261 = tail call float @llvm.fmuladd.f32(float %248, float 2.000000e+00, float %260)
  %262 = fadd float %239, %261
  %263 = add nsw i32 %251, %221
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, ptr %1, i64 %264
  %266 = load float, ptr %265, align 4, !tbaa !46
  %267 = add nsw i32 %221, %229
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, ptr %1, i64 %268
  %270 = load float, ptr %269, align 4, !tbaa !46
  %271 = fsub float %266, %270
  %272 = fsub float %255, %233
  %273 = tail call float @llvm.fmuladd.f32(float %271, float 2.000000e+00, float %272)
  %274 = fsub float %259, %238
  %275 = fadd float %273, %274
  %276 = fdiv float %275, %194
  %277 = fdiv float %262, %194
  %278 = fmul float %201, %275
  %279 = fmul float %201, %262
  %280 = select i1 %196, float %276, float %278
  %281 = select i1 %196, float %277, float %279
  %282 = tail call float @llvm.fmuladd.f32(float %280, float 5.000000e-01, float 5.000000e-01)
  %283 = tail call float @llvm.fmuladd.f32(float %281, float 5.000000e-01, float 5.000000e-01)
  %284 = fcmp olt float %282, 0.000000e+00
  br i1 %284, label %288, label %285

285:                                              ; preds = %227
  %286 = fcmp ogt float %282, 1.000000e+00
  br i1 %286, label %287, label %288

287:                                              ; preds = %285
  br label %288

288:                                              ; preds = %227, %285, %287
  %289 = phi float [ 1.000000e+00, %287 ], [ %282, %285 ], [ 0.000000e+00, %227 ]
  %290 = fcmp olt float %283, 0.000000e+00
  br i1 %290, label %294, label %291

291:                                              ; preds = %288
  %292 = fcmp ogt float %283, 1.000000e+00
  br i1 %292, label %293, label %294

293:                                              ; preds = %291
  br label %294

294:                                              ; preds = %288, %291, %293
  %295 = phi float [ 1.000000e+00, %293 ], [ %283, %291 ], [ 0.000000e+00, %288 ]
  %296 = load ptr, ptr %202, align 8, !tbaa !47
  %297 = icmp eq ptr %296, null
  br i1 %297, label %305, label %298

298:                                              ; preds = %294
  %299 = shl nsw i32 %222, 2
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, ptr %296, i64 %300
  store float %289, ptr %301, align 4, !tbaa !46
  %302 = getelementptr inbounds float, ptr %301, i64 1
  store float %295, ptr %302, align 4, !tbaa !46
  %303 = getelementptr inbounds float, ptr %301, i64 2
  store float 0.000000e+00, ptr %303, align 4, !tbaa !46
  %304 = getelementptr inbounds float, ptr %301, i64 3
  store float 1.000000e+00, ptr %304, align 4, !tbaa !46
  br label %329

305:                                              ; preds = %294
  %306 = load ptr, ptr %203, align 8, !tbaa !48
  %307 = shl nsw i32 %222, 2
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, ptr %306, i64 %308
  %310 = fcmp ugt float %289, 0.000000e+00
  br i1 %310, label %311, label %315

311:                                              ; preds = %305
  %312 = fcmp ogt float %289, 0x3FEFEFEFE0000000
  %313 = tail call float @llvm.fmuladd.f32(float %289, float 2.550000e+02, float 5.000000e-01)
  %314 = select i1 %312, float 2.550000e+02, float %313
  br label %315

315:                                              ; preds = %305, %311
  %316 = phi float [ %314, %311 ], [ 0.000000e+00, %305 ]
  %317 = fptoui float %316 to i8
  store i8 %317, ptr %309, align 1, !tbaa !45
  %318 = fcmp ugt float %295, 0.000000e+00
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = fcmp ogt float %295, 0x3FEFEFEFE0000000
  %321 = tail call float @llvm.fmuladd.f32(float %295, float 2.550000e+02, float 5.000000e-01)
  %322 = select i1 %320, float 2.550000e+02, float %321
  br label %323

323:                                              ; preds = %315, %319
  %324 = phi float [ %322, %319 ], [ 0.000000e+00, %315 ]
  %325 = fptoui float %324 to i8
  %326 = getelementptr inbounds i8, ptr %309, i64 1
  store i8 %325, ptr %326, align 1, !tbaa !45
  %327 = getelementptr inbounds i8, ptr %309, i64 2
  store i8 0, ptr %327, align 1, !tbaa !45
  %328 = getelementptr inbounds i8, ptr %309, i64 3
  store i8 -1, ptr %328, align 1, !tbaa !45
  br label %329

329:                                              ; preds = %298, %323, %217
  %330 = load i32, ptr %200, align 8, !tbaa !43
  %331 = icmp slt i32 %220, %330
  br i1 %331, label %217, label %204, !llvm.loop !186

332:                                              ; preds = %204, %193
  br i1 %196, label %333, label %335

333:                                              ; preds = %332
  %334 = fdiv float %194, %10
  br label %339

335:                                              ; preds = %332
  %336 = fcmp ogt float %5, 0.000000e+00
  %337 = fdiv float 1.000000e+00, %5
  %338 = select i1 %336, float %337, float 0.000000e+00
  br label %339

339:                                              ; preds = %335, %333
  %340 = phi float [ %334, %333 ], [ %338, %335 ]
  ret float %340
}

declare void @zbuf_free_span(ptr noundef) local_unnamed_addr #2

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @RE_bake_shade_get_image() local_unnamed_addr #7 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 72), align 8, !tbaa !74
  ret ptr %1
}

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RE_vlakren_get_origindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_render_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare ptr @RE_vlakren_get_tface(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_rectfill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

declare ptr @RE_vertren_get_origindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_bake_shade(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca %struct.Isect, align 8
  %9 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  %11 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !148
  %13 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  %15 = getelementptr inbounds %struct.ObjectRen, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %17 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !176
  %19 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !177
  %20 = tail call i32 %18(ptr noundef %19) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %301

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !155
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.VlakRen, ptr %10, i64 0, i32 2
  %27 = getelementptr inbounds %struct.VlakRen, ptr %10, i64 0, i32 3
  %28 = getelementptr inbounds %struct.VlakRen, ptr %10, i64 0, i32 1
  %29 = select i1 %25, ptr %28, ptr %26
  %30 = select i1 %25, ptr %26, ptr %27
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = load ptr, ptr %29, align 8, !tbaa !70
  %33 = load ptr, ptr %10, align 8, !tbaa !158
  %34 = fsub float 1.000000e+00, %3
  %35 = fsub float %34, %4
  %36 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 13
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = icmp ne ptr %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %22
  %40 = fadd float %3, -5.000000e-01
  %41 = tail call float @llvm.fmuladd.f32(float %40, float 0x3FEFFF2E40000000, float 5.000000e-01)
  %42 = fadd float %4, -5.000000e-01
  %43 = tail call float @llvm.fmuladd.f32(float %42, float 0x3FEFFF2E40000000, float 5.000000e-01)
  %44 = fadd float %35, -5.000000e-01
  %45 = tail call float @llvm.fmuladd.f32(float %44, float 0x3FEFFF2E40000000, float 5.000000e-01)
  %46 = fadd float %41, %43
  %47 = fadd float %46, %45
  %48 = fdiv float 1.000000e+00, %47
  %49 = fmul float %41, %48
  %50 = fmul float %43, %48
  %51 = fmul float %45, %48
  br label %52

52:                                               ; preds = %39, %22
  %53 = phi float [ %51, %39 ], [ %35, %22 ]
  %54 = phi float [ %50, %39 ], [ %4, %22 ]
  %55 = phi float [ %49, %39 ], [ %3, %22 ]
  %56 = load float, ptr %31, align 4, !tbaa !46
  %57 = load float, ptr %33, align 4, !tbaa !46
  %58 = fmul float %55, %57
  %59 = tail call float @llvm.fmuladd.f32(float %53, float %56, float %58)
  %60 = load float, ptr %32, align 4, !tbaa !46
  %61 = tail call float @llvm.fmuladd.f32(float %54, float %60, float %59)
  %62 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29
  store float %61, ptr %62, align 8, !tbaa !46
  %63 = getelementptr inbounds float, ptr %31, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !46
  %65 = getelementptr inbounds float, ptr %33, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !46
  %67 = fmul float %55, %66
  %68 = tail call float @llvm.fmuladd.f32(float %53, float %64, float %67)
  %69 = getelementptr inbounds float, ptr %32, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !46
  %71 = tail call float @llvm.fmuladd.f32(float %54, float %70, float %68)
  %72 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29, i64 1
  store float %71, ptr %72, align 4, !tbaa !46
  %73 = getelementptr inbounds float, ptr %31, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !46
  %75 = getelementptr inbounds float, ptr %33, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !46
  %77 = fmul float %55, %76
  %78 = tail call float @llvm.fmuladd.f32(float %53, float %74, float %77)
  %79 = getelementptr inbounds float, ptr %32, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !46
  %81 = tail call float @llvm.fmuladd.f32(float %54, float %80, float %78)
  %82 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29, i64 2
  store float %81, ptr %82, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %84 = load ptr, ptr %83, align 8, !tbaa !140
  %85 = icmp eq ptr %84, null
  %86 = or i1 %38, %85
  br i1 %86, label %97, label %87

87:                                               ; preds = %52
  %88 = getelementptr inbounds %struct.VlakRen, ptr %10, i64 0, i32 4
  %89 = load float, ptr %88, align 4, !tbaa !46
  %90 = tail call float @llvm.fmuladd.f32(float %89, float 0x3F1A36E2E0000000, float %61)
  store float %90, ptr %62, align 4, !tbaa !46
  %91 = getelementptr inbounds %struct.VlakRen, ptr %10, i64 0, i32 4, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !46
  %93 = tail call float @llvm.fmuladd.f32(float %92, float 0x3F1A36E2E0000000, float %71)
  store float %93, ptr %72, align 4, !tbaa !46
  %94 = getelementptr inbounds %struct.VlakRen, ptr %10, i64 0, i32 4, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !46
  %96 = tail call float @llvm.fmuladd.f32(float %95, float 0x3F1A36E2E0000000, float %81)
  store float %96, ptr %82, align 4, !tbaa !46
  br label %97

97:                                               ; preds = %52, %87
  %98 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 11
  %99 = load i16, ptr %98, align 8, !tbaa !187
  %100 = and i16 %99, 3
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 8
  tail call void @mul_m4_v3(ptr noundef nonnull %103, ptr noundef nonnull %62) #12
  br label %104

104:                                              ; preds = %102, %97
  %105 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 78
  %106 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25
  %107 = load float, ptr %106, align 4, !tbaa !46
  store float %107, ptr %105, align 4, !tbaa !46
  %108 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !46
  %110 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 78, i64 1
  store float %109, ptr %110, align 4, !tbaa !46
  %111 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !46
  %113 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 78, i64 2
  store float %112, ptr %113, align 4, !tbaa !46
  %114 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 79
  %115 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26
  %116 = load float, ptr %115, align 4, !tbaa !46
  store float %116, ptr %114, align 4, !tbaa !46
  %117 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !46
  %119 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 79, i64 1
  store float %118, ptr %119, align 4, !tbaa !46
  %120 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !46
  %122 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 79, i64 2
  store float %121, ptr %122, align 4, !tbaa !46
  %123 = load i32, ptr %23, align 8, !tbaa !155
  tail call fastcc void @bake_set_shade_input(ptr noundef %12, ptr noundef nonnull %10, ptr noundef nonnull %17, i32 noundef %123, i32 noundef %1, i32 noundef %2, float noundef %55, float noundef %54)
  %124 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 9
  %125 = load i32, ptr %124, align 4, !tbaa !97
  %126 = icmp eq i32 %125, 3
  %127 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 76), align 8
  %128 = icmp eq i16 %127, 3
  %129 = select i1 %126, i1 %128, i1 false
  br i1 %129, label %130, label %150

130:                                              ; preds = %104
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %17) #12
  %131 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 66
  %132 = load float, ptr %131, align 4, !tbaa !46
  store float %132, ptr %6, align 4, !tbaa !46
  %133 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 66, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !46
  %135 = getelementptr inbounds float, ptr %6, i64 1
  store float %134, ptr %135, align 4, !tbaa !46
  %136 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 66, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !46
  %138 = getelementptr inbounds float, ptr %6, i64 2
  store float %137, ptr %138, align 4, !tbaa !46
  %139 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 67
  %140 = load float, ptr %139, align 4, !tbaa !46
  store float %140, ptr %7, align 16, !tbaa !46
  %141 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 67, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !46
  %143 = getelementptr inbounds float, ptr %7, i64 1
  store float %142, ptr %143, align 4, !tbaa !46
  %144 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 67, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !46
  %146 = getelementptr inbounds float, ptr %7, i64 2
  store float %145, ptr %146, align 8, !tbaa !46
  %147 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 67, i64 3
  %148 = load float, ptr %147, align 4, !tbaa !46
  %149 = getelementptr inbounds float, ptr %7, i64 3
  store float %148, ptr %149, align 4, !tbaa !46
  br label %150

150:                                              ; preds = %130, %104
  %151 = load ptr, ptr %36, align 8, !tbaa !98
  %152 = icmp eq ptr %151, null
  br i1 %152, label %291, label %153

153:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %8) #12
  %154 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 12
  %155 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 16
  %156 = load float, ptr %155, align 4, !tbaa !46
  store float %156, ptr %154, align 4, !tbaa !46
  %157 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 16, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !46
  %159 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 12, i64 1
  store float %158, ptr %159, align 4, !tbaa !46
  %160 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 16, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !46
  %162 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 12, i64 2
  store float %161, ptr %162, align 4, !tbaa !46
  %163 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 7
  %164 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 16
  %165 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 16, i32 1
  %166 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 11
  %167 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 10
  %168 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 9
  %169 = getelementptr inbounds float, ptr %8, i64 1
  %170 = getelementptr inbounds float, ptr %8, i64 2
  %171 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 1
  %172 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 1, i64 1
  %173 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 1, i64 2
  %174 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 2
  %175 = getelementptr inbounds i8, ptr %8, i64 112
  %176 = getelementptr inbounds i8, ptr %8, i64 116
  %177 = getelementptr inbounds i8, ptr %8, i64 120
  %178 = getelementptr inbounds i8, ptr %8, i64 128
  %179 = getelementptr inbounds i8, ptr %8, i64 136
  br label %180

180:                                              ; preds = %153, %261
  %181 = phi i32 [ 1, %153 ], [ %272, %261 ]
  %182 = phi i32 [ -1, %153 ], [ %273, %261 ]
  %183 = phi i32 [ 0, %153 ], [ %271, %261 ]
  %184 = phi float [ 0.000000e+00, %153 ], [ %270, %261 ]
  %185 = phi ptr [ null, %153 ], [ %269, %261 ]
  %186 = phi ptr [ null, %153 ], [ %268, %261 ]
  %187 = phi i32 [ 0, %153 ], [ %267, %261 ]
  %188 = phi float [ 0.000000e+00, %153 ], [ %266, %261 ]
  %189 = phi float [ 0.000000e+00, %153 ], [ %265, %261 ]
  %190 = phi float [ undef, %153 ], [ %235, %261 ]
  %191 = phi float [ 0.000000e+00, %153 ], [ %264, %261 ]
  %192 = phi float [ 0.000000e+00, %153 ], [ %263, %261 ]
  %193 = phi float [ 0.000000e+00, %153 ], [ %262, %261 ]
  %194 = phi float [ undef, %153 ], [ %234, %261 ]
  %195 = phi float [ undef, %153 ], [ %233, %261 ]
  %196 = phi float [ undef, %153 ], [ %232, %261 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %8, i8 0, i64 176, i1 false)
  store i32 1, ptr %163, align 8, !tbaa !188
  store ptr %12, ptr %164, align 8, !tbaa !191
  store ptr %10, ptr %165, align 8, !tbaa !192
  %197 = load ptr, ptr %36, align 8, !tbaa !98
  store ptr %197, ptr %166, align 8, !tbaa !193
  store i32 3, ptr %167, align 4, !tbaa !194
  store i32 2, ptr %168, align 8, !tbaa !195
  %198 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !196
  %199 = sitofp i32 %182 to float
  %200 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 78), align 4, !tbaa !197
  %201 = fcmp ogt float %200, 0.000000e+00
  %202 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 79), align 8
  %203 = fadd float %202, 0x430C6BF520000000
  %204 = select i1 %201, float %200, float %203
  %205 = fneg float %202
  %206 = load float, ptr %62, align 4, !tbaa !46
  %207 = load float, ptr %155, align 4, !tbaa !46
  %208 = call float @llvm.fmuladd.f32(float %207, float %205, float %206)
  store float %208, ptr %8, align 8, !tbaa !46
  %209 = load float, ptr %72, align 4, !tbaa !46
  %210 = load float, ptr %157, align 4, !tbaa !46
  %211 = call float @llvm.fmuladd.f32(float %210, float %205, float %209)
  store float %211, ptr %169, align 4, !tbaa !46
  %212 = load float, ptr %82, align 4, !tbaa !46
  %213 = load float, ptr %160, align 4, !tbaa !46
  %214 = call float @llvm.fmuladd.f32(float %213, float %205, float %212)
  store float %214, ptr %170, align 8, !tbaa !46
  %215 = fmul float %207, %199
  store float %215, ptr %171, align 4, !tbaa !46
  %216 = fmul float %210, %199
  store float %216, ptr %172, align 8, !tbaa !46
  %217 = fmul float %213, %199
  store float %217, ptr %173, align 4, !tbaa !46
  store float %204, ptr %174, align 8, !tbaa !198
  %218 = call i32 @RE_rayobject_raycast(ptr noundef %198, ptr noundef nonnull %8) #12
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %180
  %221 = load float, ptr %174, align 8, !tbaa !198
  %222 = load float, ptr %8, align 8, !tbaa !46
  %223 = load float, ptr %171, align 4, !tbaa !46
  %224 = call float @llvm.fmuladd.f32(float %223, float %221, float %222)
  %225 = load float, ptr %169, align 4, !tbaa !46
  %226 = load float, ptr %172, align 8, !tbaa !46
  %227 = call float @llvm.fmuladd.f32(float %226, float %221, float %225)
  %228 = load float, ptr %170, align 8, !tbaa !46
  %229 = load float, ptr %173, align 4, !tbaa !46
  %230 = call float @llvm.fmuladd.f32(float %229, float %221, float %228)
  br label %231

231:                                              ; preds = %180, %220
  %232 = phi float [ %196, %180 ], [ %230, %220 ]
  %233 = phi float [ %195, %180 ], [ %227, %220 ]
  %234 = phi float [ %194, %180 ], [ %224, %220 ]
  %235 = phi float [ %190, %180 ], [ %221, %220 ]
  br i1 %219, label %261, label %236

236:                                              ; preds = %231
  %237 = icmp eq i32 %183, 0
  br i1 %237, label %255, label %238

238:                                              ; preds = %236
  %239 = load float, ptr %62, align 4, !tbaa !46
  %240 = fsub float %234, %239
  %241 = load float, ptr %72, align 4, !tbaa !46
  %242 = fsub float %233, %241
  %243 = load float, ptr %82, align 4, !tbaa !46
  %244 = fsub float %232, %243
  %245 = fmul float %242, %242
  %246 = call float @llvm.fmuladd.f32(float %240, float %240, float %245)
  %247 = call float @llvm.fmuladd.f32(float %244, float %244, float %246)
  %248 = fsub float %191, %239
  %249 = fsub float %192, %241
  %250 = fsub float %193, %243
  %251 = fmul float %249, %249
  %252 = call float @llvm.fmuladd.f32(float %248, float %248, float %251)
  %253 = call float @llvm.fmuladd.f32(float %250, float %250, float %252)
  %254 = fcmp olt float %247, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %238, %236
  %256 = load float, ptr %175, align 8, !tbaa.struct !199
  %257 = load float, ptr %176, align 4, !tbaa.struct !200
  %258 = load i32, ptr %177, align 8, !tbaa.struct !201
  %259 = load ptr, ptr %178, align 8, !tbaa.struct !202
  %260 = load ptr, ptr %179, align 8, !tbaa.struct !203
  br label %261

261:                                              ; preds = %231, %255, %238
  %262 = phi float [ %193, %231 ], [ %232, %255 ], [ %193, %238 ]
  %263 = phi float [ %192, %231 ], [ %233, %255 ], [ %192, %238 ]
  %264 = phi float [ %191, %231 ], [ %234, %255 ], [ %191, %238 ]
  %265 = phi float [ %189, %231 ], [ %256, %255 ], [ %189, %238 ]
  %266 = phi float [ %188, %231 ], [ %257, %255 ], [ %188, %238 ]
  %267 = phi i32 [ %187, %231 ], [ %258, %255 ], [ %187, %238 ]
  %268 = phi ptr [ %186, %231 ], [ %259, %255 ], [ %186, %238 ]
  %269 = phi ptr [ %185, %231 ], [ %260, %255 ], [ %185, %238 ]
  %270 = phi float [ %184, %231 ], [ %235, %255 ], [ %184, %238 ]
  %271 = phi i32 [ %183, %231 ], [ 1, %255 ], [ 1, %238 ]
  %272 = phi i32 [ %181, %231 ], [ %182, %255 ], [ %181, %238 ]
  %273 = add nsw i32 %182, 2
  %274 = icmp slt i32 %182, 0
  br i1 %274, label %180, label %275, !llvm.loop !204

275:                                              ; preds = %261
  %276 = load i32, ptr %124, align 4, !tbaa !97
  switch i32 %276, label %283 [
    i32 5, label %277
    i32 13, label %277
  ]

277:                                              ; preds = %275, %275
  %278 = icmp eq i32 %271, 0
  br i1 %278, label %299, label %279

279:                                              ; preds = %277
  %280 = icmp eq i32 %272, -1
  %281 = fneg float %270
  %282 = select i1 %280, float %270, float %281
  br label %299

283:                                              ; preds = %275
  %284 = icmp eq i32 %271, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %283
  %286 = icmp eq i32 %267, 2
  %287 = zext i1 %286 to i32
  store float %264, ptr %62, align 4, !tbaa !46
  store float %263, ptr %72, align 4, !tbaa !46
  store float %262, ptr %82, align 4, !tbaa !46
  %288 = fneg float %265
  %289 = fneg float %266
  call fastcc void @bake_set_shade_input(ptr noundef %268, ptr noundef %269, ptr noundef nonnull %17, i32 noundef %287, i32 noundef %1, i32 noundef %2, float noundef %288, float noundef %289)
  br label %290

290:                                              ; preds = %283, %285
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %8) #12
  br label %291

291:                                              ; preds = %290, %150
  %292 = load i32, ptr %124, align 4, !tbaa !97
  %293 = icmp eq i32 %292, 3
  %294 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 76), align 8
  %295 = icmp eq i16 %294, 3
  %296 = select i1 %293, i1 %295, i1 false
  br i1 %296, label %297, label %298

297:                                              ; preds = %291
  call fastcc void @bake_shade(ptr noundef %0, ptr noundef %16, ptr noundef nonnull %17, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %301

298:                                              ; preds = %291
  call fastcc void @bake_shade(ptr noundef %0, ptr noundef %16, ptr noundef nonnull %17, i32 noundef %1, i32 noundef %2, ptr noundef null, ptr noundef null)
  br label %301

299:                                              ; preds = %277, %279
  %300 = phi float [ %282, %279 ], [ 0.000000e+00, %277 ]
  call fastcc void @bake_displacement(ptr noundef %0, float noundef %300, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %8) #12
  br label %301

301:                                              ; preds = %299, %297, %298, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bake_set_shade_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7) unnamed_addr #0 {
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @shade_input_set_triangle_i(ptr noundef %2, ptr noundef %0, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 3) #12
  br label %12

11:                                               ; preds = %8
  tail call void @shade_input_set_triangle_i(ptr noundef %2, ptr noundef %0, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2) #12
  br label %12

12:                                               ; preds = %11, %10
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 114
  %14 = load i16, ptr %13, align 2, !tbaa !92
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !71
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !71
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 107
  store i32 %17, ptr %19, align 4, !tbaa !205
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 105
  store i32 65535, ptr %20, align 4, !tbaa !206
  %21 = fneg float %6
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 23
  store float %21, ptr %22, align 8, !tbaa !207
  %23 = fneg float %7
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 24
  store float %23, ptr %24, align 4, !tbaa !208
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 103
  store i32 %4, ptr %25, align 4, !tbaa !209
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 104
  store i32 %5, ptr %26, align 8, !tbaa !210
  tail call void @shade_input_set_uv(ptr noundef %2) #12
  tail call void @shade_input_set_normals(ptr noundef %2) #12
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 7
  %28 = load i16, ptr %27, align 8, !tbaa !211
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %12
  tail call void @shade_input_flip_normals(ptr noundef %2) #12
  br label %31

31:                                               ; preds = %30, %12
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16
  %33 = load float, ptr %32, align 4, !tbaa !46
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 30
  store float %33, ptr %34, align 4, !tbaa !46
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !46
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 30, i64 1
  store float %36, ptr %37, align 4, !tbaa !46
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !46
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 30, i64 2
  store float %39, ptr %40, align 4, !tbaa !46
  ret void
}

declare void @shade_input_set_shade_texco(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bake_displacement(ptr nocapture noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 {
  %5 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 78), align 4, !tbaa !197
  %10 = fcmp une float %9, 0.000000e+00
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = fadd float %9, %1
  %13 = fmul float %9, 2.000000e+00
  %14 = fdiv float %12, %13
  br label %17

15:                                               ; preds = %4
  %16 = fadd float %1, 5.000000e-01
  br label %17

17:                                               ; preds = %8, %11, %15
  %18 = phi float [ %14, %11 ], [ %16, %15 ], [ %1, %8 ]
  %19 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !154
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !168
  %25 = mul nsw i32 %24, %3
  %26 = add nsw i32 %25, %2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, ptr %20, i64 %27
  store float %18, ptr %28, align 4, !tbaa !46
  %29 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 21
  %30 = load float, ptr %29, align 8, !tbaa !103
  %31 = fcmp olt float %30, %18
  %32 = select i1 %31, float %30, float %18
  store float %32, ptr %29, align 8, !tbaa !103
  %33 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 22
  %34 = load float, ptr %33, align 4, !tbaa !104
  %35 = fcmp ogt float %34, %18
  %36 = select i1 %35, float %34, float %18
  store float %36, ptr %33, align 4, !tbaa !104
  br label %37

37:                                               ; preds = %22, %17
  %38 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !173
  %40 = icmp eq ptr %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %43 = load ptr, ptr %42, align 8, !tbaa !140
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !168
  %48 = mul nsw i32 %47, %3
  %49 = add nsw i32 %48, %2
  %50 = shl nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, ptr %39, i64 %51
  %53 = getelementptr inbounds float, ptr %52, i64 2
  store float %18, ptr %53, align 4, !tbaa !46
  %54 = getelementptr inbounds float, ptr %52, i64 1
  store float %18, ptr %54, align 4, !tbaa !46
  store float %18, ptr %52, align 4, !tbaa !46
  %55 = getelementptr inbounds float, ptr %52, i64 3
  store float 1.000000e+00, ptr %55, align 4, !tbaa !46
  br label %84

56:                                               ; preds = %41, %37
  %57 = fcmp ugt float %18, 0.000000e+00
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = fcmp ogt float %18, 0x3FEFEFEFE0000000
  %60 = tail call float @llvm.fmuladd.f32(float %18, float 2.550000e+02, float 5.000000e-01)
  %61 = select i1 %59, float 2.550000e+02, float %60
  %62 = fptoui float %61 to i8
  br label %63

63:                                               ; preds = %56, %58
  %64 = phi i8 [ %62, %58 ], [ 0, %56 ]
  %65 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !140
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  store i8 %64, ptr %66, align 1, !tbaa !212
  %69 = getelementptr inbounds %struct.MLoopCol, ptr %66, i64 0, i32 1
  store i8 %64, ptr %69, align 1, !tbaa !214
  %70 = getelementptr inbounds %struct.MLoopCol, ptr %66, i64 0, i32 2
  store i8 %64, ptr %70, align 1, !tbaa !215
  br label %84

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !170
  %74 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !168
  %76 = mul nsw i32 %75, %3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %73, i64 %77
  %79 = sext i32 %2 to i64
  %80 = getelementptr inbounds i32, ptr %78, i64 %79
  store i8 %64, ptr %80, align 1, !tbaa !45
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  store i8 %64, ptr %81, align 1, !tbaa !45
  %82 = getelementptr inbounds i8, ptr %80, i64 2
  store i8 %64, ptr %82, align 1, !tbaa !45
  %83 = getelementptr inbounds i8, ptr %80, i64 3
  store i8 -1, ptr %83, align 1, !tbaa !45
  br label %84

84:                                               ; preds = %68, %71, %45
  %85 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 24
  %86 = load ptr, ptr %85, align 8, !tbaa !174
  %87 = icmp eq ptr %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !168
  %91 = mul nsw i32 %90, %3
  %92 = add nsw i32 %91, %2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %86, i64 %93
  store i8 2, ptr %94, align 1, !tbaa !45
  br label %95

95:                                               ; preds = %88, %84
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bake_shade(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5, ptr noundef readonly %6) unnamed_addr #0 {
  %8 = alloca %struct.ShadeResult, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [4 x i8], align 1
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %8) #12
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !216
  tail call void @shade_input_init_material(ptr noundef %2) #12
  %16 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !97
  switch i32 %17, label %38 [
    i32 2, label %18
    i32 6, label %34
  ]

18:                                               ; preds = %7
  tail call void @ambient_occlusion(ptr noundef %2) #12
  %19 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %20 = and i16 %19, 8
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 100
  %24 = load float, ptr %23, align 4, !tbaa !46
  store float %24, ptr %8, align 4, !tbaa !46
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 100, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !46
  %27 = getelementptr inbounds float, ptr %8, i64 1
  store float %26, ptr %27, align 4, !tbaa !46
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 100, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !46
  %30 = getelementptr inbounds float, ptr %8, i64 2
  store float %29, ptr %30, align 4, !tbaa !46
  br label %258

31:                                               ; preds = %18
  store float 0.000000e+00, ptr %8, align 4, !tbaa !46
  %32 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %32, align 4, !tbaa !46
  %33 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %33, align 4, !tbaa !46
  call void @environment_lighting_apply(ptr noundef %2, ptr noundef nonnull %8) #12
  br label %258

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 34
  store float 1.000000e+00, ptr %35, align 4, !tbaa !217
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 33
  store float 1.000000e+00, ptr %36, align 8, !tbaa !218
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 32
  store float 1.000000e+00, ptr %37, align 4, !tbaa !219
  br label %38

38:                                               ; preds = %7, %34
  tail call void @shade_input_set_shade_texco(ptr noundef %2) #12
  %39 = load i32, ptr %16, align 4, !tbaa !97
  %40 = icmp ult i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void @shade_samples_do_AO(ptr noundef %0) #12
  br label %42

42:                                               ; preds = %38, %41
  %43 = load ptr, ptr %2, align 8, !tbaa !220
  %44 = getelementptr inbounds %struct.Material, ptr %43, i64 0, i32 103
  %45 = load ptr, ptr %44, align 8, !tbaa !221
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.Material, ptr %43, i64 0, i32 77
  %49 = load i8, ptr %48, align 1, !tbaa !225
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = call zeroext i8 @ntreeShaderExecTree(ptr noundef nonnull %45, ptr noundef nonnull %2, ptr noundef nonnull %8) #12
  %53 = getelementptr inbounds %struct.VlakRen, ptr %15, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !226
  store ptr %54, ptr %2, align 8, !tbaa !220
  br label %56

55:                                               ; preds = %47, %42
  call void @shade_material_loop(ptr noundef nonnull %2, ptr noundef nonnull %8) #12
  br label %56

56:                                               ; preds = %55, %51
  %57 = load i32, ptr %16, align 4, !tbaa !97
  switch i32 %57, label %258 [
    i32 3, label %58
    i32 4, label %178
    i32 6, label %190
    i32 7, label %202
    i32 8, label %212
    i32 9, label %218
    i32 10, label %228
    i32 11, label %234
    i32 12, label %240
    i32 14, label %246
  ]

58:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16
  %60 = load float, ptr %59, align 4, !tbaa !46
  store float %60, ptr %9, align 4, !tbaa !46
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !46
  %63 = getelementptr inbounds float, ptr %9, i64 1
  store float %62, ptr %63, align 4, !tbaa !46
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !46
  %66 = getelementptr inbounds float, ptr %9, i64 2
  store float %65, ptr %66, align 4, !tbaa !46
  %67 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 76), align 8, !tbaa !227
  switch i16 %67, label %145 [
    i16 1, label %144
    i16 3, label %68
    i16 2, label %142
  ]

68:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #12
  %69 = icmp ne ptr %5, null
  %70 = icmp ne ptr %6, null
  %71 = and i1 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  %73 = load float, ptr %6, align 4, !tbaa !46
  store float %73, ptr %10, align 16, !tbaa !46
  %74 = getelementptr inbounds float, ptr %6, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !46
  %76 = getelementptr inbounds float, ptr %10, i64 1
  store float %75, ptr %76, align 4, !tbaa !46
  %77 = getelementptr inbounds float, ptr %6, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !46
  %79 = getelementptr inbounds float, ptr %10, i64 2
  store float %78, ptr %79, align 8, !tbaa !46
  %80 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %81 = getelementptr inbounds float, ptr %5, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !46
  %83 = getelementptr inbounds float, ptr %5, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !46
  %85 = fneg float %84
  %86 = fmul float %75, %85
  %87 = call float @llvm.fmuladd.f32(float %82, float %78, float %86)
  store float %87, ptr %80, align 4, !tbaa !46
  %88 = load float, ptr %5, align 4, !tbaa !46
  %89 = fneg float %88
  %90 = fmul float %78, %89
  %91 = call float @llvm.fmuladd.f32(float %84, float %73, float %90)
  %92 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  store float %91, ptr %92, align 16, !tbaa !46
  %93 = fneg float %82
  %94 = fmul float %73, %93
  %95 = call float @llvm.fmuladd.f32(float %88, float %75, float %94)
  %96 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  store float %95, ptr %96, align 4, !tbaa !46
  %97 = getelementptr inbounds float, ptr %6, i64 3
  %98 = load float, ptr %97, align 4, !tbaa !46
  %99 = fmul float %87, %98
  store float %99, ptr %80, align 4, !tbaa !46
  %100 = fmul float %91, %98
  store float %100, ptr %92, align 16, !tbaa !46
  %101 = fmul float %95, %98
  store float %101, ptr %96, align 4, !tbaa !46
  br label %134

102:                                              ; preds = %68
  %103 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 67
  %104 = load float, ptr %103, align 4, !tbaa !46
  store float %104, ptr %10, align 16, !tbaa !46
  %105 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 67, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !46
  %107 = getelementptr inbounds float, ptr %10, i64 1
  store float %106, ptr %107, align 4, !tbaa !46
  %108 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 67, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !46
  %110 = getelementptr inbounds float, ptr %10, i64 2
  store float %109, ptr %110, align 8, !tbaa !46
  %111 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %112 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 66
  %113 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 66, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !46
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 66, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !46
  %117 = fneg float %116
  %118 = fmul float %106, %117
  %119 = call float @llvm.fmuladd.f32(float %114, float %109, float %118)
  store float %119, ptr %111, align 4, !tbaa !46
  %120 = load float, ptr %112, align 4, !tbaa !46
  %121 = fneg float %120
  %122 = fmul float %109, %121
  %123 = call float @llvm.fmuladd.f32(float %116, float %104, float %122)
  %124 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  store float %123, ptr %124, align 16, !tbaa !46
  %125 = fneg float %114
  %126 = fmul float %104, %125
  %127 = call float @llvm.fmuladd.f32(float %120, float %106, float %126)
  %128 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  store float %127, ptr %128, align 4, !tbaa !46
  %129 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 67, i64 3
  %130 = load float, ptr %129, align 4, !tbaa !46
  %131 = fmul float %119, %130
  store float %131, ptr %111, align 4, !tbaa !46
  %132 = fmul float %123, %130
  store float %132, ptr %124, align 16, !tbaa !46
  %133 = fmul float %127, %130
  store float %133, ptr %128, align 4, !tbaa !46
  br label %134

134:                                              ; preds = %102, %72
  %135 = phi float [ %120, %102 ], [ %88, %72 ]
  %136 = phi float [ %114, %102 ], [ %82, %72 ]
  %137 = phi float [ %116, %102 ], [ %84, %72 ]
  %138 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  store float %135, ptr %138, align 8, !tbaa !46
  %139 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  store float %136, ptr %139, align 4, !tbaa !46
  %140 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  store float %137, ptr %140, align 16, !tbaa !46
  %141 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %11, ptr noundef nonnull %10) #12
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #12
  br label %145

142:                                              ; preds = %58
  %143 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 51
  call void @mul_mat3_m4_v3(ptr noundef nonnull %143, ptr noundef nonnull %9) #12
  br label %145

144:                                              ; preds = %58
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %9) #12
  br label %145

145:                                              ; preds = %58, %134, %144, %142
  %146 = load float, ptr %9, align 4, !tbaa !46
  %147 = load float, ptr %63, align 4, !tbaa !46
  %148 = fmul float %147, %147
  %149 = call float @llvm.fmuladd.f32(float %146, float %146, float %148)
  %150 = load float, ptr %66, align 4, !tbaa !46
  %151 = call float @llvm.fmuladd.f32(float %150, float %150, float %149)
  %152 = fcmp ogt float %151, 0x38AA95A5C0000000
  br i1 %152, label %153, label %162

153:                                              ; preds = %145
  %154 = call float @sqrtf(float noundef %151) #12
  %155 = fdiv float 1.000000e+00, %154
  %156 = load float, ptr %9, align 4, !tbaa !46
  %157 = fmul float %156, %155
  store float %157, ptr %9, align 4, !tbaa !46
  %158 = load float, ptr %63, align 4, !tbaa !46
  %159 = fmul float %155, %158
  store float %159, ptr %63, align 4, !tbaa !46
  %160 = load float, ptr %66, align 4, !tbaa !46
  %161 = fmul float %155, %160
  br label %163

162:                                              ; preds = %145
  store float 0.000000e+00, ptr %9, align 4, !tbaa !46
  store float 0.000000e+00, ptr %63, align 4, !tbaa !46
  br label %163

163:                                              ; preds = %153, %162
  %164 = phi float [ 0.000000e+00, %162 ], [ %161, %153 ]
  store float %164, ptr %66, align 4, !tbaa !46
  %165 = load float, ptr %9, align 4, !tbaa !46
  %166 = fmul float %165, 5.000000e-01
  %167 = fsub float 5.000000e-01, %166
  %168 = fadd float %167, 0x3EE4F8B580000000
  store float %168, ptr %8, align 4, !tbaa !46
  %169 = load float, ptr %63, align 4, !tbaa !46
  %170 = fmul float %169, 5.000000e-01
  %171 = fadd float %170, 5.000000e-01
  %172 = fadd float %171, 0x3EE4F8B580000000
  %173 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store float %172, ptr %173, align 4, !tbaa !46
  %174 = fmul float %164, 5.000000e-01
  %175 = fadd float %174, 5.000000e-01
  %176 = fadd float %175, 0x3EE4F8B580000000
  %177 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float %176, ptr %177, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %258

178:                                              ; preds = %56
  %179 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 32
  %180 = load float, ptr %179, align 4, !tbaa !46
  store float %180, ptr %8, align 4, !tbaa !46
  %181 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 33
  %182 = load float, ptr %181, align 4, !tbaa !46
  %183 = getelementptr inbounds float, ptr %8, i64 1
  store float %182, ptr %183, align 4, !tbaa !46
  %184 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 34
  %185 = load float, ptr %184, align 4, !tbaa !46
  %186 = getelementptr inbounds float, ptr %8, i64 2
  store float %185, ptr %186, align 4, !tbaa !46
  %187 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 49
  %188 = load float, ptr %187, align 8, !tbaa !228
  %189 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float %188, ptr %189, align 4, !tbaa !229
  br label %258

190:                                              ; preds = %56
  %191 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 9
  %192 = load float, ptr %191, align 4, !tbaa !46
  store float %192, ptr %8, align 4, !tbaa !46
  %193 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 9, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !46
  %195 = getelementptr inbounds float, ptr %8, i64 1
  store float %194, ptr %195, align 4, !tbaa !46
  %196 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 9, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !46
  %198 = getelementptr inbounds float, ptr %8, i64 2
  store float %197, ptr %198, align 4, !tbaa !46
  %199 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 49
  %200 = load float, ptr %199, align 8, !tbaa !228
  %201 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float %200, ptr %201, align 4, !tbaa !229
  br label %258

202:                                              ; preds = %56
  %203 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 35
  %204 = load float, ptr %203, align 4, !tbaa !46
  store float %204, ptr %8, align 4, !tbaa !46
  %205 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 36
  %206 = load float, ptr %205, align 4, !tbaa !46
  %207 = getelementptr inbounds float, ptr %8, i64 1
  store float %206, ptr %207, align 4, !tbaa !46
  %208 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 37
  %209 = load float, ptr %208, align 4, !tbaa !46
  %210 = getelementptr inbounds float, ptr %8, i64 2
  store float %209, ptr %210, align 4, !tbaa !46
  %211 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %211, align 4, !tbaa !229
  br label %258

212:                                              ; preds = %56
  %213 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 51
  %214 = load float, ptr %213, align 8, !tbaa !231
  store float %214, ptr %8, align 4, !tbaa !46
  %215 = getelementptr inbounds float, ptr %8, i64 1
  store float %214, ptr %215, align 4, !tbaa !46
  %216 = getelementptr inbounds float, ptr %8, i64 2
  store float %214, ptr %216, align 4, !tbaa !46
  %217 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %217, align 4, !tbaa !229
  br label %258

218:                                              ; preds = %56
  %219 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 38
  %220 = load float, ptr %219, align 4, !tbaa !46
  store float %220, ptr %8, align 4, !tbaa !46
  %221 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 39
  %222 = load float, ptr %221, align 4, !tbaa !46
  %223 = getelementptr inbounds float, ptr %8, i64 1
  store float %222, ptr %223, align 4, !tbaa !46
  %224 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 40
  %225 = load float, ptr %224, align 4, !tbaa !46
  %226 = getelementptr inbounds float, ptr %8, i64 2
  store float %225, ptr %226, align 4, !tbaa !46
  %227 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %227, align 4, !tbaa !229
  br label %258

228:                                              ; preds = %56
  %229 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 48
  %230 = load float, ptr %229, align 4, !tbaa !232
  store float %230, ptr %8, align 4, !tbaa !46
  %231 = getelementptr inbounds float, ptr %8, i64 1
  store float %230, ptr %231, align 4, !tbaa !46
  %232 = getelementptr inbounds float, ptr %8, i64 2
  store float %230, ptr %232, align 4, !tbaa !46
  %233 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %233, align 4, !tbaa !229
  br label %258

234:                                              ; preds = %56
  %235 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 49
  %236 = load float, ptr %235, align 8, !tbaa !228
  store float %236, ptr %8, align 4, !tbaa !46
  %237 = getelementptr inbounds float, ptr %8, i64 1
  store float %236, ptr %237, align 4, !tbaa !46
  %238 = getelementptr inbounds float, ptr %8, i64 2
  store float %236, ptr %238, align 4, !tbaa !46
  %239 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %239, align 4, !tbaa !229
  br label %258

240:                                              ; preds = %56
  %241 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 45
  %242 = load float, ptr %241, align 8, !tbaa !233
  store float %242, ptr %8, align 4, !tbaa !46
  %243 = getelementptr inbounds float, ptr %8, i64 1
  store float %242, ptr %243, align 4, !tbaa !46
  %244 = getelementptr inbounds float, ptr %8, i64 2
  store float %242, ptr %244, align 4, !tbaa !46
  %245 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %245, align 4, !tbaa !229
  br label %258

246:                                              ; preds = %56
  %247 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 61
  %248 = load float, ptr %247, align 4, !tbaa !46
  store float %248, ptr %8, align 4, !tbaa !46
  %249 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 61, i64 1
  %250 = load float, ptr %249, align 4, !tbaa !46
  %251 = getelementptr inbounds float, ptr %8, i64 1
  store float %250, ptr %251, align 4, !tbaa !46
  %252 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 61, i64 2
  %253 = load float, ptr %252, align 4, !tbaa !46
  %254 = getelementptr inbounds float, ptr %8, i64 2
  store float %253, ptr %254, align 4, !tbaa !46
  %255 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 61, i64 3
  %256 = load float, ptr %255, align 4, !tbaa !46
  %257 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float %256, ptr %257, align 4, !tbaa !229
  br label %258

258:                                              ; preds = %56, %163, %190, %212, %228, %240, %246, %234, %218, %202, %178, %22, %31
  %259 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 18
  %260 = load ptr, ptr %259, align 8, !tbaa !173
  %261 = icmp eq ptr %260, null
  br i1 %261, label %288, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %264 = load ptr, ptr %263, align 8, !tbaa !140
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %288

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %268 = load i32, ptr %267, align 8, !tbaa !168
  %269 = mul nsw i32 %268, %4
  %270 = add nsw i32 %269, %3
  %271 = shl nsw i32 %270, 2
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, ptr %260, i64 %272
  %274 = load float, ptr %8, align 4, !tbaa !46
  store float %274, ptr %273, align 4, !tbaa !46
  %275 = getelementptr inbounds float, ptr %8, i64 1
  %276 = load float, ptr %275, align 4, !tbaa !46
  %277 = getelementptr inbounds float, ptr %273, i64 1
  store float %276, ptr %277, align 4, !tbaa !46
  %278 = getelementptr inbounds float, ptr %8, i64 2
  %279 = load float, ptr %278, align 4, !tbaa !46
  %280 = getelementptr inbounds float, ptr %273, i64 2
  store float %279, ptr %280, align 4, !tbaa !46
  %281 = load i32, ptr %16, align 4, !tbaa !97
  switch i32 %281, label %286 [
    i32 1, label %282
    i32 4, label %282
    i32 14, label %282
  ]

282:                                              ; preds = %266, %266, %266
  %283 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  %284 = load float, ptr %283, align 4, !tbaa !229
  %285 = getelementptr inbounds float, ptr %273, i64 3
  store float %284, ptr %285, align 4, !tbaa !46
  br label %361

286:                                              ; preds = %266
  %287 = getelementptr inbounds float, ptr %273, i64 3
  store float 1.000000e+00, ptr %287, align 4, !tbaa !46
  br label %361

288:                                              ; preds = %262, %258
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  %289 = load i32, ptr %16, align 4, !tbaa !97
  switch i32 %289, label %314 [
    i32 1, label %290
    i32 4, label %290
  ]

290:                                              ; preds = %288, %288
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %291 = load float, ptr %8, align 4, !tbaa !46
  store float %291, ptr %13, align 4, !tbaa !46
  %292 = getelementptr inbounds float, ptr %8, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !46
  %294 = getelementptr inbounds float, ptr %13, i64 1
  store float %293, ptr %294, align 4, !tbaa !46
  %295 = getelementptr inbounds float, ptr %8, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !46
  %297 = getelementptr inbounds float, ptr %13, i64 2
  store float %296, ptr %297, align 4, !tbaa !46
  %298 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8, !tbaa !68
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %313, label %300

300:                                              ; preds = %290
  %301 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %302 = load ptr, ptr %301, align 8, !tbaa !140
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 28
  %306 = load ptr, ptr %305, align 8, !tbaa !172
  call void @IMB_colormanagement_scene_linear_to_colorspace_v3(ptr noundef nonnull %13, ptr noundef %306) #12
  br label %313

307:                                              ; preds = %300
  %308 = call float @linearrgb_to_srgb(float noundef %291) #12
  store float %308, ptr %13, align 4, !tbaa !46
  %309 = load float, ptr %294, align 4, !tbaa !46
  %310 = call float @linearrgb_to_srgb(float noundef %309) #12
  store float %310, ptr %294, align 4, !tbaa !46
  %311 = load float, ptr %297, align 4, !tbaa !46
  %312 = call float @linearrgb_to_srgb(float noundef %311) #12
  store float %312, ptr %297, align 4, !tbaa !46
  br label %313

313:                                              ; preds = %304, %307, %290
  call void @rgb_float_to_uchar(ptr noundef nonnull %12, ptr noundef nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  br label %315

314:                                              ; preds = %288
  call void @rgb_float_to_uchar(ptr noundef nonnull %12, ptr noundef nonnull %8) #12
  br label %315

315:                                              ; preds = %314, %313
  %316 = load i32, ptr %16, align 4, !tbaa !97
  switch i32 %316, label %326 [
    i32 1, label %317
    i32 4, label %317
    i32 14, label %317
  ]

317:                                              ; preds = %315, %315, %315
  %318 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  %319 = load float, ptr %318, align 4
  %320 = fcmp ugt float %319, 0.000000e+00
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = fcmp ogt float %319, 0x3FEFEFEFE0000000
  %323 = call float @llvm.fmuladd.f32(float %319, float 2.550000e+02, float 5.000000e-01)
  %324 = select i1 %322, float 2.550000e+02, float %323
  %325 = fptoui float %324 to i8
  br label %326

326:                                              ; preds = %315, %321, %317
  %327 = phi i8 [ %325, %321 ], [ 0, %317 ], [ -1, %315 ]
  %328 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 3
  store i8 %327, ptr %328, align 1, !tbaa !45
  %329 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %330 = load ptr, ptr %329, align 8, !tbaa !140
  %331 = icmp eq ptr %330, null
  br i1 %331, label %340, label %332

332:                                              ; preds = %326
  %333 = load i8, ptr %12, align 1, !tbaa !45
  store i8 %333, ptr %330, align 1, !tbaa !212
  %334 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 1
  %335 = load i8, ptr %334, align 1, !tbaa !45
  %336 = getelementptr inbounds %struct.MLoopCol, ptr %330, i64 0, i32 1
  store i8 %335, ptr %336, align 1, !tbaa !214
  %337 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 2
  %338 = load i8, ptr %337, align 1, !tbaa !45
  %339 = getelementptr inbounds %struct.MLoopCol, ptr %330, i64 0, i32 2
  store i8 %338, ptr %339, align 1, !tbaa !215
  br label %360

340:                                              ; preds = %326
  %341 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 17
  %342 = load ptr, ptr %341, align 8, !tbaa !170
  %343 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %344 = load i32, ptr %343, align 8, !tbaa !168
  %345 = mul nsw i32 %344, %4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, ptr %342, i64 %346
  %348 = sext i32 %3 to i64
  %349 = getelementptr inbounds i32, ptr %347, i64 %348
  %350 = load i8, ptr %12, align 1, !tbaa !45
  store i8 %350, ptr %349, align 1, !tbaa !45
  %351 = getelementptr inbounds i8, ptr %12, i64 1
  %352 = load i8, ptr %351, align 1, !tbaa !45
  %353 = getelementptr inbounds i8, ptr %349, i64 1
  store i8 %352, ptr %353, align 1, !tbaa !45
  %354 = getelementptr inbounds i8, ptr %12, i64 2
  %355 = load i8, ptr %354, align 1, !tbaa !45
  %356 = getelementptr inbounds i8, ptr %349, i64 2
  store i8 %355, ptr %356, align 1, !tbaa !45
  %357 = getelementptr inbounds i8, ptr %12, i64 3
  %358 = load i8, ptr %357, align 1, !tbaa !45
  %359 = getelementptr inbounds i8, ptr %349, i64 3
  store i8 %358, ptr %359, align 1, !tbaa !45
  br label %360

360:                                              ; preds = %340, %332
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %361

361:                                              ; preds = %282, %286, %360
  %362 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 24
  %363 = load ptr, ptr %362, align 8, !tbaa !174
  %364 = icmp eq ptr %363, null
  br i1 %364, label %372, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %367 = load i32, ptr %366, align 8, !tbaa !168
  %368 = mul nsw i32 %367, %4
  %369 = add nsw i32 %368, %3
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, ptr %363, i64 %370
  store i8 2, ptr %371, align 1, !tbaa !45
  br label %372

372:                                              ; preds = %365, %361
  %373 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 27
  %374 = load ptr, ptr %373, align 8, !tbaa !102
  %375 = icmp eq ptr %374, null
  br i1 %375, label %377, label %376

376:                                              ; preds = %372
  store i16 1, ptr %374, align 2, !tbaa !72
  br label %377

377:                                              ; preds = %376, %372
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %8) #12
  ret void
}

declare void @shade_input_set_triangle_i(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @shade_input_set_uv(ptr noundef) local_unnamed_addr #2

declare void @shade_input_set_normals(ptr noundef) local_unnamed_addr #2

declare void @shade_input_flip_normals(ptr noundef) local_unnamed_addr #2

declare i32 @RE_rayobject_raycast(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @shade_input_init_material(ptr noundef) local_unnamed_addr #2

declare void @ambient_occlusion(ptr noundef) local_unnamed_addr #2

declare void @environment_lighting_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @shade_samples_do_AO(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ntreeShaderExecTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @shade_material_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_scene_linear_to_colorspace_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

declare void @zbuf_alloc_span(ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @vlr_set_uv_indices(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bake_set_vlr_dxyco(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load float, ptr %2, align 4, !tbaa !46
  %6 = load float, ptr %1, align 4, !tbaa !46
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = fsub float %9, %11
  %13 = load float, ptr %3, align 4, !tbaa !46
  %14 = fsub float %13, %6
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = fsub float %16, %11
  %18 = fneg float %14
  %19 = fmul float %17, %18
  %20 = tail call float @llvm.fmuladd.f32(float %7, float %12, float %19)
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fcmp ogt float %21, 0x3E80000000000000
  br i1 %22, label %23, label %100

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !155
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !149
  %29 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 2
  %30 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 3
  %31 = select i1 %26, ptr %29, ptr %30
  %32 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 1
  %33 = select i1 %26, ptr %32, ptr %29
  %34 = load ptr, ptr %31, align 8, !tbaa !70
  %35 = load ptr, ptr %33, align 8, !tbaa !70
  %36 = load ptr, ptr %28, align 8, !tbaa !158
  %37 = fdiv float 5.000000e-01, %20
  %38 = fsub float %16, %9
  %39 = fsub float %11, %16
  %40 = load float, ptr %36, align 4, !tbaa !46
  %41 = load float, ptr %35, align 4, !tbaa !46
  %42 = fmul float %12, %41
  %43 = tail call float @llvm.fmuladd.f32(float %40, float %38, float %42)
  %44 = load float, ptr %34, align 4, !tbaa !46
  %45 = tail call float @llvm.fmuladd.f32(float %44, float %39, float %43)
  %46 = fmul float %37, %45
  %47 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25
  store float %46, ptr %47, align 8, !tbaa !46
  %48 = getelementptr inbounds float, ptr %36, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !46
  %50 = getelementptr inbounds float, ptr %35, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !46
  %52 = fmul float %12, %51
  %53 = tail call float @llvm.fmuladd.f32(float %49, float %38, float %52)
  %54 = getelementptr inbounds float, ptr %34, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !46
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %39, float %53)
  %57 = fmul float %37, %56
  %58 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25, i64 1
  store float %57, ptr %58, align 4, !tbaa !46
  %59 = getelementptr inbounds float, ptr %36, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !46
  %61 = getelementptr inbounds float, ptr %35, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !46
  %63 = fmul float %12, %62
  %64 = tail call float @llvm.fmuladd.f32(float %60, float %38, float %63)
  %65 = getelementptr inbounds float, ptr %34, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !46
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %39, float %64)
  %68 = fmul float %37, %67
  %69 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25, i64 2
  store float %68, ptr %69, align 8, !tbaa !46
  %70 = load float, ptr %3, align 4, !tbaa !46
  %71 = load float, ptr %2, align 4, !tbaa !46
  %72 = fsub float %70, %71
  %73 = load float, ptr %1, align 4, !tbaa !46
  %74 = fsub float %73, %70
  %75 = fsub float %71, %73
  %76 = load float, ptr %36, align 4, !tbaa !46
  %77 = load float, ptr %35, align 4, !tbaa !46
  %78 = fmul float %74, %77
  %79 = tail call float @llvm.fmuladd.f32(float %76, float %72, float %78)
  %80 = load float, ptr %34, align 4, !tbaa !46
  %81 = tail call float @llvm.fmuladd.f32(float %80, float %75, float %79)
  %82 = fmul float %37, %81
  %83 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26
  store float %82, ptr %83, align 4, !tbaa !46
  %84 = load float, ptr %48, align 4, !tbaa !46
  %85 = load float, ptr %50, align 4, !tbaa !46
  %86 = fmul float %74, %85
  %87 = tail call float @llvm.fmuladd.f32(float %84, float %72, float %86)
  %88 = load float, ptr %54, align 4, !tbaa !46
  %89 = tail call float @llvm.fmuladd.f32(float %88, float %75, float %87)
  %90 = fmul float %37, %89
  %91 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26, i64 1
  store float %90, ptr %91, align 4, !tbaa !46
  %92 = load float, ptr %59, align 4, !tbaa !46
  %93 = load float, ptr %61, align 4, !tbaa !46
  %94 = fmul float %74, %93
  %95 = tail call float @llvm.fmuladd.f32(float %92, float %72, float %94)
  %96 = load float, ptr %65, align 4, !tbaa !46
  %97 = tail call float @llvm.fmuladd.f32(float %96, float %75, float %95)
  %98 = fmul float %37, %97
  %99 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26, i64 2
  store float %98, ptr %99, align 4, !tbaa !46
  br label %102

100:                                              ; preds = %4
  %101 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %101, i8 0, i64 24, i1 false)
  br label %102

102:                                              ; preds = %100, %23
  %103 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !148
  %105 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %104, i64 0, i32 11
  %106 = load i16, ptr %105, align 8, !tbaa !187
  %107 = and i16 %106, 3
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %104, i64 0, i32 10
  %111 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25
  tail call void @mul_m3_v3(ptr noundef nonnull %110, ptr noundef nonnull %111) #12
  %112 = load ptr, ptr %103, align 8, !tbaa !148
  %113 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %112, i64 0, i32 10
  %114 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26
  tail call void @mul_m3_v3(ptr noundef nonnull %113, ptr noundef nonnull %114) #12
  br label %115

115:                                              ; preds = %109, %102
  ret void
}

declare void @zspan_scanconvert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

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
!34 = !{!35, !37, i64 24}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!35, !39, i64 16}
!44 = !{!35, !39, i64 20}
!45 = !{!37, !37, i64 0}
!46 = !{!40, !40, i64 0}
!47 = !{!35, !36, i64 48}
!48 = !{!35, !36, i64 40}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!53, !36, i64 1096}
!53 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !54, i64 96, !54, i64 98, !54, i64 100, !54, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !55, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !41, i64 156, !56, i64 172, !40, i64 188, !40, i64 192, !40, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !40, i64 544, !40, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !57, i64 1104, !64, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !55, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !40, i64 5680, !36, i64 5688, !55, i64 5696, !40, i64 5712, !40, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !55, i64 5752, !55, i64 5768, !55, i64 5784, !36, i64 5800, !55, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !55, i64 5872, !36, i64 5888, !55, i64 5896, !55, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !66, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!54 = !{!"short", !37, i64 0}
!55 = !{!"ListBase", !36, i64 0, !36, i64 8}
!56 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!57 = !{!"RenderData", !58, i64 0, !36, i64 248, !36, i64 256, !61, i64 264, !62, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !54, i64 432, !54, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !54, i64 456, !54, i64 458, !54, i64 460, !54, i64 462, !54, i64 464, !54, i64 466, !39, i64 468, !54, i64 472, !54, i64 474, !54, i64 476, !54, i64 478, !54, i64 480, !54, i64 482, !39, i64 484, !39, i64 488, !54, i64 492, !54, i64 494, !39, i64 496, !39, i64 500, !54, i64 504, !54, i64 506, !54, i64 508, !54, i64 510, !54, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !54, i64 528, !54, i64 530, !54, i64 532, !54, i64 534, !54, i64 536, !54, i64 538, !54, i64 540, !54, i64 542, !56, i64 544, !56, i64 560, !41, i64 576, !55, i64 592, !54, i64 608, !54, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !54, i64 648, !54, i64 650, !54, i64 652, !54, i64 654, !54, i64 656, !54, i64 658, !40, i64 660, !40, i64 664, !54, i64 668, !54, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !39, i64 1704, !54, i64 1708, !54, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !54, i64 2524, !54, i64 2526, !40, i64 2528, !40, i64 2532, !54, i64 2536, !54, i64 2538, !40, i64 2540, !54, i64 2544, !54, i64 2546, !39, i64 2548, !54, i64 2552, !54, i64 2554, !54, i64 2556, !54, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !39, i64 2576, !40, i64 2580, !37, i64 2584, !63, i64 2616, !39, i64 3976, !39, i64 3980}
!58 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !54, i64 8, !54, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !59, i64 24, !60, i64 184}
!59 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!60 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!61 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !54, i64 48, !54, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!62 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!63 = !{!"BakeData", !58, i64 0, !37, i64 248, !54, i64 1272, !54, i64 1274, !54, i64 1276, !54, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!64 = !{!"World", !65, i64 0, !36, i64 120, !54, i64 128, !54, i64 130, !54, i64 132, !54, i64 134, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !54, i64 200, !54, i64 202, !54, i64 204, !54, i64 206, !54, i64 208, !54, i64 210, !54, i64 212, !54, i64 214, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !54, i64 264, !54, i64 266, !54, i64 268, !54, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !54, i64 288, !54, i64 290, !54, i64 292, !54, i64 294, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !54, i64 324, !54, i64 326, !54, i64 328, !54, i64 330, !54, i64 332, !54, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !54, i64 504, !54, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!65 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !54, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!66 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !54, i64 28, !54, i64 30, !54, i64 32, !54, i64 34, !54, i64 36, !54, i64 38, !37, i64 40, !67, i64 48, !67, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !40, i64 144, !40, i64 148}
!67 = !{!"double", !37, i64 0}
!68 = !{!53, !37, i64 104}
!69 = !{i64 0, i64 8, !70, i64 8, i64 8, !70, i64 16, i64 74, !45, i64 92, i64 4, !71, i64 96, i64 2, !72, i64 98, i64 2, !72, i64 100, i64 2, !72, i64 102, i64 2, !72, i64 104, i64 1, !45, i64 112, i64 8, !70, i64 120, i64 8, !70, i64 128, i64 8, !70, i64 136, i64 8, !70, i64 144, i64 4, !71, i64 148, i64 4, !71, i64 152, i64 4, !71, i64 156, i64 4, !71, i64 160, i64 4, !71, i64 164, i64 4, !71, i64 168, i64 4, !71, i64 172, i64 4, !46, i64 176, i64 4, !46, i64 180, i64 4, !46, i64 184, i64 4, !46, i64 188, i64 4, !46, i64 192, i64 4, !46, i64 196, i64 4, !46, i64 200, i64 4, !71, i64 204, i64 4, !71, i64 208, i64 4, !71, i64 212, i64 4, !71, i64 216, i64 4, !46, i64 220, i64 4, !46, i64 224, i64 4, !46, i64 228, i64 4, !46, i64 232, i64 4, !46, i64 236, i64 4, !46, i64 240, i64 12, !45, i64 252, i64 36, !45, i64 288, i64 64, !45, i64 352, i64 64, !45, i64 416, i64 64, !45, i64 480, i64 64, !45, i64 544, i64 4, !46, i64 548, i64 4, !46, i64 552, i64 8, !70, i64 560, i64 256, !45, i64 816, i64 256, !45, i64 1072, i64 8, !70, i64 1080, i64 4, !45, i64 1088, i64 8, !70, i64 1096, i64 8, !70, i64 1104, i64 1, !45, i64 1105, i64 1, !45, i64 1106, i64 1, !45, i64 1107, i64 1, !45, i64 1108, i64 1, !45, i64 1109, i64 1, !45, i64 1110, i64 1, !45, i64 1111, i64 1, !45, i64 1112, i64 2, !72, i64 1114, i64 2, !72, i64 1116, i64 4, !46, i64 1120, i64 1, !45, i64 1121, i64 1, !45, i64 1122, i64 6, !45, i64 1128, i64 4, !71, i64 1132, i64 4, !71, i64 1136, i64 64, !45, i64 1200, i64 64, !45, i64 1264, i64 4, !46, i64 1268, i64 4, !46, i64 1272, i64 8, !70, i64 1280, i64 8, !70, i64 1288, i64 64, !45, i64 1352, i64 8, !70, i64 1360, i64 8, !70, i64 1368, i64 4, !71, i64 1372, i64 4, !71, i64 1376, i64 4, !71, i64 1380, i64 4, !71, i64 1384, i64 4, !71, i64 1388, i64 4, !71, i64 1392, i64 4, !71, i64 1396, i64 4, !71, i64 1400, i64 4, !71, i64 1404, i64 4, !71, i64 1408, i64 4, !71, i64 1412, i64 4, !71, i64 1416, i64 2, !72, i64 1418, i64 2, !72, i64 1420, i64 4, !71, i64 1424, i64 4, !71, i64 1428, i64 4, !71, i64 1432, i64 4, !71, i64 1436, i64 4, !71, i64 1440, i64 4, !71, i64 1444, i64 4, !71, i64 1448, i64 4, !71, i64 1452, i64 4, !71, i64 1456, i64 4, !71, i64 1460, i64 4, !71, i64 1464, i64 4, !46, i64 1468, i64 4, !71, i64 1472, i64 4, !71, i64 1476, i64 4, !71, i64 1480, i64 4, !71, i64 1484, i64 4, !71, i64 1488, i64 4, !71, i64 1492, i64 4, !71, i64 1496, i64 8, !70, i64 1504, i64 4, !71, i64 1508, i64 4, !71, i64 1512, i64 4, !71, i64 1516, i64 4, !46, i64 1520, i64 4, !71, i64 1524, i64 4, !71, i64 1528, i64 4, !71, i64 1532, i64 4, !71, i64 1536, i64 2, !72, i64 1538, i64 2, !72, i64 1540, i64 4, !46, i64 1544, i64 4, !46, i64 1548, i64 4, !46, i64 1552, i64 4, !46, i64 1556, i64 4, !46, i64 1560, i64 2, !72, i64 1562, i64 2, !72, i64 1564, i64 2, !72, i64 1566, i64 2, !72, i64 1568, i64 2, !72, i64 1570, i64 2, !72, i64 1572, i64 4, !71, i64 1576, i64 2, !72, i64 1578, i64 2, !72, i64 1580, i64 2, !72, i64 1582, i64 2, !72, i64 1584, i64 2, !72, i64 1586, i64 2, !72, i64 1588, i64 4, !71, i64 1592, i64 4, !71, i64 1596, i64 2, !72, i64 1598, i64 2, !72, i64 1600, i64 4, !71, i64 1604, i64 4, !71, i64 1608, i64 2, !72, i64 1610, i64 2, !72, i64 1612, i64 2, !72, i64 1614, i64 2, !72, i64 1616, i64 2, !72, i64 1618, i64 1, !45, i64 1619, i64 1, !45, i64 1620, i64 4, !71, i64 1624, i64 4, !71, i64 1628, i64 4, !71, i64 1632, i64 2, !72, i64 1634, i64 2, !72, i64 1636, i64 2, !72, i64 1638, i64 2, !72, i64 1640, i64 2, !72, i64 1642, i64 2, !72, i64 1644, i64 2, !72, i64 1646, i64 2, !72, i64 1648, i64 4, !46, i64 1652, i64 4, !46, i64 1656, i64 4, !46, i64 1660, i64 4, !46, i64 1664, i64 4, !46, i64 1668, i64 4, !46, i64 1672, i64 4, !46, i64 1676, i64 4, !46, i64 1680, i64 4, !71, i64 1684, i64 4, !71, i64 1688, i64 4, !71, i64 1692, i64 4, !71, i64 1696, i64 8, !70, i64 1704, i64 8, !70, i64 1712, i64 2, !72, i64 1714, i64 2, !72, i64 1716, i64 4, !46, i64 1720, i64 4, !46, i64 1724, i64 4, !46, i64 1728, i64 4, !46, i64 1732, i64 4, !71, i64 1736, i64 4, !46, i64 1740, i64 4, !46, i64 1744, i64 4, !46, i64 1748, i64 4, !46, i64 1752, i64 2, !72, i64 1754, i64 2, !72, i64 1756, i64 2, !72, i64 1758, i64 2, !72, i64 1760, i64 2, !72, i64 1762, i64 2, !72, i64 1764, i64 4, !46, i64 1768, i64 4, !46, i64 1772, i64 2, !72, i64 1774, i64 2, !72, i64 1776, i64 4, !46, i64 1780, i64 4, !46, i64 1784, i64 1024, !45, i64 2808, i64 4, !71, i64 2812, i64 2, !72, i64 2814, i64 2, !72, i64 2816, i64 768, !45, i64 3584, i64 16, !45, i64 3600, i64 16, !45, i64 3616, i64 1, !45, i64 3617, i64 1, !45, i64 3618, i64 1, !45, i64 3619, i64 5, !45, i64 3624, i64 4, !71, i64 3628, i64 2, !72, i64 3630, i64 2, !72, i64 3632, i64 4, !46, i64 3636, i64 4, !46, i64 3640, i64 2, !72, i64 3642, i64 2, !72, i64 3644, i64 4, !46, i64 3648, i64 2, !72, i64 3650, i64 2, !72, i64 3652, i64 4, !71, i64 3656, i64 2, !72, i64 3658, i64 2, !72, i64 3660, i64 2, !72, i64 3662, i64 2, !72, i64 3664, i64 4, !46, i64 3668, i64 4, !46, i64 3672, i64 8, !70, i64 3680, i64 4, !71, i64 3684, i64 4, !46, i64 3688, i64 32, !45, i64 3720, i64 1, !45, i64 3721, i64 1, !45, i64 3722, i64 1, !45, i64 3723, i64 1, !45, i64 3724, i64 1, !45, i64 3725, i64 1, !45, i64 3726, i64 1, !45, i64 3727, i64 1, !45, i64 3728, i64 2, !72, i64 3730, i64 2, !72, i64 3732, i64 4, !46, i64 3736, i64 1, !45, i64 3737, i64 1, !45, i64 3738, i64 6, !45, i64 3744, i64 4, !71, i64 3748, i64 4, !71, i64 3752, i64 64, !45, i64 3816, i64 64, !45, i64 3880, i64 4, !46, i64 3884, i64 4, !46, i64 3888, i64 8, !70, i64 3896, i64 8, !70, i64 3904, i64 64, !45, i64 3968, i64 1024, !45, i64 4992, i64 2, !72, i64 4994, i64 2, !72, i64 4996, i64 2, !72, i64 4998, i64 2, !72, i64 5000, i64 4, !46, i64 5004, i64 4, !46, i64 5008, i64 3, !45, i64 5011, i64 1, !45, i64 5012, i64 1, !45, i64 5013, i64 3, !45, i64 5016, i64 64, !45, i64 5080, i64 4, !71, i64 5084, i64 4, !71, i64 5088, i64 8, !70, i64 5096, i64 8, !70, i64 5104, i64 8, !70, i64 5112, i64 8, !70, i64 5120, i64 66, !45, i64 5186, i64 2, !72, i64 5188, i64 4, !71, i64 5192, i64 4, !71, i64 5196, i64 4, !71, i64 5200, i64 8, !70, i64 5208, i64 8, !70, i64 5216, i64 2, !72, i64 5218, i64 2, !72, i64 5220, i64 2, !72, i64 5222, i64 2, !72, i64 5224, i64 4, !46, i64 5228, i64 4, !46, i64 5232, i64 4, !46, i64 5236, i64 4, !46, i64 5240, i64 4, !46, i64 5244, i64 4, !46, i64 5248, i64 4, !46, i64 5252, i64 4, !46, i64 5256, i64 4, !46, i64 5260, i64 4, !46, i64 5264, i64 4, !46, i64 5268, i64 4, !46, i64 5272, i64 4, !46, i64 5276, i64 4, !46, i64 5280, i64 4, !46, i64 5284, i64 4, !46, i64 5288, i64 2, !72, i64 5290, i64 2, !72, i64 5292, i64 2, !72, i64 5294, i64 2, !72, i64 5296, i64 2, !72, i64 5298, i64 2, !72, i64 5300, i64 2, !72, i64 5302, i64 2, !72, i64 5304, i64 4, !46, i64 5308, i64 4, !46, i64 5312, i64 4, !46, i64 5316, i64 4, !46, i64 5320, i64 4, !46, i64 5324, i64 4, !46, i64 5328, i64 4, !46, i64 5332, i64 4, !46, i64 5336, i64 4, !46, i64 5340, i64 4, !46, i64 5344, i64 4, !46, i64 5348, i64 4, !46, i64 5352, i64 2, !72, i64 5354, i64 2, !72, i64 5356, i64 2, !72, i64 5358, i64 2, !72, i64 5360, i64 4, !46, i64 5364, i64 4, !46, i64 5368, i64 4, !46, i64 5372, i64 4, !46, i64 5376, i64 2, !72, i64 5378, i64 2, !72, i64 5380, i64 2, !72, i64 5382, i64 2, !72, i64 5384, i64 4, !46, i64 5388, i64 4, !46, i64 5392, i64 4, !46, i64 5396, i64 4, !46, i64 5400, i64 4, !46, i64 5404, i64 4, !46, i64 5408, i64 4, !46, i64 5412, i64 2, !72, i64 5414, i64 2, !72, i64 5416, i64 2, !72, i64 5418, i64 2, !72, i64 5420, i64 2, !72, i64 5422, i64 2, !72, i64 5424, i64 8, !70, i64 5432, i64 8, !70, i64 5440, i64 8, !70, i64 5448, i64 144, !45, i64 5592, i64 2, !72, i64 5594, i64 2, !72, i64 5596, i64 4, !45, i64 5600, i64 8, !70, i64 5608, i64 8, !70, i64 5616, i64 8, !70, i64 5624, i64 4, !71, i64 5628, i64 4, !71, i64 5632, i64 8, !70, i64 5640, i64 8, !70, i64 5648, i64 8, !70, i64 5656, i64 8, !70, i64 5664, i64 8, !70, i64 5672, i64 8, !70, i64 5680, i64 4, !46, i64 5688, i64 8, !70, i64 5696, i64 8, !70, i64 5704, i64 8, !70, i64 5712, i64 4, !46, i64 5716, i64 4, !46, i64 5720, i64 4, !71, i64 5724, i64 4, !71, i64 5728, i64 4, !71, i64 5732, i64 4, !71, i64 5736, i64 4, !71, i64 5744, i64 8, !70, i64 5752, i64 8, !70, i64 5760, i64 8, !70, i64 5768, i64 8, !70, i64 5776, i64 8, !70, i64 5784, i64 8, !70, i64 5792, i64 8, !70, i64 5800, i64 8, !70, i64 5808, i64 8, !70, i64 5816, i64 8, !70, i64 5824, i64 4, !71, i64 5832, i64 8, !70, i64 5840, i64 8, !70, i64 5848, i64 8, !70, i64 5856, i64 8, !70, i64 5864, i64 8, !70, i64 5872, i64 8, !70, i64 5880, i64 8, !70, i64 5888, i64 8, !70, i64 5896, i64 8, !70, i64 5904, i64 8, !70, i64 5912, i64 8, !70, i64 5920, i64 8, !70, i64 5928, i64 8, !70, i64 5936, i64 8, !70, i64 5944, i64 8, !70, i64 5952, i64 8, !70, i64 5960, i64 8, !70, i64 5968, i64 8, !70, i64 5976, i64 8, !70, i64 5984, i64 8, !70, i64 5992, i64 8, !70, i64 6000, i64 8, !70, i64 6008, i64 8, !70, i64 6016, i64 8, !70, i64 6024, i64 8, !70, i64 6032, i64 8, !70, i64 6040, i64 8, !70, i64 6048, i64 8, !70, i64 6056, i64 8, !70, i64 6064, i64 4, !71, i64 6068, i64 4, !71, i64 6072, i64 4, !71, i64 6076, i64 4, !71, i64 6080, i64 4, !71, i64 6084, i64 4, !71, i64 6088, i64 4, !71, i64 6092, i64 2, !72, i64 6094, i64 2, !72, i64 6096, i64 2, !72, i64 6098, i64 2, !72, i64 6100, i64 2, !72, i64 6102, i64 2, !72, i64 6104, i64 1, !45, i64 6112, i64 8, !73, i64 6120, i64 8, !73, i64 6128, i64 8, !70, i64 6136, i64 8, !70, i64 6144, i64 64, !45, i64 6208, i64 4, !46, i64 6212, i64 4, !46, i64 6216, i64 8, !70, i64 6224, i64 8, !70, i64 6232, i64 8, !70}
!70 = !{!36, !36, i64 0}
!71 = !{!39, !39, i64 0}
!72 = !{!54, !54, i64 0}
!73 = !{!67, !67, i64 0}
!74 = !{!53, !36, i64 5832}
!75 = !{!53, !36, i64 5808}
!76 = !{!53, !54, i64 1754}
!77 = !{!53, !54, i64 1758}
!78 = !{!79, !36, i64 0}
!79 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !55, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !54, i64 2084, !54, i64 2086, !54, i64 2088, !37, i64 2090, !54, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!80 = !{!81, !54, i64 98}
!81 = !{!"Image", !65, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !54, i64 1240, !54, i64 1242, !54, i64 1244, !54, i64 1246, !54, i64 1248, !54, i64 1250, !39, i64 1252, !54, i64 1256, !54, i64 1258, !54, i64 1260, !54, i64 1262, !54, i64 1264, !54, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !40, i64 1296, !39, i64 1300, !54, i64 1304, !54, i64 1306, !39, i64 1308, !39, i64 1312, !37, i64 1316, !37, i64 1317, !54, i64 1318, !37, i64 1320, !40, i64 1336, !40, i64 1340, !82, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!82 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!83 = !{!81, !54, i64 1246}
!84 = !{!35, !36, i64 304}
!85 = distinct !{!85, !50, !51}
!86 = !{!53, !54, i64 1538}
!87 = !{!53, !39, i64 5624}
!88 = !{!89, !39, i64 1440}
!89 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !54, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !54, i64 88, !54, i64 90, !54, i64 92, !54, i64 94, !54, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !40, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !40, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !40, i64 1256, !40, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !40, i64 1336, !40, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !40, i64 1428, !37, i64 1432, !37, i64 1433, !54, i64 1434, !54, i64 1436, !54, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!90 = !{!89, !39, i64 1448}
!91 = !{!89, !39, i64 1452}
!92 = !{!89, !54, i64 1434}
!93 = !{!89, !37, i64 1433}
!94 = !{!95, !39, i64 0}
!95 = !{!"BakeShade", !96, i64 0, !36, i64 27080, !36, i64 27088, !36, i64 27096, !36, i64 27104, !36, i64 27112, !39, i64 27120, !39, i64 27124, !39, i64 27128, !39, i64 27132, !39, i64 27136, !37, i64 27140, !37, i64 27144, !36, i64 27160, !36, i64 27168, !36, i64 27176, !36, i64 27184, !36, i64 27192, !36, i64 27200, !37, i64 27208, !36, i64 27216, !40, i64 27224, !40, i64 27228, !37, i64 27232, !36, i64 27240, !37, i64 27248, !37, i64 27260, !36, i64 27272, !36, i64 27280}
!96 = !{!"ShadeSample", !39, i64 0, !37, i64 8, !37, i64 136, !37, i64 23688}
!97 = !{!95, !39, i64 27132}
!98 = !{!95, !36, i64 27160}
!99 = !{!95, !36, i64 27096}
!100 = !{!95, !37, i64 27232}
!101 = !{!95, !37, i64 27208}
!102 = !{!95, !36, i64 27272}
!103 = !{!95, !40, i64 27224}
!104 = !{!95, !40, i64 27228}
!105 = distinct !{!105, !50, !51}
!106 = !{!95, !39, i64 27136}
!107 = distinct !{!107, !50, !51}
!108 = !{!53, !39, i64 5720}
!109 = !{!95, !37, i64 27140}
!110 = distinct !{!110, !50, !51}
!111 = distinct !{!111, !50, !51}
!112 = distinct !{!112, !50, !51}
!113 = !{!114, !36, i64 0}
!114 = !{!"BakeImBufuserData", !36, i64 0, !36, i64 8}
!115 = !{!114, !36, i64 8}
!116 = !{!35, !39, i64 292}
!117 = distinct !{!117, !50, !51}
!118 = distinct !{!118, !50, !51}
!119 = !{!120, !36, i64 16}
!120 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !54, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!121 = !{!122, !39, i64 84}
!122 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!123 = !{!122, !36, i64 16}
!124 = !{!125, !54, i64 948}
!125 = !{!"Object", !65, i64 0, !36, i64 120, !36, i64 128, !54, i64 136, !54, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !126, i64 312, !36, i64 360, !55, i64 368, !55, i64 384, !55, i64 400, !55, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !54, i64 948, !54, i64 950, !54, i64 952, !54, i64 954, !54, i64 956, !54, i64 958, !54, i64 960, !54, i64 962, !54, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !54, i64 1036, !54, i64 1038, !54, i64 1040, !37, i64 1042, !37, i64 1043, !54, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !55, i64 1056, !55, i64 1072, !55, i64 1088, !55, i64 1104, !40, i64 1120, !54, i64 1124, !54, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !54, i64 1162, !37, i64 1164, !55, i64 1176, !55, i64 1192, !55, i64 1208, !55, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !54, i64 1266, !40, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !127, i64 1304, !127, i64 1312, !39, i64 1320, !39, i64 1324, !55, i64 1328, !55, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !55, i64 1400, !36, i64 1416}
!126 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !54, i64 16, !54, i64 18, !54, i64 20, !54, i64 22, !54, i64 24, !54, i64 26, !54, i64 28, !54, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!127 = !{!"long", !37, i64 0}
!128 = !{!125, !54, i64 136}
!129 = !{!125, !36, i64 296}
!130 = !{!131, !39, i64 1296}
!131 = !{!"Mesh", !65, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !132, i64 280, !132, i64 480, !132, i64 680, !132, i64 880, !132, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !54, i64 1348, !54, i64 1350, !40, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !54, i64 1366, !36, i64 1368}
!132 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!133 = !{!131, !36, i64 1080}
!134 = !{!131, !36, i64 168}
!135 = !{!95, !36, i64 27168}
!136 = !{!137, !36, i64 96}
!137 = !{!"CustomDataLayer", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96}
!138 = !{!139, !39, i64 0}
!139 = !{!"MPoly", !39, i64 0, !39, i64 4, !54, i64 8, !37, i64 10, !37, i64 11}
!140 = !{!95, !36, i64 27184}
!141 = !{!131, !36, i64 184}
!142 = !{!95, !36, i64 27176}
!143 = !{!131, !54, i64 98}
!144 = !{!122, !39, i64 176}
!145 = !{!146, !36, i64 32}
!146 = !{!"MTFace", !37, i64 0, !36, i64 32, !37, i64 40, !37, i64 41, !54, i64 42, !54, i64 44, !54, i64 46}
!147 = !{!35, !39, i64 28}
!148 = !{!95, !36, i64 27080}
!149 = !{!95, !36, i64 27088}
!150 = distinct !{!150, !50, !51}
!151 = !{!120, !36, i64 0}
!152 = distinct !{!152, !50, !51}
!153 = !{!95, !36, i64 27104}
!154 = !{!95, !36, i64 27216}
!155 = !{!95, !39, i64 27128}
!156 = !{!157, !37, i64 57}
!157 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!158 = !{!157, !36, i64 0}
!159 = !{!139, !39, i64 4}
!160 = distinct !{!160, !50, !51}
!161 = !{!162, !39, i64 0}
!162 = !{!"MLoop", !39, i64 0, !39, i64 4}
!163 = !{!157, !36, i64 8}
!164 = !{!157, !36, i64 16}
!165 = !{!157, !36, i64 24}
!166 = !{!95, !36, i64 27112}
!167 = !{!53, !40, i64 196}
!168 = !{!95, !39, i64 27120}
!169 = !{!95, !39, i64 27124}
!170 = !{!95, !36, i64 27192}
!171 = !{!35, !36, i64 2400}
!172 = !{!95, !36, i64 27280}
!173 = !{!95, !36, i64 27200}
!174 = !{!95, !36, i64 27240}
!175 = distinct !{!175, !50, !51}
!176 = !{!53, !36, i64 6048}
!177 = !{!53, !36, i64 6056}
!178 = distinct !{!178, !50, !51}
!179 = distinct !{!179, !50, !51}
!180 = distinct !{!180, !50, !51}
!181 = distinct !{!181, !50, !51}
!182 = distinct !{!182, !50, !51}
!183 = distinct !{!183, !50, !51}
!184 = distinct !{!184, !50, !51}
!185 = distinct !{!185, !50, !51}
!186 = distinct !{!186, !50, !51}
!187 = !{!120, !54, i64 216}
!188 = !{!189, !39, i64 88}
!189 = !{!"Isect", !37, i64 0, !37, i64 12, !40, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !40, i64 112, !40, i64 116, !39, i64 120, !190, i64 128, !190, i64 144, !36, i64 160, !36, i64 168}
!190 = !{!"", !36, i64 0, !36, i64 8}
!191 = !{!189, !36, i64 144}
!192 = !{!189, !36, i64 152}
!193 = !{!189, !36, i64 104}
!194 = !{!189, !39, i64 100}
!195 = !{!189, !39, i64 96}
!196 = !{!53, !36, i64 5656}
!197 = !{!53, !40, i64 1764}
!198 = !{!189, !40, i64 24}
!199 = !{i64 0, i64 4, !46, i64 4, i64 4, !46, i64 8, i64 4, !71, i64 16, i64 8, !70, i64 24, i64 8, !70, i64 32, i64 8, !70, i64 40, i64 8, !70, i64 48, i64 8, !70, i64 56, i64 8, !70}
!200 = !{i64 0, i64 4, !46, i64 4, i64 4, !71, i64 12, i64 8, !70, i64 20, i64 8, !70, i64 28, i64 8, !70, i64 36, i64 8, !70, i64 44, i64 8, !70, i64 52, i64 8, !70}
!201 = !{i64 0, i64 4, !71, i64 8, i64 8, !70, i64 16, i64 8, !70, i64 24, i64 8, !70, i64 32, i64 8, !70, i64 40, i64 8, !70, i64 48, i64 8, !70}
!202 = !{i64 0, i64 8, !70, i64 8, i64 8, !70, i64 16, i64 8, !70, i64 24, i64 8, !70, i64 32, i64 8, !70, i64 40, i64 8, !70}
!203 = !{i64 0, i64 8, !70, i64 8, i64 8, !70, i64 16, i64 8, !70, i64 24, i64 8, !70, i64 32, i64 8, !70}
!204 = distinct !{!204, !50, !51}
!205 = !{!89, !39, i64 1404}
!206 = !{!89, !39, i64 1388}
!207 = !{!89, !40, i64 168}
!208 = !{!89, !40, i64 172}
!209 = !{!89, !39, i64 1380}
!210 = !{!89, !39, i64 1384}
!211 = !{!89, !54, i64 56}
!212 = !{!213, !37, i64 0}
!213 = !{!"MLoopCol", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!214 = !{!213, !37, i64 1}
!215 = !{!213, !37, i64 2}
!216 = !{!89, !36, i64 8}
!217 = !{!89, !40, i64 236}
!218 = !{!89, !40, i64 232}
!219 = !{!89, !40, i64 228}
!220 = !{!89, !36, i64 0}
!221 = !{!222, !36, i64 768}
!222 = !{!"Material", !65, i64 0, !36, i64 120, !54, i64 128, !54, i64 130, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !223, i64 224, !224, i64 312, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !40, i64 348, !40, i64 352, !54, i64 356, !54, i64 358, !54, i64 360, !37, i64 362, !37, i64 363, !40, i64 364, !40, i64 368, !54, i64 372, !54, i64 374, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !54, i64 392, !54, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !54, i64 412, !54, i64 414, !54, i64 416, !54, i64 418, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !40, i64 456, !37, i64 460, !40, i64 524, !40, i64 528, !40, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !54, i64 544, !54, i64 546, !54, i64 548, !37, i64 550, !37, i64 551, !54, i64 552, !54, i64 554, !40, i64 556, !40, i64 560, !37, i64 564, !40, i64 580, !40, i64 584, !54, i64 588, !54, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !54, i64 612, !54, i64 614, !40, i64 616, !40, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !40, i64 800, !40, i64 804, !40, i64 808, !40, i64 812, !40, i64 816, !54, i64 820, !54, i64 822, !37, i64 824, !37, i64 836, !40, i64 848, !40, i64 852, !40, i64 856, !40, i64 860, !40, i64 864, !40, i64 868, !40, i64 872, !54, i64 876, !54, i64 878, !39, i64 880, !54, i64 884, !54, i64 886, !37, i64 888, !54, i64 904, !54, i64 906, !54, i64 908, !54, i64 910, !54, i64 912, !37, i64 914, !36, i64 920, !55, i64 928}
!223 = !{!"VolumeSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !40, i64 52, !40, i64 56, !40, i64 60, !54, i64 64, !54, i64 66, !54, i64 68, !54, i64 70, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84}
!224 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!225 = !{!222, !37, i64 543}
!226 = !{!157, !36, i64 48}
!227 = !{!53, !54, i64 1760}
!228 = !{!89, !40, i64 296}
!229 = !{!230, !40, i64 32}
!230 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!231 = !{!89, !40, i64 304}
!232 = !{!89, !40, i64 292}
!233 = !{!89, !40, i64 280}
