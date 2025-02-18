; ModuleID = 'blender/source/blender/blenkernel/intern/key.c'
source_filename = "blender/source/blender/blenkernel/intern/key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.StructRNA = type opaque
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.WeightsArrayCache = type { i32, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }

@slurph_opt = dso_local local_unnamed_addr global i32 1, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"per keyblock weights\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"BKE_key_evaluate_object out\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Keyblock\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Basis\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Key %d\00", align 1
@RNA_ShapeKey = external global %struct.StructRNA, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"kb->data\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"BKE_key_convert_to_vertcos vertCos\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"key_block_get_data\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"cached defgroup weights\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"weights\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_key_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_animdata(ptr noundef %0) #11
  %2 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %14, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %11(ptr noundef nonnull %8) #11
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %13(ptr noundef nonnull %6) #11
  %14 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !43

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_key_free_nolib(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %14, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %11(ptr noundef nonnull %8) #11
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %13(ptr noundef nonnull %6) #11
  %14 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !46

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_key_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !47
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %2, i16 noundef signext 17739, ptr noundef nonnull @.str) #11
  %4 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 9
  store i16 0, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 8
  store ptr %0, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 14
  store i32 1, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !55
  switch i16 %8, label %18 [
    i16 17741, label %10
    i16 21580, label %10
    i16 21827, label %9
  ]

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %1, %9
  %11 = phi i8 [ 4, %9 ], [ 3, %1 ], [ 3, %1 ]
  %12 = phi i8 [ 101, %9 ], [ 4, %1 ], [ 4, %1 ]
  %13 = phi i32 [ 16, %9 ], [ 12, %1 ], [ 12, %1 ]
  %14 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 3
  store i8 %11, ptr %14, align 1, !tbaa !56
  %15 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 3, i64 1
  store i8 %12, ptr %15, align 1, !tbaa !56
  %16 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 3, i64 2
  store i8 0, ptr %16, align 1, !tbaa !56
  %17 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 4
  store i32 %13, ptr %17, align 8, !tbaa !57
  br label %18

18:                                               ; preds = %10, %1
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_key_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @BKE_libblock_copy(ptr noundef nonnull %0) #11
  %5 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %6 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  tail call void @BLI_duplicatelist(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %7 = load ptr, ptr %5, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 2
  br label %12

12:                                               ; preds = %9, %26
  %13 = phi ptr [ %7, %9 ], [ %27, %26 ]
  %14 = phi ptr [ %6, %9 ], [ %15, %26 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.KeyBlock, ptr %13, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %21 = tail call ptr %20(ptr noundef nonnull %17) #11
  store ptr %21, ptr %16, align 8, !tbaa !34
  br label %22

22:                                               ; preds = %19, %12
  %23 = load ptr, ptr %10, align 8, !tbaa !58
  %24 = icmp eq ptr %15, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store ptr %13, ptr %11, align 8, !tbaa !58
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr %13, align 8, !tbaa !42
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !59

29:                                               ; preds = %26, %3, %1
  %30 = phi ptr [ null, %1 ], [ %4, %3 ], [ %4, %26 ]
  ret ptr %30
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_key_copy_nolib(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %5 = tail call ptr %4(ptr noundef nonnull %0) #11
  %6 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 6
  %8 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  tail call void @BLI_duplicatelist(ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %9 = load ptr, ptr %7, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 2
  br label %14

14:                                               ; preds = %11, %28
  %15 = phi ptr [ %9, %11 ], [ %29, %28 ]
  %16 = phi ptr [ %8, %11 ], [ %17, %28 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.KeyBlock, ptr %15, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %23 = tail call ptr %22(ptr noundef nonnull %19) #11
  store ptr %23, ptr %18, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %21, %14
  %25 = load ptr, ptr %12, align 8, !tbaa !58
  %26 = icmp eq ptr %17, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store ptr %15, ptr %13, align 8, !tbaa !58
  br label %28

28:                                               ; preds = %27, %24
  %29 = load ptr, ptr %15, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %14, !llvm.loop !61

31:                                               ; preds = %28, %3, %1
  %32 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %28 ]
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_key_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !62
  %5 = tail call zeroext i8 @new_id(ptr noundef null, ptr noundef nonnull %0, ptr noundef null) #11
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

declare zeroext i8 @new_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_key_sort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 2
  %11 = load float, ptr %10, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 2
  %13 = load float, ptr %12, align 8, !tbaa !64
  %14 = fcmp ogt float %11, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %5, %9
  %16 = load ptr, ptr %6, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %5, !llvm.loop !65

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %7) #11
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi ptr [ %2, %18 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.KeyBlock, ptr %22, i64 0, i32 2
  %26 = load float, ptr %25, align 8, !tbaa !64
  %27 = load float, ptr %19, align 8, !tbaa !64
  %28 = fcmp ogt float %26, %27
  br i1 %28, label %29, label %20, !llvm.loop !66

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.KeyBlock, ptr %22, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef %31, ptr noundef nonnull %7) #11
  br label %32

32:                                               ; preds = %15, %20, %1, %29
  %33 = load ptr, ptr %2, align 8, !tbaa !68
  %34 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !58
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @key_curve_position_weights(float noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  switch i32 %2, label %58 [
    i32 0, label %4
    i32 1, label %8
    i32 2, label %24
    i32 3, label %40
  ]

4:                                                ; preds = %3
  store float 0.000000e+00, ptr %1, align 4, !tbaa !69
  %5 = fsub float 1.000000e+00, %0
  %6 = getelementptr inbounds float, ptr %1, i64 1
  store float %5, ptr %6, align 4, !tbaa !69
  %7 = getelementptr inbounds float, ptr %1, i64 2
  store float %0, ptr %7, align 4, !tbaa !69
  br label %55

8:                                                ; preds = %3
  %9 = fmul float %0, %0
  %10 = fmul float %9, %0
  %11 = fmul float %9, 0x3FF6B851E0000000
  %12 = tail call float @llvm.fmuladd.f32(float %10, float 0xBFE6B851E0000000, float %11)
  %13 = tail call float @llvm.fmuladd.f32(float %0, float 0xBFE6B851E0000000, float %12)
  store float %13, ptr %1, align 4, !tbaa !69
  %14 = fmul float %9, 0xC00251EB80000000
  %15 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FF4A3D700000000, float %14)
  %16 = fadd float %15, 1.000000e+00
  %17 = getelementptr inbounds float, ptr %1, i64 1
  store float %16, ptr %17, align 4, !tbaa !69
  %18 = fmul float %9, 0x3FF947AE20000000
  %19 = tail call float @llvm.fmuladd.f32(float %10, float 0xBFF4A3D700000000, float %18)
  %20 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FE6B851E0000000, float %19)
  %21 = getelementptr inbounds float, ptr %1, i64 2
  store float %20, ptr %21, align 4, !tbaa !69
  %22 = fmul float %9, 0xBFE6B851E0000000
  %23 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FE6B851E0000000, float %22)
  br label %55

24:                                               ; preds = %3
  %25 = fmul float %0, %0
  %26 = fmul float %25, %0
  %27 = fmul float %25, 5.000000e-01
  %28 = tail call float @llvm.fmuladd.f32(float %26, float 0xBFC5555540000000, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %0, float -5.000000e-01, float %28)
  %30 = fadd float %29, 0x3FC5555540000000
  store float %30, ptr %1, align 4, !tbaa !69
  %31 = fneg float %25
  %32 = tail call float @llvm.fmuladd.f32(float %26, float 5.000000e-01, float %31)
  %33 = fadd float %32, 0x3FE5555560000000
  %34 = getelementptr inbounds float, ptr %1, i64 1
  store float %33, ptr %34, align 4, !tbaa !69
  %35 = tail call float @llvm.fmuladd.f32(float %26, float -5.000000e-01, float %27)
  %36 = tail call float @llvm.fmuladd.f32(float %0, float 5.000000e-01, float %35)
  %37 = fadd float %36, 0x3FC5555540000000
  %38 = getelementptr inbounds float, ptr %1, i64 2
  store float %37, ptr %38, align 4, !tbaa !69
  %39 = fmul float %26, 0x3FC5555540000000
  br label %55

40:                                               ; preds = %3
  %41 = fmul float %0, %0
  %42 = fmul float %41, %0
  %43 = tail call float @llvm.fmuladd.f32(float %42, float -5.000000e-01, float %41)
  %44 = tail call float @llvm.fmuladd.f32(float %0, float -5.000000e-01, float %43)
  store float %44, ptr %1, align 4, !tbaa !69
  %45 = fmul float %41, -2.500000e+00
  %46 = tail call float @llvm.fmuladd.f32(float %42, float 1.500000e+00, float %45)
  %47 = fadd float %46, 1.000000e+00
  %48 = getelementptr inbounds float, ptr %1, i64 1
  store float %47, ptr %48, align 4, !tbaa !69
  %49 = fmul float %41, 2.000000e+00
  %50 = tail call float @llvm.fmuladd.f32(float %42, float -1.500000e+00, float %49)
  %51 = tail call float @llvm.fmuladd.f32(float %0, float 5.000000e-01, float %50)
  %52 = getelementptr inbounds float, ptr %1, i64 2
  store float %51, ptr %52, align 4, !tbaa !69
  %53 = fmul float %41, -5.000000e-01
  %54 = tail call float @llvm.fmuladd.f32(float %42, float 5.000000e-01, float %53)
  br label %55

55:                                               ; preds = %4, %24, %40, %8
  %56 = phi float [ %23, %8 ], [ %54, %40 ], [ %39, %24 ], [ 0.000000e+00, %4 ]
  %57 = getelementptr inbounds float, ptr %1, i64 3
  store float %56, ptr %57, align 4, !tbaa !69
  br label %58

58:                                               ; preds = %55, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @key_curve_tangent_weights(float noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  switch i32 %2, label %49 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %21
    i32 3, label %32
  ]

4:                                                ; preds = %3
  store float 0.000000e+00, ptr %1, align 4, !tbaa !69
  %5 = getelementptr inbounds float, ptr %1, i64 1
  store float -1.000000e+00, ptr %5, align 4, !tbaa !69
  %6 = getelementptr inbounds float, ptr %1, i64 2
  store float 1.000000e+00, ptr %6, align 4, !tbaa !69
  br label %46

7:                                                ; preds = %3
  %8 = fmul float %0, %0
  %9 = fmul float %0, 0x4006B851E0000000
  %10 = tail call float @llvm.fmuladd.f32(float %8, float 0xC0010A3D60000000, float %9)
  %11 = fadd float %10, 0xBFE6B851E0000000
  store float %11, ptr %1, align 4, !tbaa !69
  %12 = fmul float %0, 0xC01251EB80000000
  %13 = tail call float @llvm.fmuladd.f32(float %8, float 0x400EF5C280000000, float %12)
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !69
  %15 = fmul float %0, 0x400947AE20000000
  %16 = tail call float @llvm.fmuladd.f32(float %8, float 0xC00EF5C280000000, float %15)
  %17 = fadd float %16, 0x3FE6B851E0000000
  %18 = getelementptr inbounds float, ptr %1, i64 2
  store float %17, ptr %18, align 4, !tbaa !69
  %19 = fmul float %0, 0xBFF6B851E0000000
  %20 = tail call float @llvm.fmuladd.f32(float %8, float 0x40010A3D60000000, float %19)
  br label %46

21:                                               ; preds = %3
  %22 = fmul float %0, %0
  %23 = tail call float @llvm.fmuladd.f32(float %22, float -5.000000e-01, float %0)
  %24 = fadd float %23, -5.000000e-01
  store float %24, ptr %1, align 4, !tbaa !69
  %25 = fmul float %0, -2.000000e+00
  %26 = tail call float @llvm.fmuladd.f32(float %22, float 1.500000e+00, float %25)
  %27 = getelementptr inbounds float, ptr %1, i64 1
  store float %26, ptr %27, align 4, !tbaa !69
  %28 = tail call float @llvm.fmuladd.f32(float %22, float -1.500000e+00, float %0)
  %29 = fadd float %28, 5.000000e-01
  %30 = getelementptr inbounds float, ptr %1, i64 2
  store float %29, ptr %30, align 4, !tbaa !69
  %31 = fmul float %22, 5.000000e-01
  br label %46

32:                                               ; preds = %3
  %33 = fmul float %0, %0
  %34 = fmul float %0, 2.000000e+00
  %35 = tail call float @llvm.fmuladd.f32(float %33, float -1.500000e+00, float %34)
  %36 = fadd float %35, -5.000000e-01
  store float %36, ptr %1, align 4, !tbaa !69
  %37 = fmul float %0, -5.000000e+00
  %38 = tail call float @llvm.fmuladd.f32(float %33, float 4.500000e+00, float %37)
  %39 = getelementptr inbounds float, ptr %1, i64 1
  store float %38, ptr %39, align 4, !tbaa !69
  %40 = fmul float %0, 4.000000e+00
  %41 = tail call float @llvm.fmuladd.f32(float %33, float -4.500000e+00, float %40)
  %42 = fadd float %41, 5.000000e-01
  %43 = getelementptr inbounds float, ptr %1, i64 2
  store float %42, ptr %43, align 4, !tbaa !69
  %44 = fneg float %0
  %45 = tail call float @llvm.fmuladd.f32(float %33, float 1.500000e+00, float %44)
  br label %46

46:                                               ; preds = %4, %21, %32, %7
  %47 = phi float [ %20, %7 ], [ %45, %32 ], [ %31, %21 ], [ 0.000000e+00, %4 ]
  %48 = getelementptr inbounds float, ptr %1, i64 3
  store float %47, ptr %48, align 4, !tbaa !69
  br label %49

49:                                               ; preds = %46, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @key_curve_normal_weights(float noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  switch i32 %2, label %28 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %13
    i32 3, label %20
  ]

4:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %28

5:                                                ; preds = %3
  %6 = tail call float @llvm.fmuladd.f32(float %0, float 0xC0110A3D60000000, float 0x4006B851E0000000)
  store float %6, ptr %1, align 4, !tbaa !69
  %7 = tail call float @llvm.fmuladd.f32(float %0, float 0x401EF5C280000000, float 0xC01251EB80000000)
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !69
  %9 = tail call float @llvm.fmuladd.f32(float %0, float 0xC01EF5C280000000, float 0x400947AE20000000)
  %10 = getelementptr inbounds float, ptr %1, i64 2
  store float %9, ptr %10, align 4, !tbaa !69
  %11 = tail call float @llvm.fmuladd.f32(float %0, float 0x40110A3D60000000, float 0xBFF6B851E0000000)
  %12 = getelementptr inbounds float, ptr %1, i64 3
  store float %11, ptr %12, align 4, !tbaa !69
  br label %28

13:                                               ; preds = %3
  %14 = tail call float @llvm.fmuladd.f32(float %0, float -1.000000e+00, float 1.000000e+00)
  store float %14, ptr %1, align 4, !tbaa !69
  %15 = tail call float @llvm.fmuladd.f32(float %0, float 3.000000e+00, float -2.000000e+00)
  %16 = getelementptr inbounds float, ptr %1, i64 1
  store float %15, ptr %16, align 4, !tbaa !69
  %17 = tail call float @llvm.fmuladd.f32(float %0, float -3.000000e+00, float 1.000000e+00)
  %18 = getelementptr inbounds float, ptr %1, i64 2
  store float %17, ptr %18, align 4, !tbaa !69
  %19 = getelementptr inbounds float, ptr %1, i64 3
  store float %0, ptr %19, align 4, !tbaa !69
  br label %28

20:                                               ; preds = %3
  %21 = tail call float @llvm.fmuladd.f32(float %0, float -3.000000e+00, float 2.000000e+00)
  store float %21, ptr %1, align 4, !tbaa !69
  %22 = tail call float @llvm.fmuladd.f32(float %0, float 9.000000e+00, float -5.000000e+00)
  %23 = getelementptr inbounds float, ptr %1, i64 1
  store float %22, ptr %23, align 4, !tbaa !69
  %24 = tail call float @llvm.fmuladd.f32(float %0, float -9.000000e+00, float 4.000000e+00)
  %25 = getelementptr inbounds float, ptr %1, i64 2
  store float %24, ptr %25, align 4, !tbaa !69
  %26 = tail call float @llvm.fmuladd.f32(float %0, float 3.000000e+00, float -1.000000e+00)
  %27 = getelementptr inbounds float, ptr %1, i64 3
  store float %26, ptr %27, align 4, !tbaa !69
  br label %28

28:                                               ; preds = %3, %5, %20, %13, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_key_evaluate_relative(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %13 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 1
  store i32 0, ptr %13, align 4, !tbaa !70
  %14 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !55
  switch i16 %19, label %26 [
    i16 17741, label %20
    i16 21580, label %21
    i16 21827, label %22
  ]

20:                                               ; preds = %17
  store i32 12, ptr %11, align 4, !tbaa !70
  br label %26

21:                                               ; preds = %17
  store i32 12, ptr %11, align 4, !tbaa !70
  br label %26

22:                                               ; preds = %17
  %23 = icmp eq i32 %7, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  store i32 16, ptr %11, align 4, !tbaa !70
  br label %26

25:                                               ; preds = %22
  store i32 48, ptr %11, align 4, !tbaa !70
  br label %26

26:                                               ; preds = %8, %17, %20, %21, %24, %25
  %27 = phi i32 [ undef, %8 ], [ undef, %17 ], [ 16, %24 ], [ 16, %25 ], [ 12, %21 ], [ 12, %20 ]
  %28 = phi i1 [ true, %8 ], [ true, %17 ], [ false, %24 ], [ false, %25 ], [ false, %21 ], [ false, %20 ]
  br i1 %28, label %300, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  store i8 1, ptr %12, align 1, !tbaa !56
  %31 = getelementptr inbounds [8 x i8], ptr %12, i64 0, i64 1
  store i8 100, ptr %31, align 1, !tbaa !56
  %32 = getelementptr inbounds [8 x i8], ptr %12, i64 0, i64 2
  store i8 0, ptr %32, align 1, !tbaa !56
  %33 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !57
  %35 = icmp eq i32 %7, 2
  %36 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  tail call fastcc void @cp_key(i32 noundef %0, i32 noundef %30, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %37, ptr noundef null, i32 noundef %7)
  %38 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = icmp eq ptr %39, null
  br i1 %40, label %300, label %41

41:                                               ; preds = %29
  %42 = mul nsw i32 %34, 3
  %43 = select i1 %35, i32 %42, i32 %34
  %44 = icmp eq ptr %6, null
  %45 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %46 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %47 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %48 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %49 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %50 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %51 = mul nsw i32 %27, %0
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %3, i64 %52
  %54 = icmp sgt i32 %30, %0
  %55 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 3
  %56 = select i1 %35, ptr %12, ptr %55
  %57 = sext i32 %43 to i64
  br label %58

58:                                               ; preds = %41, %296
  %59 = phi i64 [ 0, %41 ], [ %297, %296 ]
  %60 = phi ptr [ %39, %41 ], [ %298, %296 ]
  %61 = load ptr, ptr %36, align 8, !tbaa !58
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %296, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.KeyBlock, ptr %60, i64 0, i32 3
  %65 = load float, ptr %64, align 4, !tbaa !71
  %66 = getelementptr inbounds %struct.KeyBlock, ptr %60, i64 0, i32 7
  %67 = load i16, ptr %66, align 2, !tbaa !72
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  %70 = fcmp une float %65, 0.000000e+00
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %294

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.KeyBlock, ptr %60, i64 0, i32 8
  %74 = load i32, ptr %73, align 8, !tbaa !73
  %75 = icmp eq i32 %74, %2
  br i1 %75, label %76, label %294

76:                                               ; preds = %72
  br i1 %44, label %80, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds ptr, ptr %6, i64 %59
  %79 = load ptr, ptr %78, align 8, !tbaa !42
  br label %80

80:                                               ; preds = %76, %77
  %81 = phi ptr [ %79, %77 ], [ null, %76 ]
  %82 = getelementptr inbounds %struct.KeyBlock, ptr %60, i64 0, i32 6
  %83 = load i16, ptr %82, align 4, !tbaa !74
  %84 = sext i16 %83 to i32
  %85 = call ptr @BLI_findlink(ptr noundef nonnull %38, i32 noundef %84) #11
  %86 = icmp eq ptr %85, null
  br i1 %86, label %294, label %87

87:                                               ; preds = %80
  %88 = icmp eq ptr %60, %5
  br i1 %88, label %89, label %135

89:                                               ; preds = %87
  %90 = load ptr, ptr %14, align 8, !tbaa !53
  %91 = getelementptr inbounds %struct.ID, ptr %90, i64 0, i32 4
  %92 = load i16, ptr %91, align 8, !tbaa !55
  %93 = icmp eq i16 %92, 17741
  br i1 %93, label %94, label %135

94:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  %95 = getelementptr inbounds %struct.Mesh, ptr %90, i64 0, i32 20
  %96 = load ptr, ptr %95, align 8, !tbaa !75
  %97 = icmp eq ptr %96, null
  br i1 %97, label %131, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %96, align 8, !tbaa !78
  %100 = load i32, ptr %99, align 8, !tbaa !81
  %101 = load i32, ptr %73, align 8, !tbaa !73
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %131

103:                                              ; preds = %98
  %104 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %105 = sext i32 %100 to i64
  %106 = mul nsw i64 %105, 12
  %107 = call ptr %104(i64 noundef %106, ptr noundef nonnull @.str.9) #11
  %108 = load ptr, ptr %95, align 8, !tbaa !75
  %109 = load ptr, ptr %108, align 8, !tbaa !78
  store i8 1, ptr %45, align 4, !tbaa !83
  store ptr @bmiter__elem_of_mesh_begin, ptr %46, align 8, !tbaa !85
  store ptr @bmiter__elem_of_mesh_step, ptr %47, align 8, !tbaa !86
  %110 = getelementptr inbounds %struct.BMesh, ptr %109, i64 0, i32 9
  %111 = load ptr, ptr %110, align 8, !tbaa !87
  store ptr %111, ptr %10, align 8, !tbaa !56
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #11
  %112 = load ptr, ptr %47, align 8, !tbaa !86
  %113 = call ptr %112(ptr noundef nonnull %10) #11
  %114 = icmp eq ptr %113, null
  br i1 %114, label %131, label %115

115:                                              ; preds = %103, %115
  %116 = phi i64 [ %127, %115 ], [ 0, %103 ]
  %117 = phi ptr [ %129, %115 ], [ %113, %103 ]
  %118 = getelementptr inbounds [3 x float], ptr %107, i64 %116
  %119 = getelementptr inbounds %struct.BMVert, ptr %117, i64 0, i32 2
  %120 = load float, ptr %119, align 4, !tbaa !69
  store float %120, ptr %118, align 4, !tbaa !69
  %121 = getelementptr inbounds %struct.BMVert, ptr %117, i64 0, i32 2, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !69
  %123 = getelementptr inbounds float, ptr %118, i64 1
  store float %122, ptr %123, align 4, !tbaa !69
  %124 = getelementptr inbounds %struct.BMVert, ptr %117, i64 0, i32 2, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !69
  %126 = getelementptr inbounds float, ptr %118, i64 2
  store float %125, ptr %126, align 4, !tbaa !69
  %127 = add nuw i64 %116, 1
  %128 = load ptr, ptr %47, align 8, !tbaa !86
  %129 = call ptr %128(ptr noundef nonnull %10) #11
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %115, !llvm.loop !88

131:                                              ; preds = %115, %103, %98, %94
  %132 = phi ptr [ null, %94 ], [ null, %98 ], [ %107, %103 ], [ %107, %115 ]
  %133 = phi ptr [ undef, %94 ], [ undef, %98 ], [ %107, %103 ], [ %107, %115 ]
  %134 = phi i1 [ true, %94 ], [ true, %98 ], [ false, %103 ], [ false, %115 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  br i1 %134, label %135, label %138

135:                                              ; preds = %131, %89, %87
  %136 = getelementptr inbounds %struct.KeyBlock, ptr %60, i64 0, i32 10
  %137 = load ptr, ptr %136, align 8, !tbaa !34
  br label %138

138:                                              ; preds = %131, %135
  %139 = phi ptr [ null, %135 ], [ %132, %131 ]
  %140 = phi ptr [ %137, %135 ], [ %133, %131 ]
  %141 = icmp eq ptr %85, %5
  br i1 %141, label %142, label %189

142:                                              ; preds = %138
  %143 = load ptr, ptr %14, align 8, !tbaa !53
  %144 = getelementptr inbounds %struct.ID, ptr %143, i64 0, i32 4
  %145 = load i16, ptr %144, align 8, !tbaa !55
  %146 = icmp eq i16 %145, 17741
  br i1 %146, label %147, label %189

147:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  %148 = getelementptr inbounds %struct.Mesh, ptr %143, i64 0, i32 20
  %149 = load ptr, ptr %148, align 8, !tbaa !75
  %150 = icmp eq ptr %149, null
  br i1 %150, label %185, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %149, align 8, !tbaa !78
  %153 = load i32, ptr %152, align 8, !tbaa !81
  %154 = getelementptr inbounds %struct.KeyBlock, ptr %85, i64 0, i32 8
  %155 = load i32, ptr %154, align 8, !tbaa !73
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %185

157:                                              ; preds = %151
  %158 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %159 = sext i32 %153 to i64
  %160 = mul nsw i64 %159, 12
  %161 = call ptr %158(i64 noundef %160, ptr noundef nonnull @.str.9) #11
  %162 = load ptr, ptr %148, align 8, !tbaa !75
  %163 = load ptr, ptr %162, align 8, !tbaa !78
  store i8 1, ptr %48, align 4, !tbaa !83
  store ptr @bmiter__elem_of_mesh_begin, ptr %49, align 8, !tbaa !85
  store ptr @bmiter__elem_of_mesh_step, ptr %50, align 8, !tbaa !86
  %164 = getelementptr inbounds %struct.BMesh, ptr %163, i64 0, i32 9
  %165 = load ptr, ptr %164, align 8, !tbaa !87
  store ptr %165, ptr %9, align 8, !tbaa !56
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #11
  %166 = load ptr, ptr %50, align 8, !tbaa !86
  %167 = call ptr %166(ptr noundef nonnull %9) #11
  %168 = icmp eq ptr %167, null
  br i1 %168, label %185, label %169

169:                                              ; preds = %157, %169
  %170 = phi i64 [ %181, %169 ], [ 0, %157 ]
  %171 = phi ptr [ %183, %169 ], [ %167, %157 ]
  %172 = getelementptr inbounds [3 x float], ptr %161, i64 %170
  %173 = getelementptr inbounds %struct.BMVert, ptr %171, i64 0, i32 2
  %174 = load float, ptr %173, align 4, !tbaa !69
  store float %174, ptr %172, align 4, !tbaa !69
  %175 = getelementptr inbounds %struct.BMVert, ptr %171, i64 0, i32 2, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !69
  %177 = getelementptr inbounds float, ptr %172, i64 1
  store float %176, ptr %177, align 4, !tbaa !69
  %178 = getelementptr inbounds %struct.BMVert, ptr %171, i64 0, i32 2, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !69
  %180 = getelementptr inbounds float, ptr %172, i64 2
  store float %179, ptr %180, align 4, !tbaa !69
  %181 = add nuw i64 %170, 1
  %182 = load ptr, ptr %50, align 8, !tbaa !86
  %183 = call ptr %182(ptr noundef nonnull %9) #11
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %169, !llvm.loop !88

185:                                              ; preds = %169, %157, %151, %147
  %186 = phi ptr [ null, %147 ], [ null, %151 ], [ %161, %157 ], [ %161, %169 ]
  %187 = phi ptr [ undef, %147 ], [ undef, %151 ], [ %161, %157 ], [ %161, %169 ]
  %188 = phi i1 [ true, %147 ], [ true, %151 ], [ false, %157 ], [ false, %169 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  br i1 %188, label %189, label %192

189:                                              ; preds = %185, %142, %138
  %190 = getelementptr inbounds %struct.KeyBlock, ptr %85, i64 0, i32 10
  %191 = load ptr, ptr %190, align 8, !tbaa !34
  br label %192

192:                                              ; preds = %185, %189
  %193 = phi ptr [ null, %189 ], [ %186, %185 ]
  %194 = phi ptr [ %191, %189 ], [ %187, %185 ]
  br i1 %54, label %195, label %285

195:                                              ; preds = %192
  %196 = load i32, ptr %33, align 8, !tbaa !57
  %197 = mul nsw i32 %196, %0
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, ptr %140, i64 %198
  %200 = getelementptr inbounds i8, ptr %194, i64 %198
  br label %201

201:                                              ; preds = %195, %275
  %202 = phi ptr [ %282, %275 ], [ %81, %195 ]
  %203 = phi ptr [ %278, %275 ], [ %199, %195 ]
  %204 = phi ptr [ %277, %275 ], [ %200, %195 ]
  %205 = phi ptr [ %276, %275 ], [ %53, %195 ]
  %206 = phi i32 [ %283, %275 ], [ %0, %195 ]
  %207 = icmp eq ptr %202, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %201
  %209 = load float, ptr %202, align 4, !tbaa !69
  %210 = fmul float %65, %209
  br label %211

211:                                              ; preds = %201, %208
  %212 = phi float [ %210, %208 ], [ %65, %201 ]
  %213 = load i8, ptr %56, align 1, !tbaa !56
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %275, label %215

215:                                              ; preds = %211
  %216 = fneg float %212
  %217 = fneg float %212
  %218 = fneg float %212
  br label %219

219:                                              ; preds = %215, %267
  %220 = phi ptr [ %11, %215 ], [ %272, %267 ]
  %221 = phi ptr [ %205, %215 ], [ %270, %267 ]
  %222 = phi ptr [ %56, %215 ], [ %271, %267 ]
  %223 = getelementptr inbounds i8, ptr %222, i64 1
  %224 = load i8, ptr %223, align 1, !tbaa !56
  switch i8 %224, label %261 [
    i8 4, label %225
    i8 101, label %237
    i8 100, label %249
  ]

225:                                              ; preds = %219, %225
  %226 = phi i64 [ %235, %225 ], [ 0, %219 ]
  %227 = getelementptr inbounds float, ptr %204, i64 %226
  %228 = load float, ptr %227, align 4, !tbaa !69
  %229 = getelementptr inbounds float, ptr %203, i64 %226
  %230 = load float, ptr %229, align 4, !tbaa !69
  %231 = fsub float %228, %230
  %232 = getelementptr inbounds float, ptr %221, i64 %226
  %233 = load float, ptr %232, align 4, !tbaa !69
  %234 = call float @llvm.fmuladd.f32(float %218, float %231, float %233)
  store float %234, ptr %232, align 4, !tbaa !69
  %235 = add nuw nsw i64 %226, 1
  %236 = icmp eq i64 %235, 3
  br i1 %236, label %267, label %225, !llvm.loop !89

237:                                              ; preds = %219, %237
  %238 = phi i64 [ %247, %237 ], [ 0, %219 ]
  %239 = getelementptr inbounds float, ptr %204, i64 %238
  %240 = load float, ptr %239, align 4, !tbaa !69
  %241 = getelementptr inbounds float, ptr %203, i64 %238
  %242 = load float, ptr %241, align 4, !tbaa !69
  %243 = fsub float %240, %242
  %244 = getelementptr inbounds float, ptr %221, i64 %238
  %245 = load float, ptr %244, align 4, !tbaa !69
  %246 = call float @llvm.fmuladd.f32(float %217, float %243, float %245)
  store float %246, ptr %244, align 4, !tbaa !69
  %247 = add nuw nsw i64 %238, 1
  %248 = icmp eq i64 %247, 4
  br i1 %248, label %267, label %237, !llvm.loop !89

249:                                              ; preds = %219, %249
  %250 = phi i64 [ %259, %249 ], [ 0, %219 ]
  %251 = getelementptr inbounds float, ptr %204, i64 %250
  %252 = load float, ptr %251, align 4, !tbaa !69
  %253 = getelementptr inbounds float, ptr %203, i64 %250
  %254 = load float, ptr %253, align 4, !tbaa !69
  %255 = fsub float %252, %254
  %256 = getelementptr inbounds float, ptr %221, i64 %250
  %257 = load float, ptr %256, align 4, !tbaa !69
  %258 = call float @llvm.fmuladd.f32(float %216, float %255, float %257)
  store float %258, ptr %256, align 4, !tbaa !69
  %259 = add nuw nsw i64 %250, 1
  %260 = icmp eq i64 %259, 12
  br i1 %260, label %267, label %249, !llvm.loop !89

261:                                              ; preds = %219
  %262 = icmp eq ptr %139, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %261
  %264 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %264(ptr noundef nonnull %139) #11
  br label %265

265:                                              ; preds = %263, %261
  %266 = icmp eq ptr %193, null
  br i1 %266, label %294, label %291

267:                                              ; preds = %249, %237, %225
  %268 = load i32, ptr %220, align 4, !tbaa !70
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, ptr %221, i64 %269
  %271 = getelementptr inbounds i8, ptr %222, i64 2
  %272 = getelementptr inbounds i32, ptr %220, i64 1
  %273 = load i8, ptr %271, align 1, !tbaa !56
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %219, !llvm.loop !90

275:                                              ; preds = %267, %211
  %276 = phi ptr [ %205, %211 ], [ %270, %267 ]
  %277 = getelementptr inbounds i8, ptr %204, i64 %57
  %278 = getelementptr inbounds i8, ptr %203, i64 %57
  %279 = add nsw i32 %206, 2
  %280 = select i1 %35, i32 %279, i32 %206
  %281 = getelementptr inbounds float, ptr %202, i64 1
  %282 = select i1 %207, ptr null, ptr %281
  %283 = add nsw i32 %280, 1
  %284 = icmp slt i32 %283, %30
  br i1 %284, label %201, label %285, !llvm.loop !91

285:                                              ; preds = %275, %192
  %286 = icmp eq ptr %139, null
  br i1 %286, label %289, label %287

287:                                              ; preds = %285
  %288 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %288(ptr noundef nonnull %139) #11
  br label %289

289:                                              ; preds = %287, %285
  %290 = icmp eq ptr %193, null
  br i1 %290, label %294, label %291

291:                                              ; preds = %289, %265
  %292 = phi i32 [ 1, %265 ], [ 0, %289 ]
  %293 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %293(ptr noundef nonnull %193) #11
  br label %294

294:                                              ; preds = %291, %80, %265, %289, %63, %72
  %295 = phi i32 [ 0, %72 ], [ 0, %63 ], [ 4, %80 ], [ 1, %265 ], [ 0, %289 ], [ %292, %291 ]
  switch i32 %295, label %300 [
    i32 0, label %296
    i32 4, label %296
  ]

296:                                              ; preds = %58, %294, %294
  %297 = add nuw i64 %59, 1
  %298 = load ptr, ptr %60, align 8, !tbaa !42
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %58, !llvm.loop !92

300:                                              ; preds = %294, %296, %29, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cp_key(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr noundef readnone %5, ptr noundef readonly %6, ptr noundef readonly %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca [32 x i32], align 16
  %13 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  %14 = getelementptr inbounds [32 x i32], ptr %12, i64 0, i64 1
  store i32 0, ptr %14, align 4, !tbaa !70
  %15 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4
  %20 = load i16, ptr %19, align 8, !tbaa !55
  switch i16 %20, label %27 [
    i16 17741, label %21
    i16 21580, label %22
    i16 21827, label %23
  ]

21:                                               ; preds = %18
  store i32 12, ptr %12, align 16, !tbaa !70
  br label %27

22:                                               ; preds = %18
  store i32 12, ptr %12, align 16, !tbaa !70
  br label %27

23:                                               ; preds = %18
  %24 = icmp eq i32 %8, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store i32 16, ptr %12, align 16, !tbaa !70
  br label %27

26:                                               ; preds = %23
  store i32 48, ptr %12, align 16, !tbaa !70
  br label %27

27:                                               ; preds = %9, %18, %21, %22, %25, %26
  %28 = phi i32 [ 0, %9 ], [ 0, %18 ], [ 16, %25 ], [ 16, %26 ], [ 12, %22 ], [ 12, %21 ]
  %29 = phi i1 [ true, %9 ], [ true, %18 ], [ false, %25 ], [ false, %26 ], [ false, %22 ], [ false, %21 ]
  br i1 %29, label %287, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %32 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !73
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %287, label %37

37:                                               ; preds = %35
  %38 = sitofp i32 %33 to float
  %39 = sitofp i32 %2 to float
  %40 = fdiv float %38, %39
  br label %41

41:                                               ; preds = %37, %30
  %42 = phi float [ %40, %37 ], [ 0.000000e+00, %30 ]
  %43 = icmp eq ptr %6, %5
  br i1 %43, label %44, label %90

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4
  %46 = load i16, ptr %45, align 8, !tbaa !55
  %47 = icmp eq i16 %46, 17741
  br i1 %47, label %48, label %90

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #11
  %49 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 20
  %50 = load ptr, ptr %49, align 8, !tbaa !75
  %51 = icmp eq ptr %50, null
  br i1 %51, label %87, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !78
  %54 = load i32, ptr %53, align 8, !tbaa !81
  %55 = icmp eq i32 %54, %33
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %58 = sext i32 %54 to i64
  %59 = mul nsw i64 %58, 12
  %60 = tail call ptr %57(i64 noundef %59, ptr noundef nonnull @.str.9) #11
  %61 = load ptr, ptr %49, align 8, !tbaa !75
  %62 = load ptr, ptr %61, align 8, !tbaa !78
  %63 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 1, ptr %63, align 4, !tbaa !83
  %64 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %64, align 8, !tbaa !85
  %65 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %65, align 8, !tbaa !86
  %66 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !87
  store ptr %67, ptr %11, align 8, !tbaa !56
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %11) #11
  %68 = load ptr, ptr %65, align 8, !tbaa !86
  %69 = call ptr %68(ptr noundef nonnull %11) #11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %56, %71
  %72 = phi i64 [ %83, %71 ], [ 0, %56 ]
  %73 = phi ptr [ %85, %71 ], [ %69, %56 ]
  %74 = getelementptr inbounds [3 x float], ptr %60, i64 %72
  %75 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2
  %76 = load float, ptr %75, align 4, !tbaa !69
  store float %76, ptr %74, align 4, !tbaa !69
  %77 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !69
  %79 = getelementptr inbounds float, ptr %74, i64 1
  store float %78, ptr %79, align 4, !tbaa !69
  %80 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !69
  %82 = getelementptr inbounds float, ptr %74, i64 2
  store float %81, ptr %82, align 4, !tbaa !69
  %83 = add nuw i64 %72, 1
  %84 = load ptr, ptr %65, align 8, !tbaa !86
  %85 = call ptr %84(ptr noundef nonnull %11) #11
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %71, !llvm.loop !88

87:                                               ; preds = %71, %56, %52, %48
  %88 = phi ptr [ undef, %48 ], [ undef, %52 ], [ %60, %56 ], [ %60, %71 ]
  %89 = phi i1 [ true, %48 ], [ true, %52 ], [ false, %56 ], [ false, %71 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #11
  br i1 %89, label %90, label %93

90:                                               ; preds = %87, %44, %41
  %91 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 10
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  br label %93

93:                                               ; preds = %87, %90
  %94 = phi ptr [ null, %90 ], [ %88, %87 ]
  %95 = phi ptr [ %92, %90 ], [ %88, %87 ]
  %96 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !58
  %98 = icmp eq ptr %97, %5
  br i1 %98, label %99, label %148

99:                                               ; preds = %93
  %100 = load ptr, ptr %15, align 8, !tbaa !53
  %101 = getelementptr inbounds %struct.ID, ptr %100, i64 0, i32 4
  %102 = load i16, ptr %101, align 8, !tbaa !55
  %103 = icmp eq i16 %102, 17741
  br i1 %103, label %104, label %148

104:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  %105 = getelementptr inbounds %struct.Mesh, ptr %100, i64 0, i32 20
  %106 = load ptr, ptr %105, align 8, !tbaa !75
  %107 = icmp eq ptr %106, null
  br i1 %107, label %145, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %106, align 8, !tbaa !78
  %110 = load i32, ptr %109, align 8, !tbaa !81
  %111 = getelementptr inbounds %struct.KeyBlock, ptr %97, i64 0, i32 8
  %112 = load i32, ptr %111, align 8, !tbaa !73
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %108
  %115 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %116 = sext i32 %110 to i64
  %117 = mul nsw i64 %116, 12
  %118 = call ptr %115(i64 noundef %117, ptr noundef nonnull @.str.9) #11
  %119 = load ptr, ptr %105, align 8, !tbaa !75
  %120 = load ptr, ptr %119, align 8, !tbaa !78
  %121 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 1, ptr %121, align 4, !tbaa !83
  %122 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %122, align 8, !tbaa !85
  %123 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %123, align 8, !tbaa !86
  %124 = getelementptr inbounds %struct.BMesh, ptr %120, i64 0, i32 9
  %125 = load ptr, ptr %124, align 8, !tbaa !87
  store ptr %125, ptr %10, align 8, !tbaa !56
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #11
  %126 = load ptr, ptr %123, align 8, !tbaa !86
  %127 = call ptr %126(ptr noundef nonnull %10) #11
  %128 = icmp eq ptr %127, null
  br i1 %128, label %145, label %129

129:                                              ; preds = %114, %129
  %130 = phi i64 [ %141, %129 ], [ 0, %114 ]
  %131 = phi ptr [ %143, %129 ], [ %127, %114 ]
  %132 = getelementptr inbounds [3 x float], ptr %118, i64 %130
  %133 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2
  %134 = load float, ptr %133, align 4, !tbaa !69
  store float %134, ptr %132, align 4, !tbaa !69
  %135 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !69
  %137 = getelementptr inbounds float, ptr %132, i64 1
  store float %136, ptr %137, align 4, !tbaa !69
  %138 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !69
  %140 = getelementptr inbounds float, ptr %132, i64 2
  store float %139, ptr %140, align 4, !tbaa !69
  %141 = add nuw i64 %130, 1
  %142 = load ptr, ptr %123, align 8, !tbaa !86
  %143 = call ptr %142(ptr noundef nonnull %10) #11
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %129, !llvm.loop !88

145:                                              ; preds = %129, %114, %108, %104
  %146 = phi ptr [ undef, %104 ], [ undef, %108 ], [ %118, %114 ], [ %118, %129 ]
  %147 = phi i1 [ true, %104 ], [ true, %108 ], [ false, %114 ], [ false, %129 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  br i1 %147, label %148, label %151

148:                                              ; preds = %145, %99, %93
  %149 = getelementptr inbounds %struct.KeyBlock, ptr %97, i64 0, i32 10
  %150 = load ptr, ptr %149, align 8, !tbaa !34
  br label %151

151:                                              ; preds = %145, %148
  %152 = phi ptr [ null, %148 ], [ %146, %145 ]
  %153 = phi ptr [ %150, %148 ], [ %146, %145 ]
  %154 = icmp eq i32 %0, 0
  br i1 %154, label %176, label %155

155:                                              ; preds = %151
  %156 = mul nsw i32 %28, %0
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %3, i64 %157
  br i1 %34, label %168, label %159

159:                                              ; preds = %155
  %160 = sitofp i32 %0 to float
  %161 = call float @llvm.fmuladd.f32(float %160, float %42, float 0.000000e+00)
  %162 = call float @llvm.floor.f32(float %161)
  %163 = fptosi float %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %159
  %166 = sitofp i32 %163 to float
  %167 = fsub float %161, %166
  br label %168

168:                                              ; preds = %155, %165
  %169 = phi i32 [ %163, %165 ], [ %0, %155 ]
  %170 = phi float [ %167, %165 ], [ 0.000000e+00, %155 ]
  %171 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %172 = load i32, ptr %171, align 8, !tbaa !57
  %173 = mul nsw i32 %172, %169
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %95, i64 %174
  br label %176

176:                                              ; preds = %168, %159, %151
  %177 = phi ptr [ %158, %159 ], [ %3, %151 ], [ %158, %168 ]
  %178 = phi float [ %161, %159 ], [ 0.000000e+00, %151 ], [ %170, %168 ]
  %179 = phi ptr [ %95, %159 ], [ %95, %151 ], [ %175, %168 ]
  %180 = icmp eq i32 %8, 2
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  store i8 1, ptr %13, align 1, !tbaa !56
  %182 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 1
  store i8 100, ptr %182, align 1, !tbaa !56
  %183 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 2
  store i8 0, ptr %183, align 1, !tbaa !56
  br label %184

184:                                              ; preds = %181, %176
  %185 = icmp sgt i32 %31, %0
  br i1 %185, label %186, label %279

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %188 = load i32, ptr %187, align 8, !tbaa !57
  %189 = mul nsw i32 %188, 3
  %190 = select i1 %180, i32 %189, i32 %188
  %191 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 3
  %192 = select i1 %180, ptr %13, ptr %191
  %193 = sext i32 %190 to i64
  %194 = sext i32 %190 to i64
  br label %195

195:                                              ; preds = %186, %271
  %196 = phi ptr [ %153, %186 ], [ %274, %271 ]
  %197 = phi ptr [ %179, %186 ], [ %273, %271 ]
  %198 = phi i32 [ %0, %186 ], [ %277, %271 ]
  %199 = phi float [ %178, %186 ], [ %272, %271 ]
  %200 = phi ptr [ %7, %186 ], [ %256, %271 ]
  %201 = phi ptr [ %177, %186 ], [ %255, %271 ]
  %202 = load i8, ptr %192, align 1, !tbaa !56
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %254, label %204

204:                                              ; preds = %195, %245
  %205 = phi ptr [ %250, %245 ], [ %192, %195 ]
  %206 = phi ptr [ %251, %245 ], [ %12, %195 ]
  %207 = phi ptr [ %246, %245 ], [ %200, %195 ]
  %208 = phi ptr [ %249, %245 ], [ %201, %195 ]
  %209 = getelementptr inbounds i8, ptr %205, i64 1
  %210 = load i8, ptr %209, align 1, !tbaa !56
  switch i8 %210, label %239 [
    i8 4, label %211
    i8 101, label %237
    i8 100, label %238
  ]

211:                                              ; preds = %204
  %212 = icmp eq ptr %207, null
  br i1 %212, label %236, label %213

213:                                              ; preds = %211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %208, ptr noundef nonnull align 1 dereferenceable(12) %196, i64 12, i1 false)
  %214 = load float, ptr %207, align 4, !tbaa !69
  %215 = fcmp une float %214, 0.000000e+00
  br i1 %215, label %216, label %234

216:                                              ; preds = %213
  %217 = load i8, ptr %205, align 1, !tbaa !56
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %234, label %219

219:                                              ; preds = %216
  %220 = fneg float %214
  %221 = zext i8 %217 to i64
  br label %222

222:                                              ; preds = %219, %222
  %223 = phi i64 [ 0, %219 ], [ %232, %222 ]
  %224 = getelementptr inbounds float, ptr %196, i64 %223
  %225 = load float, ptr %224, align 4, !tbaa !69
  %226 = getelementptr inbounds float, ptr %197, i64 %223
  %227 = load float, ptr %226, align 4, !tbaa !69
  %228 = fsub float %225, %227
  %229 = getelementptr inbounds float, ptr %208, i64 %223
  %230 = load float, ptr %229, align 4, !tbaa !69
  %231 = call float @llvm.fmuladd.f32(float %220, float %228, float %230)
  store float %231, ptr %229, align 4, !tbaa !69
  %232 = add nuw nsw i64 %223, 1
  %233 = icmp eq i64 %232, %221
  br i1 %233, label %234, label %222, !llvm.loop !89

234:                                              ; preds = %222, %216, %213
  %235 = getelementptr inbounds float, ptr %207, i64 1
  br label %245

236:                                              ; preds = %211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %208, ptr noundef nonnull align 1 dereferenceable(12) %197, i64 12, i1 false)
  br label %245

237:                                              ; preds = %204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %208, ptr noundef nonnull align 1 dereferenceable(16) %197, i64 16, i1 false)
  br label %245

238:                                              ; preds = %204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %208, ptr noundef nonnull align 1 dereferenceable(48) %197, i64 48, i1 false)
  br label %245

239:                                              ; preds = %204
  %240 = icmp eq ptr %94, null
  br i1 %240, label %243, label %241

241:                                              ; preds = %239
  %242 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %242(ptr noundef nonnull %94) #11
  br label %243

243:                                              ; preds = %241, %239
  %244 = icmp eq ptr %152, null
  br i1 %244, label %287, label %285

245:                                              ; preds = %234, %236, %238, %237
  %246 = phi ptr [ %207, %238 ], [ %207, %237 ], [ %235, %234 ], [ null, %236 ]
  %247 = load i32, ptr %206, align 4, !tbaa !70
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, ptr %208, i64 %248
  %250 = getelementptr inbounds i8, ptr %205, i64 2
  %251 = getelementptr inbounds i32, ptr %206, i64 1
  %252 = load i8, ptr %250, align 1, !tbaa !56
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %204, !llvm.loop !93

254:                                              ; preds = %245, %195
  %255 = phi ptr [ %201, %195 ], [ %249, %245 ]
  %256 = phi ptr [ %200, %195 ], [ %246, %245 ]
  br i1 %34, label %268, label %257

257:                                              ; preds = %254
  %258 = fadd float %42, %199
  %259 = fcmp ult float %258, 1.000000e+00
  br i1 %259, label %271, label %260

260:                                              ; preds = %257, %260
  %261 = phi ptr [ %266, %260 ], [ %196, %257 ]
  %262 = phi ptr [ %265, %260 ], [ %197, %257 ]
  %263 = phi float [ %264, %260 ], [ %258, %257 ]
  %264 = fadd float %263, -1.000000e+00
  %265 = getelementptr inbounds i8, ptr %262, i64 %193
  %266 = getelementptr inbounds i8, ptr %261, i64 %193
  %267 = fcmp ult float %264, 1.000000e+00
  br i1 %267, label %271, label %260, !llvm.loop !94

268:                                              ; preds = %254
  %269 = getelementptr inbounds i8, ptr %197, i64 %194
  %270 = getelementptr inbounds i8, ptr %196, i64 %194
  br label %271

271:                                              ; preds = %260, %257, %268
  %272 = phi float [ %199, %268 ], [ %258, %257 ], [ %264, %260 ]
  %273 = phi ptr [ %269, %268 ], [ %197, %257 ], [ %265, %260 ]
  %274 = phi ptr [ %270, %268 ], [ %196, %257 ], [ %266, %260 ]
  %275 = add nsw i32 %198, 2
  %276 = select i1 %180, i32 %275, i32 %198
  %277 = add nsw i32 %276, 1
  %278 = icmp slt i32 %277, %31
  br i1 %278, label %195, label %279, !llvm.loop !95

279:                                              ; preds = %271, %184
  %280 = icmp eq ptr %94, null
  br i1 %280, label %283, label %281

281:                                              ; preds = %279
  %282 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %282(ptr noundef nonnull %94) #11
  br label %283

283:                                              ; preds = %281, %279
  %284 = icmp eq ptr %152, null
  br i1 %284, label %287, label %285

285:                                              ; preds = %283, %243
  %286 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %286(ptr noundef nonnull %152) #11
  br label %287

287:                                              ; preds = %285, %283, %243, %35, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #11
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_keyblock_get_per_block_weights(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Key, ptr %1, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !96
  %7 = sext i16 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr %4(i64 noundef %8, ptr noundef nonnull @.str.1) #11
  %10 = getelementptr inbounds %struct.Key, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %3, %13
  %14 = phi i64 [ %19, %13 ], [ 0, %3 ]
  %15 = phi ptr [ %20, %13 ], [ %11, %3 ]
  %16 = getelementptr inbounds %struct.KeyBlock, ptr %15, i64 0, i32 12
  %17 = tail call fastcc ptr @get_weights_array(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %2)
  %18 = getelementptr inbounds ptr, ptr %9, i64 %14
  store ptr %17, ptr %18, align 8, !tbaa !42
  %19 = add nuw i64 %14, 1
  %20 = load ptr, ptr %15, align 8, !tbaa !42
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !97

22:                                               ; preds = %13, %3
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_weights_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %5 = load i8, ptr %1, align 1, !tbaa !56
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %118, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !98
  switch i16 %9, label %41 [
    i16 1, label %10
    i16 22, label %25
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !103
  %17 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %10
  %21 = load ptr, ptr %18, align 8, !tbaa !78
  %22 = load i32, ptr %21, align 8, !tbaa !81
  %23 = icmp eq i32 %22, %16
  %24 = select i1 %23, ptr %18, ptr null
  br label %41

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !101
  %28 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 24
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  %30 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !106
  %32 = sext i16 %31 to i32
  %33 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !107
  %35 = sext i16 %34 to i32
  %36 = mul nsw i32 %35, %32
  %37 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !108
  %39 = sext i16 %38 to i32
  %40 = mul nsw i32 %36, %39
  br label %41

41:                                               ; preds = %20, %7, %10, %25
  %42 = phi i32 [ %40, %25 ], [ %16, %20 ], [ %16, %10 ], [ 0, %7 ]
  %43 = phi ptr [ null, %25 ], [ %24, %20 ], [ null, %10 ], [ null, %7 ]
  %44 = phi ptr [ %29, %25 ], [ %14, %20 ], [ %14, %10 ], [ null, %7 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %118, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @defgroup_name_index(ptr noundef %0, ptr noundef nonnull %1) #11
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %118, label %49

49:                                               ; preds = %46
  %50 = icmp eq ptr %2, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.WeightsArrayCache, ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %57 = tail call i32 @BLI_countlist(ptr noundef nonnull %56) #11
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %59 = sext i32 %57 to i64
  %60 = shl nsw i64 %59, 3
  %61 = tail call ptr %58(i64 noundef %60, ptr noundef nonnull @.str.10) #11
  store ptr %61, ptr %52, align 8, !tbaa !109
  store i32 %57, ptr %2, align 8, !tbaa !111
  br label %62

62:                                               ; preds = %55, %51
  %63 = load ptr, ptr %52, align 8, !tbaa !109
  %64 = sext i32 %47 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %118

68:                                               ; preds = %62, %49
  %69 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %70 = sext i32 %42 to i64
  %71 = shl nsw i64 %70, 2
  %72 = tail call ptr %69(i64 noundef %71, ptr noundef nonnull @.str.11) #11
  %73 = icmp eq ptr %43, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = icmp sgt i32 %42, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %74
  %77 = zext nneg i32 %42 to i64
  br label %104

78:                                               ; preds = %68
  %79 = load ptr, ptr %43, align 8, !tbaa !78
  %80 = getelementptr inbounds %struct.BMesh, ptr %79, i64 0, i32 24
  %81 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %80, i32 noundef 2) #11
  %82 = load ptr, ptr %43, align 8, !tbaa !78
  %83 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %83, align 4, !tbaa !83
  %84 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %84, align 8, !tbaa !85
  %85 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %85, align 8, !tbaa !86
  %86 = getelementptr inbounds %struct.BMesh, ptr %82, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !87
  store ptr %87, ptr %4, align 8, !tbaa !56
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %88 = load ptr, ptr %85, align 8, !tbaa !86
  %89 = call ptr %88(ptr noundef nonnull %4) #11
  %90 = icmp eq ptr %89, null
  br i1 %90, label %112, label %91

91:                                               ; preds = %78
  %92 = sext i32 %81 to i64
  br label %93

93:                                               ; preds = %91, %93
  %94 = phi i64 [ 0, %91 ], [ %102, %93 ]
  %95 = phi ptr [ %89, %91 ], [ %101, %93 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !112
  %97 = getelementptr inbounds i8, ptr %96, i64 %92
  %98 = call float @defvert_find_weight(ptr noundef %97, i32 noundef %47) #11
  %99 = getelementptr inbounds float, ptr %72, i64 %94
  store float %98, ptr %99, align 4, !tbaa !69
  %100 = load ptr, ptr %85, align 8, !tbaa !86
  %101 = call ptr %100(ptr noundef nonnull %4) #11
  %102 = add nuw i64 %94, 1
  %103 = icmp eq ptr %101, null
  br i1 %103, label %112, label %93, !llvm.loop !115

104:                                              ; preds = %76, %104
  %105 = phi i64 [ 0, %76 ], [ %109, %104 ]
  %106 = phi ptr [ %44, %76 ], [ %110, %104 ]
  %107 = tail call float @defvert_find_weight(ptr noundef nonnull %106, i32 noundef %47) #11
  %108 = getelementptr inbounds float, ptr %72, i64 %105
  store float %107, ptr %108, align 4, !tbaa !69
  %109 = add nuw nsw i64 %105, 1
  %110 = getelementptr inbounds %struct.MDeformVert, ptr %106, i64 1
  %111 = icmp eq i64 %109, %77
  br i1 %111, label %112, label %104, !llvm.loop !116

112:                                              ; preds = %93, %104, %78, %74
  br i1 %50, label %118, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.WeightsArrayCache, ptr %2, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !109
  %116 = sext i32 %47 to i64
  %117 = getelementptr inbounds ptr, ptr %115, i64 %116
  store ptr %72, ptr %117, align 8, !tbaa !42
  br label %118

118:                                              ; preds = %46, %62, %113, %112, %41, %3
  %119 = phi ptr [ null, %3 ], [ null, %41 ], [ %66, %62 ], [ %72, %113 ], [ %72, %112 ], [ null, %46 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret ptr %119
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_keyblock_free_per_block_weights(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !96
  %8 = icmp sgt i16 %7, 0
  br i1 %8, label %36, label %48

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 8, !tbaa !111
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %2, align 8, !tbaa !111
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.WeightsArrayCache, ptr %2, i64 0, i32 1
  br label %17

17:                                               ; preds = %15, %25
  %18 = phi i64 [ 0, %15 ], [ %26, %25 ]
  %19 = load ptr, ptr %16, align 8, !tbaa !109
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %24(ptr noundef nonnull %21) #11
  br label %25

25:                                               ; preds = %17, %23
  %26 = add nuw nsw i64 %18, 1
  %27 = load i32, ptr %2, align 8, !tbaa !111
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %17, label %30, !llvm.loop !117

30:                                               ; preds = %25, %12
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.WeightsArrayCache, ptr %2, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !109
  tail call void %31(ptr noundef %33) #11
  br label %34

34:                                               ; preds = %30, %9
  %35 = getelementptr inbounds %struct.WeightsArrayCache, ptr %2, i64 0, i32 1
  store ptr null, ptr %35, align 8, !tbaa !109
  br label %48

36:                                               ; preds = %5, %43
  %37 = phi i64 [ %44, %43 ], [ 0, %5 ]
  %38 = getelementptr inbounds ptr, ptr %1, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %42(ptr noundef nonnull %39) #11
  br label %43

43:                                               ; preds = %36, %41
  %44 = add nuw nsw i64 %37, 1
  %45 = load i16, ptr %6, align 2, !tbaa !96
  %46 = sext i16 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %36, label %48, !llvm.loop !118

48:                                               ; preds = %43, %5, %34
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %49(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_key_evaluate_object_ex(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x ptr], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x ptr], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca %struct.WeightsArrayCache, align 8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !98
  switch i16 %14, label %30 [
    i16 1, label %15
    i16 2, label %19
    i16 3, label %19
    i16 22, label %23
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 4
  br label %27

19:                                               ; preds = %12, %12
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 9
  br label %27

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 23
  br label %27

27:                                               ; preds = %23, %19, %15
  %28 = phi ptr [ %18, %15 ], [ %22, %19 ], [ %26, %23 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  br label %30

30:                                               ; preds = %27, %5, %12
  %31 = phi ptr [ null, %5 ], [ null, %12 ], [ %29, %27 ]
  br i1 %11, label %50, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %34 = load i16, ptr %33, align 8, !tbaa !98
  switch i16 %34, label %50 [
    i16 1, label %35
    i16 2, label %39
    i16 3, label %39
    i16 22, label %43
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  %38 = getelementptr inbounds %struct.Mesh, ptr %37, i64 0, i32 4
  br label %47

39:                                               ; preds = %32, %32
  %40 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  %42 = getelementptr inbounds %struct.Curve, ptr %41, i64 0, i32 9
  br label %47

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !101
  %46 = getelementptr inbounds %struct.Lattice, ptr %45, i64 0, i32 23
  br label %47

47:                                               ; preds = %43, %39, %35
  %48 = phi ptr [ %38, %35 ], [ %42, %39 ], [ %46, %43 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  br label %50

50:                                               ; preds = %47, %30, %32
  %51 = phi ptr [ null, %30 ], [ null, %32 ], [ %49, %47 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.Key, ptr %51, i64 0, i32 6
  %55 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %56 = load i16, ptr %55, align 2, !tbaa !119
  %57 = sext i16 %56 to i32
  %58 = add nsw i32 %57, -1
  %59 = tail call ptr @BLI_findlink(ptr noundef nonnull %54, i32 noundef %58) #11
  br label %60

60:                                               ; preds = %50, %53
  %61 = phi ptr [ %59, %53 ], [ null, %50 ]
  %62 = icmp eq ptr %31, null
  br i1 %62, label %449, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !120
  %66 = icmp eq ptr %65, null
  br i1 %66, label %449, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %69 = load i16, ptr %68, align 8, !tbaa !98
  switch i16 %69, label %129 [
    i16 1, label %70
    i16 22, label %76
    i16 2, label %91
    i16 3, label %91
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !101
  %73 = getelementptr inbounds %struct.Mesh, ptr %72, i64 0, i32 26
  %74 = load i32, ptr %73, align 8, !tbaa !103
  %75 = mul i32 %74, 12
  br label %129

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %78 = load ptr, ptr %77, align 8, !tbaa !101
  %79 = getelementptr inbounds %struct.Lattice, ptr %78, i64 0, i32 2
  %80 = load i16, ptr %79, align 8, !tbaa !106
  %81 = sext i16 %80 to i32
  %82 = getelementptr inbounds %struct.Lattice, ptr %78, i64 0, i32 3
  %83 = load i16, ptr %82, align 2, !tbaa !107
  %84 = sext i16 %83 to i32
  %85 = mul nsw i32 %84, %81
  %86 = getelementptr inbounds %struct.Lattice, ptr %78, i64 0, i32 4
  %87 = load i16, ptr %86, align 4, !tbaa !108
  %88 = sext i16 %87 to i32
  %89 = mul nsw i32 %85, %88
  %90 = mul i32 %89, 12
  br label %129

91:                                               ; preds = %67, %67
  %92 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %93 = load ptr, ptr %92, align 8, !tbaa !101
  %94 = getelementptr inbounds %struct.Curve, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !42
  %96 = icmp eq ptr %95, null
  br i1 %96, label %129, label %97

97:                                               ; preds = %91, %124
  %98 = phi ptr [ %127, %124 ], [ %95, %91 ]
  %99 = phi i32 [ %126, %124 ], [ 0, %91 ]
  %100 = phi i32 [ %125, %124 ], [ 0, %91 ]
  %101 = getelementptr inbounds %struct.Nurb, ptr %98, i64 0, i32 18
  %102 = load ptr, ptr %101, align 8, !tbaa !121
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.Nurb, ptr %98, i64 0, i32 6
  %106 = load i32, ptr %105, align 8, !tbaa !123
  %107 = mul nsw i32 %106, 3
  %108 = add nsw i32 %107, %99
  %109 = mul i32 %106, 48
  %110 = add i32 %109, %100
  br label %124

111:                                              ; preds = %97
  %112 = getelementptr inbounds %struct.Nurb, ptr %98, i64 0, i32 17
  %113 = load ptr, ptr %112, align 8, !tbaa !124
  %114 = icmp eq ptr %113, null
  br i1 %114, label %124, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.Nurb, ptr %98, i64 0, i32 6
  %117 = load i32, ptr %116, align 8, !tbaa !123
  %118 = getelementptr inbounds %struct.Nurb, ptr %98, i64 0, i32 7
  %119 = load i32, ptr %118, align 4, !tbaa !125
  %120 = mul nsw i32 %119, %117
  %121 = add nsw i32 %120, %99
  %122 = mul i32 %120, 48
  %123 = add i32 %122, %100
  br label %124

124:                                              ; preds = %104, %115, %111
  %125 = phi i32 [ %110, %104 ], [ %123, %115 ], [ %100, %111 ]
  %126 = phi i32 [ %108, %104 ], [ %121, %115 ], [ %99, %111 ]
  %127 = load ptr, ptr %98, align 8, !tbaa !42
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %97, !llvm.loop !126

129:                                              ; preds = %124, %91, %67, %76, %70
  %130 = phi i32 [ %75, %70 ], [ %90, %76 ], [ 0, %67 ], [ 0, %91 ], [ %125, %124 ]
  %131 = phi i32 [ %74, %70 ], [ %89, %76 ], [ 0, %67 ], [ 0, %91 ], [ %126, %124 ]
  %132 = icmp eq i32 %131, 0
  %133 = icmp eq i32 %130, 0
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %449, label %135

135:                                              ; preds = %129
  %136 = icmp eq ptr %3, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  %138 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %139 = sext i32 %130 to i64
  %140 = tail call ptr %138(i64 noundef %139, ptr noundef nonnull @.str.2) #11
  br label %144

141:                                              ; preds = %135
  %142 = sext i32 %130 to i64
  %143 = icmp eq i64 %142, %4
  br i1 %143, label %144, label %449

144:                                              ; preds = %141, %137
  %145 = phi ptr [ %140, %137 ], [ %3, %141 ]
  %146 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %147 = load ptr, ptr %146, align 8, !tbaa !101
  %148 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 8
  store ptr %147, ptr %148, align 8, !tbaa !53
  %149 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 114
  %150 = load i8, ptr %149, align 1, !tbaa !127
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %222, label %153

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %155 = load i16, ptr %154, align 2, !tbaa !119
  %156 = sext i16 %155 to i32
  %157 = add nsw i32 %156, -1
  %158 = tail call ptr @BLI_findlink(ptr noundef nonnull %64, i32 noundef %157) #11
  %159 = icmp eq ptr %158, null
  br i1 %159, label %168, label %160

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.KeyBlock, ptr %158, i64 0, i32 7
  %162 = load i16, ptr %161, align 2, !tbaa !72
  %163 = and i16 %162, 1
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !58
  br label %168

168:                                              ; preds = %165, %160, %153
  %169 = phi ptr [ %167, %165 ], [ %158, %160 ], [ null, %153 ]
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load ptr, ptr %64, align 8, !tbaa !68
  store i16 1, ptr %154, align 2, !tbaa !119
  br label %173

173:                                              ; preds = %171, %168
  %174 = phi ptr [ %172, %171 ], [ %169, %168 ]
  %175 = load i16, ptr %68, align 8, !tbaa !98
  switch i16 %175, label %446 [
    i16 1, label %176
    i16 22, label %176
    i16 2, label %182
    i16 3, label %182
  ]

176:                                              ; preds = %173, %173
  %177 = getelementptr inbounds %struct.KeyBlock, ptr %174, i64 0, i32 12
  %178 = tail call fastcc ptr @get_weights_array(ptr noundef %1, ptr noundef nonnull %177, ptr noundef null)
  tail call fastcc void @cp_key(i32 noundef 0, i32 noundef %131, i32 noundef %131, ptr noundef %145, ptr noundef nonnull %31, ptr noundef %61, ptr noundef %174, ptr noundef %178, i32 noundef 0)
  %179 = icmp eq ptr %178, null
  br i1 %179, label %446, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %181(ptr noundef nonnull %178) #11
  br label %446

182:                                              ; preds = %173, %173
  %183 = load ptr, ptr %146, align 8, !tbaa !101
  %184 = getelementptr inbounds %struct.Curve, ptr %183, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !42
  %186 = icmp eq ptr %185, null
  br i1 %186, label %446, label %187

187:                                              ; preds = %182, %217
  %188 = phi ptr [ %220, %217 ], [ %185, %182 ]
  %189 = phi i32 [ %219, %217 ], [ 0, %182 ]
  %190 = getelementptr inbounds %struct.Nurb, ptr %188, i64 0, i32 17
  %191 = load ptr, ptr %190, align 8, !tbaa !124
  %192 = icmp eq ptr %191, null
  br i1 %192, label %204, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.Nurb, ptr %188, i64 0, i32 6
  %195 = load i32, ptr %194, align 8, !tbaa !123
  %196 = getelementptr inbounds %struct.Nurb, ptr %188, i64 0, i32 7
  %197 = load i32, ptr %196, align 4, !tbaa !125
  %198 = mul nsw i32 %197, %195
  %199 = tail call i32 @llvm.smax.i32(i32 %189, i32 0)
  %200 = add nsw i32 %198, %189
  %201 = tail call i32 @llvm.smin.i32(i32 %200, i32 %131)
  %202 = icmp slt i32 %199, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %193
  tail call fastcc void @cp_key(i32 noundef %199, i32 noundef %201, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %61, ptr noundef %174, ptr noundef null, i32 noundef 1)
  br label %217

204:                                              ; preds = %187
  %205 = getelementptr inbounds %struct.Nurb, ptr %188, i64 0, i32 18
  %206 = load ptr, ptr %205, align 8, !tbaa !121
  %207 = icmp eq ptr %206, null
  br i1 %207, label %217, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.Nurb, ptr %188, i64 0, i32 6
  %210 = load i32, ptr %209, align 8, !tbaa !123
  %211 = mul nsw i32 %210, 3
  %212 = tail call i32 @llvm.smax.i32(i32 %189, i32 0)
  %213 = add nsw i32 %211, %189
  %214 = tail call i32 @llvm.smin.i32(i32 %213, i32 %131)
  %215 = icmp slt i32 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  tail call fastcc void @cp_key(i32 noundef %212, i32 noundef %214, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %61, ptr noundef %174, ptr noundef null, i32 noundef 2)
  br label %217

217:                                              ; preds = %216, %208, %204, %203, %193
  %218 = phi i32 [ %198, %203 ], [ %198, %193 ], [ %211, %216 ], [ %211, %208 ], [ 0, %204 ]
  %219 = add nsw i32 %218, %189
  %220 = load ptr, ptr %188, align 8, !tbaa !42
  %221 = icmp eq ptr %220, null
  br i1 %221, label %446, label %187, !llvm.loop !128

222:                                              ; preds = %144
  %223 = load i16, ptr %68, align 8, !tbaa !98
  switch i16 %223, label %446 [
    i16 1, label %224
    i16 22, label %339
    i16 2, label %444
    i16 3, label %445
  ]

224:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #11
  br i1 %11, label %235, label %225

225:                                              ; preds = %224
  switch i16 %223, label %235 [
    i16 1, label %226
    i16 2, label %228
    i16 3, label %228
    i16 22, label %230
  ]

226:                                              ; preds = %225
  %227 = getelementptr inbounds %struct.Mesh, ptr %147, i64 0, i32 4
  br label %232

228:                                              ; preds = %225, %225
  %229 = getelementptr inbounds %struct.Curve, ptr %147, i64 0, i32 9
  br label %232

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.Lattice, ptr %147, i64 0, i32 23
  br label %232

232:                                              ; preds = %226, %228, %230
  %233 = phi ptr [ %231, %230 ], [ %229, %228 ], [ %227, %226 ]
  %234 = load ptr, ptr %233, align 8, !tbaa !42
  br label %235

235:                                              ; preds = %232, %225, %224
  %236 = phi ptr [ null, %224 ], [ null, %225 ], [ %234, %232 ]
  %237 = icmp eq ptr %236, null
  br i1 %237, label %245, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.Key, ptr %236, i64 0, i32 6
  %240 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %241 = load i16, ptr %240, align 2, !tbaa !119
  %242 = sext i16 %241 to i32
  %243 = add nsw i32 %242, -1
  %244 = tail call ptr @BLI_findlink(ptr noundef nonnull %239, i32 noundef %243) #11
  br label %245

245:                                              ; preds = %238, %235
  %246 = phi ptr [ %244, %238 ], [ null, %235 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  %247 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 11
  %248 = load i16, ptr %247, align 4, !tbaa !129
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %279, label %250

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 9
  %252 = load i16, ptr %251, align 8, !tbaa !50
  %253 = icmp eq i16 %252, 1
  br i1 %253, label %279, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 13
  %256 = load float, ptr %255, align 8, !tbaa !130
  %257 = fdiv float %256, 1.000000e+02
  %258 = tail call float @BKE_scene_frame_get(ptr noundef %0) #11
  %259 = icmp sgt i32 %131, 100
  %260 = load i32, ptr @slurph_opt, align 4
  %261 = icmp ne i32 %260, 0
  %262 = select i1 %259, i1 %261, i1 false
  %263 = udiv i32 %131, 50
  %264 = select i1 %262, i32 %263, i32 1
  %265 = icmp sgt i32 %131, 0
  br i1 %265, label %266, label %338

266:                                              ; preds = %254
  %267 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 2
  br label %268

268:                                              ; preds = %276, %266
  %269 = phi i32 [ 0, %266 ], [ %277, %276 ]
  %270 = call fastcc i32 @setkeys(float noundef %257, ptr noundef nonnull %64, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %271 = icmp eq i32 %270, 0
  %272 = add nuw nsw i32 %269, %264
  br i1 %271, label %273, label %274

273:                                              ; preds = %268
  call fastcc void @do_key(i32 noundef %269, i32 noundef %272, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %246, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0)
  br label %276

274:                                              ; preds = %268
  %275 = load ptr, ptr %267, align 16, !tbaa !42
  call fastcc void @cp_key(i32 noundef %269, i32 noundef %272, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %246, ptr noundef %275, ptr noundef null, i32 noundef 0)
  br label %276

276:                                              ; preds = %274, %273
  %277 = add nuw nsw i32 %269, %264
  %278 = icmp slt i32 %277, %131
  br i1 %278, label %268, label %338, !llvm.loop !131

279:                                              ; preds = %250, %245
  %280 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 9
  %281 = load i16, ptr %280, align 8, !tbaa !50
  %282 = icmp eq i16 %281, 1
  br i1 %282, label %283, label %328

283:                                              ; preds = %279
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %284 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %285 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 10
  %286 = load i16, ptr %285, align 2, !tbaa !96
  %287 = sext i16 %286 to i64
  %288 = shl nsw i64 %287, 3
  %289 = tail call ptr %284(i64 noundef %288, ptr noundef nonnull @.str.1) #11
  %290 = load ptr, ptr %64, align 8, !tbaa !42
  %291 = icmp eq ptr %290, null
  br i1 %291, label %301, label %292

292:                                              ; preds = %283, %292
  %293 = phi i64 [ %298, %292 ], [ 0, %283 ]
  %294 = phi ptr [ %299, %292 ], [ %290, %283 ]
  %295 = getelementptr inbounds %struct.KeyBlock, ptr %294, i64 0, i32 12
  %296 = call fastcc ptr @get_weights_array(ptr noundef %1, ptr noundef nonnull %295, ptr noundef nonnull %10)
  %297 = getelementptr inbounds ptr, ptr %289, i64 %293
  store ptr %296, ptr %297, align 8, !tbaa !42
  %298 = add nuw i64 %293, 1
  %299 = load ptr, ptr %294, align 8, !tbaa !42
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %292, !llvm.loop !97

301:                                              ; preds = %292, %283
  call void @BKE_key_evaluate_relative(i32 noundef 0, i32 noundef %131, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %246, ptr noundef %289, i32 noundef 0)
  %302 = load i32, ptr %10, align 8, !tbaa !111
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %325, label %304

304:                                              ; preds = %301
  %305 = icmp sgt i32 %302, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %304
  %307 = getelementptr inbounds %struct.WeightsArrayCache, ptr %10, i64 0, i32 1
  br label %308

308:                                              ; preds = %316, %306
  %309 = phi i64 [ 0, %306 ], [ %317, %316 ]
  %310 = load ptr, ptr %307, align 8, !tbaa !109
  %311 = getelementptr inbounds ptr, ptr %310, i64 %309
  %312 = load ptr, ptr %311, align 8, !tbaa !42
  %313 = icmp eq ptr %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %308
  %315 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %315(ptr noundef nonnull %312) #11
  br label %316

316:                                              ; preds = %314, %308
  %317 = add nuw nsw i64 %309, 1
  %318 = load i32, ptr %10, align 8, !tbaa !111
  %319 = sext i32 %318 to i64
  %320 = icmp slt i64 %317, %319
  br i1 %320, label %308, label %321, !llvm.loop !117

321:                                              ; preds = %316, %304
  %322 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %323 = getelementptr inbounds %struct.WeightsArrayCache, ptr %10, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !109
  call void %322(ptr noundef %324) #11
  br label %325

325:                                              ; preds = %321, %301
  %326 = getelementptr inbounds %struct.WeightsArrayCache, ptr %10, i64 0, i32 1
  store ptr null, ptr %326, align 8, !tbaa !109
  %327 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %327(ptr noundef %289) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  br label %338

328:                                              ; preds = %279
  %329 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 13
  %330 = load float, ptr %329, align 8, !tbaa !130
  %331 = fdiv float %330, 1.000000e+02
  %332 = call fastcc i32 @setkeys(float noundef %331, ptr noundef nonnull %64, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %328
  call fastcc void @do_key(i32 noundef 0, i32 noundef %131, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %246, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0)
  br label %338

335:                                              ; preds = %328
  %336 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 2
  %337 = load ptr, ptr %336, align 16, !tbaa !42
  call fastcc void @cp_key(i32 noundef 0, i32 noundef %131, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %246, ptr noundef %337, ptr noundef null, i32 noundef 0)
  br label %338

338:                                              ; preds = %276, %254, %325, %334, %335
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #11
  br label %446

339:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  br i1 %11, label %350, label %340

340:                                              ; preds = %339
  switch i16 %223, label %350 [
    i16 1, label %341
    i16 2, label %343
    i16 3, label %343
    i16 22, label %345
  ]

341:                                              ; preds = %340
  %342 = getelementptr inbounds %struct.Mesh, ptr %147, i64 0, i32 4
  br label %347

343:                                              ; preds = %340, %340
  %344 = getelementptr inbounds %struct.Curve, ptr %147, i64 0, i32 9
  br label %347

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.Lattice, ptr %147, i64 0, i32 23
  br label %347

347:                                              ; preds = %341, %343, %345
  %348 = phi ptr [ %346, %345 ], [ %344, %343 ], [ %342, %341 ]
  %349 = load ptr, ptr %348, align 8, !tbaa !42
  br label %350

350:                                              ; preds = %347, %340, %339
  %351 = phi ptr [ null, %339 ], [ null, %340 ], [ %349, %347 ]
  %352 = icmp eq ptr %351, null
  br i1 %352, label %360, label %353

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.Key, ptr %351, i64 0, i32 6
  %355 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %356 = load i16, ptr %355, align 2, !tbaa !119
  %357 = sext i16 %356 to i32
  %358 = add nsw i32 %357, -1
  %359 = tail call ptr @BLI_findlink(ptr noundef nonnull %354, i32 noundef %358) #11
  br label %360

360:                                              ; preds = %353, %350
  %361 = phi ptr [ %359, %353 ], [ null, %350 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %362 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 11
  %363 = load i16, ptr %362, align 4, !tbaa !129
  %364 = icmp eq i16 %363, 0
  br i1 %364, label %388, label %365

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 9
  %367 = load i16, ptr %366, align 8, !tbaa !50
  %368 = icmp eq i16 %367, 1
  br i1 %368, label %388, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 13
  %371 = load float, ptr %370, align 8, !tbaa !130
  %372 = fdiv float %371, 1.000000e+02
  %373 = tail call float @BKE_scene_frame_get(ptr noundef %0) #11
  %374 = icmp sgt i32 %131, 0
  br i1 %374, label %375, label %437

375:                                              ; preds = %369
  %376 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  br label %377

377:                                              ; preds = %385, %375
  %378 = phi i32 [ 0, %375 ], [ %386, %385 ]
  %379 = call fastcc i32 @setkeys(float noundef %372, ptr noundef nonnull %64, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %380 = icmp eq i32 %379, 0
  %381 = add nuw nsw i32 %378, 1
  br i1 %380, label %382, label %383

382:                                              ; preds = %377
  call fastcc void @do_key(i32 noundef %378, i32 noundef %381, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %361, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0)
  br label %385

383:                                              ; preds = %377
  %384 = load ptr, ptr %376, align 16, !tbaa !42
  call fastcc void @cp_key(i32 noundef %378, i32 noundef %381, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %361, ptr noundef %384, ptr noundef null, i32 noundef 0)
  br label %385

385:                                              ; preds = %383, %382
  %386 = add nuw nsw i32 %378, 1
  %387 = icmp eq i32 %386, %131
  br i1 %387, label %437, label %377, !llvm.loop !132

388:                                              ; preds = %365, %360
  %389 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 9
  %390 = load i16, ptr %389, align 8, !tbaa !50
  %391 = icmp eq i16 %390, 1
  br i1 %391, label %392, label %427

392:                                              ; preds = %388
  %393 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %394 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 10
  %395 = load i16, ptr %394, align 2, !tbaa !96
  %396 = sext i16 %395 to i64
  %397 = shl nsw i64 %396, 3
  %398 = tail call ptr %393(i64 noundef %397, ptr noundef nonnull @.str.1) #11
  %399 = load ptr, ptr %64, align 8, !tbaa !42
  %400 = icmp eq ptr %399, null
  br i1 %400, label %410, label %401

401:                                              ; preds = %392, %401
  %402 = phi i64 [ %407, %401 ], [ 0, %392 ]
  %403 = phi ptr [ %408, %401 ], [ %399, %392 ]
  %404 = getelementptr inbounds %struct.KeyBlock, ptr %403, i64 0, i32 12
  %405 = tail call fastcc ptr @get_weights_array(ptr noundef %1, ptr noundef nonnull %404, ptr noundef null)
  %406 = getelementptr inbounds ptr, ptr %398, i64 %402
  store ptr %405, ptr %406, align 8, !tbaa !42
  %407 = add nuw i64 %402, 1
  %408 = load ptr, ptr %403, align 8, !tbaa !42
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %401, !llvm.loop !97

410:                                              ; preds = %401, %392
  tail call void @BKE_key_evaluate_relative(i32 noundef 0, i32 noundef %131, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %361, ptr noundef %398, i32 noundef 0)
  %411 = load i16, ptr %394, align 2, !tbaa !96
  %412 = icmp sgt i16 %411, 0
  br i1 %412, label %413, label %425

413:                                              ; preds = %410, %420
  %414 = phi i64 [ %421, %420 ], [ 0, %410 ]
  %415 = getelementptr inbounds ptr, ptr %398, i64 %414
  %416 = load ptr, ptr %415, align 8, !tbaa !42
  %417 = icmp eq ptr %416, null
  br i1 %417, label %420, label %418

418:                                              ; preds = %413
  %419 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %419(ptr noundef nonnull %416) #11
  br label %420

420:                                              ; preds = %418, %413
  %421 = add nuw nsw i64 %414, 1
  %422 = load i16, ptr %394, align 2, !tbaa !96
  %423 = sext i16 %422 to i64
  %424 = icmp slt i64 %421, %423
  br i1 %424, label %413, label %425, !llvm.loop !118

425:                                              ; preds = %420, %410
  %426 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %426(ptr noundef %398) #11
  br label %437

427:                                              ; preds = %388
  %428 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 13
  %429 = load float, ptr %428, align 8, !tbaa !130
  %430 = fdiv float %429, 1.000000e+02
  %431 = call fastcc i32 @setkeys(float noundef %430, ptr noundef nonnull %64, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %427
  call fastcc void @do_key(i32 noundef 0, i32 noundef %131, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %361, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0)
  br label %437

434:                                              ; preds = %427
  %435 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  %436 = load ptr, ptr %435, align 16, !tbaa !42
  call fastcc void @cp_key(i32 noundef 0, i32 noundef %131, i32 noundef %131, ptr noundef %145, ptr noundef %31, ptr noundef %361, ptr noundef %436, ptr noundef null, i32 noundef 0)
  br label %437

437:                                              ; preds = %385, %434, %433, %425, %369
  %438 = getelementptr inbounds %struct.Lattice, ptr %147, i64 0, i32 5
  %439 = load i16, ptr %438, align 2, !tbaa !133
  %440 = and i16 %439, 2
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %437
  call void @outside_lattice(ptr noundef %147) #11
  br label %443

443:                                              ; preds = %437, %442
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  br label %446

444:                                              ; preds = %222
  tail call fastcc void @do_curve_key(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %31, ptr noundef %145, i32 noundef %131)
  br label %446

445:                                              ; preds = %222
  tail call fastcc void @do_curve_key(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %31, ptr noundef %145, i32 noundef %131)
  br label %446

446:                                              ; preds = %217, %182, %222, %180, %176, %173, %338, %444, %445, %443
  %447 = icmp eq ptr %2, null
  br i1 %447, label %449, label %448

448:                                              ; preds = %446
  store i32 %131, ptr %2, align 4, !tbaa !70
  br label %449

449:                                              ; preds = %446, %448, %141, %129, %60, %63
  %450 = phi ptr [ null, %63 ], [ null, %60 ], [ null, %129 ], [ null, %141 ], [ %145, %448 ], [ %145, %446 ]
  ret ptr %450
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_key_from_object(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !98
  switch i16 %5, label %21 [
    i16 1, label %6
    i16 2, label %10
    i16 3, label %10
    i16 22, label %14
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 4
  br label %18

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 9
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.Lattice, ptr %16, i64 0, i32 23
  br label %18

18:                                               ; preds = %6, %10, %14
  %19 = phi ptr [ %17, %14 ], [ %13, %10 ], [ %9, %6 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  br label %21

21:                                               ; preds = %18, %3, %1
  %22 = phi ptr [ null, %1 ], [ null, %3 ], [ %20, %18 ]
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_keyblock_from_object(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !98
  switch i16 %5, label %21 [
    i16 1, label %6
    i16 2, label %10
    i16 3, label %10
    i16 22, label %14
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 4
  br label %18

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 9
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.Lattice, ptr %16, i64 0, i32 23
  br label %18

18:                                               ; preds = %14, %10, %6
  %19 = phi ptr [ %9, %6 ], [ %13, %10 ], [ %17, %14 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  br label %21

21:                                               ; preds = %18, %1, %3
  %22 = phi ptr [ null, %1 ], [ null, %3 ], [ %20, %18 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Key, ptr %22, i64 0, i32 6
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 115
  %27 = load i16, ptr %26, align 2, !tbaa !119
  %28 = sext i16 %27 to i32
  %29 = add nsw i32 %28, -1
  %30 = tail call ptr @BLI_findlink(ptr noundef nonnull %25, i32 noundef %29) #11
  br label %31

31:                                               ; preds = %21, %24
  %32 = phi ptr [ %30, %24 ], [ null, %21 ]
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_curve_key(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [4 x ptr], align 16
  %7 = alloca [4 x float], align 16
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  %10 = icmp eq ptr %1, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !98
  switch i16 %13, label %23 [
    i16 1, label %14
    i16 2, label %16
    i16 3, label %16
    i16 22, label %18
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 4
  br label %20

16:                                               ; preds = %11, %11
  %17 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 9
  br label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 23
  br label %20

20:                                               ; preds = %18, %16, %14
  %21 = phi ptr [ %15, %14 ], [ %17, %16 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %20, %5, %11
  %24 = phi ptr [ null, %5 ], [ null, %11 ], [ %22, %20 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Key, ptr %24, i64 0, i32 6
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %29 = load i16, ptr %28, align 2, !tbaa !119
  %30 = sext i16 %29 to i32
  %31 = add nsw i32 %30, -1
  %32 = tail call ptr @BLI_findlink(ptr noundef nonnull %27, i32 noundef %31) #11
  br label %33

33:                                               ; preds = %23, %26
  %34 = phi ptr [ %32, %26 ], [ null, %23 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %35 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 11
  %36 = load i16, ptr %35, align 4, !tbaa !129
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %120, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 9
  %40 = load i16, ptr %39, align 8, !tbaa !50
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %120, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 13
  %44 = load float, ptr %43, align 8, !tbaa !130
  %45 = fdiv float %44, 1.000000e+02
  %46 = tail call float @BKE_scene_frame_get(ptr noundef %0) #11
  %47 = icmp sgt i32 %4, 100
  %48 = load i32, ptr @slurph_opt, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 %49, i1 false
  %51 = udiv i32 %4, 50
  %52 = select i1 %50, i32 %51, i32 1
  %53 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = icmp eq ptr %54, null
  br i1 %55, label %240, label %56

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %58 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  br label %65

59:                                               ; preds = %115, %87
  %60 = phi i32 [ %69, %87 ], [ %117, %115 ]
  %61 = phi i32 [ %68, %87 ], [ %118, %115 ]
  %62 = phi i32 [ %67, %87 ], [ %102, %115 ]
  %63 = load ptr, ptr %66, align 8, !tbaa !42
  %64 = icmp eq ptr %63, null
  br i1 %64, label %240, label %65, !llvm.loop !134

65:                                               ; preds = %56, %59
  %66 = phi ptr [ %54, %56 ], [ %63, %59 ]
  %67 = phi i32 [ 0, %56 ], [ %62, %59 ]
  %68 = phi i32 [ 0, %56 ], [ %61, %59 ]
  %69 = phi i32 [ 0, %56 ], [ %60, %59 ]
  %70 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !124
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !123
  %76 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 7
  %77 = load i32, ptr %76, align 4, !tbaa !125
  %78 = mul nsw i32 %77, %75
  br label %87

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 18
  %81 = load ptr, ptr %80, align 8, !tbaa !121
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 6
  %85 = load i32, ptr %84, align 8, !tbaa !123
  %86 = mul nsw i32 %85, 3
  br label %87

87:                                               ; preds = %79, %83, %73
  %88 = phi i32 [ %78, %73 ], [ %86, %83 ], [ 0, %79 ]
  %89 = phi i1 [ false, %73 ], [ true, %83 ], [ false, %79 ]
  %90 = phi i32 [ 1, %73 ], [ 2, %83 ], [ 0, %79 ]
  %91 = icmp sgt i32 %88, 0
  br i1 %91, label %92, label %59

92:                                               ; preds = %87, %115
  %93 = phi i32 [ %102, %115 ], [ %67, %87 ]
  %94 = phi i32 [ %116, %115 ], [ 0, %87 ]
  %95 = phi i32 [ %118, %115 ], [ %68, %87 ]
  %96 = phi i32 [ %117, %115 ], [ %69, %87 ]
  %97 = icmp slt i32 %95, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = call fastcc i32 @setkeys(float noundef %45, ptr noundef nonnull %57, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi i32 [ %52, %98 ], [ %95, %92 ]
  %102 = phi i32 [ %99, %98 ], [ %93, %92 ]
  %103 = call i32 @llvm.smin.i32(i32 %101, i32 %88)
  br i1 %89, label %104, label %108

104:                                              ; preds = %100
  %105 = srem i32 %103, 3
  %106 = add i32 %103, 3
  %107 = sub i32 %106, %105
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i32 [ %107, %104 ], [ %103, %100 ]
  %110 = icmp eq i32 %102, 0
  %111 = add nsw i32 %109, %96
  br i1 %110, label %112, label %113

112:                                              ; preds = %108
  call fastcc void @do_key(i32 noundef %96, i32 noundef %111, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %34, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %90)
  br label %115

113:                                              ; preds = %108
  %114 = load ptr, ptr %58, align 16, !tbaa !42
  call fastcc void @cp_key(i32 noundef %96, i32 noundef %111, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %34, ptr noundef %114, ptr noundef null, i32 noundef %90)
  br label %115

115:                                              ; preds = %113, %112
  %116 = add nsw i32 %109, %94
  %117 = add nsw i32 %109, %96
  %118 = sub nsw i32 %101, %109
  %119 = icmp slt i32 %116, %88
  br i1 %119, label %92, label %59, !llvm.loop !135

120:                                              ; preds = %38, %33
  %121 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 9
  %122 = load i16, ptr %121, align 8, !tbaa !50
  %123 = icmp eq i16 %122, 1
  br i1 %123, label %124, label %159

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 9
  %126 = load ptr, ptr %125, align 8, !tbaa !136
  %127 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !42
  %129 = icmp eq ptr %128, null
  br i1 %129, label %240, label %130

130:                                              ; preds = %124, %154
  %131 = phi ptr [ %157, %154 ], [ %128, %124 ]
  %132 = phi i32 [ %156, %154 ], [ 0, %124 ]
  %133 = getelementptr inbounds %struct.Nurb, ptr %131, i64 0, i32 17
  %134 = load ptr, ptr %133, align 8, !tbaa !124
  %135 = icmp eq ptr %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.Nurb, ptr %131, i64 0, i32 6
  %138 = load i32, ptr %137, align 8, !tbaa !123
  %139 = getelementptr inbounds %struct.Nurb, ptr %131, i64 0, i32 7
  %140 = load i32, ptr %139, align 4, !tbaa !125
  %141 = mul nsw i32 %140, %138
  br label %150

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.Nurb, ptr %131, i64 0, i32 18
  %144 = load ptr, ptr %143, align 8, !tbaa !121
  %145 = icmp eq ptr %144, null
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.Nurb, ptr %131, i64 0, i32 6
  %148 = load i32, ptr %147, align 8, !tbaa !123
  %149 = mul nsw i32 %148, 3
  br label %150

150:                                              ; preds = %136, %146
  %151 = phi i32 [ %149, %146 ], [ %141, %136 ]
  %152 = phi i32 [ 2, %146 ], [ 1, %136 ]
  %153 = add nsw i32 %151, %132
  tail call void @BKE_key_evaluate_relative(i32 noundef %132, i32 noundef %153, i32 noundef %4, ptr noundef %3, ptr noundef %126, ptr noundef %34, ptr noundef null, i32 noundef %152)
  br label %154

154:                                              ; preds = %150, %142
  %155 = phi i32 [ 0, %142 ], [ %151, %150 ]
  %156 = add nsw i32 %155, %132
  %157 = load ptr, ptr %131, align 8, !tbaa !42
  %158 = icmp eq ptr %157, null
  br i1 %158, label %240, label %130, !llvm.loop !139

159:                                              ; preds = %120
  %160 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 13
  %161 = load float, ptr %160, align 8, !tbaa !130
  %162 = fdiv float %161, 1.000000e+02
  %163 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %164 = call fastcc i32 @setkeys(float noundef %162, ptr noundef nonnull %163, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %199

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !42
  %169 = icmp eq ptr %168, null
  br i1 %169, label %240, label %170

170:                                              ; preds = %166, %194
  %171 = phi ptr [ %197, %194 ], [ %168, %166 ]
  %172 = phi i32 [ %196, %194 ], [ 0, %166 ]
  %173 = getelementptr inbounds %struct.Nurb, ptr %171, i64 0, i32 17
  %174 = load ptr, ptr %173, align 8, !tbaa !124
  %175 = icmp eq ptr %174, null
  br i1 %175, label %182, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.Nurb, ptr %171, i64 0, i32 6
  %178 = load i32, ptr %177, align 8, !tbaa !123
  %179 = getelementptr inbounds %struct.Nurb, ptr %171, i64 0, i32 7
  %180 = load i32, ptr %179, align 4, !tbaa !125
  %181 = mul nsw i32 %180, %178
  br label %190

182:                                              ; preds = %170
  %183 = getelementptr inbounds %struct.Nurb, ptr %171, i64 0, i32 18
  %184 = load ptr, ptr %183, align 8, !tbaa !121
  %185 = icmp eq ptr %184, null
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.Nurb, ptr %171, i64 0, i32 6
  %188 = load i32, ptr %187, align 8, !tbaa !123
  %189 = mul nsw i32 %188, 3
  br label %190

190:                                              ; preds = %176, %186
  %191 = phi i32 [ %189, %186 ], [ %181, %176 ]
  %192 = phi i32 [ 2, %186 ], [ 1, %176 ]
  %193 = add nsw i32 %191, %172
  call fastcc void @do_key(i32 noundef %172, i32 noundef %193, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %34, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %192)
  br label %194

194:                                              ; preds = %190, %182
  %195 = phi i32 [ 0, %182 ], [ %191, %190 ]
  %196 = add nsw i32 %195, %172
  %197 = load ptr, ptr %171, align 8, !tbaa !42
  %198 = icmp eq ptr %197, null
  br i1 %198, label %240, label %170, !llvm.loop !140

199:                                              ; preds = %159
  %200 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  %201 = load ptr, ptr %200, align 16, !tbaa !42
  %202 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !42
  %204 = icmp eq ptr %203, null
  br i1 %204, label %240, label %205

205:                                              ; preds = %199, %235
  %206 = phi ptr [ %238, %235 ], [ %203, %199 ]
  %207 = phi i32 [ %237, %235 ], [ 0, %199 ]
  %208 = getelementptr inbounds %struct.Nurb, ptr %206, i64 0, i32 17
  %209 = load ptr, ptr %208, align 8, !tbaa !124
  %210 = icmp eq ptr %209, null
  br i1 %210, label %222, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.Nurb, ptr %206, i64 0, i32 6
  %213 = load i32, ptr %212, align 8, !tbaa !123
  %214 = getelementptr inbounds %struct.Nurb, ptr %206, i64 0, i32 7
  %215 = load i32, ptr %214, align 4, !tbaa !125
  %216 = mul nsw i32 %215, %213
  %217 = call i32 @llvm.smax.i32(i32 %207, i32 0)
  %218 = add nsw i32 %216, %207
  %219 = call i32 @llvm.smin.i32(i32 %218, i32 %4)
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %221, label %235

221:                                              ; preds = %211
  call fastcc void @cp_key(i32 noundef %217, i32 noundef %219, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %34, ptr noundef %201, ptr noundef null, i32 noundef 1)
  br label %235

222:                                              ; preds = %205
  %223 = getelementptr inbounds %struct.Nurb, ptr %206, i64 0, i32 18
  %224 = load ptr, ptr %223, align 8, !tbaa !121
  %225 = icmp eq ptr %224, null
  br i1 %225, label %235, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.Nurb, ptr %206, i64 0, i32 6
  %228 = load i32, ptr %227, align 8, !tbaa !123
  %229 = mul nsw i32 %228, 3
  %230 = call i32 @llvm.smax.i32(i32 %207, i32 0)
  %231 = add nsw i32 %229, %207
  %232 = call i32 @llvm.smin.i32(i32 %231, i32 %4)
  %233 = icmp slt i32 %230, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  call fastcc void @cp_key(i32 noundef %230, i32 noundef %232, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %34, ptr noundef %201, ptr noundef null, i32 noundef 2)
  br label %235

235:                                              ; preds = %234, %226, %222, %221, %211
  %236 = phi i32 [ %216, %221 ], [ %216, %211 ], [ %229, %234 ], [ %229, %226 ], [ 0, %222 ]
  %237 = add nsw i32 %236, %207
  %238 = load ptr, ptr %206, align 8, !tbaa !42
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %205, !llvm.loop !128

240:                                              ; preds = %59, %235, %194, %154, %42, %166, %124, %199
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_key_evaluate_object(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_key_evaluate_object_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i64 noundef 0)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_keyblock_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %4 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %5, i64 0, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !64
  %10 = fadd float %9, 0x3FB99999A0000000
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi float [ %10, %7 ], [ 0.000000e+00, %2 ]
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.3) #11
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 4
  store i16 1, ptr %15, align 8, !tbaa !142
  %16 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #11
  %17 = icmp eq ptr %1, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 11
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef nonnull %1, i64 noundef 64) #11
  br label %29

21:                                               ; preds = %11
  %22 = icmp eq i32 %16, 1
  %23 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 11
  br i1 %22, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef nonnull @.str.4, i64 noundef 64) #11
  br label %29

26:                                               ; preds = %21
  %27 = add nsw i32 %16, -1
  %28 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %23, i64 noundef 64, ptr noundef nonnull @.str.5, i32 noundef %27) #11
  br label %29

29:                                               ; preds = %24, %26, %18
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef %14, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 48, i32 noundef 64) #11
  %30 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !54
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 4, !tbaa !54
  %33 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 9
  store i32 %31, ptr %33, align 4, !tbaa !143
  %34 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 10
  %35 = load i16, ptr %34, align 2, !tbaa !96
  %36 = add i16 %35, 1
  store i16 %36, ptr %34, align 2, !tbaa !96
  %37 = icmp eq i16 %35, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 2
  store ptr %14, ptr %39, align 8, !tbaa !58
  br label %40

40:                                               ; preds = %38, %29
  %41 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 13
  store float 0.000000e+00, ptr %41, align 8, !tbaa !144
  %42 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 14
  store float 1.000000e+00, ptr %42, align 4, !tbaa !145
  %43 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 2
  store float %12, ptr %43, align 8, !tbaa !64
  ret ptr %14
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_keyblock_add_ctime(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_keyblock_add(ptr noundef %0, ptr noundef %1)
  %5 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 13
  %6 = load float, ptr %5, align 8, !tbaa !130
  %7 = fdiv float %6, 1.000000e+02
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 8, !tbaa !50
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %57, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi ptr [ %14, %13 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.KeyBlock, ptr %17, i64 0, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !64
  %22 = fcmp oeq float %21, %7
  br i1 %22, label %57, label %15, !llvm.loop !146

23:                                               ; preds = %15
  br i1 %12, label %57, label %24

24:                                               ; preds = %3, %23
  %25 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 2
  store float %7, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %24, %39
  %30 = phi ptr [ %31, %39 ], [ %27, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 2
  %35 = load float, ptr %34, align 8, !tbaa !64
  %36 = getelementptr inbounds %struct.KeyBlock, ptr %31, i64 0, i32 2
  %37 = load float, ptr %36, align 8, !tbaa !64
  %38 = fcmp ogt float %35, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br i1 %32, label %54, label %29, !llvm.loop !65

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.KeyBlock, ptr %31, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %26, ptr noundef nonnull %31) #11
  br label %42

42:                                               ; preds = %46, %40
  %43 = phi ptr [ %26, %40 ], [ %44, %46 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.KeyBlock, ptr %44, i64 0, i32 2
  %48 = load float, ptr %47, align 8, !tbaa !64
  %49 = load float, ptr %41, align 8, !tbaa !64
  %50 = fcmp ogt float %48, %49
  br i1 %50, label %51, label %42, !llvm.loop !66

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.KeyBlock, ptr %44, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !67
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %26, ptr noundef %53, ptr noundef nonnull %31) #11
  br label %54

54:                                               ; preds = %29, %39, %42, %24, %51
  %55 = load ptr, ptr %26, align 8, !tbaa !68
  %56 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !58
  br label %57

57:                                               ; preds = %19, %9, %23, %54
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_keyblock_from_object_reference(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !98
  switch i16 %5, label %21 [
    i16 1, label %6
    i16 2, label %10
    i16 3, label %10
    i16 22, label %14
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 4
  br label %18

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 9
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.Lattice, ptr %16, i64 0, i32 23
  br label %18

18:                                               ; preds = %14, %10, %6
  %19 = phi ptr [ %9, %6 ], [ %13, %10 ], [ %17, %14 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  br label %21

21:                                               ; preds = %18, %1, %3
  %22 = phi ptr [ null, %1 ], [ null, %3 ], [ %20, %18 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Key, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi ptr [ %26, %24 ], [ null, %21 ]
  ret ptr %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_keyblock_from_key(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !96
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i16 %6, 1
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i32 %16, 1
  %14 = icmp eq i32 %13, %7
  br i1 %14, label %20, label %15, !llvm.loop !147

15:                                               ; preds = %9, %12
  %16 = phi i32 [ %13, %12 ], [ 1, %9 ]
  %17 = phi ptr [ %18, %12 ], [ %11, %9 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = icmp eq i32 %16, %1
  br i1 %19, label %20, label %12

20:                                               ; preds = %15, %12, %4, %2
  %21 = phi ptr [ null, %2 ], [ null, %4 ], [ null, %12 ], [ %18, %15 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_keyblock_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 48) #11
  ret ptr %4
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_keyblock_copy_settings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 2
  store float %4, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !71
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 3
  store float %7, ptr %8, align 4, !tbaa !71
  %9 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !142
  %11 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 4
  store i16 %10, ptr %11, align 8, !tbaa !142
  %12 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 6
  %13 = load i16, ptr %12, align 4, !tbaa !74
  %14 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 6
  store i16 %13, ptr %14, align 4, !tbaa !74
  %15 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 12
  %16 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 12
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %15, ptr noundef nonnull %16, i64 noundef 64) #11
  %18 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 13
  %19 = load float, ptr %18, align 8, !tbaa !144
  %20 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 13
  store float %19, ptr %20, align 8, !tbaa !144
  %21 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 14
  %22 = load float, ptr %21, align 4, !tbaa !145
  %23 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 14
  store float %22, ptr %23, align 4, !tbaa !145
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_keyblock_curval_rnapath_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %1, ptr noundef nonnull %3) #11
  %8 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.6) #11
  %9 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %3, ptr noundef %8) #11
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret ptr %11
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_key_convert_from_lattice(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !106
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !107
  %8 = sext i16 %7 to i32
  %9 = mul nsw i32 %8, %5
  %10 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %11 = load i16, ptr %10, align 4, !tbaa !108
  %12 = sext i16 %11 to i32
  %13 = mul nsw i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %50, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %20(ptr noundef nonnull %17) #11
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !148
  %25 = getelementptr inbounds %struct.Key, ptr %24, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !57
  %27 = mul nsw i32 %26, %13
  %28 = sext i32 %27 to i64
  %29 = tail call ptr %22(i64 noundef %28, ptr noundef nonnull @.str.7) #11
  store ptr %29, ptr %16, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 8
  store i32 %13, ptr %30, align 8, !tbaa !73
  %31 = icmp sgt i32 %13, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %34 = load ptr, ptr %33, align 8, !tbaa !149
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi ptr [ %48, %35 ], [ %34, %32 ]
  %37 = phi i32 [ %46, %35 ], [ 0, %32 ]
  %38 = phi ptr [ %47, %35 ], [ %29, %32 ]
  %39 = load float, ptr %36, align 4, !tbaa !69
  store float %39, ptr %38, align 4, !tbaa !69
  %40 = getelementptr inbounds float, ptr %36, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !69
  %42 = getelementptr inbounds float, ptr %38, i64 1
  store float %41, ptr %42, align 4, !tbaa !69
  %43 = getelementptr inbounds float, ptr %36, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !69
  %45 = getelementptr inbounds float, ptr %38, i64 2
  store float %44, ptr %45, align 4, !tbaa !69
  %46 = add nuw nsw i32 %37, 1
  %47 = getelementptr inbounds float, ptr %38, i64 3
  %48 = getelementptr inbounds %struct.BPoint, ptr %36, i64 1
  %49 = icmp eq i32 %46, %13
  br i1 %49, label %50, label %35, !llvm.loop !150

50:                                               ; preds = %35, %21, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_key_convert_to_lattice(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.Lattice, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !106
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds %struct.Lattice, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !107
  %8 = sext i16 %7 to i32
  %9 = mul nsw i32 %8, %5
  %10 = getelementptr inbounds %struct.Lattice, ptr %1, i64 0, i32 4
  %11 = load i16, ptr %10, align 4, !tbaa !108
  %12 = sext i16 %11 to i32
  %13 = mul nsw i32 %9, %12
  %14 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !73
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 %13)
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.Lattice, ptr %1, i64 0, i32 21
  %22 = load ptr, ptr %21, align 8, !tbaa !149
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %34, %23 ], [ 0, %18 ]
  %25 = phi ptr [ %35, %23 ], [ %20, %18 ]
  %26 = phi ptr [ %36, %23 ], [ %22, %18 ]
  %27 = load float, ptr %25, align 4, !tbaa !69
  store float %27, ptr %26, align 4, !tbaa !69
  %28 = getelementptr inbounds float, ptr %25, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !69
  %30 = getelementptr inbounds float, ptr %26, i64 1
  store float %29, ptr %30, align 4, !tbaa !69
  %31 = getelementptr inbounds float, ptr %25, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !69
  %33 = getelementptr inbounds float, ptr %26, i64 2
  store float %32, ptr %33, align 4, !tbaa !69
  %34 = add nuw nsw i32 %24, 1
  %35 = getelementptr inbounds float, ptr %25, i64 3
  %36 = getelementptr inbounds %struct.BPoint, ptr %26, i64 1
  %37 = icmp eq i32 %34, %16
  br i1 %37, label %38, label %23, !llvm.loop !151

38:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_key_convert_from_curve(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @BKE_nurbList_verts_count(ptr noundef %2) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %100, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %11(ptr noundef nonnull %8) #11
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = getelementptr inbounds %struct.Key, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !57
  %18 = mul nsw i32 %17, %4
  %19 = sext i32 %18 to i64
  %20 = tail call ptr %13(i64 noundef %19, ptr noundef nonnull @.str.7) #11
  store ptr %20, ptr %7, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 8
  store i32 %4, ptr %21, align 8, !tbaa !73
  %22 = load ptr, ptr %2, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %100, label %24

24:                                               ; preds = %12, %96
  %25 = phi ptr [ %98, %96 ], [ %22, %12 ]
  %26 = phi ptr [ %97, %96 ], [ %20, %12 ]
  %27 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !121
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !123
  br i1 %29, label %70, label %32

32:                                               ; preds = %24
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %96, label %34

34:                                               ; preds = %32, %34
  %35 = phi i32 [ %38, %34 ], [ %31, %32 ]
  %36 = phi ptr [ %67, %34 ], [ %26, %32 ]
  %37 = phi ptr [ %68, %34 ], [ %28, %32 ]
  %38 = add nsw i32 %35, -1
  %39 = load float, ptr %37, align 4, !tbaa !69
  store float %39, ptr %36, align 4, !tbaa !69
  %40 = getelementptr inbounds float, ptr %37, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !69
  %42 = getelementptr inbounds float, ptr %36, i64 1
  store float %41, ptr %42, align 4, !tbaa !69
  %43 = getelementptr inbounds float, ptr %37, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !69
  %45 = getelementptr inbounds float, ptr %36, i64 2
  store float %44, ptr %45, align 4, !tbaa !69
  %46 = getelementptr inbounds float, ptr %36, i64 3
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !69
  store float %48, ptr %46, align 4, !tbaa !69
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 1, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !69
  %51 = getelementptr inbounds float, ptr %36, i64 4
  store float %50, ptr %51, align 4, !tbaa !69
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 1, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !69
  %54 = getelementptr inbounds float, ptr %36, i64 5
  store float %53, ptr %54, align 4, !tbaa !69
  %55 = getelementptr inbounds float, ptr %36, i64 6
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !69
  store float %57, ptr %55, align 4, !tbaa !69
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 2, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !69
  %60 = getelementptr inbounds float, ptr %36, i64 7
  store float %59, ptr %60, align 4, !tbaa !69
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 2, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !69
  %63 = getelementptr inbounds float, ptr %36, i64 8
  store float %62, ptr %63, align 4, !tbaa !69
  %64 = getelementptr inbounds float, ptr %36, i64 9
  %65 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 1
  %66 = load float, ptr %65, align 4, !tbaa !152
  store float %66, ptr %64, align 4, !tbaa !69
  %67 = getelementptr inbounds float, ptr %36, i64 12
  %68 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 1
  %69 = icmp eq i32 %38, 0
  br i1 %69, label %96, label %34, !llvm.loop !154

70:                                               ; preds = %24
  %71 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 7
  %72 = load i32, ptr %71, align 4, !tbaa !125
  %73 = mul nsw i32 %72, %31
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !124
  br label %78

78:                                               ; preds = %75, %78
  %79 = phi i32 [ %82, %78 ], [ %73, %75 ]
  %80 = phi ptr [ %93, %78 ], [ %26, %75 ]
  %81 = phi ptr [ %94, %78 ], [ %77, %75 ]
  %82 = add nsw i32 %79, -1
  %83 = load float, ptr %81, align 4, !tbaa !69
  store float %83, ptr %80, align 4, !tbaa !69
  %84 = getelementptr inbounds float, ptr %81, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !69
  %86 = getelementptr inbounds float, ptr %80, i64 1
  store float %85, ptr %86, align 4, !tbaa !69
  %87 = getelementptr inbounds float, ptr %81, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !69
  %89 = getelementptr inbounds float, ptr %80, i64 2
  store float %88, ptr %89, align 4, !tbaa !69
  %90 = getelementptr inbounds %struct.BPoint, ptr %81, i64 0, i32 1
  %91 = load float, ptr %90, align 4, !tbaa !155
  %92 = getelementptr inbounds float, ptr %80, i64 3
  store float %91, ptr %92, align 4, !tbaa !69
  %93 = getelementptr inbounds float, ptr %80, i64 4
  %94 = getelementptr inbounds %struct.BPoint, ptr %81, i64 1
  %95 = icmp eq i32 %82, 0
  br i1 %95, label %96, label %78, !llvm.loop !157

96:                                               ; preds = %34, %78, %32, %70
  %97 = phi ptr [ %26, %70 ], [ %26, %32 ], [ %93, %78 ], [ %67, %34 ]
  %98 = load ptr, ptr %25, align 8, !tbaa !42
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %24, !llvm.loop !158

100:                                              ; preds = %96, %12, %3
  ret void
}

declare i32 @BKE_nurbList_verts_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_key_convert_to_curve(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @BKE_nurbList_verts_count(ptr noundef nonnull %2) #11
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !73
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %7)
  %11 = icmp ne ptr %4, null
  %12 = icmp sgt i32 %10, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %106

14:                                               ; preds = %3, %99
  %15 = phi i32 [ %101, %99 ], [ %10, %3 ]
  %16 = phi ptr [ %100, %99 ], [ %6, %3 ]
  %17 = phi ptr [ %102, %99 ], [ %4, %3 ]
  %18 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !121
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !123
  br i1 %20, label %67, label %23

23:                                               ; preds = %14
  %24 = icmp ne i32 %22, 0
  %25 = icmp sgt i32 %15, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %99

27:                                               ; preds = %23, %27
  %28 = phi i32 [ %62, %27 ], [ %15, %23 ]
  %29 = phi i32 [ %32, %27 ], [ %22, %23 ]
  %30 = phi ptr [ %61, %27 ], [ %16, %23 ]
  %31 = phi ptr [ %63, %27 ], [ %19, %23 ]
  %32 = add nsw i32 %29, -1
  %33 = load float, ptr %30, align 4, !tbaa !69
  store float %33, ptr %31, align 4, !tbaa !69
  %34 = getelementptr inbounds float, ptr %30, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !69
  %36 = getelementptr inbounds float, ptr %31, i64 1
  store float %35, ptr %36, align 4, !tbaa !69
  %37 = getelementptr inbounds float, ptr %30, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !69
  %39 = getelementptr inbounds float, ptr %31, i64 2
  store float %38, ptr %39, align 4, !tbaa !69
  %40 = getelementptr inbounds float, ptr %30, i64 3
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 1
  %42 = load float, ptr %40, align 4, !tbaa !69
  store float %42, ptr %41, align 4, !tbaa !69
  %43 = getelementptr inbounds float, ptr %30, i64 4
  %44 = load float, ptr %43, align 4, !tbaa !69
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 1, i64 1
  store float %44, ptr %45, align 4, !tbaa !69
  %46 = getelementptr inbounds float, ptr %30, i64 5
  %47 = load float, ptr %46, align 4, !tbaa !69
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 1, i64 2
  store float %47, ptr %48, align 4, !tbaa !69
  %49 = getelementptr inbounds float, ptr %30, i64 6
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 2
  %51 = load float, ptr %49, align 4, !tbaa !69
  store float %51, ptr %50, align 4, !tbaa !69
  %52 = getelementptr inbounds float, ptr %30, i64 7
  %53 = load float, ptr %52, align 4, !tbaa !69
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 2, i64 1
  store float %53, ptr %54, align 4, !tbaa !69
  %55 = getelementptr inbounds float, ptr %30, i64 8
  %56 = load float, ptr %55, align 4, !tbaa !69
  %57 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 2, i64 2
  store float %56, ptr %57, align 4, !tbaa !69
  %58 = getelementptr inbounds float, ptr %30, i64 9
  %59 = load float, ptr %58, align 4, !tbaa !69
  %60 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 1
  store float %59, ptr %60, align 4, !tbaa !152
  %61 = getelementptr inbounds float, ptr %30, i64 12
  %62 = add nsw i32 %28, -3
  %63 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 1
  %64 = icmp ne i32 %32, 0
  %65 = icmp sgt i32 %28, 3
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %27, label %99, !llvm.loop !159

67:                                               ; preds = %14
  %68 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 7
  %69 = load i32, ptr %68, align 4, !tbaa !125
  %70 = mul nsw i32 %69, %22
  %71 = icmp ne i32 %70, 0
  %72 = icmp sgt i32 %15, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %99

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !124
  br label %77

77:                                               ; preds = %74, %77
  %78 = phi i32 [ %94, %77 ], [ %15, %74 ]
  %79 = phi i32 [ %82, %77 ], [ %70, %74 ]
  %80 = phi ptr [ %93, %77 ], [ %16, %74 ]
  %81 = phi ptr [ %95, %77 ], [ %76, %74 ]
  %82 = add nsw i32 %79, -1
  %83 = load float, ptr %80, align 4, !tbaa !69
  store float %83, ptr %81, align 4, !tbaa !69
  %84 = getelementptr inbounds float, ptr %80, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !69
  %86 = getelementptr inbounds float, ptr %81, i64 1
  store float %85, ptr %86, align 4, !tbaa !69
  %87 = getelementptr inbounds float, ptr %80, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !69
  %89 = getelementptr inbounds float, ptr %81, i64 2
  store float %88, ptr %89, align 4, !tbaa !69
  %90 = getelementptr inbounds float, ptr %80, i64 3
  %91 = load float, ptr %90, align 4, !tbaa !69
  %92 = getelementptr inbounds %struct.BPoint, ptr %81, i64 0, i32 1
  store float %91, ptr %92, align 4, !tbaa !155
  %93 = getelementptr inbounds float, ptr %80, i64 4
  %94 = add nsw i32 %78, -1
  %95 = getelementptr inbounds %struct.BPoint, ptr %81, i64 1
  %96 = icmp ne i32 %82, 0
  %97 = icmp sgt i32 %78, 1
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %77, label %99, !llvm.loop !160

99:                                               ; preds = %27, %77, %23, %67
  %100 = phi ptr [ %16, %67 ], [ %16, %23 ], [ %93, %77 ], [ %61, %27 ]
  %101 = phi i32 [ %15, %67 ], [ %15, %23 ], [ %94, %77 ], [ %62, %27 ]
  %102 = load ptr, ptr %17, align 8, !tbaa !161
  %103 = icmp ne ptr %102, null
  %104 = icmp sgt i32 %101, 0
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %14, label %106, !llvm.loop !162

106:                                              ; preds = %99, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_key_convert_from_mesh(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !103
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %11(ptr noundef nonnull %8) #11
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !163
  %16 = getelementptr inbounds %struct.Key, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !57
  %18 = load i32, ptr %3, align 8, !tbaa !103
  %19 = mul nsw i32 %18, %17
  %20 = sext i32 %19 to i64
  %21 = tail call ptr %13(i64 noundef %20, ptr noundef nonnull @.str.7) #11
  store ptr %21, ptr %7, align 8, !tbaa !34
  %22 = load i32, ptr %3, align 8, !tbaa !103
  %23 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 8
  store i32 %22, ptr %23, align 8, !tbaa !73
  %24 = icmp sgt i32 %22, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !164
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i32 [ %39, %28 ], [ 0, %25 ]
  %30 = phi ptr [ %40, %28 ], [ %21, %25 ]
  %31 = phi ptr [ %41, %28 ], [ %27, %25 ]
  %32 = load float, ptr %31, align 4, !tbaa !69
  store float %32, ptr %30, align 4, !tbaa !69
  %33 = getelementptr inbounds float, ptr %31, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !69
  %35 = getelementptr inbounds float, ptr %30, i64 1
  store float %34, ptr %35, align 4, !tbaa !69
  %36 = getelementptr inbounds float, ptr %31, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !69
  %38 = getelementptr inbounds float, ptr %30, i64 2
  store float %37, ptr %38, align 4, !tbaa !69
  %39 = add nuw nsw i32 %29, 1
  %40 = getelementptr inbounds float, ptr %30, i64 3
  %41 = getelementptr inbounds %struct.MVert, ptr %31, i64 1
  %42 = icmp eq i32 %39, %22
  br i1 %42, label %43, label %28, !llvm.loop !165

43:                                               ; preds = %28, %12, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_key_convert_to_mesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !103
  %7 = tail call i32 @llvm.smin.i32(i32 %4, i32 %6)
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  br label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %27, %14 ], [ %13, %9 ]
  %16 = phi i32 [ %25, %14 ], [ 0, %9 ]
  %17 = phi ptr [ %26, %14 ], [ %11, %9 ]
  %18 = load float, ptr %17, align 4, !tbaa !69
  store float %18, ptr %15, align 4, !tbaa !69
  %19 = getelementptr inbounds float, ptr %17, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !69
  %21 = getelementptr inbounds float, ptr %15, i64 1
  store float %20, ptr %21, align 4, !tbaa !69
  %22 = getelementptr inbounds float, ptr %17, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !69
  %24 = getelementptr inbounds float, ptr %15, i64 2
  store float %23, ptr %24, align 4, !tbaa !69
  %25 = add nuw nsw i32 %16, 1
  %26 = getelementptr inbounds float, ptr %17, i64 3
  %27 = getelementptr inbounds %struct.MVert, ptr %15, i64 1
  %28 = icmp eq i32 %25, %7
  br i1 %28, label %29, label %14, !llvm.loop !166

29:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_key_convert_to_vertcos(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !98
  switch i16 %6, label %31 [
    i16 1, label %7
    i16 22, label %12
    i16 2, label %26
    i16 3, label %26
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !103
  br label %31

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.Lattice, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !106
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.Lattice, ptr %14, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !107
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %20, %17
  %22 = getelementptr inbounds %struct.Lattice, ptr %14, i64 0, i32 4
  %23 = load i16, ptr %22, align 4, !tbaa !108
  %24 = sext i16 %23 to i32
  %25 = mul nsw i32 %21, %24
  br label %31

26:                                               ; preds = %2, %2
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  %29 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 3
  %30 = tail call i32 @BKE_nurbList_verts_count(ptr noundef nonnull %29) #11
  br label %31

31:                                               ; preds = %2, %12, %26, %7
  %32 = phi i32 [ %11, %7 ], [ %25, %12 ], [ %30, %26 ], [ 0, %2 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %122, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %36 = sext i32 %32 to i64
  %37 = mul nsw i64 %36, 12
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @.str.8) #11
  %39 = load i16, ptr %5, align 8, !tbaa !98
  switch i16 %39, label %122 [
    i16 1, label %40
    i16 22, label %40
    i16 2, label %57
    i16 3, label %57
  ]

40:                                               ; preds = %34, %34
  %41 = icmp sgt i32 %32, 0
  br i1 %41, label %42, label %122

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %55, %42 ], [ %38, %40 ]
  %44 = phi ptr [ %54, %42 ], [ %4, %40 ]
  %45 = phi i32 [ %53, %42 ], [ 0, %40 ]
  %46 = load float, ptr %44, align 4, !tbaa !69
  store float %46, ptr %43, align 4, !tbaa !69
  %47 = getelementptr inbounds float, ptr %44, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !69
  %49 = getelementptr inbounds float, ptr %43, i64 1
  store float %48, ptr %49, align 4, !tbaa !69
  %50 = getelementptr inbounds float, ptr %44, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !69
  %52 = getelementptr inbounds float, ptr %43, i64 2
  store float %51, ptr %52, align 4, !tbaa !69
  %53 = add nuw nsw i32 %45, 1
  %54 = getelementptr inbounds float, ptr %44, i64 3
  %55 = getelementptr inbounds float, ptr %43, i64 3
  %56 = icmp eq i32 %53, %32
  br i1 %56, label %122, label %42, !llvm.loop !167

57:                                               ; preds = %34, %34
  %58 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !101
  %60 = getelementptr inbounds %struct.Curve, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !42
  %62 = icmp eq ptr %61, null
  br i1 %62, label %122, label %63

63:                                               ; preds = %57, %117
  %64 = phi ptr [ %120, %117 ], [ %61, %57 ]
  %65 = phi ptr [ %119, %117 ], [ %38, %57 ]
  %66 = phi ptr [ %118, %117 ], [ %4, %57 ]
  %67 = getelementptr inbounds %struct.Nurb, ptr %64, i64 0, i32 18
  %68 = load ptr, ptr %67, align 8, !tbaa !121
  %69 = icmp eq ptr %68, null
  %70 = getelementptr inbounds %struct.Nurb, ptr %64, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !123
  br i1 %69, label %97, label %72

72:                                               ; preds = %63
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %117, label %74

74:                                               ; preds = %72, %93
  %75 = phi i32 [ %94, %93 ], [ %71, %72 ]
  %76 = phi ptr [ %90, %93 ], [ %65, %72 ]
  %77 = phi ptr [ %95, %93 ], [ %66, %72 ]
  br label %78

78:                                               ; preds = %74, %78
  %79 = phi i32 [ 0, %74 ], [ %91, %78 ]
  %80 = phi ptr [ %76, %74 ], [ %90, %78 ]
  %81 = phi ptr [ %77, %74 ], [ %89, %78 ]
  %82 = load float, ptr %81, align 4, !tbaa !69
  store float %82, ptr %80, align 4, !tbaa !69
  %83 = getelementptr inbounds float, ptr %81, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !69
  %85 = getelementptr inbounds float, ptr %80, i64 1
  store float %84, ptr %85, align 4, !tbaa !69
  %86 = getelementptr inbounds float, ptr %81, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !69
  %88 = getelementptr inbounds float, ptr %80, i64 2
  store float %87, ptr %88, align 4, !tbaa !69
  %89 = getelementptr inbounds float, ptr %81, i64 3
  %90 = getelementptr inbounds float, ptr %80, i64 3
  %91 = add nuw nsw i32 %79, 1
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %78, !llvm.loop !168

93:                                               ; preds = %78
  %94 = add nsw i32 %75, -1
  %95 = getelementptr inbounds float, ptr %81, i64 6
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %117, label %74, !llvm.loop !169

97:                                               ; preds = %63
  %98 = getelementptr inbounds %struct.Nurb, ptr %64, i64 0, i32 7
  %99 = load i32, ptr %98, align 4, !tbaa !125
  %100 = mul nsw i32 %99, %71
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %97, %102
  %103 = phi ptr [ %115, %102 ], [ %65, %97 ]
  %104 = phi ptr [ %114, %102 ], [ %66, %97 ]
  %105 = phi i32 [ %106, %102 ], [ %100, %97 ]
  %106 = add nsw i32 %105, -1
  %107 = load float, ptr %104, align 4, !tbaa !69
  store float %107, ptr %103, align 4, !tbaa !69
  %108 = getelementptr inbounds float, ptr %104, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !69
  %110 = getelementptr inbounds float, ptr %103, i64 1
  store float %109, ptr %110, align 4, !tbaa !69
  %111 = getelementptr inbounds float, ptr %104, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !69
  %113 = getelementptr inbounds float, ptr %103, i64 2
  store float %112, ptr %113, align 4, !tbaa !69
  %114 = getelementptr inbounds float, ptr %104, i64 4
  %115 = getelementptr inbounds float, ptr %103, i64 3
  %116 = icmp eq i32 %106, 0
  br i1 %116, label %117, label %102, !llvm.loop !170

117:                                              ; preds = %93, %102, %72, %97
  %118 = phi ptr [ %66, %97 ], [ %66, %72 ], [ %114, %102 ], [ %95, %93 ]
  %119 = phi ptr [ %65, %97 ], [ %65, %72 ], [ %115, %102 ], [ %90, %93 ]
  %120 = load ptr, ptr %64, align 8, !tbaa !42
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %63, !llvm.loop !171

122:                                              ; preds = %117, %42, %57, %40, %34, %31
  %123 = phi ptr [ null, %31 ], [ %38, %34 ], [ %38, %40 ], [ %38, %57 ], [ %38, %42 ], [ %38, %117 ]
  ret ptr %123
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_key_convert_from_vertcos(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %8(ptr noundef nonnull %5) #11
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !98
  switch i16 %11, label %48 [
    i16 1, label %12
    i16 22, label %21
    i16 2, label %39
    i16 3, label %39
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !103
  %17 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !163
  %19 = getelementptr inbounds %struct.Key, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !57
  br label %48

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !106
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !107
  %29 = sext i16 %28 to i32
  %30 = mul nsw i32 %29, %26
  %31 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 4
  %32 = load i16, ptr %31, align 4, !tbaa !108
  %33 = sext i16 %32 to i32
  %34 = mul nsw i32 %30, %33
  %35 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 23
  %36 = load ptr, ptr %35, align 8, !tbaa !148
  %37 = getelementptr inbounds %struct.Key, ptr %36, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !57
  br label %48

39:                                               ; preds = %9, %9
  %40 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  %42 = getelementptr inbounds %struct.Curve, ptr %41, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !136
  %44 = getelementptr inbounds %struct.Key, ptr %43, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !57
  %46 = getelementptr inbounds %struct.Curve, ptr %41, i64 0, i32 3
  %47 = tail call i32 @BKE_nurbList_verts_count(ptr noundef nonnull %46) #11
  br label %48

48:                                               ; preds = %9, %21, %39, %12
  %49 = phi i32 [ %20, %12 ], [ %38, %21 ], [ %45, %39 ], [ undef, %9 ]
  %50 = phi i32 [ %16, %12 ], [ %34, %21 ], [ %47, %39 ], [ 0, %9 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store ptr null, ptr %4, align 8, !tbaa !34
  br label %141

53:                                               ; preds = %48
  %54 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %55 = mul nsw i32 %50, %49
  %56 = sext i32 %55 to i64
  %57 = tail call ptr %54(i64 noundef %56, ptr noundef nonnull @.str.8) #11
  store ptr %57, ptr %4, align 8, !tbaa !34
  %58 = load i16, ptr %10, align 8, !tbaa !98
  switch i16 %58, label %141 [
    i16 1, label %59
    i16 22, label %59
    i16 2, label %76
    i16 3, label %76
  ]

59:                                               ; preds = %53, %53
  %60 = icmp sgt i32 %50, 0
  br i1 %60, label %61, label %141

61:                                               ; preds = %59, %61
  %62 = phi ptr [ %74, %61 ], [ %2, %59 ]
  %63 = phi ptr [ %73, %61 ], [ %57, %59 ]
  %64 = phi i32 [ %72, %61 ], [ 0, %59 ]
  %65 = load float, ptr %62, align 4, !tbaa !69
  store float %65, ptr %63, align 4, !tbaa !69
  %66 = getelementptr inbounds float, ptr %62, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !69
  %68 = getelementptr inbounds float, ptr %63, i64 1
  store float %67, ptr %68, align 4, !tbaa !69
  %69 = getelementptr inbounds float, ptr %62, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !69
  %71 = getelementptr inbounds float, ptr %63, i64 2
  store float %70, ptr %71, align 4, !tbaa !69
  %72 = add nuw nsw i32 %64, 1
  %73 = getelementptr inbounds float, ptr %63, i64 3
  %74 = getelementptr inbounds float, ptr %62, i64 3
  %75 = icmp eq i32 %72, %50
  br i1 %75, label %141, label %61, !llvm.loop !172

76:                                               ; preds = %53, %53
  %77 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %78 = load ptr, ptr %77, align 8, !tbaa !101
  %79 = getelementptr inbounds %struct.Curve, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !42
  %81 = icmp eq ptr %80, null
  br i1 %81, label %141, label %82

82:                                               ; preds = %76, %136
  %83 = phi ptr [ %139, %136 ], [ %80, %76 ]
  %84 = phi ptr [ %138, %136 ], [ %2, %76 ]
  %85 = phi ptr [ %137, %136 ], [ %57, %76 ]
  %86 = getelementptr inbounds %struct.Nurb, ptr %83, i64 0, i32 18
  %87 = load ptr, ptr %86, align 8, !tbaa !121
  %88 = icmp eq ptr %87, null
  %89 = getelementptr inbounds %struct.Nurb, ptr %83, i64 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !123
  br i1 %88, label %116, label %91

91:                                               ; preds = %82
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %136, label %93

93:                                               ; preds = %91, %112
  %94 = phi i32 [ %113, %112 ], [ %90, %91 ]
  %95 = phi ptr [ %109, %112 ], [ %84, %91 ]
  %96 = phi ptr [ %114, %112 ], [ %85, %91 ]
  br label %97

97:                                               ; preds = %93, %97
  %98 = phi i32 [ 0, %93 ], [ %110, %97 ]
  %99 = phi ptr [ %95, %93 ], [ %109, %97 ]
  %100 = phi ptr [ %96, %93 ], [ %108, %97 ]
  %101 = load float, ptr %99, align 4, !tbaa !69
  store float %101, ptr %100, align 4, !tbaa !69
  %102 = getelementptr inbounds float, ptr %99, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !69
  %104 = getelementptr inbounds float, ptr %100, i64 1
  store float %103, ptr %104, align 4, !tbaa !69
  %105 = getelementptr inbounds float, ptr %99, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !69
  %107 = getelementptr inbounds float, ptr %100, i64 2
  store float %106, ptr %107, align 4, !tbaa !69
  %108 = getelementptr inbounds float, ptr %100, i64 3
  %109 = getelementptr inbounds float, ptr %99, i64 3
  %110 = add nuw nsw i32 %98, 1
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %97, !llvm.loop !173

112:                                              ; preds = %97
  %113 = add nsw i32 %94, -1
  %114 = getelementptr inbounds float, ptr %100, i64 6
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %136, label %93, !llvm.loop !174

116:                                              ; preds = %82
  %117 = getelementptr inbounds %struct.Nurb, ptr %83, i64 0, i32 7
  %118 = load i32, ptr %117, align 4, !tbaa !125
  %119 = mul nsw i32 %118, %90
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %116, %121
  %122 = phi ptr [ %134, %121 ], [ %84, %116 ]
  %123 = phi ptr [ %133, %121 ], [ %85, %116 ]
  %124 = phi i32 [ %125, %121 ], [ %119, %116 ]
  %125 = add nsw i32 %124, -1
  %126 = load float, ptr %122, align 4, !tbaa !69
  store float %126, ptr %123, align 4, !tbaa !69
  %127 = getelementptr inbounds float, ptr %122, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !69
  %129 = getelementptr inbounds float, ptr %123, i64 1
  store float %128, ptr %129, align 4, !tbaa !69
  %130 = getelementptr inbounds float, ptr %122, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !69
  %132 = getelementptr inbounds float, ptr %123, i64 2
  store float %131, ptr %132, align 4, !tbaa !69
  %133 = getelementptr inbounds float, ptr %123, i64 4
  %134 = getelementptr inbounds float, ptr %122, i64 3
  %135 = icmp eq i32 %125, 0
  br i1 %135, label %136, label %121, !llvm.loop !175

136:                                              ; preds = %112, %121, %91, %116
  %137 = phi ptr [ %85, %116 ], [ %85, %91 ], [ %133, %121 ], [ %114, %112 ]
  %138 = phi ptr [ %84, %116 ], [ %84, %91 ], [ %134, %121 ], [ %109, %112 ]
  %139 = load ptr, ptr %83, align 8, !tbaa !42
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %82, !llvm.loop !176

141:                                              ; preds = %136, %61, %76, %59, %53, %52
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_key_convert_from_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !98
  switch i16 %7, label %110 [
    i16 1, label %8
    i16 22, label %8
    i16 2, label %33
    i16 3, label %33
  ]

8:                                                ; preds = %3, %3
  %9 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !73
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %110

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %29, %12 ], [ 0, %8 ]
  %14 = phi ptr [ %30, %12 ], [ %5, %8 ]
  %15 = phi ptr [ %31, %12 ], [ %2, %8 ]
  %16 = load float, ptr %15, align 4, !tbaa !69
  %17 = load float, ptr %14, align 4, !tbaa !69
  %18 = fadd float %16, %17
  store float %18, ptr %14, align 4, !tbaa !69
  %19 = getelementptr inbounds float, ptr %15, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !69
  %21 = getelementptr inbounds float, ptr %14, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !69
  %23 = fadd float %20, %22
  store float %23, ptr %21, align 4, !tbaa !69
  %24 = getelementptr inbounds float, ptr %15, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !69
  %26 = getelementptr inbounds float, ptr %14, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !69
  %28 = fadd float %25, %27
  store float %28, ptr %26, align 4, !tbaa !69
  %29 = add nuw nsw i32 %13, 1
  %30 = getelementptr inbounds float, ptr %14, i64 3
  %31 = getelementptr inbounds float, ptr %15, i64 3
  %32 = icmp eq i32 %29, %10
  br i1 %32, label %110, label %12, !llvm.loop !177

33:                                               ; preds = %3, %3
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !101
  %36 = getelementptr inbounds %struct.Curve, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %110, label %39

39:                                               ; preds = %33, %105
  %40 = phi ptr [ %108, %105 ], [ %37, %33 ]
  %41 = phi ptr [ %107, %105 ], [ %5, %33 ]
  %42 = phi ptr [ %106, %105 ], [ %2, %33 ]
  %43 = getelementptr inbounds %struct.Nurb, ptr %40, i64 0, i32 18
  %44 = load ptr, ptr %43, align 8, !tbaa !121
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.Nurb, ptr %40, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !123
  br i1 %45, label %79, label %48

48:                                               ; preds = %39
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %105, label %50

50:                                               ; preds = %48, %75
  %51 = phi i32 [ %76, %75 ], [ %47, %48 ]
  %52 = phi ptr [ %77, %75 ], [ %41, %48 ]
  %53 = phi ptr [ %72, %75 ], [ %42, %48 ]
  br label %54

54:                                               ; preds = %50, %54
  %55 = phi i32 [ 0, %50 ], [ %73, %54 ]
  %56 = phi ptr [ %52, %50 ], [ %71, %54 ]
  %57 = phi ptr [ %53, %50 ], [ %72, %54 ]
  %58 = load float, ptr %57, align 4, !tbaa !69
  %59 = load float, ptr %56, align 4, !tbaa !69
  %60 = fadd float %58, %59
  store float %60, ptr %56, align 4, !tbaa !69
  %61 = getelementptr inbounds float, ptr %57, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !69
  %63 = getelementptr inbounds float, ptr %56, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !69
  %65 = fadd float %62, %64
  store float %65, ptr %63, align 4, !tbaa !69
  %66 = getelementptr inbounds float, ptr %57, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !69
  %68 = getelementptr inbounds float, ptr %56, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !69
  %70 = fadd float %67, %69
  store float %70, ptr %68, align 4, !tbaa !69
  %71 = getelementptr inbounds float, ptr %56, i64 3
  %72 = getelementptr inbounds float, ptr %57, i64 3
  %73 = add nuw nsw i32 %55, 1
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %54, !llvm.loop !178

75:                                               ; preds = %54
  %76 = add nsw i32 %51, -1
  %77 = getelementptr inbounds float, ptr %56, i64 6
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %105, label %50, !llvm.loop !179

79:                                               ; preds = %39
  %80 = getelementptr inbounds %struct.Nurb, ptr %40, i64 0, i32 7
  %81 = load i32, ptr %80, align 4, !tbaa !125
  %82 = mul nsw i32 %81, %47
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %79, %84
  %85 = phi i32 [ %88, %84 ], [ %82, %79 ]
  %86 = phi ptr [ %102, %84 ], [ %41, %79 ]
  %87 = phi ptr [ %103, %84 ], [ %42, %79 ]
  %88 = add nsw i32 %85, -1
  %89 = load float, ptr %87, align 4, !tbaa !69
  %90 = load float, ptr %86, align 4, !tbaa !69
  %91 = fadd float %89, %90
  store float %91, ptr %86, align 4, !tbaa !69
  %92 = getelementptr inbounds float, ptr %87, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !69
  %94 = getelementptr inbounds float, ptr %86, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !69
  %96 = fadd float %93, %95
  store float %96, ptr %94, align 4, !tbaa !69
  %97 = getelementptr inbounds float, ptr %87, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !69
  %99 = getelementptr inbounds float, ptr %86, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !69
  %101 = fadd float %98, %100
  store float %101, ptr %99, align 4, !tbaa !69
  %102 = getelementptr inbounds float, ptr %86, i64 4
  %103 = getelementptr inbounds float, ptr %87, i64 3
  %104 = icmp eq i32 %88, 0
  br i1 %104, label %105, label %84, !llvm.loop !180

105:                                              ; preds = %75, %84, %48, %79
  %106 = phi ptr [ %42, %79 ], [ %42, %48 ], [ %103, %84 ], [ %72, %75 ]
  %107 = phi ptr [ %41, %79 ], [ %41, %48 ], [ %102, %84 ], [ %77, %75 ]
  %108 = load ptr, ptr %40, align 8, !tbaa !42
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %39, !llvm.loop !181

110:                                              ; preds = %105, %12, %33, %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_keyblock_move(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !98
  switch i16 %7, label %23 [
    i16 1, label %8
    i16 2, label %12
    i16 3, label %12
    i16 22, label %16
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 4
  br label %20

12:                                               ; preds = %5, %5
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.Curve, ptr %14, i64 0, i32 9
  br label %20

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct.Lattice, ptr %18, i64 0, i32 23
  br label %20

20:                                               ; preds = %16, %12, %8
  %21 = phi ptr [ %11, %8 ], [ %15, %12 ], [ %19, %16 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %20, %3, %5
  %24 = phi ptr [ null, %3 ], [ null, %5 ], [ %22, %20 ]
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 115
  %26 = load i16, ptr %25, align 2, !tbaa !119
  %27 = sext i16 %26 to i32
  %28 = add nsw i32 %27, -1
  %29 = getelementptr inbounds %struct.Key, ptr %24, i64 0, i32 10
  %30 = load i16, ptr %29, align 2, !tbaa !96
  %31 = sext i16 %30 to i32
  %32 = icmp slt i32 %1, 0
  %33 = select i1 %32, i32 %28, i32 %1
  %34 = icmp slt i32 %2, 0
  %35 = icmp sgt i32 %31, %2
  %36 = add nsw i32 %31, -1
  %37 = select i1 %35, i32 %2, i32 %36
  %38 = select i1 %34, i32 0, i32 %37
  %39 = icmp slt i32 %33, 0
  %40 = icmp slt i32 %33, %31
  %41 = select i1 %40, i32 %33, i32 %36
  %42 = select i1 %39, i32 0, i32 %41
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %122, label %44

44:                                               ; preds = %23
  %45 = icmp slt i32 %38, %42
  %46 = getelementptr inbounds %struct.Key, ptr %24, i64 0, i32 6, i32 1
  %47 = getelementptr inbounds %struct.Key, ptr %24, i64 0, i32 6
  %48 = select i1 %45, ptr %46, ptr %47
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %98, label %51

51:                                               ; preds = %44
  %52 = select i1 %45, i32 %36, i32 0
  %53 = trunc i32 %38 to i16
  %54 = select i1 %45, i32 -1, i32 1
  br label %55

55:                                               ; preds = %51, %92
  %56 = phi ptr [ %49, %51 ], [ %96, %92 ]
  %57 = phi i8 [ 0, %51 ], [ %62, %92 ]
  %58 = phi i32 [ %52, %51 ], [ %95, %92 ]
  %59 = icmp eq i32 %58, %42
  %60 = icmp eq i32 %58, %38
  %61 = select i1 %60, i8 0, i8 %57
  %62 = select i1 %59, i8 1, i8 %61
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.KeyBlock, ptr %56, i64 0, i32 1
  %66 = select i1 %45, ptr %65, ptr %56
  %67 = load ptr, ptr %66, align 8, !tbaa !42
  tail call void @BLI_listbase_swaplinks(ptr noundef nonnull %47, ptr noundef nonnull %56, ptr noundef %67) #11
  %68 = getelementptr inbounds %struct.KeyBlock, ptr %56, i64 0, i32 2
  %69 = load float, ptr %68, align 8, !tbaa !64
  %70 = getelementptr inbounds %struct.KeyBlock, ptr %67, i64 0, i32 2
  %71 = load float, ptr %70, align 8, !tbaa !64
  store float %71, ptr %68, align 8, !tbaa !64
  store float %69, ptr %70, align 8, !tbaa !64
  br label %72

72:                                               ; preds = %64, %55
  %73 = phi ptr [ %67, %64 ], [ %56, %55 ]
  %74 = getelementptr inbounds %struct.KeyBlock, ptr %73, i64 0, i32 6
  %75 = load i16, ptr %74, align 4, !tbaa !74
  %76 = sext i16 %75 to i32
  %77 = icmp eq i32 %42, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = icmp sle i32 %42, %76
  %80 = icmp sgt i32 %38, %76
  %81 = or i1 %79, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = add i16 %75, 1
  br label %90

84:                                               ; preds = %78
  %85 = icmp sge i32 %42, %76
  %86 = icmp slt i32 %38, %76
  %87 = or i1 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = add i16 %75, -1
  br label %90

90:                                               ; preds = %72, %82, %88
  %91 = phi i16 [ %89, %88 ], [ %83, %82 ], [ %53, %72 ]
  store i16 %91, ptr %74, align 4, !tbaa !74
  br label %92

92:                                               ; preds = %90, %84
  %93 = getelementptr inbounds %struct.KeyBlock, ptr %73, i64 0, i32 1
  %94 = select i1 %45, ptr %93, ptr %73
  %95 = add nsw i32 %58, %54
  %96 = load ptr, ptr %94, align 8, !tbaa !42
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %55, !llvm.loop !182

98:                                               ; preds = %92, %44
  %99 = icmp eq i32 %42, %28
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = trunc i32 %38 to i16
  %102 = add i16 %101, 1
  br label %117

103:                                              ; preds = %98
  %104 = icmp sge i32 %42, %27
  %105 = icmp slt i32 %38, %27
  %106 = and i1 %105, %104
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i16, ptr %25, align 2, !tbaa !119
  %109 = add i16 %108, 1
  br label %117

110:                                              ; preds = %103
  %111 = icmp sle i32 %28, %42
  %112 = icmp sgt i32 %28, %38
  %113 = or i1 %112, %111
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load i16, ptr %25, align 2, !tbaa !119
  %116 = add i16 %115, -1
  br label %117

117:                                              ; preds = %100, %114, %107
  %118 = phi i16 [ %109, %107 ], [ %116, %114 ], [ %102, %100 ]
  store i16 %118, ptr %25, align 2, !tbaa !119
  br label %119

119:                                              ; preds = %117, %110
  %120 = load ptr, ptr %47, align 8, !tbaa !68
  %121 = getelementptr inbounds %struct.Key, ptr %24, i64 0, i32 2
  store ptr %120, ptr %121, align 8, !tbaa !58
  br label %122

122:                                              ; preds = %23, %119
  %123 = phi i8 [ 1, %119 ], [ 0, %23 ]
  ret i8 %123
}

declare void @BLI_listbase_swaplinks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @setkeys(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  %6 = load ptr, ptr %1, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !183
  %9 = getelementptr inbounds %struct.KeyBlock, ptr %8, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 2
  %12 = load float, ptr %11, align 8, !tbaa !64
  %13 = fcmp ogt float %12, %0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = fcmp olt float %10, %0
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %4, %14, %16
  %18 = phi float [ %10, %16 ], [ %0, %14 ], [ %12, %4 ]
  %19 = getelementptr inbounds ptr, ptr %2, i64 3
  store ptr %6, ptr %19, align 8, !tbaa !42
  %20 = getelementptr inbounds ptr, ptr %2, i64 2
  store ptr %6, ptr %20, align 8, !tbaa !42
  %21 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %6, ptr %21, align 8, !tbaa !42
  store ptr %6, ptr %2, align 8, !tbaa !42
  %22 = getelementptr inbounds float, ptr %3, i64 3
  store float %12, ptr %22, align 4, !tbaa !69
  %23 = getelementptr inbounds float, ptr %3, i64 2
  store float %12, ptr %23, align 4, !tbaa !69
  %24 = getelementptr inbounds float, ptr %3, i64 1
  store float %12, ptr %24, align 4, !tbaa !69
  store float %12, ptr %3, align 4, !tbaa !69
  %25 = load ptr, ptr %6, align 8, !tbaa !63
  %26 = icmp eq ptr %25, null
  br i1 %26, label %159, label %27

27:                                               ; preds = %17
  store ptr %25, ptr %20, align 8, !tbaa !42
  %28 = getelementptr inbounds %struct.KeyBlock, ptr %25, i64 0, i32 2
  %29 = load float, ptr %28, align 8, !tbaa !64
  store float %29, ptr %23, align 4, !tbaa !69
  %30 = load ptr, ptr %25, align 8, !tbaa !63
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr %25, ptr %30
  store ptr %32, ptr %19, align 8
  %33 = getelementptr inbounds %struct.KeyBlock, ptr %32, i64 0, i32 2
  %34 = load float, ptr %33, align 8, !tbaa !64
  store float %34, ptr %22, align 4, !tbaa !69
  %35 = load float, ptr %23, align 4, !tbaa !69
  %36 = fadd float %10, 0x4000CCCCC0000000
  %37 = fcmp olt float %36, 0.000000e+00
  br label %38

38:                                               ; preds = %48, %27
  %39 = phi float [ %35, %27 ], [ %53, %48 ]
  %40 = phi ptr [ %32, %27 ], [ %49, %48 ]
  %41 = fcmp olt float %39, %18
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !63
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load float, ptr %22, align 4, !tbaa !69
  %47 = fcmp oeq float %39, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %42, %45
  %49 = phi ptr [ %40, %45 ], [ %43, %42 ]
  %50 = load float, ptr %24, align 4, !tbaa !69
  store float %50, ptr %3, align 4, !tbaa !69
  %51 = load ptr, ptr %21, align 8, !tbaa !42
  store ptr %51, ptr %2, align 8, !tbaa !42
  store float %39, ptr %24, align 4, !tbaa !69
  %52 = load ptr, ptr %20, align 8, !tbaa !42
  store ptr %52, ptr %21, align 8, !tbaa !42
  %53 = load float, ptr %22, align 4, !tbaa !69
  store float %53, ptr %23, align 4, !tbaa !69
  %54 = load ptr, ptr %19, align 8, !tbaa !42
  store ptr %54, ptr %20, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct.KeyBlock, ptr %49, i64 0, i32 2
  %56 = load float, ptr %55, align 8, !tbaa !64
  %57 = fadd float %56, 0.000000e+00
  store float %57, ptr %22, align 4, !tbaa !69
  store ptr %49, ptr %19, align 8, !tbaa !42
  br i1 %37, label %58, label %38, !llvm.loop !184

58:                                               ; preds = %48, %45, %38
  %59 = load ptr, ptr %21, align 8, !tbaa !42
  %60 = getelementptr inbounds %struct.KeyBlock, ptr %59, i64 0, i32 4
  %61 = load i16, ptr %60, align 8, !tbaa !142
  %62 = icmp eq i16 %61, 2
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %20, align 8, !tbaa !42
  %65 = getelementptr inbounds %struct.KeyBlock, ptr %64, i64 0, i32 4
  %66 = load i16, ptr %65, align 8, !tbaa !142
  %67 = icmp eq i16 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %63, %68
  %70 = phi i1 [ false, %68 ], [ true, %63 ]
  br i1 %70, label %71, label %78

71:                                               ; preds = %69
  %72 = load float, ptr %24, align 4, !tbaa !69
  %73 = fcmp ugt float %18, %72
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store float %72, ptr %23, align 4, !tbaa !69
  store ptr %59, ptr %20, align 8, !tbaa !42
  br label %159

75:                                               ; preds = %71
  %76 = load float, ptr %23, align 4, !tbaa !69
  %77 = fcmp ult float %18, %76
  br i1 %77, label %83, label %159

78:                                               ; preds = %69
  %79 = load float, ptr %23, align 4, !tbaa !69
  %80 = fcmp ogt float %18, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load ptr, ptr %20, align 8, !tbaa !42
  store ptr %82, ptr %19, align 8, !tbaa !42
  store float %79, ptr %22, align 4, !tbaa !69
  br label %83

83:                                               ; preds = %75, %81, %78
  %84 = phi float [ %18, %75 ], [ %79, %81 ], [ %18, %78 ]
  %85 = load float, ptr %23, align 4, !tbaa !69
  %86 = load float, ptr %24, align 4, !tbaa !69
  %87 = fsub float %85, %86
  %88 = fcmp oeq float %87, 0.000000e+00
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br i1 %70, label %159, label %93

90:                                               ; preds = %83
  %91 = fsub float %84, %86
  %92 = fdiv float %91, %87
  br label %93

93:                                               ; preds = %89, %90
  %94 = phi float [ %87, %89 ], [ %92, %90 ]
  %95 = sext i16 %61 to i32
  tail call void @key_curve_position_weights(float noundef %94, ptr noundef nonnull %3, i32 noundef %95)
  %96 = load ptr, ptr %21, align 8, !tbaa !42
  %97 = getelementptr inbounds %struct.KeyBlock, ptr %96, i64 0, i32 4
  %98 = load i16, ptr %97, align 8, !tbaa !142
  %99 = load ptr, ptr %20, align 8, !tbaa !42
  %100 = getelementptr inbounds %struct.KeyBlock, ptr %99, i64 0, i32 4
  %101 = load i16, ptr %100, align 8, !tbaa !142
  %102 = icmp eq i16 %98, %101
  br i1 %102, label %159, label %103

103:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  switch i16 %101, label %158 [
    i16 0, label %104
    i16 1, label %108
    i16 2, label %124
    i16 3, label %140
  ]

104:                                              ; preds = %103
  store float 0.000000e+00, ptr %5, align 16, !tbaa !69
  %105 = fsub float 1.000000e+00, %94
  %106 = getelementptr inbounds float, ptr %5, i64 1
  store float %105, ptr %106, align 4, !tbaa !69
  %107 = getelementptr inbounds float, ptr %5, i64 2
  store float %94, ptr %107, align 8, !tbaa !69
  br label %155

108:                                              ; preds = %103
  %109 = fmul float %94, %94
  %110 = fmul float %94, %109
  %111 = fmul float %109, 0x3FF6B851E0000000
  %112 = tail call float @llvm.fmuladd.f32(float %110, float 0xBFE6B851E0000000, float %111)
  %113 = tail call float @llvm.fmuladd.f32(float %94, float 0xBFE6B851E0000000, float %112)
  store float %113, ptr %5, align 16, !tbaa !69
  %114 = fmul float %109, 0xC00251EB80000000
  %115 = tail call float @llvm.fmuladd.f32(float %110, float 0x3FF4A3D700000000, float %114)
  %116 = fadd float %115, 1.000000e+00
  %117 = getelementptr inbounds float, ptr %5, i64 1
  store float %116, ptr %117, align 4, !tbaa !69
  %118 = fmul float %109, 0x3FF947AE20000000
  %119 = tail call float @llvm.fmuladd.f32(float %110, float 0xBFF4A3D700000000, float %118)
  %120 = tail call float @llvm.fmuladd.f32(float %94, float 0x3FE6B851E0000000, float %119)
  %121 = getelementptr inbounds float, ptr %5, i64 2
  store float %120, ptr %121, align 8, !tbaa !69
  %122 = fmul float %109, 0xBFE6B851E0000000
  %123 = tail call float @llvm.fmuladd.f32(float %110, float 0x3FE6B851E0000000, float %122)
  br label %155

124:                                              ; preds = %103
  %125 = fmul float %94, %94
  %126 = fmul float %94, %125
  %127 = fmul float %125, 5.000000e-01
  %128 = tail call float @llvm.fmuladd.f32(float %126, float 0xBFC5555540000000, float %127)
  %129 = tail call float @llvm.fmuladd.f32(float %94, float -5.000000e-01, float %128)
  %130 = fadd float %129, 0x3FC5555540000000
  store float %130, ptr %5, align 16, !tbaa !69
  %131 = fneg float %125
  %132 = tail call float @llvm.fmuladd.f32(float %126, float 5.000000e-01, float %131)
  %133 = fadd float %132, 0x3FE5555560000000
  %134 = getelementptr inbounds float, ptr %5, i64 1
  store float %133, ptr %134, align 4, !tbaa !69
  %135 = tail call float @llvm.fmuladd.f32(float %126, float -5.000000e-01, float %127)
  %136 = tail call float @llvm.fmuladd.f32(float %94, float 5.000000e-01, float %135)
  %137 = fadd float %136, 0x3FC5555540000000
  %138 = getelementptr inbounds float, ptr %5, i64 2
  store float %137, ptr %138, align 8, !tbaa !69
  %139 = fmul float %126, 0x3FC5555540000000
  br label %155

140:                                              ; preds = %103
  %141 = fmul float %94, %94
  %142 = fmul float %94, %141
  %143 = tail call float @llvm.fmuladd.f32(float %142, float -5.000000e-01, float %141)
  %144 = tail call float @llvm.fmuladd.f32(float %94, float -5.000000e-01, float %143)
  store float %144, ptr %5, align 16, !tbaa !69
  %145 = fmul float %141, -2.500000e+00
  %146 = tail call float @llvm.fmuladd.f32(float %142, float 1.500000e+00, float %145)
  %147 = fadd float %146, 1.000000e+00
  %148 = getelementptr inbounds float, ptr %5, i64 1
  store float %147, ptr %148, align 4, !tbaa !69
  %149 = fmul float %141, 2.000000e+00
  %150 = tail call float @llvm.fmuladd.f32(float %142, float -1.500000e+00, float %149)
  %151 = tail call float @llvm.fmuladd.f32(float %94, float 5.000000e-01, float %150)
  %152 = getelementptr inbounds float, ptr %5, i64 2
  store float %151, ptr %152, align 8, !tbaa !69
  %153 = fmul float %141, -5.000000e-01
  %154 = tail call float @llvm.fmuladd.f32(float %142, float 5.000000e-01, float %153)
  br label %155

155:                                              ; preds = %140, %124, %108, %104
  %156 = phi float [ 0.000000e+00, %104 ], [ %123, %108 ], [ %139, %124 ], [ %154, %140 ]
  %157 = getelementptr inbounds float, ptr %5, i64 3
  store float %156, ptr %157, align 4, !tbaa !69
  br label %158

158:                                              ; preds = %155, %103
  call void @interp_v4_v4v4(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %5, float noundef %94) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %159

159:                                              ; preds = %93, %158, %89, %75, %17, %74
  %160 = phi i32 [ 1, %74 ], [ 1, %17 ], [ 1, %75 ], [ 1, %89 ], [ 0, %158 ], [ 0, %93 ]
  ret i32 %160
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_key(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, ptr noundef readnone %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca [32 x i32], align 16
  %15 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #11
  %16 = getelementptr inbounds [32 x i32], ptr %14, i64 0, i64 1
  store i32 0, ptr %16, align 4, !tbaa !70
  %17 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !55
  switch i16 %22, label %29 [
    i16 17741, label %23
    i16 21580, label %24
    i16 21827, label %25
  ]

23:                                               ; preds = %20
  store i32 12, ptr %14, align 16, !tbaa !70
  br label %29

24:                                               ; preds = %20
  store i32 12, ptr %14, align 16, !tbaa !70
  br label %29

25:                                               ; preds = %20
  %26 = icmp eq i32 %8, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store i32 16, ptr %14, align 16, !tbaa !70
  br label %29

28:                                               ; preds = %25
  store i32 48, ptr %14, align 16, !tbaa !70
  br label %29

29:                                               ; preds = %9, %20, %23, %24, %27, %28
  %30 = phi i32 [ 0, %9 ], [ 0, %20 ], [ 16, %27 ], [ 16, %28 ], [ 12, %24 ], [ 12, %23 ]
  %31 = phi i1 [ true, %9 ], [ true, %20 ], [ false, %27 ], [ false, %28 ], [ false, %24 ], [ false, %23 ]
  br i1 %31, label %671, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %34 = load ptr, ptr %6, align 8, !tbaa !42
  %35 = icmp eq ptr %34, %5
  br i1 %35, label %36, label %84

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4
  %38 = load i16, ptr %37, align 8, !tbaa !55
  %39 = icmp eq i16 %38, 17741
  br i1 %39, label %40, label %84

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #11
  %41 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 20
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = icmp eq ptr %42, null
  br i1 %43, label %81, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %42, align 8, !tbaa !78
  %46 = load i32, ptr %45, align 8, !tbaa !81
  %47 = getelementptr inbounds %struct.KeyBlock, ptr %34, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !73
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %44
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %52 = sext i32 %46 to i64
  %53 = mul nsw i64 %52, 12
  %54 = tail call ptr %51(i64 noundef %53, ptr noundef nonnull @.str.9) #11
  %55 = load ptr, ptr %41, align 8, !tbaa !75
  %56 = load ptr, ptr %55, align 8, !tbaa !78
  %57 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  store i8 1, ptr %57, align 4, !tbaa !83
  %58 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %58, align 8, !tbaa !85
  %59 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %59, align 8, !tbaa !86
  %60 = getelementptr inbounds %struct.BMesh, ptr %56, i64 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !87
  store ptr %61, ptr %13, align 8, !tbaa !56
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %13) #11
  %62 = load ptr, ptr %59, align 8, !tbaa !86
  %63 = call ptr %62(ptr noundef nonnull %13) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %81, label %65

65:                                               ; preds = %50, %65
  %66 = phi i64 [ %77, %65 ], [ 0, %50 ]
  %67 = phi ptr [ %79, %65 ], [ %63, %50 ]
  %68 = getelementptr inbounds [3 x float], ptr %54, i64 %66
  %69 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2
  %70 = load float, ptr %69, align 4, !tbaa !69
  store float %70, ptr %68, align 4, !tbaa !69
  %71 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !69
  %73 = getelementptr inbounds float, ptr %68, i64 1
  store float %72, ptr %73, align 4, !tbaa !69
  %74 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !69
  %76 = getelementptr inbounds float, ptr %68, i64 2
  store float %75, ptr %76, align 4, !tbaa !69
  %77 = add nuw i64 %66, 1
  %78 = load ptr, ptr %59, align 8, !tbaa !86
  %79 = call ptr %78(ptr noundef nonnull %13) #11
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %65, !llvm.loop !88

81:                                               ; preds = %65, %50, %44, %40
  %82 = phi ptr [ undef, %40 ], [ undef, %44 ], [ %54, %50 ], [ %54, %65 ]
  %83 = phi i1 [ true, %40 ], [ true, %44 ], [ false, %50 ], [ false, %65 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #11
  br i1 %83, label %84, label %87

84:                                               ; preds = %81, %36, %32
  %85 = getelementptr inbounds %struct.KeyBlock, ptr %34, i64 0, i32 10
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  br label %87

87:                                               ; preds = %81, %84
  %88 = phi ptr [ null, %84 ], [ %82, %81 ]
  %89 = phi ptr [ %86, %84 ], [ %82, %81 ]
  %90 = getelementptr inbounds ptr, ptr %6, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !42
  %92 = icmp eq ptr %91, %5
  br i1 %92, label %93, label %142

93:                                               ; preds = %87
  %94 = load ptr, ptr %17, align 8, !tbaa !53
  %95 = getelementptr inbounds %struct.ID, ptr %94, i64 0, i32 4
  %96 = load i16, ptr %95, align 8, !tbaa !55
  %97 = icmp eq i16 %96, 17741
  br i1 %97, label %98, label %142

98:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #11
  %99 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 20
  %100 = load ptr, ptr %99, align 8, !tbaa !75
  %101 = icmp eq ptr %100, null
  br i1 %101, label %139, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %100, align 8, !tbaa !78
  %104 = load i32, ptr %103, align 8, !tbaa !81
  %105 = getelementptr inbounds %struct.KeyBlock, ptr %91, i64 0, i32 8
  %106 = load i32, ptr %105, align 8, !tbaa !73
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %102
  %109 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %110 = sext i32 %104 to i64
  %111 = mul nsw i64 %110, 12
  %112 = call ptr %109(i64 noundef %111, ptr noundef nonnull @.str.9) #11
  %113 = load ptr, ptr %99, align 8, !tbaa !75
  %114 = load ptr, ptr %113, align 8, !tbaa !78
  %115 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  store i8 1, ptr %115, align 4, !tbaa !83
  %116 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %116, align 8, !tbaa !85
  %117 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %117, align 8, !tbaa !86
  %118 = getelementptr inbounds %struct.BMesh, ptr %114, i64 0, i32 9
  %119 = load ptr, ptr %118, align 8, !tbaa !87
  store ptr %119, ptr %12, align 8, !tbaa !56
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %12) #11
  %120 = load ptr, ptr %117, align 8, !tbaa !86
  %121 = call ptr %120(ptr noundef nonnull %12) #11
  %122 = icmp eq ptr %121, null
  br i1 %122, label %139, label %123

123:                                              ; preds = %108, %123
  %124 = phi i64 [ %135, %123 ], [ 0, %108 ]
  %125 = phi ptr [ %137, %123 ], [ %121, %108 ]
  %126 = getelementptr inbounds [3 x float], ptr %112, i64 %124
  %127 = getelementptr inbounds %struct.BMVert, ptr %125, i64 0, i32 2
  %128 = load float, ptr %127, align 4, !tbaa !69
  store float %128, ptr %126, align 4, !tbaa !69
  %129 = getelementptr inbounds %struct.BMVert, ptr %125, i64 0, i32 2, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !69
  %131 = getelementptr inbounds float, ptr %126, i64 1
  store float %130, ptr %131, align 4, !tbaa !69
  %132 = getelementptr inbounds %struct.BMVert, ptr %125, i64 0, i32 2, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !69
  %134 = getelementptr inbounds float, ptr %126, i64 2
  store float %133, ptr %134, align 4, !tbaa !69
  %135 = add nuw i64 %124, 1
  %136 = load ptr, ptr %117, align 8, !tbaa !86
  %137 = call ptr %136(ptr noundef nonnull %12) #11
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %123, !llvm.loop !88

139:                                              ; preds = %123, %108, %102, %98
  %140 = phi ptr [ undef, %98 ], [ undef, %102 ], [ %112, %108 ], [ %112, %123 ]
  %141 = phi i1 [ true, %98 ], [ true, %102 ], [ false, %108 ], [ false, %123 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  br i1 %141, label %142, label %145

142:                                              ; preds = %139, %93, %87
  %143 = getelementptr inbounds %struct.KeyBlock, ptr %91, i64 0, i32 10
  %144 = load ptr, ptr %143, align 8, !tbaa !34
  br label %145

145:                                              ; preds = %139, %142
  %146 = phi ptr [ null, %142 ], [ %140, %139 ]
  %147 = phi ptr [ %144, %142 ], [ %140, %139 ]
  %148 = getelementptr inbounds ptr, ptr %6, i64 2
  %149 = load ptr, ptr %148, align 8, !tbaa !42
  %150 = icmp eq ptr %149, %5
  br i1 %150, label %151, label %200

151:                                              ; preds = %145
  %152 = load ptr, ptr %17, align 8, !tbaa !53
  %153 = getelementptr inbounds %struct.ID, ptr %152, i64 0, i32 4
  %154 = load i16, ptr %153, align 8, !tbaa !55
  %155 = icmp eq i16 %154, 17741
  br i1 %155, label %156, label %200

156:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #11
  %157 = getelementptr inbounds %struct.Mesh, ptr %152, i64 0, i32 20
  %158 = load ptr, ptr %157, align 8, !tbaa !75
  %159 = icmp eq ptr %158, null
  br i1 %159, label %197, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %158, align 8, !tbaa !78
  %162 = load i32, ptr %161, align 8, !tbaa !81
  %163 = getelementptr inbounds %struct.KeyBlock, ptr %149, i64 0, i32 8
  %164 = load i32, ptr %163, align 8, !tbaa !73
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %197

166:                                              ; preds = %160
  %167 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %168 = sext i32 %162 to i64
  %169 = mul nsw i64 %168, 12
  %170 = call ptr %167(i64 noundef %169, ptr noundef nonnull @.str.9) #11
  %171 = load ptr, ptr %157, align 8, !tbaa !75
  %172 = load ptr, ptr %171, align 8, !tbaa !78
  %173 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 1, ptr %173, align 4, !tbaa !83
  %174 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %174, align 8, !tbaa !85
  %175 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %175, align 8, !tbaa !86
  %176 = getelementptr inbounds %struct.BMesh, ptr %172, i64 0, i32 9
  %177 = load ptr, ptr %176, align 8, !tbaa !87
  store ptr %177, ptr %11, align 8, !tbaa !56
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %11) #11
  %178 = load ptr, ptr %175, align 8, !tbaa !86
  %179 = call ptr %178(ptr noundef nonnull %11) #11
  %180 = icmp eq ptr %179, null
  br i1 %180, label %197, label %181

181:                                              ; preds = %166, %181
  %182 = phi i64 [ %193, %181 ], [ 0, %166 ]
  %183 = phi ptr [ %195, %181 ], [ %179, %166 ]
  %184 = getelementptr inbounds [3 x float], ptr %170, i64 %182
  %185 = getelementptr inbounds %struct.BMVert, ptr %183, i64 0, i32 2
  %186 = load float, ptr %185, align 4, !tbaa !69
  store float %186, ptr %184, align 4, !tbaa !69
  %187 = getelementptr inbounds %struct.BMVert, ptr %183, i64 0, i32 2, i64 1
  %188 = load float, ptr %187, align 4, !tbaa !69
  %189 = getelementptr inbounds float, ptr %184, i64 1
  store float %188, ptr %189, align 4, !tbaa !69
  %190 = getelementptr inbounds %struct.BMVert, ptr %183, i64 0, i32 2, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !69
  %192 = getelementptr inbounds float, ptr %184, i64 2
  store float %191, ptr %192, align 4, !tbaa !69
  %193 = add nuw i64 %182, 1
  %194 = load ptr, ptr %175, align 8, !tbaa !86
  %195 = call ptr %194(ptr noundef nonnull %11) #11
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %181, !llvm.loop !88

197:                                              ; preds = %181, %166, %160, %156
  %198 = phi ptr [ undef, %156 ], [ undef, %160 ], [ %170, %166 ], [ %170, %181 ]
  %199 = phi i1 [ true, %156 ], [ true, %160 ], [ false, %166 ], [ false, %181 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #11
  br i1 %199, label %200, label %203

200:                                              ; preds = %197, %151, %145
  %201 = getelementptr inbounds %struct.KeyBlock, ptr %149, i64 0, i32 10
  %202 = load ptr, ptr %201, align 8, !tbaa !34
  br label %203

203:                                              ; preds = %197, %200
  %204 = phi ptr [ null, %200 ], [ %198, %197 ]
  %205 = phi ptr [ %202, %200 ], [ %198, %197 ]
  %206 = getelementptr inbounds ptr, ptr %6, i64 3
  %207 = load ptr, ptr %206, align 8, !tbaa !42
  %208 = icmp eq ptr %207, %5
  br i1 %208, label %209, label %258

209:                                              ; preds = %203
  %210 = load ptr, ptr %17, align 8, !tbaa !53
  %211 = getelementptr inbounds %struct.ID, ptr %210, i64 0, i32 4
  %212 = load i16, ptr %211, align 8, !tbaa !55
  %213 = icmp eq i16 %212, 17741
  br i1 %213, label %214, label %258

214:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  %215 = getelementptr inbounds %struct.Mesh, ptr %210, i64 0, i32 20
  %216 = load ptr, ptr %215, align 8, !tbaa !75
  %217 = icmp eq ptr %216, null
  br i1 %217, label %255, label %218

218:                                              ; preds = %214
  %219 = load ptr, ptr %216, align 8, !tbaa !78
  %220 = load i32, ptr %219, align 8, !tbaa !81
  %221 = getelementptr inbounds %struct.KeyBlock, ptr %207, i64 0, i32 8
  %222 = load i32, ptr %221, align 8, !tbaa !73
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %255

224:                                              ; preds = %218
  %225 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %226 = sext i32 %220 to i64
  %227 = mul nsw i64 %226, 12
  %228 = call ptr %225(i64 noundef %227, ptr noundef nonnull @.str.9) #11
  %229 = load ptr, ptr %215, align 8, !tbaa !75
  %230 = load ptr, ptr %229, align 8, !tbaa !78
  %231 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 1, ptr %231, align 4, !tbaa !83
  %232 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %232, align 8, !tbaa !85
  %233 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %233, align 8, !tbaa !86
  %234 = getelementptr inbounds %struct.BMesh, ptr %230, i64 0, i32 9
  %235 = load ptr, ptr %234, align 8, !tbaa !87
  store ptr %235, ptr %10, align 8, !tbaa !56
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #11
  %236 = load ptr, ptr %233, align 8, !tbaa !86
  %237 = call ptr %236(ptr noundef nonnull %10) #11
  %238 = icmp eq ptr %237, null
  br i1 %238, label %255, label %239

239:                                              ; preds = %224, %239
  %240 = phi i64 [ %251, %239 ], [ 0, %224 ]
  %241 = phi ptr [ %253, %239 ], [ %237, %224 ]
  %242 = getelementptr inbounds [3 x float], ptr %228, i64 %240
  %243 = getelementptr inbounds %struct.BMVert, ptr %241, i64 0, i32 2
  %244 = load float, ptr %243, align 4, !tbaa !69
  store float %244, ptr %242, align 4, !tbaa !69
  %245 = getelementptr inbounds %struct.BMVert, ptr %241, i64 0, i32 2, i64 1
  %246 = load float, ptr %245, align 4, !tbaa !69
  %247 = getelementptr inbounds float, ptr %242, i64 1
  store float %246, ptr %247, align 4, !tbaa !69
  %248 = getelementptr inbounds %struct.BMVert, ptr %241, i64 0, i32 2, i64 2
  %249 = load float, ptr %248, align 4, !tbaa !69
  %250 = getelementptr inbounds float, ptr %242, i64 2
  store float %249, ptr %250, align 4, !tbaa !69
  %251 = add nuw i64 %240, 1
  %252 = load ptr, ptr %233, align 8, !tbaa !86
  %253 = call ptr %252(ptr noundef nonnull %10) #11
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %239, !llvm.loop !88

255:                                              ; preds = %239, %224, %218, %214
  %256 = phi ptr [ undef, %214 ], [ undef, %218 ], [ %228, %224 ], [ %228, %239 ]
  %257 = phi i1 [ true, %214 ], [ true, %218 ], [ false, %224 ], [ false, %239 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  br i1 %257, label %258, label %261

258:                                              ; preds = %255, %209, %203
  %259 = getelementptr inbounds %struct.KeyBlock, ptr %207, i64 0, i32 10
  %260 = load ptr, ptr %259, align 8, !tbaa !34
  br label %261

261:                                              ; preds = %255, %258
  %262 = phi ptr [ null, %258 ], [ %256, %255 ]
  %263 = phi ptr [ %260, %258 ], [ %256, %255 ]
  %264 = load ptr, ptr %6, align 8, !tbaa !42
  %265 = getelementptr inbounds %struct.KeyBlock, ptr %264, i64 0, i32 8
  %266 = load i32, ptr %265, align 8, !tbaa !73
  %267 = icmp eq i32 %266, %2
  br i1 %267, label %274, label %268

268:                                              ; preds = %261
  %269 = icmp eq i32 %266, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %268
  %271 = sitofp i32 %266 to float
  %272 = sitofp i32 %2 to float
  %273 = fdiv float %271, %272
  br label %274

274:                                              ; preds = %268, %270, %261
  %275 = phi float [ %273, %270 ], [ 0.000000e+00, %261 ], [ 0.000000e+00, %268 ]
  %276 = phi i32 [ 15, %270 ], [ 15, %261 ], [ 14, %268 ]
  %277 = phi i32 [ 1, %270 ], [ 0, %261 ], [ 1, %268 ]
  %278 = load ptr, ptr %90, align 8, !tbaa !42
  %279 = getelementptr inbounds %struct.KeyBlock, ptr %278, i64 0, i32 8
  %280 = load i32, ptr %279, align 8, !tbaa !73
  %281 = icmp eq i32 %280, %2
  br i1 %281, label %291, label %282

282:                                              ; preds = %274
  %283 = or disjoint i32 %277, 2
  %284 = icmp eq i32 %266, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %282
  %286 = sitofp i32 %280 to float
  %287 = sitofp i32 %2 to float
  %288 = fdiv float %286, %287
  br label %291

289:                                              ; preds = %282
  %290 = add nsw i32 %276, -2
  br label %291

291:                                              ; preds = %285, %289, %274
  %292 = phi float [ %288, %285 ], [ 0.000000e+00, %289 ], [ 0.000000e+00, %274 ]
  %293 = phi i32 [ %276, %285 ], [ %290, %289 ], [ %276, %274 ]
  %294 = phi i32 [ %283, %285 ], [ %283, %289 ], [ %277, %274 ]
  %295 = load ptr, ptr %148, align 8, !tbaa !42
  %296 = getelementptr inbounds %struct.KeyBlock, ptr %295, i64 0, i32 8
  %297 = load i32, ptr %296, align 8, !tbaa !73
  %298 = icmp eq i32 %297, %2
  br i1 %298, label %308, label %299

299:                                              ; preds = %291
  %300 = or i32 %294, 4
  %301 = icmp eq i32 %266, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %299
  %303 = sitofp i32 %297 to float
  %304 = sitofp i32 %2 to float
  %305 = fdiv float %303, %304
  br label %308

306:                                              ; preds = %299
  %307 = add nsw i32 %293, -4
  br label %308

308:                                              ; preds = %302, %306, %291
  %309 = phi float [ %305, %302 ], [ 0.000000e+00, %306 ], [ 0.000000e+00, %291 ]
  %310 = phi i32 [ %293, %302 ], [ %307, %306 ], [ %293, %291 ]
  %311 = phi i32 [ %300, %302 ], [ %300, %306 ], [ %294, %291 ]
  %312 = load ptr, ptr %206, align 8, !tbaa !42
  %313 = getelementptr inbounds %struct.KeyBlock, ptr %312, i64 0, i32 8
  %314 = load i32, ptr %313, align 8, !tbaa !73
  %315 = icmp eq i32 %314, %2
  br i1 %315, label %325, label %316

316:                                              ; preds = %308
  %317 = or i32 %311, 8
  %318 = icmp eq i32 %266, 0
  br i1 %318, label %323, label %319

319:                                              ; preds = %316
  %320 = sitofp i32 %314 to float
  %321 = sitofp i32 %2 to float
  %322 = fdiv float %320, %321
  br label %325

323:                                              ; preds = %316
  %324 = add nsw i32 %310, -8
  br label %325

325:                                              ; preds = %319, %323, %308
  %326 = phi float [ %322, %319 ], [ 0.000000e+00, %323 ], [ 0.000000e+00, %308 ]
  %327 = phi i32 [ %310, %319 ], [ %324, %323 ], [ %310, %308 ]
  %328 = phi i32 [ %317, %319 ], [ %317, %323 ], [ %311, %308 ]
  %329 = icmp eq i32 %0, 0
  br i1 %329, label %431, label %330

330:                                              ; preds = %325
  %331 = mul nsw i32 %30, %0
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, ptr %3, i64 %332
  %334 = and i32 %327, 1
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %356, label %336

336:                                              ; preds = %330
  %337 = and i32 %328, 1
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %348, label %339

339:                                              ; preds = %336
  %340 = sitofp i32 %0 to float
  %341 = call float @llvm.fmuladd.f32(float %340, float %275, float 0.000000e+00)
  %342 = call float @llvm.floor.f32(float %341)
  %343 = fptosi float %342 to i32
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %356, label %345

345:                                              ; preds = %339
  %346 = sitofp i32 %343 to float
  %347 = fsub float %341, %346
  br label %348

348:                                              ; preds = %336, %345
  %349 = phi i32 [ %343, %345 ], [ %0, %336 ]
  %350 = phi float [ %347, %345 ], [ 0.000000e+00, %336 ]
  %351 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %352 = load i32, ptr %351, align 8, !tbaa !57
  %353 = mul nsw i32 %352, %349
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, ptr %89, i64 %354
  br label %356

356:                                              ; preds = %348, %339, %330
  %357 = phi float [ %341, %339 ], [ 0.000000e+00, %330 ], [ %350, %348 ]
  %358 = phi ptr [ %89, %339 ], [ %89, %330 ], [ %355, %348 ]
  %359 = and i32 %327, 2
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %381, label %361

361:                                              ; preds = %356
  %362 = and i32 %328, 2
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %373, label %364

364:                                              ; preds = %361
  %365 = sitofp i32 %0 to float
  %366 = call float @llvm.fmuladd.f32(float %365, float %292, float 0.000000e+00)
  %367 = call float @llvm.floor.f32(float %366)
  %368 = fptosi float %367 to i32
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %381, label %370

370:                                              ; preds = %364
  %371 = sitofp i32 %368 to float
  %372 = fsub float %366, %371
  br label %373

373:                                              ; preds = %361, %370
  %374 = phi i32 [ %368, %370 ], [ %0, %361 ]
  %375 = phi float [ %372, %370 ], [ 0.000000e+00, %361 ]
  %376 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %377 = load i32, ptr %376, align 8, !tbaa !57
  %378 = mul nsw i32 %377, %374
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, ptr %147, i64 %379
  br label %381

381:                                              ; preds = %373, %364, %356
  %382 = phi float [ %366, %364 ], [ 0.000000e+00, %356 ], [ %375, %373 ]
  %383 = phi ptr [ %147, %364 ], [ %147, %356 ], [ %380, %373 ]
  %384 = and i32 %327, 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %406, label %386

386:                                              ; preds = %381
  %387 = and i32 %328, 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %398, label %389

389:                                              ; preds = %386
  %390 = sitofp i32 %0 to float
  %391 = call float @llvm.fmuladd.f32(float %390, float %309, float 0.000000e+00)
  %392 = call float @llvm.floor.f32(float %391)
  %393 = fptosi float %392 to i32
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %406, label %395

395:                                              ; preds = %389
  %396 = sitofp i32 %393 to float
  %397 = fsub float %391, %396
  br label %398

398:                                              ; preds = %386, %395
  %399 = phi i32 [ %393, %395 ], [ %0, %386 ]
  %400 = phi float [ %397, %395 ], [ 0.000000e+00, %386 ]
  %401 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %402 = load i32, ptr %401, align 8, !tbaa !57
  %403 = mul nsw i32 %402, %399
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, ptr %205, i64 %404
  br label %406

406:                                              ; preds = %398, %389, %381
  %407 = phi float [ %391, %389 ], [ 0.000000e+00, %381 ], [ %400, %398 ]
  %408 = phi ptr [ %205, %389 ], [ %205, %381 ], [ %405, %398 ]
  %409 = and i32 %327, 8
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %431, label %411

411:                                              ; preds = %406
  %412 = and i32 %328, 8
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %423, label %414

414:                                              ; preds = %411
  %415 = sitofp i32 %0 to float
  %416 = call float @llvm.fmuladd.f32(float %415, float %326, float 0.000000e+00)
  %417 = call float @llvm.floor.f32(float %416)
  %418 = fptosi float %417 to i32
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %431, label %420

420:                                              ; preds = %414
  %421 = sitofp i32 %418 to float
  %422 = fsub float %416, %421
  br label %423

423:                                              ; preds = %411, %420
  %424 = phi i32 [ %418, %420 ], [ %0, %411 ]
  %425 = phi float [ %422, %420 ], [ 0.000000e+00, %411 ]
  %426 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %427 = load i32, ptr %426, align 8, !tbaa !57
  %428 = mul nsw i32 %427, %424
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8, ptr %263, i64 %429
  br label %431

431:                                              ; preds = %423, %406, %414, %325
  %432 = phi ptr [ %333, %414 ], [ %333, %406 ], [ %3, %325 ], [ %333, %423 ]
  %433 = phi float [ %357, %414 ], [ %357, %406 ], [ 0.000000e+00, %325 ], [ %357, %423 ]
  %434 = phi float [ %382, %414 ], [ %382, %406 ], [ 0.000000e+00, %325 ], [ %382, %423 ]
  %435 = phi float [ %407, %414 ], [ %407, %406 ], [ 0.000000e+00, %325 ], [ %407, %423 ]
  %436 = phi float [ %416, %414 ], [ 0.000000e+00, %406 ], [ 0.000000e+00, %325 ], [ %425, %423 ]
  %437 = phi ptr [ %358, %414 ], [ %358, %406 ], [ %89, %325 ], [ %358, %423 ]
  %438 = phi ptr [ %383, %414 ], [ %383, %406 ], [ %147, %325 ], [ %383, %423 ]
  %439 = phi ptr [ %408, %414 ], [ %408, %406 ], [ %205, %325 ], [ %408, %423 ]
  %440 = phi ptr [ %263, %414 ], [ %263, %406 ], [ %263, %325 ], [ %430, %423 ]
  store i8 1, ptr %15, align 1, !tbaa !56
  %441 = getelementptr inbounds [8 x i8], ptr %15, i64 0, i64 1
  store i8 100, ptr %441, align 1, !tbaa !56
  %442 = getelementptr inbounds [8 x i8], ptr %15, i64 0, i64 2
  store i8 0, ptr %442, align 1, !tbaa !56
  %443 = icmp eq i32 %8, 2
  %444 = icmp sgt i32 %33, %0
  br i1 %444, label %445, label %655

445:                                              ; preds = %431
  %446 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %447 = load i32, ptr %446, align 8, !tbaa !57
  %448 = mul nsw i32 %447, 3
  %449 = select i1 %443, i32 %448, i32 %447
  %450 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 3
  %451 = select i1 %443, ptr %15, ptr %450
  %452 = getelementptr inbounds float, ptr %7, i64 1
  %453 = getelementptr inbounds float, ptr %7, i64 2
  %454 = getelementptr inbounds float, ptr %7, i64 3
  %455 = getelementptr inbounds float, ptr %7, i64 1
  %456 = getelementptr inbounds float, ptr %7, i64 2
  %457 = getelementptr inbounds float, ptr %7, i64 3
  %458 = getelementptr inbounds float, ptr %7, i64 1
  %459 = getelementptr inbounds float, ptr %7, i64 2
  %460 = getelementptr inbounds float, ptr %7, i64 3
  %461 = and i32 %327, 1
  %462 = icmp eq i32 %461, 0
  %463 = and i32 %328, 1
  %464 = icmp eq i32 %463, 0
  %465 = sext i32 %449 to i64
  %466 = sext i32 %449 to i64
  %467 = and i32 %327, 2
  %468 = icmp eq i32 %467, 0
  %469 = and i32 %328, 2
  %470 = icmp eq i32 %469, 0
  %471 = sext i32 %449 to i64
  %472 = sext i32 %449 to i64
  %473 = and i32 %327, 4
  %474 = icmp eq i32 %473, 0
  %475 = and i32 %328, 4
  %476 = icmp eq i32 %475, 0
  %477 = sext i32 %449 to i64
  %478 = sext i32 %449 to i64
  %479 = and i32 %327, 8
  %480 = icmp eq i32 %479, 0
  %481 = and i32 %328, 8
  %482 = icmp eq i32 %481, 0
  %483 = sext i32 %449 to i64
  %484 = sext i32 %449 to i64
  br label %485

485:                                              ; preds = %445, %648
  %486 = phi ptr [ %440, %445 ], [ %650, %648 ]
  %487 = phi ptr [ %439, %445 ], [ %635, %648 ]
  %488 = phi ptr [ %438, %445 ], [ %620, %648 ]
  %489 = phi ptr [ %437, %445 ], [ %605, %648 ]
  %490 = phi i32 [ %0, %445 ], [ %653, %648 ]
  %491 = phi float [ %436, %445 ], [ %649, %648 ]
  %492 = phi float [ %435, %445 ], [ %634, %648 ]
  %493 = phi float [ %434, %445 ], [ %619, %648 ]
  %494 = phi float [ %433, %445 ], [ %604, %648 ]
  %495 = phi ptr [ %432, %445 ], [ %590, %648 ]
  %496 = load i8, ptr %451, align 1, !tbaa !56
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %589, label %498

498:                                              ; preds = %485, %581
  %499 = phi ptr [ %585, %581 ], [ %451, %485 ]
  %500 = phi ptr [ %586, %581 ], [ %14, %485 ]
  %501 = phi ptr [ %584, %581 ], [ %495, %485 ]
  %502 = getelementptr inbounds i8, ptr %499, i64 1
  %503 = load i8, ptr %502, align 1, !tbaa !56
  switch i8 %503, label %567 [
    i8 4, label %504
    i8 101, label %525
    i8 100, label %546
  ]

504:                                              ; preds = %498, %504
  %505 = phi i64 [ %523, %504 ], [ 0, %498 ]
  %506 = load float, ptr %7, align 4, !tbaa !69
  %507 = getelementptr inbounds float, ptr %489, i64 %505
  %508 = load float, ptr %507, align 4, !tbaa !69
  %509 = load float, ptr %458, align 4, !tbaa !69
  %510 = getelementptr inbounds float, ptr %488, i64 %505
  %511 = load float, ptr %510, align 4, !tbaa !69
  %512 = fmul float %509, %511
  %513 = call float @llvm.fmuladd.f32(float %506, float %508, float %512)
  %514 = load float, ptr %459, align 4, !tbaa !69
  %515 = getelementptr inbounds float, ptr %487, i64 %505
  %516 = load float, ptr %515, align 4, !tbaa !69
  %517 = call float @llvm.fmuladd.f32(float %514, float %516, float %513)
  %518 = load float, ptr %460, align 4, !tbaa !69
  %519 = getelementptr inbounds float, ptr %486, i64 %505
  %520 = load float, ptr %519, align 4, !tbaa !69
  %521 = call float @llvm.fmuladd.f32(float %518, float %520, float %517)
  %522 = getelementptr inbounds float, ptr %501, i64 %505
  store float %521, ptr %522, align 4, !tbaa !69
  %523 = add nuw nsw i64 %505, 1
  %524 = icmp eq i64 %523, 3
  br i1 %524, label %581, label %504, !llvm.loop !185

525:                                              ; preds = %498, %525
  %526 = phi i64 [ %544, %525 ], [ 0, %498 ]
  %527 = load float, ptr %7, align 4, !tbaa !69
  %528 = getelementptr inbounds float, ptr %489, i64 %526
  %529 = load float, ptr %528, align 4, !tbaa !69
  %530 = load float, ptr %455, align 4, !tbaa !69
  %531 = getelementptr inbounds float, ptr %488, i64 %526
  %532 = load float, ptr %531, align 4, !tbaa !69
  %533 = fmul float %530, %532
  %534 = call float @llvm.fmuladd.f32(float %527, float %529, float %533)
  %535 = load float, ptr %456, align 4, !tbaa !69
  %536 = getelementptr inbounds float, ptr %487, i64 %526
  %537 = load float, ptr %536, align 4, !tbaa !69
  %538 = call float @llvm.fmuladd.f32(float %535, float %537, float %534)
  %539 = load float, ptr %457, align 4, !tbaa !69
  %540 = getelementptr inbounds float, ptr %486, i64 %526
  %541 = load float, ptr %540, align 4, !tbaa !69
  %542 = call float @llvm.fmuladd.f32(float %539, float %541, float %538)
  %543 = getelementptr inbounds float, ptr %501, i64 %526
  store float %542, ptr %543, align 4, !tbaa !69
  %544 = add nuw nsw i64 %526, 1
  %545 = icmp eq i64 %544, 4
  br i1 %545, label %581, label %525, !llvm.loop !185

546:                                              ; preds = %498, %546
  %547 = phi i64 [ %565, %546 ], [ 0, %498 ]
  %548 = load float, ptr %7, align 4, !tbaa !69
  %549 = getelementptr inbounds float, ptr %489, i64 %547
  %550 = load float, ptr %549, align 4, !tbaa !69
  %551 = load float, ptr %452, align 4, !tbaa !69
  %552 = getelementptr inbounds float, ptr %488, i64 %547
  %553 = load float, ptr %552, align 4, !tbaa !69
  %554 = fmul float %551, %553
  %555 = call float @llvm.fmuladd.f32(float %548, float %550, float %554)
  %556 = load float, ptr %453, align 4, !tbaa !69
  %557 = getelementptr inbounds float, ptr %487, i64 %547
  %558 = load float, ptr %557, align 4, !tbaa !69
  %559 = call float @llvm.fmuladd.f32(float %556, float %558, float %555)
  %560 = load float, ptr %454, align 4, !tbaa !69
  %561 = getelementptr inbounds float, ptr %486, i64 %547
  %562 = load float, ptr %561, align 4, !tbaa !69
  %563 = call float @llvm.fmuladd.f32(float %560, float %562, float %559)
  %564 = getelementptr inbounds float, ptr %501, i64 %547
  store float %563, ptr %564, align 4, !tbaa !69
  %565 = add nuw nsw i64 %547, 1
  %566 = icmp eq i64 %565, 12
  br i1 %566, label %581, label %546, !llvm.loop !185

567:                                              ; preds = %498
  %568 = icmp eq ptr %88, null
  br i1 %568, label %571, label %569

569:                                              ; preds = %567
  %570 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %570(ptr noundef nonnull %88) #11
  br label %571

571:                                              ; preds = %569, %567
  %572 = icmp eq ptr %146, null
  br i1 %572, label %575, label %573

573:                                              ; preds = %571
  %574 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %574(ptr noundef nonnull %146) #11
  br label %575

575:                                              ; preds = %573, %571
  %576 = icmp eq ptr %204, null
  br i1 %576, label %579, label %577

577:                                              ; preds = %575
  %578 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %578(ptr noundef nonnull %204) #11
  br label %579

579:                                              ; preds = %577, %575
  %580 = icmp eq ptr %262, null
  br i1 %580, label %671, label %669

581:                                              ; preds = %546, %525, %504
  %582 = load i32, ptr %500, align 4, !tbaa !70
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i8, ptr %501, i64 %583
  %585 = getelementptr inbounds i8, ptr %499, i64 2
  %586 = getelementptr inbounds i32, ptr %500, i64 1
  %587 = load i8, ptr %585, align 1, !tbaa !56
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %589, label %498, !llvm.loop !186

589:                                              ; preds = %581, %485
  %590 = phi ptr [ %495, %485 ], [ %584, %581 ]
  br i1 %462, label %603, label %591

591:                                              ; preds = %589
  br i1 %464, label %601, label %592

592:                                              ; preds = %591
  %593 = fadd float %275, %494
  %594 = fcmp ult float %593, 1.000000e+00
  br i1 %594, label %603, label %595

595:                                              ; preds = %592, %595
  %596 = phi ptr [ %599, %595 ], [ %489, %592 ]
  %597 = phi float [ %598, %595 ], [ %593, %592 ]
  %598 = fadd float %597, -1.000000e+00
  %599 = getelementptr inbounds i8, ptr %596, i64 %465
  %600 = fcmp ult float %598, 1.000000e+00
  br i1 %600, label %603, label %595, !llvm.loop !187

601:                                              ; preds = %591
  %602 = getelementptr inbounds i8, ptr %489, i64 %466
  br label %603

603:                                              ; preds = %595, %592, %601, %589
  %604 = phi float [ %494, %601 ], [ %494, %589 ], [ %593, %592 ], [ %598, %595 ]
  %605 = phi ptr [ %602, %601 ], [ %489, %589 ], [ %489, %592 ], [ %599, %595 ]
  br i1 %468, label %618, label %606

606:                                              ; preds = %603
  br i1 %470, label %616, label %607

607:                                              ; preds = %606
  %608 = fadd float %292, %493
  %609 = fcmp ult float %608, 1.000000e+00
  br i1 %609, label %618, label %610

610:                                              ; preds = %607, %610
  %611 = phi ptr [ %614, %610 ], [ %488, %607 ]
  %612 = phi float [ %613, %610 ], [ %608, %607 ]
  %613 = fadd float %612, -1.000000e+00
  %614 = getelementptr inbounds i8, ptr %611, i64 %471
  %615 = fcmp ult float %613, 1.000000e+00
  br i1 %615, label %618, label %610, !llvm.loop !188

616:                                              ; preds = %606
  %617 = getelementptr inbounds i8, ptr %488, i64 %472
  br label %618

618:                                              ; preds = %610, %607, %616, %603
  %619 = phi float [ %493, %616 ], [ %493, %603 ], [ %608, %607 ], [ %613, %610 ]
  %620 = phi ptr [ %617, %616 ], [ %488, %603 ], [ %488, %607 ], [ %614, %610 ]
  br i1 %474, label %633, label %621

621:                                              ; preds = %618
  br i1 %476, label %631, label %622

622:                                              ; preds = %621
  %623 = fadd float %309, %492
  %624 = fcmp ult float %623, 1.000000e+00
  br i1 %624, label %633, label %625

625:                                              ; preds = %622, %625
  %626 = phi ptr [ %629, %625 ], [ %487, %622 ]
  %627 = phi float [ %628, %625 ], [ %623, %622 ]
  %628 = fadd float %627, -1.000000e+00
  %629 = getelementptr inbounds i8, ptr %626, i64 %477
  %630 = fcmp ult float %628, 1.000000e+00
  br i1 %630, label %633, label %625, !llvm.loop !189

631:                                              ; preds = %621
  %632 = getelementptr inbounds i8, ptr %487, i64 %478
  br label %633

633:                                              ; preds = %625, %622, %631, %618
  %634 = phi float [ %492, %631 ], [ %492, %618 ], [ %623, %622 ], [ %628, %625 ]
  %635 = phi ptr [ %632, %631 ], [ %487, %618 ], [ %487, %622 ], [ %629, %625 ]
  br i1 %480, label %648, label %636

636:                                              ; preds = %633
  br i1 %482, label %646, label %637

637:                                              ; preds = %636
  %638 = fadd float %326, %491
  %639 = fcmp ult float %638, 1.000000e+00
  br i1 %639, label %648, label %640

640:                                              ; preds = %637, %640
  %641 = phi ptr [ %644, %640 ], [ %486, %637 ]
  %642 = phi float [ %643, %640 ], [ %638, %637 ]
  %643 = fadd float %642, -1.000000e+00
  %644 = getelementptr inbounds i8, ptr %641, i64 %483
  %645 = fcmp ult float %643, 1.000000e+00
  br i1 %645, label %648, label %640, !llvm.loop !190

646:                                              ; preds = %636
  %647 = getelementptr inbounds i8, ptr %486, i64 %484
  br label %648

648:                                              ; preds = %640, %637, %646, %633
  %649 = phi float [ %491, %646 ], [ %491, %633 ], [ %638, %637 ], [ %643, %640 ]
  %650 = phi ptr [ %647, %646 ], [ %486, %633 ], [ %486, %637 ], [ %644, %640 ]
  %651 = add nsw i32 %490, 2
  %652 = select i1 %443, i32 %651, i32 %490
  %653 = add nsw i32 %652, 1
  %654 = icmp slt i32 %653, %33
  br i1 %654, label %485, label %655, !llvm.loop !191

655:                                              ; preds = %648, %431
  %656 = icmp eq ptr %88, null
  br i1 %656, label %659, label %657

657:                                              ; preds = %655
  %658 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %658(ptr noundef nonnull %88) #11
  br label %659

659:                                              ; preds = %657, %655
  %660 = icmp eq ptr %146, null
  br i1 %660, label %663, label %661

661:                                              ; preds = %659
  %662 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %662(ptr noundef nonnull %146) #11
  br label %663

663:                                              ; preds = %661, %659
  %664 = icmp eq ptr %204, null
  br i1 %664, label %667, label %665

665:                                              ; preds = %663
  %666 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %666(ptr noundef nonnull %204) #11
  br label %667

667:                                              ; preds = %665, %663
  %668 = icmp eq ptr %262, null
  br i1 %668, label %671, label %669

669:                                              ; preds = %667, %579
  %670 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %670(ptr noundef nonnull %262) #11
  br label %671

671:                                              ; preds = %669, %667, %579, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %14) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare void @interp_v4_v4v4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @outside_lattice(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!34 = !{!35, !36, i64 40}
!35 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !39, i64 176, !39, i64 180}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!36, !36, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !44, !45}
!47 = !{!48, !36, i64 0}
!48 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !49, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!49 = !{!"ListBase", !36, i64 0, !36, i64 8}
!50 = !{!51, !40, i64 208}
!51 = !{!"Key", !52, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !41, i64 168, !41, i64 172, !49, i64 176, !36, i64 192, !36, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !39, i64 216, !41, i64 220}
!52 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!53 = !{!51, !36, i64 200}
!54 = !{!51, !41, i64 220}
!55 = !{!40, !40, i64 0}
!56 = !{!37, !37, i64 0}
!57 = !{!51, !41, i64 168}
!58 = !{!51, !36, i64 128}
!59 = distinct !{!59, !44, !45}
!60 = !{!51, !36, i64 120}
!61 = distinct !{!61, !44, !45}
!62 = !{!51, !36, i64 24}
!63 = !{!35, !36, i64 0}
!64 = !{!35, !39, i64 16}
!65 = distinct !{!65, !44, !45}
!66 = distinct !{!66, !44, !45}
!67 = !{!35, !36, i64 8}
!68 = !{!51, !36, i64 176}
!69 = !{!39, !39, i64 0}
!70 = !{!41, !41, i64 0}
!71 = !{!35, !39, i64 20}
!72 = !{!35, !40, i64 30}
!73 = !{!35, !41, i64 32}
!74 = !{!35, !40, i64 28}
!75 = !{!76, !36, i64 272}
!76 = !{!"Mesh", !52, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !77, i64 280, !77, i64 480, !77, i64 680, !77, i64 880, !77, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !39, i64 1352, !41, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !40, i64 1366, !36, i64 1368}
!77 = !{!"CustomData", !36, i64 0, !37, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !36, i64 184, !36, i64 192}
!78 = !{!79, !36, i64 0}
!79 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !41, i64 32, !36, i64 40, !36, i64 48, !80, i64 56, !36, i64 64, !41, i64 72, !36, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !41, i64 104}
!80 = !{!"long", !37, i64 0}
!81 = !{!82, !41, i64 0}
!82 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !41, i64 128, !36, i64 136, !77, i64 144, !77, i64 344, !77, i64 544, !77, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !49, i64 960, !36, i64 976, !49, i64 984, !36, i64 1000}
!83 = !{!84, !37, i64 60}
!84 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !41, i64 56, !37, i64 60}
!85 = !{!84, !36, i64 40}
!86 = !{!84, !36, i64 48}
!87 = !{!82, !36, i64 32}
!88 = distinct !{!88, !44, !45}
!89 = distinct !{!89, !44, !45}
!90 = distinct !{!90, !44, !45}
!91 = distinct !{!91, !44, !45}
!92 = distinct !{!92, !44, !45}
!93 = distinct !{!93, !44, !45}
!94 = distinct !{!94, !44, !45}
!95 = distinct !{!95, !44, !45}
!96 = !{!51, !40, i64 210}
!97 = distinct !{!97, !44, !45}
!98 = !{!99, !40, i64 136}
!99 = !{!"Object", !52, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !100, i64 312, !36, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !39, i64 616, !39, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !39, i64 1048, !39, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !39, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !80, i64 1304, !80, i64 1312, !41, i64 1320, !41, i64 1324, !49, i64 1328, !49, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !49, i64 1400, !36, i64 1416}
!100 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!101 = !{!99, !36, i64 296}
!102 = !{!76, !36, i64 248}
!103 = !{!76, !41, i64 1280}
!104 = !{!105, !36, i64 200}
!105 = !{!"Lattice", !52, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !41, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!106 = !{!105, !40, i64 128}
!107 = !{!105, !40, i64 130}
!108 = !{!105, !40, i64 132}
!109 = !{!110, !36, i64 8}
!110 = !{!"WeightsArrayCache", !41, i64 0, !36, i64 8}
!111 = !{!110, !41, i64 0}
!112 = !{!113, !36, i64 0}
!113 = !{!"BMVert", !114, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!114 = !{!"BMHeader", !36, i64 0, !41, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!115 = distinct !{!115, !44, !45}
!116 = distinct !{!116, !44, !45}
!117 = distinct !{!117, !44, !45}
!118 = distinct !{!118, !44, !45}
!119 = !{!99, !40, i64 1266}
!120 = !{!49, !36, i64 0}
!121 = !{!122, !36, i64 72}
!122 = !{!"Nurb", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !37, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!123 = !{!122, !41, i64 24}
!124 = !{!122, !36, i64 64}
!125 = !{!122, !41, i64 28}
!126 = distinct !{!126, !44, !45}
!127 = !{!99, !37, i64 1265}
!128 = distinct !{!128, !44, !45}
!129 = !{!51, !40, i64 212}
!130 = !{!51, !39, i64 216}
!131 = distinct !{!131, !44, !45}
!132 = distinct !{!132, !44, !45}
!133 = !{!105, !40, i64 134}
!134 = distinct !{!134, !44, !45}
!135 = distinct !{!135, !44, !45}
!136 = !{!137, !36, i64 192}
!137 = !{!"Curve", !52, i64 0, !36, i64 120, !36, i64 128, !49, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !39, i64 252, !39, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !37, i64 300, !40, i64 304, !37, i64 306, !37, i64 307, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !41, i64 488, !41, i64 492, !36, i64 496, !138, i64 504, !39, i64 512, !39, i64 516, !39, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!138 = !{!"CharInfo", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !40, i64 6}
!139 = distinct !{!139, !44, !45}
!140 = distinct !{!140, !44, !45}
!141 = !{!51, !36, i64 184}
!142 = !{!35, !40, i64 24}
!143 = !{!35, !41, i64 36}
!144 = !{!35, !39, i64 176}
!145 = !{!35, !39, i64 180}
!146 = distinct !{!146, !44, !45}
!147 = distinct !{!147, !44, !45}
!148 = !{!105, !36, i64 192}
!149 = !{!105, !36, i64 176}
!150 = distinct !{!150, !44, !45}
!151 = distinct !{!151, !44, !45}
!152 = !{!153, !39, i64 36}
!153 = !{!"BezTriple", !37, i64 0, !39, i64 36, !39, i64 40, !39, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !39, i64 56, !39, i64 60, !39, i64 64, !37, i64 68}
!154 = distinct !{!154, !44, !45}
!155 = !{!156, !39, i64 16}
!156 = !{!"BPoint", !37, i64 0, !39, i64 16, !39, i64 20, !40, i64 24, !40, i64 26, !39, i64 28, !39, i64 32}
!157 = distinct !{!157, !44, !45}
!158 = distinct !{!158, !44, !45}
!159 = distinct !{!159, !44, !45}
!160 = distinct !{!160, !44, !45}
!161 = !{!122, !36, i64 0}
!162 = distinct !{!162, !44, !45}
!163 = !{!76, !36, i64 144}
!164 = !{!76, !36, i64 232}
!165 = distinct !{!165, !44, !45}
!166 = distinct !{!166, !44, !45}
!167 = distinct !{!167, !44, !45}
!168 = distinct !{!168, !44, !45}
!169 = distinct !{!169, !44, !45}
!170 = distinct !{!170, !44, !45}
!171 = distinct !{!171, !44, !45}
!172 = distinct !{!172, !44, !45}
!173 = distinct !{!173, !44, !45}
!174 = distinct !{!174, !44, !45}
!175 = distinct !{!175, !44, !45}
!176 = distinct !{!176, !44, !45}
!177 = distinct !{!177, !44, !45}
!178 = distinct !{!178, !44, !45}
!179 = distinct !{!179, !44, !45}
!180 = distinct !{!180, !44, !45}
!181 = distinct !{!181, !44, !45}
!182 = distinct !{!182, !44, !45}
!183 = !{!49, !36, i64 8}
!184 = distinct !{!184, !44, !45}
!185 = distinct !{!185, !44, !45}
!186 = distinct !{!186, !44, !45}
!187 = distinct !{!187, !44, !45}
!188 = distinct !{!188, !44, !45}
!189 = distinct !{!189, !44, !45}
!190 = distinct !{!190, !44, !45}
!191 = distinct !{!191, !44, !45}
