; ModuleID = 'blender/source/blender/render/intern/source/sss.c'
source_filename = "blender/source/blender/render/intern/source/sss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ScatterSettings = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr }
%struct.ScatterTree = type { ptr, [3 x ptr], float, float, ptr, ptr, ptr, ptr, i32, [3 x float], [3 x float] }
%struct.ScatterPoint = type { [3 x float], [3 x float], float, i32 }
%struct.ScatterNode = type { [3 x float], [3 x float], [3 x float], float, float, i32, ptr, [3 x float], [8 x ptr] }
%struct.ScatterResult = type { [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.SSSPoints = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.SSSData = type { ptr, [3 x ptr] }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"ScatterSettings\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"ScatterTree\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ScatterPoints\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ScatterRefPoints\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ScatterTmpPoints\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"sss tree arena\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"SSSPoints\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"make_sss_tree gh\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"SSS preprocessing\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"scatterTableRd\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SSSCo\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"SSSColor\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"SSSArea\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"SSSData\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @scatter_settings_new(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 88, ptr noundef nonnull @.str) #19
  store float %2, ptr %8, align 8, !tbaa !38
  %9 = fdiv float 0xBFF70A3D80000000, %2
  %10 = fdiv float 0x3FE6B851E0000000, %2
  %11 = tail call float @llvm.fmuladd.f32(float %9, float %2, float %10)
  %12 = fadd float %11, 0x3FE5604180000000
  %13 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FB0481700000000, float %12)
  %14 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 5
  store float %13, ptr %14, align 4, !tbaa !41
  %15 = fadd float %13, 1.000000e+00
  %16 = fsub float 1.000000e+00, %13
  %17 = fdiv float %15, %16
  %18 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 7
  store float %17, ptr %18, align 4, !tbaa !42
  %19 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 11
  store float %1, ptr %19, align 4, !tbaa !43
  %20 = tail call fastcc float @min_ff(float noundef %0) #20
  %21 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 12
  store float %20, ptr %21, align 8, !tbaa !44
  %22 = fsub float 1.000000e+00, %3
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %3, float %22)
  %24 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 13
  store float %23, ptr %24, align 4, !tbaa !45
  %25 = tail call fastcc float @compute_reduced_albedo(ptr noundef nonnull %8) #20
  %26 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 8
  store float %25, ptr %26, align 8, !tbaa !46
  %27 = load float, ptr %19, align 4, !tbaa !43
  %28 = fdiv float 1.000000e+00, %27
  %29 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 4
  store float %28, ptr %29, align 8, !tbaa !47
  %30 = fsub float 1.000000e+00, %25
  %31 = fmul float %30, 3.000000e+00
  %32 = tail call float @sqrtf(float noundef %31) #19
  %33 = fdiv float %28, %32
  %34 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 3
  store float %33, ptr %34, align 4, !tbaa !48
  %35 = load float, ptr %26, align 8, !tbaa !46
  %36 = fmul float %33, %35
  %37 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 2
  store float %36, ptr %37, align 8, !tbaa !49
  %38 = fsub float %33, %36
  %39 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 1
  store float %38, ptr %39, align 4, !tbaa !50
  %40 = fmul float %33, 3.000000e+00
  %41 = fdiv float 1.000000e+00, %40
  %42 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 6
  store float %41, ptr %42, align 8, !tbaa !51
  %43 = fdiv float 1.000000e+00, %33
  %44 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 9
  store float %43, ptr %44, align 4, !tbaa !52
  %45 = load float, ptr %18, align 4, !tbaa !42
  %46 = fmul float %45, 4.000000e+00
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %41, float %43)
  %48 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 10
  store float %47, ptr %48, align 8, !tbaa !53
  %49 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 14
  store float %43, ptr %49, align 8, !tbaa !54
  %50 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 15
  store float %4, ptr %50, align 4, !tbaa !55
  %51 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 16
  store float %5, ptr %51, align 8, !tbaa !56
  tail call fastcc void @build_Rd_table(ptr noundef nonnull %8) #20
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #3 !PGOFuncName !57 {
  %2 = fcmp olt float %0, 0x3FEFAE1480000000
  %3 = select i1 %2, float %0, float 0x3FEFAE1480000000
  ret float %3
}

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc noundef float @compute_reduced_albedo(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !58 {
  %2 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 7
  %3 = load float, ptr %2, align 4, !tbaa !42
  %4 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !44
  %6 = tail call fastcc float @f_Rd(float noundef 1.000000e+00, float noundef %3, float noundef %5) #20
  %7 = load float, ptr %2, align 4, !tbaa !42
  %8 = load float, ptr %4, align 8, !tbaa !44
  %9 = tail call fastcc float @f_Rd(float noundef 0.000000e+00, float noundef %7, float noundef %8) #20
  br label %10

10:                                               ; preds = %1, %25
  %11 = phi i32 [ 0, %1 ], [ %32, %25 ]
  %12 = phi float [ %9, %1 ], [ %13, %25 ]
  %13 = phi float [ %6, %1 ], [ %31, %25 ]
  %14 = phi float [ 1.000000e+00, %1 ], [ %28, %25 ]
  %15 = phi float [ 0.000000e+00, %1 ], [ %14, %25 ]
  %16 = fsub float %13, %12
  %17 = tail call float @llvm.fabs.f32(float %16)
  %18 = fcmp olt float %17, 0x3E45798EE0000000
  br i1 %18, label %34, label %19

19:                                               ; preds = %10
  %20 = fsub float %14, %15
  %21 = fdiv float %20, %16
  %22 = fmul float %13, %21
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp olt float %23, 0x3E45798EE0000000
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = fsub float %14, %22
  %27 = fcmp ogt float %26, 1.000000e+00
  %28 = select i1 %27, float 1.000000e+00, float %26
  %29 = load float, ptr %2, align 4, !tbaa !42
  %30 = load float, ptr %4, align 8, !tbaa !44
  %31 = tail call fastcc float @f_Rd(float noundef %28, float noundef %29, float noundef %30) #20
  %32 = add nuw nsw i32 %11, 1
  %33 = icmp eq i32 %32, 20
  br i1 %33, label %34, label %10, !llvm.loop !59

34:                                               ; preds = %19, %10, %25
  %35 = phi float [ %14, %19 ], [ %14, %10 ], [ %28, %25 ]
  %36 = fcmp ugt float %35, 0.000000e+00
  %37 = select i1 %36, float %35, float 0x3EE4F8B580000000
  ret float %37
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_Rd_table(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !61 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 40004, ptr noundef nonnull @.str.9) #19
  %4 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 17
  store ptr %3, ptr %4, align 8, !tbaa !62
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 40004, ptr noundef nonnull @.str.9) #19
  %7 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 18
  store ptr %6, ptr %7, align 8, !tbaa !63
  br label %8

8:                                                ; preds = %1, %8
  %9 = phi i64 [ 0, %1 ], [ %20, %8 ]
  %10 = trunc i64 %9 to i32
  %11 = sitofp i32 %10 to float
  %12 = fmul float %11, 0x3F847AE140000000
  %13 = tail call float @sqrtf(float noundef %12) #19
  %14 = tail call fastcc float @Rd(ptr noundef nonnull %0, float noundef %13) #20
  %15 = load ptr, ptr %4, align 8, !tbaa !62
  %16 = getelementptr inbounds float, ptr %15, i64 %9
  store float %14, ptr %16, align 4, !tbaa !64
  %17 = tail call fastcc float @Rd(ptr noundef nonnull %0, float noundef %11) #20
  %18 = load ptr, ptr %7, align 8, !tbaa !63
  %19 = getelementptr inbounds float, ptr %18, i64 %9
  store float %17, ptr %19, align 4, !tbaa !64
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 10001
  br i1 %21, label %22, label %8, !llvm.loop !65

22:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scatter_settings_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  tail call void %2(ptr noundef %4) #19
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  tail call void %5(ptr noundef %7) #19
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @scatter_tree_new(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 104, ptr noundef nonnull @.str.1) #19
  %10 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 3
  store float %1, ptr %10, align 4, !tbaa !66
  %11 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 2
  store float %2, ptr %11, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 8
  store i32 %6, ptr %12, align 8, !tbaa !70
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = getelementptr inbounds ptr, ptr %0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 1, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 1, i64 2
  store ptr %19, ptr %20, align 8, !tbaa !34
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = sext i32 %6 to i64
  %23 = shl nsw i64 %22, 5
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str.2) #19
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = shl nsw i64 %22, 3
  %27 = tail call ptr %25(i64 noundef %26, ptr noundef nonnull @.str.3) #19
  %28 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 5
  store ptr %24, ptr %28, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 6
  store ptr %27, ptr %29, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 9
  %31 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 10
  %32 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 10, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %32, align 4, !tbaa !64
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %30, align 4, !tbaa !64
  %33 = icmp sgt i32 %6, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %7
  %35 = zext nneg i32 %6 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ 0, %34 ], [ %55, %36 ]
  %38 = getelementptr inbounds %struct.ScatterPoint, ptr %24, i64 %37
  %39 = getelementptr inbounds [3 x float], ptr %3, i64 %37
  tail call fastcc void @copy_v3_v3(ptr noundef %38, ptr noundef %39) #20
  %40 = getelementptr inbounds %struct.ScatterPoint, ptr %24, i64 %37, i32 1
  %41 = getelementptr inbounds [3 x float], ptr %4, i64 %37
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef %41) #20
  %42 = getelementptr inbounds float, ptr %5, i64 %37
  %43 = load float, ptr %42, align 4, !tbaa !64
  %44 = tail call float @llvm.fabs.f32(float %43)
  %45 = load float, ptr %10, align 4, !tbaa !66
  %46 = fmul float %45, %45
  %47 = fdiv float %44, %46
  %48 = getelementptr inbounds %struct.ScatterPoint, ptr %24, i64 %37, i32 2
  store float %47, ptr %48, align 4, !tbaa !73
  %49 = load float, ptr %42, align 4, !tbaa !64
  %50 = fcmp olt float %49, 0.000000e+00
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.ScatterPoint, ptr %24, i64 %37, i32 3
  store i32 %51, ptr %52, align 4, !tbaa !75
  %53 = fdiv float 1.000000e+00, %45
  tail call fastcc void @mul_v3_fl(ptr noundef %38, float noundef %53) #20
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef %38) #19
  %54 = getelementptr inbounds ptr, ptr %27, i64 %37
  store ptr %38, ptr %54, align 8, !tbaa !34
  %55 = add nuw nsw i64 %37, 1
  %56 = icmp eq i64 %55, %35
  br i1 %56, label %57, label %36, !llvm.loop !76

57:                                               ; preds = %36, %7
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !77 {
  %3 = load float, ptr %1, align 4, !tbaa !64
  store float %3, ptr %0, align 4, !tbaa !64
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !64
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !64
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !78 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !64
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !64
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scatter_tree_build(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !70
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = sext i32 %5 to i64
  %8 = shl nsw i64 %7, 5
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.2) #19
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = shl nsw i64 %7, 3
  %12 = tail call ptr %10(i64 noundef %11, ptr noundef nonnull @.str.4) #19
  %13 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !79
  %14 = tail call ptr @BLI_memarena_new(i64 noundef 4456448, ptr noundef nonnull @.str.5) #19
  store ptr %14, ptr %0, align 8, !tbaa !80
  tail call void @BLI_memarena_use_calloc(ptr noundef %14) #19
  %15 = load ptr, ptr %0, align 8, !tbaa !80
  %16 = tail call ptr @BLI_memarena_alloc(ptr noundef %15, i64 noundef 136) #19
  %17 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct.ScatterNode, ptr %16, i64 0, i32 6
  store ptr %9, ptr %18, align 8, !tbaa !82
  %19 = getelementptr inbounds %struct.ScatterNode, ptr %16, i64 0, i32 5
  store i32 %5, ptr %19, align 4, !tbaa !84
  %20 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 9
  %21 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 10
  %22 = load <2 x float>, ptr %20, align 4, !tbaa !64
  %23 = load <2 x float>, ptr %21, align 8, !tbaa !64
  %24 = fadd <2 x float> %22, %23
  %25 = fmul <2 x float> %24, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %25, ptr %2, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 9, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !64
  %28 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 10, i64 2
  %29 = load float, ptr %28, align 8, !tbaa !64
  %30 = fadd float %27, %29
  %31 = fmul float %30, 5.000000e-01
  %32 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float %31, ptr %32, align 8, !tbaa !64
  %33 = fsub <2 x float> %23, %22
  %34 = fmul <2 x float> %33, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %34, ptr %3, align 8, !tbaa !64
  %35 = fsub float %29, %27
  %36 = fmul float %35, 5.000000e-01
  %37 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %36, ptr %37, align 8, !tbaa !64
  %38 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  call fastcc void @create_octree_node(ptr noundef nonnull %0, ptr noundef %16, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %39, i32 noundef 0) #20
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  tail call void %40(ptr noundef %42) #19
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %44 = load ptr, ptr %38, align 8, !tbaa !72
  tail call void %43(ptr noundef %44) #19
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %46 = load ptr, ptr %13, align 8, !tbaa !79
  tail call void %45(ptr noundef %46) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  store ptr %9, ptr %41, align 8, !tbaa !71
  %47 = load ptr, ptr %17, align 8, !tbaa !81
  tail call fastcc void @sum_radiance(ptr noundef %47) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_octree_node(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !85 {
  %7 = alloca [8 x i32], align 16
  %8 = alloca [8 x i32], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 8
  %11 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  %13 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !84
  %15 = icmp slt i32 %14, 9
  %16 = icmp eq i32 %5, 15
  %17 = or i1 %16, %15
  br i1 %17, label %18, label %32

18:                                               ; preds = %6
  %19 = icmp sgt i32 %14, 0
  br i1 %19, label %20, label %151

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 6
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %28, %22 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !82
  %25 = getelementptr inbounds %struct.ScatterPoint, ptr %24, i64 %23
  %26 = getelementptr inbounds ptr, ptr %4, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %25, ptr noundef nonnull align 4 dereferenceable(32) %27, i64 32, i1 false), !tbaa.struct !86
  %28 = add nuw nsw i64 %23, 1
  %29 = load i32, ptr %13, align 4, !tbaa !84
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %22, label %151, !llvm.loop !89

32:                                               ; preds = %6
  %33 = load <2 x float>, ptr %3, align 4, !tbaa !64
  %34 = fmul <2 x float> %33, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %34, ptr %10, align 8, !tbaa !64
  %35 = getelementptr inbounds float, ptr %3, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !64
  %37 = fmul float %36, 5.000000e-01
  %38 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %37, ptr %38, align 8, !tbaa !64
  %39 = load float, ptr %2, align 4, !tbaa !64
  %40 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7
  store float %39, ptr %40, align 8, !tbaa !64
  %41 = getelementptr inbounds float, ptr %2, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !64
  %43 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7, i64 1
  store float %42, ptr %43, align 4, !tbaa !64
  %44 = getelementptr inbounds float, ptr %2, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !64
  %46 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7, i64 2
  store float %45, ptr %46, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %47 = zext nneg i32 %14 to i64
  br label %48

48:                                               ; preds = %32, %48
  %49 = phi i64 [ 0, %32 ], [ %69, %48 ]
  %50 = getelementptr inbounds ptr, ptr %4, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = load float, ptr %51, align 4, !tbaa !64
  %53 = fcmp oge float %52, %39
  %54 = zext i1 %53 to i64
  %55 = getelementptr inbounds [3 x float], ptr %51, i64 0, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !64
  %57 = fcmp oge float %56, %42
  %58 = select i1 %57, i64 2, i64 0
  %59 = or disjoint i64 %58, %54
  %60 = getelementptr inbounds [3 x float], ptr %51, i64 0, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !64
  %62 = fcmp oge float %61, %45
  %63 = select i1 %62, i64 4, i64 0
  %64 = or disjoint i64 %59, %63
  %65 = getelementptr inbounds ptr, ptr %12, i64 %49
  store ptr %51, ptr %65, align 8, !tbaa !34
  %66 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %64
  %67 = load i32, ptr %66, align 4, !tbaa !88
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !88
  %69 = add nuw nsw i64 %49, 1
  %70 = icmp eq i64 %69, %47
  br i1 %70, label %71, label %48, !llvm.loop !90

71:                                               ; preds = %48, %91
  %72 = phi i64 [ %92, %91 ], [ 0, %48 ]
  %73 = phi i32 [ %81, %91 ], [ 0, %48 ]
  %74 = phi i32 [ %79, %91 ], [ 0, %48 ]
  %75 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %72
  %76 = load i32, ptr %75, align 4, !tbaa !88
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = add nuw nsw i32 %74, %78
  %80 = trunc i64 %72 to i32
  %81 = select i1 %77, i32 %80, i32 %73
  %82 = icmp eq i64 %72, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %71
  %84 = add nsw i64 %72, -1
  %85 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !88
  %87 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %84
  %88 = load i32, ptr %87, align 4, !tbaa !88
  %89 = add nsw i32 %88, %86
  %90 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 %72
  store i32 %89, ptr %90, align 4, !tbaa !88
  br label %91

91:                                               ; preds = %71, %83
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !91

94:                                               ; preds = %91
  %95 = icmp ult i32 %79, 2
  br i1 %95, label %98, label %96

96:                                               ; preds = %94
  %97 = icmp sgt i32 %14, 0
  br i1 %97, label %103, label %100

98:                                               ; preds = %94
  call fastcc void @subnode_middle(i32 noundef %81, ptr noundef nonnull %2, ptr noundef nonnull %10, ptr noundef nonnull %9) #20
  %99 = add nsw i32 %5, 1
  call fastcc void @create_octree_node(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %4, i32 noundef %99) #20
  br label %151

100:                                              ; preds = %103, %96
  %101 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 6
  %102 = add nsw i32 %5, 1
  br label %127

103:                                              ; preds = %96, %103
  %104 = phi i64 [ %125, %103 ], [ 0, %96 ]
  %105 = getelementptr inbounds ptr, ptr %12, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = load float, ptr %106, align 4, !tbaa !64
  %108 = fcmp oge float %107, %39
  %109 = zext i1 %108 to i64
  %110 = getelementptr inbounds [3 x float], ptr %106, i64 0, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !64
  %112 = fcmp oge float %111, %42
  %113 = select i1 %112, i64 2, i64 0
  %114 = or disjoint i64 %113, %109
  %115 = getelementptr inbounds [3 x float], ptr %106, i64 0, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !64
  %117 = fcmp oge float %116, %45
  %118 = select i1 %117, i64 4, i64 0
  %119 = or disjoint i64 %114, %118
  %120 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !88
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds ptr, ptr %4, i64 %122
  store ptr %106, ptr %123, align 8, !tbaa !34
  %124 = add nsw i32 %121, 1
  store i32 %124, ptr %120, align 4, !tbaa !88
  %125 = add nuw nsw i64 %104, 1
  %126 = icmp eq i64 %125, %47
  br i1 %126, label %100, label %103, !llvm.loop !92

127:                                              ; preds = %100, %146
  %128 = phi i64 [ 0, %100 ], [ %148, %146 ]
  %129 = phi i32 [ 0, %100 ], [ %147, %146 ]
  %130 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %128
  %131 = load i32, ptr %130, align 4, !tbaa !88
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load ptr, ptr %0, align 8, !tbaa !80
  %135 = tail call ptr @BLI_memarena_alloc(ptr noundef %134, i64 noundef 136) #19
  %136 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 8, i64 %128
  store ptr %135, ptr %136, align 8, !tbaa !34
  %137 = load ptr, ptr %101, align 8, !tbaa !82
  %138 = sext i32 %129 to i64
  %139 = getelementptr inbounds %struct.ScatterPoint, ptr %137, i64 %138
  %140 = getelementptr inbounds %struct.ScatterNode, ptr %135, i64 0, i32 6
  store ptr %139, ptr %140, align 8, !tbaa !82
  %141 = getelementptr inbounds %struct.ScatterNode, ptr %135, i64 0, i32 5
  store i32 %131, ptr %141, align 4, !tbaa !84
  %142 = getelementptr inbounds ptr, ptr %4, i64 %138
  %143 = trunc i64 %128 to i32
  call fastcc void @subnode_middle(i32 noundef %143, ptr noundef nonnull %2, ptr noundef nonnull %10, ptr noundef nonnull %9) #20
  call fastcc void @create_octree_node(ptr noundef nonnull %0, ptr noundef %135, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %142, i32 noundef %102) #20
  br label %146

144:                                              ; preds = %127
  %145 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 8, i64 %128
  store ptr null, ptr %145, align 8, !tbaa !34
  br label %146

146:                                              ; preds = %133, %144
  %147 = add nsw i32 %131, %129
  %148 = add nuw nsw i64 %128, 1
  %149 = icmp eq i64 %148, 8
  br i1 %149, label %150, label %127, !llvm.loop !93

150:                                              ; preds = %146
  store ptr null, ptr %101, align 8, !tbaa !82
  store i32 0, ptr %13, align 4, !tbaa !84
  br label %151

151:                                              ; preds = %22, %18, %150, %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sum_radiance(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !94 {
  %2 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !84
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @sum_leaf_radiance(ptr noundef nonnull %0) #20
  br label %16

6:                                                ; preds = %1, %12
  %7 = phi i64 [ %13, %12 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 8, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @sum_radiance(ptr noundef nonnull %9) #20
  br label %12

12:                                               ; preds = %6, %11
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %15, label %6, !llvm.loop !95

15:                                               ; preds = %12
  tail call fastcc void @sum_branch_radiance(ptr noundef nonnull %0) #20
  br label %16

16:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @scatter_tree_sample(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #9 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !66
  %7 = fdiv float 1.000000e+00, %6
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %7) #20
  call fastcc void @compute_radiance(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @compute_radiance(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !PGOFuncName !96 {
  %4 = alloca %struct.ScatterResult, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %8 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  call fastcc void @traverse_octree(ptr noundef %0, ptr noundef %9, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %4) #20
  %10 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ScatterSettings, ptr %11, i64 0, i32 15
  %13 = load float, ptr %12, align 4, !tbaa !55
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %13) #20
  %14 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 1
  %15 = getelementptr inbounds %struct.ScatterSettings, ptr %11, i64 0, i32 16
  %16 = load float, ptr %15, align 8, !tbaa !56
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %16) #20
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %14) #20
  %17 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %17) #20
  %18 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 3
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %17, ptr noundef nonnull %18) #20
  %19 = load float, ptr %5, align 4, !tbaa !64
  %20 = fcmp ogt float %19, 0x3C9CD2B2A0000000
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load ptr, ptr %10, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ScatterSettings, ptr %22, i64 0, i32 13
  %24 = load float, ptr %23, align 4, !tbaa !45
  %25 = load float, ptr %2, align 4, !tbaa !64
  %26 = fmul float %24, %25
  %27 = fdiv float %26, %19
  store float %27, ptr %2, align 4, !tbaa !64
  br label %28

28:                                               ; preds = %21, %3
  %29 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !64
  %31 = fcmp ogt float %30, 0x3C9CD2B2A0000000
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.ScatterSettings, ptr %34, i64 0, i32 13
  %36 = load float, ptr %35, align 4, !tbaa !45
  %37 = getelementptr inbounds float, ptr %2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !64
  %39 = fmul float %36, %38
  %40 = fdiv float %39, %30
  store float %40, ptr %37, align 4, !tbaa !64
  br label %41

41:                                               ; preds = %32, %28
  %42 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !64
  %44 = fcmp ogt float %43, 0x3C9CD2B2A0000000
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.ScatterSettings, ptr %47, i64 0, i32 13
  %49 = load float, ptr %48, align 4, !tbaa !45
  %50 = getelementptr inbounds float, ptr %2, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !64
  %52 = fmul float %49, %51
  %53 = fdiv float %52, %43
  store float %53, ptr %50, align 4, !tbaa !64
  br label %54

54:                                               ; preds = %45, %41
  %55 = load float, ptr %7, align 4, !tbaa !64
  %56 = fcmp ogt float %55, 0x3C9CD2B2A0000000
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load ptr, ptr %10, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.ScatterSettings, ptr %58, i64 0, i32 13
  %60 = load float, ptr %59, align 4, !tbaa !45
  %61 = load float, ptr %6, align 8, !tbaa !64
  %62 = fmul float %60, %61
  %63 = fdiv float %62, %55
  store float %63, ptr %6, align 8, !tbaa !64
  br label %64

64:                                               ; preds = %57, %54
  %65 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !64
  %67 = fcmp ogt float %66, 0x3C9CD2B2A0000000
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct.ScatterSettings, ptr %70, i64 0, i32 13
  %72 = load float, ptr %71, align 4, !tbaa !45
  %73 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !64
  %75 = fmul float %72, %74
  %76 = fdiv float %75, %66
  store float %76, ptr %73, align 4, !tbaa !64
  br label %77

77:                                               ; preds = %68, %64
  %78 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !64
  %80 = fcmp ogt float %79, 0x3C9CD2B2A0000000
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %83 = load float, ptr %82, align 8, !tbaa !64
  br label %93

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = getelementptr inbounds %struct.ScatterSettings, ptr %86, i64 0, i32 13
  %88 = load float, ptr %87, align 4, !tbaa !45
  %89 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %90 = load float, ptr %89, align 8, !tbaa !64
  %91 = fmul float %88, %90
  %92 = fdiv float %91, %79
  br label %93

93:                                               ; preds = %81, %84
  %94 = phi float [ %83, %81 ], [ %92, %84 ]
  %95 = load <2 x float>, ptr %2, align 4, !tbaa !64
  %96 = load <2 x float>, ptr %6, align 8, !tbaa !64
  %97 = fcmp ogt <2 x float> %95, %96
  %98 = select <2 x i1> %97, <2 x float> %95, <2 x float> %96
  store <2 x float> %98, ptr %2, align 4, !tbaa !64
  %99 = getelementptr inbounds float, ptr %2, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !64
  %101 = fcmp ogt float %100, %94
  %102 = select i1 %101, float %100, float %94
  store float %102, ptr %99, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scatter_tree_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @BLI_memarena_free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef nonnull %7) #19
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %13) #19
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sss_add_points(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 48, ptr noundef nonnull @.str.6) #19
  %10 = getelementptr inbounds %struct.SSSPoints, ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !97
  %11 = getelementptr inbounds %struct.SSSPoints, ptr %9, i64 0, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.SSSPoints, ptr %9, i64 0, i32 4
  store ptr %3, ptr %12, align 8, !tbaa !100
  %13 = getelementptr inbounds %struct.SSSPoints, ptr %9, i64 0, i32 5
  store i32 %4, ptr %13, align 8, !tbaa !101
  tail call void @BLI_lock_thread(i32 noundef 3) #19
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 75
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  tail call void @BLI_addtail(ptr noundef %15, ptr noundef %9) #19
  tail call void @BLI_unlock_thread(i32 noundef 3) #19
  br label %16

16:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_sss_tree(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @free_sss(ptr noundef %0) #20
  %2 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.7) #19
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 74
  store ptr %2, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  tail call void %5(ptr noundef %7, ptr noundef nonnull %8) #19
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %10 = load ptr, ptr %9, align 8, !tbaa !122
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  br label %16

16:                                               ; preds = %14, %39
  %17 = phi ptr [ %12, %14 ], [ %42, %39 ]
  %18 = phi ptr [ null, %14 ], [ %41, %39 ]
  %19 = phi i8 [ 0, %14 ], [ %40, %39 ]
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !123
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !127
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 123
  %30 = load i16, ptr %29, align 4, !tbaa !128
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = icmp eq i8 %19, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = load ptr, ptr %15, align 8, !tbaa !129
  store ptr @.str.8, ptr %15, align 8, !tbaa !129
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %18, %33 ], [ %36, %35 ]
  tail call fastcc void @sss_create_tree_mat(ptr noundef %0, ptr noundef nonnull %17) #20
  br label %39

39:                                               ; preds = %16, %23, %28, %37
  %40 = phi i8 [ 1, %37 ], [ %19, %28 ], [ %19, %23 ], [ %19, %16 ]
  %41 = phi ptr [ %38, %37 ], [ %18, %28 ], [ %18, %23 ], [ %18, %16 ]
  %42 = load ptr, ptr %17, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %16, !llvm.loop !130

44:                                               ; preds = %39
  %45 = load ptr, ptr %9, align 8, !tbaa !122
  br label %46

46:                                               ; preds = %44, %1
  %47 = phi ptr [ %10, %1 ], [ %45, %44 ]
  %48 = phi i8 [ 0, %1 ], [ %40, %44 ]
  %49 = phi ptr [ null, %1 ], [ %41, %44 ]
  %50 = load ptr, ptr @G, align 8, !tbaa !131
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %86, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.Main, ptr %50, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %86, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  br label %58

58:                                               ; preds = %56, %81
  %59 = phi ptr [ %54, %56 ], [ %84, %81 ]
  %60 = phi ptr [ %49, %56 ], [ %83, %81 ]
  %61 = phi i8 [ %48, %56 ], [ %82, %81 ]
  %62 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 6
  %63 = load i32, ptr %62, align 4, !tbaa !123
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.Material, ptr %59, i64 0, i32 3
  %67 = load i16, ptr %66, align 2, !tbaa !127
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.Material, ptr %59, i64 0, i32 123
  %72 = load i16, ptr %71, align 4, !tbaa !128
  %73 = and i16 %72, 1
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = icmp eq i8 %61, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = load ptr, ptr %57, align 8, !tbaa !129
  store ptr @.str.8, ptr %57, align 8, !tbaa !129
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi ptr [ %60, %75 ], [ %78, %77 ]
  tail call fastcc void @sss_create_tree_mat(ptr noundef %0, ptr noundef nonnull %59) #20
  br label %81

81:                                               ; preds = %58, %65, %70, %79
  %82 = phi i8 [ 1, %79 ], [ %61, %70 ], [ %61, %65 ], [ %61, %58 ]
  %83 = phi ptr [ %80, %79 ], [ %60, %70 ], [ %60, %65 ], [ %60, %58 ]
  %84 = load ptr, ptr %59, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %58, !llvm.loop !133

86:                                               ; preds = %81, %52, %46
  %87 = phi i8 [ %48, %46 ], [ %48, %52 ], [ %82, %81 ]
  %88 = phi ptr [ %49, %46 ], [ %49, %52 ], [ %83, %81 ]
  %89 = icmp eq i8 %87, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr %88, ptr %91, align 8, !tbaa !129
  br label %92

92:                                               ; preds = %90, %86
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_sss(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 74
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_ghashIterator_new(ptr noundef nonnull %3) #19
  %7 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %6) #20, !range !134
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5, %9
  %10 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %6) #20
  tail call fastcc void @sss_free_tree(ptr noundef %10) #20
  tail call void @BLI_ghashIterator_step(ptr noundef %6) #19
  %11 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %6) #20, !range !134
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %9, label %13, !llvm.loop !135

13:                                               ; preds = %9, %5
  tail call void @BLI_ghashIterator_free(ptr noundef %6) #19
  %14 = load ptr, ptr %2, align 8, !tbaa !119
  tail call void @BLI_ghash_free(ptr noundef %14, ptr noundef null, ptr noundef null) #19
  store ptr null, ptr %2, align 8, !tbaa !119
  br label %15

15:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sss_create_tree_mat(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !136 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  %8 = tail call i32 %5(ptr noundef %7) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %197

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %11, i32 noundef 2) #19
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !139
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !140
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %18 = load i32, ptr %17, align 8, !tbaa !141
  %19 = and i32 %18, 1
  %20 = and i32 %18, 33554432
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 10
  %22 = load i16, ptr %21, align 2, !tbaa !142
  store i16 0, ptr %14, align 2, !tbaa !140
  %23 = and i32 %18, -33554434
  store i32 %23, ptr %17, align 8, !tbaa !141
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 75
  store ptr %3, ptr %24, align 8, !tbaa !102
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 76
  store ptr %1, ptr %25, align 8, !tbaa !143
  store i16 0, ptr %21, align 2, !tbaa !142
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %27 = load i32, ptr %26, align 4, !tbaa !144
  %28 = and i32 %27, 524296
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  store ptr null, ptr %12, align 8, !tbaa !139
  br label %31

31:                                               ; preds = %30, %10
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %11) #19
  call void @RE_TileProcessor(ptr noundef nonnull %0) #19
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %11, i32 noundef 2) #19
  %32 = load i32, ptr %26, align 4, !tbaa !144
  %33 = and i32 %32, 524296
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %12, align 8, !tbaa !139
  call void @RE_FreeRenderResult(ptr noundef %36) #19
  store ptr %13, ptr %12, align 8, !tbaa !139
  br label %37

37:                                               ; preds = %35, %31
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %11) #19
  store i16 %22, ptr %21, align 2, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  store i16 %15, ptr %14, align 2, !tbaa !140
  %38 = icmp eq i32 %19, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %17, align 8, !tbaa !141
  %41 = or i32 %40, 1
  store i32 %41, ptr %17, align 8, !tbaa !141
  br label %42

42:                                               ; preds = %39, %37
  %43 = icmp eq i32 %20, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %17, align 8, !tbaa !141
  %46 = or i32 %45, 33554432
  store i32 %46, ptr %17, align 8, !tbaa !141
  br label %47

47:                                               ; preds = %44, %42
  %48 = load ptr, ptr %3, align 8, !tbaa !145
  %49 = icmp eq ptr %48, null
  br i1 %49, label %197, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %4, align 8, !tbaa !137
  %52 = load ptr, ptr %6, align 8, !tbaa !138
  %53 = call i32 %51(ptr noundef %52) #19
  %54 = icmp eq i32 %53, 0
  %55 = load ptr, ptr %3, align 8, !tbaa !34
  br i1 %54, label %56, label %109

56:                                               ; preds = %50
  %57 = icmp eq ptr %55, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %56, %58
  %59 = phi ptr [ %64, %58 ], [ %55, %56 ]
  %60 = phi i32 [ %63, %58 ], [ 0, %56 ]
  %61 = getelementptr inbounds %struct.SSSPoints, ptr %59, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !101
  %63 = add nsw i32 %62, %60
  %64 = load ptr, ptr %59, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %58, !llvm.loop !146

66:                                               ; preds = %58
  %67 = sext i32 %63 to i64
  br label %68

68:                                               ; preds = %66, %56
  %69 = phi i64 [ 0, %56 ], [ %67, %66 ]
  %70 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %71 = mul nsw i64 %69, 12
  %72 = call ptr %70(i64 noundef %71, ptr noundef nonnull @.str.10) #19
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %74 = call ptr %73(i64 noundef %71, ptr noundef nonnull @.str.11) #19
  %75 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %76 = shl nsw i64 %69, 2
  %77 = call ptr %75(i64 noundef %76, ptr noundef nonnull @.str.12) #19
  %78 = load ptr, ptr %3, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %129, label %80

80:                                               ; preds = %68, %80
  %81 = phi ptr [ %105, %80 ], [ %78, %68 ]
  %82 = phi i32 [ %104, %80 ], [ 0, %68 ]
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x float], ptr %72, i64 %83
  %85 = getelementptr inbounds %struct.SSSPoints, ptr %81, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !97
  %87 = getelementptr inbounds %struct.SSSPoints, ptr %81, i64 0, i32 5
  %88 = load i32, ptr %87, align 8, !tbaa !101
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 %89, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %86, i64 %90, i1 false)
  %91 = getelementptr inbounds [3 x float], ptr %74, i64 %83
  %92 = getelementptr inbounds %struct.SSSPoints, ptr %81, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !99
  %94 = load i32, ptr %87, align 8, !tbaa !101
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %95, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %91, ptr align 4 %93, i64 %96, i1 false)
  %97 = getelementptr inbounds float, ptr %77, i64 %83
  %98 = getelementptr inbounds %struct.SSSPoints, ptr %81, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !100
  %100 = load i32, ptr %87, align 8, !tbaa !101
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %97, ptr align 4 %99, i64 %102, i1 false)
  %103 = load i32, ptr %87, align 8, !tbaa !101
  %104 = add nsw i32 %103, %82
  %105 = load ptr, ptr %81, align 8, !tbaa !34
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %80, !llvm.loop !147

107:                                              ; preds = %80
  %108 = load ptr, ptr %3, align 8, !tbaa !34
  br label %109

109:                                              ; preds = %107, %50
  %110 = phi ptr [ %55, %50 ], [ %108, %107 ]
  %111 = phi i32 [ 0, %50 ], [ %104, %107 ]
  %112 = phi ptr [ null, %50 ], [ %77, %107 ]
  %113 = phi ptr [ null, %50 ], [ %74, %107 ]
  %114 = phi ptr [ null, %50 ], [ %72, %107 ]
  %115 = icmp eq ptr %110, null
  br i1 %115, label %129, label %116

116:                                              ; preds = %109, %116
  %117 = phi ptr [ %127, %116 ], [ %110, %109 ]
  %118 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %119 = getelementptr inbounds %struct.SSSPoints, ptr %117, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !97
  call void %118(ptr noundef %120) #19
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %122 = getelementptr inbounds %struct.SSSPoints, ptr %117, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !99
  call void %121(ptr noundef %123) #19
  %124 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %125 = getelementptr inbounds %struct.SSSPoints, ptr %117, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !100
  call void %124(ptr noundef %126) #19
  %127 = load ptr, ptr %117, align 8, !tbaa !34
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %116, !llvm.loop !148

129:                                              ; preds = %116, %68, %109
  %130 = phi ptr [ %114, %109 ], [ %72, %68 ], [ %114, %116 ]
  %131 = phi ptr [ %113, %109 ], [ %74, %68 ], [ %113, %116 ]
  %132 = phi ptr [ %112, %109 ], [ %77, %68 ], [ %112, %116 ]
  %133 = phi i32 [ %111, %109 ], [ 0, %68 ], [ %111, %116 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #19
  %134 = load ptr, ptr %4, align 8, !tbaa !137
  %135 = load ptr, ptr %6, align 8, !tbaa !138
  %136 = call i32 %134(ptr noundef %135) #19
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %185

138:                                              ; preds = %129
  %139 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %140 = call ptr %139(i64 noundef 32, ptr noundef nonnull @.str.13) #19
  %141 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 118
  %142 = load float, ptr %141, align 8, !tbaa !149
  %143 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 119
  %144 = load float, ptr %143, align 4, !tbaa !150
  %145 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 114
  %146 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 121
  %147 = load float, ptr %146, align 4, !tbaa !151
  %148 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 122
  %149 = load float, ptr %148, align 8, !tbaa !152
  %150 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 116
  %151 = load float, ptr %150, align 8, !tbaa !153
  %152 = call float @get_render_aosss_error(ptr noundef nonnull %16, float noundef %151) #19
  %153 = load i32, ptr %26, align 4, !tbaa !144
  %154 = and i32 %153, 524296
  %155 = icmp ne i32 %154, 0
  %156 = fcmp olt float %152, 5.000000e-01
  %157 = select i1 %155, i1 %156, i1 false
  %158 = select i1 %157, float 5.000000e-01, float %152
  %159 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 115
  %160 = load float, ptr %159, align 4, !tbaa !64
  %161 = load float, ptr %145, align 4, !tbaa !64
  %162 = call ptr @scatter_settings_new(float noundef %160, float noundef %161, float noundef %142, float noundef %144, float noundef %147, float noundef %149) #20
  %163 = getelementptr inbounds %struct.SSSData, ptr %140, i64 0, i32 1
  store ptr %162, ptr %163, align 8, !tbaa !34
  %164 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 115, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !64
  %166 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 114, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !64
  %168 = call ptr @scatter_settings_new(float noundef %165, float noundef %167, float noundef %142, float noundef %144, float noundef %147, float noundef %149) #20
  %169 = getelementptr inbounds %struct.SSSData, ptr %140, i64 0, i32 1, i64 1
  store ptr %168, ptr %169, align 8, !tbaa !34
  %170 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 115, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !64
  %172 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 114, i64 2
  %173 = load float, ptr %172, align 4, !tbaa !64
  %174 = call ptr @scatter_settings_new(float noundef %171, float noundef %173, float noundef %142, float noundef %144, float noundef %147, float noundef %149) #20
  %175 = getelementptr inbounds %struct.SSSData, ptr %140, i64 0, i32 1, i64 2
  store ptr %174, ptr %175, align 8, !tbaa !34
  %176 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 117
  %177 = load float, ptr %176, align 4, !tbaa !154
  %178 = call ptr @scatter_tree_new(ptr noundef nonnull %163, float noundef %177, float noundef %158, ptr noundef %130, ptr noundef %131, ptr noundef %132, i32 noundef %133) #20
  store ptr %178, ptr %140, align 8, !tbaa !155
  %179 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %179(ptr noundef %130) #19
  %180 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %180(ptr noundef %131) #19
  %181 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %181(ptr noundef %132) #19
  %182 = load ptr, ptr %140, align 8, !tbaa !155
  call void @scatter_tree_build(ptr noundef %182) #20
  %183 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 74
  %184 = load ptr, ptr %183, align 8, !tbaa !119
  call void @BLI_ghash_insert(ptr noundef %184, ptr noundef %1, ptr noundef nonnull %140) #19
  br label %197

185:                                              ; preds = %129
  %186 = icmp eq ptr %130, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %185
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %188(ptr noundef nonnull %130) #19
  br label %189

189:                                              ; preds = %187, %185
  %190 = icmp eq ptr %131, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %189
  %192 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %192(ptr noundef nonnull %131) #19
  br label %193

193:                                              ; preds = %191, %189
  %194 = icmp eq ptr %132, null
  br i1 %194, label %197, label %195

195:                                              ; preds = %193
  %196 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %196(ptr noundef nonnull %132) #19
  br label %197

197:                                              ; preds = %138, %195, %193, %47, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !157 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !158
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sss_free_tree(ptr noundef %0) unnamed_addr #0 !PGOFuncName !160 {
  %2 = load ptr, ptr %0, align 8, !tbaa !155
  tail call void @scatter_tree_free(ptr noundef %2) #20
  %3 = getelementptr inbounds %struct.SSSData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @scatter_settings_free(ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.SSSData, ptr %0, i64 0, i32 1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @scatter_settings_free(ptr noundef %6) #20
  %7 = getelementptr inbounds %struct.SSSData, ptr %0, i64 0, i32 1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void @scatter_settings_free(ptr noundef %8) #20
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !161 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !158
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @sample_sss(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %6, ptr noundef %1) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !64
  %12 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !64
  br label %15

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 8, !tbaa !155
  tail call void @scatter_tree_sample(ptr noundef %14, ptr noundef %2, ptr noundef %3) #20
  br label %15

15:                                               ; preds = %4, %11, %13
  %16 = phi i32 [ 1, %13 ], [ 0, %11 ], [ 0, %4 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @sss_pass_done(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !164
  %5 = and i16 %4, 64
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %9 = load i32, ptr %8, align 8, !tbaa !141
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 74
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %14, ptr noundef %1) #19
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %12, %16, %7, %2
  %21 = phi i32 [ 1, %7 ], [ 1, %2 ], [ 0, %12 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @f_Rd(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #12 !PGOFuncName !165 {
  %4 = fsub float 1.000000e+00, %0
  %5 = fmul float %4, 3.000000e+00
  %6 = tail call float @sqrtf(float noundef %5) #19
  %7 = fmul float %0, 5.000000e-01
  %8 = fmul float %1, 0xBFF5555560000000
  %9 = fmul float %8, %6
  %10 = tail call float @expf(float noundef %9) #19
  %11 = fadd float %10, 1.000000e+00
  %12 = fmul float %7, %11
  %13 = fneg float %6
  %14 = tail call float @expf(float noundef %13) #19
  %15 = fneg float %2
  %16 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %15)
  ret float %16
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @Rd(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #13 !PGOFuncName !166 {
  %3 = fmul float %1, %1
  %4 = tail call fastcc float @Rd_rsquare(ptr noundef %0, float noundef %3) #20
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @Rd_rsquare(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #13 !PGOFuncName !167 {
  %3 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 9
  %4 = load float, ptr %3, align 4, !tbaa !52
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %1)
  %6 = tail call float @sqrtf(float noundef %5) #19
  %7 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 10
  %8 = load float, ptr %7, align 8, !tbaa !53
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %1)
  %10 = tail call float @sqrtf(float noundef %9) #19
  %11 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 4
  %12 = load float, ptr %11, align 8, !tbaa !47
  %13 = fneg float %12
  %14 = fmul float %6, %13
  %15 = load float, ptr %3, align 4, !tbaa !52
  %16 = tail call float @expf(float noundef %14) #19
  %17 = load float, ptr %7, align 8, !tbaa !53
  %18 = load float, ptr %11, align 8, !tbaa !47
  %19 = insertelement <2 x float> poison, float %12, i64 0
  %20 = insertelement <2 x float> %19, float %18, i64 1
  %21 = insertelement <2 x float> poison, float %6, i64 0
  %22 = insertelement <2 x float> %21, float %10, i64 1
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %22, <2 x float> <float 1.000000e+00, float 1.000000e+00>)
  %24 = insertelement <2 x float> poison, float %15, i64 0
  %25 = insertelement <2 x float> %24, float %17, i64 1
  %26 = fmul <2 x float> %25, %23
  %27 = fneg float %18
  %28 = fmul float %10, %27
  %29 = tail call float @expf(float noundef %28) #19
  %30 = insertelement <2 x float> poison, float %16, i64 0
  %31 = insertelement <2 x float> %30, float %29, i64 1
  %32 = fmul <2 x float> %31, %26
  %33 = fmul <2 x float> %22, %22
  %34 = fmul <2 x float> %22, %33
  %35 = fdiv <2 x float> %32, %34
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %37 = fadd <2 x float> %35, %36
  %38 = extractelement <2 x float> %37, i64 0
  %39 = fmul float %38, 0x3FB45F3060000000
  ret float %39
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @subnode_middle(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 !PGOFuncName !168 {
  %5 = and i32 %0, 1
  %6 = and i32 %0, 2
  %7 = and i32 %0, 4
  %8 = load float, ptr %1, align 4, !tbaa !64
  %9 = icmp eq i32 %5, 0
  %10 = load float, ptr %2, align 4, !tbaa !64
  %11 = fneg float %10
  %12 = select i1 %9, float %11, float %10
  %13 = fadd float %8, %12
  store float %13, ptr %3, align 4, !tbaa !64
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !64
  %16 = icmp eq i32 %6, 0
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !64
  %19 = fneg float %18
  %20 = select i1 %16, float %19, float %18
  %21 = fadd float %15, %20
  %22 = getelementptr inbounds float, ptr %3, i64 1
  store float %21, ptr %22, align 4, !tbaa !64
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !64
  %25 = icmp eq i32 %7, 0
  %26 = getelementptr inbounds float, ptr %2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !64
  %28 = fneg float %27
  %29 = select i1 %25, float %28, float %27
  %30 = fadd float %24, %29
  %31 = getelementptr inbounds float, ptr %3, i64 2
  store float %30, ptr %31, align 4, !tbaa !64
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sum_leaf_radiance(ptr nocapture noundef %0) unnamed_addr #16 !PGOFuncName !169 {
  %2 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %4 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1, i64 2
  %6 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1, i64 1
  %7 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2, i64 2
  %9 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2, i64 1
  %10 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  %11 = load i32, ptr %10, align 4, !tbaa !84
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %92

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 3
  %18 = zext nneg i32 %11 to i64
  br label %19

19:                                               ; preds = %13, %80
  %20 = phi float [ 0.000000e+00, %13 ], [ %81, %80 ]
  %21 = phi float [ 0.000000e+00, %13 ], [ %82, %80 ]
  %22 = phi float [ 0.000000e+00, %13 ], [ %83, %80 ]
  %23 = phi float [ 0.000000e+00, %13 ], [ %84, %80 ]
  %24 = phi float [ 0.000000e+00, %13 ], [ %85, %80 ]
  %25 = phi float [ 0.000000e+00, %13 ], [ %86, %80 ]
  %26 = phi i64 [ 0, %13 ], [ %87, %80 ]
  %27 = phi float [ 0.000000e+00, %13 ], [ %52, %80 ]
  %28 = phi float [ 0.000000e+00, %13 ], [ %49, %80 ]
  %29 = phi float [ 0.000000e+00, %13 ], [ %47, %80 ]
  %30 = phi float [ 0.000000e+00, %13 ], [ %44, %80 ]
  %31 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %26
  %32 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %26, i32 2
  %33 = load float, ptr %32, align 4, !tbaa !73
  %34 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %26, i32 1
  %35 = load float, ptr %34, align 4, !tbaa !64
  %36 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %26, i32 1, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !64
  %38 = fadd float %35, %37
  %39 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %26, i32 1, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !64
  %41 = fadd float %38, %40
  %42 = tail call float @llvm.fabs.f32(float %41)
  %43 = fmul float %33, %42
  %44 = fadd float %30, %43
  %45 = load float, ptr %31, align 4, !tbaa !64
  %46 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 1
  %47 = tail call float @llvm.fmuladd.f32(float %43, float %45, float %29)
  store float %47, ptr %0, align 8, !tbaa !64
  %48 = load float, ptr %46, align 4, !tbaa !64
  %49 = tail call float @llvm.fmuladd.f32(float %43, float %48, float %28)
  store float %49, ptr %3, align 4, !tbaa !64
  %50 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !64
  %52 = tail call float @llvm.fmuladd.f32(float %43, float %51, float %27)
  store float %52, ptr %2, align 8, !tbaa !64
  %53 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %26, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !75
  %55 = icmp eq i32 %54, 0
  %56 = load float, ptr %34, align 4, !tbaa !64
  %57 = load float, ptr %32, align 4, !tbaa !73
  br i1 %55, label %69, label %58

58:                                               ; preds = %19
  %59 = tail call float @llvm.fmuladd.f32(float %56, float %57, float %25)
  store float %59, ptr %7, align 8, !tbaa !64
  %60 = load float, ptr %36, align 4, !tbaa !64
  %61 = load float, ptr %32, align 4, !tbaa !73
  %62 = tail call float @llvm.fmuladd.f32(float %60, float %61, float %24)
  store float %62, ptr %9, align 4, !tbaa !64
  %63 = load float, ptr %39, align 4, !tbaa !64
  %64 = load float, ptr %32, align 4, !tbaa !73
  %65 = tail call float @llvm.fmuladd.f32(float %63, float %64, float %23)
  store float %65, ptr %8, align 8, !tbaa !64
  %66 = load float, ptr %32, align 4, !tbaa !73
  %67 = load float, ptr %16, align 8, !tbaa !170
  %68 = fadd float %66, %67
  store float %68, ptr %16, align 8, !tbaa !170
  br label %80

69:                                               ; preds = %19
  %70 = tail call float @llvm.fmuladd.f32(float %56, float %57, float %22)
  store float %70, ptr %4, align 4, !tbaa !64
  %71 = load float, ptr %36, align 4, !tbaa !64
  %72 = load float, ptr %32, align 4, !tbaa !73
  %73 = tail call float @llvm.fmuladd.f32(float %71, float %72, float %21)
  store float %73, ptr %6, align 4, !tbaa !64
  %74 = load float, ptr %39, align 4, !tbaa !64
  %75 = load float, ptr %32, align 4, !tbaa !73
  %76 = tail call float @llvm.fmuladd.f32(float %74, float %75, float %20)
  store float %76, ptr %5, align 4, !tbaa !64
  %77 = load float, ptr %32, align 4, !tbaa !73
  %78 = load float, ptr %17, align 4, !tbaa !171
  %79 = fadd float %77, %78
  store float %79, ptr %17, align 4, !tbaa !171
  br label %80

80:                                               ; preds = %58, %69
  %81 = phi float [ %20, %58 ], [ %76, %69 ]
  %82 = phi float [ %21, %58 ], [ %73, %69 ]
  %83 = phi float [ %22, %58 ], [ %70, %69 ]
  %84 = phi float [ %65, %58 ], [ %23, %69 ]
  %85 = phi float [ %62, %58 ], [ %24, %69 ]
  %86 = phi float [ %59, %58 ], [ %25, %69 ]
  %87 = add nuw nsw i64 %26, 1
  %88 = icmp eq i64 %87, %18
  br i1 %88, label %89, label %19, !llvm.loop !172

89:                                               ; preds = %80
  %90 = insertelement <2 x float> poison, float %47, i64 0
  %91 = insertelement <2 x float> %90, float %49, i64 1
  br label %92

92:                                               ; preds = %89, %1
  %93 = phi float [ 0.000000e+00, %1 ], [ %52, %89 ]
  %94 = phi float [ 0.000000e+00, %1 ], [ %84, %89 ]
  %95 = phi float [ 0.000000e+00, %1 ], [ %85, %89 ]
  %96 = phi float [ 0.000000e+00, %1 ], [ %86, %89 ]
  %97 = phi float [ 0.000000e+00, %1 ], [ %81, %89 ]
  %98 = phi float [ 0.000000e+00, %1 ], [ %82, %89 ]
  %99 = phi float [ 0.000000e+00, %1 ], [ %83, %89 ]
  %100 = phi float [ 0.000000e+00, %1 ], [ %44, %89 ]
  %101 = phi <2 x float> [ zeroinitializer, %1 ], [ %91, %89 ]
  %102 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 3
  %103 = load float, ptr %102, align 4, !tbaa !171
  %104 = fcmp ogt float %103, 0x3C9CD2B2A0000000
  br i1 %104, label %105, label %110

105:                                              ; preds = %92
  %106 = fdiv float 1.000000e+00, %103
  %107 = fmul float %106, %99
  store float %107, ptr %4, align 4, !tbaa !64
  %108 = fmul float %106, %98
  store float %108, ptr %6, align 4, !tbaa !64
  %109 = fmul float %106, %97
  store float %109, ptr %5, align 4, !tbaa !64
  br label %110

110:                                              ; preds = %105, %92
  %111 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 4
  %112 = load float, ptr %111, align 8, !tbaa !170
  %113 = fcmp ogt float %112, 0x3C9CD2B2A0000000
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = fdiv float 1.000000e+00, %112
  %116 = fmul float %115, %96
  store float %116, ptr %7, align 8, !tbaa !64
  %117 = fmul float %115, %95
  store float %117, ptr %9, align 4, !tbaa !64
  %118 = fmul float %115, %94
  store float %118, ptr %8, align 8, !tbaa !64
  br label %119

119:                                              ; preds = %114, %110
  %120 = fcmp ogt float %100, 0x3C9CD2B2A0000000
  br i1 %120, label %128, label %121

121:                                              ; preds = %119
  br i1 %12, label %122, label %154

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !82
  %125 = zext nneg i32 %11 to i64
  %126 = extractelement <2 x float> %101, i64 0
  %127 = extractelement <2 x float> %101, i64 1
  br label %135

128:                                              ; preds = %119
  %129 = fdiv float 1.000000e+00, %100
  %130 = extractelement <2 x float> %101, i64 0
  %131 = fmul float %129, %130
  store float %131, ptr %0, align 8, !tbaa !64
  %132 = extractelement <2 x float> %101, i64 1
  %133 = fmul float %129, %132
  store float %133, ptr %3, align 4, !tbaa !64
  %134 = fmul float %129, %93
  br label %162

135:                                              ; preds = %122, %135
  %136 = phi i64 [ 0, %122 ], [ %149, %135 ]
  %137 = phi float [ %93, %122 ], [ %148, %135 ]
  %138 = phi float [ %127, %122 ], [ %145, %135 ]
  %139 = phi float [ %126, %122 ], [ %143, %135 ]
  %140 = getelementptr inbounds %struct.ScatterPoint, ptr %124, i64 %136
  %141 = load float, ptr %140, align 4, !tbaa !64
  %142 = getelementptr inbounds [3 x float], ptr %140, i64 0, i64 1
  %143 = fadd float %141, %139
  store float %143, ptr %0, align 8, !tbaa !64
  %144 = load float, ptr %142, align 4, !tbaa !64
  %145 = fadd float %144, %138
  store float %145, ptr %3, align 4, !tbaa !64
  %146 = getelementptr inbounds [3 x float], ptr %140, i64 0, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !64
  %148 = fadd float %147, %137
  store float %148, ptr %2, align 8, !tbaa !64
  %149 = add nuw nsw i64 %136, 1
  %150 = icmp eq i64 %149, %125
  br i1 %150, label %151, label %135, !llvm.loop !173

151:                                              ; preds = %135
  %152 = insertelement <2 x float> poison, float %143, i64 0
  %153 = insertelement <2 x float> %152, float %145, i64 1
  br label %154

154:                                              ; preds = %151, %121
  %155 = phi float [ %93, %121 ], [ %148, %151 ]
  %156 = phi <2 x float> [ %101, %121 ], [ %153, %151 ]
  %157 = sitofp i32 %11 to float
  %158 = insertelement <2 x float> poison, float %157, i64 0
  %159 = shufflevector <2 x float> %158, <2 x float> poison, <2 x i32> zeroinitializer
  %160 = fdiv <2 x float> %156, %159
  store <2 x float> %160, ptr %0, align 8, !tbaa !64
  %161 = fdiv float %155, %157
  br label %162

162:                                              ; preds = %154, %128
  %163 = phi float [ %161, %154 ], [ %134, %128 ]
  store float %163, ptr %2, align 8, !tbaa !64
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sum_branch_radiance(ptr nocapture noundef %0) unnamed_addr #16 !PGOFuncName !174 {
  %2 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %4 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1, i64 2
  %6 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1, i64 1
  %7 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2, i64 2
  %9 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2, i64 1
  %10 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  br label %12

12:                                               ; preds = %1, %85
  %13 = phi float [ 0.000000e+00, %1 ], [ %86, %85 ]
  %14 = phi float [ 0.000000e+00, %1 ], [ %87, %85 ]
  %15 = phi float [ 0.000000e+00, %1 ], [ %88, %85 ]
  %16 = phi float [ 0.000000e+00, %1 ], [ %89, %85 ]
  %17 = phi float [ 0.000000e+00, %1 ], [ %90, %85 ]
  %18 = phi float [ 0.000000e+00, %1 ], [ %91, %85 ]
  %19 = phi float [ 0.000000e+00, %1 ], [ %92, %85 ]
  %20 = phi i64 [ 0, %1 ], [ %95, %85 ]
  %21 = phi float [ 0.000000e+00, %1 ], [ %93, %85 ]
  %22 = phi <2 x float> [ zeroinitializer, %1 ], [ %94, %85 ]
  %23 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 8, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %85, label %26

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.ScatterNode, ptr %24, i64 0, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !171
  %29 = getelementptr inbounds %struct.ScatterNode, ptr %24, i64 0, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !64
  %31 = getelementptr inbounds %struct.ScatterNode, ptr %24, i64 0, i32 1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !64
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds %struct.ScatterNode, ptr %24, i64 0, i32 1, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !64
  %36 = fadd float %33, %35
  %37 = tail call float @llvm.fabs.f32(float %36)
  %38 = fmul float %28, %37
  %39 = getelementptr inbounds %struct.ScatterNode, ptr %24, i64 0, i32 4
  %40 = load float, ptr %39, align 8, !tbaa !170
  %41 = getelementptr inbounds %struct.ScatterNode, ptr %24, i64 0, i32 2
  %42 = load float, ptr %41, align 8, !tbaa !64
  %43 = getelementptr inbounds %struct.ScatterNode, ptr %24, i64 0, i32 2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !64
  %45 = fadd float %42, %44
  %46 = getelementptr inbounds %struct.ScatterNode, ptr %24, i64 0, i32 2, i64 2
  %47 = load float, ptr %46, align 8, !tbaa !64
  %48 = fadd float %45, %47
  %49 = tail call float @llvm.fabs.f32(float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %40, float %49, float %38)
  %51 = fadd float %21, %50
  %52 = load float, ptr %24, align 8, !tbaa !64
  %53 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 1
  %54 = extractelement <2 x float> %22, i64 0
  %55 = tail call float @llvm.fmuladd.f32(float %50, float %52, float %54)
  store float %55, ptr %0, align 8, !tbaa !64
  %56 = load float, ptr %53, align 4, !tbaa !64
  %57 = extractelement <2 x float> %22, i64 1
  %58 = tail call float @llvm.fmuladd.f32(float %50, float %56, float %57)
  store float %58, ptr %3, align 4, !tbaa !64
  %59 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 2
  %60 = load float, ptr %59, align 8, !tbaa !64
  %61 = tail call float @llvm.fmuladd.f32(float %50, float %60, float %19)
  store float %61, ptr %2, align 8, !tbaa !64
  %62 = load float, ptr %29, align 4, !tbaa !64
  %63 = load float, ptr %27, align 4, !tbaa !171
  %64 = tail call float @llvm.fmuladd.f32(float %62, float %63, float %18)
  store float %64, ptr %4, align 4, !tbaa !64
  %65 = load float, ptr %31, align 4, !tbaa !64
  %66 = load float, ptr %27, align 4, !tbaa !171
  %67 = tail call float @llvm.fmuladd.f32(float %65, float %66, float %17)
  store float %67, ptr %6, align 4, !tbaa !64
  %68 = load float, ptr %34, align 4, !tbaa !64
  %69 = load float, ptr %27, align 4, !tbaa !171
  %70 = tail call float @llvm.fmuladd.f32(float %68, float %69, float %16)
  store float %70, ptr %5, align 4, !tbaa !64
  %71 = load float, ptr %41, align 8, !tbaa !64
  %72 = load float, ptr %39, align 8, !tbaa !170
  %73 = tail call float @llvm.fmuladd.f32(float %71, float %72, float %15)
  store float %73, ptr %7, align 8, !tbaa !64
  %74 = load float, ptr %43, align 4, !tbaa !64
  %75 = load float, ptr %39, align 8, !tbaa !170
  %76 = tail call float @llvm.fmuladd.f32(float %74, float %75, float %14)
  store float %76, ptr %9, align 4, !tbaa !64
  %77 = load float, ptr %46, align 8, !tbaa !64
  %78 = load float, ptr %39, align 8, !tbaa !170
  %79 = tail call float @llvm.fmuladd.f32(float %77, float %78, float %13)
  store float %79, ptr %8, align 8, !tbaa !64
  %80 = load <2 x float>, ptr %27, align 4, !tbaa !64
  %81 = load <2 x float>, ptr %10, align 4, !tbaa !64
  %82 = fadd <2 x float> %80, %81
  store <2 x float> %82, ptr %10, align 4, !tbaa !64
  %83 = insertelement <2 x float> poison, float %55, i64 0
  %84 = insertelement <2 x float> %83, float %58, i64 1
  br label %85

85:                                               ; preds = %12, %26
  %86 = phi float [ %13, %12 ], [ %79, %26 ]
  %87 = phi float [ %14, %12 ], [ %76, %26 ]
  %88 = phi float [ %15, %12 ], [ %73, %26 ]
  %89 = phi float [ %16, %12 ], [ %70, %26 ]
  %90 = phi float [ %17, %12 ], [ %67, %26 ]
  %91 = phi float [ %18, %12 ], [ %64, %26 ]
  %92 = phi float [ %19, %12 ], [ %61, %26 ]
  %93 = phi float [ %21, %12 ], [ %51, %26 ]
  %94 = phi <2 x float> [ %22, %12 ], [ %84, %26 ]
  %95 = add nuw nsw i64 %20, 1
  %96 = icmp eq i64 %95, 8
  br i1 %96, label %97, label %12, !llvm.loop !175

97:                                               ; preds = %85
  %98 = load float, ptr %10, align 4, !tbaa !171
  %99 = fcmp ogt float %98, 0x3C9CD2B2A0000000
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = fdiv float 1.000000e+00, %98
  %102 = fmul float %101, %91
  store float %102, ptr %4, align 4, !tbaa !64
  %103 = fmul float %101, %90
  store float %103, ptr %6, align 4, !tbaa !64
  %104 = fmul float %101, %89
  store float %104, ptr %5, align 4, !tbaa !64
  br label %105

105:                                              ; preds = %100, %97
  %106 = load float, ptr %11, align 8, !tbaa !170
  %107 = fcmp ogt float %106, 0x3C9CD2B2A0000000
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = fdiv float 1.000000e+00, %106
  %110 = fmul float %109, %88
  store float %110, ptr %7, align 8, !tbaa !64
  %111 = fmul float %109, %87
  store float %111, ptr %9, align 4, !tbaa !64
  %112 = fmul float %109, %86
  store float %112, ptr %8, align 8, !tbaa !64
  br label %113

113:                                              ; preds = %108, %105
  %114 = fcmp ogt float %93, 0x3C9CD2B2A0000000
  br i1 %114, label %115, label %122

115:                                              ; preds = %113
  %116 = fdiv float 1.000000e+00, %93
  %117 = extractelement <2 x float> %94, i64 0
  %118 = fmul float %116, %117
  store float %118, ptr %0, align 8, !tbaa !64
  %119 = extractelement <2 x float> %94, i64 1
  %120 = fmul float %116, %119
  store float %120, ptr %3, align 4, !tbaa !64
  %121 = fmul float %116, %92
  br label %156

122:                                              ; preds = %113, %144
  %123 = phi float [ %145, %144 ], [ %92, %113 ]
  %124 = phi i64 [ %148, %144 ], [ 0, %113 ]
  %125 = phi i32 [ %146, %144 ], [ 0, %113 ]
  %126 = phi <2 x float> [ %147, %144 ], [ %94, %113 ]
  %127 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 8, i64 %124
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = icmp eq ptr %128, null
  br i1 %129, label %144, label %130

130:                                              ; preds = %122
  %131 = load float, ptr %128, align 8, !tbaa !64
  %132 = getelementptr inbounds [3 x float], ptr %128, i64 0, i64 1
  %133 = extractelement <2 x float> %126, i64 0
  %134 = fadd float %131, %133
  store float %134, ptr %0, align 8, !tbaa !64
  %135 = load float, ptr %132, align 4, !tbaa !64
  %136 = extractelement <2 x float> %126, i64 1
  %137 = fadd float %135, %136
  store float %137, ptr %3, align 4, !tbaa !64
  %138 = getelementptr inbounds [3 x float], ptr %128, i64 0, i64 2
  %139 = load float, ptr %138, align 8, !tbaa !64
  %140 = fadd float %139, %123
  store float %140, ptr %2, align 8, !tbaa !64
  %141 = add nsw i32 %125, 1
  %142 = insertelement <2 x float> poison, float %134, i64 0
  %143 = insertelement <2 x float> %142, float %137, i64 1
  br label %144

144:                                              ; preds = %122, %130
  %145 = phi float [ %140, %130 ], [ %123, %122 ]
  %146 = phi i32 [ %141, %130 ], [ %125, %122 ]
  %147 = phi <2 x float> [ %143, %130 ], [ %126, %122 ]
  %148 = add nuw nsw i64 %124, 1
  %149 = icmp eq i64 %148, 8
  br i1 %149, label %150, label %122, !llvm.loop !176

150:                                              ; preds = %144
  %151 = sitofp i32 %146 to float
  %152 = insertelement <2 x float> poison, float %151, i64 0
  %153 = shufflevector <2 x float> %152, <2 x float> poison, <2 x i32> zeroinitializer
  %154 = fdiv <2 x float> %147, %153
  store <2 x float> %154, ptr %0, align 8, !tbaa !64
  %155 = fdiv float %145, %151
  br label %156

156:                                              ; preds = %150, %115
  %157 = phi float [ %155, %150 ], [ %121, %115 ]
  store float %157, ptr %2, align 8, !tbaa !64
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @traverse_octree(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #9 !PGOFuncName !177 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !84
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 6
  br label %12

12:                                               ; preds = %10, %25
  %13 = phi i64 [ 0, %10 ], [ %26, %25 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !82
  %15 = getelementptr inbounds %struct.ScatterPoint, ptr %14, i64 %13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %15) #20
  %16 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #20
  %17 = getelementptr inbounds %struct.ScatterPoint, ptr %14, i64 %13, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !75
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.ScatterPoint, ptr %14, i64 %13, i32 1
  %21 = getelementptr inbounds %struct.ScatterPoint, ptr %14, i64 %13, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !73
  br i1 %19, label %24, label %23

23:                                               ; preds = %12
  tail call fastcc void @add_radiance(ptr noundef %0, ptr noundef null, ptr noundef nonnull %20, float noundef 0.000000e+00, float noundef %22, float noundef %16, ptr noundef %4) #20
  br label %25

24:                                               ; preds = %12
  tail call fastcc void @add_radiance(ptr noundef %0, ptr noundef nonnull %20, ptr noundef null, float noundef %22, float noundef 0.000000e+00, float noundef %16, ptr noundef %4) #20
  br label %25

25:                                               ; preds = %24, %23
  %26 = add nuw nsw i64 %13, 1
  %27 = load i32, ptr %7, align 4, !tbaa !84
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %12, label %81, !llvm.loop !178

30:                                               ; preds = %5
  %31 = icmp ne i32 %3, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %30
  %33 = load float, ptr %2, align 4, !tbaa !64
  %34 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7
  %35 = load float, ptr %34, align 8, !tbaa !64
  %36 = fcmp oge float %33, %35
  %37 = zext i1 %36 to i64
  %38 = getelementptr inbounds float, ptr %2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !64
  %40 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !64
  %42 = fcmp oge float %39, %41
  %43 = select i1 %42, i64 2, i64 0
  %44 = or disjoint i64 %43, %37
  %45 = getelementptr inbounds float, ptr %2, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !64
  %47 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7, i64 2
  %48 = load float, ptr %47, align 8, !tbaa !64
  %49 = fcmp oge float %46, %48
  %50 = select i1 %49, i64 4, i64 0
  %51 = or disjoint i64 %44, %50
  br label %52

52:                                               ; preds = %32, %30
  %53 = phi i64 [ %51, %32 ], [ 0, %30 ]
  %54 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 2
  br label %55

55:                                               ; preds = %52, %78
  %56 = phi i64 [ 0, %52 ], [ %79, %78 ]
  %57 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 8, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %78, label %60

60:                                               ; preds = %55
  %61 = icmp eq i64 %53, %56
  %62 = select i1 %31, i1 %61, i1 false
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call fastcc void @traverse_octree(ptr noundef %0, ptr noundef nonnull %58, ptr noundef %2, i32 noundef 1, ptr noundef %4) #20
  br label %78

64:                                               ; preds = %60
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %58) #20
  %65 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #20
  %66 = getelementptr inbounds %struct.ScatterNode, ptr %58, i64 0, i32 3
  %67 = load float, ptr %66, align 4, !tbaa !171
  %68 = getelementptr inbounds %struct.ScatterNode, ptr %58, i64 0, i32 4
  %69 = load float, ptr %68, align 8, !tbaa !170
  %70 = fadd float %67, %69
  %71 = load float, ptr %54, align 8, !tbaa !69
  %72 = fmul float %65, %71
  %73 = fcmp ogt float %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  tail call fastcc void @traverse_octree(ptr noundef nonnull %0, ptr noundef nonnull %58, ptr noundef %2, i32 noundef 0, ptr noundef %4) #20
  br label %78

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.ScatterNode, ptr %58, i64 0, i32 1
  %77 = getelementptr inbounds %struct.ScatterNode, ptr %58, i64 0, i32 2
  tail call fastcc void @add_radiance(ptr noundef nonnull %0, ptr noundef nonnull %76, ptr noundef nonnull %77, float noundef %67, float noundef %69, float noundef %65, ptr noundef %4) #20
  br label %78

78:                                               ; preds = %63, %75, %74, %55
  %79 = add nuw nsw i64 %56, 1
  %80 = icmp eq i64 %79, 8
  br i1 %80, label %81, label %55, !llvm.loop !179

81:                                               ; preds = %78, %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !180 {
  %4 = load float, ptr %1, align 4, !tbaa !64
  %5 = load float, ptr %2, align 4, !tbaa !64
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !64
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !64
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !64
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !64
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !64
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !181 {
  %4 = load float, ptr %1, align 4, !tbaa !64
  %5 = load float, ptr %2, align 4, !tbaa !64
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !64
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !64
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !64
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !64
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !64
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !182 {
  %3 = load float, ptr %0, align 4, !tbaa !64
  %4 = load float, ptr %1, align 4, !tbaa !64
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !64
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !64
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !64
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @add_radiance(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr nocapture noundef %6) unnamed_addr #17 !PGOFuncName !183 {
  %8 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  %9 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1
  call fastcc void @approximate_Rd_rgb(ptr noundef nonnull %9, float noundef %5, ptr noundef nonnull %8) #20
  %10 = icmp ne ptr %1, null
  %11 = fcmp une float %3, 0.000000e+00
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %15 = load float, ptr %14, align 8, !tbaa !64
  %16 = fmul float %15, %3
  %17 = load float, ptr %1, align 4, !tbaa !64
  %18 = load float, ptr %6, align 4, !tbaa !64
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !64
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !64
  %25 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 2
  %26 = load <2 x float>, ptr %8, align 8, !tbaa !64
  %27 = insertelement <2 x float> poison, float %3, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x float> %26, %28
  %30 = extractelement <2 x float> %29, i64 0
  %31 = tail call float @llvm.fmuladd.f32(float %17, float %30, float %18)
  store float %31, ptr %6, align 4, !tbaa !64
  %32 = load float, ptr %19, align 4, !tbaa !64
  %33 = extractelement <2 x float> %29, i64 1
  %34 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %21)
  store float %34, ptr %20, align 4, !tbaa !64
  %35 = load float, ptr %22, align 4, !tbaa !64
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %16, float %24)
  store float %36, ptr %23, align 4, !tbaa !64
  %37 = load <2 x float>, ptr %25, align 4, !tbaa !64
  %38 = fadd <2 x float> %29, %37
  store <2 x float> %38, ptr %25, align 4, !tbaa !64
  %39 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !64
  %41 = fadd float %16, %40
  store float %41, ptr %39, align 4, !tbaa !64
  br label %42

42:                                               ; preds = %13, %7
  %43 = icmp ne ptr %2, null
  %44 = fcmp une float %4, 0.000000e+00
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %48 = load float, ptr %47, align 8, !tbaa !64
  %49 = fmul float %48, %4
  %50 = load float, ptr %2, align 4, !tbaa !64
  %51 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 1
  %52 = load float, ptr %51, align 4, !tbaa !64
  %53 = getelementptr inbounds float, ptr %2, i64 1
  %54 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 1, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !64
  %56 = getelementptr inbounds float, ptr %2, i64 2
  %57 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 1, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !64
  %59 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 3
  %60 = load <2 x float>, ptr %8, align 8, !tbaa !64
  %61 = insertelement <2 x float> poison, float %4, i64 0
  %62 = shufflevector <2 x float> %61, <2 x float> poison, <2 x i32> zeroinitializer
  %63 = fmul <2 x float> %60, %62
  %64 = extractelement <2 x float> %63, i64 0
  %65 = tail call float @llvm.fmuladd.f32(float %50, float %64, float %52)
  store float %65, ptr %51, align 4, !tbaa !64
  %66 = load float, ptr %53, align 4, !tbaa !64
  %67 = extractelement <2 x float> %63, i64 1
  %68 = tail call float @llvm.fmuladd.f32(float %66, float %67, float %55)
  store float %68, ptr %54, align 4, !tbaa !64
  %69 = load float, ptr %56, align 4, !tbaa !64
  %70 = tail call float @llvm.fmuladd.f32(float %69, float %49, float %58)
  store float %70, ptr %57, align 4, !tbaa !64
  %71 = load <2 x float>, ptr %59, align 4, !tbaa !64
  %72 = fadd <2 x float> %63, %71
  store <2 x float> %72, ptr %59, align 4, !tbaa !64
  %73 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 3, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !64
  %75 = fadd float %49, %74
  store float %75, ptr %73, align 4, !tbaa !64
  br label %76

76:                                               ; preds = %46, %42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @approximate_Rd_rgb(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #17 !PGOFuncName !184 {
  %4 = fcmp ogt float %1, 1.000000e+08
  br i1 %4, label %89, label %5

5:                                                ; preds = %3
  %6 = fcmp ogt float %1, 1.000000e+02
  br i1 %6, label %7, label %48

7:                                                ; preds = %5
  %8 = tail call float @sqrtf(float noundef %1) #19
  %9 = fptosi float %8 to i32
  %10 = icmp ult i32 %9, 10000
  br i1 %10, label %11, label %89

11:                                               ; preds = %7
  %12 = sitofp i32 %9 to float
  %13 = fsub float %8, %12
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.ScatterSettings, ptr %14, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = zext nneg i32 %9 to i64
  %18 = getelementptr inbounds float, ptr %16, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !64
  %20 = fsub float 1.000000e+00, %13
  %21 = add nuw nsw i32 %9, 1
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds float, ptr %16, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !64
  %25 = fmul float %13, %24
  %26 = tail call float @llvm.fmuladd.f32(float %19, float %20, float %25)
  store float %26, ptr %2, align 4, !tbaa !64
  %27 = getelementptr inbounds ptr, ptr %0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.ScatterSettings, ptr %28, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds float, ptr %30, i64 %17
  %32 = load float, ptr %31, align 4, !tbaa !64
  %33 = getelementptr inbounds float, ptr %30, i64 %22
  %34 = load float, ptr %33, align 4, !tbaa !64
  %35 = fmul float %13, %34
  %36 = tail call float @llvm.fmuladd.f32(float %32, float %20, float %35)
  %37 = getelementptr inbounds float, ptr %2, i64 1
  store float %36, ptr %37, align 4, !tbaa !64
  %38 = getelementptr inbounds ptr, ptr %0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.ScatterSettings, ptr %39, i64 0, i32 18
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  %42 = getelementptr inbounds float, ptr %41, i64 %17
  %43 = load float, ptr %42, align 4, !tbaa !64
  %44 = getelementptr inbounds float, ptr %41, i64 %22
  %45 = load float, ptr %44, align 4, !tbaa !64
  %46 = fmul float %13, %45
  %47 = tail call float @llvm.fmuladd.f32(float %43, float %20, float %46)
  br label %100

48:                                               ; preds = %5
  %49 = fmul float %1, 1.000000e+02
  %50 = fptosi float %49 to i32
  %51 = icmp ult i32 %50, 10000
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = sitofp i32 %50 to float
  %54 = fsub float %49, %53
  %55 = load ptr, ptr %0, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.ScatterSettings, ptr %55, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !62
  %58 = zext nneg i32 %50 to i64
  %59 = getelementptr inbounds float, ptr %57, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !64
  %61 = fsub float 1.000000e+00, %54
  %62 = add nuw nsw i32 %50, 1
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds float, ptr %57, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !64
  %66 = fmul float %54, %65
  %67 = tail call float @llvm.fmuladd.f32(float %60, float %61, float %66)
  store float %67, ptr %2, align 4, !tbaa !64
  %68 = getelementptr inbounds ptr, ptr %0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.ScatterSettings, ptr %69, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  %72 = getelementptr inbounds float, ptr %71, i64 %58
  %73 = load float, ptr %72, align 4, !tbaa !64
  %74 = getelementptr inbounds float, ptr %71, i64 %63
  %75 = load float, ptr %74, align 4, !tbaa !64
  %76 = fmul float %54, %75
  %77 = tail call float @llvm.fmuladd.f32(float %73, float %61, float %76)
  %78 = getelementptr inbounds float, ptr %2, i64 1
  store float %77, ptr %78, align 4, !tbaa !64
  %79 = getelementptr inbounds ptr, ptr %0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.ScatterSettings, ptr %80, i64 0, i32 17
  %82 = load ptr, ptr %81, align 8, !tbaa !62
  %83 = getelementptr inbounds float, ptr %82, i64 %58
  %84 = load float, ptr %83, align 4, !tbaa !64
  %85 = getelementptr inbounds float, ptr %82, i64 %63
  %86 = load float, ptr %85, align 4, !tbaa !64
  %87 = fmul float %54, %86
  %88 = tail call float @llvm.fmuladd.f32(float %84, float %61, float %87)
  br label %100

89:                                               ; preds = %7, %48, %3
  %90 = phi float [ %1, %3 ], [ %8, %7 ], [ %1, %48 ]
  %91 = load ptr, ptr %0, align 8, !tbaa !34
  %92 = tail call fastcc float @Rd_rsquare(ptr noundef %91, float noundef %90) #20
  store float %92, ptr %2, align 4, !tbaa !64
  %93 = getelementptr inbounds ptr, ptr %0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !34
  %95 = tail call fastcc float @Rd_rsquare(ptr noundef %94, float noundef %90) #20
  %96 = getelementptr inbounds float, ptr %2, i64 1
  store float %95, ptr %96, align 4, !tbaa !64
  %97 = getelementptr inbounds ptr, ptr %0, i64 2
  %98 = load ptr, ptr %97, align 8, !tbaa !34
  %99 = tail call fastcc float @Rd_rsquare(ptr noundef %98, float noundef %90) #20
  br label %100

100:                                              ; preds = %89, %52, %11
  %101 = phi float [ %99, %89 ], [ %88, %52 ], [ %47, %11 ]
  %102 = getelementptr inbounds float, ptr %2, i64 2
  store float %101, ptr %102, align 4, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RE_TileProcessor(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RE_FreeRenderResult(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @get_render_aosss_error(ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }

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
!38 = !{!39, !40, i64 0}
!39 = !{!"ScatterSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !35, i64 72, !35, i64 80}
!40 = !{!"float", !36, i64 0}
!41 = !{!39, !40, i64 20}
!42 = !{!39, !40, i64 28}
!43 = !{!39, !40, i64 44}
!44 = !{!39, !40, i64 48}
!45 = !{!39, !40, i64 52}
!46 = !{!39, !40, i64 32}
!47 = !{!39, !40, i64 16}
!48 = !{!39, !40, i64 12}
!49 = !{!39, !40, i64 8}
!50 = !{!39, !40, i64 4}
!51 = !{!39, !40, i64 24}
!52 = !{!39, !40, i64 36}
!53 = !{!39, !40, i64 40}
!54 = !{!39, !40, i64 56}
!55 = !{!39, !40, i64 60}
!56 = !{!39, !40, i64 64}
!57 = !{!"sss.c:min_ff"}
!58 = !{!"sss.c:compute_reduced_albedo"}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"sss.c:build_Rd_table"}
!62 = !{!39, !35, i64 72}
!63 = !{!39, !35, i64 80}
!64 = !{!40, !40, i64 0}
!65 = distinct !{!65, !60}
!66 = !{!67, !40, i64 36}
!67 = !{!"ScatterTree", !35, i64 0, !36, i64 8, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !68, i64 72, !36, i64 76, !36, i64 88}
!68 = !{!"int", !36, i64 0}
!69 = !{!67, !40, i64 32}
!70 = !{!67, !68, i64 72}
!71 = !{!67, !35, i64 48}
!72 = !{!67, !35, i64 56}
!73 = !{!74, !40, i64 24}
!74 = !{!"ScatterPoint", !36, i64 0, !36, i64 12, !40, i64 24, !68, i64 28}
!75 = !{!74, !68, i64 28}
!76 = distinct !{!76, !60}
!77 = !{!"sss.c:copy_v3_v3"}
!78 = !{!"sss.c:mul_v3_fl"}
!79 = !{!67, !35, i64 64}
!80 = !{!67, !35, i64 0}
!81 = !{!67, !35, i64 40}
!82 = !{!83, !35, i64 48}
!83 = !{!"ScatterNode", !36, i64 0, !36, i64 12, !36, i64 24, !40, i64 36, !40, i64 40, !68, i64 44, !35, i64 48, !36, i64 56, !36, i64 72}
!84 = !{!83, !68, i64 44}
!85 = !{!"sss.c:create_octree_node"}
!86 = !{i64 0, i64 12, !87, i64 12, i64 12, !87, i64 24, i64 4, !64, i64 28, i64 4, !88}
!87 = !{!36, !36, i64 0}
!88 = !{!68, !68, i64 0}
!89 = distinct !{!89, !60}
!90 = distinct !{!90, !60}
!91 = distinct !{!91, !60}
!92 = distinct !{!92, !60}
!93 = distinct !{!93, !60}
!94 = !{!"sss.c:sum_radiance"}
!95 = distinct !{!95, !60}
!96 = !{!"sss.c:compute_radiance"}
!97 = !{!98, !35, i64 16}
!98 = !{!"SSSPoints", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !68, i64 40}
!99 = !{!98, !35, i64 24}
!100 = !{!98, !35, i64 32}
!101 = !{!98, !68, i64 40}
!102 = !{!103, !35, i64 5856}
!103 = !{!"Render", !35, i64 0, !35, i64 8, !36, i64 16, !68, i64 92, !104, i64 96, !104, i64 98, !104, i64 100, !104, i64 102, !36, i64 104, !35, i64 112, !35, i64 120, !105, i64 128, !68, i64 144, !68, i64 148, !68, i64 152, !106, i64 156, !107, i64 172, !40, i64 188, !40, i64 192, !40, i64 196, !68, i64 200, !68, i64 204, !68, i64 208, !68, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !40, i64 544, !40, i64 548, !35, i64 552, !36, i64 560, !36, i64 816, !35, i64 1072, !36, i64 1080, !35, i64 1088, !35, i64 1096, !108, i64 1104, !115, i64 5088, !35, i64 5616, !68, i64 5624, !68, i64 5628, !105, i64 5632, !35, i64 5648, !35, i64 5656, !35, i64 5664, !35, i64 5672, !40, i64 5680, !35, i64 5688, !105, i64 5696, !40, i64 5712, !40, i64 5716, !68, i64 5720, !68, i64 5724, !68, i64 5728, !68, i64 5732, !68, i64 5736, !35, i64 5744, !105, i64 5752, !105, i64 5768, !105, i64 5784, !35, i64 5800, !105, i64 5808, !68, i64 5824, !35, i64 5832, !35, i64 5840, !35, i64 5848, !35, i64 5856, !35, i64 5864, !105, i64 5872, !35, i64 5888, !105, i64 5896, !105, i64 5912, !35, i64 5928, !35, i64 5936, !35, i64 5944, !35, i64 5952, !35, i64 5960, !35, i64 5968, !35, i64 5976, !35, i64 5984, !35, i64 5992, !35, i64 6000, !35, i64 6008, !35, i64 6016, !35, i64 6024, !35, i64 6032, !35, i64 6040, !35, i64 6048, !35, i64 6056, !117, i64 6064, !35, i64 6216, !35, i64 6224, !35, i64 6232}
!104 = !{!"short", !36, i64 0}
!105 = !{!"ListBase", !35, i64 0, !35, i64 8}
!106 = !{!"rcti", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12}
!107 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!108 = !{!"RenderData", !109, i64 0, !35, i64 248, !35, i64 256, !112, i64 264, !113, i64 328, !68, i64 400, !68, i64 404, !68, i64 408, !40, i64 412, !68, i64 416, !68, i64 420, !68, i64 424, !68, i64 428, !104, i64 432, !104, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !104, i64 456, !104, i64 458, !104, i64 460, !104, i64 462, !104, i64 464, !104, i64 466, !68, i64 468, !104, i64 472, !104, i64 474, !104, i64 476, !104, i64 478, !104, i64 480, !104, i64 482, !68, i64 484, !68, i64 488, !104, i64 492, !104, i64 494, !68, i64 496, !68, i64 500, !104, i64 504, !104, i64 506, !104, i64 508, !104, i64 510, !104, i64 512, !36, i64 514, !36, i64 515, !68, i64 516, !68, i64 520, !68, i64 524, !104, i64 528, !104, i64 530, !104, i64 532, !104, i64 534, !104, i64 536, !104, i64 538, !104, i64 540, !104, i64 542, !107, i64 544, !107, i64 560, !106, i64 576, !105, i64 592, !104, i64 608, !104, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !68, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !104, i64 648, !104, i64 650, !104, i64 652, !104, i64 654, !104, i64 656, !104, i64 658, !40, i64 660, !40, i64 664, !104, i64 668, !104, i64 670, !40, i64 672, !40, i64 676, !36, i64 680, !68, i64 1704, !104, i64 1708, !104, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !68, i64 2520, !104, i64 2524, !104, i64 2526, !40, i64 2528, !40, i64 2532, !104, i64 2536, !104, i64 2538, !40, i64 2540, !104, i64 2544, !104, i64 2546, !68, i64 2548, !104, i64 2552, !104, i64 2554, !104, i64 2556, !104, i64 2558, !40, i64 2560, !40, i64 2564, !35, i64 2568, !68, i64 2576, !40, i64 2580, !36, i64 2584, !114, i64 2616, !68, i64 3976, !68, i64 3980}
!109 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !104, i64 8, !104, i64 10, !40, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !110, i64 24, !111, i64 184}
!110 = !{!"ColorManagedViewSettings", !68, i64 0, !68, i64 4, !36, i64 8, !36, i64 72, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!111 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!112 = !{!"QuicktimeCodecSettings", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !68, i64 24, !68, i64 28, !68, i64 32, !68, i64 36, !68, i64 40, !68, i64 44, !104, i64 48, !104, i64 50, !68, i64 52, !68, i64 56, !68, i64 60}
!113 = !{!"FFMpegCodecData", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !68, i64 24, !68, i64 28, !40, i64 32, !68, i64 36, !68, i64 40, !68, i64 44, !68, i64 48, !68, i64 52, !68, i64 56, !68, i64 60, !35, i64 64}
!114 = !{!"BakeData", !109, i64 0, !36, i64 248, !104, i64 1272, !104, i64 1274, !104, i64 1276, !104, i64 1278, !40, i64 1280, !40, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!115 = !{!"World", !116, i64 0, !35, i64 120, !104, i64 128, !104, i64 130, !104, i64 132, !104, i64 134, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !104, i64 200, !104, i64 202, !104, i64 204, !104, i64 206, !104, i64 208, !104, i64 210, !104, i64 212, !104, i64 214, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !104, i64 264, !104, i64 266, !104, i64 268, !104, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !104, i64 288, !104, i64 290, !104, i64 292, !104, i64 294, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !104, i64 324, !104, i64 326, !104, i64 328, !104, i64 330, !104, i64 332, !104, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !104, i64 504, !104, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!116 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !104, i64 98, !68, i64 100, !68, i64 104, !68, i64 108, !35, i64 112}
!117 = !{!"RenderStats", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !68, i64 24, !104, i64 28, !104, i64 30, !104, i64 32, !104, i64 34, !104, i64 36, !104, i64 38, !36, i64 40, !118, i64 48, !118, i64 56, !35, i64 64, !35, i64 72, !36, i64 80, !40, i64 144, !40, i64 148}
!118 = !{!"double", !36, i64 0}
!119 = !{!103, !35, i64 5848}
!120 = !{!103, !35, i64 6000}
!121 = !{!103, !35, i64 6008}
!122 = !{!103, !35, i64 1088}
!123 = !{!124, !68, i64 100}
!124 = !{!"Material", !116, i64 0, !35, i64 120, !104, i64 128, !104, i64 130, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !125, i64 224, !126, i64 312, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !40, i64 348, !40, i64 352, !104, i64 356, !104, i64 358, !104, i64 360, !36, i64 362, !36, i64 363, !40, i64 364, !40, i64 368, !104, i64 372, !104, i64 374, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !104, i64 392, !104, i64 394, !68, i64 396, !68, i64 400, !68, i64 404, !68, i64 408, !104, i64 412, !104, i64 414, !104, i64 416, !104, i64 418, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !40, i64 456, !36, i64 460, !40, i64 524, !40, i64 528, !40, i64 532, !68, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !104, i64 544, !104, i64 546, !104, i64 548, !36, i64 550, !36, i64 551, !104, i64 552, !104, i64 554, !40, i64 556, !40, i64 560, !36, i64 564, !40, i64 580, !40, i64 584, !104, i64 588, !104, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !104, i64 612, !104, i64 614, !40, i64 616, !40, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !40, i64 800, !40, i64 804, !40, i64 808, !40, i64 812, !40, i64 816, !104, i64 820, !104, i64 822, !36, i64 824, !36, i64 836, !40, i64 848, !40, i64 852, !40, i64 856, !40, i64 860, !40, i64 864, !40, i64 868, !40, i64 872, !104, i64 876, !104, i64 878, !68, i64 880, !104, i64 884, !104, i64 886, !36, i64 888, !104, i64 904, !104, i64 906, !104, i64 908, !104, i64 910, !104, i64 912, !36, i64 914, !35, i64 920, !105, i64 928}
!125 = !{!"VolumeSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !40, i64 52, !40, i64 56, !40, i64 60, !104, i64 64, !104, i64 66, !104, i64 68, !104, i64 70, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84}
!126 = !{!"GameSettings", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12}
!127 = !{!124, !104, i64 130}
!128 = !{!124, !104, i64 876}
!129 = !{!103, !35, i64 6128}
!130 = distinct !{!130, !60}
!131 = !{!132, !35, i64 0}
!132 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !105, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !104, i64 2084, !104, i64 2086, !104, i64 2088, !36, i64 2090, !104, i64 2092, !68, i64 2096, !68, i64 2100, !36, i64 2104, !68, i64 2108, !68, i64 2112, !36, i64 2116}
!133 = distinct !{!133, !60}
!134 = !{i8 0, i8 2}
!135 = distinct !{!135, !60}
!136 = !{!"sss.c:sss_create_tree_mat"}
!137 = !{!103, !35, i64 6048}
!138 = !{!103, !35, i64 6056}
!139 = !{!103, !35, i64 112}
!140 = !{!103, !104, i64 98}
!141 = !{!103, !68, i64 1624}
!142 = !{!103, !104, i64 6098}
!143 = !{!103, !35, i64 5864}
!144 = !{!103, !68, i64 1620}
!145 = !{!105, !35, i64 0}
!146 = distinct !{!146, !60}
!147 = distinct !{!147, !60}
!148 = distinct !{!148, !60}
!149 = !{!124, !40, i64 856}
!150 = !{!124, !40, i64 860}
!151 = !{!124, !40, i64 868}
!152 = !{!124, !40, i64 872}
!153 = !{!124, !40, i64 848}
!154 = !{!124, !40, i64 852}
!155 = !{!156, !35, i64 0}
!156 = !{!"SSSData", !35, i64 0, !36, i64 8}
!157 = !{!"sss.c:BLI_ghashIterator_done"}
!158 = !{!159, !35, i64 8}
!159 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !68, i64 16}
!160 = !{!"sss.c:sss_free_tree"}
!161 = !{!"sss.c:BLI_ghashIterator_getValue"}
!162 = !{!163, !35, i64 16}
!163 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!164 = !{!103, !104, i64 96}
!165 = !{!"sss.c:f_Rd"}
!166 = !{!"sss.c:Rd"}
!167 = !{!"sss.c:Rd_rsquare"}
!168 = !{!"sss.c:subnode_middle"}
!169 = !{!"sss.c:sum_leaf_radiance"}
!170 = !{!83, !40, i64 40}
!171 = !{!83, !40, i64 36}
!172 = distinct !{!172, !60}
!173 = distinct !{!173, !60}
!174 = !{!"sss.c:sum_branch_radiance"}
!175 = distinct !{!175, !60}
!176 = distinct !{!176, !60}
!177 = !{!"sss.c:traverse_octree"}
!178 = distinct !{!178, !60}
!179 = distinct !{!179, !60}
!180 = !{!"sss.c:add_v3_v3v3"}
!181 = !{!"sss.c:sub_v3_v3v3"}
!182 = !{!"sss.c:dot_v3v3"}
!183 = !{!"sss.c:add_radiance"}
!184 = !{!"sss.c:approximate_Rd_rgb"}
