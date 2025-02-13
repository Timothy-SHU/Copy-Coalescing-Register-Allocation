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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @RE_filter_value(i32 noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = fcmp olt float %1, 0.000000e+00
  %4 = fneg float %1
  %5 = select i1 %3, float %4, float %1
  switch i32 %0, label %31 [
    i32 0, label %6
    i32 1, label %9
    i32 5, label %13
    i32 6, label %19
    i32 2, label %22
    i32 3, label %25
    i32 4, label %28
  ]

6:                                                ; preds = %2
  %7 = fcmp ogt float %5, 1.000000e+00
  %8 = select i1 %7, float 0.000000e+00, float 1.000000e+00
  br label %31

9:                                                ; preds = %2
  %10 = fcmp ogt float %5, 1.000000e+00
  br i1 %10, label %31, label %11

11:                                               ; preds = %9
  %12 = fsub float 1.000000e+00, %5
  br label %31

13:                                               ; preds = %2
  %14 = fmul float %5, 0x3FF99999A0000000
  %15 = fmul float %14, %14
  %16 = tail call float @expf(float noundef %15) #14
  %17 = fdiv float 1.000000e+00, %16
  %18 = fadd float %17, 0xBF69D05BE0000000
  br label %31

19:                                               ; preds = %2
  %20 = fmul float %5, 0x3FF99999A0000000
  %21 = tail call fastcc float @filt_mitchell(float noundef %20) #15
  br label %31

22:                                               ; preds = %2
  %23 = fmul float %5, 0x3FF99999A0000000
  %24 = tail call fastcc float @filt_quadratic(float noundef %23) #15
  br label %31

25:                                               ; preds = %2
  %26 = fmul float %5, 0x3FF99999A0000000
  %27 = tail call fastcc float @filt_cubic(float noundef %26) #15
  br label %31

28:                                               ; preds = %2
  %29 = fmul float %5, 0x3FF99999A0000000
  %30 = tail call fastcc float @filt_catrom(float noundef %29) #15
  br label %31

31:                                               ; preds = %2, %9, %6, %28, %25, %22, %19, %13, %11
  %32 = phi float [ %30, %28 ], [ %27, %25 ], [ %24, %22 ], [ %21, %19 ], [ %18, %13 ], [ %12, %11 ], [ %8, %6 ], [ 0.000000e+00, %9 ], [ 0.000000e+00, %2 ]
  ret float %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @filt_mitchell(float noundef %0) unnamed_addr #3 !PGOFuncName !34 {
  %2 = fcmp olt float %0, -2.000000e+00
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = fcmp olt float %0, -1.000000e+00
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = fneg float %0
  %7 = tail call float @llvm.fmuladd.f32(float %6, float 0xBFD8E38E60000000, float 2.000000e+00)
  %8 = tail call float @llvm.fmuladd.f32(float %6, float %7, float 0xC00AAAAAA0000000)
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %8, float 0x3FFC71C720000000)
  br label %29

10:                                               ; preds = %3
  %11 = fcmp olt float %0, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = fmul float %0, %0
  %14 = fneg float %0
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 0x3FF2AAAAA0000000, float -2.000000e+00)
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float 0x3FEC71C720000000)
  br label %29

17:                                               ; preds = %10
  %18 = fcmp olt float %0, 1.000000e+00
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = fmul float %0, %0
  %21 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FF2AAAAA0000000, float -2.000000e+00)
  %22 = tail call float @llvm.fmuladd.f32(float %20, float %21, float 0x3FEC71C720000000)
  br label %29

23:                                               ; preds = %17
  %24 = fcmp olt float %0, 2.000000e+00
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = tail call float @llvm.fmuladd.f32(float %0, float 0xBFD8E38E60000000, float 2.000000e+00)
  %27 = tail call float @llvm.fmuladd.f32(float %0, float %26, float 0xC00AAAAAA0000000)
  %28 = tail call float @llvm.fmuladd.f32(float %0, float %27, float 0x3FFC71C720000000)
  br label %29

29:                                               ; preds = %23, %1, %25, %19, %12, %5
  %30 = phi float [ %9, %5 ], [ %16, %12 ], [ %22, %19 ], [ %28, %25 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %23 ]
  ret float %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @filt_quadratic(float noundef %0) unnamed_addr #3 !PGOFuncName !35 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  %5 = fcmp olt float %4, 5.000000e-01
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = fneg float %4
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %4, float 7.500000e-01)
  br label %15

9:                                                ; preds = %1
  %10 = fcmp olt float %4, 1.500000e+00
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = fadd float %4, -1.500000e+00
  %13 = fmul float %12, 5.000000e-01
  %14 = fmul float %12, %13
  br label %15

15:                                               ; preds = %9, %11, %6
  %16 = phi float [ %8, %6 ], [ %14, %11 ], [ 0.000000e+00, %9 ]
  ret float %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @filt_cubic(float noundef %0) unnamed_addr #3 !PGOFuncName !36 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  %5 = fcmp olt float %4, 1.000000e+00
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = fmul float %0, %0
  %8 = fmul float %4, 5.000000e-01
  %9 = fneg float %7
  %10 = tail call float @llvm.fmuladd.f32(float %8, float %7, float %9)
  %11 = fadd float %10, 0x3FE5555560000000
  br label %19

12:                                               ; preds = %1
  %13 = fcmp olt float %4, 2.000000e+00
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = fsub float 2.000000e+00, %4
  %16 = fmul float %15, %15
  %17 = fmul float %15, %16
  %18 = fdiv float %17, 6.000000e+00
  br label %19

19:                                               ; preds = %12, %14, %6
  %20 = phi float [ %11, %6 ], [ %18, %14 ], [ 0.000000e+00, %12 ]
  ret float %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @filt_catrom(float noundef %0) unnamed_addr #3 !PGOFuncName !37 {
  %2 = fmul float %0, %0
  %3 = fcmp olt float %0, 0.000000e+00
  %4 = fneg float %0
  %5 = select i1 %3, float %4, float %0
  %6 = fcmp olt float %5, 1.000000e+00
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = fmul float %2, 1.500000e+00
  %9 = fmul float %2, -2.500000e+00
  %10 = tail call float @llvm.fmuladd.f32(float %8, float %5, float %9)
  %11 = fadd float %10, 1.000000e+00
  br label %20

12:                                               ; preds = %1
  %13 = fcmp olt float %5, 2.000000e+00
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = fmul float %2, -5.000000e-01
  %16 = fmul float %2, 2.500000e+00
  %17 = tail call float @llvm.fmuladd.f32(float %15, float %5, float %16)
  %18 = tail call float @llvm.fmuladd.f32(float %5, float -4.000000e+00, float %17)
  %19 = fadd float %18, 2.000000e+00
  br label %20

20:                                               ; preds = %12, %14, %7
  %21 = phi float [ %11, %7 ], [ %19, %14 ], [ 0.000000e+00, %12 ]
  ret float %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_sample_tables(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 38
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %15, %5 ], [ 0, %1 ]
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %8 = load ptr, ptr %2, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.SampleTables, ptr %8, i64 0, i32 1, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  tail call void %7(ptr noundef %10) #14
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %12 = load ptr, ptr %2, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.SampleTables, ptr %12, i64 0, i32 2, i64 %6
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  tail call void %11(ptr noundef %14) #14
  %15 = add nuw nsw i64 %6, 1
  %16 = icmp eq i64 %15, 9
  br i1 %16, label %17, label %5, !llvm.loop !61

17:                                               ; preds = %5
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %19 = load ptr, ptr %2, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.SampleTables, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  tail call void %18(ptr noundef %21) #14
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %23 = load ptr, ptr %2, align 8, !tbaa !38
  tail call void %22(ptr noundef %23) #14
  store ptr null, ptr %2, align 8, !tbaa !38
  br label %24

24:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_sample_tables(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = alloca [32 x float], align 16
  %3 = alloca [32 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #16
  %4 = load i1, ptr @make_sample_tables.firsttime, align 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i1 true, ptr @make_sample_tables.firsttime, align 4
  br label %6

6:                                                ; preds = %5, %1
  tail call void @free_sample_tables(ptr noundef %0) #15
  tail call fastcc void @init_render_jit(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !65
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 29
  store i16 0, ptr %11, align 4, !tbaa !66
  br label %467

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !60
  %14 = tail call ptr %13(i64 noundef 472, ptr noundef nonnull @.str) #14
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 38
  store ptr %14, ptr %15, align 8, !tbaa !38
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i64 [ 0, %12 ], [ %24, %16 ]
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !60
  %19 = tail call ptr %18(i64 noundef 1024, ptr noundef nonnull @.str.1) #14
  %20 = getelementptr inbounds %struct.SampleTables, ptr %14, i64 0, i32 1, i64 %17
  store ptr %19, ptr %20, align 8, !tbaa !60
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !60
  %22 = tail call ptr %21(i64 noundef 1024, ptr noundef nonnull @.str.1) #14
  %23 = getelementptr inbounds %struct.SampleTables, ptr %14, i64 0, i32 2, i64 %17
  store ptr %22, ptr %23, align 8, !tbaa !60
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 9
  br i1 %25, label %26, label %16, !llvm.loop !67

26:                                               ; preds = %16, %26
  %27 = phi i64 [ %58, %26 ], [ 0, %16 ]
  %28 = phi <16 x i64> [ %59, %26 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %16 ]
  %29 = phi <16 x i8> [ %60, %26 ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %16 ]
  %30 = phi <16 x i8> [ %61, %26 ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %16 ]
  %31 = phi <16 x i8> [ %62, %26 ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %16 ]
  %32 = phi <16 x i8> [ %63, %26 ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %16 ]
  %33 = phi <16 x i8> [ %64, %26 ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %16 ]
  %34 = phi <16 x i8> [ %65, %26 ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %16 ]
  %35 = getelementptr inbounds %struct.SampleTables, ptr %14, i64 0, i32 3, i64 %27
  %36 = and <16 x i8> %29, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %37 = lshr <16 x i8> %29, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %38 = and <16 x i8> %37, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %39 = add nuw nsw <16 x i8> %36, %38
  %40 = lshr <16 x i8> %30, <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>
  %41 = and <16 x i8> %40, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %42 = add nuw nsw <16 x i8> %39, %41
  %43 = lshr <16 x i8> %31, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  %44 = and <16 x i8> %43, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %45 = add nuw nsw <16 x i8> %42, %44
  %46 = lshr <16 x i8> %32, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %47 = and <16 x i8> %46, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %48 = add nuw nsw <16 x i8> %45, %47
  %49 = lshr <16 x i8> %33, <i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5>
  %50 = and <16 x i8> %49, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %51 = add nuw nsw <16 x i8> %48, %50
  %52 = lshr <16 x i8> %34, <i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6>
  %53 = and <16 x i8> %52, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %54 = add nuw nsw <16 x i8> %51, %53
  %55 = icmp ugt <16 x i64> %28, <i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127>
  %56 = zext <16 x i1> %55 to <16 x i8>
  %57 = add nuw nsw <16 x i8> %54, %56
  store <16 x i8> %57, ptr %35, align 1, !tbaa !68
  %58 = add nuw i64 %27, 16
  %59 = add <16 x i64> %28, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %60 = add <16 x i8> %29, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %61 = add <16 x i8> %30, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %62 = add <16 x i8> %31, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %63 = add <16 x i8> %32, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %64 = add <16 x i8> %33, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %65 = add <16 x i8> %34, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %66 = icmp eq i64 %58, 256
  br i1 %66, label %67, label %26, !llvm.loop !69

67:                                               ; preds = %26
  %68 = load i16, ptr %7, align 2, !tbaa !65
  %69 = zext nneg i16 %68 to i32
  %70 = shl nuw i32 1, %69
  %71 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !60
  %72 = sext i32 %70 to i64
  %73 = tail call ptr %71(i64 noundef %72, ptr noundef nonnull @.str.2) #14
  %74 = getelementptr inbounds %struct.SampleTables, ptr %14, i64 0, i32 4
  store ptr %73, ptr %74, align 8, !tbaa !63
  store <4 x float> <float 0xBFDCCCCCC0000000, float 0xBFD8CCCCC0000000, float 0xBFD4CCCCC0000000, float 0xBFD0CCCCC0000000>, ptr %14, align 4, !tbaa !72
  %75 = getelementptr inbounds [16 x float], ptr %14, i64 0, i64 4
  store <4 x float> <float 0xBFC9999980000000, float 0xBFC1999980000000, float 0xBFB3333300000000, float 0xBF89999800000000>, ptr %75, align 4, !tbaa !72
  %76 = getelementptr inbounds [16 x float], ptr %14, i64 0, i64 8
  store <4 x float> <float 0x3FA9999A00000000, float 0x3FBCCCCD00000000, float 0x3FC6666680000000, float 0x3FCE666680000000>, ptr %76, align 4, !tbaa !72
  %77 = getelementptr inbounds [16 x float], ptr %14, i64 0, i64 12
  store <4 x float> <float 0x3FD3333340000000, float 0x3FD7333340000000, float 0x3FDB333340000000, float 0x3FDF333340000000>, ptr %77, align 4, !tbaa !72
  br label %78

78:                                               ; preds = %67, %107
  %79 = phi float [ %104, %107 ], [ 0.000000e+00, %67 ]
  %80 = phi i32 [ %108, %107 ], [ -1, %67 ]
  br label %100

81:                                               ; preds = %107
  %82 = fdiv float 1.000000e+00, %104
  %83 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 8
  %84 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 1
  %85 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 9
  %86 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 2
  %87 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 10
  %88 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 3
  %89 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 11
  %90 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 4
  %91 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 12
  %92 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 5
  %93 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 13
  %94 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 6
  %95 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 14
  %96 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 7
  %97 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 15
  %98 = insertelement <4 x float> poison, float %82, i64 0
  %99 = shufflevector <4 x float> %98, <4 x float> poison, <4 x i32> zeroinitializer
  br label %110

100:                                              ; preds = %78, %100
  %101 = phi float [ %79, %78 ], [ %104, %100 ]
  %102 = phi i32 [ -1, %78 ], [ %105, %100 ]
  %103 = call fastcc float @calc_weight(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %102, i32 noundef %80) #15
  %104 = fadd float %101, %103
  %105 = add nsw i32 %102, 1
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %100, !llvm.loop !73

107:                                              ; preds = %100
  %108 = add nsw i32 %80, 1
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %81, label %78, !llvm.loop !74

110:                                              ; preds = %81, %236
  %111 = phi i64 [ -1, %81 ], [ %237, %236 ]
  %112 = mul nsw i64 %111, 3
  %113 = add nsw i64 %112, 4
  %114 = trunc i64 %111 to i32
  br label %115

115:                                              ; preds = %110, %233
  %116 = phi i64 [ -1, %110 ], [ %234, %233 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  %117 = trunc i64 %116 to i32
  %118 = call fastcc float @calc_weight(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %117, i32 noundef %114) #15
  br label %119

119:                                              ; preds = %119, %115
  %120 = phi i64 [ 0, %115 ], [ %125, %119 ]
  %121 = getelementptr inbounds [32 x float], ptr %3, i64 0, i64 %120
  %122 = load <4 x float>, ptr %121, align 16, !tbaa !72
  %123 = fmul <4 x float> %99, %122
  %124 = getelementptr inbounds [32 x float], ptr %2, i64 0, i64 %120
  store <4 x float> %123, ptr %124, align 16, !tbaa !72
  %125 = add nuw i64 %120, 4
  %126 = icmp eq i64 %125, 16
  br i1 %126, label %127, label %119, !llvm.loop !75

127:                                              ; preds = %119
  %128 = add nsw i64 %113, %116
  %129 = getelementptr inbounds %struct.SampleTables, ptr %14, i64 0, i32 1, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !60
  %131 = getelementptr inbounds %struct.SampleTables, ptr %14, i64 0, i32 2, i64 %128
  %132 = load ptr, ptr %131, align 8, !tbaa !60
  %133 = load float, ptr %2, align 16
  %134 = load float, ptr %83, align 16
  %135 = load float, ptr %84, align 4
  %136 = load float, ptr %85, align 4
  %137 = load float, ptr %86, align 8
  %138 = load float, ptr %87, align 8
  %139 = load float, ptr %88, align 4
  %140 = load float, ptr %89, align 4
  %141 = load float, ptr %90, align 16
  %142 = load float, ptr %91, align 16
  %143 = load float, ptr %92, align 4
  %144 = load float, ptr %93, align 4
  %145 = load float, ptr %94, align 8
  %146 = load float, ptr %95, align 8
  %147 = load float, ptr %96, align 4
  %148 = load float, ptr %97, align 4
  br label %149

149:                                              ; preds = %127, %230
  %150 = phi i64 [ 0, %127 ], [ %231, %230 ]
  %151 = trunc i64 %150 to i32
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds float, ptr %130, i64 %150
  %156 = load float, ptr %155, align 4, !tbaa !72
  %157 = fadd float %133, %156
  store float %157, ptr %155, align 4, !tbaa !72
  %158 = getelementptr inbounds float, ptr %132, i64 %150
  %159 = load float, ptr %158, align 4, !tbaa !72
  %160 = fadd float %134, %159
  store float %160, ptr %158, align 4, !tbaa !72
  br label %161

161:                                              ; preds = %154, %149
  %162 = and i32 %151, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds float, ptr %130, i64 %150
  %166 = load float, ptr %165, align 4, !tbaa !72
  %167 = fadd float %135, %166
  store float %167, ptr %165, align 4, !tbaa !72
  %168 = getelementptr inbounds float, ptr %132, i64 %150
  %169 = load float, ptr %168, align 4, !tbaa !72
  %170 = fadd float %136, %169
  store float %170, ptr %168, align 4, !tbaa !72
  br label %171

171:                                              ; preds = %164, %161
  %172 = and i32 %151, 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds float, ptr %130, i64 %150
  %176 = load float, ptr %175, align 4, !tbaa !72
  %177 = fadd float %137, %176
  store float %177, ptr %175, align 4, !tbaa !72
  %178 = getelementptr inbounds float, ptr %132, i64 %150
  %179 = load float, ptr %178, align 4, !tbaa !72
  %180 = fadd float %138, %179
  store float %180, ptr %178, align 4, !tbaa !72
  br label %181

181:                                              ; preds = %174, %171
  %182 = and i32 %151, 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds float, ptr %130, i64 %150
  %186 = load float, ptr %185, align 4, !tbaa !72
  %187 = fadd float %139, %186
  store float %187, ptr %185, align 4, !tbaa !72
  %188 = getelementptr inbounds float, ptr %132, i64 %150
  %189 = load float, ptr %188, align 4, !tbaa !72
  %190 = fadd float %140, %189
  store float %190, ptr %188, align 4, !tbaa !72
  br label %191

191:                                              ; preds = %184, %181
  %192 = and i32 %151, 16
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds float, ptr %130, i64 %150
  %196 = load float, ptr %195, align 4, !tbaa !72
  %197 = fadd float %141, %196
  store float %197, ptr %195, align 4, !tbaa !72
  %198 = getelementptr inbounds float, ptr %132, i64 %150
  %199 = load float, ptr %198, align 4, !tbaa !72
  %200 = fadd float %142, %199
  store float %200, ptr %198, align 4, !tbaa !72
  br label %201

201:                                              ; preds = %194, %191
  %202 = and i32 %151, 32
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds float, ptr %130, i64 %150
  %206 = load float, ptr %205, align 4, !tbaa !72
  %207 = fadd float %143, %206
  store float %207, ptr %205, align 4, !tbaa !72
  %208 = getelementptr inbounds float, ptr %132, i64 %150
  %209 = load float, ptr %208, align 4, !tbaa !72
  %210 = fadd float %144, %209
  store float %210, ptr %208, align 4, !tbaa !72
  br label %211

211:                                              ; preds = %204, %201
  %212 = and i32 %151, 64
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds float, ptr %130, i64 %150
  %216 = load float, ptr %215, align 4, !tbaa !72
  %217 = fadd float %145, %216
  store float %217, ptr %215, align 4, !tbaa !72
  %218 = getelementptr inbounds float, ptr %132, i64 %150
  %219 = load float, ptr %218, align 4, !tbaa !72
  %220 = fadd float %146, %219
  store float %220, ptr %218, align 4, !tbaa !72
  br label %221

221:                                              ; preds = %214, %211
  %222 = icmp ult i64 %150, 128
  br i1 %222, label %230, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds float, ptr %130, i64 %150
  %225 = load float, ptr %224, align 4, !tbaa !72
  %226 = fadd float %147, %225
  store float %226, ptr %224, align 4, !tbaa !72
  %227 = getelementptr inbounds float, ptr %132, i64 %150
  %228 = load float, ptr %227, align 4, !tbaa !72
  %229 = fadd float %148, %228
  store float %229, ptr %227, align 4, !tbaa !72
  br label %230

230:                                              ; preds = %221, %223
  %231 = add nuw nsw i64 %150, 1
  %232 = icmp eq i64 %231, 256
  br i1 %232, label %233, label %149, !llvm.loop !76

233:                                              ; preds = %230
  %234 = add nsw i64 %116, 1
  %235 = icmp eq i64 %234, 2
  br i1 %235, label %236, label %115, !llvm.loop !77

236:                                              ; preds = %233
  %237 = add nsw i64 %111, 1
  %238 = icmp eq i64 %237, 2
  br i1 %238, label %239, label %110, !llvm.loop !78

239:                                              ; preds = %236
  %240 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !60
  %241 = tail call ptr %240(i64 noundef 1024, ptr noundef nonnull @.str.3) #14
  %242 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !60
  %243 = tail call ptr %242(i64 noundef 1024, ptr noundef nonnull @.str.3) #14
  %244 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !60
  %245 = tail call ptr %244(i64 noundef 1024, ptr noundef nonnull @.str.3) #14
  %246 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !60
  %247 = tail call ptr %246(i64 noundef 1024, ptr noundef nonnull @.str.3) #14
  %248 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39
  %249 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 0, i64 1
  %250 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 8
  %251 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 8, i64 1
  %252 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 1
  %253 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 1, i64 1
  %254 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 9
  %255 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 9, i64 1
  %256 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 2
  %257 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 2, i64 1
  %258 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 10
  %259 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 10, i64 1
  %260 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 3
  %261 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 3, i64 1
  %262 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 11
  %263 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 11, i64 1
  %264 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 4
  %265 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 4, i64 1
  %266 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 12
  %267 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 12, i64 1
  %268 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 5
  %269 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 5, i64 1
  %270 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 13
  %271 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 13, i64 1
  %272 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 6
  %273 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 6, i64 1
  %274 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 14
  %275 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 14, i64 1
  %276 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 7
  %277 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 7, i64 1
  %278 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 15
  %279 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 15, i64 1
  br label %284

280:                                              ; preds = %417
  %281 = icmp sgt i32 %70, 1
  br i1 %281, label %282, label %462

282:                                              ; preds = %280
  %283 = zext nneg i32 %70 to i64
  br label %420

284:                                              ; preds = %239, %417
  %285 = phi i64 [ 0, %239 ], [ %418, %417 ]
  %286 = getelementptr inbounds float, ptr %243, i64 %285
  store float 0.000000e+00, ptr %286, align 4, !tbaa !72
  %287 = getelementptr inbounds float, ptr %241, i64 %285
  store float 0.000000e+00, ptr %287, align 4, !tbaa !72
  %288 = getelementptr inbounds float, ptr %247, i64 %285
  store float 0.000000e+00, ptr %288, align 4, !tbaa !72
  %289 = getelementptr inbounds float, ptr %245, i64 %285
  store float 0.000000e+00, ptr %289, align 4, !tbaa !72
  %290 = trunc i64 %285 to i32
  %291 = and i32 %290, 1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %306, label %293

293:                                              ; preds = %284
  %294 = load float, ptr %248, align 8, !tbaa !72
  %295 = load float, ptr %287, align 4, !tbaa !72
  %296 = fadd float %294, %295
  store float %296, ptr %287, align 4, !tbaa !72
  %297 = load float, ptr %249, align 4, !tbaa !72
  %298 = load float, ptr %289, align 4, !tbaa !72
  %299 = fadd float %297, %298
  store float %299, ptr %289, align 4, !tbaa !72
  %300 = load float, ptr %250, align 8, !tbaa !72
  %301 = load float, ptr %286, align 4, !tbaa !72
  %302 = fadd float %300, %301
  store float %302, ptr %286, align 4, !tbaa !72
  %303 = load float, ptr %251, align 4, !tbaa !72
  %304 = load float, ptr %288, align 4, !tbaa !72
  %305 = fadd float %303, %304
  store float %305, ptr %288, align 4, !tbaa !72
  br label %306

306:                                              ; preds = %293, %284
  %307 = and i32 %290, 2
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %322, label %309

309:                                              ; preds = %306
  %310 = load float, ptr %252, align 8, !tbaa !72
  %311 = load float, ptr %287, align 4, !tbaa !72
  %312 = fadd float %310, %311
  store float %312, ptr %287, align 4, !tbaa !72
  %313 = load float, ptr %253, align 4, !tbaa !72
  %314 = load float, ptr %289, align 4, !tbaa !72
  %315 = fadd float %313, %314
  store float %315, ptr %289, align 4, !tbaa !72
  %316 = load float, ptr %254, align 8, !tbaa !72
  %317 = load float, ptr %286, align 4, !tbaa !72
  %318 = fadd float %316, %317
  store float %318, ptr %286, align 4, !tbaa !72
  %319 = load float, ptr %255, align 4, !tbaa !72
  %320 = load float, ptr %288, align 4, !tbaa !72
  %321 = fadd float %319, %320
  store float %321, ptr %288, align 4, !tbaa !72
  br label %322

322:                                              ; preds = %309, %306
  %323 = and i32 %290, 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %338, label %325

325:                                              ; preds = %322
  %326 = load float, ptr %256, align 8, !tbaa !72
  %327 = load float, ptr %287, align 4, !tbaa !72
  %328 = fadd float %326, %327
  store float %328, ptr %287, align 4, !tbaa !72
  %329 = load float, ptr %257, align 4, !tbaa !72
  %330 = load float, ptr %289, align 4, !tbaa !72
  %331 = fadd float %329, %330
  store float %331, ptr %289, align 4, !tbaa !72
  %332 = load float, ptr %258, align 8, !tbaa !72
  %333 = load float, ptr %286, align 4, !tbaa !72
  %334 = fadd float %332, %333
  store float %334, ptr %286, align 4, !tbaa !72
  %335 = load float, ptr %259, align 4, !tbaa !72
  %336 = load float, ptr %288, align 4, !tbaa !72
  %337 = fadd float %335, %336
  store float %337, ptr %288, align 4, !tbaa !72
  br label %338

338:                                              ; preds = %325, %322
  %339 = and i32 %290, 8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %354, label %341

341:                                              ; preds = %338
  %342 = load float, ptr %260, align 8, !tbaa !72
  %343 = load float, ptr %287, align 4, !tbaa !72
  %344 = fadd float %342, %343
  store float %344, ptr %287, align 4, !tbaa !72
  %345 = load float, ptr %261, align 4, !tbaa !72
  %346 = load float, ptr %289, align 4, !tbaa !72
  %347 = fadd float %345, %346
  store float %347, ptr %289, align 4, !tbaa !72
  %348 = load float, ptr %262, align 8, !tbaa !72
  %349 = load float, ptr %286, align 4, !tbaa !72
  %350 = fadd float %348, %349
  store float %350, ptr %286, align 4, !tbaa !72
  %351 = load float, ptr %263, align 4, !tbaa !72
  %352 = load float, ptr %288, align 4, !tbaa !72
  %353 = fadd float %351, %352
  store float %353, ptr %288, align 4, !tbaa !72
  br label %354

354:                                              ; preds = %341, %338
  %355 = and i32 %290, 16
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %370, label %357

357:                                              ; preds = %354
  %358 = load float, ptr %264, align 8, !tbaa !72
  %359 = load float, ptr %287, align 4, !tbaa !72
  %360 = fadd float %358, %359
  store float %360, ptr %287, align 4, !tbaa !72
  %361 = load float, ptr %265, align 4, !tbaa !72
  %362 = load float, ptr %289, align 4, !tbaa !72
  %363 = fadd float %361, %362
  store float %363, ptr %289, align 4, !tbaa !72
  %364 = load float, ptr %266, align 8, !tbaa !72
  %365 = load float, ptr %286, align 4, !tbaa !72
  %366 = fadd float %364, %365
  store float %366, ptr %286, align 4, !tbaa !72
  %367 = load float, ptr %267, align 4, !tbaa !72
  %368 = load float, ptr %288, align 4, !tbaa !72
  %369 = fadd float %367, %368
  store float %369, ptr %288, align 4, !tbaa !72
  br label %370

370:                                              ; preds = %357, %354
  %371 = and i32 %290, 32
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %386, label %373

373:                                              ; preds = %370
  %374 = load float, ptr %268, align 8, !tbaa !72
  %375 = load float, ptr %287, align 4, !tbaa !72
  %376 = fadd float %374, %375
  store float %376, ptr %287, align 4, !tbaa !72
  %377 = load float, ptr %269, align 4, !tbaa !72
  %378 = load float, ptr %289, align 4, !tbaa !72
  %379 = fadd float %377, %378
  store float %379, ptr %289, align 4, !tbaa !72
  %380 = load float, ptr %270, align 8, !tbaa !72
  %381 = load float, ptr %286, align 4, !tbaa !72
  %382 = fadd float %380, %381
  store float %382, ptr %286, align 4, !tbaa !72
  %383 = load float, ptr %271, align 4, !tbaa !72
  %384 = load float, ptr %288, align 4, !tbaa !72
  %385 = fadd float %383, %384
  store float %385, ptr %288, align 4, !tbaa !72
  br label %386

386:                                              ; preds = %373, %370
  %387 = and i32 %290, 64
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %402, label %389

389:                                              ; preds = %386
  %390 = load float, ptr %272, align 8, !tbaa !72
  %391 = load float, ptr %287, align 4, !tbaa !72
  %392 = fadd float %390, %391
  store float %392, ptr %287, align 4, !tbaa !72
  %393 = load float, ptr %273, align 4, !tbaa !72
  %394 = load float, ptr %289, align 4, !tbaa !72
  %395 = fadd float %393, %394
  store float %395, ptr %289, align 4, !tbaa !72
  %396 = load float, ptr %274, align 8, !tbaa !72
  %397 = load float, ptr %286, align 4, !tbaa !72
  %398 = fadd float %396, %397
  store float %398, ptr %286, align 4, !tbaa !72
  %399 = load float, ptr %275, align 4, !tbaa !72
  %400 = load float, ptr %288, align 4, !tbaa !72
  %401 = fadd float %399, %400
  store float %401, ptr %288, align 4, !tbaa !72
  br label %402

402:                                              ; preds = %389, %386
  %403 = icmp ult i64 %285, 128
  br i1 %403, label %417, label %404

404:                                              ; preds = %402
  %405 = load float, ptr %276, align 8, !tbaa !72
  %406 = load float, ptr %287, align 4, !tbaa !72
  %407 = fadd float %405, %406
  store float %407, ptr %287, align 4, !tbaa !72
  %408 = load float, ptr %277, align 4, !tbaa !72
  %409 = load float, ptr %289, align 4, !tbaa !72
  %410 = fadd float %408, %409
  store float %410, ptr %289, align 4, !tbaa !72
  %411 = load float, ptr %278, align 8, !tbaa !72
  %412 = load float, ptr %286, align 4, !tbaa !72
  %413 = fadd float %411, %412
  store float %413, ptr %286, align 4, !tbaa !72
  %414 = load float, ptr %279, align 4, !tbaa !72
  %415 = load float, ptr %288, align 4, !tbaa !72
  %416 = fadd float %414, %415
  store float %416, ptr %288, align 4, !tbaa !72
  br label %417

417:                                              ; preds = %402, %404
  %418 = add nuw nsw i64 %285, 1
  %419 = icmp eq i64 %418, 256
  br i1 %419, label %280, label %284, !llvm.loop !79

420:                                              ; preds = %282, %420
  %421 = phi i64 [ %283, %282 ], [ %422, %420 ]
  %422 = add nsw i64 %421, -1
  %423 = and i64 %422, 255
  %424 = getelementptr inbounds %struct.SampleTables, ptr %14, i64 0, i32 3, i64 %423
  %425 = load i8, ptr %424, align 1, !tbaa !68
  %426 = zext i8 %425 to i32
  %427 = lshr i64 %422, 8
  %428 = and i64 %427, 16777215
  %429 = getelementptr inbounds %struct.SampleTables, ptr %14, i64 0, i32 3, i64 %428
  %430 = load i8, ptr %429, align 1, !tbaa !68
  %431 = zext i8 %430 to i32
  %432 = add nuw nsw i32 %431, %426
  %433 = sitofp i32 %432 to float
  %434 = getelementptr inbounds float, ptr %245, i64 %423
  %435 = load float, ptr %434, align 4, !tbaa !72
  %436 = getelementptr inbounds float, ptr %247, i64 %428
  %437 = load float, ptr %436, align 4, !tbaa !72
  %438 = fadd float %435, %437
  %439 = fmul float %438, 0x402FCCCCC0000000
  %440 = fdiv float %439, %433
  %441 = fadd float %440, 8.000000e+00
  %442 = fptosi float %441 to i32
  %443 = tail call i32 @llvm.smin.i32(i32 %442, i32 15)
  %444 = tail call i32 @llvm.smax.i32(i32 %443, i32 0)
  %445 = getelementptr inbounds float, ptr %241, i64 %423
  %446 = load float, ptr %445, align 4, !tbaa !72
  %447 = getelementptr inbounds float, ptr %243, i64 %428
  %448 = load float, ptr %447, align 4, !tbaa !72
  %449 = fadd float %446, %448
  %450 = fmul float %449, 0x402FCCCCC0000000
  %451 = fdiv float %450, %433
  %452 = fadd float %451, 8.000000e+00
  %453 = fptosi float %452 to i32
  %454 = tail call i32 @llvm.smin.i32(i32 %453, i32 15)
  %455 = tail call i32 @llvm.smax.i32(i32 %454, i32 0)
  %456 = shl nuw nsw i32 %444, 4
  %457 = add nuw nsw i32 %455, %456
  %458 = trunc i32 %457 to i8
  %459 = load ptr, ptr %74, align 8, !tbaa !63
  %460 = getelementptr inbounds i8, ptr %459, i64 %422
  store i8 %458, ptr %460, align 1, !tbaa !68
  %461 = icmp ugt i64 %421, 2
  br i1 %461, label %420, label %462, !llvm.loop !80

462:                                              ; preds = %420, %280
  %463 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  tail call void %463(ptr noundef nonnull %241) #14
  %464 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  tail call void %464(ptr noundef nonnull %243) #14
  %465 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  tail call void %465(ptr noundef nonnull %245) #14
  %466 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  tail call void %466(ptr noundef nonnull %247) #14
  br label %467

467:                                              ; preds = %462, %10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_render_jit(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !81 {
  %2 = load i32, ptr @init_render_jit.lastjit, align 4, !tbaa !82
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  %4 = load i16, ptr %3, align 2, !tbaa !83
  %5 = sext i16 %4 to i32
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, ptr @init_render_jit.last_mblur_jit, align 4, !tbaa !82
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 62
  %10 = load i16, ptr %9, align 2, !tbaa !84
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %7, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @init_render_jit.jit, i8 0, i64 256, i1 false)
  tail call void @BLI_jitter_init(ptr noundef nonnull @init_render_jit.jit, i32 noundef %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @init_render_jit.mblur_jit, i8 0, i64 256, i1 false)
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 62
  %15 = load i16, ptr %14, align 2, !tbaa !84
  %16 = sext i16 %15 to i32
  tail call void @BLI_jitter_init(ptr noundef nonnull @init_render_jit.mblur_jit, i32 noundef %16) #14
  %17 = load i16, ptr %3, align 2, !tbaa !83
  %18 = load i16, ptr %14, align 2, !tbaa !84
  %19 = sext i16 %17 to i32
  %20 = sext i16 %18 to i32
  br label %21

21:                                               ; preds = %13, %7
  %22 = phi i32 [ %20, %13 ], [ %11, %7 ]
  %23 = phi i32 [ %19, %13 ], [ %5, %7 ]
  store i32 %23, ptr @init_render_jit.lastjit, align 4, !tbaa !82
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %24, ptr noundef nonnull align 16 dereferenceable(256) @init_render_jit.jit, i64 256, i1 false)
  store i32 %22, ptr @init_render_jit.last_mblur_jit, align 4, !tbaa !82
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %25, ptr noundef nonnull align 16 dereferenceable(256) @init_render_jit.mblur_jit, i64 256, i1 false)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc float @calc_weight(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !85 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %6 = load i16, ptr %5, align 2, !tbaa !65
  %7 = icmp sgt i16 %6, 0
  br i1 %7, label %8, label %76

8:                                                ; preds = %4
  %9 = sitofp i32 %2 to float
  %10 = sitofp i32 %3 to float
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 29
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 66
  %13 = or i32 %3, %2
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %8, %69
  %16 = phi i16 [ %6, %8 ], [ %70, %69 ]
  %17 = phi i64 [ 0, %8 ], [ %73, %69 ]
  %18 = phi float [ 0.000000e+00, %8 ], [ %72, %69 ]
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 %17
  %20 = load float, ptr %19, align 8, !tbaa !72
  %21 = fadd float %20, %9
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 39, i64 %17, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !72
  %24 = fadd float %23, %10
  %25 = fmul float %24, %24
  %26 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %25)
  %27 = tail call float @llvm.sqrt.f32(float %26)
  %28 = getelementptr inbounds float, ptr %1, i64 %17
  store float 0.000000e+00, ptr %28, align 4, !tbaa !72
  %29 = load i16, ptr %11, align 4, !tbaa !66
  switch i16 %29, label %69 [
    i16 0, label %30
    i16 1, label %32
    i16 5, label %37
    i16 6, label %53
    i16 2, label %57
    i16 3, label %61
    i16 4, label %65
  ]

30:                                               ; preds = %15
  br i1 %14, label %31, label %69

31:                                               ; preds = %30
  store float 1.000000e+00, ptr %28, align 4, !tbaa !72
  br label %69

32:                                               ; preds = %15
  %33 = load float, ptr %12, align 8, !tbaa !86
  %34 = fcmp olt float %27, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = fsub float %33, %27
  store float %36, ptr %28, align 4, !tbaa !72
  br label %69

37:                                               ; preds = %15
  %38 = load float, ptr %12, align 8, !tbaa !86
  %39 = fmul float %27, %38
  %40 = fmul float %39, %39
  %41 = tail call float @expf(float noundef %40) #14
  %42 = load float, ptr %12, align 8, !tbaa !86
  %43 = fmul float %42, %42
  %44 = fmul float %43, 2.250000e+00
  %45 = tail call float @expf(float noundef %44) #14
  %46 = insertelement <2 x float> poison, float %41, i64 0
  %47 = insertelement <2 x float> %46, float %45, i64 1
  %48 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %47
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %50 = fsub <2 x float> %48, %49
  %51 = extractelement <2 x float> %50, i64 0
  store float %51, ptr %28, align 4, !tbaa !72
  %52 = load i16, ptr %5, align 2, !tbaa !65
  br label %69

53:                                               ; preds = %15
  %54 = load float, ptr %12, align 8, !tbaa !86
  %55 = fmul float %27, %54
  %56 = tail call fastcc float @filt_mitchell(float noundef %55) #15
  store float %56, ptr %28, align 4, !tbaa !72
  br label %69

57:                                               ; preds = %15
  %58 = load float, ptr %12, align 8, !tbaa !86
  %59 = fmul float %27, %58
  %60 = tail call fastcc float @filt_quadratic(float noundef %59) #15
  store float %60, ptr %28, align 4, !tbaa !72
  br label %69

61:                                               ; preds = %15
  %62 = load float, ptr %12, align 8, !tbaa !86
  %63 = fmul float %27, %62
  %64 = tail call fastcc float @filt_cubic(float noundef %63) #15
  store float %64, ptr %28, align 4, !tbaa !72
  br label %69

65:                                               ; preds = %15
  %66 = load float, ptr %12, align 8, !tbaa !86
  %67 = fmul float %27, %66
  %68 = tail call fastcc float @filt_catrom(float noundef %67) #15
  store float %68, ptr %28, align 4, !tbaa !72
  br label %69

69:                                               ; preds = %32, %35, %30, %31, %15, %65, %61, %57, %53, %37
  %70 = phi i16 [ %16, %32 ], [ %16, %35 ], [ %16, %30 ], [ %16, %31 ], [ %16, %15 ], [ %16, %65 ], [ %16, %61 ], [ %16, %57 ], [ %16, %53 ], [ %52, %37 ]
  %71 = phi float [ 0.000000e+00, %32 ], [ %36, %35 ], [ 0.000000e+00, %30 ], [ 1.000000e+00, %31 ], [ 0.000000e+00, %15 ], [ %68, %65 ], [ %64, %61 ], [ %60, %57 ], [ %56, %53 ], [ %51, %37 ]
  %72 = fadd float %18, %71
  %73 = add nuw nsw i64 %17, 1
  %74 = sext i16 %70 to i64
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %15, label %76, !llvm.loop !87

76:                                               ; preds = %69, %4
  %77 = phi float [ 0.000000e+00, %4 ], [ %72, %69 ]
  ret float %77
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @RE_GetCamera(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi ptr [ %9, %5 ], [ %3, %1 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_SetEnvmapCamera(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %6) #16
  call void @BKE_camera_params_init(ptr noundef nonnull %6) #14
  call void @BKE_camera_params_from_object(ptr noundef nonnull %6, ptr noundef %1) #14
  %7 = fmul float %2, 1.600000e+01
  %8 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 1
  store float %7, ptr %8, align 4, !tbaa !101
  %9 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 8
  store <2 x float> <float 3.200000e+01, float 3.200000e+01>, ptr %9, align 4, !tbaa !72
  %10 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 10
  store i32 0, ptr %10, align 4, !tbaa !103
  %11 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 11
  store float %3, ptr %11, align 4, !tbaa !104
  %12 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 12
  store float %4, ptr %12, align 4, !tbaa !105
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 4, !tbaa !106
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !107
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %6, i32 noundef %14, i32 noundef %16, float noundef 1.000000e+00, float noundef 1.000000e+00) #14
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %6) #14
  call fastcc void @re_camera_params_get(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_camera_params_compute_viewplane(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_camera_params_compute_matrix(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @re_camera_params_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 !PGOFuncName !108 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %5 = getelementptr inbounds %struct.CameraParams, ptr %1, i64 0, i32 20
  tail call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.CameraParams, ptr %1, i64 0, i32 11
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %8 = load <2 x float>, ptr %6, align 4, !tbaa !72
  store <2 x float> %8, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.CameraParams, ptr %1, i64 0, i32 16
  %10 = load float, ptr %9, align 4, !tbaa !109
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 24
  store float %10, ptr %11, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.CameraParams, ptr %1, i64 0, i32 17
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 17
  %14 = load <2 x float>, ptr %12, align 4, !tbaa !72
  store <2 x float> %14, ptr %13, align 4, !tbaa !72
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  %16 = getelementptr inbounds %struct.CameraParams, ptr %1, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !111
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  tail call void @BKE_camera_object_mode(ptr noundef nonnull %17, ptr noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_SetCamera(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %3) #16
  call void @BKE_camera_params_init(ptr noundef nonnull %3) #14
  call void @BKE_camera_params_from_object(ptr noundef nonnull %3, ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %5 = load i32, ptr %4, align 8, !tbaa !112
  %6 = and i32 %5, 64
  %7 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 13
  store i32 %6, ptr %7, align 4, !tbaa !113
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !114
  %10 = and i16 %9, 4
  %11 = zext nneg i16 %10 to i32
  %12 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 14
  store i32 %11, ptr %12, align 4, !tbaa !115
  %13 = and i32 %5, 8192
  %14 = getelementptr inbounds %struct.CameraParams, ptr %3, i64 0, i32 15
  store i32 %13, ptr %14, align 4, !tbaa !116
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !106
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %18 = load i32, ptr %17, align 8, !tbaa !107
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 63
  %20 = load float, ptr %19, align 4, !tbaa !117
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 64
  %22 = load float, ptr %21, align 8, !tbaa !118
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %3, i32 noundef %16, i32 noundef %18, float noundef %20, float noundef %22) #14
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %3) #14
  call fastcc void @re_camera_params_get(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_SetPixelSize(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 17
  store float %1, ptr %3, align 4, !tbaa !119
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 24
  %5 = load float, ptr %4, align 8, !tbaa !110
  %6 = fmul float %5, %1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 18
  store float %6, ptr %7, align 8, !tbaa !120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_GetCameraWindow(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  store i32 %2, ptr %5, align 8, !tbaa !121
  tail call void @RE_SetCamera(ptr noundef %0, ptr noundef %1) #15
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  tail call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_parts_free(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1, %18
  %6 = phi ptr [ %19, %18 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.RenderPart, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  tail call void %11(ptr noundef nonnull %8) #14
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.RenderPart, ptr %6, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  tail call void %17(ptr noundef nonnull %14) #14
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr %6, align 8, !tbaa !60
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !llvm.loop !125

21:                                               ; preds = %18, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_parts_clamp(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 37
  %3 = load i32, ptr %2, align 8, !tbaa !126
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !127
  %6 = tail call fastcc i32 @min_ii(i32 noundef %3, i32 noundef %5) #15
  %7 = tail call fastcc i32 @max_ii(i32 noundef %6) #15
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  store i32 %7, ptr %8, align 8, !tbaa !128
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 38
  %10 = load i32, ptr %9, align 4, !tbaa !129
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %12 = load i32, ptr %11, align 4, !tbaa !130
  %13 = tail call fastcc i32 @min_ii(i32 noundef %10, i32 noundef %12) #15
  %14 = tail call fastcc i32 @max_ii(i32 noundef %13) #15
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 23
  store i32 %14, ptr %15, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #3 !PGOFuncName !132 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !133 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_parts_init(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = alloca %struct.rcti, align 4
  tail call void @RE_parts_free(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 6
  store i32 0, ptr %4, align 8, !tbaa !134
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 9
  store i16 0, ptr %5, align 8, !tbaa !135
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 10
  store i16 0, ptr %6, align 2, !tbaa !136
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %8 = load i32, ptr %7, align 4, !tbaa !137
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !138
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !139
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !140
  tail call void @RE_parts_clamp(ptr noundef %0) #15
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  %16 = load i32, ptr %15, align 8, !tbaa !128
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 23
  %18 = load i32, ptr %17, align 4, !tbaa !131
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %20 = load i32, ptr %19, align 8, !tbaa !127
  %21 = add i32 %16, -1
  %22 = add i32 %21, %20
  %23 = sdiv i32 %22, %16
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %25 = load i32, ptr %24, align 4, !tbaa !130
  %26 = add i32 %18, -1
  %27 = add i32 %26, %25
  %28 = sdiv i32 %27, %18
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %30 = load i32, ptr %29, align 8, !tbaa !112
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = tail call float @panorama_pixel_rot(ptr noundef nonnull %0) #14
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 25
  store float %34, ptr %35, align 4, !tbaa !141
  br label %36

36:                                               ; preds = %33, %2
  %37 = mul nsw i32 %28, %23
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %98

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %41 = add nsw i32 %23, -1
  %42 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %43 = add nsw i32 %28, -1
  %44 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %45 = icmp eq i8 %1, 0
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 29
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  br label %48

48:                                               ; preds = %39, %95
  %49 = phi i32 [ 0, %39 ], [ %96, %95 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %50 = srem i32 %49, %23
  %51 = sdiv i32 %49, %23
  %52 = mul nsw i32 %50, %16
  %53 = add nsw i32 %52, %8
  store i32 %53, ptr %3, align 4, !tbaa !142
  %54 = mul nsw i32 %51, %18
  %55 = add nsw i32 %54, %10
  store i32 %55, ptr %40, align 4, !tbaa !143
  %56 = icmp slt i32 %50, %41
  %57 = add nsw i32 %53, %16
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 %12)
  %59 = select i1 %56, i32 %58, i32 %12
  store i32 %59, ptr %42, align 4
  %60 = icmp slt i32 %51, %43
  %61 = add nsw i32 %55, %18
  %62 = tail call i32 @llvm.smin.i32(i32 %61, i32 %14)
  %63 = select i1 %60, i32 %62, i32 %14
  store i32 %63, ptr %44, align 4
  %64 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %3) #15
  %65 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %3) #15
  %66 = icmp sgt i32 %64, 0
  %67 = icmp sgt i32 %65, 0
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %95

69:                                               ; preds = %48
  %70 = load ptr, ptr @MEM_callocN, align 8, !tbaa !60
  %71 = tail call ptr %70(i64 noundef 160, ptr noundef nonnull @.str.4) #14
  br i1 %45, label %87, label %72

72:                                               ; preds = %69
  %73 = load i16, ptr %46, align 4, !tbaa !66
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, ptr %29, align 8, !tbaa !112
  %77 = and i32 %76, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75, %72
  %80 = getelementptr inbounds %struct.RenderPart, ptr %71, i64 0, i32 17
  store i16 2, ptr %80, align 4, !tbaa !144
  %81 = add nsw i32 %53, -2
  store i32 %81, ptr %3, align 4, !tbaa !142
  %82 = add nsw i32 %55, -2
  store i32 %82, ptr %40, align 4, !tbaa !143
  %83 = add nsw i32 %59, 2
  store i32 %83, ptr %42, align 4, !tbaa !145
  %84 = add nsw i32 %63, 2
  store i32 %84, ptr %44, align 4, !tbaa !146
  %85 = add nuw nsw i32 %64, 4
  %86 = add nuw nsw i32 %65, 4
  br label %87

87:                                               ; preds = %79, %75, %69
  %88 = phi i32 [ %85, %79 ], [ %64, %75 ], [ %64, %69 ]
  %89 = phi i32 [ %86, %79 ], [ %65, %75 ], [ %65, %69 ]
  %90 = getelementptr inbounds %struct.RenderPart, ptr %71, i64 0, i32 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %90, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !147
  %91 = getelementptr inbounds %struct.RenderPart, ptr %71, i64 0, i32 14
  store i32 %88, ptr %91, align 8, !tbaa !148
  %92 = getelementptr inbounds %struct.RenderPart, ptr %71, i64 0, i32 15
  store i32 %89, ptr %92, align 4, !tbaa !149
  tail call void @BLI_addtail(ptr noundef nonnull %47, ptr noundef %71) #14
  %93 = load i32, ptr %4, align 8, !tbaa !134
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %4, align 8, !tbaa !134
  br label %95

95:                                               ; preds = %87, %48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  %96 = add nuw nsw i32 %49, 1
  %97 = icmp eq i32 %96, %37
  br i1 %97, label %98, label %48, !llvm.loop !150

98:                                               ; preds = %95, %36
  ret void
}

; Function Attrs: optsize
declare float @panorama_pixel_rot(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !151 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !145
  %4 = load i32, ptr %0, align 4, !tbaa !142
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !152 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !146
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !143
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: optsize
declare void @BLI_jitter_init(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_camera_object_mode(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

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
!34 = !{!"initrender.c:filt_mitchell"}
!35 = !{!"initrender.c:filt_quadratic"}
!36 = !{!"initrender.c:filt_cubic"}
!37 = !{!"initrender.c:filt_catrom"}
!38 = !{!39, !40, i64 552}
!39 = !{!"Render", !40, i64 0, !40, i64 8, !41, i64 16, !43, i64 92, !44, i64 96, !44, i64 98, !44, i64 100, !44, i64 102, !41, i64 104, !40, i64 112, !40, i64 120, !45, i64 128, !43, i64 144, !43, i64 148, !43, i64 152, !46, i64 156, !47, i64 172, !48, i64 188, !48, i64 192, !48, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !48, i64 216, !48, i64 220, !48, i64 224, !48, i64 228, !48, i64 232, !48, i64 236, !41, i64 240, !41, i64 252, !41, i64 288, !41, i64 352, !41, i64 416, !41, i64 480, !48, i64 544, !48, i64 548, !40, i64 552, !41, i64 560, !41, i64 816, !40, i64 1072, !41, i64 1080, !40, i64 1088, !40, i64 1096, !49, i64 1104, !56, i64 5088, !40, i64 5616, !43, i64 5624, !43, i64 5628, !45, i64 5632, !40, i64 5648, !40, i64 5656, !40, i64 5664, !40, i64 5672, !48, i64 5680, !40, i64 5688, !45, i64 5696, !48, i64 5712, !48, i64 5716, !43, i64 5720, !43, i64 5724, !43, i64 5728, !43, i64 5732, !43, i64 5736, !40, i64 5744, !45, i64 5752, !45, i64 5768, !45, i64 5784, !40, i64 5800, !45, i64 5808, !43, i64 5824, !40, i64 5832, !40, i64 5840, !40, i64 5848, !40, i64 5856, !40, i64 5864, !45, i64 5872, !40, i64 5888, !45, i64 5896, !45, i64 5912, !40, i64 5928, !40, i64 5936, !40, i64 5944, !40, i64 5952, !40, i64 5960, !40, i64 5968, !40, i64 5976, !40, i64 5984, !40, i64 5992, !40, i64 6000, !40, i64 6008, !40, i64 6016, !40, i64 6024, !40, i64 6032, !40, i64 6040, !40, i64 6048, !40, i64 6056, !58, i64 6064, !40, i64 6216, !40, i64 6224, !40, i64 6232}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"int", !41, i64 0}
!44 = !{!"short", !41, i64 0}
!45 = !{!"ListBase", !40, i64 0, !40, i64 8}
!46 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!47 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!48 = !{!"float", !41, i64 0}
!49 = !{!"RenderData", !50, i64 0, !40, i64 248, !40, i64 256, !53, i64 264, !54, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !48, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !44, i64 432, !44, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !44, i64 456, !44, i64 458, !44, i64 460, !44, i64 462, !44, i64 464, !44, i64 466, !43, i64 468, !44, i64 472, !44, i64 474, !44, i64 476, !44, i64 478, !44, i64 480, !44, i64 482, !43, i64 484, !43, i64 488, !44, i64 492, !44, i64 494, !43, i64 496, !43, i64 500, !44, i64 504, !44, i64 506, !44, i64 508, !44, i64 510, !44, i64 512, !41, i64 514, !41, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !44, i64 528, !44, i64 530, !44, i64 532, !44, i64 534, !44, i64 536, !44, i64 538, !44, i64 540, !44, i64 542, !47, i64 544, !47, i64 560, !46, i64 576, !45, i64 592, !44, i64 608, !44, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !43, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !44, i64 648, !44, i64 650, !44, i64 652, !44, i64 654, !44, i64 656, !44, i64 658, !48, i64 660, !48, i64 664, !44, i64 668, !44, i64 670, !48, i64 672, !48, i64 676, !41, i64 680, !43, i64 1704, !44, i64 1708, !44, i64 1710, !41, i64 1712, !41, i64 2480, !41, i64 2496, !41, i64 2512, !41, i64 2513, !41, i64 2514, !41, i64 2515, !43, i64 2520, !44, i64 2524, !44, i64 2526, !48, i64 2528, !48, i64 2532, !44, i64 2536, !44, i64 2538, !48, i64 2540, !44, i64 2544, !44, i64 2546, !43, i64 2548, !44, i64 2552, !44, i64 2554, !44, i64 2556, !44, i64 2558, !48, i64 2560, !48, i64 2564, !40, i64 2568, !43, i64 2576, !48, i64 2580, !41, i64 2584, !55, i64 2616, !43, i64 3976, !43, i64 3980}
!50 = !{!"ImageFormatData", !41, i64 0, !41, i64 1, !41, i64 2, !41, i64 3, !41, i64 4, !41, i64 5, !41, i64 6, !41, i64 7, !44, i64 8, !44, i64 10, !48, i64 12, !41, i64 16, !41, i64 17, !41, i64 18, !51, i64 24, !52, i64 184}
!51 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !41, i64 8, !41, i64 72, !48, i64 136, !48, i64 140, !40, i64 144, !40, i64 152}
!52 = !{!"ColorManagedDisplaySettings", !41, i64 0}
!53 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !44, i64 48, !44, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!54 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !48, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !40, i64 64}
!55 = !{!"BakeData", !50, i64 0, !41, i64 248, !44, i64 1272, !44, i64 1274, !44, i64 1276, !44, i64 1278, !48, i64 1280, !48, i64 1284, !41, i64 1288, !41, i64 1291, !41, i64 1292, !41, i64 1293, !41, i64 1296}
!56 = !{!"World", !57, i64 0, !40, i64 120, !44, i64 128, !44, i64 130, !44, i64 132, !44, i64 134, !48, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !44, i64 200, !44, i64 202, !44, i64 204, !44, i64 206, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !48, i64 216, !48, i64 220, !48, i64 224, !48, i64 228, !48, i64 232, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !48, i64 252, !48, i64 256, !48, i64 260, !44, i64 264, !44, i64 266, !44, i64 268, !44, i64 270, !48, i64 272, !48, i64 276, !48, i64 280, !48, i64 284, !44, i64 288, !44, i64 290, !44, i64 292, !44, i64 294, !48, i64 296, !48, i64 300, !48, i64 304, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !44, i64 324, !44, i64 326, !44, i64 328, !44, i64 330, !44, i64 332, !44, i64 334, !40, i64 336, !40, i64 344, !40, i64 352, !41, i64 360, !44, i64 504, !44, i64 506, !41, i64 508, !40, i64 512, !40, i64 520}
!57 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !44, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !40, i64 112}
!58 = !{!"RenderStats", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !44, i64 28, !44, i64 30, !44, i64 32, !44, i64 34, !44, i64 36, !44, i64 38, !41, i64 40, !59, i64 48, !59, i64 56, !40, i64 64, !40, i64 72, !41, i64 80, !48, i64 144, !48, i64 148}
!59 = !{!"double", !41, i64 0}
!60 = !{!40, !40, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!64, !40, i64 464}
!64 = !{!"SampleTables", !41, i64 0, !41, i64 64, !41, i64 136, !41, i64 208, !40, i64 464}
!65 = !{!39, !44, i64 98}
!66 = !{!39, !44, i64 1580}
!67 = distinct !{!67, !62}
!68 = !{!41, !41, i64 0}
!69 = distinct !{!69, !62, !70, !71}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!48, !48, i64 0}
!73 = distinct !{!73, !62}
!74 = distinct !{!74, !62}
!75 = distinct !{!75, !62, !70, !71}
!76 = distinct !{!76, !62}
!77 = distinct !{!77, !62}
!78 = distinct !{!78, !62}
!79 = distinct !{!79, !62}
!80 = distinct !{!80, !62}
!81 = !{!"initrender.c:init_render_jit"}
!82 = !{!43, !43, i64 0}
!83 = !{!39, !44, i64 1642}
!84 = !{!39, !44, i64 1714}
!85 = !{!"initrender.c:calc_weight"}
!86 = !{!39, !48, i64 1728}
!87 = distinct !{!87, !62}
!88 = !{!39, !40, i64 5616}
!89 = !{!39, !40, i64 1096}
!90 = !{!91, !40, i64 128}
!91 = !{!"Scene", !57, i64 0, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !45, i64 152, !40, i64 168, !40, i64 176, !41, i64 184, !41, i64 196, !41, i64 208, !41, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !44, i64 244, !41, i64 246, !41, i64 247, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !49, i64 280, !92, i64 4264, !45, i64 4296, !45, i64 4312, !40, i64 4328, !40, i64 4336, !40, i64 4344, !40, i64 4352, !40, i64 4360, !40, i64 4368, !44, i64 4376, !44, i64 4378, !43, i64 4380, !45, i64 4384, !93, i64 4400, !94, i64 4416, !97, i64 4600, !40, i64 4608, !98, i64 4616, !40, i64 4640, !99, i64 4648, !99, i64 4656, !51, i64 4664, !52, i64 4824, !100, i64 4888, !40, i64 4952}
!92 = !{!"AudioData", !43, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !43, i64 16, !44, i64 20, !44, i64 22, !48, i64 24, !48, i64 28}
!93 = !{!"GameFraming", !41, i64 0, !41, i64 12, !41, i64 13, !41, i64 14, !41, i64 15}
!94 = !{!"GameData", !93, i64 0, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !41, i64 34, !95, i64 40, !44, i64 64, !44, i64 66, !48, i64 68, !96, i64 72, !48, i64 128, !48, i64 132, !43, i64 136, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !44, i64 152, !44, i64 154, !44, i64 156, !44, i64 158, !44, i64 160, !44, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!95 = !{!"GameDome", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !48, i64 8, !48, i64 12, !40, i64 16}
!96 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !43, i64 40, !48, i64 44, !48, i64 48, !44, i64 52, !44, i64 54}
!97 = !{!"UnitSettings", !48, i64 0, !41, i64 4, !41, i64 5, !44, i64 6}
!98 = !{!"PhysicsSettings", !41, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!99 = !{!"long", !41, i64 0}
!100 = !{!"ColorManagedColorspaceSettings", !41, i64 0}
!101 = !{!102, !48, i64 4}
!102 = !{!"CameraParams", !41, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !43, i64 40, !48, i64 44, !48, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !48, i64 64, !48, i64 68, !48, i64 72, !47, i64 76, !41, i64 92}
!103 = !{!102, !43, i64 40}
!104 = !{!102, !48, i64 44}
!105 = !{!102, !48, i64 48}
!106 = !{!39, !43, i64 148}
!107 = !{!39, !43, i64 152}
!108 = !{!"initrender.c:re_camera_params_get"}
!109 = !{!102, !48, i64 64}
!110 = !{!39, !48, i64 216}
!111 = !{i64 0, i64 4, !72, i64 4, i64 4, !72, i64 8, i64 4, !72, i64 12, i64 4, !72}
!112 = !{!39, !43, i64 1624}
!113 = !{!102, !43, i64 52}
!114 = !{!39, !44, i64 96}
!115 = !{!102, !43, i64 56}
!116 = !{!102, !43, i64 60}
!117 = !{!39, !48, i64 1716}
!118 = !{!39, !48, i64 1720}
!119 = !{!39, !48, i64 188}
!120 = !{!39, !48, i64 192}
!121 = !{!39, !43, i64 1504}
!122 = !{!123, !40, i64 48}
!123 = !{!"RenderPart", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !46, i64 112, !43, i64 128, !43, i64 132, !43, i64 136, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !40, i64 152}
!124 = !{!123, !40, i64 56}
!125 = distinct !{!125, !62}
!126 = !{!39, !43, i64 1600}
!127 = !{!39, !43, i64 200}
!128 = !{!39, !43, i64 208}
!129 = !{!39, !43, i64 1604}
!130 = !{!39, !43, i64 204}
!131 = !{!39, !43, i64 212}
!132 = !{!"initrender.c:max_ii"}
!133 = !{!"initrender.c:min_ii"}
!134 = !{!39, !43, i64 6088}
!135 = !{!39, !44, i64 6096}
!136 = !{!39, !44, i64 6098}
!137 = !{!39, !43, i64 156}
!138 = !{!39, !43, i64 164}
!139 = !{!39, !43, i64 160}
!140 = !{!39, !43, i64 168}
!141 = !{!39, !48, i64 220}
!142 = !{!46, !43, i64 0}
!143 = !{!46, !43, i64 8}
!144 = !{!123, !44, i64 140}
!145 = !{!46, !43, i64 4}
!146 = !{!46, !43, i64 12}
!147 = !{i64 0, i64 4, !82, i64 4, i64 4, !82, i64 8, i64 4, !82, i64 12, i64 4, !82}
!148 = !{!123, !43, i64 128}
!149 = !{!123, !43, i64 132}
!150 = distinct !{!150, !62}
!151 = !{!"initrender.c:BLI_rcti_size_x"}
!152 = !{!"initrender.c:BLI_rcti_size_y"}
