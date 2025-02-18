; ModuleID = 'blender/source/blender/render/intern/source/initrender.c'
source_filename = "blender/source/blender/render/intern/source/initrender.c"
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
%struct.SampleTables = type { [16 x float], [9 x ptr], [9 x ptr], [256 x i8], ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.CameraParams = type { i8, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, i32, float, float, float, %struct.rctf, [4 x [4 x float]] }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@make_sample_tables.firsttime = internal unnamed_addr global i1 false, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"sample tables\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"initfilt\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"Initfilt3\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"initgauss4\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"new part\00", align 1
@init_render_jit.jit = internal global [32 x [2 x float]] zeroinitializer, align 16
@init_render_jit.mblur_jit = internal global [32 x [2 x float]] zeroinitializer, align 16
@init_render_jit.lastjit = internal unnamed_addr global i32 0, align 4
@init_render_jit.last_mblur_jit = internal unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @RE_filter_value(i32 noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = fcmp olt float %1, 0.000000e+00
  %4 = fneg float %1
  %5 = select i1 %3, float %4, float %1
  switch i32 %0, label %102 [
    i32 0, label %6
    i32 1, label %9
    i32 5, label %13
    i32 6, label %19
    i32 2, label %48
    i32 3, label %63
    i32 4, label %82
  ]

6:                                                ; preds = %2
  %7 = fcmp ogt float %5, 1.000000e+00
  %8 = select i1 %7, float 0.000000e+00, float 1.000000e+00
  br label %102

9:                                                ; preds = %2
  %10 = fcmp ogt float %5, 1.000000e+00
  br i1 %10, label %102, label %11

11:                                               ; preds = %9
  %12 = fsub float 1.000000e+00, %5
  br label %102

13:                                               ; preds = %2
  %14 = fmul float %5, 0x3FF99999A0000000
  %15 = fmul float %14, %14
  %16 = tail call float @expf(float noundef %15) #12
  %17 = fdiv float 1.000000e+00, %16
  %18 = fadd float %17, 0xBF69D05BE0000000
  br label %102

19:                                               ; preds = %2
  %20 = fmul float %5, 0x3FF99999A0000000
  %21 = fcmp olt float %20, -2.000000e+00
  br i1 %21, label %102, label %22

22:                                               ; preds = %19
  %23 = fcmp olt float %20, -1.000000e+00
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = fneg float %20
  %26 = tail call float @llvm.fmuladd.f32(float %25, float 0xBFD8E38E60000000, float 2.000000e+00)
  %27 = tail call float @llvm.fmuladd.f32(float %25, float %26, float 0xC00AAAAAA0000000)
  %28 = tail call float @llvm.fmuladd.f32(float %25, float %27, float 0x3FFC71C720000000)
  br label %102

29:                                               ; preds = %22
  %30 = fcmp olt float %20, 0.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = fmul float %20, %20
  %33 = fneg float %20
  %34 = tail call float @llvm.fmuladd.f32(float %33, float 0x3FF2AAAAA0000000, float -2.000000e+00)
  %35 = tail call float @llvm.fmuladd.f32(float %32, float %34, float 0x3FEC71C720000000)
  br label %102

36:                                               ; preds = %29
  %37 = fcmp olt float %20, 1.000000e+00
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = fmul float %20, %20
  %40 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FF2AAAAA0000000, float -2.000000e+00)
  %41 = tail call float @llvm.fmuladd.f32(float %39, float %40, float 0x3FEC71C720000000)
  br label %102

42:                                               ; preds = %36
  %43 = fcmp olt float %20, 2.000000e+00
  br i1 %43, label %44, label %102

44:                                               ; preds = %42
  %45 = tail call float @llvm.fmuladd.f32(float %20, float 0xBFD8E38E60000000, float 2.000000e+00)
  %46 = tail call float @llvm.fmuladd.f32(float %20, float %45, float 0xC00AAAAAA0000000)
  %47 = tail call float @llvm.fmuladd.f32(float %20, float %46, float 0x3FFC71C720000000)
  br label %102

48:                                               ; preds = %2
  %49 = fmul float %5, 0x3FF99999A0000000
  %50 = fcmp olt float %49, 0.000000e+00
  %51 = fneg float %49
  %52 = select i1 %50, float %51, float %49
  %53 = fcmp olt float %52, 5.000000e-01
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = fneg float %52
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %52, float 7.500000e-01)
  br label %102

57:                                               ; preds = %48
  %58 = fcmp olt float %52, 1.500000e+00
  br i1 %58, label %59, label %102

59:                                               ; preds = %57
  %60 = fadd float %52, -1.500000e+00
  %61 = fmul float %60, 5.000000e-01
  %62 = fmul float %60, %61
  br label %102

63:                                               ; preds = %2
  %64 = fmul float %5, 0x3FF99999A0000000
  %65 = fcmp olt float %64, 0.000000e+00
  %66 = fneg float %64
  %67 = select i1 %65, float %66, float %64
  %68 = fcmp olt float %67, 1.000000e+00
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = fmul float %64, %64
  %71 = fmul float %67, 5.000000e-01
  %72 = fneg float %70
  %73 = tail call float @llvm.fmuladd.f32(float %71, float %70, float %72)
  %74 = fadd float %73, 0x3FE5555560000000
  br label %102

75:                                               ; preds = %63
  %76 = fcmp olt float %67, 2.000000e+00
  br i1 %76, label %77, label %102

77:                                               ; preds = %75
  %78 = fsub float 2.000000e+00, %67
  %79 = fmul float %78, %78
  %80 = fmul float %78, %79
  %81 = fdiv float %80, 6.000000e+00
  br label %102

82:                                               ; preds = %2
  %83 = fmul float %5, 0x3FF99999A0000000
  %84 = fmul float %83, %83
  %85 = fcmp olt float %83, 0.000000e+00
  %86 = fneg float %83
  %87 = select i1 %85, float %86, float %83
  %88 = fcmp olt float %87, 1.000000e+00
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = fmul float %84, 1.500000e+00
  %91 = fmul float %84, -2.500000e+00
  %92 = tail call float @llvm.fmuladd.f32(float %90, float %87, float %91)
  %93 = fadd float %92, 1.000000e+00
  br label %102

94:                                               ; preds = %82
  %95 = fcmp olt float %87, 2.000000e+00
  br i1 %95, label %96, label %102

96:                                               ; preds = %94
  %97 = fmul float %84, -5.000000e-01
  %98 = fmul float %84, 2.500000e+00
  %99 = tail call float @llvm.fmuladd.f32(float %97, float %87, float %98)
  %100 = tail call float @llvm.fmuladd.f32(float %87, float -4.000000e+00, float %99)
  %101 = fadd float %100, 2.000000e+00
  br label %102

102:                                              ; preds = %44, %42, %38, %31, %24, %19, %96, %94, %89, %77, %75, %69, %59, %57, %54, %2, %9, %6, %13, %11
  %103 = phi float [ %18, %13 ], [ %12, %11 ], [ %8, %6 ], [ 0.000000e+00, %9 ], [ 0.000000e+00, %2 ], [ %56, %54 ], [ %62, %59 ], [ 0.000000e+00, %57 ], [ %74, %69 ], [ %81, %77 ], [ 0.000000e+00, %75 ], [ %93, %89 ], [ %101, %96 ], [ 0.000000e+00, %94 ], [ %28, %24 ], [ %35, %31 ], [ %41, %38 ], [ %47, %44 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %42 ]
  ret float %103
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @free_sample_tables(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 38
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %15, %5 ], [ 0, %1 ]
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %8 = load ptr, ptr %2, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.SampleTables, ptr %8, i64 0, i32 1, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  tail call void %7(ptr noundef %10) #12
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %12 = load ptr, ptr %2, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.SampleTables, ptr %12, i64 0, i32 2, i64 %6
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  tail call void %11(ptr noundef %14) #12
  %15 = add nuw nsw i64 %6, 1
  %16 = icmp eq i64 %15, 9
  br i1 %16, label %17, label %5, !llvm.loop !57

17:                                               ; preds = %5
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %19 = load ptr, ptr %2, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.SampleTables, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  tail call void %18(ptr noundef %21) #12
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %23 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void %22(ptr noundef %23) #12
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @make_sample_tables(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = alloca [32 x float], align 16
  %3 = alloca [32 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  %4 = load i1, ptr @make_sample_tables.firsttime, align 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i1 true, ptr @make_sample_tables.firsttime, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 38
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ %20, %10 ], [ 0, %6 ]
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %13 = load ptr, ptr %7, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.SampleTables, ptr %13, i64 0, i32 1, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  tail call void %12(ptr noundef %15) #12
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %17 = load ptr, ptr %7, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.SampleTables, ptr %17, i64 0, i32 2, i64 %11
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  tail call void %16(ptr noundef %19) #12
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, 9
  br i1 %21, label %22, label %10, !llvm.loop !57

22:                                               ; preds = %10
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %24 = load ptr, ptr %7, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.SampleTables, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  tail call void %23(ptr noundef %26) #12
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %28 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void %27(ptr noundef %28) #12
  store ptr null, ptr %7, align 8, !tbaa !34
  br label %29

29:                                               ; preds = %6, %22
  %30 = load i32, ptr @init_render_jit.lastjit, align 4, !tbaa !62
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  %32 = load i16, ptr %31, align 2, !tbaa !63
  %33 = sext i16 %32 to i32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, ptr @init_render_jit.last_mblur_jit, align 4, !tbaa !62
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 62
  %38 = load i16, ptr %37, align 2, !tbaa !64
  %39 = sext i16 %38 to i32
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %35, %29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @init_render_jit.jit, i8 0, i64 256, i1 false)
  tail call void @BLI_jitter_init(ptr noundef nonnull @init_render_jit.jit, i32 noundef %33) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @init_render_jit.mblur_jit, i8 0, i64 256, i1 false)
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 62
  %43 = load i16, ptr %42, align 2, !tbaa !64
  %44 = sext i16 %43 to i32
  tail call void @BLI_jitter_init(ptr noundef nonnull @init_render_jit.mblur_jit, i32 noundef %44) #12
  br label %45

45:                                               ; preds = %35, %41
  %46 = load i16, ptr %31, align 2, !tbaa !63
  %47 = sext i16 %46 to i32
  store i32 %47, ptr @init_render_jit.lastjit, align 4, !tbaa !62
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %48, ptr noundef nonnull align 16 dereferenceable(256) @init_render_jit.jit, i64 256, i1 false)
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 62
  %50 = load i16, ptr %49, align 2, !tbaa !64
  %51 = sext i16 %50 to i32
  store i32 %51, ptr @init_render_jit.last_mblur_jit, align 4, !tbaa !62
  %52 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %52, ptr noundef nonnull align 16 dereferenceable(256) @init_render_jit.mblur_jit, i64 256, i1 false)
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %54 = load i16, ptr %53, align 2, !tbaa !65
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 29
  store i16 0, ptr %57, align 4, !tbaa !66
  br label %516

58:                                               ; preds = %45
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %60 = tail call ptr %59(i64 noundef 472, ptr noundef nonnull @.str) #12
  store ptr %60, ptr %7, align 8, !tbaa !34
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi i64 [ 0, %58 ], [ %69, %61 ]
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %64 = tail call ptr %63(i64 noundef 1024, ptr noundef nonnull @.str.1) #12
  %65 = getelementptr inbounds %struct.SampleTables, ptr %60, i64 0, i32 1, i64 %62
  store ptr %64, ptr %65, align 8, !tbaa !56
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %67 = tail call ptr %66(i64 noundef 1024, ptr noundef nonnull @.str.1) #12
  %68 = getelementptr inbounds %struct.SampleTables, ptr %60, i64 0, i32 2, i64 %62
  store ptr %67, ptr %68, align 8, !tbaa !56
  %69 = add nuw nsw i64 %62, 1
  %70 = icmp eq i64 %69, 9
  br i1 %70, label %71, label %61, !llvm.loop !67

71:                                               ; preds = %61, %112
  %72 = phi i64 [ %113, %112 ], [ 0, %61 ]
  %73 = getelementptr inbounds %struct.SampleTables, ptr %60, i64 0, i32 3, i64 %72
  %74 = trunc i64 %72 to i8
  %75 = and i8 %74, 1
  %76 = trunc i64 %72 to i8
  %77 = lshr i8 %76, 1
  %78 = and i8 %77, 1
  %79 = add nuw nsw i8 %78, %75
  %80 = trunc i64 %72 to i8
  %81 = lshr i8 %80, 2
  %82 = and i8 %81, 1
  %83 = add nuw nsw i8 %79, %82
  store i8 %83, ptr %73, align 1, !tbaa !68
  %84 = and i64 %72, 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %71
  %87 = load i8, ptr %73, align 1, !tbaa !68
  %88 = add i8 %87, 1
  store i8 %88, ptr %73, align 1, !tbaa !68
  br label %89

89:                                               ; preds = %86, %71
  %90 = and i64 %72, 16
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i8, ptr %73, align 1, !tbaa !68
  %94 = add i8 %93, 1
  store i8 %94, ptr %73, align 1, !tbaa !68
  br label %95

95:                                               ; preds = %92, %89
  %96 = and i64 %72, 32
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i8, ptr %73, align 1, !tbaa !68
  %100 = add i8 %99, 1
  store i8 %100, ptr %73, align 1, !tbaa !68
  br label %101

101:                                              ; preds = %98, %95
  %102 = and i64 %72, 64
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i8, ptr %73, align 1, !tbaa !68
  %106 = add i8 %105, 1
  store i8 %106, ptr %73, align 1, !tbaa !68
  br label %107

107:                                              ; preds = %104, %101
  %108 = icmp ult i64 %72, 128
  br i1 %108, label %112, label %109

109:                                              ; preds = %107
  %110 = load i8, ptr %73, align 1, !tbaa !68
  %111 = add i8 %110, 1
  store i8 %111, ptr %73, align 1, !tbaa !68
  br label %112

112:                                              ; preds = %107, %109
  %113 = add nuw nsw i64 %72, 1
  %114 = icmp eq i64 %113, 256
  br i1 %114, label %115, label %71, !llvm.loop !69

115:                                              ; preds = %112
  %116 = load i16, ptr %53, align 2, !tbaa !65
  %117 = zext nneg i16 %116 to i32
  %118 = shl nuw i32 1, %117
  %119 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %120 = sext i32 %118 to i64
  %121 = tail call ptr %119(i64 noundef %120, ptr noundef nonnull @.str.2) #12
  %122 = getelementptr inbounds %struct.SampleTables, ptr %60, i64 0, i32 4
  store ptr %121, ptr %122, align 8, !tbaa !60
  br label %123

123:                                              ; preds = %115, %123
  %124 = phi i64 [ 0, %115 ], [ %130, %123 ]
  %125 = trunc i64 %124 to i32
  %126 = sitofp i32 %125 to float
  %127 = fmul float %126, 6.250000e-02
  %128 = fadd float %127, 0xBFDCCCCCC0000000
  %129 = getelementptr inbounds [16 x float], ptr %60, i64 0, i64 %124
  store float %128, ptr %129, align 4, !tbaa !70
  %130 = add nuw nsw i64 %124, 1
  %131 = icmp eq i64 %130, 16
  br i1 %131, label %132, label %123, !llvm.loop !71

132:                                              ; preds = %123, %159
  %133 = phi float [ %156, %159 ], [ 0.000000e+00, %123 ]
  %134 = phi i32 [ %160, %159 ], [ -1, %123 ]
  br label %152

135:                                              ; preds = %159
  %136 = fdiv float 1.000000e+00, %156
  %137 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 8
  %138 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 1
  %139 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 9
  %140 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 2
  %141 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 10
  %142 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 3
  %143 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 11
  %144 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 4
  %145 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 12
  %146 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 5
  %147 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 13
  %148 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 6
  %149 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 14
  %150 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 7
  %151 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 15
  br label %162

152:                                              ; preds = %132, %152
  %153 = phi float [ %133, %132 ], [ %156, %152 ]
  %154 = phi i32 [ -1, %132 ], [ %157, %152 ]
  %155 = call fastcc float @calc_weight(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %154, i32 noundef %134)
  %156 = fadd float %153, %155
  %157 = add nsw i32 %154, 1
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %152, !llvm.loop !72

159:                                              ; preds = %152
  %160 = add nsw i32 %134, 1
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %135, label %132, !llvm.loop !73

162:                                              ; preds = %135, %287
  %163 = phi i64 [ -1, %135 ], [ %288, %287 ]
  %164 = mul nsw i64 %163, 3
  %165 = add nsw i64 %164, 4
  %166 = trunc i64 %163 to i32
  br label %167

167:                                              ; preds = %162, %284
  %168 = phi i64 [ -1, %162 ], [ %285, %284 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  %169 = trunc i64 %168 to i32
  %170 = call fastcc float @calc_weight(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %169, i32 noundef %166)
  br label %171

171:                                              ; preds = %167, %171
  %172 = phi i64 [ 0, %167 ], [ %177, %171 ]
  %173 = getelementptr inbounds [32 x float], ptr %3, i64 0, i64 %172
  %174 = load float, ptr %173, align 4, !tbaa !70
  %175 = fmul float %136, %174
  %176 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 %172
  store float %175, ptr %176, align 4, !tbaa !70
  %177 = add nuw nsw i64 %172, 1
  %178 = icmp eq i64 %177, 16
  br i1 %178, label %179, label %171, !llvm.loop !74

179:                                              ; preds = %171
  %180 = add nsw i64 %165, %168
  %181 = getelementptr inbounds %struct.SampleTables, ptr %60, i64 0, i32 1, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !56
  %183 = getelementptr inbounds %struct.SampleTables, ptr %60, i64 0, i32 2, i64 %180
  %184 = load ptr, ptr %183, align 8, !tbaa !56
  %185 = load float, ptr %2, align 16
  %186 = load float, ptr %137, align 16
  %187 = load float, ptr %138, align 4
  %188 = load float, ptr %139, align 4
  %189 = load float, ptr %140, align 8
  %190 = load float, ptr %141, align 8
  %191 = load float, ptr %142, align 4
  %192 = load float, ptr %143, align 4
  %193 = load float, ptr %144, align 16
  %194 = load float, ptr %145, align 16
  %195 = load float, ptr %146, align 4
  %196 = load float, ptr %147, align 4
  %197 = load float, ptr %148, align 8
  %198 = load float, ptr %149, align 8
  %199 = load float, ptr %150, align 4
  %200 = load float, ptr %151, align 4
  br label %201

201:                                              ; preds = %179, %281
  %202 = phi i64 [ 0, %179 ], [ %282, %281 ]
  %203 = and i64 %202, 1
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds float, ptr %182, i64 %202
  %207 = load float, ptr %206, align 4, !tbaa !70
  %208 = fadd float %185, %207
  store float %208, ptr %206, align 4, !tbaa !70
  %209 = getelementptr inbounds float, ptr %184, i64 %202
  %210 = load float, ptr %209, align 4, !tbaa !70
  %211 = fadd float %186, %210
  store float %211, ptr %209, align 4, !tbaa !70
  br label %212

212:                                              ; preds = %205, %201
  %213 = and i64 %202, 2
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds float, ptr %182, i64 %202
  %217 = load float, ptr %216, align 4, !tbaa !70
  %218 = fadd float %187, %217
  store float %218, ptr %216, align 4, !tbaa !70
  %219 = getelementptr inbounds float, ptr %184, i64 %202
  %220 = load float, ptr %219, align 4, !tbaa !70
  %221 = fadd float %188, %220
  store float %221, ptr %219, align 4, !tbaa !70
  br label %222

222:                                              ; preds = %215, %212
  %223 = and i64 %202, 4
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds float, ptr %182, i64 %202
  %227 = load float, ptr %226, align 4, !tbaa !70
  %228 = fadd float %189, %227
  store float %228, ptr %226, align 4, !tbaa !70
  %229 = getelementptr inbounds float, ptr %184, i64 %202
  %230 = load float, ptr %229, align 4, !tbaa !70
  %231 = fadd float %190, %230
  store float %231, ptr %229, align 4, !tbaa !70
  br label %232

232:                                              ; preds = %225, %222
  %233 = and i64 %202, 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds float, ptr %182, i64 %202
  %237 = load float, ptr %236, align 4, !tbaa !70
  %238 = fadd float %191, %237
  store float %238, ptr %236, align 4, !tbaa !70
  %239 = getelementptr inbounds float, ptr %184, i64 %202
  %240 = load float, ptr %239, align 4, !tbaa !70
  %241 = fadd float %192, %240
  store float %241, ptr %239, align 4, !tbaa !70
  br label %242

242:                                              ; preds = %235, %232
  %243 = and i64 %202, 16
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds float, ptr %182, i64 %202
  %247 = load float, ptr %246, align 4, !tbaa !70
  %248 = fadd float %193, %247
  store float %248, ptr %246, align 4, !tbaa !70
  %249 = getelementptr inbounds float, ptr %184, i64 %202
  %250 = load float, ptr %249, align 4, !tbaa !70
  %251 = fadd float %194, %250
  store float %251, ptr %249, align 4, !tbaa !70
  br label %252

252:                                              ; preds = %245, %242
  %253 = and i64 %202, 32
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %262, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds float, ptr %182, i64 %202
  %257 = load float, ptr %256, align 4, !tbaa !70
  %258 = fadd float %195, %257
  store float %258, ptr %256, align 4, !tbaa !70
  %259 = getelementptr inbounds float, ptr %184, i64 %202
  %260 = load float, ptr %259, align 4, !tbaa !70
  %261 = fadd float %196, %260
  store float %261, ptr %259, align 4, !tbaa !70
  br label %262

262:                                              ; preds = %255, %252
  %263 = and i64 %202, 64
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %272, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds float, ptr %182, i64 %202
  %267 = load float, ptr %266, align 4, !tbaa !70
  %268 = fadd float %197, %267
  store float %268, ptr %266, align 4, !tbaa !70
  %269 = getelementptr inbounds float, ptr %184, i64 %202
  %270 = load float, ptr %269, align 4, !tbaa !70
  %271 = fadd float %198, %270
  store float %271, ptr %269, align 4, !tbaa !70
  br label %272

272:                                              ; preds = %265, %262
  %273 = icmp ult i64 %202, 128
  br i1 %273, label %281, label %274

274:                                              ; preds = %272
  %275 = getelementptr inbounds float, ptr %182, i64 %202
  %276 = load float, ptr %275, align 4, !tbaa !70
  %277 = fadd float %199, %276
  store float %277, ptr %275, align 4, !tbaa !70
  %278 = getelementptr inbounds float, ptr %184, i64 %202
  %279 = load float, ptr %278, align 4, !tbaa !70
  %280 = fadd float %200, %279
  store float %280, ptr %278, align 4, !tbaa !70
  br label %281

281:                                              ; preds = %272, %274
  %282 = add nuw nsw i64 %202, 1
  %283 = icmp eq i64 %282, 256
  br i1 %283, label %284, label %201, !llvm.loop !75

284:                                              ; preds = %281
  %285 = add nsw i64 %168, 1
  %286 = icmp eq i64 %285, 2
  br i1 %286, label %287, label %167, !llvm.loop !76

287:                                              ; preds = %284
  %288 = add nsw i64 %163, 1
  %289 = icmp eq i64 %288, 2
  br i1 %289, label %290, label %162, !llvm.loop !77

290:                                              ; preds = %287
  %291 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %292 = tail call ptr %291(i64 noundef 1024, ptr noundef nonnull @.str.3) #12
  %293 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %294 = tail call ptr %293(i64 noundef 1024, ptr noundef nonnull @.str.3) #12
  %295 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %296 = tail call ptr %295(i64 noundef 1024, ptr noundef nonnull @.str.3) #12
  %297 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %298 = tail call ptr %297(i64 noundef 1024, ptr noundef nonnull @.str.3) #12
  %299 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 0, i64 1
  %300 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 8
  %301 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 8, i64 1
  %302 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 1
  %303 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 1, i64 1
  %304 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 9
  %305 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 9, i64 1
  %306 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 2
  %307 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 2, i64 1
  %308 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 10
  %309 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 10, i64 1
  %310 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 3
  %311 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 3, i64 1
  %312 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 11
  %313 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 11, i64 1
  %314 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 4
  %315 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 4, i64 1
  %316 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 12
  %317 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 12, i64 1
  %318 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 5
  %319 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 5, i64 1
  %320 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 13
  %321 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 13, i64 1
  %322 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 6
  %323 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 6, i64 1
  %324 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 14
  %325 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 14, i64 1
  %326 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 7
  %327 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 7, i64 1
  %328 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 15
  %329 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 15, i64 1
  br label %334

330:                                              ; preds = %466
  %331 = icmp sgt i32 %118, 1
  br i1 %331, label %332, label %511

332:                                              ; preds = %330
  %333 = zext nneg i32 %118 to i64
  br label %469

334:                                              ; preds = %290, %466
  %335 = phi i64 [ 0, %290 ], [ %467, %466 ]
  %336 = getelementptr inbounds float, ptr %294, i64 %335
  store float 0.000000e+00, ptr %336, align 4, !tbaa !70
  %337 = getelementptr inbounds float, ptr %292, i64 %335
  store float 0.000000e+00, ptr %337, align 4, !tbaa !70
  %338 = getelementptr inbounds float, ptr %298, i64 %335
  store float 0.000000e+00, ptr %338, align 4, !tbaa !70
  %339 = getelementptr inbounds float, ptr %296, i64 %335
  store float 0.000000e+00, ptr %339, align 4, !tbaa !70
  %340 = and i64 %335, 1
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %355, label %342

342:                                              ; preds = %334
  %343 = load float, ptr %48, align 8, !tbaa !70
  %344 = load float, ptr %337, align 4, !tbaa !70
  %345 = fadd float %343, %344
  store float %345, ptr %337, align 4, !tbaa !70
  %346 = load float, ptr %299, align 4, !tbaa !70
  %347 = load float, ptr %339, align 4, !tbaa !70
  %348 = fadd float %346, %347
  store float %348, ptr %339, align 4, !tbaa !70
  %349 = load float, ptr %300, align 8, !tbaa !70
  %350 = load float, ptr %336, align 4, !tbaa !70
  %351 = fadd float %349, %350
  store float %351, ptr %336, align 4, !tbaa !70
  %352 = load float, ptr %301, align 4, !tbaa !70
  %353 = load float, ptr %338, align 4, !tbaa !70
  %354 = fadd float %352, %353
  store float %354, ptr %338, align 4, !tbaa !70
  br label %355

355:                                              ; preds = %342, %334
  %356 = and i64 %335, 2
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %371, label %358

358:                                              ; preds = %355
  %359 = load float, ptr %302, align 8, !tbaa !70
  %360 = load float, ptr %337, align 4, !tbaa !70
  %361 = fadd float %359, %360
  store float %361, ptr %337, align 4, !tbaa !70
  %362 = load float, ptr %303, align 4, !tbaa !70
  %363 = load float, ptr %339, align 4, !tbaa !70
  %364 = fadd float %362, %363
  store float %364, ptr %339, align 4, !tbaa !70
  %365 = load float, ptr %304, align 8, !tbaa !70
  %366 = load float, ptr %336, align 4, !tbaa !70
  %367 = fadd float %365, %366
  store float %367, ptr %336, align 4, !tbaa !70
  %368 = load float, ptr %305, align 4, !tbaa !70
  %369 = load float, ptr %338, align 4, !tbaa !70
  %370 = fadd float %368, %369
  store float %370, ptr %338, align 4, !tbaa !70
  br label %371

371:                                              ; preds = %358, %355
  %372 = and i64 %335, 4
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %387, label %374

374:                                              ; preds = %371
  %375 = load float, ptr %306, align 8, !tbaa !70
  %376 = load float, ptr %337, align 4, !tbaa !70
  %377 = fadd float %375, %376
  store float %377, ptr %337, align 4, !tbaa !70
  %378 = load float, ptr %307, align 4, !tbaa !70
  %379 = load float, ptr %339, align 4, !tbaa !70
  %380 = fadd float %378, %379
  store float %380, ptr %339, align 4, !tbaa !70
  %381 = load float, ptr %308, align 8, !tbaa !70
  %382 = load float, ptr %336, align 4, !tbaa !70
  %383 = fadd float %381, %382
  store float %383, ptr %336, align 4, !tbaa !70
  %384 = load float, ptr %309, align 4, !tbaa !70
  %385 = load float, ptr %338, align 4, !tbaa !70
  %386 = fadd float %384, %385
  store float %386, ptr %338, align 4, !tbaa !70
  br label %387

387:                                              ; preds = %374, %371
  %388 = and i64 %335, 8
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %403, label %390

390:                                              ; preds = %387
  %391 = load float, ptr %310, align 8, !tbaa !70
  %392 = load float, ptr %337, align 4, !tbaa !70
  %393 = fadd float %391, %392
  store float %393, ptr %337, align 4, !tbaa !70
  %394 = load float, ptr %311, align 4, !tbaa !70
  %395 = load float, ptr %339, align 4, !tbaa !70
  %396 = fadd float %394, %395
  store float %396, ptr %339, align 4, !tbaa !70
  %397 = load float, ptr %312, align 8, !tbaa !70
  %398 = load float, ptr %336, align 4, !tbaa !70
  %399 = fadd float %397, %398
  store float %399, ptr %336, align 4, !tbaa !70
  %400 = load float, ptr %313, align 4, !tbaa !70
  %401 = load float, ptr %338, align 4, !tbaa !70
  %402 = fadd float %400, %401
  store float %402, ptr %338, align 4, !tbaa !70
  br label %403

403:                                              ; preds = %390, %387
  %404 = and i64 %335, 16
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %419, label %406

406:                                              ; preds = %403
  %407 = load float, ptr %314, align 8, !tbaa !70
  %408 = load float, ptr %337, align 4, !tbaa !70
  %409 = fadd float %407, %408
  store float %409, ptr %337, align 4, !tbaa !70
  %410 = load float, ptr %315, align 4, !tbaa !70
  %411 = load float, ptr %339, align 4, !tbaa !70
  %412 = fadd float %410, %411
  store float %412, ptr %339, align 4, !tbaa !70
  %413 = load float, ptr %316, align 8, !tbaa !70
  %414 = load float, ptr %336, align 4, !tbaa !70
  %415 = fadd float %413, %414
  store float %415, ptr %336, align 4, !tbaa !70
  %416 = load float, ptr %317, align 4, !tbaa !70
  %417 = load float, ptr %338, align 4, !tbaa !70
  %418 = fadd float %416, %417
  store float %418, ptr %338, align 4, !tbaa !70
  br label %419

419:                                              ; preds = %406, %403
  %420 = and i64 %335, 32
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %435, label %422

422:                                              ; preds = %419
  %423 = load float, ptr %318, align 8, !tbaa !70
  %424 = load float, ptr %337, align 4, !tbaa !70
  %425 = fadd float %423, %424
  store float %425, ptr %337, align 4, !tbaa !70
  %426 = load float, ptr %319, align 4, !tbaa !70
  %427 = load float, ptr %339, align 4, !tbaa !70
  %428 = fadd float %426, %427
  store float %428, ptr %339, align 4, !tbaa !70
  %429 = load float, ptr %320, align 8, !tbaa !70
  %430 = load float, ptr %336, align 4, !tbaa !70
  %431 = fadd float %429, %430
  store float %431, ptr %336, align 4, !tbaa !70
  %432 = load float, ptr %321, align 4, !tbaa !70
  %433 = load float, ptr %338, align 4, !tbaa !70
  %434 = fadd float %432, %433
  store float %434, ptr %338, align 4, !tbaa !70
  br label %435

435:                                              ; preds = %422, %419
  %436 = and i64 %335, 64
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %451, label %438

438:                                              ; preds = %435
  %439 = load float, ptr %322, align 8, !tbaa !70
  %440 = load float, ptr %337, align 4, !tbaa !70
  %441 = fadd float %439, %440
  store float %441, ptr %337, align 4, !tbaa !70
  %442 = load float, ptr %323, align 4, !tbaa !70
  %443 = load float, ptr %339, align 4, !tbaa !70
  %444 = fadd float %442, %443
  store float %444, ptr %339, align 4, !tbaa !70
  %445 = load float, ptr %324, align 8, !tbaa !70
  %446 = load float, ptr %336, align 4, !tbaa !70
  %447 = fadd float %445, %446
  store float %447, ptr %336, align 4, !tbaa !70
  %448 = load float, ptr %325, align 4, !tbaa !70
  %449 = load float, ptr %338, align 4, !tbaa !70
  %450 = fadd float %448, %449
  store float %450, ptr %338, align 4, !tbaa !70
  br label %451

451:                                              ; preds = %438, %435
  %452 = icmp ult i64 %335, 128
  br i1 %452, label %466, label %453

453:                                              ; preds = %451
  %454 = load float, ptr %326, align 8, !tbaa !70
  %455 = load float, ptr %337, align 4, !tbaa !70
  %456 = fadd float %454, %455
  store float %456, ptr %337, align 4, !tbaa !70
  %457 = load float, ptr %327, align 4, !tbaa !70
  %458 = load float, ptr %339, align 4, !tbaa !70
  %459 = fadd float %457, %458
  store float %459, ptr %339, align 4, !tbaa !70
  %460 = load float, ptr %328, align 8, !tbaa !70
  %461 = load float, ptr %336, align 4, !tbaa !70
  %462 = fadd float %460, %461
  store float %462, ptr %336, align 4, !tbaa !70
  %463 = load float, ptr %329, align 4, !tbaa !70
  %464 = load float, ptr %338, align 4, !tbaa !70
  %465 = fadd float %463, %464
  store float %465, ptr %338, align 4, !tbaa !70
  br label %466

466:                                              ; preds = %451, %453
  %467 = add nuw nsw i64 %335, 1
  %468 = icmp eq i64 %467, 256
  br i1 %468, label %330, label %334, !llvm.loop !78

469:                                              ; preds = %332, %469
  %470 = phi i64 [ %333, %332 ], [ %471, %469 ]
  %471 = add nsw i64 %470, -1
  %472 = and i64 %471, 255
  %473 = getelementptr inbounds %struct.SampleTables, ptr %60, i64 0, i32 3, i64 %472
  %474 = load i8, ptr %473, align 1, !tbaa !68
  %475 = zext i8 %474 to i32
  %476 = lshr i64 %471, 8
  %477 = and i64 %476, 16777215
  %478 = getelementptr inbounds %struct.SampleTables, ptr %60, i64 0, i32 3, i64 %477
  %479 = load i8, ptr %478, align 1, !tbaa !68
  %480 = zext i8 %479 to i32
  %481 = add nuw nsw i32 %480, %475
  %482 = sitofp i32 %481 to float
  %483 = getelementptr inbounds float, ptr %296, i64 %472
  %484 = load float, ptr %483, align 4, !tbaa !70
  %485 = getelementptr inbounds float, ptr %298, i64 %477
  %486 = load float, ptr %485, align 4, !tbaa !70
  %487 = fadd float %484, %486
  %488 = fmul float %487, 0x402FCCCCC0000000
  %489 = fdiv float %488, %482
  %490 = fadd float %489, 8.000000e+00
  %491 = fptosi float %490 to i32
  %492 = tail call i32 @llvm.smin.i32(i32 %491, i32 15)
  %493 = tail call i32 @llvm.smax.i32(i32 %492, i32 0)
  %494 = getelementptr inbounds float, ptr %292, i64 %472
  %495 = load float, ptr %494, align 4, !tbaa !70
  %496 = getelementptr inbounds float, ptr %294, i64 %477
  %497 = load float, ptr %496, align 4, !tbaa !70
  %498 = fadd float %495, %497
  %499 = fmul float %498, 0x402FCCCCC0000000
  %500 = fdiv float %499, %482
  %501 = fadd float %500, 8.000000e+00
  %502 = fptosi float %501 to i32
  %503 = tail call i32 @llvm.smin.i32(i32 %502, i32 15)
  %504 = tail call i32 @llvm.smax.i32(i32 %503, i32 0)
  %505 = shl nuw nsw i32 %493, 4
  %506 = add nuw nsw i32 %504, %505
  %507 = trunc i32 %506 to i8
  %508 = load ptr, ptr %122, align 8, !tbaa !60
  %509 = getelementptr inbounds i8, ptr %508, i64 %471
  store i8 %507, ptr %509, align 1, !tbaa !68
  %510 = icmp sgt i64 %470, 2
  br i1 %510, label %469, label %511, !llvm.loop !79

511:                                              ; preds = %469, %330
  %512 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %512(ptr noundef %292) #12
  %513 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %513(ptr noundef %294) #12
  %514 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %514(ptr noundef %296) #12
  %515 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %515(ptr noundef %298) #12
  br label %516

516:                                              ; preds = %511, %56
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define internal fastcc float @calc_weight(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %6 = load i16, ptr %5, align 2, !tbaa !65
  %7 = icmp sgt i16 %6, 0
  br i1 %7, label %8, label %148

8:                                                ; preds = %4
  %9 = sitofp i32 %2 to float
  %10 = sitofp i32 %3 to float
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 29
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 66
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 66
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 66
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 66
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 66
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 66
  %18 = or i32 %3, %2
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %8, %141
  %21 = phi i64 [ 0, %8 ], [ %144, %141 ]
  %22 = phi float [ 0.000000e+00, %8 ], [ %143, %141 ]
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 %21
  %24 = load float, ptr %23, align 8, !tbaa !70
  %25 = fadd float %24, %9
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 %21, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !70
  %28 = fadd float %27, %10
  %29 = fmul float %28, %28
  %30 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %29)
  %31 = tail call float @sqrtf(float noundef %30) #12
  %32 = getelementptr inbounds float, ptr %1, i64 %21
  store float 0.000000e+00, ptr %32, align 4, !tbaa !70
  %33 = load i16, ptr %11, align 4, !tbaa !66
  switch i16 %33, label %141 [
    i16 0, label %34
    i16 1, label %35
    i16 5, label %40
    i16 6, label %52
    i16 2, label %82
    i16 3, label %98
    i16 4, label %118
  ]

34:                                               ; preds = %20
  br i1 %19, label %139, label %141

35:                                               ; preds = %20
  %36 = load float, ptr %17, align 8, !tbaa !80
  %37 = fcmp olt float %31, %36
  br i1 %37, label %38, label %141

38:                                               ; preds = %35
  %39 = fsub float %36, %31
  br label %139

40:                                               ; preds = %20
  %41 = load float, ptr %16, align 8, !tbaa !80
  %42 = fmul float %31, %41
  %43 = fmul float %42, %42
  %44 = tail call float @expf(float noundef %43) #12
  %45 = fdiv float 1.000000e+00, %44
  %46 = load float, ptr %16, align 8, !tbaa !80
  %47 = fmul float %46, %46
  %48 = fmul float %47, 2.250000e+00
  %49 = tail call float @expf(float noundef %48) #12
  %50 = fdiv float 1.000000e+00, %49
  %51 = fsub float %45, %50
  br label %139

52:                                               ; preds = %20
  %53 = load float, ptr %15, align 8, !tbaa !80
  %54 = fmul float %31, %53
  %55 = fcmp olt float %54, -2.000000e+00
  br i1 %55, label %139, label %56

56:                                               ; preds = %52
  %57 = fcmp olt float %54, -1.000000e+00
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = fneg float %54
  %60 = tail call float @llvm.fmuladd.f32(float %59, float 0xBFD8E38E60000000, float 2.000000e+00)
  %61 = tail call float @llvm.fmuladd.f32(float %59, float %60, float 0xC00AAAAAA0000000)
  %62 = tail call float @llvm.fmuladd.f32(float %59, float %61, float 0x3FFC71C720000000)
  br label %139

63:                                               ; preds = %56
  %64 = fcmp olt float %54, 0.000000e+00
  br i1 %64, label %65, label %70

65:                                               ; preds = %63
  %66 = fmul float %54, %54
  %67 = fneg float %54
  %68 = tail call float @llvm.fmuladd.f32(float %67, float 0x3FF2AAAAA0000000, float -2.000000e+00)
  %69 = tail call float @llvm.fmuladd.f32(float %66, float %68, float 0x3FEC71C720000000)
  br label %139

70:                                               ; preds = %63
  %71 = fcmp olt float %54, 1.000000e+00
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = fmul float %54, %54
  %74 = tail call float @llvm.fmuladd.f32(float %54, float 0x3FF2AAAAA0000000, float -2.000000e+00)
  %75 = tail call float @llvm.fmuladd.f32(float %73, float %74, float 0x3FEC71C720000000)
  br label %139

76:                                               ; preds = %70
  %77 = fcmp olt float %54, 2.000000e+00
  br i1 %77, label %78, label %139

78:                                               ; preds = %76
  %79 = tail call float @llvm.fmuladd.f32(float %54, float 0xBFD8E38E60000000, float 2.000000e+00)
  %80 = tail call float @llvm.fmuladd.f32(float %54, float %79, float 0xC00AAAAAA0000000)
  %81 = tail call float @llvm.fmuladd.f32(float %54, float %80, float 0x3FFC71C720000000)
  br label %139

82:                                               ; preds = %20
  %83 = load float, ptr %14, align 8, !tbaa !80
  %84 = fmul float %31, %83
  %85 = fcmp olt float %84, 0.000000e+00
  %86 = fneg float %84
  %87 = select i1 %85, float %86, float %84
  %88 = fcmp olt float %87, 5.000000e-01
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = fneg float %87
  %91 = tail call float @llvm.fmuladd.f32(float %90, float %87, float 7.500000e-01)
  br label %139

92:                                               ; preds = %82
  %93 = fcmp olt float %87, 1.500000e+00
  br i1 %93, label %94, label %139

94:                                               ; preds = %92
  %95 = fadd float %87, -1.500000e+00
  %96 = fmul float %95, 5.000000e-01
  %97 = fmul float %95, %96
  br label %139

98:                                               ; preds = %20
  %99 = load float, ptr %13, align 8, !tbaa !80
  %100 = fmul float %31, %99
  %101 = fcmp olt float %100, 0.000000e+00
  %102 = fneg float %100
  %103 = select i1 %101, float %102, float %100
  %104 = fcmp olt float %103, 1.000000e+00
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = fmul float %100, %100
  %107 = fmul float %103, 5.000000e-01
  %108 = fneg float %106
  %109 = tail call float @llvm.fmuladd.f32(float %107, float %106, float %108)
  %110 = fadd float %109, 0x3FE5555560000000
  br label %139

111:                                              ; preds = %98
  %112 = fcmp olt float %103, 2.000000e+00
  br i1 %112, label %113, label %139

113:                                              ; preds = %111
  %114 = fsub float 2.000000e+00, %103
  %115 = fmul float %114, %114
  %116 = fmul float %114, %115
  %117 = fdiv float %116, 6.000000e+00
  br label %139

118:                                              ; preds = %20
  %119 = load float, ptr %12, align 8, !tbaa !80
  %120 = fmul float %31, %119
  %121 = fmul float %120, %120
  %122 = fcmp olt float %120, 0.000000e+00
  %123 = fneg float %120
  %124 = select i1 %122, float %123, float %120
  %125 = fcmp olt float %124, 1.000000e+00
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = fmul float %121, 1.500000e+00
  %128 = fmul float %121, -2.500000e+00
  %129 = tail call float @llvm.fmuladd.f32(float %127, float %124, float %128)
  %130 = fadd float %129, 1.000000e+00
  br label %139

131:                                              ; preds = %118
  %132 = fcmp olt float %124, 2.000000e+00
  br i1 %132, label %133, label %139

133:                                              ; preds = %131
  %134 = fmul float %121, -5.000000e-01
  %135 = fmul float %121, 2.500000e+00
  %136 = tail call float @llvm.fmuladd.f32(float %134, float %124, float %135)
  %137 = tail call float @llvm.fmuladd.f32(float %124, float -4.000000e+00, float %136)
  %138 = fadd float %137, 2.000000e+00
  br label %139

139:                                              ; preds = %133, %131, %126, %113, %111, %105, %94, %92, %89, %78, %76, %72, %65, %58, %52, %34, %40, %38
  %140 = phi float [ %39, %38 ], [ %51, %40 ], [ 1.000000e+00, %34 ], [ %62, %58 ], [ %69, %65 ], [ %75, %72 ], [ %81, %78 ], [ 0.000000e+00, %52 ], [ 0.000000e+00, %76 ], [ %91, %89 ], [ %97, %94 ], [ 0.000000e+00, %92 ], [ %110, %105 ], [ %117, %113 ], [ 0.000000e+00, %111 ], [ %130, %126 ], [ %138, %133 ], [ 0.000000e+00, %131 ]
  store float %140, ptr %32, align 4, !tbaa !70
  br label %141

141:                                              ; preds = %139, %35, %34, %20
  %142 = load float, ptr %32, align 4, !tbaa !70
  %143 = fadd float %22, %142
  %144 = add nuw nsw i64 %21, 1
  %145 = load i16, ptr %5, align 2, !tbaa !65
  %146 = sext i16 %145 to i64
  %147 = icmp slt i64 %144, %146
  br i1 %147, label %20, label %148, !llvm.loop !81

148:                                              ; preds = %141, %4
  %149 = phi float [ 0.000000e+00, %4 ], [ %143, %141 ]
  ret float %149
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @RE_GetCamera(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi ptr [ %9, %5 ], [ %3, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_SetEnvmapCamera(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  %6 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %6) #12
  call void @BKE_camera_params_init(ptr noundef nonnull %6) #12
  call void @BKE_camera_params_from_object(ptr noundef nonnull %6, ptr noundef %1) #12
  %7 = fmul float %2, 1.600000e+01
  %8 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 1
  store float %7, ptr %8, align 4, !tbaa !95
  %9 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 8
  store float 3.200000e+01, ptr %9, align 4, !tbaa !97
  %10 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 9
  store float 3.200000e+01, ptr %10, align 4, !tbaa !98
  %11 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 10
  store i32 0, ptr %11, align 4, !tbaa !99
  %12 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 11
  store float %3, ptr %12, align 4, !tbaa !100
  %13 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 12
  store float %4, ptr %13, align 4, !tbaa !101
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !102
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 8, !tbaa !103
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %6, i32 noundef %15, i32 noundef %17, float noundef 1.000000e+00, float noundef 1.000000e+00) #12
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %6) #12
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %19 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 20
  call void @copy_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %19) #12
  %20 = load float, ptr %12, align 4, !tbaa !100
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  store float %20, ptr %21, align 8, !tbaa !104
  %22 = load float, ptr %13, align 4, !tbaa !101
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 37
  store float %22, ptr %23, align 4, !tbaa !105
  %24 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 16
  %25 = load float, ptr %24, align 4, !tbaa !106
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 24
  store float %25, ptr %26, align 8, !tbaa !107
  %27 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 17
  %28 = load float, ptr %27, align 4, !tbaa !108
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 17
  store float %28, ptr %29, align 4, !tbaa !109
  %30 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 18
  %31 = load float, ptr %30, align 4, !tbaa !110
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 18
  store float %31, ptr %32, align 8, !tbaa !111
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  %34 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %33, ptr noundef nonnull align 4 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !112
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  call void @BKE_camera_object_mode(ptr noundef nonnull %35, ptr noundef %1) #12
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %6) #12
  ret void
}

declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #7

declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_camera_params_compute_viewplane(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #7

declare void @BKE_camera_params_compute_matrix(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @RE_SetCamera(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %3) #12
  call void @BKE_camera_params_init(ptr noundef nonnull %3) #12
  call void @BKE_camera_params_from_object(ptr noundef nonnull %3, ptr noundef %1) #12
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %5 = load i32, ptr %4, align 8, !tbaa !113
  %6 = and i32 %5, 64
  %7 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 13
  store i32 %6, ptr %7, align 4, !tbaa !114
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !115
  %10 = and i16 %9, 4
  %11 = zext nneg i16 %10 to i32
  %12 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 14
  store i32 %11, ptr %12, align 4, !tbaa !116
  %13 = and i32 %5, 8192
  %14 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 15
  store i32 %13, ptr %14, align 4, !tbaa !117
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !102
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %18 = load i32, ptr %17, align 8, !tbaa !103
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 63
  %20 = load float, ptr %19, align 4, !tbaa !118
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 64
  %22 = load float, ptr %21, align 8, !tbaa !119
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %3, i32 noundef %16, i32 noundef %18, float noundef %20, float noundef %22) #12
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %3) #12
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %24 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 20
  call void @copy_m4_m4(ptr noundef nonnull %23, ptr noundef nonnull %24) #12
  %25 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 11
  %26 = load float, ptr %25, align 4, !tbaa !100
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  store float %26, ptr %27, align 8, !tbaa !104
  %28 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 12
  %29 = load float, ptr %28, align 4, !tbaa !101
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 37
  store float %29, ptr %30, align 4, !tbaa !105
  %31 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 16
  %32 = load float, ptr %31, align 4, !tbaa !106
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 24
  store float %32, ptr %33, align 8, !tbaa !107
  %34 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 17
  %35 = load float, ptr %34, align 4, !tbaa !108
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 17
  store float %35, ptr %36, align 4, !tbaa !109
  %37 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 18
  %38 = load float, ptr %37, align 4, !tbaa !110
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 18
  store float %38, ptr %39, align 8, !tbaa !111
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  %41 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %40, ptr noundef nonnull align 4 dereferenceable(16) %41, i64 16, i1 false), !tbaa.struct !112
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  call void @BKE_camera_object_mode(ptr noundef nonnull %42, ptr noundef %1) #12
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_SetPixelSize(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 17
  store float %1, ptr %3, align 4, !tbaa !109
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 24
  %5 = load float, ptr %4, align 8, !tbaa !107
  %6 = fmul float %5, %1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 18
  store float %6, ptr %7, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_GetCameraWindow(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = alloca %struct.CameraParams, align 4
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  store i32 %2, ptr %6, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %5) #12
  call void @BKE_camera_params_init(ptr noundef nonnull %5) #12
  call void @BKE_camera_params_from_object(ptr noundef nonnull %5, ptr noundef %1) #12
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !113
  %9 = and i32 %8, 64
  %10 = getelementptr inbounds %struct.CameraParams, ptr %5, i64 0, i32 13
  store i32 %9, ptr %10, align 4, !tbaa !114
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !115
  %13 = and i16 %12, 4
  %14 = zext nneg i16 %13 to i32
  %15 = getelementptr inbounds %struct.CameraParams, ptr %5, i64 0, i32 14
  store i32 %14, ptr %15, align 4, !tbaa !116
  %16 = and i32 %8, 8192
  %17 = getelementptr inbounds %struct.CameraParams, ptr %5, i64 0, i32 15
  store i32 %16, ptr %17, align 4, !tbaa !117
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %19 = load i32, ptr %18, align 4, !tbaa !102
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %21 = load i32, ptr %20, align 8, !tbaa !103
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 63
  %23 = load float, ptr %22, align 4, !tbaa !118
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 64
  %25 = load float, ptr %24, align 8, !tbaa !119
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %5, i32 noundef %19, i32 noundef %21, float noundef %23, float noundef %25) #12
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %5) #12
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %27 = getelementptr inbounds %struct.CameraParams, ptr %5, i64 0, i32 20
  call void @copy_m4_m4(ptr noundef nonnull %26, ptr noundef nonnull %27) #12
  %28 = getelementptr inbounds %struct.CameraParams, ptr %5, i64 0, i32 11
  %29 = load float, ptr %28, align 4, !tbaa !100
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  store float %29, ptr %30, align 8, !tbaa !104
  %31 = getelementptr inbounds %struct.CameraParams, ptr %5, i64 0, i32 12
  %32 = load float, ptr %31, align 4, !tbaa !101
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 37
  store float %32, ptr %33, align 4, !tbaa !105
  %34 = getelementptr inbounds %struct.CameraParams, ptr %5, i64 0, i32 16
  %35 = load float, ptr %34, align 4, !tbaa !106
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 24
  store float %35, ptr %36, align 8, !tbaa !107
  %37 = getelementptr inbounds %struct.CameraParams, ptr %5, i64 0, i32 17
  %38 = load float, ptr %37, align 4, !tbaa !108
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 17
  store float %38, ptr %39, align 4, !tbaa !109
  %40 = getelementptr inbounds %struct.CameraParams, ptr %5, i64 0, i32 18
  %41 = load float, ptr %40, align 4, !tbaa !110
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 18
  store float %41, ptr %42, align 8, !tbaa !111
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  %44 = getelementptr inbounds %struct.CameraParams, ptr %5, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %43, ptr noundef nonnull align 4 dereferenceable(16) %44, i64 16, i1 false), !tbaa.struct !112
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  call void @BKE_camera_object_mode(ptr noundef nonnull %45, ptr noundef %1) #12
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %5) #12
  call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %26) #12
  ret void
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @RE_parts_free(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1, %18
  %6 = phi ptr [ %19, %18 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.RenderPart, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %11(ptr noundef nonnull %8) #12
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.RenderPart, ptr %6, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !123
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %17(ptr noundef nonnull %14) #12
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr %6, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !llvm.loop !124

21:                                               ; preds = %18, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #12
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_parts_clamp(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 37
  %3 = load i32, ptr %2, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !126
  %6 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5)
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  store i32 %7, ptr %8, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 38
  %10 = load i32, ptr %9, align 4, !tbaa !128
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %12 = load i32, ptr %11, align 4, !tbaa !129
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 %12)
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 23
  store i32 %14, ptr %15, align 4, !tbaa !130
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_parts_init(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %19
  %7 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %12(ptr noundef nonnull %9) #12
  br label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %18(ptr noundef nonnull %15) #12
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr %7, align 8, !tbaa !56
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !124

22:                                               ; preds = %19, %2
  tail call void @BLI_freelistN(ptr noundef nonnull %3) #12
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 6
  store i32 0, ptr %23, align 8, !tbaa !131
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 9
  store i16 0, ptr %24, align 8, !tbaa !132
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 10
  store i16 0, ptr %25, align 2, !tbaa !133
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %27 = load i32, ptr %26, align 4, !tbaa !134
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !135
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !136
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !137
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 37
  %35 = load i32, ptr %34, align 8, !tbaa !125
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %37 = load i32, ptr %36, align 8, !tbaa !126
  %38 = tail call i32 @llvm.smin.i32(i32 %35, i32 %37)
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 1)
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  store i32 %39, ptr %40, align 8, !tbaa !127
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 38
  %42 = load i32, ptr %41, align 4, !tbaa !128
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %44 = load i32, ptr %43, align 4, !tbaa !129
  %45 = tail call i32 @llvm.smin.i32(i32 %42, i32 %44)
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 1)
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 23
  store i32 %46, ptr %47, align 4, !tbaa !130
  %48 = add i32 %37, -1
  %49 = add i32 %48, %39
  %50 = sdiv i32 %49, %39
  %51 = add i32 %44, -1
  %52 = add i32 %51, %46
  %53 = sdiv i32 %52, %46
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %55 = load i32, ptr %54, align 8, !tbaa !113
  %56 = and i32 %55, 1024
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %22
  %59 = tail call float @panorama_pixel_rot(ptr noundef %0) #12
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 25
  store float %59, ptr %60, align 4, !tbaa !138
  br label %61

61:                                               ; preds = %58, %22
  %62 = mul nsw i32 %53, %50
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %126

64:                                               ; preds = %61
  %65 = add nsw i32 %50, -1
  %66 = add nsw i32 %53, -1
  %67 = icmp eq i8 %1, 0
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 29
  br label %69

69:                                               ; preds = %64, %123
  %70 = phi i32 [ 0, %64 ], [ %124, %123 ]
  %71 = srem i32 %70, %50
  %72 = sdiv i32 %70, %50
  %73 = mul nsw i32 %71, %39
  %74 = add nsw i32 %73, %27
  %75 = mul nsw i32 %72, %46
  %76 = add nsw i32 %75, %29
  %77 = icmp slt i32 %71, %65
  %78 = add nsw i32 %74, %39
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 %31)
  %80 = select i1 %77, i32 %79, i32 %31
  %81 = icmp slt i32 %72, %66
  %82 = add nsw i32 %76, %46
  %83 = tail call i32 @llvm.smin.i32(i32 %82, i32 %33)
  %84 = select i1 %81, i32 %83, i32 %33
  %85 = sub nsw i32 %80, %74
  %86 = sub nsw i32 %84, %76
  %87 = icmp sgt i32 %85, 0
  %88 = icmp sgt i32 %86, 0
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %123

90:                                               ; preds = %69
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %92 = tail call ptr %91(i64 noundef 160, ptr noundef nonnull @.str.4) #12
  br i1 %67, label %108, label %93

93:                                               ; preds = %90
  %94 = load i16, ptr %68, align 4, !tbaa !66
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, ptr %54, align 8, !tbaa !113
  %98 = and i32 %97, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96, %93
  %101 = getelementptr inbounds %struct.RenderPart, ptr %92, i64 0, i32 17
  store i16 2, ptr %101, align 4, !tbaa !139
  %102 = add nsw i32 %74, -2
  %103 = add nsw i32 %76, -2
  %104 = add nsw i32 %80, 2
  %105 = add nsw i32 %84, 2
  %106 = add nsw i32 %85, 4
  %107 = add nsw i32 %86, 4
  br label %108

108:                                              ; preds = %100, %96, %90
  %109 = phi i32 [ %84, %90 ], [ %84, %96 ], [ %105, %100 ]
  %110 = phi i32 [ %76, %90 ], [ %76, %96 ], [ %103, %100 ]
  %111 = phi i32 [ %80, %90 ], [ %80, %96 ], [ %104, %100 ]
  %112 = phi i32 [ %74, %90 ], [ %74, %96 ], [ %102, %100 ]
  %113 = phi i32 [ %85, %90 ], [ %85, %96 ], [ %106, %100 ]
  %114 = phi i32 [ %86, %90 ], [ %86, %96 ], [ %107, %100 ]
  %115 = getelementptr inbounds %struct.RenderPart, ptr %92, i64 0, i32 13
  store i32 %112, ptr %115, align 8, !tbaa.struct !140
  %116 = getelementptr inbounds %struct.RenderPart, ptr %92, i64 0, i32 13, i32 1
  store i32 %111, ptr %116, align 4, !tbaa.struct !141
  %117 = getelementptr inbounds %struct.RenderPart, ptr %92, i64 0, i32 13, i32 2
  store i32 %110, ptr %117, align 8, !tbaa.struct !142
  %118 = getelementptr inbounds %struct.RenderPart, ptr %92, i64 0, i32 13, i32 3
  store i32 %109, ptr %118, align 4, !tbaa.struct !143
  %119 = getelementptr inbounds %struct.RenderPart, ptr %92, i64 0, i32 14
  store i32 %113, ptr %119, align 8, !tbaa !144
  %120 = getelementptr inbounds %struct.RenderPart, ptr %92, i64 0, i32 15
  store i32 %114, ptr %120, align 4, !tbaa !145
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %92) #12
  %121 = load i32, ptr %23, align 8, !tbaa !131
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %23, align 8, !tbaa !131
  br label %123

123:                                              ; preds = %108, %69
  %124 = add nuw nsw i32 %70, 1
  %125 = icmp eq i32 %124, %62
  br i1 %125, label %126, label %69, !llvm.loop !146

126:                                              ; preds = %123, %61
  ret void
}

declare float @panorama_pixel_rot(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare void @BLI_jitter_init(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #2

declare void @BKE_camera_object_mode(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !36, i64 552}
!35 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !41, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !42, i64 156, !43, i64 172, !44, i64 188, !44, i64 192, !44, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !44, i64 544, !44, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !45, i64 1104, !52, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !41, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !44, i64 5680, !36, i64 5688, !41, i64 5696, !44, i64 5712, !44, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !41, i64 5752, !41, i64 5768, !41, i64 5784, !36, i64 5800, !41, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !41, i64 5872, !36, i64 5888, !41, i64 5896, !41, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !54, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!43 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"float", !37, i64 0}
!45 = !{!"RenderData", !46, i64 0, !36, i64 248, !36, i64 256, !49, i64 264, !50, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !44, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !43, i64 544, !43, i64 560, !42, i64 576, !41, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !39, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !36, i64 2568, !39, i64 2576, !44, i64 2580, !37, i64 2584, !51, i64 2616, !39, i64 3976, !39, i64 3980}
!46 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !47, i64 24, !48, i64 184}
!47 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !44, i64 136, !44, i64 140, !36, i64 144, !36, i64 152}
!48 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!49 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!50 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !44, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!51 = !{!"BakeData", !46, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!52 = !{!"World", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!53 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!54 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !55, i64 48, !55, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !44, i64 144, !44, i64 148}
!55 = !{!"double", !37, i64 0}
!56 = !{!36, !36, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!61, !36, i64 464}
!61 = !{!"SampleTables", !37, i64 0, !37, i64 64, !37, i64 136, !37, i64 208, !36, i64 464}
!62 = !{!39, !39, i64 0}
!63 = !{!35, !40, i64 1642}
!64 = !{!35, !40, i64 1714}
!65 = !{!35, !40, i64 98}
!66 = !{!35, !40, i64 1580}
!67 = distinct !{!67, !58, !59}
!68 = !{!37, !37, i64 0}
!69 = distinct !{!69, !58, !59}
!70 = !{!44, !44, i64 0}
!71 = distinct !{!71, !58, !59}
!72 = distinct !{!72, !58, !59}
!73 = distinct !{!73, !58, !59}
!74 = distinct !{!74, !58, !59}
!75 = distinct !{!75, !58, !59}
!76 = distinct !{!76, !58, !59}
!77 = distinct !{!77, !58, !59}
!78 = distinct !{!78, !58, !59}
!79 = distinct !{!79, !58, !59}
!80 = !{!35, !44, i64 1728}
!81 = distinct !{!81, !58, !59}
!82 = !{!35, !36, i64 5616}
!83 = !{!35, !36, i64 1096}
!84 = !{!85, !36, i64 128}
!85 = !{!"Scene", !53, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !45, i64 280, !86, i64 4264, !41, i64 4296, !41, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !39, i64 4380, !41, i64 4384, !87, i64 4400, !88, i64 4416, !91, i64 4600, !36, i64 4608, !92, i64 4616, !36, i64 4640, !93, i64 4648, !93, i64 4656, !47, i64 4664, !48, i64 4824, !94, i64 4888, !36, i64 4952}
!86 = !{!"AudioData", !39, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !39, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!87 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!88 = !{!"GameData", !87, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !89, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !90, i64 72, !44, i64 128, !44, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!89 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !36, i64 16}
!90 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !39, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!91 = !{!"UnitSettings", !44, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!92 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!93 = !{!"long", !37, i64 0}
!94 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!95 = !{!96, !44, i64 4}
!96 = !{!"CameraParams", !37, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !39, i64 40, !44, i64 44, !44, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !43, i64 76, !37, i64 92}
!97 = !{!96, !44, i64 32}
!98 = !{!96, !44, i64 36}
!99 = !{!96, !39, i64 40}
!100 = !{!96, !44, i64 44}
!101 = !{!96, !44, i64 48}
!102 = !{!35, !39, i64 148}
!103 = !{!35, !39, i64 152}
!104 = !{!35, !44, i64 544}
!105 = !{!35, !44, i64 548}
!106 = !{!96, !44, i64 64}
!107 = !{!35, !44, i64 216}
!108 = !{!96, !44, i64 68}
!109 = !{!35, !44, i64 188}
!110 = !{!96, !44, i64 72}
!111 = !{!35, !44, i64 192}
!112 = !{i64 0, i64 4, !70, i64 4, i64 4, !70, i64 8, i64 4, !70, i64 12, i64 4, !70}
!113 = !{!35, !39, i64 1624}
!114 = !{!96, !39, i64 52}
!115 = !{!35, !40, i64 96}
!116 = !{!96, !39, i64 56}
!117 = !{!96, !39, i64 60}
!118 = !{!35, !44, i64 1716}
!119 = !{!35, !44, i64 1720}
!120 = !{!35, !39, i64 1504}
!121 = !{!122, !36, i64 48}
!122 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !39, i64 128, !39, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !36, i64 152}
!123 = !{!122, !36, i64 56}
!124 = distinct !{!124, !58, !59}
!125 = !{!35, !39, i64 1600}
!126 = !{!35, !39, i64 200}
!127 = !{!35, !39, i64 208}
!128 = !{!35, !39, i64 1604}
!129 = !{!35, !39, i64 204}
!130 = !{!35, !39, i64 212}
!131 = !{!35, !39, i64 6088}
!132 = !{!35, !40, i64 6096}
!133 = !{!35, !40, i64 6098}
!134 = !{!35, !39, i64 156}
!135 = !{!35, !39, i64 164}
!136 = !{!35, !39, i64 160}
!137 = !{!35, !39, i64 168}
!138 = !{!35, !44, i64 220}
!139 = !{!122, !40, i64 140}
!140 = !{i64 0, i64 4, !62, i64 4, i64 4, !62, i64 8, i64 4, !62, i64 12, i64 4, !62}
!141 = !{i64 0, i64 4, !62, i64 4, i64 4, !62, i64 8, i64 4, !62}
!142 = !{i64 0, i64 4, !62, i64 4, i64 4, !62}
!143 = !{i64 0, i64 4, !62}
!144 = !{!122, !39, i64 128}
!145 = !{!122, !39, i64 132}
!146 = distinct !{!146, !58, !59}
