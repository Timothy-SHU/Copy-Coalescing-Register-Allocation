; ModuleID = 'blender/source/blender/render/intern/source/shadeinput.c'
source_filename = "blender/source/blender/render/intern/source/shadeinput.c"
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
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.VertRen = type { [3 x float], [3 x float], ptr, i32, float, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.StrandPoint = type { float, [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], i32, i32, [4 x float], float, float, float }
%struct.StrandVert = type { [3 x float], float }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.ShadeSample = type { i32, [16 x ptr], [16 x %struct.ShadeInput], [16 x %struct.ShadeResult] }
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
%struct.SampleTables = type { [16 x float], [9 x ptr], [9 x ptr], [256 x i8], ptr }

@R = external global %struct.Render, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @shade_input_init_material(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %2, ptr noundef nonnull align 4 dereferenceable(92) %4, i64 92, i1 false)
  %5 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 38
  %6 = load i16, ptr %5, align 8, !tbaa !42
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 55
  store i32 %7, ptr %8, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_material_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ShadeResult, align 4
  tail call void @shade_lamp_loop(ptr noundef %0, ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 54
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %42

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %3) #15
  tail call void @shade_input_init_material(ptr noundef nonnull %0) #16
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17
  tail call fastcc void @negate_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  tail call fastcc void @negate_v3(ptr noundef nonnull %10) #16
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !50
  call void @shade_lamp_loop(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  %14 = load i32, ptr %11, align 8, !tbaa !50
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %11, align 8, !tbaa !50
  call fastcc void @madd_v3_v3fl(ptr noundef %1, ptr noundef nonnull %3, float noundef %5) #16
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %17 = load i32, ptr %16, align 8, !tbaa !51
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %22 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 8
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %21, ptr noundef nonnull %22, float noundef %5) #16
  %23 = load i32, ptr %16, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %20, %7
  %25 = phi i32 [ %23, %20 ], [ %17, %7 ]
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %30 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 6
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %29, ptr noundef nonnull %30, float noundef %5) #16
  %31 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  %32 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 7
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %31, ptr noundef nonnull %32, float noundef %5) #16
  %33 = load i32, ptr %16, align 8, !tbaa !51
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi i32 [ %33, %28 ], [ %25, %24 ]
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %40 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 9
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %39, ptr noundef nonnull %40, float noundef %5) #16
  br label %41

41:                                               ; preds = %38, %34
  call fastcc void @negate_v3(ptr noundef nonnull %8) #16
  call fastcc void @negate_v3(ptr noundef nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %3) #15
  br label %42

42:                                               ; preds = %41, %2
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %44 = load i32, ptr %43, align 8, !tbaa !50
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 109
  %48 = load i32, ptr %47, align 4, !tbaa !52
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %46, %42
  %51 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 48
  %56 = load float, ptr %55, align 4, !tbaa !67
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %60 = load i32, ptr %59, align 8, !tbaa !68
  %61 = and i32 %60, 196608
  %62 = icmp eq i32 %61, 196608
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %65 = load float, ptr %64, align 4, !tbaa !69
  %66 = fcmp une float %65, 1.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %54
  call void @ray_trace(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %68

68:                                               ; preds = %58, %63, %67, %50
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %70 = load i32, ptr %69, align 8, !tbaa !68
  %71 = and i32 %70, 196608
  %72 = icmp eq i32 %71, 196608
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 118
  %75 = load i32, ptr %74, align 4, !tbaa !71
  %76 = and i32 %75, 16
  %77 = icmp ne i32 %76, 0
  %78 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 53), align 8
  %79 = icmp eq i16 %78, 0
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float 1.000000e+00, ptr %82, align 4, !tbaa !69
  br label %83

83:                                               ; preds = %68, %81, %73, %46
  %84 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %85 = and i32 %84, 65536
  %86 = icmp ne i32 %85, 0
  %87 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 79), align 8
  %88 = icmp ne ptr %87, null
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  call void @shade_volume_inside(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %91

91:                                               ; preds = %90, %83
  ret void
}

; Function Attrs: optsize
declare void @shade_lamp_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !72 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !73
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !74 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !73
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !73
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !75 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = load float, ptr %0, align 4, !tbaa !73
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !73
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !73
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !73
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @ray_trace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_volume_inside(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_input_do_shade(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 103
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 77
  %9 = load i8, ptr %8, align 1, !tbaa !77
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @ntreeShaderExecTree(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef %1) #14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %7, %2, %11
  tail call void @shade_input_init_material(ptr noundef nonnull %0) #16
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !78
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  tail call void @shade_volume_outside(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %25

24:                                               ; preds = %14
  tail call void @shade_material_loop(ptr noundef nonnull %0, ptr noundef %1) #16
  br label %25

25:                                               ; preds = %24, %23, %19, %11
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %27 = load i32, ptr %26, align 8, !tbaa !51
  %28 = and i32 %27, 768
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 16
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %31, ptr noundef nonnull %32) #16
  %33 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 15
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %34) #16
  %35 = load i32, ptr %26, align 8, !tbaa !51
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i32 [ %35, %30 ], [ %27, %25 ]
  %38 = and i32 %37, 16384
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !79
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.Material, ptr %45, i64 0, i32 51
  %47 = load i32, ptr %46, align 4, !tbaa !80
  %48 = and i32 %47, 16384
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %44, %36
  %51 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  br i1 %53, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %57 = load float, ptr %56, align 8, !tbaa !73
  %58 = fneg float %57
  br label %61

59:                                               ; preds = %50
  %60 = tail call fastcc float @len_v3(ptr noundef nonnull %54) #16
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi float [ %58, %55 ], [ %60, %59 ]
  %63 = tail call float @mistfactor(float noundef %62, ptr noundef nonnull %54) #14
  br label %64

64:                                               ; preds = %61, %40, %44
  %65 = phi float [ 0.000000e+00, %44 ], [ 0.000000e+00, %40 ], [ %63, %61 ]
  %66 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 3
  store float %65, ptr %66, align 4, !tbaa !81
  %67 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !79
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %0, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.Material, ptr %71, i64 0, i32 51
  %73 = load i32, ptr %72, align 4, !tbaa !80
  %74 = and i32 %73, 16384
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %64, %70, %76
  %78 = phi float [ %65, %76 ], [ 1.000000e+00, %70 ], [ 1.000000e+00, %64 ]
  %79 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %80 = load float, ptr %79, align 4, !tbaa !69
  %81 = fcmp une float %80, 1.000000e+00
  %82 = fcmp une float %78, 1.000000e+00
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = fmul float %78, %80
  %86 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float %85, ptr %86, align 4, !tbaa !73
  %87 = load ptr, ptr %0, align 8, !tbaa !34
  %88 = getelementptr inbounds %struct.Material, ptr %87, i64 0, i32 2
  %89 = load i16, ptr %88, align 8, !tbaa !78
  %90 = icmp eq i16 %89, 2
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %1, float noundef %85) #16
  br label %94

92:                                               ; preds = %77
  %93 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float 1.000000e+00, ptr %93, align 4, !tbaa !73
  br label %94

94:                                               ; preds = %84, %91, %92
  %95 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %96 = load float, ptr %95, align 8, !tbaa !73
  %97 = fneg float %96
  %98 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 4
  store float %97, ptr %98, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ntreeShaderExecTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_volume_outside(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !83 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  store float %3, ptr %0, align 4, !tbaa !73
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !73
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !73
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !84 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  store float %3, ptr %0, align 4, !tbaa !73
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare float @mistfactor(float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !85 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #16
  %3 = tail call float @sqrtf(float noundef %2) #14
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !86 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !73
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @vlr_set_uv_indices(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.VlakRen, ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !tbaa !87
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %7, 16
  %11 = icmp eq i32 %10, 0
  br i1 %9, label %16, label %12

12:                                               ; preds = %4
  br i1 %11, label %20, label %13

13:                                               ; preds = %12
  %14 = load i32, ptr %1, align 4, !tbaa !89
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %1, align 4, !tbaa !89
  br label %17

16:                                               ; preds = %4
  br i1 %11, label %23, label %17

17:                                               ; preds = %16, %13
  %18 = load i32, ptr %2, align 4, !tbaa !89
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %2, align 4, !tbaa !89
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, ptr %3, align 4, !tbaa !89
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %3, align 4, !tbaa !89
  br label %23

23:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_input_set_triangle_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  store ptr %1, ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !94
  %12 = sext i16 %3 to i64
  %13 = getelementptr inbounds ptr, ptr %2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !96
  %16 = sext i16 %4 to i64
  %17 = getelementptr inbounds ptr, ptr %2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 9
  store ptr %18, ptr %19, align 8, !tbaa !97
  %20 = sext i16 %5 to i64
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 10
  store ptr %22, ptr %23, align 8, !tbaa !98
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 11
  store i16 %3, ptr %24, align 8, !tbaa !99
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 12
  store i16 %4, ptr %25, align 2, !tbaa !100
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 13
  store i16 %5, ptr %26, align 4, !tbaa !101
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 122
  %28 = load ptr, ptr %27, align 8, !tbaa !102
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !103
  br label %33

33:                                               ; preds = %6, %30
  %34 = phi ptr [ %32, %30 ], [ %28, %6 ]
  store ptr %34, ptr %0, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 90
  %36 = load i16, ptr %35, align 4, !tbaa !104
  %37 = and i16 %36, 512
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  store i16 %37, ptr %38, align 8, !tbaa !105
  %39 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 52
  %40 = load i32, ptr %39, align 8, !tbaa !106
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  store i32 %40, ptr %41, align 8, !tbaa !68
  %42 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 54
  %43 = load i32, ptr %42, align 8, !tbaa !107
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 22
  store i32 %43, ptr %44, align 4, !tbaa !108
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 7
  store i16 0, ptr %45, align 8, !tbaa !109
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  tail call void @RE_vlakren_get_normal(ptr noundef nonnull @R, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %46) #14
  %47 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 7
  %48 = load i8, ptr %47, align 1, !tbaa !87
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18
  %53 = load ptr, ptr %15, align 8, !tbaa !96
  %54 = getelementptr inbounds %struct.VertRen, ptr %53, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %52, ptr noundef nonnull %54) #16
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19
  %56 = load ptr, ptr %19, align 8, !tbaa !97
  %57 = getelementptr inbounds %struct.VertRen, ptr %56, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %55, ptr noundef nonnull %57) #16
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20
  %59 = load ptr, ptr %23, align 8, !tbaa !98
  %60 = getelementptr inbounds %struct.VertRen, ptr %59, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %58, ptr noundef nonnull %60) #16
  %61 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %62 = load i16, ptr %61, align 8, !tbaa !110
  %63 = and i16 %62, 3
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 10
  tail call void @mul_m3_v3(ptr noundef nonnull %66, ptr noundef nonnull %52) #14
  tail call fastcc void @normalize_v3(ptr noundef nonnull %52) #16
  tail call void @mul_m3_v3(ptr noundef nonnull %66, ptr noundef nonnull %55) #14
  tail call fastcc void @normalize_v3(ptr noundef nonnull %55) #16
  tail call void @mul_m3_v3(ptr noundef nonnull %66, ptr noundef nonnull %58) #14
  tail call fastcc void @normalize_v3(ptr noundef nonnull %58) #16
  br label %67

67:                                               ; preds = %51, %65, %33
  ret void
}

; Function Attrs: optsize
declare void @RE_vlakren_get_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !111 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_input_set_triangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store volatile i32 %1, ptr %5, align 4, !tbaa !89
  store volatile i32 %2, ptr %6, align 4, !tbaa !89
  %7 = load volatile i32, ptr %6, align 4, !tbaa !89
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !112
  %11 = load volatile i32, ptr %5, align 4, !tbaa !89
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %10, i64 %12
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %10, i64 %12, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !94
  %18 = load volatile i32, ptr %6, align 4, !tbaa !89
  %19 = add i32 %18, 134217727
  %20 = and i32 %19, 134217727
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 5
  store i32 %20, ptr %21, align 8, !tbaa !113
  %22 = getelementptr inbounds %struct.ObjectRen, ptr %16, i64 0, i32 11
  %23 = load i32, ptr %22, align 4, !tbaa !114
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %9
  %26 = tail call ptr @RE_findOrAddVlak(ptr noundef nonnull %16, i32 noundef %20) #14
  %27 = load volatile i32, ptr %6, align 4, !tbaa !89
  %28 = and i32 %27, 134217728
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr %14, align 8, !tbaa !91
  br i1 %29, label %32, label %31

31:                                               ; preds = %25
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %0, ptr noundef %30, ptr noundef %26, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 3) #16
  br label %37

32:                                               ; preds = %25
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %0, ptr noundef %30, ptr noundef %26, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2) #16
  br label %37

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  store ptr null, ptr %34, align 8, !tbaa !90
  br label %37

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  store ptr null, ptr %36, align 8, !tbaa !90
  br label %37

37:                                               ; preds = %31, %32, %33, %35
  ret void
}

; Function Attrs: optsize
declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @shade_input_copy_triangle(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @shade_input_set_strand(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 122
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.StrandBuffer, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  br label %13

13:                                               ; preds = %3, %8
  %14 = phi ptr [ %12, %8 ], [ %6, %3 ]
  store ptr %14, ptr %0, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 90
  %16 = load i16, ptr %15, align 4, !tbaa !104
  %17 = and i16 %16, 512
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  store i16 %17, ptr %18, align 8, !tbaa !105
  %19 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 52
  %20 = load i32, ptr %19, align 8, !tbaa !106
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  store i32 %20, ptr %21, align 8, !tbaa !68
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %23 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %23) #16
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %22) #16
  tail call fastcc void @normalize_v3(ptr noundef nonnull %24) #16
  %25 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 18
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %27 = load <2 x float>, ptr %25, align 4, !tbaa !73
  %28 = fptosi <2 x float> %27 to <2 x i32>
  store <2 x i32> %28, ptr %26, align 4, !tbaa !89
  %29 = load i16, ptr %18, align 8, !tbaa !105
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %13
  %32 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %13
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %37 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %36, ptr noundef nonnull %37) #16
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %39 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %38, ptr noundef nonnull %39) #16
  br label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %42 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %41, ptr noundef nonnull %42) #16
  %43 = load ptr, ptr %0, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.Material, ptr %43, i64 0, i32 51
  %45 = load i32, ptr %44, align 4, !tbaa !80
  %46 = and i32 %45, 16777216
  %47 = icmp eq i32 %46, 0
  %48 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 3
  br i1 %47, label %51, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %50, ptr noundef nonnull %48) #16
  br label %57

51:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %23, ptr noundef nonnull %48) #16
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %52, ptr noundef nonnull %4, ptr noundef nonnull %48) #16
  tail call fastcc void @normalize_v3(ptr noundef nonnull %52) #16
  %53 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %52, ptr noundef nonnull %24) #16
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call fastcc void @negate_v3(ptr noundef nonnull %52) #16
  br label %56

56:                                               ; preds = %55, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  br label %57

57:                                               ; preds = %56, %49
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %58, ptr noundef nonnull %59) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !120 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !73
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !73
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !73
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !73
  %15 = load float, ptr %8, align 4, !tbaa !73
  %16 = load float, ptr %2, align 4, !tbaa !73
  %17 = load float, ptr %1, align 4, !tbaa !73
  %18 = load float, ptr %6, align 4, !tbaa !73
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !73
  %23 = load float, ptr %1, align 4, !tbaa !73
  %24 = load float, ptr %10, align 4, !tbaa !73
  %25 = load float, ptr %4, align 4, !tbaa !73
  %26 = load float, ptr %2, align 4, !tbaa !73
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !121 {
  %3 = load float, ptr %0, align 4, !tbaa !73
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_input_set_strand_texco(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %11 = load i32, ptr %10, align 8, !tbaa !68
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 90
  %14 = load i16, ptr %13, align 4, !tbaa !104
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %17 = and i32 %11, 201326592
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %21 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %21) #16
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %21) #16
  br label %23

23:                                               ; preds = %19, %4
  %24 = icmp sgt i32 %11, -1
  br i1 %24, label %52, label %25

25:                                               ; preds = %23
  %26 = tail call ptr @RE_strandren_get_surfnor(ptr noundef %9, ptr noundef nonnull %1, i32 noundef 0) #14
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %30 = select i1 %27, ptr %29, ptr %26
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %30) #16
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.Material, ptr %31, i64 0, i32 66
  %33 = load float, ptr %32, align 8, !tbaa !123
  %34 = fcmp ogt float %33, 0.000000e+00
  br i1 %34, label %35, label %52

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 111
  store float 0.000000e+00, ptr %36, align 4, !tbaa !124
  %37 = load ptr, ptr %1, align 8, !tbaa !125
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %46, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %41, %39 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.StrandVert, ptr %40, i64 1
  %42 = tail call fastcc float @len_v3v3(ptr noundef %40, ptr noundef nonnull %41) #16
  %43 = load float, ptr %36, align 4, !tbaa !124
  %44 = fadd float %42, %43
  store float %44, ptr %36, align 4, !tbaa !124
  %45 = icmp eq ptr %41, %2
  br i1 %45, label %46, label %39, !llvm.loop !126

46:                                               ; preds = %39, %35
  %47 = load float, ptr %3, align 4, !tbaa !128
  %48 = getelementptr inbounds %struct.StrandVert, ptr %2, i64 1
  %49 = tail call fastcc float @len_v3v3(ptr noundef %2, ptr noundef nonnull %48) #16
  %50 = load float, ptr %36, align 4, !tbaa !124
  %51 = tail call float @llvm.fmuladd.f32(float %47, float %49, float %50)
  store float %51, ptr %36, align 4, !tbaa !124
  br label %52

52:                                               ; preds = %25, %46, %23
  %53 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %54 = and i32 %53, 1048576
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !91
  %59 = tail call ptr @RE_strandren_get_winspeed(ptr noundef %58, ptr noundef %1, i32 noundef 0) #14
  %60 = icmp eq ptr %59, null
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69
  br i1 %60, label %63, label %62

62:                                               ; preds = %56
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %61, ptr noundef nonnull %59) #16
  br label %64

63:                                               ; preds = %56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  br label %64

64:                                               ; preds = %62, %63, %52
  %65 = and i32 %15, 2048
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %248, label %67

67:                                               ; preds = %64
  %68 = and i32 %15, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56
  %72 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %71, ptr noundef nonnull %72) #16
  br label %73

73:                                               ; preds = %70, %67
  %74 = and i32 %15, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 57
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %77, ptr noundef nonnull %78) #16
  tail call void @mul_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %77) #14
  %79 = load i16, ptr %16, align 8, !tbaa !105
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 82
  %83 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %82, ptr noundef nonnull %83) #16
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %82) #14
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 83
  %85 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %84, ptr noundef nonnull %85) #16
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %84) #14
  br label %86

86:                                               ; preds = %76, %81, %73
  %87 = and i32 %15, 8192
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 4
  %91 = load float, ptr %90, align 4, !tbaa !130
  %92 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 64
  store float %91, ptr %92, align 4, !tbaa !131
  %93 = load i16, ptr %16, align 8, !tbaa !105
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 8
  %97 = load float, ptr %96, align 4, !tbaa !132
  %98 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 98
  store float %97, ptr %98, align 8, !tbaa !133
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 99
  store float 0.000000e+00, ptr %99, align 4, !tbaa !134
  br label %100

100:                                              ; preds = %89, %95, %86
  %101 = and i32 %15, 16
  %102 = and i32 %11, 2192
  %103 = or i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %225, label %105

105:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %106 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 74
  store i32 0, ptr %106, align 8, !tbaa !135
  %107 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 75
  store i32 0, ptr %107, align 4, !tbaa !136
  %108 = getelementptr inbounds %struct.ObjectRen, ptr %9, i64 0, i32 25
  %109 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 76
  %110 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 77
  %111 = load <2 x i32>, ptr %108, align 8, !tbaa !89
  store <2 x i32> %111, ptr %109, align 8, !tbaa !89
  %112 = and i32 %11, 144
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %161, label %114

114:                                              ; preds = %105
  %115 = call ptr @RE_strandren_get_mcol(ptr noundef nonnull %9, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0) #14
  %116 = icmp eq ptr %115, null
  br i1 %116, label %147, label %117

117:                                              ; preds = %114, %117
  %118 = phi i64 [ %143, %117 ], [ 0, %114 ]
  %119 = phi ptr [ %145, %117 ], [ %115, %114 ]
  %120 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %118
  %121 = load i32, ptr %107, align 4, !tbaa !136
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %107, align 4, !tbaa !136
  %123 = load ptr, ptr %5, align 8, !tbaa !95
  %124 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %118, i32 1
  store ptr %123, ptr %124, align 8, !tbaa !137
  %125 = getelementptr inbounds i8, ptr %119, i64 3
  %126 = load i8, ptr %125, align 1, !tbaa !139
  %127 = uitofp i8 %126 to float
  %128 = fdiv float %127, 2.550000e+02
  store float %128, ptr %120, align 8, !tbaa !73
  %129 = getelementptr inbounds i8, ptr %119, i64 2
  %130 = load i8, ptr %129, align 1, !tbaa !139
  %131 = uitofp i8 %130 to float
  %132 = fdiv float %131, 2.550000e+02
  %133 = getelementptr inbounds [4 x float], ptr %120, i64 0, i64 1
  store float %132, ptr %133, align 4, !tbaa !73
  %134 = getelementptr inbounds i8, ptr %119, i64 1
  %135 = load i8, ptr %134, align 1, !tbaa !139
  %136 = uitofp i8 %135 to float
  %137 = fdiv float %136, 2.550000e+02
  %138 = getelementptr inbounds [4 x float], ptr %120, i64 0, i64 2
  store float %137, ptr %138, align 8, !tbaa !73
  %139 = load i8, ptr %119, align 1, !tbaa !139
  %140 = uitofp i8 %139 to float
  %141 = fdiv float %140, 2.550000e+02
  %142 = getelementptr inbounds [4 x float], ptr %120, i64 0, i64 3
  store float %141, ptr %142, align 4, !tbaa !73
  %143 = add nuw i64 %118, 1
  %144 = trunc i64 %143 to i32
  %145 = call ptr @RE_strandren_get_mcol(ptr noundef %9, ptr noundef %1, i32 noundef %144, ptr noundef nonnull %5, i32 noundef 0) #14
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %117, !llvm.loop !140

147:                                              ; preds = %117, %114
  %148 = load i32, ptr %107, align 4, !tbaa !136
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %147
  %151 = load i32, ptr %110, align 4, !tbaa !141
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %152
  %154 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %155 = load <2 x float>, ptr %153, align 8, !tbaa !73
  store <2 x float> %155, ptr %154, align 8, !tbaa !73
  %156 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %152, i32 0, i64 2
  %157 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %158 = load <2 x float>, ptr %156, align 8, !tbaa !73
  store <2 x float> %158, ptr %157, align 8, !tbaa !73
  br label %161

159:                                              ; preds = %147
  %160 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %160, i8 0, i64 16, i1 false)
  br label %161

161:                                              ; preds = %150, %159, %105
  %162 = call ptr @RE_strandren_get_uv(ptr noundef %9, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0) #14
  %163 = icmp eq ptr %162, null
  br i1 %163, label %211, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 10
  %166 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 4
  %167 = and i32 %11, 2048
  %168 = icmp eq i32 %167, 0
  %169 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  br label %170

170:                                              ; preds = %164, %206
  %171 = phi i64 [ 0, %164 ], [ %207, %206 ]
  %172 = phi ptr [ %162, %164 ], [ %209, %206 ]
  %173 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %171
  %174 = load i32, ptr %106, align 8, !tbaa !135
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %106, align 8, !tbaa !135
  %176 = load ptr, ptr %5, align 8, !tbaa !95
  %177 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %171, i32 3
  store ptr %176, ptr %177, align 8, !tbaa !142
  %178 = load i32, ptr %165, align 4, !tbaa !144
  %179 = zext i32 %178 to i64
  %180 = icmp eq i64 %171, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %171, i32 2
  store float -1.000000e+00, ptr %182, align 8, !tbaa !73
  %183 = load float, ptr %166, align 4, !tbaa !130
  br label %191

184:                                              ; preds = %170
  %185 = load float, ptr %172, align 4, !tbaa !73
  %186 = call float @llvm.fmuladd.f32(float %185, float 2.000000e+00, float -1.000000e+00)
  %187 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %171, i32 2
  store float %186, ptr %187, align 8, !tbaa !73
  %188 = getelementptr inbounds float, ptr %172, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !73
  %190 = call float @llvm.fmuladd.f32(float %189, float 2.000000e+00, float -1.000000e+00)
  br label %191

191:                                              ; preds = %184, %181
  %192 = phi float [ %183, %181 ], [ %190, %184 ]
  %193 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %171, i32 2, i64 1
  store float %192, ptr %193, align 4
  %194 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %171, i32 2, i64 2
  store float 0.000000e+00, ptr %194, align 8
  %195 = load i16, ptr %16, align 8, !tbaa !105
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %191
  store <2 x float> zeroinitializer, ptr %173, align 8, !tbaa !73
  %198 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %171, i32 1
  store <2 x float> zeroinitializer, ptr %198, align 4, !tbaa !73
  br label %199

199:                                              ; preds = %197, %191
  br i1 %168, label %206, label %200

200:                                              ; preds = %199
  %201 = load i32, ptr %108, align 8, !tbaa !145
  %202 = zext i32 %201 to i64
  %203 = icmp eq i64 %171, %202
  %204 = and i1 %113, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %169, align 8, !tbaa !73
  br label %206

206:                                              ; preds = %205, %200, %199
  %207 = add nuw i64 %171, 1
  %208 = trunc i64 %207 to i32
  %209 = call ptr @RE_strandren_get_uv(ptr noundef %9, ptr noundef %1, i32 noundef %208, ptr noundef nonnull %5, i32 noundef 0) #14
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %170, !llvm.loop !146

211:                                              ; preds = %206, %161
  %212 = load i32, ptr %106, align 8, !tbaa !135
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2
  store float 0.000000e+00, ptr %215, align 8, !tbaa !73
  %216 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 4
  %217 = load float, ptr %216, align 4, !tbaa !130
  %218 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2, i64 1
  store float %217, ptr %218, align 4, !tbaa !73
  %219 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2, i64 2
  store float 0.000000e+00, ptr %219, align 8, !tbaa !73
  %220 = and i32 %11, 2048
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %223, align 8, !tbaa !73
  br label %224

224:                                              ; preds = %214, %222, %211
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %225

225:                                              ; preds = %100, %224
  %226 = and i32 %15, 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %230 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59
  %231 = load <2 x float>, ptr %229, align 4, !tbaa !73
  %232 = fneg <2 x float> %231
  store <2 x float> %232, ptr %230, align 8, !tbaa !73
  %233 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %234 = load float, ptr %233, align 4, !tbaa !73
  %235 = fneg float %234
  %236 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59, i64 2
  store float %235, ptr %236, align 8, !tbaa !73
  br label %237

237:                                              ; preds = %228, %225
  %238 = and i32 %15, 4096
  %239 = icmp ne i32 %238, 0
  %240 = and i32 %11, 67108864
  %241 = icmp eq i32 %240, 0
  %242 = and i1 %241, %239
  br i1 %242, label %243, label %248

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %245 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  store float 0.000000e+00, ptr %245, align 8, !tbaa !73
  store <2 x float> zeroinitializer, ptr %244, align 8, !tbaa !73
  %246 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67
  %247 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 2
  store float 0.000000e+00, ptr %247, align 8, !tbaa !73
  store <2 x float> zeroinitializer, ptr %246, align 8, !tbaa !73
  br label %248

248:                                              ; preds = %237, %243, %64
  %249 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %250 = load i32, ptr %249, align 8, !tbaa !50
  %251 = icmp ne i32 %250, 0
  %252 = and i32 %15, 1024
  %253 = icmp eq i32 %252, 0
  %254 = select i1 %251, i1 true, i1 %253
  br i1 %254, label %278, label %255

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 18
  %257 = load float, ptr %256, align 4, !tbaa !147
  %258 = fmul float %257, 2.000000e+00
  %259 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !148
  %260 = sitofp i32 %259 to float
  %261 = fdiv float %258, %260
  %262 = fadd float %261, -1.000000e+00
  %263 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60
  store float %262, ptr %263, align 4, !tbaa !73
  %264 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 19
  %265 = load float, ptr %264, align 4, !tbaa !149
  %266 = fmul float %265, 2.000000e+00
  %267 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !150
  %268 = sitofp i32 %267 to float
  %269 = fdiv float %266, %268
  %270 = fadd float %269, -1.000000e+00
  %271 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60, i64 1
  store float %270, ptr %271, align 4, !tbaa !73
  %272 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60, i64 2
  store float 0.000000e+00, ptr %272, align 4, !tbaa !73
  %273 = load i16, ptr %16, align 8, !tbaa !105
  %274 = icmp eq i16 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %255
  %276 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 94
  %277 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 95, i64 1
  store float 0.000000e+00, ptr %276, align 8, !tbaa !73
  store float 0.000000e+00, ptr %277, align 4, !tbaa !73
  br label %278

278:                                              ; preds = %275, %255, %248
  %279 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 113
  %280 = load i8, ptr %279, align 1, !tbaa !151
  %281 = icmp eq i8 %280, 0
  %282 = and i32 %11, 2192
  %283 = icmp eq i32 %282, 0
  %284 = or i1 %283, %281
  br i1 %284, label %287, label %285

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %286, ptr noundef nonnull %286) #16
  br label %287

287:                                              ; preds = %285, %278
  ret void
}

; Function Attrs: optsize
declare ptr @RE_strandren_get_surfnor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !152 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #16
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: optsize
declare ptr @RE_strandren_get_winspeed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_strandren_get_mcol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_strandren_get_uv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !153 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #14
  store float %4, ptr %0, align 4, !tbaa !73
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #14
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #14
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_input_calc_viewco(ptr nocapture noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef %4, ptr noundef writeonly %5, ptr noundef %6, ptr noundef writeonly %7, ptr noundef writeonly %8) local_unnamed_addr #2 {
  %10 = alloca [3 x float], align 4
  tail call void @calc_view_vector(ptr noundef %4, float noundef %1, float noundef %2) #14
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !78
  %14 = icmp eq i16 %13, 3
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  %19 = fptosi float %3 to i32
  br i1 %18, label %21, label %20

20:                                               ; preds = %15
  tail call void @calc_renderco_ortho(ptr noundef %6, float noundef %1, float noundef %2, i32 noundef %19) #14
  br label %182

21:                                               ; preds = %15
  tail call void @calc_renderco_zbuf(ptr noundef %6, ptr noundef %4, i32 noundef %19) #14
  br label %182

22:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %26, i64 0, i32 11
  %28 = load i16, ptr %27, align 8, !tbaa !110
  %29 = and i16 %28, 3
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %26, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %32, ptr noundef nonnull %10) #14
  br label %33

33:                                               ; preds = %31, %22
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %35 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %34) #16
  %36 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %107, label %39

39:                                               ; preds = %33
  %40 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !148
  %41 = sitofp i32 %40 to float
  %42 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), align 8, !tbaa !73
  %43 = fmul float %42, %41
  %44 = fdiv float 2.000000e+00, %43
  %45 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !150
  %46 = sitofp i32 %45 to float
  %47 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 1, i64 1), align 4, !tbaa !73
  %48 = fmul float %47, %46
  %49 = fdiv float 2.000000e+00, %48
  %50 = call float @llvm.fmuladd.f32(float %41, float -5.000000e-01, float %1)
  %51 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3), align 8, !tbaa !73
  %52 = fneg float %51
  %53 = fdiv float %52, %42
  %54 = call float @llvm.fmuladd.f32(float %50, float %44, float %53)
  store float %54, ptr %6, align 4, !tbaa !73
  %55 = call float @llvm.fmuladd.f32(float %46, float -5.000000e-01, float %2)
  %56 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 1), align 4, !tbaa !73
  %57 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 1, i64 1), align 4, !tbaa !73
  %58 = fneg float %56
  %59 = fdiv float %58, %57
  %60 = call float @llvm.fmuladd.f32(float %55, float %49, float %59)
  %61 = getelementptr inbounds float, ptr %6, i64 1
  store float %60, ptr %61, align 4, !tbaa !73
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !73
  %64 = fcmp une float %63, 0.000000e+00
  br i1 %64, label %65, label %74

65:                                               ; preds = %39
  %66 = load float, ptr %34, align 4, !tbaa !73
  %67 = fneg float %66
  %68 = call float @llvm.fmuladd.f32(float %67, float %54, float %35)
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !73
  %71 = fneg float %70
  %72 = call float @llvm.fmuladd.f32(float %71, float %60, float %68)
  %73 = fdiv float %72, %63
  br label %74

74:                                               ; preds = %39, %65
  %75 = phi float [ %73, %65 ], [ 0.000000e+00, %39 ]
  %76 = getelementptr inbounds float, ptr %6, i64 2
  store float %75, ptr %76, align 4
  %77 = icmp ne ptr %7, null
  %78 = icmp ne ptr %8, null
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %181

80:                                               ; preds = %74
  store float %44, ptr %7, align 4, !tbaa !73
  %81 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %81, align 4, !tbaa !73
  %82 = load float, ptr %62, align 4, !tbaa !73
  %83 = fcmp une float %82, 0.000000e+00
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load float, ptr %34, align 4, !tbaa !73
  %86 = fneg float %85
  %87 = fmul float %44, %86
  %88 = fdiv float %87, %82
  br label %89

89:                                               ; preds = %80, %84
  %90 = phi float [ %88, %84 ], [ 0.000000e+00, %80 ]
  %91 = getelementptr inbounds float, ptr %7, i64 2
  store float %90, ptr %91, align 4
  store float 0.000000e+00, ptr %8, align 4, !tbaa !73
  %92 = getelementptr inbounds float, ptr %8, i64 1
  store float %49, ptr %92, align 4, !tbaa !73
  %93 = load float, ptr %62, align 4, !tbaa !73
  %94 = fcmp une float %93, 0.000000e+00
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !73
  %98 = fneg float %97
  %99 = fmul float %49, %98
  %100 = fdiv float %99, %93
  br label %101

101:                                              ; preds = %89, %95
  %102 = phi float [ %100, %95 ], [ 0.000000e+00, %89 ]
  %103 = getelementptr inbounds float, ptr %8, i64 2
  store float %102, ptr %103, align 4
  %104 = icmp eq ptr %5, null
  br i1 %104, label %181, label %105

105:                                              ; preds = %101
  %106 = load float, ptr %76, align 4, !tbaa !73
  br label %168

107:                                              ; preds = %33
  %108 = call fastcc float @dot_v3v3(ptr noundef nonnull %34, ptr noundef %4) #16
  %109 = fcmp une float %108, 0.000000e+00
  %110 = fdiv float %35, %108
  %111 = select i1 %109, float %110, float 0.000000e+00
  %112 = load float, ptr %4, align 4, !tbaa !73
  %113 = fmul float %112, %111
  store float %113, ptr %6, align 4, !tbaa !73
  %114 = getelementptr inbounds float, ptr %4, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !73
  %116 = fmul float %111, %115
  %117 = getelementptr inbounds float, ptr %6, i64 1
  store float %116, ptr %117, align 4, !tbaa !73
  %118 = getelementptr inbounds float, ptr %4, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !73
  %120 = fmul float %111, %119
  %121 = getelementptr inbounds float, ptr %6, i64 2
  store float %120, ptr %121, align 4, !tbaa !73
  %122 = icmp ne ptr %7, null
  %123 = icmp ne ptr %8, null
  %124 = and i1 %122, %123
  br i1 %124, label %125, label %181

125:                                              ; preds = %107
  %126 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 17), align 4, !tbaa !154
  %127 = load float, ptr %34, align 4, !tbaa !73
  %128 = fneg float %126
  %129 = call float @llvm.fmuladd.f32(float %128, float %127, float %108)
  %130 = fdiv float %35, %129
  %131 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 18), align 8, !tbaa !155
  %132 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !73
  %134 = fneg float %131
  %135 = call float @llvm.fmuladd.f32(float %134, float %133, float %108)
  %136 = fdiv float %35, %135
  %137 = load float, ptr %4, align 4, !tbaa !73
  %138 = fsub float %137, %126
  %139 = fneg float %138
  %140 = call float @llvm.fmuladd.f32(float %139, float %130, float %113)
  store float %140, ptr %7, align 4, !tbaa !73
  %141 = load float, ptr %117, align 4, !tbaa !73
  %142 = load float, ptr %114, align 4, !tbaa !73
  %143 = fneg float %142
  %144 = call float @llvm.fmuladd.f32(float %143, float %130, float %141)
  %145 = getelementptr inbounds float, ptr %7, i64 1
  store float %144, ptr %145, align 4, !tbaa !73
  %146 = load float, ptr %121, align 4, !tbaa !73
  %147 = load float, ptr %118, align 4, !tbaa !73
  %148 = fneg float %147
  %149 = call float @llvm.fmuladd.f32(float %148, float %130, float %146)
  %150 = getelementptr inbounds float, ptr %7, i64 2
  store float %149, ptr %150, align 4, !tbaa !73
  %151 = load float, ptr %6, align 4, !tbaa !73
  %152 = load float, ptr %4, align 4, !tbaa !73
  %153 = fneg float %152
  %154 = call float @llvm.fmuladd.f32(float %153, float %136, float %151)
  store float %154, ptr %8, align 4, !tbaa !73
  %155 = load float, ptr %117, align 4, !tbaa !73
  %156 = load float, ptr %114, align 4, !tbaa !73
  %157 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 18), align 8, !tbaa !155
  %158 = fsub float %156, %157
  %159 = fneg float %158
  %160 = call float @llvm.fmuladd.f32(float %159, float %136, float %155)
  %161 = getelementptr inbounds float, ptr %8, i64 1
  store float %160, ptr %161, align 4, !tbaa !73
  %162 = load float, ptr %121, align 4, !tbaa !73
  %163 = load float, ptr %118, align 4, !tbaa !73
  %164 = fneg float %163
  %165 = call float @llvm.fmuladd.f32(float %164, float %136, float %162)
  %166 = getelementptr inbounds float, ptr %8, i64 2
  store float %165, ptr %166, align 4, !tbaa !73
  %167 = icmp eq ptr %5, null
  br i1 %167, label %181, label %168

168:                                              ; preds = %125, %105
  %169 = phi float [ %106, %105 ], [ %111, %125 ]
  %170 = phi float [ 0.000000e+00, %105 ], [ %111, %125 ]
  %171 = fcmp une float %169, 0.000000e+00
  %172 = fdiv float 1.000000e+00, %169
  %173 = select i1 %171, float %172, float %170
  %174 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 17), align 4, !tbaa !154
  %175 = fneg float %174
  %176 = fmul float %173, %175
  store float %176, ptr %5, align 4, !tbaa !73
  %177 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 18), align 8, !tbaa !155
  %178 = fneg float %177
  %179 = fmul float %173, %178
  %180 = getelementptr inbounds float, ptr %5, i64 1
  store float %179, ptr %180, align 4, !tbaa !73
  br label %181

181:                                              ; preds = %168, %107, %125, %74, %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  br label %182

182:                                              ; preds = %20, %21, %181
  %183 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 31
  %184 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 31, i64 2
  store float 0.000000e+00, ptr %184, align 8, !tbaa !73
  store <2 x float> zeroinitializer, ptr %183, align 8, !tbaa !73
  call fastcc void @normalize_v3(ptr noundef %4) #16
  ret void
}

; Function Attrs: optsize
declare void @calc_view_vector(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calc_renderco_ortho(ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calc_renderco_zbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_input_set_viewco(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #2 {
  %7 = insertelement <2 x float> poison, float %3, i64 0
  %8 = insertelement <2 x float> %7, float %4, i64 1
  %9 = fptosi <2 x float> %8 to <2 x i32>
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  store <2 x i32> %9, ptr %10, align 4, !tbaa !89
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106
  store float %1, ptr %11, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106, i64 1
  store float %2, ptr %12, align 4, !tbaa !73
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106, i64 2
  store float %5, ptr %13, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %15 = load i16, ptr %14, align 8, !tbaa !105
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17, %6
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Material, ptr %24, i64 0, i32 90
  %26 = load i16, ptr %25, align 4, !tbaa !104
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 90
  %30 = select i1 %28, ptr null, ptr %29
  br label %31

31:                                               ; preds = %21, %17
  %32 = phi ptr [ null, %17 ], [ %30, %21 ]
  %33 = phi ptr [ null, %17 ], [ %22, %21 ]
  %34 = phi ptr [ null, %17 ], [ %23, %21 ]
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  tail call void @shade_input_calc_viewco(ptr noundef nonnull %0, float noundef %3, float noundef %4, float noundef %5, ptr noundef nonnull %35, ptr noundef %32, ptr noundef nonnull %36, ptr noundef %33, ptr noundef %34) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_input_set_uv(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.VlakRen, ptr %8, i64 0, i32 7
  %10 = load i8, ptr %9, align 1, !tbaa !87
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 90
  %16 = load i16, ptr %15, align 4, !tbaa !104
  %17 = and i16 %16, 2048
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = and i32 %21, 4096
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %161, label %24

24:                                               ; preds = %19, %13, %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef %26) #16
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %28) #16
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %30) #16
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 11
  %34 = load i16, ptr %33, align 8, !tbaa !110
  %35 = and i16 %34, 3
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %38, ptr noundef nonnull %2) #14
  %39 = load ptr, ptr %31, align 8, !tbaa !91
  %40 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %39, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %40, ptr noundef nonnull %3) #14
  %41 = load ptr, ptr %31, align 8, !tbaa !91
  %42 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %41, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %42, ptr noundef nonnull %4) #14
  br label %43

43:                                               ; preds = %37, %24
  %44 = getelementptr inbounds %struct.VlakRen, ptr %8, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !156
  %46 = getelementptr inbounds %struct.VlakRen, ptr %8, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !157
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = call fastcc float @len_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %2) #16
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %52 = call fastcc float @len_v3v3(ptr noundef nonnull %51, ptr noundef nonnull %2) #16
  %53 = fcmp oeq float %50, 0.000000e+00
  %54 = fdiv float %52, %50
  %55 = fsub float 1.000000e+00, %54
  %56 = fneg float %55
  %57 = select i1 %53, float 0.000000e+00, float %56
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 24
  store float 0.000000e+00, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  store float %57, ptr %59, align 8
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %61 = load i16, ptr %60, align 8, !tbaa !105
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %160, label %63

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, i8 0, i64 16, i1 false)
  br label %160

65:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %66 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  call fastcc void @axis_dominant_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %66) #16
  %67 = load i32, ptr %5, align 4, !tbaa !89
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !73
  %71 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %68
  %72 = load float, ptr %71, align 4, !tbaa !73
  %73 = fsub float %70, %72
  %74 = load i32, ptr %6, align 4, !tbaa !89
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %75
  %77 = load float, ptr %76, align 4, !tbaa !73
  %78 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %75
  %79 = load float, ptr %78, align 4, !tbaa !73
  %80 = fsub float %77, %79
  %81 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %68
  %82 = load float, ptr %81, align 4, !tbaa !73
  %83 = fsub float %70, %82
  %84 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %75
  %85 = load float, ptr %84, align 4, !tbaa !73
  %86 = fsub float %77, %85
  %87 = fneg float %83
  %88 = fmul float %80, %87
  %89 = call float @llvm.fmuladd.f32(float %73, float %86, float %88)
  %90 = fcmp une float %89, 0.000000e+00
  %91 = fdiv float 1.000000e+00, %89
  %92 = select i1 %90, float %91, float 0.000000e+00
  %93 = fmul float %73, %92
  %94 = fmul float %80, %92
  %95 = fmul float %83, %92
  %96 = fmul float %86, %92
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 %68
  %98 = load float, ptr %97, align 4, !tbaa !73
  %99 = fsub float %98, %70
  %100 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 %75
  %101 = load float, ptr %100, align 4, !tbaa !73
  %102 = fsub float %101, %77
  %103 = fneg float %102
  %104 = fmul float %95, %103
  %105 = call float @llvm.fmuladd.f32(float %99, float %96, float %104)
  %106 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  store float %105, ptr %106, align 8, !tbaa !158
  %107 = load float, ptr %100, align 4, !tbaa !73
  %108 = fsub float %107, %77
  %109 = load float, ptr %97, align 4, !tbaa !73
  %110 = fsub float %109, %70
  %111 = fneg float %110
  %112 = fmul float %94, %111
  %113 = call float @llvm.fmuladd.f32(float %108, float %93, float %112)
  %114 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 24
  store float %113, ptr %114, align 4, !tbaa !159
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %116 = load i16, ptr %115, align 8, !tbaa !105
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %147, label %118

118:                                              ; preds = %65
  %119 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 %68
  %120 = load float, ptr %119, align 4, !tbaa !73
  %121 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 %75
  %122 = load float, ptr %121, align 4, !tbaa !73
  %123 = fneg float %122
  %124 = fmul float %95, %123
  %125 = call float @llvm.fmuladd.f32(float %120, float %96, float %124)
  %126 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  store float %125, ptr %126, align 8, !tbaa !160
  %127 = load float, ptr %121, align 4, !tbaa !73
  %128 = load float, ptr %119, align 4, !tbaa !73
  %129 = fneg float %128
  %130 = fmul float %94, %129
  %131 = call float @llvm.fmuladd.f32(float %127, float %93, float %130)
  %132 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  store float %131, ptr %132, align 4, !tbaa !161
  %133 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 %68
  %134 = load float, ptr %133, align 4, !tbaa !73
  %135 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 %75
  %136 = load float, ptr %135, align 4, !tbaa !73
  %137 = fneg float %136
  %138 = fmul float %95, %137
  %139 = call float @llvm.fmuladd.f32(float %134, float %96, float %138)
  %140 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 27
  store float %139, ptr %140, align 8, !tbaa !162
  %141 = load float, ptr %135, align 4, !tbaa !73
  %142 = load float, ptr %133, align 4, !tbaa !73
  %143 = fneg float %142
  %144 = fmul float %94, %143
  %145 = call float @llvm.fmuladd.f32(float %141, float %93, float %144)
  %146 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  store float %145, ptr %146, align 4, !tbaa !163
  br label %147

147:                                              ; preds = %118, %65
  %148 = fcmp olt float %105, -2.000000e+00
  br i1 %148, label %151, label %149

149:                                              ; preds = %147
  %150 = fcmp ogt float %105, 1.000000e+00
  br i1 %150, label %151, label %153

151:                                              ; preds = %149, %147
  %152 = phi float [ -2.000000e+00, %147 ], [ 1.000000e+00, %149 ]
  store float %152, ptr %106, align 8, !tbaa !158
  br label %153

153:                                              ; preds = %151, %149
  %154 = fcmp olt float %113, -2.000000e+00
  br i1 %154, label %157, label %155

155:                                              ; preds = %153
  %156 = fcmp ogt float %113, 1.000000e+00
  br i1 %156, label %157, label %159

157:                                              ; preds = %155, %153
  %158 = phi float [ -2.000000e+00, %153 ], [ 1.000000e+00, %155 ]
  store float %158, ptr %114, align 4, !tbaa !159
  br label %159

159:                                              ; preds = %157, %155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %160

160:                                              ; preds = %49, %63, %159
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  br label %161

161:                                              ; preds = %160, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @axis_dominant_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !164 {
  %4 = load float, ptr %2, align 4, !tbaa !73
  %5 = tail call float @llvm.fabs.f32(float %4)
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load <2 x float>, ptr %6, align 4, !tbaa !73
  %8 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %7)
  %9 = extractelement <2 x float> %8, i64 1
  %10 = fcmp ult float %9, %5
  %11 = extractelement <2 x float> %8, i64 0
  %12 = fcmp ult float %9, %11
  %13 = select i1 %10, i1 true, i1 %12
  %14 = fcmp ult float %11, %5
  %15 = fcmp ult float %11, %9
  %16 = or i1 %14, %15
  %17 = select i1 %13, i1 %16, i1 false
  %18 = zext i1 %17 to i32
  %19 = select i1 %13, i32 2, i32 1
  store i32 %18, ptr %0, align 4, !tbaa !89
  store i32 %19, ptr %1, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @shade_input_set_normals(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  %3 = load float, ptr %2, align 8, !tbaa !158
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 24
  %5 = load float, ptr %4, align 4, !tbaa !159
  %6 = fadd float %3, 1.000000e+00
  %7 = fadd float %6, %5
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 7
  store i16 0, ptr %8, align 8, !tbaa !109
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = getelementptr inbounds %struct.VlakRen, ptr %10, i64 0, i32 7
  %12 = load i8, ptr %11, align 1, !tbaa !87
  %13 = and i8 %12, 64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %18 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #16
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %1
  %21 = and i8 %12, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %79, label %29

23:                                               ; preds = %15
  tail call fastcc void @negate_v3(ptr noundef nonnull %16) #16
  store i16 1, ptr %8, align 8, !tbaa !109
  %24 = load ptr, ptr %9, align 8, !tbaa !90
  %25 = getelementptr inbounds %struct.VlakRen, ptr %24, i64 0, i32 7
  %26 = load i8, ptr %25, align 1, !tbaa !87
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %79, label %33

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20
  br label %37

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20
  tail call fastcc void @negate_v3(ptr noundef nonnull %34) #16
  tail call fastcc void @negate_v3(ptr noundef nonnull %35) #16
  tail call fastcc void @negate_v3(ptr noundef nonnull %36) #16
  br label %37

37:                                               ; preds = %29, %33
  %38 = phi ptr [ %36, %33 ], [ %32, %29 ]
  %39 = phi ptr [ %35, %33 ], [ %31, %29 ]
  %40 = phi ptr [ %34, %33 ], [ %30, %29 ]
  %41 = load float, ptr %38, align 4, !tbaa !73
  %42 = load float, ptr %40, align 4, !tbaa !73
  %43 = fneg float %3
  %44 = load float, ptr %39, align 4, !tbaa !73
  %45 = fneg float %5
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !73
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !73
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !73
  %53 = insertelement <2 x float> poison, float %42, i64 0
  %54 = insertelement <2 x float> %53, float %50, i64 1
  %55 = insertelement <2 x float> poison, float %43, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = fmul <2 x float> %54, %56
  %58 = insertelement <2 x float> poison, float %7, i64 0
  %59 = shufflevector <2 x float> %58, <2 x float> poison, <2 x i32> zeroinitializer
  %60 = insertelement <2 x float> poison, float %41, i64 0
  %61 = insertelement <2 x float> %60, float %48, i64 1
  %62 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %59, <2 x float> %61, <2 x float> %57)
  %63 = insertelement <2 x float> poison, float %45, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = insertelement <2 x float> poison, float %44, i64 0
  %66 = insertelement <2 x float> %65, float %52, i64 1
  %67 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %64, <2 x float> %66, <2 x float> %62)
  store <2 x float> %67, ptr %46, align 4, !tbaa !73
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !73
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !73
  %72 = fmul float %71, %43
  %73 = tail call float @llvm.fmuladd.f32(float %7, float %69, float %72)
  %74 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !73
  %76 = tail call float @llvm.fmuladd.f32(float %45, float %75, float %73)
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  store float %76, ptr %77, align 4, !tbaa !73
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %78, ptr noundef nonnull %46) #16
  tail call fastcc void @normalize_v3(ptr noundef nonnull %46) #16
  br label %83

79:                                               ; preds = %23, %20
  %80 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %80, ptr noundef nonnull %81) #16
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %82, ptr noundef nonnull %80) #16
  br label %83

83:                                               ; preds = %79, %37
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17
  %85 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %84, ptr noundef nonnull %85) #16
  %86 = load ptr, ptr %9, align 8, !tbaa !90
  %87 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 7
  %88 = load i8, ptr %87, align 1, !tbaa !87
  %89 = and i8 %88, 64
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %94 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %92, ptr noundef nonnull %93) #16
  %95 = fcmp olt float %94, 0.000000e+00
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  tail call void @shade_input_flip_normals(ptr noundef nonnull %0) #16
  br label %97

97:                                               ; preds = %91, %96, %83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @shade_input_flip_normals(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  tail call fastcc void @negate_v3(ptr noundef nonnull %2) #16
  %3 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  tail call fastcc void @negate_v3(ptr noundef nonnull %3) #16
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17
  tail call fastcc void @negate_v3(ptr noundef nonnull %4) #16
  %5 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  tail call fastcc void @negate_v3(ptr noundef nonnull %5) #16
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !109
  %8 = icmp eq i16 %7, 0
  %9 = zext i1 %8 to i16
  store i16 %9, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @shade_input_set_vertex_normals(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.VlakRen, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !87
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  %10 = load float, ptr %9, align 8, !tbaa !158
  %11 = fadd float %10, 1.000000e+00
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 24
  %13 = load float, ptr %12, align 4, !tbaa !159
  %14 = fadd float %11, %13
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20
  %18 = fneg float %10
  %19 = fneg float %13
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %21 = load <2 x float>, ptr %17, align 4, !tbaa !73
  %22 = load <2 x float>, ptr %15, align 4, !tbaa !73
  %23 = insertelement <2 x float> poison, float %18, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = fmul <2 x float> %22, %24
  %26 = insertelement <2 x float> poison, float %14, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %21, <2 x float> %25)
  %29 = load <2 x float>, ptr %16, align 4, !tbaa !73
  %30 = insertelement <2 x float> poison, float %19, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %29, <2 x float> %28)
  store <2 x float> %32, ptr %20, align 4, !tbaa !73
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !73
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !73
  %37 = fmul float %36, %18
  %38 = tail call float @llvm.fmuladd.f32(float %14, float %34, float %37)
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !73
  %41 = tail call float @llvm.fmuladd.f32(float %19, float %40, float %38)
  %42 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  store float %41, ptr %42, align 4, !tbaa !73
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %43, ptr noundef nonnull %20) #16
  tail call fastcc void @normalize_v3(ptr noundef nonnull %20) #16
  br label %48

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %45, ptr noundef nonnull %46) #16
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %45) #16
  br label %48

48:                                               ; preds = %44, %8
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %50) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_input_set_shade_texco(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  %16 = alloca [4 x float], align 16
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !97
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  %28 = load <2 x float>, ptr %27, align 8, !tbaa !73
  %29 = extractelement <2 x float> %28, i64 0
  %30 = fadd float %29, 1.000000e+00
  %31 = extractelement <2 x float> %28, i64 1
  %32 = fadd float %30, %31
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %34 = load i32, ptr %33, align 8, !tbaa !68
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.Material, ptr %35, i64 0, i32 90
  %37 = load i16, ptr %36, align 4, !tbaa !104
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !90
  %40 = getelementptr inbounds %struct.VlakRen, ptr %39, i64 0, i32 7
  %41 = load i8, ptr %40, align 1, !tbaa !87
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %103, label %44

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %46 = load i16, ptr %45, align 8, !tbaa !105
  %47 = icmp eq i16 %46, 0
  %48 = and i16 %37, 6
  %49 = icmp eq i16 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %103, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  %56 = load float, ptr %55, align 8, !tbaa !160
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  %58 = load float, ptr %54, align 4, !tbaa !73
  %59 = load float, ptr %52, align 4, !tbaa !73
  %60 = load float, ptr %53, align 4, !tbaa !73
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 1
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 1
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 1
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  %66 = load float, ptr %65, align 4, !tbaa !163
  %67 = load <2 x float>, ptr %57, align 4, !tbaa !73
  %68 = insertelement <2 x float> poison, float %56, i64 0
  %69 = insertelement <2 x float> %68, float %66, i64 1
  %70 = fadd <2 x float> %67, %69
  %71 = shufflevector <2 x float> %70, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %72 = insertelement <2 x float> %67, float %56, i64 0
  %73 = fneg <2 x float> %72
  %74 = shufflevector <2 x float> %73, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %75 = insertelement <4 x float> poison, float %59, i64 0
  %76 = insertelement <4 x float> poison, float %58, i64 0
  %77 = insertelement <2 x float> %67, float %66, i64 1
  %78 = fneg <2 x float> %77
  %79 = shufflevector <2 x float> %78, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %80 = insertelement <4 x float> poison, float %60, i64 0
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89, i64 1
  %82 = load <2 x float>, ptr %62, align 4, !tbaa !73
  %83 = load <2 x float>, ptr %63, align 4, !tbaa !73
  %84 = load <2 x float>, ptr %64, align 4, !tbaa !73
  %85 = shufflevector <2 x float> %83, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %86 = shufflevector <4 x float> %75, <4 x float> %85, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %87 = shufflevector <4 x float> %86, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %88 = fmul <4 x float> %87, %74
  %89 = shufflevector <2 x float> %82, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %90 = shufflevector <4 x float> %76, <4 x float> %89, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %91 = shufflevector <4 x float> %90, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %92 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> %91, <4 x float> %88)
  %93 = shufflevector <2 x float> %84, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %94 = shufflevector <4 x float> %80, <4 x float> %93, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %95 = shufflevector <4 x float> %94, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %96 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %79, <4 x float> %95, <4 x float> %92)
  store <4 x float> %96, ptr %61, align 8, !tbaa !73
  %97 = shufflevector <2 x float> %73, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %98 = fmul <2 x float> %83, %97
  %99 = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %100 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %99, <2 x float> %82, <2 x float> %98)
  %101 = shufflevector <2 x float> %78, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %102 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %101, <2 x float> %84, <2 x float> %100)
  store <2 x float> %102, ptr %81, align 4, !tbaa !73
  br label %103

103:                                              ; preds = %44, %51, %1
  %104 = and i32 %34, 201326592
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !165
  %108 = and i16 %107, 16
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %233, label %110

110:                                              ; preds = %106, %103
  %111 = select i1 %43, float 0xBFD5555560000000, float %31
  %112 = select i1 %43, float 0xBFD5555560000000, float %29
  %113 = select i1 %43, float 0x3FD5555560000000, float %32
  %114 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  store float 0.000000e+00, ptr %115, align 8, !tbaa !73
  %116 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 1
  store <2 x float> zeroinitializer, ptr %114, align 8, !tbaa !73
  %117 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67
  %118 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 2
  store float 0.000000e+00, ptr %118, align 8, !tbaa !73
  store <2 x float> zeroinitializer, ptr %117, align 8, !tbaa !73
  %119 = and i32 %34, 67108864
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %164, label %121

121:                                              ; preds = %110
  %122 = tail call ptr @RE_vertren_get_tangent(ptr noundef %20, ptr noundef %22, i32 noundef 0) #14
  %123 = tail call ptr @RE_vertren_get_tangent(ptr noundef %20, ptr noundef %24, i32 noundef 0) #14
  %124 = tail call ptr @RE_vertren_get_tangent(ptr noundef %20, ptr noundef %26, i32 noundef 0) #14
  %125 = icmp ne ptr %122, null
  %126 = icmp ne ptr %123, null
  %127 = select i1 %125, i1 %126, i1 false
  %128 = icmp ne ptr %124, null
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %164

130:                                              ; preds = %121
  %131 = load float, ptr %124, align 4, !tbaa !73
  %132 = load float, ptr %122, align 4, !tbaa !73
  %133 = fneg float %112
  %134 = fmul float %132, %133
  %135 = tail call float @llvm.fmuladd.f32(float %113, float %131, float %134)
  %136 = load float, ptr %123, align 4, !tbaa !73
  %137 = fneg float %111
  %138 = tail call float @llvm.fmuladd.f32(float %137, float %136, float %135)
  store float %138, ptr %114, align 8, !tbaa !73
  %139 = getelementptr inbounds float, ptr %124, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !73
  %141 = getelementptr inbounds float, ptr %122, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !73
  %143 = fmul float %142, %133
  %144 = tail call float @llvm.fmuladd.f32(float %113, float %140, float %143)
  %145 = getelementptr inbounds float, ptr %123, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !73
  %147 = tail call float @llvm.fmuladd.f32(float %137, float %146, float %144)
  store float %147, ptr %116, align 4, !tbaa !73
  %148 = getelementptr inbounds float, ptr %124, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !73
  %150 = getelementptr inbounds float, ptr %122, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !73
  %152 = fmul float %151, %133
  %153 = tail call float @llvm.fmuladd.f32(float %113, float %149, float %152)
  %154 = getelementptr inbounds float, ptr %123, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !73
  %156 = tail call float @llvm.fmuladd.f32(float %137, float %155, float %153)
  store float %156, ptr %115, align 8, !tbaa !73
  %157 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 11
  %158 = load i16, ptr %157, align 8, !tbaa !110
  %159 = and i16 %158, 3
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %130
  %162 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 10
  tail call void @mul_m3_v3(ptr noundef nonnull %162, ptr noundef nonnull %114) #14
  br label %163

163:                                              ; preds = %161, %130
  tail call fastcc void @normalize_v3(ptr noundef nonnull %114) #16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %117, ptr noundef nonnull %114) #16
  br label %164

164:                                              ; preds = %121, %163, %110
  %165 = and i32 %34, 134217728
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !165
  %169 = and i16 %168, 16
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %233, label %171

171:                                              ; preds = %167, %164
  %172 = load ptr, ptr %38, align 8, !tbaa !90
  %173 = tail call ptr @RE_vlakren_get_nmap_tangent(ptr noundef %20, ptr noundef %172, i32 noundef 0) #14
  %174 = icmp eq ptr %173, null
  br i1 %174, label %233, label %175

175:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %176 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 11
  %177 = load i16, ptr %176, align 8, !tbaa !99
  %178 = sext i16 %177 to i32
  store i32 %178, ptr %2, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %179 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 12
  %180 = load i16, ptr %179, align 2, !tbaa !100
  %181 = sext i16 %180 to i32
  store i32 %181, ptr %3, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %182 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 13
  %183 = load i16, ptr %182, align 4, !tbaa !101
  %184 = sext i16 %183 to i32
  store i32 %184, ptr %4, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  %185 = load ptr, ptr %38, align 8, !tbaa !90
  call void @vlr_set_uv_indices(ptr noundef %185, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %186 = load i32, ptr %2, align 4, !tbaa !89
  %187 = shl nsw i32 %186, 2
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, ptr %173, i64 %188
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %189) #16
  %190 = load i32, ptr %3, align 4, !tbaa !89
  %191 = shl nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, ptr %173, i64 %192
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %193) #16
  %194 = load i32, ptr %4, align 4, !tbaa !89
  %195 = shl nsw i32 %194, 2
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, ptr %173, i64 %196
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %197) #16
  %198 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 11
  %199 = load i16, ptr %198, align 8, !tbaa !110
  %200 = and i16 %199, 3
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %175
  %203 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 8
  call void @mul_mat3_m4_v3(ptr noundef nonnull %203, ptr noundef nonnull %5) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #16
  call void @mul_mat3_m4_v3(ptr noundef nonnull %203, ptr noundef nonnull %6) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #16
  call void @mul_mat3_m4_v3(ptr noundef nonnull %203, ptr noundef nonnull %7) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #16
  br label %204

204:                                              ; preds = %202, %175
  %205 = fneg float %112
  %206 = fneg float %111
  %207 = load <2 x float>, ptr %7, align 8, !tbaa !73
  %208 = load <2 x float>, ptr %5, align 8, !tbaa !73
  %209 = insertelement <2 x float> poison, float %205, i64 0
  %210 = shufflevector <2 x float> %209, <2 x float> poison, <2 x i32> zeroinitializer
  %211 = fmul <2 x float> %208, %210
  %212 = insertelement <2 x float> poison, float %113, i64 0
  %213 = shufflevector <2 x float> %212, <2 x float> poison, <2 x i32> zeroinitializer
  %214 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %213, <2 x float> %207, <2 x float> %211)
  %215 = load <2 x float>, ptr %6, align 8, !tbaa !73
  %216 = insertelement <2 x float> poison, float %206, i64 0
  %217 = shufflevector <2 x float> %216, <2 x float> poison, <2 x i32> zeroinitializer
  %218 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %217, <2 x float> %215, <2 x float> %214)
  store <2 x float> %218, ptr %117, align 8, !tbaa !73
  %219 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %220 = load float, ptr %219, align 8, !tbaa !73
  %221 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %222 = load float, ptr %221, align 8, !tbaa !73
  %223 = fmul float %222, %205
  %224 = call float @llvm.fmuladd.f32(float %113, float %220, float %223)
  %225 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %226 = load float, ptr %225, align 8, !tbaa !73
  %227 = call float @llvm.fmuladd.f32(float %206, float %226, float %224)
  store float %227, ptr %118, align 8, !tbaa !73
  %228 = or disjoint i32 %187, 3
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, ptr %173, i64 %229
  %231 = load float, ptr %230, align 4, !tbaa !73
  %232 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 3
  store float %231, ptr %232, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %233

233:                                              ; preds = %167, %204, %171, %106
  %234 = icmp sgt i32 %34, -1
  br i1 %234, label %251, label %235

235:                                              ; preds = %233
  %236 = load ptr, ptr %38, align 8, !tbaa !90
  %237 = call ptr @RE_vlakren_get_surfnor(ptr noundef %20, ptr noundef %236, i32 noundef 0) #14
  %238 = icmp eq ptr %237, null
  %239 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110
  br i1 %238, label %247, label %240

240:                                              ; preds = %235
  call fastcc void @copy_v3_v3(ptr noundef nonnull %239, ptr noundef nonnull %237) #16
  %241 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 11
  %242 = load i16, ptr %241, align 8, !tbaa !110
  %243 = and i16 %242, 3
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 10
  call void @mul_m3_v3(ptr noundef nonnull %246, ptr noundef nonnull %239) #14
  br label %249

247:                                              ; preds = %235
  %248 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %239, ptr noundef nonnull %248) #16
  br label %249

249:                                              ; preds = %240, %245, %247
  %250 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 111
  store float 0.000000e+00, ptr %250, align 4, !tbaa !124
  br label %251

251:                                              ; preds = %249, %233
  %252 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %253 = and i32 %252, 1048576
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %306, label %255

255:                                              ; preds = %251
  %256 = call ptr @RE_vertren_get_winspeed(ptr noundef %18, ptr noundef %22, i32 noundef 0) #14
  %257 = call ptr @RE_vertren_get_winspeed(ptr noundef %18, ptr noundef %24, i32 noundef 0) #14
  %258 = call ptr @RE_vertren_get_winspeed(ptr noundef %18, ptr noundef %26, i32 noundef 0) #14
  %259 = icmp ne ptr %256, null
  %260 = icmp ne ptr %257, null
  %261 = select i1 %259, i1 %260, i1 false
  %262 = icmp ne ptr %258, null
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %264, label %304

264:                                              ; preds = %255
  %265 = load float, ptr %258, align 4, !tbaa !73
  %266 = load float, ptr %256, align 4, !tbaa !73
  %267 = fneg float %29
  %268 = fmul float %266, %267
  %269 = call float @llvm.fmuladd.f32(float %32, float %265, float %268)
  %270 = load float, ptr %257, align 4, !tbaa !73
  %271 = fneg float %31
  %272 = call float @llvm.fmuladd.f32(float %271, float %270, float %269)
  %273 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69
  store float %272, ptr %273, align 4, !tbaa !73
  %274 = getelementptr inbounds float, ptr %258, i64 1
  %275 = load float, ptr %274, align 4, !tbaa !73
  %276 = getelementptr inbounds float, ptr %256, i64 1
  %277 = load float, ptr %276, align 4, !tbaa !73
  %278 = fmul float %277, %267
  %279 = call float @llvm.fmuladd.f32(float %32, float %275, float %278)
  %280 = getelementptr inbounds float, ptr %257, i64 1
  %281 = load float, ptr %280, align 4, !tbaa !73
  %282 = call float @llvm.fmuladd.f32(float %271, float %281, float %279)
  %283 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 1
  store float %282, ptr %283, align 4, !tbaa !73
  %284 = getelementptr inbounds float, ptr %258, i64 2
  %285 = load float, ptr %284, align 4, !tbaa !73
  %286 = getelementptr inbounds float, ptr %256, i64 2
  %287 = load float, ptr %286, align 4, !tbaa !73
  %288 = fmul float %287, %267
  %289 = call float @llvm.fmuladd.f32(float %32, float %285, float %288)
  %290 = getelementptr inbounds float, ptr %257, i64 2
  %291 = load float, ptr %290, align 4, !tbaa !73
  %292 = call float @llvm.fmuladd.f32(float %271, float %291, float %289)
  %293 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 2
  store float %292, ptr %293, align 4, !tbaa !73
  %294 = getelementptr inbounds float, ptr %258, i64 3
  %295 = load float, ptr %294, align 4, !tbaa !73
  %296 = getelementptr inbounds float, ptr %256, i64 3
  %297 = load float, ptr %296, align 4, !tbaa !73
  %298 = fmul float %297, %267
  %299 = call float @llvm.fmuladd.f32(float %32, float %295, float %298)
  %300 = getelementptr inbounds float, ptr %257, i64 3
  %301 = load float, ptr %300, align 4, !tbaa !73
  %302 = call float @llvm.fmuladd.f32(float %271, float %301, float %299)
  %303 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 3
  store float %302, ptr %303, align 4, !tbaa !73
  br label %306

304:                                              ; preds = %255
  %305 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %305, i8 0, i64 16, i1 false)
  br label %306

306:                                              ; preds = %264, %304, %251
  %307 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %308 = load i32, ptr %307, align 8, !tbaa !51
  %309 = and i32 %308, 4096
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %306
  %312 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !165
  %313 = and i16 %312, 256
  %314 = icmp eq i16 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %311, %306
  %316 = or i16 %37, 2064
  br label %317

317:                                              ; preds = %315, %311
  %318 = phi i16 [ %316, %315 ], [ %37, %311 ]
  %319 = zext i16 %318 to i32
  %320 = and i32 %319, 2048
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %975, label %322

322:                                              ; preds = %317
  %323 = and i32 %319, 1
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %426, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.VertRen, ptr %22, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !166
  %328 = icmp eq ptr %327, null
  br i1 %328, label %423, label %329

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.VertRen, ptr %24, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !166
  %332 = getelementptr inbounds %struct.VertRen, ptr %26, i64 0, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !166
  %334 = load float, ptr %333, align 4, !tbaa !73
  %335 = load float, ptr %327, align 4, !tbaa !73
  %336 = fneg float %29
  %337 = fmul float %335, %336
  %338 = call float @llvm.fmuladd.f32(float %32, float %334, float %337)
  %339 = load float, ptr %331, align 4, !tbaa !73
  %340 = fneg float %31
  %341 = call float @llvm.fmuladd.f32(float %340, float %339, float %338)
  %342 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56
  store float %341, ptr %342, align 4, !tbaa !73
  %343 = getelementptr inbounds float, ptr %333, i64 1
  %344 = load float, ptr %343, align 4, !tbaa !73
  %345 = getelementptr inbounds float, ptr %327, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !73
  %347 = fmul float %346, %336
  %348 = call float @llvm.fmuladd.f32(float %32, float %344, float %347)
  %349 = getelementptr inbounds float, ptr %331, i64 1
  %350 = load float, ptr %349, align 4, !tbaa !73
  %351 = call float @llvm.fmuladd.f32(float %340, float %350, float %348)
  %352 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56, i64 1
  store float %351, ptr %352, align 4, !tbaa !73
  %353 = getelementptr inbounds float, ptr %333, i64 2
  %354 = load float, ptr %353, align 4, !tbaa !73
  %355 = getelementptr inbounds float, ptr %327, i64 2
  %356 = load float, ptr %355, align 4, !tbaa !73
  %357 = fmul float %356, %336
  %358 = call float @llvm.fmuladd.f32(float %32, float %354, float %357)
  %359 = getelementptr inbounds float, ptr %331, i64 2
  %360 = load float, ptr %359, align 4, !tbaa !73
  %361 = call float @llvm.fmuladd.f32(float %340, float %360, float %358)
  %362 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56, i64 2
  store float %361, ptr %362, align 4, !tbaa !73
  %363 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %364 = load i16, ptr %363, align 8, !tbaa !105
  %365 = icmp eq i16 %364, 0
  br i1 %365, label %423, label %366

366:                                              ; preds = %329
  %367 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  %368 = load float, ptr %367, align 8, !tbaa !160
  %369 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  %370 = load float, ptr %369, align 4, !tbaa !161
  %371 = fadd float %368, %370
  %372 = load float, ptr %333, align 4, !tbaa !73
  %373 = load float, ptr %327, align 4, !tbaa !73
  %374 = fneg float %368
  %375 = fmul float %373, %374
  %376 = call float @llvm.fmuladd.f32(float %371, float %372, float %375)
  %377 = load float, ptr %331, align 4, !tbaa !73
  %378 = fneg float %370
  %379 = call float @llvm.fmuladd.f32(float %378, float %377, float %376)
  %380 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 80
  store float %379, ptr %380, align 8, !tbaa !73
  %381 = load float, ptr %343, align 4, !tbaa !73
  %382 = load float, ptr %345, align 4, !tbaa !73
  %383 = fmul float %382, %374
  %384 = call float @llvm.fmuladd.f32(float %371, float %381, float %383)
  %385 = load float, ptr %349, align 4, !tbaa !73
  %386 = call float @llvm.fmuladd.f32(float %378, float %385, float %384)
  %387 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 80, i64 1
  store float %386, ptr %387, align 4, !tbaa !73
  %388 = load float, ptr %353, align 4, !tbaa !73
  %389 = load float, ptr %355, align 4, !tbaa !73
  %390 = fmul float %389, %374
  %391 = call float @llvm.fmuladd.f32(float %371, float %388, float %390)
  %392 = load float, ptr %359, align 4, !tbaa !73
  %393 = call float @llvm.fmuladd.f32(float %378, float %392, float %391)
  %394 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 80, i64 2
  store float %393, ptr %394, align 8, !tbaa !73
  %395 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 27
  %396 = load float, ptr %395, align 8, !tbaa !162
  %397 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  %398 = load float, ptr %397, align 4, !tbaa !163
  %399 = fadd float %396, %398
  %400 = load float, ptr %333, align 4, !tbaa !73
  %401 = load float, ptr %327, align 4, !tbaa !73
  %402 = fneg float %396
  %403 = fmul float %401, %402
  %404 = call float @llvm.fmuladd.f32(float %399, float %400, float %403)
  %405 = load float, ptr %331, align 4, !tbaa !73
  %406 = fneg float %398
  %407 = call float @llvm.fmuladd.f32(float %406, float %405, float %404)
  %408 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 81
  store float %407, ptr %408, align 4, !tbaa !73
  %409 = load float, ptr %343, align 4, !tbaa !73
  %410 = load float, ptr %345, align 4, !tbaa !73
  %411 = fmul float %410, %402
  %412 = call float @llvm.fmuladd.f32(float %399, float %409, float %411)
  %413 = load float, ptr %349, align 4, !tbaa !73
  %414 = call float @llvm.fmuladd.f32(float %406, float %413, float %412)
  %415 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 81, i64 1
  store float %414, ptr %415, align 4, !tbaa !73
  %416 = load float, ptr %353, align 4, !tbaa !73
  %417 = load float, ptr %355, align 4, !tbaa !73
  %418 = fmul float %417, %402
  %419 = call float @llvm.fmuladd.f32(float %399, float %416, float %418)
  %420 = load float, ptr %359, align 4, !tbaa !73
  %421 = call float @llvm.fmuladd.f32(float %406, float %420, float %419)
  %422 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 81, i64 2
  store float %421, ptr %422, align 4, !tbaa !73
  br label %423

423:                                              ; preds = %329, %366, %325
  %424 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 70
  %425 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %424, ptr noundef nonnull %425) #16
  br label %426

426:                                              ; preds = %423, %322
  %427 = and i32 %319, 8
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %440, label %429

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 57
  %431 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %430, ptr noundef nonnull %431) #16
  call void @mul_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %430) #14
  %432 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %433 = load i16, ptr %432, align 8, !tbaa !105
  %434 = icmp eq i16 %433, 0
  br i1 %434, label %440, label %435

435:                                              ; preds = %429
  %436 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 82
  %437 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  call fastcc void @copy_v3_v3(ptr noundef nonnull %436, ptr noundef nonnull %437) #16
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %436) #14
  %438 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 83
  %439 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  call fastcc void @copy_v3_v3(ptr noundef nonnull %438, ptr noundef nonnull %439) #16
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %438) #14
  br label %440

440:                                              ; preds = %429, %435, %426
  %441 = and i32 %319, 8192
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %483, label %443

443:                                              ; preds = %440
  %444 = getelementptr inbounds %struct.VertRen, ptr %26, i64 0, i32 4
  %445 = load float, ptr %444, align 4, !tbaa !168
  %446 = getelementptr inbounds %struct.VertRen, ptr %22, i64 0, i32 4
  %447 = load float, ptr %446, align 4, !tbaa !168
  %448 = fneg float %29
  %449 = fmul float %447, %448
  %450 = call float @llvm.fmuladd.f32(float %32, float %445, float %449)
  %451 = getelementptr inbounds %struct.VertRen, ptr %24, i64 0, i32 4
  %452 = load float, ptr %451, align 4, !tbaa !168
  %453 = fneg float %31
  %454 = call float @llvm.fmuladd.f32(float %453, float %452, float %450)
  %455 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 64
  store float %454, ptr %455, align 4, !tbaa !131
  %456 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %457 = load i16, ptr %456, align 8, !tbaa !105
  %458 = icmp eq i16 %457, 0
  br i1 %458, label %483, label %459

459:                                              ; preds = %443
  %460 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  %461 = load float, ptr %460, align 8, !tbaa !160
  %462 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  %463 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 98
  %464 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  %465 = load float, ptr %464, align 4, !tbaa !163
  %466 = load <2 x float>, ptr %462, align 4, !tbaa !73
  %467 = insertelement <2 x float> poison, float %461, i64 0
  %468 = insertelement <2 x float> %467, float %465, i64 1
  %469 = fadd <2 x float> %466, %468
  %470 = insertelement <2 x float> %466, float %461, i64 0
  %471 = fneg <2 x float> %470
  %472 = insertelement <2 x float> poison, float %447, i64 0
  %473 = shufflevector <2 x float> %472, <2 x float> poison, <2 x i32> zeroinitializer
  %474 = fmul <2 x float> %473, %471
  %475 = insertelement <2 x float> poison, float %445, i64 0
  %476 = shufflevector <2 x float> %475, <2 x float> poison, <2 x i32> zeroinitializer
  %477 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %469, <2 x float> %476, <2 x float> %474)
  %478 = insertelement <2 x float> %466, float %465, i64 1
  %479 = fneg <2 x float> %478
  %480 = insertelement <2 x float> poison, float %452, i64 0
  %481 = shufflevector <2 x float> %480, <2 x float> poison, <2 x i32> zeroinitializer
  %482 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %479, <2 x float> %481, <2 x float> %477)
  store <2 x float> %482, ptr %463, align 8, !tbaa !73
  br label %483

483:                                              ; preds = %443, %459, %440
  %484 = and i32 %319, 16
  %485 = icmp eq i32 %484, 0
  %486 = and i32 %34, 2192
  %487 = icmp eq i32 %486, 0
  %488 = select i1 %485, i1 %487, i1 false
  br i1 %488, label %489, label %493

489:                                              ; preds = %483
  %490 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !165
  %491 = and i16 %490, 256
  %492 = icmp eq i16 %491, 0
  br i1 %492, label %923, label %493

493:                                              ; preds = %489, %483
  %494 = load ptr, ptr %38, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %495 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 11
  %496 = load i16, ptr %495, align 8, !tbaa !99
  %497 = sext i16 %496 to i32
  store i32 %497, ptr %9, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  %498 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 12
  %499 = load i16, ptr %498, align 2, !tbaa !100
  %500 = sext i16 %499 to i32
  store i32 %500, ptr %10, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  %501 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 13
  %502 = load i16, ptr %501, align 4, !tbaa !101
  %503 = sext i16 %502 to i32
  store i32 %503, ptr %11, align 4, !tbaa !89
  call void @vlr_set_uv_indices(ptr noundef %494, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #16
  %504 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 74
  store i32 0, ptr %504, align 8, !tbaa !135
  %505 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 75
  store i32 0, ptr %505, align 4, !tbaa !136
  %506 = getelementptr inbounds %struct.ObjectRen, ptr %20, i64 0, i32 25
  %507 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 76
  %508 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 77
  %509 = load <2 x i32>, ptr %506, align 8, !tbaa !89
  store <2 x i32> %509, ptr %507, align 8, !tbaa !89
  %510 = and i32 %34, 144
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %516

512:                                              ; preds = %493
  %513 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !165
  %514 = and i16 %513, 256
  %515 = icmp eq i16 %514, 0
  br i1 %515, label %630, label %516

516:                                              ; preds = %512, %493
  %517 = call ptr @RE_vlakren_get_mcol(ptr noundef nonnull %20, ptr noundef %494, i32 noundef 0, ptr noundef nonnull %8, i32 noundef 0) #14
  %518 = icmp eq ptr %517, null
  br i1 %518, label %610, label %519

519:                                              ; preds = %516
  %520 = load i32, ptr %9, align 4, !tbaa !89
  %521 = sext i32 %520 to i64
  %522 = load i32, ptr %10, align 4, !tbaa !89
  %523 = sext i32 %522 to i64
  %524 = load i32, ptr %11, align 4, !tbaa !89
  %525 = sext i32 %524 to i64
  %526 = fneg float %29
  %527 = fneg float %31
  br label %528

528:                                              ; preds = %519, %605
  %529 = phi i64 [ 0, %519 ], [ %606, %605 ]
  %530 = phi ptr [ %517, %519 ], [ %608, %605 ]
  %531 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %529
  %532 = load i32, ptr %505, align 4, !tbaa !136
  %533 = add nsw i32 %532, 1
  store i32 %533, ptr %505, align 4, !tbaa !136
  %534 = load ptr, ptr %8, align 8, !tbaa !95
  %535 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %529, i32 1
  store ptr %534, ptr %535, align 8, !tbaa !137
  %536 = getelementptr inbounds %struct.MCol, ptr %530, i64 %521
  %537 = getelementptr inbounds %struct.MCol, ptr %530, i64 %523
  %538 = getelementptr inbounds %struct.MCol, ptr %530, i64 %525
  %539 = load i8, ptr %536, align 1, !tbaa !139
  %540 = uitofp i8 %539 to float
  %541 = fdiv float %540, 2.550000e+02
  %542 = load i8, ptr %537, align 1, !tbaa !139
  %543 = uitofp i8 %542 to float
  %544 = fdiv float %543, 2.550000e+02
  %545 = load i8, ptr %538, align 1, !tbaa !139
  %546 = uitofp i8 %545 to float
  %547 = fdiv float %546, 2.550000e+02
  %548 = fmul float %541, %526
  %549 = call float @llvm.fmuladd.f32(float %32, float %547, float %548)
  %550 = call float @llvm.fmuladd.f32(float %527, float %544, float %549)
  %551 = getelementptr inbounds [4 x float], ptr %531, i64 0, i64 3
  store float %550, ptr %551, align 4, !tbaa !73
  %552 = getelementptr inbounds i8, ptr %538, i64 3
  %553 = load i8, ptr %552, align 1, !tbaa !139
  %554 = uitofp i8 %553 to float
  %555 = fmul float %32, %554
  %556 = getelementptr inbounds i8, ptr %536, i64 3
  %557 = load i8, ptr %556, align 1, !tbaa !139
  %558 = uitofp i8 %557 to float
  %559 = fmul float %526, %558
  %560 = fmul float %541, %559
  %561 = call float @llvm.fmuladd.f32(float %555, float %547, float %560)
  %562 = getelementptr inbounds i8, ptr %537, i64 3
  %563 = load i8, ptr %562, align 1, !tbaa !139
  %564 = uitofp i8 %563 to float
  %565 = fmul float %527, %564
  %566 = call float @llvm.fmuladd.f32(float %565, float %544, float %561)
  %567 = fdiv float %566, 2.550000e+02
  store float %567, ptr %531, align 8, !tbaa !73
  %568 = getelementptr inbounds i8, ptr %538, i64 2
  %569 = load i8, ptr %568, align 1, !tbaa !139
  %570 = uitofp i8 %569 to float
  %571 = fmul float %32, %570
  %572 = getelementptr inbounds i8, ptr %536, i64 2
  %573 = load i8, ptr %572, align 1, !tbaa !139
  %574 = uitofp i8 %573 to float
  %575 = fmul float %526, %574
  %576 = fmul float %541, %575
  %577 = call float @llvm.fmuladd.f32(float %571, float %547, float %576)
  %578 = getelementptr inbounds i8, ptr %537, i64 2
  %579 = load i8, ptr %578, align 1, !tbaa !139
  %580 = uitofp i8 %579 to float
  %581 = fmul float %527, %580
  %582 = call float @llvm.fmuladd.f32(float %581, float %544, float %577)
  %583 = fdiv float %582, 2.550000e+02
  %584 = getelementptr inbounds [4 x float], ptr %531, i64 0, i64 1
  store float %583, ptr %584, align 4, !tbaa !73
  %585 = getelementptr inbounds i8, ptr %538, i64 1
  %586 = load i8, ptr %585, align 1, !tbaa !139
  %587 = uitofp i8 %586 to float
  %588 = fmul float %32, %587
  %589 = getelementptr inbounds i8, ptr %536, i64 1
  %590 = load i8, ptr %589, align 1, !tbaa !139
  %591 = uitofp i8 %590 to float
  %592 = fmul float %526, %591
  %593 = fmul float %541, %592
  %594 = call float @llvm.fmuladd.f32(float %588, float %547, float %593)
  %595 = getelementptr inbounds i8, ptr %537, i64 1
  %596 = load i8, ptr %595, align 1, !tbaa !139
  %597 = uitofp i8 %596 to float
  %598 = fmul float %527, %597
  %599 = call float @llvm.fmuladd.f32(float %598, float %544, float %594)
  %600 = fdiv float %599, 2.550000e+02
  %601 = getelementptr inbounds [4 x float], ptr %531, i64 0, i64 2
  store float %600, ptr %601, align 8, !tbaa !73
  %602 = fcmp une float %550, 0.000000e+00
  br i1 %602, label %603, label %605

603:                                              ; preds = %528
  %604 = fdiv float 1.000000e+00, %550
  call fastcc void @mul_v3_fl(ptr noundef nonnull %531, float noundef %604) #16
  br label %605

605:                                              ; preds = %603, %528
  %606 = add nuw i64 %529, 1
  %607 = trunc i64 %606 to i32
  %608 = call ptr @RE_vlakren_get_mcol(ptr noundef %20, ptr noundef %494, i32 noundef %607, ptr noundef nonnull %8, i32 noundef 0) #14
  %609 = icmp eq ptr %608, null
  br i1 %609, label %610, label %528, !llvm.loop !169

610:                                              ; preds = %605, %516
  %611 = load i32, ptr %505, align 4, !tbaa !136
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %624, label %613

613:                                              ; preds = %610
  %614 = load i32, ptr %508, align 4, !tbaa !141
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %615
  %617 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %618 = load <2 x float>, ptr %616, align 8, !tbaa !73
  store <2 x float> %618, ptr %617, align 8, !tbaa !73
  %619 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %615, i32 0, i64 2
  %620 = load float, ptr %619, align 8, !tbaa !73
  %621 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  store float %620, ptr %621, align 8, !tbaa !73
  %622 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %615, i32 0, i64 3
  %623 = load float, ptr %622, align 4, !tbaa !73
  br label %627

624:                                              ; preds = %610
  %625 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  store <2 x float> zeroinitializer, ptr %625, align 8, !tbaa !73
  %626 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  store float 0.000000e+00, ptr %626, align 8, !tbaa !73
  br label %627

627:                                              ; preds = %624, %613
  %628 = phi float [ %623, %613 ], [ 1.000000e+00, %624 ]
  %629 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  store float %628, ptr %629, align 4, !tbaa !73
  br label %630

630:                                              ; preds = %627, %512
  %631 = call ptr @RE_vlakren_get_tface(ptr noundef %20, ptr noundef %494, i32 noundef 0, ptr noundef nonnull %8, i32 noundef 0) #14
  %632 = icmp eq ptr %631, null
  br i1 %632, label %901, label %633

633:                                              ; preds = %630
  %634 = load i32, ptr %9, align 4, !tbaa !89
  %635 = sext i32 %634 to i64
  %636 = load i32, ptr %10, align 4, !tbaa !89
  %637 = sext i32 %636 to i64
  %638 = load i32, ptr %11, align 4, !tbaa !89
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %641 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %642 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %643 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 8
  %644 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3
  %645 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 3
  %646 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 1
  %647 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 1
  %648 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  %649 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 1
  %650 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %651 = fneg float %29
  %652 = fneg float %31
  %653 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  %654 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  %655 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 27
  %656 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  %657 = and i32 %34, 2048
  %658 = icmp eq i32 %657, 0
  %659 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  br label %660

660:                                              ; preds = %633, %896
  %661 = phi i64 [ 0, %633 ], [ %897, %896 ]
  %662 = phi ptr [ %631, %633 ], [ %899, %896 ]
  %663 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %661
  %664 = getelementptr inbounds [4 x [2 x float]], ptr %662, i64 0, i64 %635
  %665 = getelementptr inbounds [4 x [2 x float]], ptr %662, i64 0, i64 %637
  %666 = getelementptr inbounds [4 x [2 x float]], ptr %662, i64 0, i64 %639
  %667 = load i32, ptr %504, align 8, !tbaa !135
  %668 = add nsw i32 %667, 1
  store i32 %668, ptr %504, align 8, !tbaa !135
  %669 = load ptr, ptr %8, align 8, !tbaa !95
  %670 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %661, i32 3
  store ptr %669, ptr %670, align 8, !tbaa !142
  %671 = load ptr, ptr %0, align 8, !tbaa !34
  %672 = getelementptr inbounds %struct.Material, ptr %671, i64 0, i32 81
  %673 = load i8, ptr %672, align 2, !tbaa !170
  %674 = and i8 %673, 1
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %815, label %676

676:                                              ; preds = %660
  %677 = load i32, ptr %640, align 8, !tbaa !50
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %815

679:                                              ; preds = %676
  %680 = load i32, ptr %641, align 4, !tbaa !171
  %681 = sitofp i32 %680 to float
  %682 = load i32, ptr %642, align 8, !tbaa !172
  %683 = sitofp i32 %682 to float
  %684 = load <2 x float>, ptr %664, align 4, !tbaa !73
  %685 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %684, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  %686 = load <2 x float>, ptr %665, align 4, !tbaa !73
  %687 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %686, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  %688 = load <2 x float>, ptr %666, align 4, !tbaa !73
  %689 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %688, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #15
  %690 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !148
  %691 = sitofp i32 %690 to float
  %692 = fmul float %691, 5.000000e-01
  %693 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !150
  %694 = sitofp i32 %693 to float
  %695 = fmul float %694, 5.000000e-01
  call void @zbuf_make_winmat(ptr noundef nonnull @R, ptr noundef nonnull %13) #14
  %696 = load ptr, ptr %17, align 8, !tbaa !91
  %697 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %696, i64 0, i32 11
  %698 = load i16, ptr %697, align 8, !tbaa !110
  %699 = and i16 %698, 3
  %700 = icmp eq i16 %699, 0
  br i1 %700, label %702, label %701

701:                                              ; preds = %679
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %643) #14
  br label %703

702:                                              ; preds = %679
  call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %13) #14
  br label %703

703:                                              ; preds = %702, %701
  call void @zbuf_render_project(ptr noundef nonnull %12, ptr noundef %22, ptr noundef nonnull %14) #14
  call void @zbuf_render_project(ptr noundef nonnull %12, ptr noundef %24, ptr noundef nonnull %15) #14
  call void @zbuf_render_project(ptr noundef nonnull %12, ptr noundef %26, ptr noundef nonnull %16) #14
  %704 = load <4 x float>, ptr %16, align 16
  %705 = shufflevector <4 x float> %704, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %706 = load float, ptr %644, align 4, !tbaa !73
  %707 = load float, ptr %14, align 16, !tbaa !73
  %708 = load float, ptr %645, align 4, !tbaa !73
  %709 = insertelement <2 x float> %705, float %707, i64 1
  %710 = insertelement <2 x float> poison, float %706, i64 0
  %711 = insertelement <2 x float> %710, float %708, i64 1
  %712 = fdiv <2 x float> %709, %711
  %713 = extractelement <2 x float> %712, i64 0
  %714 = shufflevector <2 x float> %712, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %715 = fsub <2 x float> %712, %714
  %716 = extractelement <2 x float> %715, i64 0
  %717 = load float, ptr %646, align 4, !tbaa !73
  %718 = load float, ptr %647, align 4, !tbaa !73
  %719 = fdiv float %718, %708
  %720 = load float, ptr %15, align 16, !tbaa !73
  %721 = load float, ptr %648, align 4, !tbaa !73
  %722 = fdiv float %720, %721
  %723 = fsub float %713, %722
  %724 = load float, ptr %649, align 4, !tbaa !73
  %725 = fdiv float %724, %721
  %726 = fneg float %723
  %727 = fdiv float %681, %692
  %728 = fadd float %727, -1.000000e+00
  %729 = insertelement <2 x float> poison, float %683, i64 0
  %730 = insertelement <2 x float> %729, float %717, i64 1
  %731 = insertelement <2 x float> poison, float %695, i64 0
  %732 = insertelement <2 x float> %731, float %706, i64 1
  %733 = fdiv <2 x float> %730, %732
  %734 = extractelement <2 x float> %733, i64 1
  %735 = fsub float %734, %719
  %736 = fsub float %734, %725
  %737 = fmul float %735, %726
  %738 = call float @llvm.fmuladd.f32(float %716, float %736, float %737)
  %739 = fcmp une float %738, 0.000000e+00
  %740 = fdiv float 1.000000e+00, %738
  %741 = select i1 %739, float %740, float 0.000000e+00
  %742 = fmul float %716, %741
  %743 = fmul float %735, %741
  %744 = fmul float %723, %741
  %745 = fmul float %736, %741
  %746 = extractelement <2 x float> %733, i64 0
  %747 = fadd float %746, -1.000000e+00
  %748 = fsub float %728, %713
  %749 = fsub float %747, %734
  %750 = fneg float %749
  %751 = fmul float %744, %750
  %752 = call float @llvm.fmuladd.f32(float %748, float %745, float %751)
  %753 = fneg float %748
  %754 = fmul float %743, %753
  %755 = call float @llvm.fmuladd.f32(float %749, float %742, float %754)
  %756 = fadd float %752, 1.000000e+00
  %757 = fadd float %755, %756
  %758 = fneg float %752
  %759 = fneg float %755
  %760 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %661, i32 2
  %761 = insertelement <2 x float> poison, float %758, i64 0
  %762 = shufflevector <2 x float> %761, <2 x float> poison, <2 x i32> zeroinitializer
  %763 = fmul <2 x float> %685, %762
  %764 = insertelement <2 x float> poison, float %757, i64 0
  %765 = shufflevector <2 x float> %764, <2 x float> poison, <2 x i32> zeroinitializer
  %766 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %765, <2 x float> %689, <2 x float> %763)
  %767 = insertelement <2 x float> poison, float %759, i64 0
  %768 = shufflevector <2 x float> %767, <2 x float> poison, <2 x i32> zeroinitializer
  %769 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %768, <2 x float> %687, <2 x float> %766)
  store <2 x float> %769, ptr %760, align 8, !tbaa !73
  %770 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %661, i32 2, i64 2
  store float 0.000000e+00, ptr %770, align 8, !tbaa !73
  %771 = load i16, ptr %650, align 8, !tbaa !105
  %772 = icmp eq i16 %771, 0
  br i1 %772, label %814, label %773

773:                                              ; preds = %703
  %774 = fneg float %743
  %775 = insertelement <2 x float> poison, float %745, i64 0
  %776 = insertelement <2 x float> %775, float %774, i64 1
  %777 = insertelement <2 x float> poison, float %692, i64 0
  %778 = shufflevector <2 x float> %777, <2 x float> poison, <2 x i32> zeroinitializer
  %779 = fdiv <2 x float> %776, %778
  %780 = fneg float %744
  %781 = insertelement <2 x float> poison, float %780, i64 0
  %782 = insertelement <2 x float> %781, float %742, i64 1
  %783 = shufflevector <2 x float> %731, <2 x float> poison, <2 x i32> zeroinitializer
  %784 = fdiv <2 x float> %782, %783
  %785 = extractelement <2 x float> %779, i64 0
  %786 = extractelement <2 x float> %779, i64 1
  %787 = fadd float %785, %786
  %788 = fneg float %785
  %789 = fneg float %786
  %790 = insertelement <2 x float> poison, float %788, i64 0
  %791 = shufflevector <2 x float> %790, <2 x float> poison, <2 x i32> zeroinitializer
  %792 = fmul <2 x float> %685, %791
  %793 = insertelement <2 x float> poison, float %787, i64 0
  %794 = shufflevector <2 x float> %793, <2 x float> poison, <2 x i32> zeroinitializer
  %795 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %794, <2 x float> %689, <2 x float> %792)
  %796 = insertelement <2 x float> poison, float %789, i64 0
  %797 = shufflevector <2 x float> %796, <2 x float> poison, <2 x i32> zeroinitializer
  %798 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %797, <2 x float> %687, <2 x float> %795)
  store <2 x float> %798, ptr %663, align 8, !tbaa !73
  %799 = extractelement <2 x float> %784, i64 0
  %800 = extractelement <2 x float> %784, i64 1
  %801 = fadd float %799, %800
  %802 = fneg float %799
  %803 = fneg float %800
  %804 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %661, i32 1
  %805 = insertelement <2 x float> poison, float %802, i64 0
  %806 = shufflevector <2 x float> %805, <2 x float> poison, <2 x i32> zeroinitializer
  %807 = fmul <2 x float> %685, %806
  %808 = insertelement <2 x float> poison, float %801, i64 0
  %809 = shufflevector <2 x float> %808, <2 x float> poison, <2 x i32> zeroinitializer
  %810 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %809, <2 x float> %689, <2 x float> %807)
  %811 = insertelement <2 x float> poison, float %803, i64 0
  %812 = shufflevector <2 x float> %811, <2 x float> poison, <2 x i32> zeroinitializer
  %813 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %812, <2 x float> %687, <2 x float> %810)
  store <2 x float> %813, ptr %804, align 4, !tbaa !73
  br label %814

814:                                              ; preds = %773, %703
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #15
  br label %896

815:                                              ; preds = %676, %660
  %816 = load float, ptr %666, align 4, !tbaa !73
  %817 = load float, ptr %664, align 4, !tbaa !73
  %818 = fmul float %817, %651
  %819 = call float @llvm.fmuladd.f32(float %32, float %816, float %818)
  %820 = load float, ptr %665, align 4, !tbaa !73
  %821 = call float @llvm.fmuladd.f32(float %652, float %820, float %819)
  %822 = call float @llvm.fmuladd.f32(float %821, float 2.000000e+00, float -1.000000e+00)
  %823 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %661, i32 2
  store float %822, ptr %823, align 8, !tbaa !73
  %824 = getelementptr inbounds float, ptr %666, i64 1
  %825 = load float, ptr %824, align 4, !tbaa !73
  %826 = getelementptr inbounds float, ptr %664, i64 1
  %827 = load float, ptr %826, align 4, !tbaa !73
  %828 = fmul float %827, %651
  %829 = call float @llvm.fmuladd.f32(float %32, float %825, float %828)
  %830 = getelementptr inbounds float, ptr %665, i64 1
  %831 = load float, ptr %830, align 4, !tbaa !73
  %832 = call float @llvm.fmuladd.f32(float %652, float %831, float %829)
  %833 = call float @llvm.fmuladd.f32(float %832, float 2.000000e+00, float -1.000000e+00)
  %834 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %661, i32 2, i64 1
  store float %833, ptr %834, align 4, !tbaa !73
  %835 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %661, i32 2, i64 2
  store float 0.000000e+00, ptr %835, align 8, !tbaa !73
  %836 = load i16, ptr %650, align 8, !tbaa !105
  %837 = icmp eq i16 %836, 0
  br i1 %837, label %880, label %838

838:                                              ; preds = %815
  %839 = load float, ptr %653, align 8, !tbaa !160
  %840 = load float, ptr %654, align 4, !tbaa !161
  %841 = fadd float %839, %840
  %842 = load float, ptr %666, align 4, !tbaa !73
  %843 = load float, ptr %664, align 4, !tbaa !73
  %844 = fneg float %839
  %845 = fmul float %843, %844
  %846 = call float @llvm.fmuladd.f32(float %841, float %842, float %845)
  %847 = load float, ptr %665, align 4, !tbaa !73
  %848 = fneg float %840
  %849 = call float @llvm.fmuladd.f32(float %848, float %847, float %846)
  %850 = fmul float %849, 2.000000e+00
  store float %850, ptr %663, align 8, !tbaa !73
  %851 = load float, ptr %824, align 4, !tbaa !73
  %852 = load float, ptr %826, align 4, !tbaa !73
  %853 = fmul float %852, %844
  %854 = call float @llvm.fmuladd.f32(float %841, float %851, float %853)
  %855 = load float, ptr %830, align 4, !tbaa !73
  %856 = call float @llvm.fmuladd.f32(float %848, float %855, float %854)
  %857 = fmul float %856, 2.000000e+00
  %858 = getelementptr inbounds [3 x float], ptr %663, i64 0, i64 1
  store float %857, ptr %858, align 4, !tbaa !73
  %859 = load float, ptr %655, align 8, !tbaa !162
  %860 = load float, ptr %656, align 4, !tbaa !163
  %861 = fadd float %859, %860
  %862 = load float, ptr %666, align 4, !tbaa !73
  %863 = load float, ptr %664, align 4, !tbaa !73
  %864 = fneg float %859
  %865 = fmul float %863, %864
  %866 = call float @llvm.fmuladd.f32(float %861, float %862, float %865)
  %867 = load float, ptr %665, align 4, !tbaa !73
  %868 = fneg float %860
  %869 = call float @llvm.fmuladd.f32(float %868, float %867, float %866)
  %870 = fmul float %869, 2.000000e+00
  %871 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %661, i32 1
  store float %870, ptr %871, align 4, !tbaa !73
  %872 = load float, ptr %824, align 4, !tbaa !73
  %873 = load float, ptr %826, align 4, !tbaa !73
  %874 = fmul float %873, %864
  %875 = call float @llvm.fmuladd.f32(float %861, float %872, float %874)
  %876 = load float, ptr %830, align 4, !tbaa !73
  %877 = call float @llvm.fmuladd.f32(float %868, float %876, float %875)
  %878 = fmul float %877, 2.000000e+00
  %879 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %661, i32 1, i64 1
  store float %878, ptr %879, align 4, !tbaa !73
  br label %880

880:                                              ; preds = %838, %815
  br i1 %658, label %896, label %881

881:                                              ; preds = %880
  %882 = load i32, ptr %506, align 8, !tbaa !145
  %883 = zext i32 %882 to i64
  %884 = icmp eq i64 %661, %883
  br i1 %884, label %885, label %896

885:                                              ; preds = %881
  br i1 %511, label %886, label %891

886:                                              ; preds = %885
  %887 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !165
  %888 = and i16 %887, 256
  %889 = icmp eq i16 %888, 0
  br i1 %889, label %890, label %891

890:                                              ; preds = %886
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %659, align 8, !tbaa !73
  br label %891

891:                                              ; preds = %890, %886, %885
  %892 = getelementptr inbounds %struct.MTFace, ptr %662, i64 0, i32 1
  %893 = load ptr, ptr %892, align 8, !tbaa !173
  %894 = icmp eq ptr %893, null
  br i1 %894, label %896, label %895

895:                                              ; preds = %891
  call void @render_realtime_texture(ptr noundef nonnull %0, ptr noundef nonnull %893) #14
  br label %896

896:                                              ; preds = %880, %881, %895, %891, %814
  %897 = add nuw i64 %661, 1
  %898 = trunc i64 %897 to i32
  %899 = call ptr @RE_vlakren_get_tface(ptr noundef %20, ptr noundef %494, i32 noundef %898, ptr noundef nonnull %8, i32 noundef 0) #14
  %900 = icmp eq ptr %899, null
  br i1 %900, label %901, label %660, !llvm.loop !175

901:                                              ; preds = %896, %630
  %902 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 13
  %903 = load float, ptr %902, align 8, !tbaa !73
  %904 = call float @llvm.fmuladd.f32(float %903, float 2.000000e+00, float -1.000000e+00)
  %905 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 71
  store float %904, ptr %905, align 8, !tbaa !73
  %906 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 13, i64 1
  %907 = load float, ptr %906, align 4, !tbaa !73
  %908 = call float @llvm.fmuladd.f32(float %907, float 2.000000e+00, float -1.000000e+00)
  %909 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 71, i64 1
  store float %908, ptr %909, align 4, !tbaa !73
  %910 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 71, i64 2
  store float 0.000000e+00, ptr %910, align 8, !tbaa !73
  %911 = load i32, ptr %504, align 8, !tbaa !135
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %913, label %922

913:                                              ; preds = %901
  %914 = fadd <2 x float> %28, <float 5.000000e-01, float 5.000000e-01>
  %915 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2
  %916 = fmul <2 x float> %914, <float 2.000000e+00, float 2.000000e+00>
  store <2 x float> %916, ptr %915, align 8, !tbaa !73
  %917 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2, i64 2
  store float 0.000000e+00, ptr %917, align 8, !tbaa !73
  %918 = and i32 %34, 2048
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %922, label %920

920:                                              ; preds = %913
  %921 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %921, align 8, !tbaa !73
  br label %922

922:                                              ; preds = %913, %920, %901
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %923

923:                                              ; preds = %922, %489
  %924 = and i32 %319, 4
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %935, label %926

926:                                              ; preds = %923
  %927 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %928 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59
  %929 = load <2 x float>, ptr %927, align 4, !tbaa !73
  %930 = fneg <2 x float> %929
  store <2 x float> %930, ptr %928, align 8, !tbaa !73
  %931 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %932 = load float, ptr %931, align 4, !tbaa !73
  %933 = fneg float %932
  %934 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59, i64 2
  store float %933, ptr %934, align 8, !tbaa !73
  br label %935

935:                                              ; preds = %926, %923
  %936 = and i32 %319, 16384
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %964, label %938

938:                                              ; preds = %935
  %939 = call ptr @RE_vertren_get_stress(ptr noundef %20, ptr noundef %22, i32 noundef 0) #14
  %940 = call ptr @RE_vertren_get_stress(ptr noundef %20, ptr noundef %24, i32 noundef 0) #14
  %941 = call ptr @RE_vertren_get_stress(ptr noundef %20, ptr noundef %26, i32 noundef 0) #14
  %942 = icmp ne ptr %939, null
  %943 = icmp ne ptr %940, null
  %944 = select i1 %942, i1 %943, i1 false
  %945 = icmp ne ptr %941, null
  %946 = select i1 %944, i1 %945, i1 false
  br i1 %946, label %947, label %962

947:                                              ; preds = %938
  %948 = load float, ptr %941, align 4, !tbaa !73
  %949 = load float, ptr %939, align 4, !tbaa !73
  %950 = fneg float %29
  %951 = fmul float %949, %950
  %952 = call float @llvm.fmuladd.f32(float %32, float %948, float %951)
  %953 = load float, ptr %940, align 4, !tbaa !73
  %954 = fneg float %31
  %955 = call float @llvm.fmuladd.f32(float %954, float %953, float %952)
  %956 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 68
  store float %955, ptr %956, align 8, !tbaa !176
  %957 = fcmp olt float %955, 1.000000e+00
  %958 = fadd float %955, -1.000000e+00
  br i1 %957, label %959, label %960

959:                                              ; preds = %947
  store float %958, ptr %956, align 8, !tbaa !176
  br label %964

960:                                              ; preds = %947
  %961 = fdiv float %958, %955
  store float %961, ptr %956, align 8, !tbaa !176
  br label %964

962:                                              ; preds = %938
  %963 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 68
  store float 0.000000e+00, ptr %963, align 8, !tbaa !176
  br label %964

964:                                              ; preds = %962, %960, %959, %935
  %965 = and i32 %319, 4096
  %966 = icmp ne i32 %965, 0
  %967 = and i32 %34, 67108864
  %968 = icmp eq i32 %967, 0
  %969 = select i1 %966, i1 %968, i1 false
  br i1 %969, label %970, label %975

970:                                              ; preds = %964
  %971 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %972 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  store float 0.000000e+00, ptr %972, align 8, !tbaa !73
  store <2 x float> zeroinitializer, ptr %971, align 8, !tbaa !73
  %973 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67
  %974 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 2
  store float 0.000000e+00, ptr %974, align 8, !tbaa !73
  store <2 x float> zeroinitializer, ptr %973, align 8, !tbaa !73
  br label %975

975:                                              ; preds = %964, %970, %317
  %976 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %977 = load i32, ptr %976, align 8, !tbaa !50
  %978 = icmp ne i32 %977, 0
  %979 = and i32 %319, 1024
  %980 = icmp eq i32 %979, 0
  %981 = or i1 %980, %978
  br i1 %981, label %1006, label %982

982:                                              ; preds = %975
  %983 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %984 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60
  %985 = load <2 x i32>, ptr %983, align 4, !tbaa !89
  %986 = sitofp <2 x i32> %985 to <2 x float>
  %987 = fmul <2 x float> %986, <float 2.000000e+00, float 2.000000e+00>
  %988 = load <2 x i32>, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !89
  %989 = sitofp <2 x i32> %988 to <2 x float>
  %990 = fdiv <2 x float> %987, %989
  %991 = fadd <2 x float> %990, <float -1.000000e+00, float -1.000000e+00>
  store <2 x float> %991, ptr %984, align 4, !tbaa !73
  %992 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60, i64 2
  store float 0.000000e+00, ptr %992, align 4, !tbaa !73
  %993 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %994 = load i16, ptr %993, align 8, !tbaa !105
  %995 = icmp eq i16 %994, 0
  br i1 %995, label %1006, label %996

996:                                              ; preds = %982
  %997 = extractelement <2 x float> %989, i64 0
  %998 = fdiv float 2.000000e+00, %997
  %999 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 94
  store float %998, ptr %999, align 8, !tbaa !73
  %1000 = extractelement <2 x float> %989, i64 1
  %1001 = fdiv float 2.000000e+00, %1000
  %1002 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 95
  %1003 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 95, i64 1
  store float %1001, ptr %1003, align 4, !tbaa !73
  %1004 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 94, i64 1
  store <2 x float> zeroinitializer, ptr %1004, align 4, !tbaa !73
  %1005 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 95, i64 2
  store float 0.000000e+00, ptr %1005, align 4, !tbaa !73
  store float 0.000000e+00, ptr %1002, align 4, !tbaa !73
  br label %1006

1006:                                             ; preds = %996, %982, %975
  %1007 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 113
  %1008 = load i8, ptr %1007, align 1, !tbaa !151
  %1009 = icmp eq i8 %1008, 0
  br i1 %1009, label %1019, label %1010

1010:                                             ; preds = %1006
  %1011 = and i32 %34, 2192
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %1017

1013:                                             ; preds = %1010
  %1014 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !165
  %1015 = and i16 %1014, 256
  %1016 = icmp eq i16 %1015, 0
  br i1 %1016, label %1019, label %1017

1017:                                             ; preds = %1013, %1010
  %1018 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1018, ptr noundef nonnull %1018) #16
  br label %1019

1019:                                             ; preds = %1013, %1017, %1006
  ret void
}

; Function Attrs: optsize
declare ptr @RE_vertren_get_tangent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_vlakren_get_nmap_tangent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_vlakren_get_surfnor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_vertren_get_winspeed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_vlakren_get_mcol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_vlakren_get_tface(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @zbuf_make_winmat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @zbuf_render_project(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @render_realtime_texture(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_vertren_get_stress(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_input_initialize(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %0, i8 0, i64 1472, i1 false)
  %5 = trunc i32 %3 to i16
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 115
  store i16 %5, ptr %6, align 4, !tbaa !177
  %7 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 20
  %8 = load i16, ptr %7, align 2, !tbaa !178
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  store i16 %8, ptr %9, align 2, !tbaa !180
  %10 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !181
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 5
  %13 = and i8 %12, 1
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 112
  store i8 %13, ptr %14, align 8, !tbaa !182
  %15 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 44), align 8, !tbaa !183
  %16 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %15) #14
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 113
  store i8 %16, ptr %17, align 1, !tbaa !151
  %18 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !184
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  store i32 %19, ptr %20, align 8, !tbaa !186
  %21 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 6
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 118
  %23 = load <2 x i32>, ptr %21, align 8, !tbaa !89
  store <2 x i32> %23, ptr %22, align 4, !tbaa !89
  %24 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !187
  %26 = xor i32 %25, -1
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  store i32 %26, ptr %27, align 4, !tbaa !188
  %28 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 9
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %30 = load <2 x ptr>, ptr %28, align 8, !tbaa !95
  %31 = shufflevector <2 x ptr> %30, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %31, ptr %29, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_sample_initialize(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %5 = tail call i16 @llvm.umax.i16(i16 %4, i16 1)
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = zext nneg i16 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %10
  %12 = trunc i64 %10 to i32
  tail call void @shade_input_initialize(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %2, i32 noundef %12) #16
  %13 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 3, i64 %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %13, i8 0, i64 212, i1 false)
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %16, label %9, !llvm.loop !189

16:                                               ; preds = %9, %3
  %17 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 1
  %18 = tail call i32 @get_sample_layers(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %17) #14
  ret void
}

; Function Attrs: optsize
declare i32 @get_sample_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_samples_do_AO(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !53
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %1
  %6 = and i32 %2, 65536
  %7 = icmp ne i32 %6, 0
  %8 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2
  %9 = icmp eq i16 %8, 1
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %5
  %12 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !79
  %13 = and i16 %12, 208
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 119
  %18 = load i32, ptr %17, align 8, !tbaa !51
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 120
  %23 = load i32, ptr %22, align 4, !tbaa !188
  %24 = or i32 %23, %18
  %25 = and i32 %24, 139328
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %30

27:                                               ; preds = %15
  %28 = and i32 %18, 139328
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %27, %21
  %31 = load i32, ptr %0, align 8, !tbaa !190
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30, %43
  %34 = phi i32 [ %44, %43 ], [ %31, %30 ]
  %35 = phi i32 [ %46, %43 ], [ 0, %30 ]
  %36 = phi ptr [ %45, %43 ], [ %16, %30 ]
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %36, i64 0, i32 21
  %38 = load i32, ptr %37, align 8, !tbaa !68
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  tail call void @ambient_occlusion(ptr noundef nonnull %36) #14
  %42 = load i32, ptr %0, align 8, !tbaa !190
  br label %43

43:                                               ; preds = %33, %41
  %44 = phi i32 [ %34, %33 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %36, i64 1
  %46 = add nuw nsw i32 %35, 1
  %47 = icmp slt i32 %46, %44
  br i1 %47, label %33, label %48, !llvm.loop !192

48:                                               ; preds = %43, %30, %21, %27, %5, %1, %11
  ret void
}

; Function Attrs: optsize
declare void @ambient_occlusion(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_samples_fill_with_ps(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  store i32 0, ptr %0, align 8, !tbaa !190
  %5 = getelementptr %struct.ShadeInput, ptr %0, i64 -1, i32 115
  %6 = icmp eq ptr %1, null
  br i1 %6, label %142, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %0, i64 136
  %9 = sitofp i32 %2 to float
  %10 = sitofp i32 %3 to float
  br label %11

11:                                               ; preds = %7, %137
  %12 = phi ptr [ %8, %7 ], [ %140, %137 ]
  %13 = phi ptr [ %1, %7 ], [ %139, %137 ]
  %14 = phi i64 [ 136, %7 ], [ %138, %137 ]
  %15 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !193
  %17 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !195
  tail call void @shade_input_set_triangle(ptr noundef nonnull %12, i32 noundef %16, i32 noundef %18, i32 poison) #16
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  %21 = icmp eq ptr %20, null
  br i1 %21, label %137, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 5
  %24 = load i16, ptr %23, align 8, !tbaa !196
  %25 = getelementptr inbounds %struct.VlakRen, ptr %20, i64 0, i32 7
  %26 = load i8, ptr %25, align 1, !tbaa !87
  %27 = and i8 %26, 8
  %28 = icmp eq i8 %27, 0
  %29 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !197
  br i1 %28, label %80, label %30

30:                                               ; preds = %22
  %31 = icmp sgt i16 %29, 0
  br i1 %31, label %32, label %129

32:                                               ; preds = %30
  %33 = zext i16 %24 to i32
  %34 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 3
  br label %35

35:                                               ; preds = %32, %73
  %36 = phi i16 [ %29, %32 ], [ %74, %73 ]
  %37 = phi i64 [ 0, %32 ], [ %77, %73 ]
  %38 = phi i16 [ 0, %32 ], [ %76, %73 ]
  %39 = phi i64 [ %14, %32 ], [ %75, %73 ]
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = trunc i64 %37 to i32
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %33
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %37
  %47 = load float, ptr %46, align 8, !tbaa !73
  %48 = fadd float %47, %9
  %49 = fadd float %48, 5.000000e-01
  %50 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %37, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !73
  %52 = fadd float %51, %10
  %53 = fadd float %52, 5.000000e-01
  %54 = icmp eq i16 %38, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %40, i64 -1
  tail call void @shade_input_copy_triangle(ptr noundef nonnull %40, ptr noundef nonnull %56) #16
  br label %57

57:                                               ; preds = %55, %45
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %40, i64 0, i32 105
  store i32 %42, ptr %58, align 4, !tbaa !198
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %40, i64 0, i32 114
  %60 = load i16, ptr %59, align 2, !tbaa !180
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !89
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %62, align 4, !tbaa !89
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %40, i64 0, i32 107
  store i32 %63, ptr %65, align 4, !tbaa !199
  %66 = load i32, ptr %34, align 8, !tbaa !200
  %67 = sitofp i32 %66 to float
  tail call void @shade_input_set_viewco(ptr noundef nonnull %40, float noundef %9, float noundef %10, float noundef %49, float noundef %53, float noundef %67) #16
  tail call void @shade_input_set_uv(ptr noundef nonnull %40) #16
  br i1 %54, label %68, label %69

68:                                               ; preds = %57
  tail call void @shade_input_set_normals(ptr noundef nonnull %40) #16
  br label %70

69:                                               ; preds = %57
  tail call void @shade_input_set_vertex_normals(ptr noundef nonnull %40) #16
  br label %70

70:                                               ; preds = %69, %68
  %71 = add nsw i64 %39, 1472
  %72 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !197
  br label %73

73:                                               ; preds = %35, %70
  %74 = phi i16 [ %72, %70 ], [ %36, %35 ]
  %75 = phi i64 [ %71, %70 ], [ %39, %35 ]
  %76 = phi i16 [ 1, %70 ], [ %38, %35 ]
  %77 = add nuw nsw i64 %37, 1
  %78 = sext i16 %74 to i64
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %35, label %129, !llvm.loop !201

80:                                               ; preds = %22
  %81 = icmp eq i16 %29, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !202
  %84 = getelementptr inbounds %struct.SampleTables, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !203
  %86 = zext i16 %24 to i64
  %87 = getelementptr inbounds i8, ptr %85, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !139
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 15
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds [16 x float], ptr %83, i64 0, i64 %91
  %93 = lshr i32 %89, 4
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds [16 x float], ptr %83, i64 0, i64 %94
  br label %104

96:                                               ; preds = %80
  %97 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 8), align 2, !tbaa !205
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %96
  %100 = sext i16 %97 to i64
  %101 = add nsw i64 %100, -1
  %102 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %101
  %103 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %101, i64 1
  br label %104

104:                                              ; preds = %82, %99
  %105 = phi ptr [ %103, %99 ], [ %95, %82 ]
  %106 = phi ptr [ %102, %99 ], [ %92, %82 ]
  %107 = load float, ptr %106, align 4, !tbaa !73
  %108 = fadd float %107, %9
  %109 = load float, ptr %105, align 4, !tbaa !73
  %110 = fadd float %109, %10
  br label %111

111:                                              ; preds = %104, %96
  %112 = phi float [ %9, %96 ], [ %108, %104 ]
  %113 = phi float [ %10, %96 ], [ %110, %104 ]
  %114 = fadd float %113, 5.000000e-01
  %115 = fadd float %112, 5.000000e-01
  %116 = zext i16 %24 to i32
  %117 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 105
  store i32 %116, ptr %117, align 4, !tbaa !198
  %118 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 114
  %119 = load i16, ptr %118, align 2, !tbaa !180
  %120 = sext i16 %119 to i64
  %121 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !89
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %121, align 4, !tbaa !89
  %124 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 107
  store i32 %122, ptr %124, align 4, !tbaa !199
  %125 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 3
  %126 = load i32, ptr %125, align 8, !tbaa !200
  %127 = sitofp i32 %126 to float
  tail call void @shade_input_set_viewco(ptr noundef nonnull %12, float noundef %9, float noundef %10, float noundef %115, float noundef %114, float noundef %127) #16
  tail call void @shade_input_set_uv(ptr noundef nonnull %12) #16
  tail call void @shade_input_set_normals(ptr noundef nonnull %12) #16
  %128 = add nsw i64 %14, 1472
  br label %129

129:                                              ; preds = %73, %30, %111
  %130 = phi i64 [ %128, %111 ], [ %14, %30 ], [ %75, %73 ]
  %131 = icmp eq i64 %130, 136
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = getelementptr i8, ptr %5, i64 %130
  %134 = load i16, ptr %133, align 4, !tbaa !177
  %135 = sext i16 %134 to i32
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr %0, align 8, !tbaa !190
  br label %137

137:                                              ; preds = %129, %132, %11
  %138 = phi i64 [ %14, %11 ], [ %130, %132 ], [ 136, %129 ]
  %139 = load ptr, ptr %13, align 8, !tbaa !206
  %140 = getelementptr inbounds i8, ptr %0, i64 %138
  %141 = icmp eq ptr %139, null
  br i1 %141, label %142, label %11, !llvm.loop !207

142:                                              ; preds = %137, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @shade_samples(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  tail call void @shade_samples_fill_with_ps(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  %5 = load i32, ptr %0, align 8, !tbaa !190
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 3
  tail call void @shade_samples_do_AO(ptr noundef nonnull %0) #16
  %10 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 119
  %11 = load i32, ptr %10, align 8, !tbaa !51
  %12 = and i32 %11, -264195
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !190
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %14, %17
  %18 = phi i32 [ %21, %17 ], [ 0, %14 ]
  %19 = phi ptr [ %23, %17 ], [ %9, %14 ]
  %20 = phi ptr [ %22, %17 ], [ %8, %14 ]
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %20) #16
  tail call void @shade_input_do_shade(ptr noundef nonnull %20, ptr noundef nonnull %19) #16
  %21 = add nuw nsw i32 %18, 1
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %20, i64 1
  %23 = getelementptr inbounds %struct.ShadeResult, ptr %19, i64 1
  %24 = load i32, ptr %0, align 8, !tbaa !190
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %17, label %44, !llvm.loop !208

26:                                               ; preds = %7
  %27 = and i32 %11, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %0, align 8, !tbaa !190
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29, %32
  %33 = phi i32 [ %40, %32 ], [ 0, %29 ]
  %34 = phi ptr [ %42, %32 ], [ %9, %29 ]
  %35 = phi ptr [ %41, %32 ], [ %8, %29 ]
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 29, i64 2
  %37 = load float, ptr %36, align 8, !tbaa !73
  %38 = fneg float %37
  %39 = getelementptr inbounds %struct.ShadeResult, ptr %34, i64 0, i32 4
  store float %38, ptr %39, align 4, !tbaa !82
  %40 = add nuw nsw i32 %33, 1
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 1
  %42 = getelementptr inbounds %struct.ShadeResult, ptr %34, i64 1
  %43 = icmp eq i32 %40, %30
  br i1 %43, label %44, label %32, !llvm.loop !209

44:                                               ; preds = %17, %32, %14, %29, %4, %26
  %45 = phi i32 [ 1, %26 ], [ 0, %4 ], [ 1, %29 ], [ 1, %14 ], [ 1, %32 ], [ 1, %17 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !210 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !211 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !73
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !73
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !73
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !212 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !73
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !213 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = load float, ptr %2, align 4, !tbaa !73
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !73
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !41, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !41, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !41, i64 1256, !41, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !41, i64 1336, !41, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !41, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!43, !40, i64 360}
!43 = !{!"Material", !44, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !45, i64 224, !46, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !41, i64 364, !41, i64 368, !40, i64 372, !40, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !37, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !41, i64 556, !41, i64 560, !37, i64 564, !41, i64 580, !41, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !41, i64 616, !41, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !47, i64 928}
!44 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!45 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!46 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!47 = !{!"ListBase", !36, i64 0, !36, i64 8}
!48 = !{!35, !39, i64 320}
!49 = !{!35, !41, i64 316}
!50 = !{!35, !39, i64 1408}
!51 = !{!35, !39, i64 1448}
!52 = !{!35, !39, i64 1412}
!53 = !{!54, !39, i64 1624}
!54 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !47, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !55, i64 156, !56, i64 172, !41, i64 188, !41, i64 192, !41, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !41, i64 544, !41, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !57, i64 1104, !64, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !47, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !41, i64 5680, !36, i64 5688, !47, i64 5696, !41, i64 5712, !41, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !47, i64 5752, !47, i64 5768, !47, i64 5784, !36, i64 5800, !47, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !47, i64 5872, !36, i64 5888, !47, i64 5896, !47, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !65, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!55 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!56 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!57 = !{!"RenderData", !58, i64 0, !36, i64 248, !36, i64 256, !61, i64 264, !62, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !41, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !56, i64 544, !56, i64 560, !55, i64 576, !47, i64 592, !40, i64 608, !40, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !39, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !41, i64 660, !41, i64 664, !40, i64 668, !40, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !41, i64 2528, !41, i64 2532, !40, i64 2536, !40, i64 2538, !41, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !39, i64 2576, !41, i64 2580, !37, i64 2584, !63, i64 2616, !39, i64 3976, !39, i64 3980}
!58 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !59, i64 24, !60, i64 184}
!59 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!60 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!61 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!62 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !41, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!63 = !{!"BakeData", !58, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!64 = !{!"World", !44, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!65 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !66, i64 48, !66, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !41, i64 144, !41, i64 148}
!66 = !{!"double", !37, i64 0}
!67 = !{!35, !41, i64 292}
!68 = !{!35, !39, i64 160}
!69 = !{!70, !41, i64 32}
!70 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!71 = !{!35, !39, i64 1444}
!72 = !{!"shadeinput.c:negate_v3_v3"}
!73 = !{!41, !41, i64 0}
!74 = !{!"shadeinput.c:negate_v3"}
!75 = !{!"shadeinput.c:madd_v3_v3fl"}
!76 = !{!43, !36, i64 768}
!77 = !{!43, !37, i64 543}
!78 = !{!43, !40, i64 128}
!79 = !{!54, !40, i64 5290}
!80 = !{!43, !39, i64 396}
!81 = !{!70, !41, i64 36}
!82 = !{!70, !41, i64 40}
!83 = !{!"shadeinput.c:copy_v4_v4"}
!84 = !{!"shadeinput.c:copy_v3_v3"}
!85 = !{!"shadeinput.c:len_v3"}
!86 = !{!"shadeinput.c:mul_v3_fl"}
!87 = !{!88, !37, i64 57}
!88 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!89 = !{!39, !39, i64 0}
!90 = !{!35, !36, i64 8}
!91 = !{!35, !36, i64 24}
!92 = !{!93, !36, i64 16}
!93 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !40, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!94 = !{!35, !36, i64 32}
!95 = !{!36, !36, i64 0}
!96 = !{!35, !36, i64 64}
!97 = !{!35, !36, i64 72}
!98 = !{!35, !36, i64 80}
!99 = !{!35, !40, i64 88}
!100 = !{!35, !40, i64 90}
!101 = !{!35, !40, i64 92}
!102 = !{!35, !36, i64 1464}
!103 = !{!88, !36, i64 48}
!104 = !{!43, !40, i64 588}
!105 = !{!35, !40, i64 96}
!106 = !{!43, !39, i64 400}
!107 = !{!43, !39, i64 408}
!108 = !{!35, !39, i64 164}
!109 = !{!35, !40, i64 56}
!110 = !{!93, !40, i64 216}
!111 = !{!"shadeinput.c:normalize_v3"}
!112 = !{!54, !36, i64 5800}
!113 = !{!35, !39, i64 40}
!114 = !{!115, !39, i64 84}
!115 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!116 = !{!117, !36, i64 8}
!117 = !{!"StrandRen", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32}
!118 = !{!119, !36, i64 48}
!119 = !{!"StrandBuffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !37, i64 96, !39, i64 160, !39, i64 164}
!120 = !{!"shadeinput.c:cross_v3_v3v3"}
!121 = !{!"shadeinput.c:dot_v3v3"}
!122 = !{!119, !36, i64 40}
!123 = !{!43, !41, i64 448}
!124 = !{!35, !41, i64 1428}
!125 = !{!117, !36, i64 0}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!129, !41, i64 0}
!129 = !{!"StrandPoint", !41, i64 0, !37, i64 4, !37, i64 16, !37, i64 28, !41, i64 40, !41, i64 44, !37, i64 48, !37, i64 60, !41, i64 72, !37, i64 76, !37, i64 88, !37, i64 100, !37, i64 116, !37, i64 132, !37, i64 144, !39, i64 156, !39, i64 160, !37, i64 164, !41, i64 180, !41, i64 184, !41, i64 188}
!130 = !{!129, !41, i64 40}
!131 = !{!35, !41, i64 428}
!132 = !{!129, !41, i64 72}
!133 = !{!35, !41, i64 1336}
!134 = !{!35, !41, i64 1340}
!135 = !{!35, !39, i64 1096}
!136 = !{!35, !39, i64 1100}
!137 = !{!138, !36, i64 16}
!138 = !{!"ShadeInputCol", !37, i64 0, !36, i64 16}
!139 = !{!37, !37, i64 0}
!140 = distinct !{!140, !127}
!141 = !{!35, !39, i64 1108}
!142 = !{!143, !36, i64 40}
!143 = !{!"ShadeInputUV", !37, i64 0, !37, i64 12, !37, i64 24, !36, i64 40}
!144 = !{!119, !39, i64 68}
!145 = !{!115, !39, i64 168}
!146 = distinct !{!146, !127}
!147 = !{!129, !41, i64 180}
!148 = !{!54, !39, i64 148}
!149 = !{!129, !41, i64 184}
!150 = !{!54, !39, i64 152}
!151 = !{!35, !37, i64 1433}
!152 = !{!"shadeinput.c:len_v3v3"}
!153 = !{!"shadeinput.c:srgb_to_linearrgb_v3_v3"}
!154 = !{!54, !41, i64 188}
!155 = !{!54, !41, i64 192}
!156 = !{!88, !36, i64 8}
!157 = !{!88, !36, i64 16}
!158 = !{!35, !41, i64 168}
!159 = !{!35, !41, i64 172}
!160 = !{!35, !41, i64 176}
!161 = !{!35, !41, i64 180}
!162 = !{!35, !41, i64 184}
!163 = !{!35, !41, i64 188}
!164 = !{!"shadeinput.c:axis_dominant_v3"}
!165 = !{!54, !40, i64 96}
!166 = !{!167, !36, i64 24}
!167 = !{!"VertRen", !37, i64 0, !37, i64 12, !36, i64 24, !39, i64 32, !41, i64 36, !39, i64 40}
!168 = !{!167, !41, i64 36}
!169 = distinct !{!169, !127}
!170 = !{!43, !37, i64 550}
!171 = !{!35, !39, i64 1380}
!172 = !{!35, !39, i64 1384}
!173 = !{!174, !36, i64 32}
!174 = !{!"MTFace", !37, i64 0, !36, i64 32, !37, i64 40, !37, i64 41, !40, i64 42, !40, i64 44, !40, i64 46}
!175 = distinct !{!175, !127}
!176 = !{!35, !41, i64 472}
!177 = !{!35, !40, i64 1436}
!178 = !{!179, !40, i64 146}
!179 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !47, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !55, i64 112, !39, i64 128, !39, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !36, i64 152}
!180 = !{!35, !40, i64 1434}
!181 = !{!54, !39, i64 1620}
!182 = !{!35, !37, i64 1432}
!183 = !{!54, !36, i64 1096}
!184 = !{!185, !39, i64 92}
!185 = !{!"RenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !36, i64 176, !47, i64 184}
!186 = !{!35, !39, i64 1440}
!187 = !{!185, !39, i64 112}
!188 = !{!35, !39, i64 1452}
!189 = distinct !{!189, !127}
!190 = !{!191, !39, i64 0}
!191 = !{!"ShadeSample", !39, i64 0, !37, i64 8, !37, i64 136, !37, i64 23688}
!192 = distinct !{!192, !127}
!193 = !{!194, !39, i64 8}
!194 = !{!"PixStr", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !40, i64 24, !40, i64 26}
!195 = !{!194, !39, i64 12}
!196 = !{!194, !40, i64 24}
!197 = !{!54, !40, i64 98}
!198 = !{!35, !39, i64 1388}
!199 = !{!35, !39, i64 1404}
!200 = !{!194, !39, i64 16}
!201 = distinct !{!201, !127}
!202 = !{!54, !36, i64 552}
!203 = !{!204, !36, i64 464}
!204 = !{!"SampleTables", !37, i64 0, !37, i64 64, !37, i64 136, !37, i64 208, !36, i64 464}
!205 = !{!54, !40, i64 6094}
!206 = !{!194, !36, i64 0}
!207 = distinct !{!207, !127}
!208 = distinct !{!208, !127}
!209 = distinct !{!209, !127}
!210 = !{!"shadeinput.c:normalize_v3_v3"}
!211 = !{!"shadeinput.c:mul_v3_v3fl"}
!212 = !{!"shadeinput.c:zero_v3"}
!213 = !{!"shadeinput.c:sub_v3_v3v3"}
