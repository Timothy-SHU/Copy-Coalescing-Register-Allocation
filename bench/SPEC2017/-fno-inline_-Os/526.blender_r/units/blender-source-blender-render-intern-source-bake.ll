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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_bake_ibuf_filter(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %5 = load i8, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i8 %5, 32
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @BKE_imbuf_alpha_test(ptr noundef nonnull %0) #18
  %9 = icmp eq i8 %8, 0
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %14, label %15

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  tail call void @IMB_filter_extend(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #18
  br label %17

14:                                               ; preds = %7
  br i1 %9, label %21, label %16

15:                                               ; preds = %7
  tail call void @IMB_filter_extend(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #18
  br i1 %9, label %17, label %16

16:                                               ; preds = %15, %14
  store i8 32, ptr %4, align 8, !tbaa !34
  br label %21

17:                                               ; preds = %13, %15
  %18 = load i8, ptr %4, align 8, !tbaa !34
  %19 = icmp eq i8 %18, 32
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @IMB_rectfill_alpha(ptr noundef nonnull %0, float noundef 1.000000e+00) #18
  br label %21

21:                                               ; preds = %11, %14, %17, %20, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BKE_imbuf_alpha_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_filter_extend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rectfill_alpha(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RE_bake_ibuf_normalize_displacement(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  %6 = tail call float @llvm.fabs.f32(float %3)
  %7 = tail call float @llvm.fabs.f32(float %4)
  %8 = tail call fastcc float @max_ff(float noundef %6, float noundef %7) #19
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %9, align 8, !tbaa !43
  %12 = load i32, ptr %10, align 4, !tbaa !44
  %13 = mul nsw i32 %12, %11
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %5
  %16 = fcmp ogt float %8, 0x3EE4F8B580000000
  %17 = fmul float %8, 2.000000e+00
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  br label %20

20:                                               ; preds = %15, %62
  %21 = phi i32 [ %12, %15 ], [ %63, %62 ]
  %22 = phi i32 [ %11, %15 ], [ %64, %62 ]
  %23 = phi i64 [ 0, %15 ], [ %67, %62 ]
  %24 = phi ptr [ %1, %15 ], [ %65, %62 ]
  %25 = phi ptr [ %2, %15 ], [ %66, %62 ]
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = icmp eq i8 %26, 2
  br i1 %27, label %28, label %62

28:                                               ; preds = %20
  br i1 %16, label %29, label %33

29:                                               ; preds = %28
  %30 = load float, ptr %24, align 4, !tbaa !46
  %31 = fadd float %8, %30
  %32 = fdiv float %31, %17
  br label %33

33:                                               ; preds = %28, %29
  %34 = phi float [ %32, %29 ], [ 5.000000e-01, %28 ]
  %35 = load ptr, ptr %18, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = shl i64 %23, 2
  %39 = and i64 %38, 4294967292
  %40 = getelementptr inbounds float, ptr %35, i64 %39
  %41 = getelementptr inbounds float, ptr %40, i64 2
  store float %34, ptr %41, align 4, !tbaa !46
  %42 = getelementptr inbounds float, ptr %40, i64 1
  store float %34, ptr %42, align 4, !tbaa !46
  store float %34, ptr %40, align 4, !tbaa !46
  %43 = getelementptr inbounds float, ptr %40, i64 3
  store float 1.000000e+00, ptr %43, align 4, !tbaa !46
  br label %44

44:                                               ; preds = %37, %33
  %45 = load ptr, ptr %19, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds i32, ptr %45, i64 %23
  %49 = fcmp ugt float %34, 0.000000e+00
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = fcmp ogt float %34, 0x3FEFEFEFE0000000
  %52 = tail call float @llvm.fmuladd.f32(float %34, float 2.550000e+02, float 5.000000e-01)
  %53 = select i1 %51, float 2.550000e+02, float %52
  br label %54

54:                                               ; preds = %47, %50
  %55 = phi float [ %53, %50 ], [ 0.000000e+00, %47 ]
  %56 = fptoui float %55 to i8
  %57 = getelementptr inbounds i8, ptr %48, i64 2
  store i8 %56, ptr %57, align 1, !tbaa !45
  %58 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %56, ptr %58, align 1, !tbaa !45
  store i8 %56, ptr %48, align 1, !tbaa !45
  %59 = getelementptr inbounds i8, ptr %48, i64 3
  store i8 -1, ptr %59, align 1, !tbaa !45
  %60 = load i32, ptr %9, align 8, !tbaa !43
  %61 = load i32, ptr %10, align 4, !tbaa !44
  br label %62

62:                                               ; preds = %44, %54, %20
  %63 = phi i32 [ %21, %44 ], [ %61, %54 ], [ %21, %20 ]
  %64 = phi i32 [ %22, %44 ], [ %60, %54 ], [ %22, %20 ]
  %65 = getelementptr inbounds float, ptr %24, i64 1
  %66 = getelementptr inbounds i8, ptr %25, i64 1
  %67 = add nuw nsw i64 %23, 1
  %68 = mul nsw i32 %63, %64
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %20, label %71, !llvm.loop !49

71:                                               ; preds = %62, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !51 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RE_bake_shade_all_selected(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %8) #18
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %10) #18
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  store i8 %11, ptr %12, align 8, !tbaa !68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !69
  store ptr null, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 72), align 8, !tbaa !74
  %13 = tail call fastcc i32 @get_next_bake_face(ptr noundef null) #19, !range !75
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 73
  %15 = load i16, ptr %14, align 2, !tbaa !76
  %16 = icmp ne i16 %15, 0
  %17 = icmp eq i32 %1, 13
  switch i32 %1, label %18 [
    i32 13, label %20
    i32 5, label %20
  ]

18:                                               ; preds = %5
  %19 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  br label %29

20:                                               ; preds = %5, %5
  %21 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %22 = and i16 %21, 8
  %23 = icmp ne i16 %22, 0
  %24 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 78), align 4
  %25 = fcmp oeq float %24, 0.000000e+00
  %26 = select i1 %23, i1 %25, i1 false
  %27 = or i1 %17, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %18, %28, %20
  %30 = phi i16 [ %21, %28 ], [ %21, %20 ], [ %19, %18 ]
  %31 = phi i1 [ false, %28 ], [ true, %20 ], [ true, %18 ]
  %32 = phi i8 [ 1, %28 ], [ 0, %20 ], [ 0, %18 ]
  %33 = phi i1 [ true, %28 ], [ %16, %20 ], [ %16, %18 ]
  %34 = zext i1 %33 to i8
  %35 = and i16 %30, 64
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %29
  %38 = load ptr, ptr @G, align 8, !tbaa !78
  %39 = getelementptr inbounds %struct.Main, ptr %38, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %37, %54
  %43 = phi ptr [ %55, %54 ], [ %40, %37 ]
  %44 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %43, ptr noundef null, ptr noundef null) #18
  %45 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 5
  %46 = load i16, ptr %45, align 2, !tbaa !80
  %47 = or i16 %46, 1024
  store i16 %47, ptr %45, align 2, !tbaa !80
  %48 = getelementptr inbounds %struct.Image, ptr %43, i64 0, i32 10
  %49 = load i16, ptr %48, align 2, !tbaa !83
  %50 = and i16 %49, -513
  store i16 %50, ptr %48, align 2, !tbaa !83
  %51 = icmp eq ptr %44, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.ImBuf, ptr %44, i64 0, i32 25
  store ptr null, ptr %53, align 8, !tbaa !84
  br label %54

54:                                               ; preds = %52, %42
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %43, ptr noundef %44, ptr noundef null) #18
  %55 = load ptr, ptr %43, align 8, !tbaa !70
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %42, !llvm.loop !85

57:                                               ; preds = %54
  %58 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %59 = and i16 %58, 64
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %29, %57
  %62 = load ptr, ptr @G, align 8, !tbaa !78
  %63 = getelementptr inbounds %struct.Main, ptr %62, i64 0, i32 14
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %63, i8 noundef zeroext 0) #18
  br label %64

64:                                               ; preds = %37, %61, %57
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %66 = load i16, ptr %65, align 2, !tbaa !86
  %67 = sext i16 %66 to i32
  call void @BLI_init_threads(ptr noundef nonnull %6, ptr noundef nonnull @do_bake_thread, i32 noundef %67) #18
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %69 = load i16, ptr %65, align 2, !tbaa !86
  %70 = sext i16 %69 to i64
  %71 = mul nsw i64 %70, 27288
  %72 = call ptr %68(i64 noundef %71, ptr noundef nonnull @.str) #18
  %73 = load i16, ptr %65, align 2, !tbaa !86
  %74 = icmp sgt i16 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %77 = icmp eq i32 %1, 6
  %78 = select i1 %77, i32 32, i32 1
  br label %85

79:                                               ; preds = %103, %64
  %80 = phi i16 [ %73, %64 ], [ %111, %103 ]
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %153, label %82

82:                                               ; preds = %79
  %83 = icmp eq ptr %4, null
  %84 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  br label %114

85:                                               ; preds = %75, %103
  %86 = phi i64 [ 0, %75 ], [ %110, %103 ]
  %87 = load i32, ptr %76, align 8, !tbaa !87
  %88 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %86
  %89 = getelementptr inbounds %struct.ShadeSample, ptr %88, i64 0, i32 2, i64 0, i32 117
  store i32 %87, ptr %89, align 8, !tbaa !88
  %90 = getelementptr inbounds %struct.ShadeSample, ptr %88, i64 0, i32 2, i64 0, i32 119
  store i32 %78, ptr %90, align 8
  %91 = getelementptr inbounds %struct.ShadeSample, ptr %88, i64 0, i32 2, i64 0, i32 120
  store i32 -17, ptr %91, align 4, !tbaa !90
  %92 = trunc i64 %86 to i16
  %93 = getelementptr inbounds %struct.ShadeSample, ptr %88, i64 0, i32 2, i64 0, i32 114
  store i16 %92, ptr %93, align 2, !tbaa !91
  %94 = getelementptr inbounds %struct.ShadeSample, ptr %88, i64 0, i32 2, i64 0, i32 113
  store i8 %9, ptr %94, align 1, !tbaa !92
  store i32 1, ptr %88, align 8, !tbaa !93
  %95 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %86, i32 9
  store i32 %1, ptr %95, align 4, !tbaa !96
  %96 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %86, i32 13
  store ptr %2, ptr %96, align 8, !tbaa !97
  %97 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %98 = and i16 %97, 64
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %85
  %101 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %102 = call ptr %101(i64 noundef 224, ptr noundef nonnull @.str.1) #18
  br label %103

103:                                              ; preds = %85, %100
  %104 = phi ptr [ %102, %100 ], [ null, %85 ]
  %105 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %86, i32 3
  store ptr %104, ptr %105, align 8
  %106 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %86, i32 23
  store i8 %34, ptr %106, align 8, !tbaa !98
  %107 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %86, i32 19
  store i8 %32, ptr %107, align 8, !tbaa !99
  %108 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %86, i32 27
  store ptr %3, ptr %108, align 8, !tbaa !100
  %109 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %86, i32 21
  store <2 x float> <float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %109, align 8, !tbaa !46
  call void @BLI_insert_thread(ptr noundef nonnull %6, ptr noundef nonnull %88) #18
  %110 = add nuw nsw i64 %86, 1
  %111 = load i16, ptr %65, align 2, !tbaa !86
  %112 = sext i16 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %85, label %79, !llvm.loop !101

114:                                              ; preds = %82, %148
  call void @PIL_sleep_ms(i32 noundef 50) #18
  %115 = load i16, ptr %65, align 2, !tbaa !86
  %116 = sext i16 %115 to i32
  %117 = icmp sgt i16 %115, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = zext nneg i32 %116 to i64
  br label %120

120:                                              ; preds = %118, %120
  %121 = phi i64 [ 0, %118 ], [ %126, %120 ]
  %122 = phi i32 [ 0, %118 ], [ %125, %120 ]
  %123 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %121, i32 10
  %124 = load i32, ptr %123, align 8, !tbaa !102
  %125 = add nsw i32 %124, %122
  %126 = add nuw nsw i64 %121, 1
  %127 = icmp eq i64 %126, %119
  br i1 %127, label %128, label %120, !llvm.loop !103

128:                                              ; preds = %120, %114
  %129 = phi i32 [ 0, %114 ], [ %125, %120 ]
  br i1 %83, label %135, label %130

130:                                              ; preds = %128
  %131 = sitofp i32 %129 to float
  %132 = load i32, ptr %84, align 8, !tbaa !104
  %133 = sitofp i32 %132 to float
  %134 = fdiv float %131, %133
  store float %134, ptr %4, align 4, !tbaa !46
  br label %135

135:                                              ; preds = %130, %128
  br i1 %117, label %136, label %148

136:                                              ; preds = %135
  %137 = zext nneg i32 %116 to i64
  br label %138

138:                                              ; preds = %136, %143
  %139 = phi i64 [ 0, %136 ], [ %144, %143 ]
  %140 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %139, i32 11
  %141 = load i8, ptr %140, align 4, !tbaa !105
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = add nuw nsw i64 %139, 1
  %145 = icmp eq i64 %144, %137
  br i1 %145, label %151, label %138, !llvm.loop !106

146:                                              ; preds = %138
  %147 = trunc i64 %139 to i32
  br label %148

148:                                              ; preds = %146, %135
  %149 = phi i32 [ 0, %135 ], [ %147, %146 ]
  %150 = icmp eq i32 %149, %116
  br i1 %150, label %151, label %114, !llvm.loop !107

151:                                              ; preds = %148, %143
  %152 = icmp eq i32 %129, 0
  br label %153

153:                                              ; preds = %151, %79
  %154 = phi i16 [ 0, %79 ], [ %115, %151 ]
  %155 = phi i1 [ true, %79 ], [ %152, %151 ]
  %156 = phi i32 [ 0, %79 ], [ %116, %151 ]
  %157 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %158 = and i16 %157, 64
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %248

160:                                              ; preds = %153
  %161 = icmp slt i32 %156, 1
  %162 = or i1 %161, %31
  br i1 %162, label %177, label %163

163:                                              ; preds = %160
  %164 = zext nneg i32 %156 to i64
  br label %165

165:                                              ; preds = %163, %165
  %166 = phi i64 [ 0, %163 ], [ %175, %165 ]
  %167 = phi float [ 0xC7EFFFFFE0000000, %163 ], [ %174, %165 ]
  %168 = phi float [ 0x47EFFFFFE0000000, %163 ], [ %171, %165 ]
  %169 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %166, i32 21
  %170 = load float, ptr %169, align 8, !tbaa !108
  %171 = call fastcc float @min_ff(float noundef %168, float noundef %170) #19
  %172 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %166, i32 22
  %173 = load float, ptr %172, align 4, !tbaa !109
  %174 = call fastcc float @max_ff(float noundef %167, float noundef %173) #19
  %175 = add nuw nsw i64 %166, 1
  %176 = icmp eq i64 %175, %164
  br i1 %176, label %177, label %165, !llvm.loop !110

177:                                              ; preds = %165, %160
  %178 = phi float [ 0x47EFFFFFE0000000, %160 ], [ %171, %165 ]
  %179 = phi float [ 0xC7EFFFFFE0000000, %160 ], [ %174, %165 ]
  %180 = load ptr, ptr @G, align 8, !tbaa !78
  %181 = getelementptr inbounds %struct.Main, ptr %180, i64 0, i32 19
  %182 = load ptr, ptr %181, align 8, !tbaa !70
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %190

184:                                              ; preds = %234
  %185 = load i16, ptr %65, align 2, !tbaa !86
  br label %186

186:                                              ; preds = %184, %177
  %187 = phi i16 [ %154, %177 ], [ %185, %184 ]
  %188 = phi i32 [ 0, %177 ], [ %235, %184 ]
  %189 = icmp sgt i16 %187, 0
  br i1 %189, label %238, label %248

190:                                              ; preds = %177, %234
  %191 = phi ptr [ %236, %234 ], [ %182, %177 ]
  %192 = phi i32 [ %235, %234 ], [ 0, %177 ]
  %193 = getelementptr inbounds %struct.ID, ptr %191, i64 0, i32 5
  %194 = load i16, ptr %193, align 2, !tbaa !80
  %195 = and i16 %194, 1024
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %197, label %234

197:                                              ; preds = %190
  %198 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %191, ptr noundef null, ptr noundef null) #18
  %199 = getelementptr inbounds %struct.Image, ptr %191, i64 0, i32 10
  %200 = load i16, ptr %199, align 2, !tbaa !83
  %201 = and i16 %200, 512
  %202 = icmp eq i16 %201, 0
  %203 = select i1 %202, i32 %192, i32 2
  %204 = icmp eq ptr %198, null
  br i1 %204, label %234, label %205

205:                                              ; preds = %197
  %206 = getelementptr inbounds %struct.ImBuf, ptr %198, i64 0, i32 25
  %207 = load ptr, ptr %206, align 8, !tbaa !84
  %208 = icmp eq ptr %207, null
  br i1 %208, label %230, label %209

209:                                              ; preds = %205
  br i1 %31, label %225, label %210

210:                                              ; preds = %209
  br i1 %17, label %211, label %221

211:                                              ; preds = %210
  %212 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %213 = and i16 %212, 128
  %214 = icmp eq i16 %213, 0
  %215 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 82), align 8
  %216 = select i1 %214, float -1.000000e+00, float %215
  %217 = load ptr, ptr %207, align 8, !tbaa !111
  %218 = getelementptr inbounds %struct.BakeImBufuserData, ptr %207, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !113
  %220 = call float @RE_bake_make_derivative(ptr noundef nonnull %198, ptr noundef %217, ptr noundef %219, float noundef %178, float noundef %179, float noundef %216) #19
  br label %225

221:                                              ; preds = %210
  %222 = load ptr, ptr %207, align 8, !tbaa !111
  %223 = getelementptr inbounds %struct.BakeImBufuserData, ptr %207, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !113
  call void @RE_bake_ibuf_normalize_displacement(ptr noundef nonnull %198, ptr noundef %222, ptr noundef %224, float noundef %178, float noundef %179) #19
  br label %225

225:                                              ; preds = %211, %221, %209
  %226 = getelementptr inbounds %struct.BakeImBufuserData, ptr %207, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !113
  %228 = load i16, ptr %14, align 2, !tbaa !76
  %229 = sext i16 %228 to i32
  call void @RE_bake_ibuf_filter(ptr noundef nonnull %198, ptr noundef %227, i32 noundef %229) #19
  br label %230

230:                                              ; preds = %225, %205
  %231 = getelementptr inbounds %struct.ImBuf, ptr %198, i64 0, i32 23
  %232 = load i32, ptr %231, align 4, !tbaa !114
  %233 = or i32 %232, 2
  store i32 %233, ptr %231, align 4, !tbaa !114
  call void @BKE_image_release_ibuf(ptr noundef nonnull %191, ptr noundef nonnull %198, ptr noundef null) #18
  br label %234

234:                                              ; preds = %230, %197, %190
  %235 = phi i32 [ %192, %190 ], [ %203, %197 ], [ %203, %230 ]
  %236 = load ptr, ptr %191, align 8, !tbaa !70
  %237 = icmp eq ptr %236, null
  br i1 %237, label %184, label %190, !llvm.loop !115

238:                                              ; preds = %186, %238
  %239 = phi i64 [ %244, %238 ], [ 0, %186 ]
  %240 = getelementptr inbounds %struct.BakeShade, ptr %72, i64 %239, i32 3
  %241 = load ptr, ptr %240, align 8, !tbaa !116
  call void @zbuf_free_span(ptr noundef %241) #18
  %242 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  %243 = load ptr, ptr %240, align 8, !tbaa !116
  call void %242(ptr noundef %243) #18
  %244 = add nuw nsw i64 %239, 1
  %245 = load i16, ptr %65, align 2, !tbaa !86
  %246 = sext i16 %245 to i64
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %238, label %248, !llvm.loop !117

248:                                              ; preds = %238, %186, %153
  %249 = phi i32 [ 0, %153 ], [ %188, %186 ], [ %188, %238 ]
  %250 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %250(ptr noundef %72) #18
  call void @BLI_end_threads(ptr noundef nonnull %6) #18
  %251 = select i1 %155, i32 1, i32 %249
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret i32 %251
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @get_next_bake_face(ptr noundef %0) unnamed_addr #0 !PGOFuncName !118 {
  %2 = alloca [4 x float], align 16
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  store i32 0, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %10 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 70), align 8, !tbaa !119
  store ptr %10, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  br label %180

11:                                               ; preds = %1
  tail call void @BLI_lock_thread(i32 noundef 3) #18
  %12 = load ptr, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %179, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 13
  %16 = load i32, ptr @get_next_bake_face.v, align 4, !tbaa !71
  br label %17

17:                                               ; preds = %14, %175
  %18 = phi i32 [ %16, %14 ], [ 0, %175 ]
  %19 = phi ptr [ %12, %14 ], [ %177, %175 ]
  %20 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = getelementptr inbounds %struct.ObjectRen, ptr %21, i64 0, i32 11
  %23 = load i32, ptr %22, align 4, !tbaa !122
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %175

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ObjectRen, ptr %21, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ObjectRen, ptr %21, i64 0, i32 27
  br label %28

28:                                               ; preds = %25, %168
  %29 = phi i32 [ %18, %25 ], [ %170, %168 ]
  %30 = tail call ptr @RE_findOrAddVlak(ptr noundef nonnull %21, i32 noundef %29) #18
  %31 = load ptr, ptr %15, align 8, !tbaa !97
  %32 = icmp eq ptr %31, null
  %33 = load ptr, ptr %26, align 8, !tbaa !124
  br i1 %32, label %36, label %34

34:                                               ; preds = %28
  %35 = icmp eq ptr %31, %33
  br i1 %35, label %41, label %168

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 53
  %38 = load i16, ptr %37, align 4, !tbaa !125
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %168, label %41

41:                                               ; preds = %36, %34
  %42 = phi ptr [ %33, %36 ], [ %31, %34 ]
  %43 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %44 = and i16 %43, 64
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %86, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 3
  %48 = load i16, ptr %47, align 8, !tbaa !129
  %49 = icmp eq i16 %48, 1
  br i1 %49, label %50, label %168

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !130
  %53 = tail call ptr @RE_vlakren_get_origindex(ptr noundef nonnull %21, ptr noundef %30, i32 noundef 0) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %168, label %55

55:                                               ; preds = %50
  %56 = load i32, ptr %53, align 4, !tbaa !71
  %57 = getelementptr inbounds %struct.Mesh, ptr %52, i64 0, i32 30
  %58 = load i32, ptr %57, align 8, !tbaa !131
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %168

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.Mesh, ptr %52, i64 0, i32 25
  %62 = tail call i32 @CustomData_get_render_layer_index(ptr noundef nonnull %61, i32 noundef 17) #18
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %168, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %61, align 8, !tbaa !134
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds %struct.Mesh, ptr %52, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !135
  %69 = load i32, ptr %53, align 4, !tbaa !71
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.MPoly, ptr %68, i64 %70
  %72 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 14
  store ptr %71, ptr %72, align 8, !tbaa !136
  %73 = getelementptr inbounds %struct.CustomDataLayer, ptr %65, i64 %66, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !137
  %75 = load i32, ptr %71, align 4, !tbaa !139
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.MLoopCol, ptr %74, i64 %76
  %78 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  store ptr %77, ptr %78, align 8, !tbaa !141
  %79 = getelementptr inbounds %struct.Mesh, ptr %52, i64 0, i32 9
  %80 = load ptr, ptr %79, align 8, !tbaa !142
  %81 = getelementptr inbounds %struct.MLoop, ptr %80, i64 %76
  %82 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 15
  store ptr %81, ptr %82, align 8, !tbaa !143
  %83 = getelementptr inbounds %struct.ID, ptr %52, i64 0, i32 5
  %84 = load i16, ptr %83, align 2, !tbaa !144
  %85 = or i16 %84, 1024
  store i16 %85, ptr %83, align 2, !tbaa !144
  br label %159

86:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_next_bake_face.vec_solid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_next_bake_face.nor_alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_next_bake_face.nor_solid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_next_bake_face.disp_alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_next_bake_face.disp_solid, i64 16, i1 false)
  %87 = load i32, ptr %27, align 8, !tbaa !145
  %88 = tail call ptr @RE_vlakren_get_tface(ptr noundef nonnull %21, ptr noundef %30, i32 noundef %87, ptr noundef null, i32 noundef 0) #18
  %89 = icmp eq ptr %88, null
  br i1 %89, label %154, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.MTFace, ptr %88, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !146
  %93 = icmp eq ptr %92, null
  br i1 %93, label %154, label %94

94:                                               ; preds = %90
  %95 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %92, ptr noundef null, ptr noundef null) #18
  %96 = icmp eq ptr %95, null
  br i1 %96, label %154, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.ImBuf, ptr %95, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !48
  %100 = icmp eq ptr %99, null
  %101 = getelementptr inbounds %struct.ImBuf, ptr %95, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !47
  %103 = icmp eq ptr %102, null
  br i1 %100, label %104, label %105

104:                                              ; preds = %97
  br i1 %103, label %153, label %106

105:                                              ; preds = %97
  br i1 %103, label %109, label %106

106:                                              ; preds = %104, %105
  %107 = getelementptr inbounds %struct.ImBuf, ptr %95, i64 0, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !148
  switch i32 %108, label %153 [
    i32 0, label %109
    i32 4, label %109
  ]

109:                                              ; preds = %106, %106, %105
  %110 = phi i1 [ false, %106 ], [ false, %106 ], [ true, %105 ]
  %111 = getelementptr inbounds %struct.Image, ptr %92, i64 0, i32 10
  %112 = load i16, ptr %111, align 2, !tbaa !83
  %113 = and i16 %112, 512
  %114 = icmp eq i16 %113, 0
  %115 = getelementptr inbounds %struct.ID, ptr %92, i64 0, i32 5
  %116 = load i16, ptr %115, align 2, !tbaa !80
  br i1 %114, label %119, label %117

117:                                              ; preds = %109
  %118 = and i16 %116, -1025
  store i16 %118, ptr %115, align 2, !tbaa !80
  br label %153

119:                                              ; preds = %109
  %120 = and i16 %116, 1024
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %155, label %122

122:                                              ; preds = %119
  %123 = and i16 %116, -1025
  store i16 %123, ptr %115, align 2, !tbaa !80
  br i1 %110, label %125, label %124

124:                                              ; preds = %122
  tail call void @imb_freerectImBuf(ptr noundef nonnull %95) #18
  br label %125

125:                                              ; preds = %124, %122
  %126 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %127 = and i16 %126, 1
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %152, label %129

129:                                              ; preds = %125
  %130 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 74), align 4
  %131 = icmp eq i16 %130, 3
  %132 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 76), align 8
  %133 = icmp eq i16 %132, 3
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.ImBuf, ptr %95, i64 0, i32 4
  %137 = load i8, ptr %136, align 8, !tbaa !34
  %138 = icmp eq i8 %137, 32
  %139 = select i1 %138, ptr %4, ptr %5
  br label %150

140:                                              ; preds = %129
  %141 = and i16 %130, -9
  %142 = icmp eq i16 %141, 5
  %143 = getelementptr inbounds %struct.ImBuf, ptr %95, i64 0, i32 4
  %144 = load i8, ptr %143, align 8, !tbaa !34
  %145 = icmp eq i8 %144, 32
  br i1 %142, label %146, label %148

146:                                              ; preds = %140
  %147 = select i1 %145, ptr %6, ptr %7
  br label %150

148:                                              ; preds = %140
  %149 = select i1 %145, ptr %2, ptr %3
  br label %150

150:                                              ; preds = %146, %148, %135
  %151 = phi ptr [ %139, %135 ], [ %149, %148 ], [ %147, %146 ]
  call void @IMB_rectfill(ptr noundef nonnull %95, ptr noundef nonnull %151) #18
  br label %152

152:                                              ; preds = %150, %125
  store ptr %92, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 72), align 8, !tbaa !74
  br label %155

153:                                              ; preds = %106, %104, %117
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %92, ptr noundef nonnull %95, ptr noundef null) #18
  br label %154

154:                                              ; preds = %153, %90, %86, %94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  br label %168

155:                                              ; preds = %119, %152
  %156 = getelementptr inbounds %struct.ImBuf, ptr %95, i64 0, i32 23
  %157 = load i32, ptr %156, align 4, !tbaa !114
  %158 = or i32 %157, 16
  store i32 %158, ptr %156, align 4, !tbaa !114
  call void @BKE_image_release_ibuf(ptr noundef nonnull %92, ptr noundef nonnull %95, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  br label %159

159:                                              ; preds = %155, %64
  %160 = load ptr, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  %161 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  store ptr %160, ptr %161, align 8, !tbaa !149
  %162 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 2
  store ptr %30, ptr %162, align 8, !tbaa !150
  %163 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 10
  %164 = load i32, ptr %163, align 8, !tbaa !102
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %163, align 8, !tbaa !102
  %166 = load i32, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr @get_next_bake_face.v, align 4, !tbaa !71
  call void @BLI_unlock_thread(i32 noundef 3) #18
  br label %180

168:                                              ; preds = %60, %55, %50, %46, %154, %34, %36
  %169 = load i32, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %171 = load i32, ptr %22, align 4, !tbaa !122
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %28, label %173, !llvm.loop !151

173:                                              ; preds = %168
  %174 = load ptr, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  br label %175

175:                                              ; preds = %173, %17
  %176 = phi ptr [ %174, %173 ], [ %19, %17 ]
  %177 = load ptr, ptr %176, align 8, !tbaa !152
  store ptr %177, ptr @get_next_bake_face.obi, align 8, !tbaa !70
  store i32 0, ptr @get_next_bake_face.v, align 4, !tbaa !71
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %17, !llvm.loop !153

179:                                              ; preds = %175, %11
  tail call void @BLI_unlock_thread(i32 noundef 3) #18
  br label %180

180:                                              ; preds = %179, %159, %9
  %181 = phi i32 [ 0, %9 ], [ 1, %159 ], [ 0, %179 ]
  ret i32 %181
}

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_main_id_tag_listbase(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @do_bake_thread(ptr noundef %0) #0 !PGOFuncName !154 {
  %2 = tail call fastcc i32 @get_next_bake_face(ptr noundef %0) #19, !range !75
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 27
  br label %6

6:                                                ; preds = %4, %21
  %7 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %8 = and i16 %7, 64
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call fastcc void @shade_verts(ptr noundef %0) #19
  br label %12

11:                                               ; preds = %6
  tail call fastcc void @shade_tface(ptr noundef %0) #19
  br label %12

12:                                               ; preds = %11, %10
  %13 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !155
  %14 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !156
  %15 = tail call i32 %13(ptr noundef %14) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !tbaa !100
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i16 1, ptr %18, align 2, !tbaa !72
  br label %21

21:                                               ; preds = %20, %17
  %22 = tail call fastcc i32 @get_next_bake_face(ptr noundef nonnull %0) #19, !range !75
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %6, !llvm.loop !157

24:                                               ; preds = %21, %12, %1
  %25 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 11
  store i8 1, ptr %25, align 4, !tbaa !105
  %26 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !158
  %28 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !159
  tail call void @BKE_image_release_ibuf(ptr noundef %27, ptr noundef %29, ptr noundef null) #18
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !160 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local float @RE_bake_make_derivative(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #7 {
  %7 = fsub float %4, %3
  %8 = fcmp ogt float %7, 0.000000e+00
  %9 = fmul float %7, 8.000000e+00
  %10 = select i1 %8, float %9, float 1.000000e+00
  %11 = fcmp ole float %5, 0.000000e+00
  tail call fastcc void @add_single_heights_margin(ptr noundef %0, ptr noundef %2, ptr noundef %1) #19
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !44
  br i1 %11, label %14, label %109

14:                                               ; preds = %6
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %258

16:                                               ; preds = %14
  %17 = add nsw i32 %13, -1
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !43
  %20 = icmp sgt i32 %19, 0
  %21 = add nsw i32 %19, -1
  %22 = zext i32 %21 to i64
  %23 = zext nneg i32 %17 to i64
  %24 = sext i32 %19 to i64
  %25 = zext nneg i32 %13 to i64
  %26 = zext nneg i32 %19 to i64
  br label %30

27:                                               ; preds = %106, %30
  %28 = phi float [ %32, %30 ], [ %107, %106 ]
  %29 = icmp eq i64 %33, %25
  br i1 %29, label %109, label %30, !llvm.loop !161

30:                                               ; preds = %16, %27
  %31 = phi i64 [ 0, %16 ], [ %33, %27 ]
  %32 = phi float [ -1.000000e+00, %16 ], [ %28, %27 ]
  %33 = add nuw nsw i64 %31, 1
  br i1 %20, label %34, label %27

34:                                               ; preds = %30
  %35 = trunc i64 %31 to i32
  %36 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 1)
  %37 = icmp eq i64 %31, %23
  %38 = trunc i64 %33 to i32
  %39 = select i1 %37, i32 %17, i32 %38
  %40 = mul nsw i64 %31, %24
  %41 = mul nsw i32 %19, %39
  %42 = mul nsw i32 %19, %36
  %43 = sext i32 %41 to i64
  %44 = sext i32 %42 to i64
  %45 = getelementptr i8, ptr %2, i64 %40
  %46 = getelementptr float, ptr %1, i64 %43
  %47 = getelementptr float, ptr %1, i64 %44
  %48 = getelementptr float, ptr %1, i64 %40
  %49 = trunc i64 %40 to i32
  br label %50

50:                                               ; preds = %34, %106
  %51 = phi i64 [ 0, %34 ], [ %53, %106 ]
  %52 = phi float [ %32, %34 ], [ %107, %106 ]
  %53 = add nuw nsw i64 %51, 1
  %54 = getelementptr i8, ptr %45, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !45
  %56 = icmp eq i8 %55, 2
  br i1 %56, label %57, label %106

57:                                               ; preds = %50
  %58 = getelementptr float, ptr %46, i64 %51
  %59 = load float, ptr %58, align 4, !tbaa !46
  %60 = getelementptr float, ptr %47, i64 %51
  %61 = load float, ptr %60, align 4, !tbaa !46
  %62 = fsub float %59, %61
  %63 = icmp eq i64 %51, %22
  %64 = trunc i64 %53 to i32
  %65 = select i1 %63, i32 %21, i32 %64
  %66 = add nsw i32 %65, %41
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %1, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !46
  %70 = add nsw i32 %65, %42
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr %1, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !46
  %74 = fsub float %69, %73
  %75 = tail call float @llvm.fmuladd.f32(float %62, float 2.000000e+00, float %74)
  %76 = trunc i64 %51 to i32
  %77 = tail call i32 @llvm.usub.sat.i32(i32 %76, i32 1)
  %78 = add nsw i32 %41, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %1, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !46
  %82 = add nuw nsw i32 %42, %77
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds float, ptr %1, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !46
  %86 = fsub float %81, %85
  %87 = fadd float %75, %86
  %88 = sext i32 %65 to i64
  %89 = getelementptr float, ptr %48, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !46
  %91 = add nuw nsw i32 %77, %49
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds float, ptr %1, i64 %92
  %94 = load float, ptr %93, align 4, !tbaa !46
  %95 = fsub float %90, %94
  %96 = fsub float %69, %81
  %97 = tail call float @llvm.fmuladd.f32(float %95, float 2.000000e+00, float %96)
  %98 = fsub float %73, %85
  %99 = fadd float %98, %97
  %100 = tail call float @llvm.fabs.f32(float %99)
  %101 = fcmp ogt float %100, %52
  %102 = select i1 %101, float %100, float %52
  %103 = tail call float @llvm.fabs.f32(float %87)
  %104 = fcmp ogt float %103, %102
  %105 = select i1 %104, float %103, float %102
  br label %106

106:                                              ; preds = %50, %57
  %107 = phi float [ %105, %57 ], [ %52, %50 ]
  %108 = icmp eq i64 %53, %26
  br i1 %108, label %27, label %50, !llvm.loop !162

109:                                              ; preds = %27, %6
  %110 = phi float [ -1.000000e+00, %6 ], [ %28, %27 ]
  %111 = fcmp ogt float %110, 0.000000e+00
  %112 = and i1 %11, %111
  %113 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %114 = icmp sgt i32 %13, 0
  br i1 %114, label %115, label %255

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %117 = fdiv float %5, %10
  %118 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %119 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %120 = load i32, ptr %116, align 8, !tbaa !43
  br label %128

121:                                              ; preds = %252
  %122 = load i32, ptr %113, align 4, !tbaa !44
  br label %123

123:                                              ; preds = %121, %128
  %124 = phi i32 [ %122, %121 ], [ %129, %128 ]
  %125 = phi i32 [ %253, %121 ], [ %130, %128 ]
  %126 = phi i32 [ %253, %121 ], [ %131, %128 ]
  %127 = icmp slt i32 %135, %124
  br i1 %127, label %128, label %255, !llvm.loop !163

128:                                              ; preds = %115, %123
  %129 = phi i32 [ %13, %115 ], [ %124, %123 ]
  %130 = phi i32 [ %120, %115 ], [ %125, %123 ]
  %131 = phi i32 [ %120, %115 ], [ %126, %123 ]
  %132 = phi i32 [ 0, %115 ], [ %135, %123 ]
  %133 = add nsw i32 %129, -1
  %134 = icmp eq i32 %132, %133
  %135 = add nuw nsw i32 %132, 1
  %136 = select i1 %134, i32 %133, i32 %135
  %137 = tail call i32 @llvm.usub.sat.i32(i32 %132, i32 1)
  %138 = icmp sgt i32 %131, 0
  br i1 %138, label %139, label %123

139:                                              ; preds = %128, %252
  %140 = phi i32 [ %253, %252 ], [ %130, %128 ]
  %141 = phi i32 [ %253, %252 ], [ %131, %128 ]
  %142 = phi i32 [ %143, %252 ], [ 0, %128 ]
  %143 = add nuw nsw i32 %142, 1
  %144 = mul nsw i32 %141, %132
  %145 = add nsw i32 %144, %142
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %2, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !45
  %149 = icmp eq i8 %148, 2
  br i1 %149, label %150, label %252

150:                                              ; preds = %139
  %151 = mul nsw i32 %141, %136
  %152 = tail call i32 @llvm.usub.sat.i32(i32 %142, i32 1)
  %153 = add nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, ptr %1, i64 %154
  %156 = load float, ptr %155, align 4, !tbaa !46
  %157 = mul nsw i32 %141, %137
  %158 = add nsw i32 %157, %152
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, ptr %1, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !46
  %162 = fsub float %156, %161
  %163 = add nsw i32 %151, %142
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, ptr %1, i64 %164
  %166 = load float, ptr %165, align 4, !tbaa !46
  %167 = add nsw i32 %157, %142
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, ptr %1, i64 %168
  %170 = load float, ptr %169, align 4, !tbaa !46
  %171 = fsub float %166, %170
  %172 = add nsw i32 %141, -1
  %173 = icmp eq i32 %142, %172
  %174 = select i1 %173, i32 %172, i32 %143
  %175 = add nsw i32 %174, %151
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, ptr %1, i64 %176
  %178 = load float, ptr %177, align 4, !tbaa !46
  %179 = add nsw i32 %174, %157
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, ptr %1, i64 %180
  %182 = load float, ptr %181, align 4, !tbaa !46
  %183 = fsub float %178, %182
  %184 = tail call float @llvm.fmuladd.f32(float %171, float 2.000000e+00, float %183)
  %185 = fadd float %162, %184
  %186 = add nsw i32 %174, %144
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, ptr %1, i64 %187
  %189 = load float, ptr %188, align 4, !tbaa !46
  %190 = add nsw i32 %144, %152
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, ptr %1, i64 %191
  %193 = load float, ptr %192, align 4, !tbaa !46
  %194 = fsub float %189, %193
  %195 = fsub float %178, %156
  %196 = tail call float @llvm.fmuladd.f32(float %194, float 2.000000e+00, float %195)
  %197 = fsub float %182, %161
  %198 = fadd float %196, %197
  %199 = fdiv float %198, %110
  %200 = fdiv float %185, %110
  %201 = fmul float %117, %198
  %202 = fmul float %117, %185
  %203 = select i1 %112, float %199, float %201
  %204 = select i1 %112, float %200, float %202
  %205 = tail call float @llvm.fmuladd.f32(float %203, float 5.000000e-01, float 5.000000e-01)
  %206 = tail call float @llvm.fmuladd.f32(float %204, float 5.000000e-01, float 5.000000e-01)
  %207 = fcmp olt float %205, 0.000000e+00
  br i1 %207, label %211, label %208

208:                                              ; preds = %150
  %209 = fcmp ogt float %205, 1.000000e+00
  br i1 %209, label %210, label %211

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %150, %208, %210
  %212 = phi float [ 1.000000e+00, %210 ], [ %205, %208 ], [ 0.000000e+00, %150 ]
  %213 = fcmp olt float %206, 0.000000e+00
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = fcmp ogt float %206, 1.000000e+00
  br i1 %215, label %216, label %217

216:                                              ; preds = %214
  br label %217

217:                                              ; preds = %211, %214, %216
  %218 = phi float [ 1.000000e+00, %216 ], [ %206, %214 ], [ 0.000000e+00, %211 ]
  %219 = load ptr, ptr %118, align 8, !tbaa !47
  %220 = icmp eq ptr %219, null
  br i1 %220, label %227, label %221

221:                                              ; preds = %217
  %222 = shl nsw i32 %145, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, ptr %219, i64 %223
  store float %212, ptr %224, align 4, !tbaa !46
  %225 = getelementptr inbounds float, ptr %224, i64 1
  store float %218, ptr %225, align 4, !tbaa !46
  %226 = getelementptr inbounds float, ptr %224, i64 2
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %226, align 4, !tbaa !46
  br label %252

227:                                              ; preds = %217
  %228 = load ptr, ptr %119, align 8, !tbaa !48
  %229 = shl nsw i32 %145, 2
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, ptr %228, i64 %230
  %232 = fcmp ugt float %212, 0.000000e+00
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = fcmp ogt float %212, 0x3FEFEFEFE0000000
  %235 = tail call float @llvm.fmuladd.f32(float %212, float 2.550000e+02, float 5.000000e-01)
  %236 = select i1 %234, float 2.550000e+02, float %235
  br label %237

237:                                              ; preds = %227, %233
  %238 = phi float [ %236, %233 ], [ 0.000000e+00, %227 ]
  %239 = fptoui float %238 to i8
  store i8 %239, ptr %231, align 1, !tbaa !45
  %240 = fcmp ugt float %218, 0.000000e+00
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = fcmp ogt float %218, 0x3FEFEFEFE0000000
  %243 = tail call float @llvm.fmuladd.f32(float %218, float 2.550000e+02, float 5.000000e-01)
  %244 = select i1 %242, float 2.550000e+02, float %243
  br label %245

245:                                              ; preds = %237, %241
  %246 = phi float [ %244, %241 ], [ 0.000000e+00, %237 ]
  %247 = fptoui float %246 to i8
  %248 = getelementptr inbounds i8, ptr %231, i64 1
  store i8 %247, ptr %248, align 1, !tbaa !45
  %249 = getelementptr inbounds i8, ptr %231, i64 2
  store i8 0, ptr %249, align 1, !tbaa !45
  %250 = getelementptr inbounds i8, ptr %231, i64 3
  store i8 -1, ptr %250, align 1, !tbaa !45
  %251 = load i32, ptr %116, align 8, !tbaa !43
  br label %252

252:                                              ; preds = %221, %245, %139
  %253 = phi i32 [ %140, %221 ], [ %251, %245 ], [ %140, %139 ]
  %254 = icmp slt i32 %143, %253
  br i1 %254, label %139, label %121, !llvm.loop !164

255:                                              ; preds = %123, %109
  br i1 %112, label %256, label %258

256:                                              ; preds = %255
  %257 = fdiv float %110, %10
  br label %262

258:                                              ; preds = %14, %255
  %259 = fcmp ogt float %5, 0.000000e+00
  %260 = fdiv float 1.000000e+00, %5
  %261 = select i1 %259, float %260, float 0.000000e+00
  br label %262

262:                                              ; preds = %258, %256
  %263 = phi float [ %257, %256 ], [ %261, %258 ]
  ret float %263
}

; Function Attrs: optsize
declare void @zbuf_free_span(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @RE_bake_shade_get_image() local_unnamed_addr #8 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 72), align 8, !tbaa !74
  ret ptr %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @add_single_heights_margin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #9 !PGOFuncName !165 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !44
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %88

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = icmp sgt i32 %9, 0
  %11 = add nsw i32 %9, -1
  %12 = add nsw i32 %5, -1
  %13 = zext nneg i32 %5 to i64
  %14 = zext nneg i32 %9 to i64
  br label %15

15:                                               ; preds = %7, %85
  %16 = phi i64 [ 0, %7 ], [ %86, %85 ]
  br i1 %10, label %17, label %85

17:                                               ; preds = %15
  %18 = trunc i64 %16 to i32
  %19 = mul i32 %9, %18
  %20 = zext i32 %19 to i64
  %21 = trunc i64 %16 to i32
  br label %22

22:                                               ; preds = %17, %82
  %23 = phi i64 [ 0, %17 ], [ %83, %82 ]
  %24 = add nuw nsw i64 %23, %20
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = icmp eq i8 %26, 2
  br i1 %27, label %82, label %28

28:                                               ; preds = %22
  %29 = trunc i64 %23 to i32
  br label %30

30:                                               ; preds = %28, %73
  %31 = phi i32 [ %74, %73 ], [ -1, %28 ]
  %32 = phi i32 [ %70, %73 ], [ 0, %28 ]
  %33 = phi float [ %69, %73 ], [ 0.000000e+00, %28 ]
  %34 = icmp eq i32 %31, 0
  %35 = select i1 %34, i32 2, i32 1
  %36 = add nsw i32 %31, %21
  %37 = icmp slt i32 %36, 0
  %38 = icmp slt i32 %36, %5
  %39 = select i1 %38, i32 %36, i32 %12
  %40 = select i1 %37, i32 0, i32 %39
  %41 = mul nsw i32 %40, %9
  br label %42

42:                                               ; preds = %30, %68
  %43 = phi i32 [ -1, %30 ], [ %71, %68 ]
  %44 = phi i32 [ %32, %30 ], [ %70, %68 ]
  %45 = phi float [ %33, %30 ], [ %69, %68 ]
  %46 = icmp eq i32 %43, 0
  %47 = zext i1 %46 to i32
  %48 = add nuw nsw i32 %35, %47
  %49 = or i32 %43, %31
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %42
  %52 = add nsw i32 %43, %29
  %53 = icmp slt i32 %52, 0
  %54 = icmp slt i32 %52, %9
  %55 = select i1 %54, i32 %52, i32 %11
  %56 = select i1 %53, i32 0, i32 %55
  %57 = add nsw i32 %56, %41
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %1, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !45
  %61 = icmp eq i8 %60, 2
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = sitofp i32 %48 to float
  %64 = getelementptr inbounds float, ptr %2, i64 %58
  %65 = load float, ptr %64, align 4, !tbaa !46
  %66 = tail call float @llvm.fmuladd.f32(float %63, float %65, float %45)
  %67 = add nsw i32 %48, %44
  br label %68

68:                                               ; preds = %51, %62, %42
  %69 = phi float [ %45, %42 ], [ %66, %62 ], [ %45, %51 ]
  %70 = phi i32 [ %44, %42 ], [ %67, %62 ], [ %44, %51 ]
  %71 = add nsw i32 %43, 1
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %42, !llvm.loop !166

73:                                               ; preds = %68
  %74 = add nsw i32 %31, 1
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %30, !llvm.loop !167

76:                                               ; preds = %73
  %77 = icmp sgt i32 %70, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = sitofp i32 %70 to float
  %80 = fdiv float %69, %79
  %81 = getelementptr inbounds float, ptr %2, i64 %24
  store float %80, ptr %81, align 4, !tbaa !46
  br label %82

82:                                               ; preds = %76, %78, %22
  %83 = add nuw nsw i64 %23, 1
  %84 = icmp eq i64 %83, %14
  br i1 %84, label %85, label %22, !llvm.loop !168

85:                                               ; preds = %82, %15
  %86 = add nuw nsw i64 %16, 1
  %87 = icmp eq i64 %86, %13
  br i1 %87, label %88, label %15, !llvm.loop !169

88:                                               ; preds = %85, %3
  ret void
}

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_vlakren_get_origindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_render_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare ptr @RE_vlakren_get_tface(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rectfill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_verts(ptr noundef %0) unnamed_addr #0 !PGOFuncName !170 {
  %2 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !158
  %5 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 20
  store ptr null, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store <2 x float> <float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 8
  store i32 0, ptr %8, align 8, !tbaa !172
  %9 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25
  tail call fastcc void @zero_v3(ptr noundef nonnull %9) #19
  %10 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26
  tail call fastcc void @zero_v3(ptr noundef nonnull %10) #19
  %11 = getelementptr inbounds %struct.VlakRen, ptr %3, i64 0, i32 7
  %12 = load i8, ptr %11, align 1, !tbaa !173
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 8, !tbaa !150
  %18 = load ptr, ptr %17, align 8, !tbaa !175
  tail call fastcc void @bake_single_vertex(ptr noundef nonnull %0, ptr noundef %18, float noundef 1.000000e+00, float noundef 0.000000e+00) #19
  %19 = load ptr, ptr %2, align 8, !tbaa !150
  %20 = getelementptr inbounds %struct.VlakRen, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !176
  tail call fastcc void @bake_single_vertex(ptr noundef nonnull %0, ptr noundef %21, float noundef 0.000000e+00, float noundef 1.000000e+00) #19
  %22 = load ptr, ptr %2, align 8, !tbaa !150
  %23 = getelementptr inbounds %struct.VlakRen, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !177
  tail call fastcc void @bake_single_vertex(ptr noundef nonnull %0, ptr noundef %24, float noundef 0.000000e+00, float noundef 0.000000e+00) #19
  %25 = getelementptr inbounds %struct.VlakRen, ptr %3, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !178
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %16
  store i32 1, ptr %8, align 8, !tbaa !172
  %29 = load ptr, ptr %2, align 8, !tbaa !150
  %30 = getelementptr inbounds %struct.VlakRen, ptr %29, i64 0, i32 3
  br label %39

31:                                               ; preds = %1
  %32 = and i32 %13, 32
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %2, align 8, !tbaa !150
  br i1 %33, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.VlakRen, ptr %34, i64 0, i32 1
  br label %39

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.VlakRen, ptr %34, i64 0, i32 2
  br label %39

39:                                               ; preds = %28, %37, %35
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ], [ %30, %28 ]
  %41 = phi float [ 1.000000e+00, %35 ], [ 0.000000e+00, %37 ], [ 0.000000e+00, %28 ]
  %42 = load ptr, ptr %40, align 8, !tbaa !70
  tail call fastcc void @bake_single_vertex(ptr noundef nonnull %0, ptr noundef %42, float noundef 0.000000e+00, float noundef %41) #19
  br label %43

43:                                               ; preds = %39, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_tface(ptr noundef %0) unnamed_addr #0 !PGOFuncName !179 {
  %2 = alloca [4 x [2 x float]], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  %10 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !120
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %11, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = tail call ptr @RE_vlakren_get_tface(ptr noundef %11, ptr noundef %7, i32 noundef %13, ptr noundef null, i32 noundef 0) #18
  %15 = getelementptr inbounds %struct.MTFace, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %17 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !158
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %33, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !159
  tail call void @BKE_image_release_ibuf(ptr noundef %18, ptr noundef %22, ptr noundef null) #18
  store ptr %16, ptr %17, align 8, !tbaa !158
  %23 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %16, ptr noundef null, ptr noundef null) #18
  store ptr %23, ptr %21, align 8, !tbaa !159
  %24 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  tail call void @zbuf_free_span(ptr noundef %25) #18
  %26 = load ptr, ptr %24, align 8, !tbaa !116
  %27 = load ptr, ptr %21, align 8, !tbaa !159
  %28 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !44
  %32 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !180
  tail call void @zbuf_alloc_span(ptr noundef %26, i32 noundef %29, i32 noundef %31, float noundef %32) #18
  br label %33

33:                                               ; preds = %20, %1
  %34 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !159
  %36 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %38 = load <2 x i32>, ptr %36, align 8, !tbaa !71
  %39 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 7
  store <2 x i32> %38, ptr %37, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 8
  %41 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 17
  %42 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 34
  %43 = load ptr, ptr %42, align 8, !tbaa !181
  %44 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 28
  store ptr %43, ptr %44, align 8, !tbaa !182
  %45 = load <2 x ptr>, ptr %40, align 8, !tbaa !70
  store <2 x ptr> %45, ptr %41, align 8, !tbaa !70
  %46 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  store ptr null, ptr %46, align 8, !tbaa !141
  %47 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 8
  store i32 0, ptr %47, align 8, !tbaa !172
  %48 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 24
  store ptr null, ptr %48, align 8, !tbaa !183
  %49 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 20
  store ptr null, ptr %49, align 8, !tbaa !171
  %50 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 23
  %51 = load i8, ptr %50, align 8, !tbaa !98
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %33
  %54 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 19
  %55 = load i8, ptr %54, align 8, !tbaa !99
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %111, label %57

57:                                               ; preds = %53, %33
  %58 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 25
  %59 = load ptr, ptr %58, align 8, !tbaa !84
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %105

61:                                               ; preds = %57
  tail call void @BLI_lock_thread(i32 noundef 3) #18
  %62 = load ptr, ptr %34, align 8, !tbaa !159
  %63 = getelementptr inbounds %struct.ImBuf, ptr %62, i64 0, i32 25
  %64 = load ptr, ptr %63, align 8, !tbaa !84
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %68 = tail call ptr %67(i64 noundef 16, ptr noundef nonnull @.str.2) #18
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi ptr [ %68, %66 ], [ %64, %61 ]
  %71 = load i8, ptr %50, align 8, !tbaa !98
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.BakeImBufuserData, ptr %70, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !113
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %79 = load i32, ptr %37, align 8, !tbaa !184
  %80 = sext i32 %79 to i64
  %81 = load i32, ptr %39, align 4, !tbaa !185
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, %80
  %84 = tail call ptr %78(i64 noundef %83, ptr noundef nonnull @.str.3) #18
  store ptr %84, ptr %74, align 8, !tbaa !113
  br label %85

85:                                               ; preds = %73, %77, %69
  %86 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 19
  %87 = load i8, ptr %86, align 8, !tbaa !99
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %70, align 8, !tbaa !111
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %94 = load i32, ptr %37, align 8, !tbaa !184
  %95 = sext i32 %94 to i64
  %96 = shl nsw i64 %95, 2
  %97 = load i32, ptr %39, align 4, !tbaa !185
  %98 = sext i32 %97 to i64
  %99 = mul i64 %96, %98
  %100 = tail call ptr %93(i64 noundef %99, ptr noundef nonnull @.str.4) #18
  store ptr %100, ptr %70, align 8, !tbaa !111
  br label %101

101:                                              ; preds = %89, %92, %85
  %102 = load ptr, ptr %34, align 8, !tbaa !159
  %103 = getelementptr inbounds %struct.ImBuf, ptr %102, i64 0, i32 25
  store ptr %70, ptr %103, align 8, !tbaa !84
  tail call void @BLI_unlock_thread(i32 noundef 3) #18
  %104 = load <2 x i32>, ptr %37, align 8, !tbaa !71
  br label %105

105:                                              ; preds = %101, %57
  %106 = phi ptr [ %70, %101 ], [ %59, %57 ]
  %107 = phi <2 x i32> [ %104, %101 ], [ %38, %57 ]
  %108 = getelementptr inbounds %struct.BakeImBufuserData, ptr %106, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !113
  store ptr %109, ptr %48, align 8, !tbaa !183
  %110 = load ptr, ptr %106, align 8, !tbaa !111
  store ptr %110, ptr %49, align 8, !tbaa !171
  br label %111

111:                                              ; preds = %105, %53
  %112 = phi <2 x i32> [ %107, %105 ], [ %38, %53 ]
  %113 = sitofp <2 x i32> %112 to <2 x float>
  br label %114

114:                                              ; preds = %111, %114
  %115 = phi i64 [ 0, %111 ], [ %120, %114 ]
  %116 = getelementptr inbounds [4 x [2 x float]], ptr %14, i64 0, i64 %115
  %117 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 %115
  %118 = load <2 x float>, ptr %116, align 8, !tbaa !46
  %119 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %118, <2 x float> %113, <2 x float> <float 0xBFE0083120000000, float 0xBFE0106240000000>)
  store <2 x float> %119, ptr %117, align 8, !tbaa !46
  %120 = add nuw nsw i64 %115, 1
  %121 = icmp eq i64 %120, 4
  br i1 %121, label %122, label %114, !llvm.loop !186

122:                                              ; preds = %114
  store i32 0, ptr %3, align 4, !tbaa !71
  store i32 1, ptr %4, align 4, !tbaa !71
  store i32 2, ptr %5, align 4, !tbaa !71
  call void @vlr_set_uv_indices(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %123 = load i32, ptr %3, align 4, !tbaa !71
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 %124
  %126 = load i32, ptr %4, align 4, !tbaa !71
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 %127
  %129 = load i32, ptr %5, align 4, !tbaa !71
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 %130
  call fastcc void @bake_set_vlr_dxyco(ptr noundef nonnull %0, ptr noundef nonnull %125, ptr noundef nonnull %128, ptr noundef nonnull %131) #19
  %132 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !116
  %134 = load i32, ptr %3, align 4, !tbaa !71
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 %135
  %137 = load i32, ptr %4, align 4, !tbaa !71
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 %138
  %140 = load i32, ptr %5, align 4, !tbaa !71
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 %141
  call void @zspan_scanconvert(ptr noundef %133, ptr noundef nonnull %0, ptr noundef nonnull %136, ptr noundef nonnull %139, ptr noundef nonnull %142, ptr noundef nonnull @do_bake_shade) #18
  %143 = getelementptr inbounds %struct.VlakRen, ptr %7, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !178
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %122
  store i32 1, ptr %47, align 8, !tbaa !172
  %147 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 2
  %148 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 3
  call fastcc void @bake_set_vlr_dxyco(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %147, ptr noundef nonnull %148) #19
  %149 = load ptr, ptr %132, align 8, !tbaa !116
  call void @zspan_scanconvert(ptr noundef %149, ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %147, ptr noundef nonnull %148, ptr noundef nonnull @do_bake_shade) #18
  br label %150

150:                                              ; preds = %146, %122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !187 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !46
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bake_single_vertex(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !188 {
  %5 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = tail call ptr @RE_vertren_get_origindex(ptr noundef %8, ptr noundef %1, i32 noundef 0) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %9, align 4, !tbaa !71
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !136
  %17 = getelementptr inbounds %struct.MPoly, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !189
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !143
  %23 = zext nneg i32 %18 to i64
  br label %27

24:                                               ; preds = %27
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %36, label %27, !llvm.loop !190

27:                                               ; preds = %20, %24
  %28 = phi i64 [ 0, %20 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.MLoop, ptr %22, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !191
  %31 = icmp eq i32 %30, %12
  br i1 %31, label %32, label %24

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !141
  %35 = getelementptr inbounds %struct.MLoopCol, ptr %34, i64 %28
  store ptr %35, ptr %33, align 8, !tbaa !141
  tail call void @do_bake_shade(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, float noundef %2, float noundef %3) #19
  store ptr %34, ptr %33, align 8, !tbaa !141
  br label %36

36:                                               ; preds = %24, %14, %32, %4, %11
  ret void
}

; Function Attrs: optsize
declare ptr @RE_vertren_get_origindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_bake_shade(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) #0 !PGOFuncName !193 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca %struct.Isect, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 8
  %11 = alloca float, align 4
  %12 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !150
  %14 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !149
  %16 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  %20 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !155
  %22 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !156
  %23 = tail call i32 %21(ptr noundef %22) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %201

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 8
  %27 = load i32, ptr %26, align 8, !tbaa !172
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.VlakRen, ptr %13, i64 0, i32 2
  %30 = getelementptr inbounds %struct.VlakRen, ptr %13, i64 0, i32 3
  %31 = getelementptr inbounds %struct.VlakRen, ptr %13, i64 0, i32 1
  %32 = select i1 %28, ptr %31, ptr %29
  %33 = select i1 %28, ptr %29, ptr %30
  %34 = load ptr, ptr %33, align 8, !tbaa !70
  %35 = load ptr, ptr %32, align 8, !tbaa !70
  %36 = load ptr, ptr %13, align 8, !tbaa !175
  %37 = fsub float 1.000000e+00, %3
  %38 = fsub float %37, %4
  %39 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 13
  %40 = load ptr, ptr %39, align 8, !tbaa !97
  %41 = icmp ne ptr %40, null
  %42 = insertelement <2 x float> poison, float %4, i64 0
  %43 = insertelement <2 x float> %42, float %3, i64 1
  br i1 %41, label %44, label %58

44:                                               ; preds = %25
  %45 = fadd <2 x float> %43, <float -5.000000e-01, float -5.000000e-01>
  %46 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %45, <2 x float> <float 0x3FEFFF2E40000000, float 0x3FEFFF2E40000000>, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  %47 = fadd float %38, -5.000000e-01
  %48 = tail call float @llvm.fmuladd.f32(float %47, float 0x3FEFFF2E40000000, float 5.000000e-01)
  %49 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %50 = fadd <2 x float> %49, %46
  %51 = extractelement <2 x float> %50, i64 0
  %52 = fadd float %51, %48
  %53 = fdiv float 1.000000e+00, %52
  %54 = insertelement <2 x float> poison, float %53, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = fmul <2 x float> %46, %55
  %57 = fmul float %48, %53
  br label %58

58:                                               ; preds = %44, %25
  %59 = phi float [ %57, %44 ], [ %38, %25 ]
  %60 = phi <2 x float> [ %56, %44 ], [ %43, %25 ]
  %61 = load float, ptr %34, align 4, !tbaa !46
  %62 = load float, ptr %36, align 4, !tbaa !46
  %63 = extractelement <2 x float> %60, i64 1
  %64 = fmul float %63, %62
  %65 = tail call float @llvm.fmuladd.f32(float %59, float %61, float %64)
  %66 = load float, ptr %35, align 4, !tbaa !46
  %67 = extractelement <2 x float> %60, i64 0
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %66, float %65)
  %69 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29
  store float %68, ptr %69, align 8, !tbaa !46
  %70 = getelementptr inbounds float, ptr %34, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !46
  %72 = getelementptr inbounds float, ptr %36, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !46
  %74 = fmul float %63, %73
  %75 = tail call float @llvm.fmuladd.f32(float %59, float %71, float %74)
  %76 = getelementptr inbounds float, ptr %35, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !46
  %78 = tail call float @llvm.fmuladd.f32(float %67, float %77, float %75)
  %79 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29, i64 1
  store float %78, ptr %79, align 4, !tbaa !46
  %80 = getelementptr inbounds float, ptr %34, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !46
  %82 = getelementptr inbounds float, ptr %36, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !46
  %84 = fmul float %63, %83
  %85 = tail call float @llvm.fmuladd.f32(float %59, float %81, float %84)
  %86 = getelementptr inbounds float, ptr %35, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !46
  %88 = tail call float @llvm.fmuladd.f32(float %67, float %87, float %85)
  %89 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29, i64 2
  store float %88, ptr %89, align 8, !tbaa !46
  %90 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %91 = load ptr, ptr %90, align 8, !tbaa !141
  %92 = icmp eq ptr %91, null
  %93 = or i1 %41, %92
  br i1 %93, label %96, label %94

94:                                               ; preds = %58
  %95 = getelementptr inbounds %struct.VlakRen, ptr %13, i64 0, i32 4
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %69, ptr noundef nonnull %95) #19
  br label %96

96:                                               ; preds = %58, %94
  %97 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %15, i64 0, i32 11
  %98 = load i16, ptr %97, align 8, !tbaa !194
  %99 = and i16 %98, 3
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %15, i64 0, i32 8
  tail call void @mul_m4_v3(ptr noundef nonnull %102, ptr noundef nonnull %69) #18
  br label %103

103:                                              ; preds = %101, %96
  %104 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 78
  %105 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %104, ptr noundef nonnull %105) #19
  %106 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 79
  %107 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %106, ptr noundef nonnull %107) #19
  %108 = load i32, ptr %26, align 8, !tbaa !172
  tail call fastcc void @bake_set_shade_input(ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef nonnull %20, i32 noundef %108, i32 noundef %1, i32 noundef %2, float noundef %63, float noundef %67) #19
  %109 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 9
  %110 = load i32, ptr %109, align 4, !tbaa !96
  %111 = icmp eq i32 %110, 3
  %112 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 76), align 8
  %113 = icmp eq i16 %112, 3
  %114 = select i1 %111, i1 %113, i1 false
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %20) #18
  %116 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 66
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %116) #19
  %117 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 67
  call fastcc void @copy_v4_v4(ptr noundef nonnull %7, ptr noundef nonnull %117) #19
  br label %118

118:                                              ; preds = %115, %103
  %119 = load ptr, ptr %39, align 8, !tbaa !97
  %120 = icmp eq ptr %119, null
  br i1 %120, label %193, label %121

121:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  %122 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float 0.000000e+00, ptr %122, align 8, !tbaa !46
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !46
  %123 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 12
  %124 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %123, ptr noundef nonnull %124) #19
  %125 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 7
  %126 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 16
  %127 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 16, i32 1
  %128 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 11
  %129 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 10
  %130 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 9
  %131 = getelementptr inbounds i8, ptr %8, i64 112
  %132 = getelementptr inbounds i8, ptr %8, i64 116
  %133 = getelementptr inbounds i8, ptr %8, i64 120
  %134 = getelementptr inbounds i8, ptr %8, i64 128
  %135 = getelementptr inbounds i8, ptr %8, i64 136
  br label %136

136:                                              ; preds = %121, %164
  %137 = phi i32 [ 1, %121 ], [ %172, %164 ]
  %138 = phi i32 [ -1, %121 ], [ %173, %164 ]
  %139 = phi i32 [ 0, %121 ], [ %171, %164 ]
  %140 = phi float [ 0.000000e+00, %121 ], [ %170, %164 ]
  %141 = phi ptr [ null, %121 ], [ %169, %164 ]
  %142 = phi ptr [ null, %121 ], [ %168, %164 ]
  %143 = phi i32 [ 0, %121 ], [ %167, %164 ]
  %144 = phi float [ 0.000000e+00, %121 ], [ %166, %164 ]
  %145 = phi float [ 0.000000e+00, %121 ], [ %165, %164 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %8, i8 0, i64 176, i1 false)
  store i32 1, ptr %125, align 8, !tbaa !195
  store ptr %15, ptr %126, align 8, !tbaa !198
  store ptr %13, ptr %127, align 8, !tbaa !199
  %146 = load ptr, ptr %39, align 8, !tbaa !97
  store ptr %146, ptr %128, align 8, !tbaa !200
  store i32 3, ptr %129, align 4, !tbaa !201
  store i32 2, ptr %130, align 8, !tbaa !202
  %147 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !203
  %148 = sitofp i32 %138 to float
  %149 = call fastcc i32 @bake_intersect_tree(ptr noundef %147, ptr noundef nonnull %8, ptr noundef nonnull %69, ptr noundef nonnull %124, float noundef %148, ptr noundef nonnull %9, ptr noundef nonnull %11) #19
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %136
  %152 = icmp eq i32 %139, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %151
  %154 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %69, ptr noundef nonnull %9) #19
  %155 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %69, ptr noundef nonnull %10) #19
  %156 = fcmp olt float %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153, %151
  %158 = load float, ptr %131, align 8, !tbaa.struct !204
  %159 = load float, ptr %132, align 4, !tbaa.struct !205
  %160 = load i32, ptr %133, align 8, !tbaa.struct !206
  %161 = load ptr, ptr %134, align 8, !tbaa.struct !207
  %162 = load ptr, ptr %135, align 8, !tbaa.struct !208
  %163 = load float, ptr %11, align 4, !tbaa !46
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #19
  br label %164

164:                                              ; preds = %136, %157, %153
  %165 = phi float [ %158, %157 ], [ %145, %153 ], [ %145, %136 ]
  %166 = phi float [ %159, %157 ], [ %144, %153 ], [ %144, %136 ]
  %167 = phi i32 [ %160, %157 ], [ %143, %153 ], [ %143, %136 ]
  %168 = phi ptr [ %161, %157 ], [ %142, %153 ], [ %142, %136 ]
  %169 = phi ptr [ %162, %157 ], [ %141, %153 ], [ %141, %136 ]
  %170 = phi float [ %163, %157 ], [ %140, %153 ], [ %140, %136 ]
  %171 = phi i32 [ 1, %157 ], [ 1, %153 ], [ %139, %136 ]
  %172 = phi i32 [ %138, %157 ], [ %137, %153 ], [ %137, %136 ]
  %173 = add nsw i32 %138, 2
  %174 = icmp slt i32 %138, 0
  br i1 %174, label %136, label %175, !llvm.loop !209

175:                                              ; preds = %164
  %176 = load i32, ptr %109, align 4, !tbaa !96
  switch i32 %176, label %183 [
    i32 5, label %177
    i32 13, label %177
  ]

177:                                              ; preds = %175, %175
  %178 = icmp eq i32 %171, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %177
  %180 = icmp eq i32 %172, -1
  %181 = fneg float %170
  %182 = select i1 %180, float %170, float %181
  br label %191

183:                                              ; preds = %175
  %184 = icmp eq i32 %171, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %183
  %186 = icmp eq i32 %167, 2
  %187 = zext i1 %186 to i32
  call fastcc void @copy_v3_v3(ptr noundef nonnull %69, ptr noundef nonnull %10) #19
  %188 = fneg float %165
  %189 = fneg float %166
  call fastcc void @bake_set_shade_input(ptr noundef %168, ptr noundef %169, ptr noundef nonnull %20, i32 noundef %187, i32 noundef %1, i32 noundef %2, float noundef %188, float noundef %189) #19
  br label %190

190:                                              ; preds = %185, %183
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %8) #20
  br label %193

191:                                              ; preds = %177, %179
  %192 = phi float [ %182, %179 ], [ 0.000000e+00, %177 ]
  call fastcc void @bake_displacement(ptr noundef nonnull %0, float noundef %192, i32 noundef %1, i32 noundef %2) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %8) #20
  br label %201

193:                                              ; preds = %190, %118
  %194 = load i32, ptr %109, align 4, !tbaa !96
  %195 = icmp eq i32 %194, 3
  %196 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 76), align 8
  %197 = icmp eq i16 %196, 3
  %198 = select i1 %195, i1 %197, i1 false
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  call fastcc void @bake_shade(ptr noundef nonnull %0, ptr noundef %19, ptr noundef nonnull %20, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  br label %201

200:                                              ; preds = %193
  call fastcc void @bake_shade(ptr noundef nonnull %0, ptr noundef %19, ptr noundef nonnull %20, i32 noundef %1, i32 noundef %2, ptr noundef null, ptr noundef null) #19
  br label %201

201:                                              ; preds = %191, %199, %200, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !210 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  %4 = load float, ptr %0, align 4, !tbaa !46
  %5 = tail call float @llvm.fmuladd.f32(float %3, float 0x3F1A36E2E0000000, float %4)
  store float %5, ptr %0, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = tail call float @llvm.fmuladd.f32(float %7, float 0x3F1A36E2E0000000, float %9)
  store float %10, ptr %8, align 4, !tbaa !46
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = tail call float @llvm.fmuladd.f32(float %12, float 0x3F1A36E2E0000000, float %14)
  store float %15, ptr %13, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !211 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bake_set_shade_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7) unnamed_addr #0 !PGOFuncName !212 {
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @shade_input_set_triangle_i(ptr noundef %2, ptr noundef %0, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 3) #18
  br label %12

11:                                               ; preds = %8
  tail call void @shade_input_set_triangle_i(ptr noundef %2, ptr noundef %0, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2) #18
  br label %12

12:                                               ; preds = %11, %10
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 114
  %14 = load i16, ptr %13, align 2, !tbaa !91
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !71
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !71
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 107
  store i32 %17, ptr %19, align 4, !tbaa !213
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 105
  store i32 65535, ptr %20, align 4, !tbaa !214
  %21 = insertelement <2 x float> poison, float %6, i64 0
  %22 = insertelement <2 x float> %21, float %7, i64 1
  %23 = fneg <2 x float> %22
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 23
  store <2 x float> %23, ptr %24, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 103
  store i32 %4, ptr %25, align 4, !tbaa !215
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 104
  store i32 %5, ptr %26, align 8, !tbaa !216
  tail call void @shade_input_set_uv(ptr noundef %2) #18
  tail call void @shade_input_set_normals(ptr noundef %2) #18
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 7
  %28 = load i16, ptr %27, align 8, !tbaa !217
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %12
  tail call void @shade_input_flip_normals(ptr noundef nonnull %2) #18
  br label %31

31:                                               ; preds = %30, %12
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 30
  %34 = load <2 x float>, ptr %32, align 4, !tbaa !46
  store <2 x float> %34, ptr %33, align 4, !tbaa !46
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !46
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 30, i64 2
  store float %36, ptr %37, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @shade_input_set_shade_texco(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !218 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bake_intersect_tree(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, float noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !219 {
  %8 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 78), align 4, !tbaa !220
  %9 = fcmp ogt float %8, 0.000000e+00
  %10 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 79), align 8
  %11 = fadd float %10, 0x430C6BF520000000
  %12 = select i1 %9, float %8, float %11
  %13 = fneg float %10
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %13) #19
  %14 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  tail call fastcc void @mul_v3_v3fl(ptr noundef nonnull %14, ptr noundef %3, float noundef %4) #19
  %15 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  store float %12, ptr %15, align 8, !tbaa !221
  %16 = tail call i32 @RE_rayobject_raycast(ptr noundef %0, ptr noundef %1) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  %19 = load float, ptr %15, align 8, !tbaa !221
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef %5, ptr noundef nonnull %1, ptr noundef nonnull %14, float noundef %19) #19
  %20 = load float, ptr %15, align 8, !tbaa !221
  store float %20, ptr %6, align 4, !tbaa !46
  br label %21

21:                                               ; preds = %18, %7
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !222 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bake_displacement(ptr nocapture noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #13 !PGOFuncName !223 {
  %5 = alloca [4 x i8], align 1
  %6 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 78), align 4, !tbaa !220
  %11 = fcmp une float %10, 0.000000e+00
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = fadd float %10, %1
  %14 = fmul float %10, 2.000000e+00
  %15 = fdiv float %13, %14
  br label %18

16:                                               ; preds = %4
  %17 = fadd float %1, 5.000000e-01
  br label %18

18:                                               ; preds = %9, %12, %16
  %19 = phi float [ %15, %12 ], [ %17, %16 ], [ %1, %9 ]
  %20 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !171
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !184
  %26 = mul nsw i32 %25, %3
  %27 = add nsw i32 %26, %2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, ptr %21, i64 %28
  store float %19, ptr %29, align 4, !tbaa !46
  %30 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 21
  %31 = load float, ptr %30, align 8, !tbaa !108
  %32 = tail call fastcc float @min_ff(float noundef %31, float noundef %19) #19
  store float %32, ptr %30, align 8, !tbaa !108
  %33 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 22
  %34 = load float, ptr %33, align 4, !tbaa !109
  %35 = tail call fastcc float @max_ff(float noundef %34, float noundef %19) #19
  store float %35, ptr %33, align 4, !tbaa !109
  br label %36

36:                                               ; preds = %23, %18
  %37 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !224
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !141
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !184
  %47 = mul nsw i32 %46, %3
  %48 = add nsw i32 %47, %2
  %49 = shl nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, ptr %38, i64 %50
  %52 = getelementptr inbounds float, ptr %51, i64 2
  store float %19, ptr %52, align 4, !tbaa !46
  %53 = getelementptr inbounds float, ptr %51, i64 1
  store float %19, ptr %53, align 4, !tbaa !46
  store float %19, ptr %51, align 4, !tbaa !46
  %54 = getelementptr inbounds float, ptr %51, i64 3
  store float 1.000000e+00, ptr %54, align 4, !tbaa !46
  br label %84

55:                                               ; preds = %40, %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %56 = fcmp ugt float %19, 0.000000e+00
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = fcmp ogt float %19, 0x3FEFEFEFE0000000
  %59 = tail call float @llvm.fmuladd.f32(float %19, float 2.550000e+02, float 5.000000e-01)
  %60 = select i1 %58, float 2.550000e+02, float %59
  %61 = fptoui float %60 to i8
  br label %62

62:                                               ; preds = %55, %57
  %63 = phi i8 [ %61, %57 ], [ 0, %55 ]
  %64 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  store i8 %63, ptr %64, align 1, !tbaa !45
  %65 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  store i8 %63, ptr %65, align 1, !tbaa !45
  store i8 %63, ptr %5, align 1, !tbaa !45
  %66 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  store i8 -1, ptr %66, align 1, !tbaa !45
  %67 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %68 = load ptr, ptr %67, align 8, !tbaa !141
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  store i8 %63, ptr %68, align 1, !tbaa !225
  %71 = getelementptr inbounds %struct.MLoopCol, ptr %68, i64 0, i32 1
  store i8 %63, ptr %71, align 1, !tbaa !227
  %72 = getelementptr inbounds %struct.MLoopCol, ptr %68, i64 0, i32 2
  store i8 %63, ptr %72, align 1, !tbaa !228
  br label %83

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !229
  %76 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !184
  %78 = mul nsw i32 %77, %3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %75, i64 %79
  %81 = sext i32 %2 to i64
  %82 = getelementptr inbounds i32, ptr %80, i64 %81
  call fastcc void @copy_v4_v4_char(ptr noundef %82, ptr noundef nonnull %5) #19
  br label %83

83:                                               ; preds = %73, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br label %84

84:                                               ; preds = %83, %44
  %85 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 24
  %86 = load ptr, ptr %85, align 8, !tbaa !183
  %87 = icmp eq ptr %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !184
  %91 = mul nsw i32 %90, %3
  %92 = add nsw i32 %91, %2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %86, i64 %93
  store i8 2, ptr %94, align 1, !tbaa !45
  br label %95

95:                                               ; preds = %88, %84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bake_shade(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5, ptr noundef readonly %6) unnamed_addr #0 !PGOFuncName !230 {
  %8 = alloca %struct.ShadeResult, align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [4 x i8], align 1
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %8) #20
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !231
  tail call void @shade_input_init_material(ptr noundef %2) #18
  %16 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !96
  switch i32 %17, label %28 [
    i32 2, label %18
    i32 6, label %25
  ]

18:                                               ; preds = %7
  tail call void @ambient_occlusion(ptr noundef nonnull %2) #18
  %19 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 75), align 2, !tbaa !77
  %20 = and i16 %19, 8
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 100
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %23) #19
  br label %123

24:                                               ; preds = %18
  call fastcc void @zero_v3(ptr noundef nonnull %8) #19
  call void @environment_lighting_apply(ptr noundef nonnull %2, ptr noundef nonnull %8) #18
  br label %123

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 34
  store float 1.000000e+00, ptr %26, align 4, !tbaa !232
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 32
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %27, align 4, !tbaa !46
  br label %28

28:                                               ; preds = %7, %25
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %2) #18
  %29 = load i32, ptr %16, align 4, !tbaa !96
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @shade_samples_do_AO(ptr noundef nonnull %0) #18
  br label %32

32:                                               ; preds = %28, %31
  %33 = load ptr, ptr %2, align 8, !tbaa !233
  %34 = getelementptr inbounds %struct.Material, ptr %33, i64 0, i32 103
  %35 = load ptr, ptr %34, align 8, !tbaa !234
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Material, ptr %33, i64 0, i32 77
  %39 = load i8, ptr %38, align 1, !tbaa !238
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = call zeroext i8 @ntreeShaderExecTree(ptr noundef nonnull %35, ptr noundef nonnull %2, ptr noundef nonnull %8) #18
  %43 = getelementptr inbounds %struct.VlakRen, ptr %15, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !239
  store ptr %44, ptr %2, align 8, !tbaa !233
  br label %46

45:                                               ; preds = %37, %32
  call void @shade_material_loop(ptr noundef nonnull %2, ptr noundef nonnull %8) #18
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, ptr %16, align 4, !tbaa !96
  switch i32 %47, label %123 [
    i32 3, label %48
    i32 4, label %86
    i32 6, label %91
    i32 7, label %96
    i32 8, label %99
    i32 9, label %103
    i32 10, label %106
    i32 11, label %110
    i32 12, label %114
    i32 14, label %118
  ]

48:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %49) #19
  %50 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 76), align 8, !tbaa !240
  switch i16 %50, label %73 [
    i16 1, label %72
    i16 3, label %51
    i16 2, label %70
  ]

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #20
  %52 = icmp ne ptr %5, null
  %53 = icmp ne ptr %6, null
  %54 = and i1 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %6) #19
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %56, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %57 = getelementptr inbounds float, ptr %6, i64 3
  br label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 67
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %59) #19
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 66
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %60, ptr noundef nonnull %61, ptr noundef nonnull %59) #19
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 67, i64 3
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi ptr [ %62, %58 ], [ %57, %55 ]
  %65 = phi ptr [ %60, %58 ], [ %56, %55 ]
  %66 = phi ptr [ %61, %58 ], [ %5, %55 ]
  %67 = load float, ptr %64, align 4, !tbaa !46
  call fastcc void @mul_v3_fl(ptr noundef nonnull %65, float noundef %67) #19
  %68 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %68, ptr noundef nonnull %66) #19
  %69 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %11, ptr noundef nonnull %10) #18
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #20
  br label %73

70:                                               ; preds = %48
  %71 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 51
  call void @mul_mat3_m4_v3(ptr noundef nonnull %71, ptr noundef nonnull %9) #18
  br label %73

72:                                               ; preds = %48
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %9) #18
  br label %73

73:                                               ; preds = %48, %63, %72, %70
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #19
  %74 = load <2 x float>, ptr %9, align 8, !tbaa !46
  %75 = fmul <2 x float> %74, <float 5.000000e-01, float 5.000000e-01>
  %76 = fsub <2 x float> <float 5.000000e-01, float poison>, %75
  %77 = fadd <2 x float> %75, <float poison, float 5.000000e-01>
  %78 = shufflevector <2 x float> %76, <2 x float> %77, <2 x i32> <i32 0, i32 3>
  %79 = fadd <2 x float> %78, <float 0x3EE4F8B580000000, float 0x3EE4F8B580000000>
  store <2 x float> %79, ptr %8, align 8, !tbaa !46
  %80 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %81 = load float, ptr %80, align 8, !tbaa !46
  %82 = fmul float %81, 5.000000e-01
  %83 = fadd float %82, 5.000000e-01
  %84 = fadd float %83, 0x3EE4F8B580000000
  %85 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float %84, ptr %85, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  br label %123

86:                                               ; preds = %46
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 32
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %87) #19
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 49
  %89 = load float, ptr %88, align 8, !tbaa !241
  %90 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float %89, ptr %90, align 8, !tbaa !242
  br label %123

91:                                               ; preds = %46
  %92 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %92) #19
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 49
  %94 = load float, ptr %93, align 8, !tbaa !241
  %95 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float %94, ptr %95, align 8, !tbaa !242
  br label %123

96:                                               ; preds = %46
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 35
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %97) #19
  %98 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %98, align 8, !tbaa !242
  br label %123

99:                                               ; preds = %46
  %100 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 51
  %101 = load float, ptr %100, align 8, !tbaa !244
  call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef %101) #19
  %102 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %102, align 8, !tbaa !242
  br label %123

103:                                              ; preds = %46
  %104 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 38
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %104) #19
  %105 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %105, align 8, !tbaa !242
  br label %123

106:                                              ; preds = %46
  %107 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 48
  %108 = load float, ptr %107, align 4, !tbaa !245
  call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef %108) #19
  %109 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %109, align 8, !tbaa !242
  br label %123

110:                                              ; preds = %46
  %111 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 49
  %112 = load float, ptr %111, align 8, !tbaa !241
  call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef %112) #19
  %113 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %113, align 8, !tbaa !242
  br label %123

114:                                              ; preds = %46
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 45
  %116 = load float, ptr %115, align 8, !tbaa !246
  call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef %116) #19
  %117 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float 1.000000e+00, ptr %117, align 8, !tbaa !242
  br label %123

118:                                              ; preds = %46
  %119 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 61
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %119) #19
  %120 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 61, i64 3
  %121 = load float, ptr %120, align 4, !tbaa !46
  %122 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  store float %121, ptr %122, align 8, !tbaa !242
  br label %123

123:                                              ; preds = %46, %73, %91, %99, %106, %114, %118, %110, %103, %96, %86, %22, %24
  %124 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 18
  %125 = load ptr, ptr %124, align 8, !tbaa !224
  %126 = icmp eq ptr %125, null
  br i1 %126, label %146, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %129 = load ptr, ptr %128, align 8, !tbaa !141
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %133 = load i32, ptr %132, align 8, !tbaa !184
  %134 = mul nsw i32 %133, %4
  %135 = add nsw i32 %134, %3
  %136 = shl nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, ptr %125, i64 %137
  call fastcc void @copy_v3_v3(ptr noundef nonnull %138, ptr noundef nonnull %8) #19
  %139 = load i32, ptr %16, align 4, !tbaa !96
  switch i32 %139, label %144 [
    i32 1, label %140
    i32 4, label %140
    i32 14, label %140
  ]

140:                                              ; preds = %131, %131, %131
  %141 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  %142 = load float, ptr %141, align 8, !tbaa !242
  %143 = getelementptr inbounds float, ptr %138, i64 3
  store float %142, ptr %143, align 4, !tbaa !46
  br label %197

144:                                              ; preds = %131
  %145 = getelementptr inbounds float, ptr %138, i64 3
  store float 1.000000e+00, ptr %145, align 4, !tbaa !46
  br label %197

146:                                              ; preds = %127, %123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  %147 = load i32, ptr %16, align 4, !tbaa !96
  switch i32 %147, label %160 [
    i32 1, label %148
    i32 4, label %148
  ]

148:                                              ; preds = %146, %146
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %8) #19
  %149 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8, !tbaa !68
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %153 = load ptr, ptr %152, align 8, !tbaa !141
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 28
  %157 = load ptr, ptr %156, align 8, !tbaa !182
  call void @IMB_colormanagement_scene_linear_to_colorspace_v3(ptr noundef nonnull %13, ptr noundef %157) #18
  br label %159

158:                                              ; preds = %151
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %13) #19
  br label %159

159:                                              ; preds = %155, %158, %148
  call void @rgb_float_to_uchar(ptr noundef nonnull %12, ptr noundef nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #20
  br label %161

160:                                              ; preds = %146
  call void @rgb_float_to_uchar(ptr noundef nonnull %12, ptr noundef nonnull %8) #18
  br label %161

161:                                              ; preds = %160, %159
  %162 = load i32, ptr %16, align 4, !tbaa !96
  switch i32 %162, label %172 [
    i32 1, label %163
    i32 4, label %163
    i32 14, label %163
  ]

163:                                              ; preds = %161, %161, %161
  %164 = getelementptr inbounds %struct.ShadeResult, ptr %8, i64 0, i32 2
  %165 = load float, ptr %164, align 8
  %166 = fcmp ugt float %165, 0.000000e+00
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = fcmp ogt float %165, 0x3FEFEFEFE0000000
  %169 = call float @llvm.fmuladd.f32(float %165, float 2.550000e+02, float 5.000000e-01)
  %170 = select i1 %168, float 2.550000e+02, float %169
  %171 = fptoui float %170 to i8
  br label %172

172:                                              ; preds = %161, %167, %163
  %173 = phi i8 [ %171, %167 ], [ 0, %163 ], [ -1, %161 ]
  %174 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 3
  store i8 %173, ptr %174, align 1, !tbaa !45
  %175 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 16
  %176 = load ptr, ptr %175, align 8, !tbaa !141
  %177 = icmp eq ptr %176, null
  br i1 %177, label %186, label %178

178:                                              ; preds = %172
  %179 = load i8, ptr %12, align 1, !tbaa !45
  store i8 %179, ptr %176, align 1, !tbaa !225
  %180 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !45
  %182 = getelementptr inbounds %struct.MLoopCol, ptr %176, i64 0, i32 1
  store i8 %181, ptr %182, align 1, !tbaa !227
  %183 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 2
  %184 = load i8, ptr %183, align 1, !tbaa !45
  %185 = getelementptr inbounds %struct.MLoopCol, ptr %176, i64 0, i32 2
  store i8 %184, ptr %185, align 1, !tbaa !228
  br label %196

186:                                              ; preds = %172
  %187 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 17
  %188 = load ptr, ptr %187, align 8, !tbaa !229
  %189 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %190 = load i32, ptr %189, align 8, !tbaa !184
  %191 = mul nsw i32 %190, %4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, ptr %188, i64 %192
  %194 = sext i32 %3 to i64
  %195 = getelementptr inbounds i32, ptr %193, i64 %194
  call fastcc void @copy_v4_v4_char(ptr noundef %195, ptr noundef nonnull %12) #19
  br label %196

196:                                              ; preds = %186, %178
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  br label %197

197:                                              ; preds = %140, %144, %196
  %198 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 24
  %199 = load ptr, ptr %198, align 8, !tbaa !183
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 6
  %203 = load i32, ptr %202, align 8, !tbaa !184
  %204 = mul nsw i32 %203, %4
  %205 = add nsw i32 %204, %3
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, ptr %199, i64 %206
  store i8 2, ptr %207, align 1, !tbaa !45
  br label %208

208:                                              ; preds = %201, %197
  %209 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 27
  %210 = load ptr, ptr %209, align 8, !tbaa !100
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  store i16 1, ptr %210, align 2, !tbaa !72
  br label %213

213:                                              ; preds = %212, %208
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %8) #20
  ret void
}

; Function Attrs: optsize
declare void @shade_input_set_triangle_i(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @shade_input_set_uv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @shade_input_set_normals(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @shade_input_flip_normals(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #12 !PGOFuncName !247 {
  %5 = load float, ptr %1, align 4, !tbaa !46
  %6 = load float, ptr %2, align 4, !tbaa !46
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !46
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !46
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !46
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !46
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #12 !PGOFuncName !248 {
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare i32 @RE_rayobject_raycast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !249 {
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = load float, ptr %2, align 4, !tbaa !46
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !250 {
  %3 = load float, ptr %0, align 4, !tbaa !46
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !251 {
  %3 = load i8, ptr %1, align 1, !tbaa !45
  store i8 %3, ptr %0, align 1, !tbaa !45
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !45
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !45
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !45
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @shade_input_init_material(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ambient_occlusion(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @environment_lighting_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @shade_samples_do_AO(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ntreeShaderExecTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @shade_material_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !252 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !46
  %15 = load float, ptr %8, align 4, !tbaa !46
  %16 = load float, ptr %2, align 4, !tbaa !46
  %17 = load float, ptr %1, align 4, !tbaa !46
  %18 = load float, ptr %6, align 4, !tbaa !46
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !46
  %23 = load float, ptr %1, align 4, !tbaa !46
  %24 = load float, ptr %10, align 4, !tbaa !46
  %25 = load float, ptr %4, align 4, !tbaa !46
  %26 = load float, ptr %2, align 4, !tbaa !46
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !253 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !46
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #15 !PGOFuncName !254 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl(ptr nocapture noundef writeonly %0, float noundef %1) unnamed_addr #11 !PGOFuncName !255 {
  store float %1, ptr %0, align 4, !tbaa !46
  %3 = getelementptr inbounds float, ptr %0, i64 1
  store float %1, ptr %3, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %0, i64 2
  store float %1, ptr %4, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_scene_linear_to_colorspace_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !256 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #18
  store float %4, ptr %0, align 4, !tbaa !46
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #18
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #18
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !257 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #18
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @zbuf_alloc_span(ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @vlr_set_uv_indices(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bake_set_vlr_dxyco(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !258 {
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
  br i1 %22, label %23, label %99

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !172
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  %29 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 2
  %30 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 3
  %31 = select i1 %26, ptr %29, ptr %30
  %32 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 1
  %33 = select i1 %26, ptr %32, ptr %29
  %34 = load ptr, ptr %31, align 8, !tbaa !70
  %35 = load ptr, ptr %33, align 8, !tbaa !70
  %36 = load ptr, ptr %28, align 8, !tbaa !175
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
  br label %101

99:                                               ; preds = %4
  %100 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %100, i8 0, i64 20, i1 false)
  br label %101

101:                                              ; preds = %99, %23
  %102 = phi float [ %98, %23 ], [ 0.000000e+00, %99 ]
  %103 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26, i64 2
  store float %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !149
  %106 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %105, i64 0, i32 11
  %107 = load i16, ptr %106, align 8, !tbaa !194
  %108 = and i16 %107, 3
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %105, i64 0, i32 10
  %112 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 25
  tail call void @mul_m3_v3(ptr noundef nonnull %111, ptr noundef nonnull %112) #18
  %113 = load ptr, ptr %104, align 8, !tbaa !149
  %114 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %113, i64 0, i32 10
  %115 = getelementptr inbounds %struct.BakeShade, ptr %0, i64 0, i32 26
  tail call void @mul_m3_v3(ptr noundef nonnull %114, ptr noundef nonnull %115) #18
  br label %116

116:                                              ; preds = %110, %101
  ret void
}

; Function Attrs: optsize
declare void @zspan_scanconvert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

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
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"bake.c:max_ff"}
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
!75 = !{i32 0, i32 2}
!76 = !{!53, !54, i64 1754}
!77 = !{!53, !54, i64 1758}
!78 = !{!79, !36, i64 0}
!79 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !55, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !54, i64 2084, !54, i64 2086, !54, i64 2088, !37, i64 2090, !54, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!80 = !{!81, !54, i64 98}
!81 = !{!"Image", !65, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !54, i64 1240, !54, i64 1242, !54, i64 1244, !54, i64 1246, !54, i64 1248, !54, i64 1250, !39, i64 1252, !54, i64 1256, !54, i64 1258, !54, i64 1260, !54, i64 1262, !54, i64 1264, !54, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !40, i64 1296, !39, i64 1300, !54, i64 1304, !54, i64 1306, !39, i64 1308, !39, i64 1312, !37, i64 1316, !37, i64 1317, !54, i64 1318, !37, i64 1320, !40, i64 1336, !40, i64 1340, !82, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!82 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!83 = !{!81, !54, i64 1246}
!84 = !{!35, !36, i64 304}
!85 = distinct !{!85, !50}
!86 = !{!53, !54, i64 1538}
!87 = !{!53, !39, i64 5624}
!88 = !{!89, !39, i64 1440}
!89 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !54, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !54, i64 88, !54, i64 90, !54, i64 92, !54, i64 94, !54, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !40, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !40, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !40, i64 1256, !40, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !40, i64 1336, !40, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !40, i64 1428, !37, i64 1432, !37, i64 1433, !54, i64 1434, !54, i64 1436, !54, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!90 = !{!89, !39, i64 1452}
!91 = !{!89, !54, i64 1434}
!92 = !{!89, !37, i64 1433}
!93 = !{!94, !39, i64 0}
!94 = !{!"BakeShade", !95, i64 0, !36, i64 27080, !36, i64 27088, !36, i64 27096, !36, i64 27104, !36, i64 27112, !39, i64 27120, !39, i64 27124, !39, i64 27128, !39, i64 27132, !39, i64 27136, !37, i64 27140, !37, i64 27144, !36, i64 27160, !36, i64 27168, !36, i64 27176, !36, i64 27184, !36, i64 27192, !36, i64 27200, !37, i64 27208, !36, i64 27216, !40, i64 27224, !40, i64 27228, !37, i64 27232, !36, i64 27240, !37, i64 27248, !37, i64 27260, !36, i64 27272, !36, i64 27280}
!95 = !{!"ShadeSample", !39, i64 0, !37, i64 8, !37, i64 136, !37, i64 23688}
!96 = !{!94, !39, i64 27132}
!97 = !{!94, !36, i64 27160}
!98 = !{!94, !37, i64 27232}
!99 = !{!94, !37, i64 27208}
!100 = !{!94, !36, i64 27272}
!101 = distinct !{!101, !50}
!102 = !{!94, !39, i64 27136}
!103 = distinct !{!103, !50}
!104 = !{!53, !39, i64 5720}
!105 = !{!94, !37, i64 27140}
!106 = distinct !{!106, !50}
!107 = distinct !{!107, !50}
!108 = !{!94, !40, i64 27224}
!109 = !{!94, !40, i64 27228}
!110 = distinct !{!110, !50}
!111 = !{!112, !36, i64 0}
!112 = !{!"BakeImBufuserData", !36, i64 0, !36, i64 8}
!113 = !{!112, !36, i64 8}
!114 = !{!35, !39, i64 292}
!115 = distinct !{!115, !50}
!116 = !{!94, !36, i64 27096}
!117 = distinct !{!117, !50}
!118 = !{!"bake.c:get_next_bake_face"}
!119 = !{!53, !36, i64 5808}
!120 = !{!121, !36, i64 16}
!121 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !54, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!122 = !{!123, !39, i64 84}
!123 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!124 = !{!123, !36, i64 16}
!125 = !{!126, !54, i64 948}
!126 = !{!"Object", !65, i64 0, !36, i64 120, !36, i64 128, !54, i64 136, !54, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !127, i64 312, !36, i64 360, !55, i64 368, !55, i64 384, !55, i64 400, !55, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !54, i64 948, !54, i64 950, !54, i64 952, !54, i64 954, !54, i64 956, !54, i64 958, !54, i64 960, !54, i64 962, !54, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !54, i64 1036, !54, i64 1038, !54, i64 1040, !37, i64 1042, !37, i64 1043, !54, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !55, i64 1056, !55, i64 1072, !55, i64 1088, !55, i64 1104, !40, i64 1120, !54, i64 1124, !54, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !54, i64 1162, !37, i64 1164, !55, i64 1176, !55, i64 1192, !55, i64 1208, !55, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !54, i64 1266, !40, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !128, i64 1304, !128, i64 1312, !39, i64 1320, !39, i64 1324, !55, i64 1328, !55, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !55, i64 1400, !36, i64 1416}
!127 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !54, i64 16, !54, i64 18, !54, i64 20, !54, i64 22, !54, i64 24, !54, i64 26, !54, i64 28, !54, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!128 = !{!"long", !37, i64 0}
!129 = !{!126, !54, i64 136}
!130 = !{!126, !36, i64 296}
!131 = !{!132, !39, i64 1296}
!132 = !{!"Mesh", !65, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !133, i64 280, !133, i64 480, !133, i64 680, !133, i64 880, !133, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !54, i64 1348, !54, i64 1350, !40, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !54, i64 1366, !36, i64 1368}
!133 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!134 = !{!132, !36, i64 1080}
!135 = !{!132, !36, i64 168}
!136 = !{!94, !36, i64 27168}
!137 = !{!138, !36, i64 96}
!138 = !{!"CustomDataLayer", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96}
!139 = !{!140, !39, i64 0}
!140 = !{!"MPoly", !39, i64 0, !39, i64 4, !54, i64 8, !37, i64 10, !37, i64 11}
!141 = !{!94, !36, i64 27184}
!142 = !{!132, !36, i64 184}
!143 = !{!94, !36, i64 27176}
!144 = !{!132, !54, i64 98}
!145 = !{!123, !39, i64 176}
!146 = !{!147, !36, i64 32}
!147 = !{!"MTFace", !37, i64 0, !36, i64 32, !37, i64 40, !37, i64 41, !54, i64 42, !54, i64 44, !54, i64 46}
!148 = !{!35, !39, i64 28}
!149 = !{!94, !36, i64 27080}
!150 = !{!94, !36, i64 27088}
!151 = distinct !{!151, !50}
!152 = !{!121, !36, i64 0}
!153 = distinct !{!153, !50}
!154 = !{!"bake.c:do_bake_thread"}
!155 = !{!53, !36, i64 6048}
!156 = !{!53, !36, i64 6056}
!157 = distinct !{!157, !50}
!158 = !{!94, !36, i64 27104}
!159 = !{!94, !36, i64 27112}
!160 = !{!"bake.c:min_ff"}
!161 = distinct !{!161, !50}
!162 = distinct !{!162, !50}
!163 = distinct !{!163, !50}
!164 = distinct !{!164, !50}
!165 = !{!"bake.c:add_single_heights_margin"}
!166 = distinct !{!166, !50}
!167 = distinct !{!167, !50}
!168 = distinct !{!168, !50}
!169 = distinct !{!169, !50}
!170 = !{!"bake.c:shade_verts"}
!171 = !{!94, !36, i64 27216}
!172 = !{!94, !39, i64 27128}
!173 = !{!174, !37, i64 57}
!174 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!175 = !{!174, !36, i64 0}
!176 = !{!174, !36, i64 8}
!177 = !{!174, !36, i64 16}
!178 = !{!174, !36, i64 24}
!179 = !{!"bake.c:shade_tface"}
!180 = !{!53, !40, i64 196}
!181 = !{!35, !36, i64 2400}
!182 = !{!94, !36, i64 27280}
!183 = !{!94, !36, i64 27240}
!184 = !{!94, !39, i64 27120}
!185 = !{!94, !39, i64 27124}
!186 = distinct !{!186, !50}
!187 = !{!"bake.c:zero_v3"}
!188 = !{!"bake.c:bake_single_vertex"}
!189 = !{!140, !39, i64 4}
!190 = distinct !{!190, !50}
!191 = !{!192, !39, i64 0}
!192 = !{!"MLoop", !39, i64 0, !39, i64 4}
!193 = !{!"bake.c:do_bake_shade"}
!194 = !{!121, !54, i64 216}
!195 = !{!196, !39, i64 88}
!196 = !{!"Isect", !37, i64 0, !37, i64 12, !40, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !40, i64 112, !40, i64 116, !39, i64 120, !197, i64 128, !197, i64 144, !36, i64 160, !36, i64 168}
!197 = !{!"", !36, i64 0, !36, i64 8}
!198 = !{!196, !36, i64 144}
!199 = !{!196, !36, i64 152}
!200 = !{!196, !36, i64 104}
!201 = !{!196, !39, i64 100}
!202 = !{!196, !39, i64 96}
!203 = !{!53, !36, i64 5656}
!204 = !{i64 0, i64 4, !46, i64 4, i64 4, !46, i64 8, i64 4, !71, i64 16, i64 8, !70, i64 24, i64 8, !70, i64 32, i64 8, !70, i64 40, i64 8, !70, i64 48, i64 8, !70, i64 56, i64 8, !70}
!205 = !{i64 0, i64 4, !46, i64 4, i64 4, !71, i64 12, i64 8, !70, i64 20, i64 8, !70, i64 28, i64 8, !70, i64 36, i64 8, !70, i64 44, i64 8, !70, i64 52, i64 8, !70}
!206 = !{i64 0, i64 4, !71, i64 8, i64 8, !70, i64 16, i64 8, !70, i64 24, i64 8, !70, i64 32, i64 8, !70, i64 40, i64 8, !70, i64 48, i64 8, !70}
!207 = !{i64 0, i64 8, !70, i64 8, i64 8, !70, i64 16, i64 8, !70, i64 24, i64 8, !70, i64 32, i64 8, !70, i64 40, i64 8, !70}
!208 = !{i64 0, i64 8, !70, i64 8, i64 8, !70, i64 16, i64 8, !70, i64 24, i64 8, !70, i64 32, i64 8, !70}
!209 = distinct !{!209, !50}
!210 = !{!"bake.c:madd_v3_v3fl"}
!211 = !{!"bake.c:copy_v3_v3"}
!212 = !{!"bake.c:bake_set_shade_input"}
!213 = !{!89, !39, i64 1404}
!214 = !{!89, !39, i64 1388}
!215 = !{!89, !39, i64 1380}
!216 = !{!89, !39, i64 1384}
!217 = !{!89, !54, i64 56}
!218 = !{!"bake.c:copy_v4_v4"}
!219 = !{!"bake.c:bake_intersect_tree"}
!220 = !{!53, !40, i64 1764}
!221 = !{!196, !40, i64 24}
!222 = !{!"bake.c:len_squared_v3v3"}
!223 = !{!"bake.c:bake_displacement"}
!224 = !{!94, !36, i64 27200}
!225 = !{!226, !37, i64 0}
!226 = !{!"MLoopCol", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!227 = !{!226, !37, i64 1}
!228 = !{!226, !37, i64 2}
!229 = !{!94, !36, i64 27192}
!230 = !{!"bake.c:bake_shade"}
!231 = !{!89, !36, i64 8}
!232 = !{!89, !40, i64 236}
!233 = !{!89, !36, i64 0}
!234 = !{!235, !36, i64 768}
!235 = !{!"Material", !65, i64 0, !36, i64 120, !54, i64 128, !54, i64 130, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !236, i64 224, !237, i64 312, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !40, i64 348, !40, i64 352, !54, i64 356, !54, i64 358, !54, i64 360, !37, i64 362, !37, i64 363, !40, i64 364, !40, i64 368, !54, i64 372, !54, i64 374, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !54, i64 392, !54, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !54, i64 412, !54, i64 414, !54, i64 416, !54, i64 418, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !40, i64 456, !37, i64 460, !40, i64 524, !40, i64 528, !40, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !54, i64 544, !54, i64 546, !54, i64 548, !37, i64 550, !37, i64 551, !54, i64 552, !54, i64 554, !40, i64 556, !40, i64 560, !37, i64 564, !40, i64 580, !40, i64 584, !54, i64 588, !54, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !54, i64 612, !54, i64 614, !40, i64 616, !40, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !40, i64 800, !40, i64 804, !40, i64 808, !40, i64 812, !40, i64 816, !54, i64 820, !54, i64 822, !37, i64 824, !37, i64 836, !40, i64 848, !40, i64 852, !40, i64 856, !40, i64 860, !40, i64 864, !40, i64 868, !40, i64 872, !54, i64 876, !54, i64 878, !39, i64 880, !54, i64 884, !54, i64 886, !37, i64 888, !54, i64 904, !54, i64 906, !54, i64 908, !54, i64 910, !54, i64 912, !37, i64 914, !36, i64 920, !55, i64 928}
!236 = !{!"VolumeSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !40, i64 52, !40, i64 56, !40, i64 60, !54, i64 64, !54, i64 66, !54, i64 68, !54, i64 70, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84}
!237 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!238 = !{!235, !37, i64 543}
!239 = !{!174, !36, i64 48}
!240 = !{!53, !54, i64 1760}
!241 = !{!89, !40, i64 296}
!242 = !{!243, !40, i64 32}
!243 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!244 = !{!89, !40, i64 304}
!245 = !{!89, !40, i64 292}
!246 = !{!89, !40, i64 280}
!247 = !{!"bake.c:madd_v3_v3v3fl"}
!248 = !{!"bake.c:mul_v3_v3fl"}
!249 = !{!"bake.c:sub_v3_v3v3"}
!250 = !{!"bake.c:dot_v3v3"}
!251 = !{!"bake.c:copy_v4_v4_char"}
!252 = !{!"bake.c:cross_v3_v3v3"}
!253 = !{!"bake.c:mul_v3_fl"}
!254 = !{!"bake.c:normalize_v3"}
!255 = !{!"bake.c:copy_v3_fl"}
!256 = !{!"bake.c:linearrgb_to_srgb_v3_v3"}
!257 = !{!"bake.c:normalize_v3_v3"}
!258 = !{!"bake.c:bake_set_vlr_dxyco"}
