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
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.WeightsArrayCache = type { i32, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_key_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_animdata(ptr noundef %0) #16
  %2 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #16
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
  tail call void %11(ptr noundef nonnull %8) #16
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %13(ptr noundef nonnull %6) #16
  %14 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !43

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_key_free_nolib(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #16
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
  tail call void %11(ptr noundef nonnull %8) #16
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %13(ptr noundef nonnull %6) #16
  %14 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !45

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_key_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !46
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %2, i16 noundef signext 17739, ptr noundef nonnull @.str) #16
  %4 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 9
  store i16 0, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 8
  store ptr %0, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 14
  store i32 1, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !54
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
  store i8 %11, ptr %14, align 1, !tbaa !55
  %15 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 3, i64 1
  store i8 %12, ptr %15, align 1, !tbaa !55
  %16 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 3, i64 2
  store i8 0, ptr %16, align 1, !tbaa !55
  %17 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 4
  store i32 %13, ptr %17, align 8, !tbaa !56
  br label %18

18:                                               ; preds = %10, %1
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_key_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @BKE_libblock_copy(ptr noundef nonnull %0) #16
  %5 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %6 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  tail call void @BLI_duplicatelist(ptr noundef nonnull %5, ptr noundef nonnull %6) #16
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
  %21 = tail call ptr %20(ptr noundef nonnull %17) #16
  store ptr %21, ptr %16, align 8, !tbaa !34
  br label %22

22:                                               ; preds = %19, %12
  %23 = load ptr, ptr %10, align 8, !tbaa !57
  %24 = icmp eq ptr %15, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store ptr %13, ptr %11, align 8, !tbaa !57
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr %13, align 8, !tbaa !42
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !58

29:                                               ; preds = %26, %3, %1
  %30 = phi ptr [ null, %1 ], [ %4, %3 ], [ %4, %26 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_key_copy_nolib(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %5 = tail call ptr %4(ptr noundef nonnull %0) #16
  %6 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 6
  %8 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  tail call void @BLI_duplicatelist(ptr noundef nonnull %7, ptr noundef nonnull %8) #16
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
  %23 = tail call ptr %22(ptr noundef nonnull %19) #16
  store ptr %23, ptr %18, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %21, %14
  %25 = load ptr, ptr %12, align 8, !tbaa !57
  %26 = icmp eq ptr %17, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store ptr %15, ptr %13, align 8, !tbaa !57
  br label %28

28:                                               ; preds = %27, %24
  %29 = load ptr, ptr %15, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %14, !llvm.loop !60

31:                                               ; preds = %28, %3, %1
  %32 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %28 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_key_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !61
  %5 = tail call zeroext i8 @new_id(ptr noundef null, ptr noundef nonnull %0, ptr noundef null) #16
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @new_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_key_sort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1, %9
  %6 = phi ptr [ %7, %9 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 2
  %11 = load float, ptr %10, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 2
  %13 = load float, ptr %12, align 8, !tbaa !62
  %14 = fcmp ogt float %11, %13
  br i1 %14, label %15, label %5, !llvm.loop !63

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %7) #16
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi ptr [ %2, %15 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.KeyBlock, ptr %19, i64 0, i32 2
  %23 = load float, ptr %22, align 8, !tbaa !62
  %24 = load float, ptr %16, align 8, !tbaa !62
  %25 = fcmp ogt float %23, %24
  br i1 %25, label %26, label %17, !llvm.loop !64

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.KeyBlock, ptr %19, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef %28, ptr noundef nonnull %7) #16
  br label %29

29:                                               ; preds = %5, %17, %1, %26
  %30 = load ptr, ptr %2, align 8, !tbaa !66
  %31 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @key_curve_position_weights(float noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  switch i32 %2, label %59 [
    i32 0, label %4
    i32 1, label %8
    i32 2, label %24
    i32 3, label %41
  ]

4:                                                ; preds = %3
  store float 0.000000e+00, ptr %1, align 4, !tbaa !67
  %5 = fsub float 1.000000e+00, %0
  %6 = getelementptr inbounds float, ptr %1, i64 1
  store float %5, ptr %6, align 4, !tbaa !67
  %7 = getelementptr inbounds float, ptr %1, i64 2
  store float %0, ptr %7, align 4, !tbaa !67
  br label %56

8:                                                ; preds = %3
  %9 = fmul float %0, %0
  %10 = fmul float %9, %0
  %11 = fmul float %9, 0x3FF6B851E0000000
  %12 = tail call float @llvm.fmuladd.f32(float %10, float 0xBFE6B851E0000000, float %11)
  %13 = tail call float @llvm.fmuladd.f32(float %0, float 0xBFE6B851E0000000, float %12)
  store float %13, ptr %1, align 4, !tbaa !67
  %14 = fmul float %9, 0xC00251EB80000000
  %15 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FF4A3D700000000, float %14)
  %16 = fadd float %15, 1.000000e+00
  %17 = getelementptr inbounds float, ptr %1, i64 1
  store float %16, ptr %17, align 4, !tbaa !67
  %18 = fmul float %9, 0x3FF947AE20000000
  %19 = tail call float @llvm.fmuladd.f32(float %10, float 0xBFF4A3D700000000, float %18)
  %20 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FE6B851E0000000, float %19)
  %21 = getelementptr inbounds float, ptr %1, i64 2
  store float %20, ptr %21, align 4, !tbaa !67
  %22 = fmul float %9, 0xBFE6B851E0000000
  %23 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FE6B851E0000000, float %22)
  br label %56

24:                                               ; preds = %3
  %25 = fmul float %0, %0
  %26 = fmul float %25, %0
  %27 = fmul float %25, 5.000000e-01
  %28 = tail call float @llvm.fmuladd.f32(float %26, float 0xBFC5555540000000, float %27)
  %29 = fneg float %25
  %30 = insertelement <2 x float> poison, float %0, i64 0
  %31 = insertelement <2 x float> %30, float %26, i64 1
  %32 = insertelement <2 x float> poison, float %28, i64 0
  %33 = insertelement <2 x float> %32, float %29, i64 1
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> <float -5.000000e-01, float 5.000000e-01>, <2 x float> %33)
  %35 = fadd <2 x float> %34, <float 0x3FC5555540000000, float 0x3FE5555560000000>
  store <2 x float> %35, ptr %1, align 4, !tbaa !67
  %36 = tail call float @llvm.fmuladd.f32(float %26, float -5.000000e-01, float %27)
  %37 = tail call float @llvm.fmuladd.f32(float %0, float 5.000000e-01, float %36)
  %38 = fadd float %37, 0x3FC5555540000000
  %39 = getelementptr inbounds float, ptr %1, i64 2
  store float %38, ptr %39, align 4, !tbaa !67
  %40 = fmul float %26, 0x3FC5555540000000
  br label %56

41:                                               ; preds = %3
  %42 = fmul float %0, %0
  %43 = fmul float %42, %0
  %44 = tail call float @llvm.fmuladd.f32(float %43, float -5.000000e-01, float %42)
  %45 = tail call float @llvm.fmuladd.f32(float %0, float -5.000000e-01, float %44)
  store float %45, ptr %1, align 4, !tbaa !67
  %46 = fmul float %42, -2.500000e+00
  %47 = tail call float @llvm.fmuladd.f32(float %43, float 1.500000e+00, float %46)
  %48 = fadd float %47, 1.000000e+00
  %49 = getelementptr inbounds float, ptr %1, i64 1
  store float %48, ptr %49, align 4, !tbaa !67
  %50 = fmul float %42, 2.000000e+00
  %51 = tail call float @llvm.fmuladd.f32(float %43, float -1.500000e+00, float %50)
  %52 = tail call float @llvm.fmuladd.f32(float %0, float 5.000000e-01, float %51)
  %53 = getelementptr inbounds float, ptr %1, i64 2
  store float %52, ptr %53, align 4, !tbaa !67
  %54 = fmul float %42, -5.000000e-01
  %55 = tail call float @llvm.fmuladd.f32(float %43, float 5.000000e-01, float %54)
  br label %56

56:                                               ; preds = %4, %24, %41, %8
  %57 = phi float [ %23, %8 ], [ %55, %41 ], [ %40, %24 ], [ 0.000000e+00, %4 ]
  %58 = getelementptr inbounds float, ptr %1, i64 3
  store float %57, ptr %58, align 4, !tbaa !67
  br label %59

59:                                               ; preds = %56, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @key_curve_tangent_weights(float noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  switch i32 %2, label %48 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %20
    i32 3, label %31
  ]

4:                                                ; preds = %3
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %1, align 4, !tbaa !67
  %5 = getelementptr inbounds float, ptr %1, i64 2
  store float 1.000000e+00, ptr %5, align 4, !tbaa !67
  br label %45

6:                                                ; preds = %3
  %7 = fmul float %0, %0
  %8 = fmul float %0, 0x4006B851E0000000
  %9 = tail call float @llvm.fmuladd.f32(float %7, float 0xC0010A3D60000000, float %8)
  %10 = fadd float %9, 0xBFE6B851E0000000
  store float %10, ptr %1, align 4, !tbaa !67
  %11 = fmul float %0, 0xC01251EB80000000
  %12 = tail call float @llvm.fmuladd.f32(float %7, float 0x400EF5C280000000, float %11)
  %13 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %13, align 4, !tbaa !67
  %14 = fmul float %0, 0x400947AE20000000
  %15 = tail call float @llvm.fmuladd.f32(float %7, float 0xC00EF5C280000000, float %14)
  %16 = fadd float %15, 0x3FE6B851E0000000
  %17 = getelementptr inbounds float, ptr %1, i64 2
  store float %16, ptr %17, align 4, !tbaa !67
  %18 = fmul float %0, 0xBFF6B851E0000000
  %19 = tail call float @llvm.fmuladd.f32(float %7, float 0x40010A3D60000000, float %18)
  br label %45

20:                                               ; preds = %3
  %21 = fmul float %0, %0
  %22 = tail call float @llvm.fmuladd.f32(float %21, float -5.000000e-01, float %0)
  %23 = fadd float %22, -5.000000e-01
  store float %23, ptr %1, align 4, !tbaa !67
  %24 = fmul float %0, -2.000000e+00
  %25 = tail call float @llvm.fmuladd.f32(float %21, float 1.500000e+00, float %24)
  %26 = getelementptr inbounds float, ptr %1, i64 1
  store float %25, ptr %26, align 4, !tbaa !67
  %27 = tail call float @llvm.fmuladd.f32(float %21, float -1.500000e+00, float %0)
  %28 = fadd float %27, 5.000000e-01
  %29 = getelementptr inbounds float, ptr %1, i64 2
  store float %28, ptr %29, align 4, !tbaa !67
  %30 = fmul float %21, 5.000000e-01
  br label %45

31:                                               ; preds = %3
  %32 = fmul float %0, %0
  %33 = fmul float %0, 2.000000e+00
  %34 = tail call float @llvm.fmuladd.f32(float %32, float -1.500000e+00, float %33)
  %35 = fadd float %34, -5.000000e-01
  store float %35, ptr %1, align 4, !tbaa !67
  %36 = fmul float %0, -5.000000e+00
  %37 = tail call float @llvm.fmuladd.f32(float %32, float 4.500000e+00, float %36)
  %38 = getelementptr inbounds float, ptr %1, i64 1
  store float %37, ptr %38, align 4, !tbaa !67
  %39 = fmul float %0, 4.000000e+00
  %40 = tail call float @llvm.fmuladd.f32(float %32, float -4.500000e+00, float %39)
  %41 = fadd float %40, 5.000000e-01
  %42 = getelementptr inbounds float, ptr %1, i64 2
  store float %41, ptr %42, align 4, !tbaa !67
  %43 = fneg float %0
  %44 = tail call float @llvm.fmuladd.f32(float %32, float 1.500000e+00, float %43)
  br label %45

45:                                               ; preds = %4, %20, %31, %6
  %46 = phi float [ %19, %6 ], [ %44, %31 ], [ %30, %20 ], [ 0.000000e+00, %4 ]
  %47 = getelementptr inbounds float, ptr %1, i64 3
  store float %46, ptr %47, align 4, !tbaa !67
  br label %48

48:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @key_curve_normal_weights(float noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  switch i32 %2, label %20 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %9
    i32 3, label %16
  ]

4:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %20

5:                                                ; preds = %3
  %6 = insertelement <4 x float> poison, float %0, i64 0
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> <float 0xC0110A3D60000000, float 0x401EF5C280000000, float 0xC01EF5C280000000, float 0x40110A3D60000000>, <4 x float> <float 0x4006B851E0000000, float 0xC01251EB80000000, float 0x400947AE20000000, float 0xBFF6B851E0000000>)
  store <4 x float> %8, ptr %1, align 4, !tbaa !67
  br label %20

9:                                                ; preds = %3
  %10 = insertelement <2 x float> poison, float %0, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> <float -1.000000e+00, float 3.000000e+00>, <2 x float> <float 1.000000e+00, float -2.000000e+00>)
  store <2 x float> %12, ptr %1, align 4, !tbaa !67
  %13 = tail call float @llvm.fmuladd.f32(float %0, float -3.000000e+00, float 1.000000e+00)
  %14 = getelementptr inbounds float, ptr %1, i64 2
  store float %13, ptr %14, align 4, !tbaa !67
  %15 = getelementptr inbounds float, ptr %1, i64 3
  store float %0, ptr %15, align 4, !tbaa !67
  br label %20

16:                                               ; preds = %3
  %17 = insertelement <4 x float> poison, float %0, i64 0
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> <float -3.000000e+00, float 9.000000e+00, float -9.000000e+00, float 3.000000e+00>, <4 x float> <float 2.000000e+00, float -5.000000e+00, float 4.000000e+00, float -1.000000e+00>)
  store <4 x float> %19, ptr %1, align 4, !tbaa !67
  br label %20

20:                                               ; preds = %3, %5, %16, %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_key_evaluate_relative(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x i32], align 4
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  %14 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 1
  store i32 0, ptr %14, align 4, !tbaa !68
  %15 = call fastcc zeroext i8 @key_pointer_size(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %9) #18, !range !69
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %147, label %17

17:                                               ; preds = %8
  %18 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  store i8 1, ptr %10, align 1, !tbaa !55
  %19 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 1
  store i8 100, ptr %19, align 1, !tbaa !55
  %20 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 2
  store i8 0, ptr %20, align 1, !tbaa !55
  %21 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = icmp eq i32 %7, 2
  %24 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  tail call fastcc void @cp_key(i32 noundef %0, i32 noundef %18, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %25, ptr noundef null, i32 noundef %7) #18
  %26 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = icmp eq ptr %27, null
  br i1 %28, label %147, label %29

29:                                               ; preds = %17
  %30 = mul nsw i32 %22, 3
  %31 = select i1 %23, i32 %30, i32 %22
  %32 = icmp eq ptr %6, null
  %33 = load i32, ptr %11, align 4
  %34 = mul nsw i32 %33, %0
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %3, i64 %35
  %37 = icmp sgt i32 %18, %0
  %38 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 3
  %39 = select i1 %23, ptr %10, ptr %38
  %40 = sext i32 %31 to i64
  br label %41

41:                                               ; preds = %29, %143
  %42 = phi i64 [ 0, %29 ], [ %144, %143 ]
  %43 = phi ptr [ %27, %29 ], [ %145, %143 ]
  %44 = load ptr, ptr %24, align 8, !tbaa !57
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %143, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.KeyBlock, ptr %43, i64 0, i32 3
  %48 = load float, ptr %47, align 4, !tbaa !70
  %49 = getelementptr inbounds %struct.KeyBlock, ptr %43, i64 0, i32 7
  %50 = load i16, ptr %49, align 2, !tbaa !71
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  %53 = fcmp une float %48, 0.000000e+00
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %143

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.KeyBlock, ptr %43, i64 0, i32 8
  %57 = load i32, ptr %56, align 8, !tbaa !72
  %58 = icmp eq i32 %57, %2
  br i1 %58, label %59, label %143

59:                                               ; preds = %55
  br i1 %32, label %63, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds ptr, ptr %6, i64 %42
  %62 = load ptr, ptr %61, align 8, !tbaa !42
  br label %63

63:                                               ; preds = %59, %60
  %64 = phi ptr [ %62, %60 ], [ null, %59 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  store ptr null, ptr %12, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  store ptr null, ptr %13, align 8, !tbaa !42
  %65 = getelementptr inbounds %struct.KeyBlock, ptr %43, i64 0, i32 6
  %66 = load i16, ptr %65, align 4, !tbaa !73
  %67 = sext i16 %66 to i32
  %68 = tail call ptr @BLI_findlink(ptr noundef nonnull %26, i32 noundef %67) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %142, label %70

70:                                               ; preds = %63
  %71 = call fastcc ptr @key_block_get_data(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %43, ptr noundef nonnull %12) #18
  %72 = call fastcc ptr @key_block_get_data(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %68, ptr noundef nonnull %13) #18
  br i1 %37, label %73, label %130

73:                                               ; preds = %70
  %74 = load i32, ptr %21, align 8, !tbaa !56
  %75 = mul nsw i32 %74, %0
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %71, i64 %76
  %78 = getelementptr inbounds i8, ptr %72, i64 %76
  br label %79

79:                                               ; preds = %73, %120
  %80 = phi ptr [ %127, %120 ], [ %64, %73 ]
  %81 = phi ptr [ %123, %120 ], [ %77, %73 ]
  %82 = phi ptr [ %122, %120 ], [ %78, %73 ]
  %83 = phi ptr [ %121, %120 ], [ %36, %73 ]
  %84 = phi i32 [ %128, %120 ], [ %0, %73 ]
  %85 = icmp eq ptr %80, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load float, ptr %80, align 4, !tbaa !67
  %88 = fmul float %48, %87
  br label %89

89:                                               ; preds = %79, %86
  %90 = phi float [ %88, %86 ], [ %48, %79 ]
  %91 = load i8, ptr %39, align 1, !tbaa !55
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %120, label %93

93:                                               ; preds = %89, %111
  %94 = phi ptr [ %117, %111 ], [ %9, %89 ]
  %95 = phi ptr [ %115, %111 ], [ %83, %89 ]
  %96 = phi ptr [ %116, %111 ], [ %39, %89 ]
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !55
  switch i8 %98, label %101 [
    i8 4, label %111
    i8 101, label %99
    i8 100, label %100
  ]

99:                                               ; preds = %93
  br label %111

100:                                              ; preds = %93
  br label %111

101:                                              ; preds = %93
  %102 = load ptr, ptr %12, align 8, !tbaa !42
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %105(ptr noundef nonnull %102) #16
  br label %106

106:                                              ; preds = %104, %101
  %107 = load ptr, ptr %13, align 8, !tbaa !42
  %108 = icmp eq ptr %107, null
  br i1 %108, label %141, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %110(ptr noundef nonnull %107) #16
  br label %141

111:                                              ; preds = %93, %100, %99
  %112 = phi i32 [ 12, %100 ], [ 4, %99 ], [ 3, %93 ]
  tail call fastcc void @rel_flerp(i32 noundef %112, ptr noundef %95, ptr noundef %82, ptr noundef %81, float noundef %90) #18
  %113 = load i32, ptr %94, align 4, !tbaa !68
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %95, i64 %114
  %116 = getelementptr inbounds i8, ptr %96, i64 2
  %117 = getelementptr inbounds i32, ptr %94, i64 1
  %118 = load i8, ptr %116, align 1, !tbaa !55
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %93, !llvm.loop !74

120:                                              ; preds = %111, %89
  %121 = phi ptr [ %83, %89 ], [ %115, %111 ]
  %122 = getelementptr inbounds i8, ptr %82, i64 %40
  %123 = getelementptr inbounds i8, ptr %81, i64 %40
  %124 = add nsw i32 %84, 2
  %125 = select i1 %23, i32 %124, i32 %84
  %126 = getelementptr inbounds float, ptr %80, i64 1
  %127 = select i1 %85, ptr null, ptr %126
  %128 = add nsw i32 %125, 1
  %129 = icmp slt i32 %128, %18
  br i1 %129, label %79, label %130, !llvm.loop !75

130:                                              ; preds = %120, %70
  %131 = load ptr, ptr %12, align 8, !tbaa !42
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %134(ptr noundef nonnull %131) #16
  br label %135

135:                                              ; preds = %133, %130
  %136 = load ptr, ptr %13, align 8, !tbaa !42
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %139(ptr noundef nonnull %136) #16
  br label %140

140:                                              ; preds = %135, %138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  br label %143

141:                                              ; preds = %106, %109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  br label %147

142:                                              ; preds = %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  br label %143

143:                                              ; preds = %46, %55, %140, %142, %41
  %144 = add nuw i64 %42, 1
  %145 = load ptr, ptr %43, align 8, !tbaa !42
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %41, !llvm.loop !76

147:                                              ; preds = %143, %17, %141, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @key_pointer_size(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 !PGOFuncName !77 {
  %5 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !54
  switch i16 %10, label %17 [
    i16 17741, label %14
    i16 21580, label %14
    i16 21827, label %11
  ]

11:                                               ; preds = %8
  %12 = icmp eq i32 %1, 1
  %13 = select i1 %12, i32 16, i32 48
  br label %14

14:                                               ; preds = %11, %8, %8
  %15 = phi i32 [ 12, %8 ], [ 12, %8 ], [ %13, %11 ]
  %16 = phi i32 [ 12, %8 ], [ 12, %8 ], [ 16, %11 ]
  store i32 %15, ptr %3, align 4, !tbaa !68
  store i32 %16, ptr %2, align 4, !tbaa !68
  br label %17

17:                                               ; preds = %14, %8, %4
  %18 = phi i8 [ 0, %4 ], [ 0, %8 ], [ 1, %14 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cp_key(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !78 {
  %10 = alloca i32, align 4
  %11 = alloca [32 x i32], align 16
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #17
  store i32 0, ptr %10, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  %15 = getelementptr inbounds [32 x i32], ptr %11, i64 0, i64 1
  store i32 0, ptr %15, align 4, !tbaa !68
  %16 = call fastcc zeroext i8 @key_pointer_size(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %10, ptr noundef nonnull %11) #18, !range !69
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %158, label %18

18:                                               ; preds = %9
  %19 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %20 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !72
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %158, label %25

25:                                               ; preds = %23
  %26 = sitofp i32 %21 to float
  %27 = sitofp i32 %2 to float
  %28 = fdiv float %26, %27
  br label %29

29:                                               ; preds = %25, %18
  %30 = phi float [ %28, %25 ], [ 0.000000e+00, %18 ]
  %31 = call fastcc ptr @key_block_get_data(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %12) #18
  %32 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = call fastcc ptr @key_block_get_data(ptr noundef %4, ptr noundef %5, ptr noundef %33, ptr noundef nonnull %13) #18
  %35 = icmp eq i32 %0, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %29
  %37 = load i32, ptr %10, align 4, !tbaa !68
  %38 = mul nsw i32 %37, %0
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %3, i64 %39
  br i1 %22, label %50, label %41

41:                                               ; preds = %36
  %42 = sitofp i32 %0 to float
  %43 = tail call float @llvm.fmuladd.f32(float %42, float %30, float 0.000000e+00)
  %44 = tail call float @llvm.floor.f32(float %43)
  %45 = fptosi float %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %41
  %48 = sitofp i32 %45 to float
  %49 = fsub float %43, %48
  br label %50

50:                                               ; preds = %36, %47
  %51 = phi i32 [ %45, %47 ], [ %0, %36 ]
  %52 = phi float [ %49, %47 ], [ 0.000000e+00, %36 ]
  %53 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !56
  %55 = mul nsw i32 %54, %51
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %31, i64 %56
  br label %58

58:                                               ; preds = %50, %41, %29
  %59 = phi ptr [ %40, %41 ], [ %3, %29 ], [ %40, %50 ]
  %60 = phi float [ %43, %41 ], [ 0.000000e+00, %29 ], [ %52, %50 ]
  %61 = phi ptr [ %31, %41 ], [ %31, %29 ], [ %57, %50 ]
  %62 = icmp eq i32 %8, 2
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  store i8 1, ptr %14, align 1, !tbaa !55
  %64 = getelementptr inbounds [8 x i8], ptr %14, i64 0, i64 1
  store i8 100, ptr %64, align 1, !tbaa !55
  %65 = getelementptr inbounds [8 x i8], ptr %14, i64 0, i64 2
  store i8 0, ptr %65, align 1, !tbaa !55
  br label %66

66:                                               ; preds = %63, %58
  %67 = icmp sgt i32 %19, %0
  br i1 %67, label %68, label %147

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !56
  %71 = mul nsw i32 %70, 3
  %72 = select i1 %62, i32 %71, i32 %70
  %73 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 3
  %74 = select i1 %62, ptr %14, ptr %73
  %75 = sext i32 %72 to i64
  br label %76

76:                                               ; preds = %68, %139
  %77 = phi ptr [ %34, %68 ], [ %142, %139 ]
  %78 = phi ptr [ %61, %68 ], [ %141, %139 ]
  %79 = phi i32 [ %0, %68 ], [ %145, %139 ]
  %80 = phi float [ %60, %68 ], [ %140, %139 ]
  %81 = phi ptr [ %7, %68 ], [ %124, %139 ]
  %82 = phi ptr [ %59, %68 ], [ %123, %139 ]
  %83 = load i8, ptr %74, align 1, !tbaa !55
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %76, %113
  %86 = phi ptr [ %118, %113 ], [ %74, %76 ]
  %87 = phi ptr [ %119, %113 ], [ %11, %76 ]
  %88 = phi ptr [ %114, %113 ], [ %81, %76 ]
  %89 = phi ptr [ %117, %113 ], [ %82, %76 ]
  %90 = getelementptr inbounds i8, ptr %86, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !55
  switch i8 %91, label %105 [
    i8 4, label %92
    i8 101, label %103
    i8 100, label %104
  ]

92:                                               ; preds = %85
  %93 = icmp eq ptr %88, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %89, ptr noundef nonnull align 1 dereferenceable(12) %77, i64 12, i1 false)
  %95 = load float, ptr %88, align 4, !tbaa !67
  %96 = fcmp une float %95, 0.000000e+00
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8, ptr %86, align 1, !tbaa !55
  %99 = zext i8 %98 to i32
  tail call fastcc void @rel_flerp(i32 noundef %99, ptr noundef nonnull %89, ptr noundef nonnull %77, ptr noundef %78, float noundef %95) #18
  br label %100

100:                                              ; preds = %97, %94
  %101 = getelementptr inbounds float, ptr %88, i64 1
  br label %113

102:                                              ; preds = %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %89, ptr noundef nonnull align 1 dereferenceable(12) %78, i64 12, i1 false)
  br label %113

103:                                              ; preds = %85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %89, ptr noundef nonnull align 1 dereferenceable(16) %78, i64 16, i1 false)
  br label %113

104:                                              ; preds = %85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %89, ptr noundef nonnull align 1 dereferenceable(48) %78, i64 48, i1 false)
  br label %113

105:                                              ; preds = %85
  %106 = load ptr, ptr %12, align 8, !tbaa !42
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %109(ptr noundef nonnull %106) #16
  br label %110

110:                                              ; preds = %108, %105
  %111 = load ptr, ptr %13, align 8, !tbaa !42
  %112 = icmp eq ptr %111, null
  br i1 %112, label %158, label %155

113:                                              ; preds = %100, %102, %104, %103
  %114 = phi ptr [ %88, %104 ], [ %88, %103 ], [ %101, %100 ], [ null, %102 ]
  %115 = load i32, ptr %87, align 4, !tbaa !68
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %89, i64 %116
  %118 = getelementptr inbounds i8, ptr %86, i64 2
  %119 = getelementptr inbounds i32, ptr %87, i64 1
  %120 = load i8, ptr %118, align 1, !tbaa !55
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %85, !llvm.loop !79

122:                                              ; preds = %113, %76
  %123 = phi ptr [ %82, %76 ], [ %117, %113 ]
  %124 = phi ptr [ %81, %76 ], [ %114, %113 ]
  br i1 %22, label %136, label %125

125:                                              ; preds = %122
  %126 = fadd float %30, %80
  %127 = fcmp ult float %126, 1.000000e+00
  br i1 %127, label %139, label %128

128:                                              ; preds = %125, %128
  %129 = phi ptr [ %134, %128 ], [ %77, %125 ]
  %130 = phi ptr [ %133, %128 ], [ %78, %125 ]
  %131 = phi float [ %132, %128 ], [ %126, %125 ]
  %132 = fadd float %131, -1.000000e+00
  %133 = getelementptr inbounds i8, ptr %130, i64 %75
  %134 = getelementptr inbounds i8, ptr %129, i64 %75
  %135 = fcmp ult float %132, 1.000000e+00
  br i1 %135, label %139, label %128, !llvm.loop !80

136:                                              ; preds = %122
  %137 = getelementptr inbounds i8, ptr %78, i64 %75
  %138 = getelementptr inbounds i8, ptr %77, i64 %75
  br label %139

139:                                              ; preds = %128, %125, %136
  %140 = phi float [ %80, %136 ], [ %126, %125 ], [ %132, %128 ]
  %141 = phi ptr [ %137, %136 ], [ %78, %125 ], [ %133, %128 ]
  %142 = phi ptr [ %138, %136 ], [ %77, %125 ], [ %134, %128 ]
  %143 = add nsw i32 %79, 2
  %144 = select i1 %62, i32 %143, i32 %79
  %145 = add nsw i32 %144, 1
  %146 = icmp slt i32 %145, %19
  br i1 %146, label %76, label %147, !llvm.loop !81

147:                                              ; preds = %139, %66
  %148 = load ptr, ptr %12, align 8, !tbaa !42
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %151(ptr noundef nonnull %148) #16
  br label %152

152:                                              ; preds = %150, %147
  %153 = load ptr, ptr %13, align 8, !tbaa !42
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %152, %110
  %156 = phi ptr [ %111, %110 ], [ %153, %152 ]
  %157 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %157(ptr noundef nonnull %156) #16
  br label %158

158:                                              ; preds = %155, %152, %110, %23, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @key_block_get_data(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !82 {
  %5 = alloca %struct.BMIter, align 8
  %6 = icmp eq ptr %2, %1
  br i1 %6, label %7, label %42

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !54
  %12 = icmp eq i16 %11, 17741
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %14 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = load i32, ptr %18, align 8, !tbaa !89
  %20 = getelementptr inbounds %struct.KeyBlock, ptr %2, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !72
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %25 = sext i32 %19 to i64
  %26 = mul nsw i64 %25, 12
  %27 = tail call ptr %24(i64 noundef %26, ptr noundef nonnull @.str.9) #16
  %28 = load ptr, ptr %14, align 8, !tbaa !83
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %29) #18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %23, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %23 ]
  %34 = phi ptr [ %38, %32 ], [ %30, %23 ]
  %35 = getelementptr inbounds [3 x float], ptr %27, i64 %33
  %36 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %35, ptr noundef nonnull %36) #18
  %37 = add nuw i64 %33, 1
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %32, !llvm.loop !91

40:                                               ; preds = %17, %13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %42

41:                                               ; preds = %32, %23
  store ptr %27, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %45

42:                                               ; preds = %40, %7, %4
  store ptr null, ptr %3, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.KeyBlock, ptr %2, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  br label %45

45:                                               ; preds = %41, %42
  %46 = phi ptr [ %27, %41 ], [ %44, %42 ]
  ret ptr %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @rel_flerp(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #6 !PGOFuncName !92 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %5
  %8 = fneg float %4
  %9 = zext nneg i32 %0 to i64
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %20, %10 ]
  %12 = getelementptr inbounds float, ptr %2, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !67
  %14 = getelementptr inbounds float, ptr %3, i64 %11
  %15 = load float, ptr %14, align 4, !tbaa !67
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds float, ptr %1, i64 %11
  %18 = load float, ptr %17, align 4, !tbaa !67
  %19 = tail call float @llvm.fmuladd.f32(float %8, float %16, float %18)
  store float %19, ptr %17, align 4, !tbaa !67
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !93

22:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_keyblock_get_per_block_weights(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Key, ptr %1, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !94
  %7 = sext i16 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr %4(i64 noundef %8, ptr noundef nonnull @.str.1) #16
  %10 = getelementptr inbounds %struct.Key, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %3, %13
  %14 = phi i64 [ %19, %13 ], [ 0, %3 ]
  %15 = phi ptr [ %20, %13 ], [ %11, %3 ]
  %16 = getelementptr inbounds %struct.KeyBlock, ptr %15, i64 0, i32 12
  %17 = tail call fastcc ptr @get_weights_array(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %2) #18
  %18 = getelementptr inbounds ptr, ptr %9, i64 %14
  store ptr %17, ptr %18, align 8, !tbaa !42
  %19 = add nuw i64 %14, 1
  %20 = load ptr, ptr %15, align 8, !tbaa !42
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !95

22:                                               ; preds = %13, %3
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_weights_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !96 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %5 = load i8, ptr %1, align 1, !tbaa !55
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %111, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !97
  switch i16 %9, label %111 [
    i16 1, label %10
    i16 22, label %25
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !83
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %10
  %21 = load ptr, ptr %18, align 8, !tbaa !86
  %22 = load i32, ptr %21, align 8, !tbaa !89
  %23 = icmp eq i32 %22, %16
  %24 = select i1 %23, ptr %18, ptr null
  br label %41

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !100
  %28 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 24
  %29 = load ptr, ptr %28, align 8, !tbaa !103
  %30 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !105
  %32 = sext i16 %31 to i32
  %33 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !106
  %35 = sext i16 %34 to i32
  %36 = mul nsw i32 %35, %32
  %37 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !107
  %39 = sext i16 %38 to i32
  %40 = mul nsw i32 %36, %39
  br label %41

41:                                               ; preds = %20, %10, %25
  %42 = phi i32 [ %40, %25 ], [ %16, %20 ], [ %16, %10 ]
  %43 = phi ptr [ null, %25 ], [ %24, %20 ], [ null, %10 ]
  %44 = phi ptr [ %29, %25 ], [ %14, %20 ], [ %14, %10 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %111, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @defgroup_name_index(ptr noundef nonnull %0, ptr noundef nonnull %1) #16
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %111, label %49

49:                                               ; preds = %46
  %50 = icmp eq ptr %2, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.WeightsArrayCache, ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !108
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %57 = tail call i32 @BLI_countlist(ptr noundef nonnull %56) #16
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %59 = sext i32 %57 to i64
  %60 = shl nsw i64 %59, 3
  %61 = tail call ptr %58(i64 noundef %60, ptr noundef nonnull @.str.10) #16
  store ptr %61, ptr %52, align 8, !tbaa !108
  store i32 %57, ptr %2, align 8, !tbaa !110
  br label %62

62:                                               ; preds = %55, %51
  %63 = phi ptr [ %61, %55 ], [ %53, %51 ]
  %64 = sext i32 %47 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %111

68:                                               ; preds = %62, %49
  %69 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %70 = sext i32 %42 to i64
  %71 = shl nsw i64 %70, 2
  %72 = tail call ptr %69(i64 noundef %71, ptr noundef nonnull @.str.11) #16
  %73 = icmp eq ptr %43, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = icmp sgt i32 %42, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %74
  %77 = zext nneg i32 %42 to i64
  br label %97

78:                                               ; preds = %68
  %79 = load ptr, ptr %43, align 8, !tbaa !86
  %80 = getelementptr inbounds %struct.BMesh, ptr %79, i64 0, i32 24
  %81 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %80, i32 noundef 2) #16
  %82 = load ptr, ptr %43, align 8, !tbaa !86
  %83 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %82) #18
  %84 = icmp eq ptr %83, null
  br i1 %84, label %105, label %85

85:                                               ; preds = %78
  %86 = sext i32 %81 to i64
  br label %87

87:                                               ; preds = %85, %87
  %88 = phi i64 [ 0, %85 ], [ %95, %87 ]
  %89 = phi ptr [ %83, %85 ], [ %94, %87 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !111
  %91 = getelementptr inbounds i8, ptr %90, i64 %86
  %92 = call float @defvert_find_weight(ptr noundef %91, i32 noundef %47) #16
  %93 = getelementptr inbounds float, ptr %72, i64 %88
  store float %92, ptr %93, align 4, !tbaa !67
  %94 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #18
  %95 = add nuw i64 %88, 1
  %96 = icmp eq ptr %94, null
  br i1 %96, label %105, label %87, !llvm.loop !114

97:                                               ; preds = %76, %97
  %98 = phi i64 [ 0, %76 ], [ %102, %97 ]
  %99 = phi ptr [ %44, %76 ], [ %103, %97 ]
  %100 = tail call float @defvert_find_weight(ptr noundef nonnull %99, i32 noundef %47) #16
  %101 = getelementptr inbounds float, ptr %72, i64 %98
  store float %100, ptr %101, align 4, !tbaa !67
  %102 = add nuw nsw i64 %98, 1
  %103 = getelementptr inbounds %struct.MDeformVert, ptr %99, i64 1
  %104 = icmp eq i64 %102, %77
  br i1 %104, label %105, label %97, !llvm.loop !115

105:                                              ; preds = %87, %97, %78, %74
  br i1 %50, label %111, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.WeightsArrayCache, ptr %2, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !108
  %109 = sext i32 %47 to i64
  %110 = getelementptr inbounds ptr, ptr %108, i64 %109
  store ptr %72, ptr %110, align 8, !tbaa !42
  br label %111

111:                                              ; preds = %7, %46, %62, %106, %105, %41, %3
  %112 = phi ptr [ null, %3 ], [ null, %41 ], [ %66, %62 ], [ %72, %106 ], [ %72, %105 ], [ null, %46 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret ptr %112
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_keyblock_free_per_block_weights(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !94
  %8 = icmp sgt i16 %7, 0
  br i1 %8, label %37, label %51

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 8, !tbaa !110
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %9
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.WeightsArrayCache, ptr %2, i64 0, i32 1
  br label %16

16:                                               ; preds = %14, %26
  %17 = phi i32 [ %10, %14 ], [ %27, %26 ]
  %18 = phi i64 [ 0, %14 ], [ %28, %26 ]
  %19 = load ptr, ptr %15, align 8, !tbaa !108
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %24(ptr noundef nonnull %21) #16
  %25 = load i32, ptr %2, align 8, !tbaa !110
  br label %26

26:                                               ; preds = %16, %23
  %27 = phi i32 [ %17, %16 ], [ %25, %23 ]
  %28 = add nuw nsw i64 %18, 1
  %29 = sext i32 %27 to i64
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %16, label %31, !llvm.loop !116

31:                                               ; preds = %26, %12
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.WeightsArrayCache, ptr %2, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !108
  tail call void %32(ptr noundef %34) #16
  br label %35

35:                                               ; preds = %31, %9
  %36 = getelementptr inbounds %struct.WeightsArrayCache, ptr %2, i64 0, i32 1
  store ptr null, ptr %36, align 8, !tbaa !108
  br label %51

37:                                               ; preds = %5, %46
  %38 = phi i16 [ %47, %46 ], [ %7, %5 ]
  %39 = phi i64 [ %48, %46 ], [ 0, %5 ]
  %40 = getelementptr inbounds ptr, ptr %1, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !42
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %44(ptr noundef nonnull %41) #16
  %45 = load i16, ptr %6, align 2, !tbaa !94
  br label %46

46:                                               ; preds = %37, %43
  %47 = phi i16 [ %38, %37 ], [ %45, %43 ]
  %48 = add nuw nsw i64 %39, 1
  %49 = sext i16 %47 to i64
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %37, label %51, !llvm.loop !117

51:                                               ; preds = %46, %5, %35
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %52(ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_key_evaluate_object_ex(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BKE_key_from_object(ptr noundef %1) #18
  %7 = tail call ptr @BKE_keyblock_from_object(ptr noundef %1) #18
  %8 = icmp eq ptr %6, null
  br i1 %8, label %140, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Key, ptr %6, i64 0, i32 6
  %11 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %10) #18, !range !69
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %140

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !97
  switch i16 %15, label %140 [
    i16 1, label %16
    i16 22, label %22
    i16 2, label %37
    i16 3, label %37
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 26
  %20 = load i32, ptr %19, align 8, !tbaa !102
  %21 = mul i32 %20, 12
  br label %75

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  %25 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 2
  %26 = load i16, ptr %25, align 8, !tbaa !105
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 3
  %29 = load i16, ptr %28, align 2, !tbaa !106
  %30 = sext i16 %29 to i32
  %31 = mul nsw i32 %30, %27
  %32 = getelementptr inbounds %struct.Lattice, ptr %24, i64 0, i32 4
  %33 = load i16, ptr %32, align 4, !tbaa !107
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %31, %34
  %36 = mul i32 %35, 12
  br label %75

37:                                               ; preds = %13, %13
  %38 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !100
  %40 = getelementptr inbounds %struct.Curve, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !42
  %42 = icmp eq ptr %41, null
  br i1 %42, label %140, label %43

43:                                               ; preds = %37, %70
  %44 = phi ptr [ %73, %70 ], [ %41, %37 ]
  %45 = phi i32 [ %72, %70 ], [ 0, %37 ]
  %46 = phi i32 [ %71, %70 ], [ 0, %37 ]
  %47 = getelementptr inbounds %struct.Nurb, ptr %44, i64 0, i32 18
  %48 = load ptr, ptr %47, align 8, !tbaa !118
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.Nurb, ptr %44, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !120
  %53 = mul nsw i32 %52, 3
  %54 = add nsw i32 %53, %45
  %55 = mul i32 %52, 48
  %56 = add i32 %55, %46
  br label %70

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.Nurb, ptr %44, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !121
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Nurb, ptr %44, i64 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !120
  %64 = getelementptr inbounds %struct.Nurb, ptr %44, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !122
  %66 = mul nsw i32 %65, %63
  %67 = add nsw i32 %66, %45
  %68 = mul i32 %66, 48
  %69 = add i32 %68, %46
  br label %70

70:                                               ; preds = %50, %61, %57
  %71 = phi i32 [ %56, %50 ], [ %69, %61 ], [ %46, %57 ]
  %72 = phi i32 [ %54, %50 ], [ %67, %61 ], [ %45, %57 ]
  %73 = load ptr, ptr %44, align 8, !tbaa !42
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %43, !llvm.loop !123

75:                                               ; preds = %70, %22, %16
  %76 = phi ptr [ %18, %16 ], [ %24, %22 ], [ %39, %70 ]
  %77 = phi i32 [ %21, %16 ], [ %36, %22 ], [ %71, %70 ]
  %78 = phi i32 [ %20, %16 ], [ %35, %22 ], [ %72, %70 ]
  %79 = icmp eq i32 %78, 0
  %80 = icmp eq i32 %77, 0
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %140, label %82

82:                                               ; preds = %75
  %83 = icmp eq ptr %3, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %82
  %85 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %86 = sext i32 %77 to i64
  %87 = tail call ptr %85(i64 noundef %86, ptr noundef nonnull @.str.2) #16
  %88 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %89 = load ptr, ptr %88, align 8, !tbaa !100
  br label %93

90:                                               ; preds = %82
  %91 = sext i32 %77 to i64
  %92 = icmp eq i64 %91, %4
  br i1 %92, label %93, label %140

93:                                               ; preds = %90, %84
  %94 = phi ptr [ %89, %84 ], [ %76, %90 ]
  %95 = phi ptr [ %87, %84 ], [ %3, %90 ]
  %96 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %97 = getelementptr inbounds %struct.Key, ptr %6, i64 0, i32 8
  store ptr %94, ptr %97, align 8, !tbaa !52
  %98 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 114
  %99 = load i8, ptr %98, align 1, !tbaa !124
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %131, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %104 = load i16, ptr %103, align 2, !tbaa !125
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %105, -1
  %107 = tail call ptr @BLI_findlink(ptr noundef nonnull %10, i32 noundef %106) #16
  %108 = icmp eq ptr %107, null
  br i1 %108, label %118, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.KeyBlock, ptr %107, i64 0, i32 7
  %111 = load i16, ptr %110, align 2, !tbaa !71
  %112 = and i16 %111, 1
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.Key, ptr %6, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !57
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %102, %114
  %119 = load ptr, ptr %10, align 8, !tbaa !66
  store i16 1, ptr %103, align 2, !tbaa !125
  br label %120

120:                                              ; preds = %109, %118, %114
  %121 = phi ptr [ %119, %118 ], [ %116, %114 ], [ %107, %109 ]
  %122 = load i16, ptr %14, align 8, !tbaa !97
  switch i16 %122, label %137 [
    i16 1, label %123
    i16 22, label %123
    i16 2, label %129
    i16 3, label %129
  ]

123:                                              ; preds = %120, %120
  %124 = getelementptr inbounds %struct.KeyBlock, ptr %121, i64 0, i32 12
  %125 = tail call fastcc ptr @get_weights_array(ptr noundef nonnull %1, ptr noundef nonnull %124, ptr noundef null) #18
  tail call fastcc void @cp_key(i32 noundef 0, i32 noundef %78, i32 noundef %78, ptr noundef %95, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %121, ptr noundef %125, i32 noundef 0) #18
  %126 = icmp eq ptr %125, null
  br i1 %126, label %137, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %128(ptr noundef nonnull %125) #16
  br label %137

129:                                              ; preds = %120, %120
  %130 = load ptr, ptr %96, align 8, !tbaa !100
  tail call fastcc void @cp_cu_key(ptr noundef %130, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %121, i32 noundef %78, ptr noundef %95, i32 noundef %78) #18
  br label %137

131:                                              ; preds = %93
  %132 = load i16, ptr %14, align 8, !tbaa !97
  switch i16 %132, label %137 [
    i16 1, label %133
    i16 22, label %134
    i16 2, label %135
    i16 3, label %136
  ]

133:                                              ; preds = %131
  tail call fastcc void @do_mesh_key(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %95, i32 noundef %78) #18
  br label %137

134:                                              ; preds = %131
  tail call fastcc void @do_latt_key(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %95, i32 noundef %78) #18
  br label %137

135:                                              ; preds = %131
  tail call fastcc void @do_curve_key(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %95, i32 noundef %78) #18
  br label %137

136:                                              ; preds = %131
  tail call fastcc void @do_curve_key(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %95, i32 noundef %78) #18
  br label %137

137:                                              ; preds = %131, %129, %127, %123, %120, %133, %135, %136, %134
  %138 = icmp eq ptr %2, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %137
  store i32 %78, ptr %2, align 4, !tbaa !68
  br label %140

140:                                              ; preds = %37, %13, %137, %139, %90, %75, %5, %9
  %141 = phi ptr [ null, %9 ], [ null, %5 ], [ null, %75 ], [ null, %90 ], [ %95, %139 ], [ %95, %137 ], [ null, %13 ], [ null, %37 ]
  ret ptr %141
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_key_from_object(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !97
  switch i16 %5, label %21 [
    i16 1, label %6
    i16 2, label %10
    i16 3, label %10
    i16 22, label %14
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 4
  br label %18

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 9
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !100
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_keyblock_from_object(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_key_from_object(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 115
  %7 = load i16, ptr %6, align 2, !tbaa !125
  %8 = sext i16 %7 to i32
  %9 = add nsw i32 %8, -1
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %9) #16
  br label %11

11:                                               ; preds = %1, %4
  %12 = phi ptr [ %10, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !126 {
  %2 = load ptr, ptr %0, align 8, !tbaa !127
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cp_cu_key(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !128 {
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %7, %41
  %12 = phi ptr [ %44, %41 ], [ %9, %7 ]
  %13 = phi i32 [ %43, %41 ], [ 0, %7 ]
  %14 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !121
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !120
  %20 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !122
  %22 = mul nsw i32 %21, %19
  %23 = tail call fastcc i32 @max_ii(i32 noundef %13) #18
  %24 = add nsw i32 %22, %13
  %25 = tail call fastcc i32 @min_ii(i32 noundef %24, i32 noundef %4) #18
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %17
  tail call fastcc void @cp_key(i32 noundef %23, i32 noundef %25, i32 noundef %6, ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef 1) #18
  br label %41

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !118
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !120
  %35 = mul nsw i32 %34, 3
  %36 = tail call fastcc i32 @max_ii(i32 noundef %13) #18
  %37 = add nsw i32 %35, %13
  %38 = tail call fastcc i32 @min_ii(i32 noundef %37, i32 noundef %4) #18
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  tail call fastcc void @cp_key(i32 noundef %36, i32 noundef %38, i32 noundef %6, ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef 2) #18
  br label %41

41:                                               ; preds = %28, %27, %17, %32, %40
  %42 = phi i32 [ %22, %27 ], [ %22, %17 ], [ %35, %40 ], [ %35, %32 ], [ 0, %28 ]
  %43 = add nsw i32 %42, %13
  %44 = load ptr, ptr %12, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %11, !llvm.loop !129

46:                                               ; preds = %41, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_mesh_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !130 {
  %6 = alloca [4 x ptr], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca %struct.WeightsArrayCache, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  %9 = tail call ptr @BKE_keyblock_from_object(ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  %10 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 11
  %11 = load i16, ptr %10, align 4, !tbaa !131
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 9
  %14 = load i16, ptr %13, align 8, !tbaa !49
  %15 = icmp eq i16 %14, 1
  br i1 %12, label %42, label %16

16:                                               ; preds = %5
  br i1 %15, label %43, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 13
  %19 = load float, ptr %18, align 8, !tbaa !132
  %20 = fdiv float %19, 1.000000e+02
  %21 = tail call float @BKE_scene_frame_get(ptr noundef %0) #16
  %22 = icmp sgt i32 %4, 100
  %23 = load i32, ptr @slurph_opt, align 4
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  %26 = udiv i32 %4, 50
  %27 = select i1 %25, i32 %26, i32 1
  %28 = icmp sgt i32 %4, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %31 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  br label %32

32:                                               ; preds = %29, %40
  %33 = phi i32 [ 0, %29 ], [ %36, %40 ]
  %34 = call fastcc i32 @setkeys(float noundef %20, ptr noundef nonnull %30, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %35 = icmp eq i32 %34, 0
  %36 = add nuw nsw i32 %33, %27
  br i1 %35, label %37, label %38

37:                                               ; preds = %32
  call fastcc void @do_key(i32 noundef %33, i32 noundef %36, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #18
  br label %40

38:                                               ; preds = %32
  %39 = load ptr, ptr %31, align 16, !tbaa !42
  call fastcc void @cp_key(i32 noundef %33, i32 noundef %36, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %9, ptr noundef %39, ptr noundef null, i32 noundef 0) #18
  br label %40

40:                                               ; preds = %37, %38
  %41 = icmp slt i32 %36, %4
  br i1 %41, label %32, label %56, !llvm.loop !133

42:                                               ; preds = %5
  br i1 %15, label %43, label %45

43:                                               ; preds = %16, %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %44 = call ptr @BKE_keyblock_get_per_block_weights(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8) #18
  call void @BKE_key_evaluate_relative(i32 noundef 0, i32 noundef %4, i32 noundef %4, ptr noundef %3, ptr noundef nonnull %2, ptr noundef %9, ptr noundef %44, i32 noundef 0) #18
  call void @BKE_keyblock_free_per_block_weights(ptr noundef nonnull %2, ptr noundef %44, ptr noundef nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  br label %56

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 13
  %47 = load float, ptr %46, align 8, !tbaa !132
  %48 = fdiv float %47, 1.000000e+02
  %49 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %50 = call fastcc i32 @setkeys(float noundef %48, ptr noundef nonnull %49, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  call fastcc void @do_key(i32 noundef 0, i32 noundef %4, i32 noundef %4, ptr noundef %3, ptr noundef nonnull %2, ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #18
  br label %56

53:                                               ; preds = %45
  %54 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  %55 = load ptr, ptr %54, align 16, !tbaa !42
  call fastcc void @cp_key(i32 noundef 0, i32 noundef %4, i32 noundef %4, ptr noundef %3, ptr noundef nonnull %2, ptr noundef %9, ptr noundef %55, ptr noundef null, i32 noundef 0) #18
  br label %56

56:                                               ; preds = %40, %17, %52, %53, %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_latt_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !134 {
  %6 = alloca [4 x ptr], align 16
  %7 = alloca [4 x float], align 16
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  %10 = tail call ptr @BKE_keyblock_from_object(ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  %11 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 11
  %12 = load i16, ptr %11, align 4, !tbaa !131
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !49
  %16 = icmp eq i16 %15, 1
  br i1 %13, label %37, label %17

17:                                               ; preds = %5
  br i1 %16, label %38, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 13
  %20 = load float, ptr %19, align 8, !tbaa !132
  %21 = fdiv float %20, 1.000000e+02
  %22 = tail call float @BKE_scene_frame_get(ptr noundef %0) #16
  %23 = icmp sgt i32 %4, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %26 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  br label %27

27:                                               ; preds = %24, %35
  %28 = phi i32 [ 0, %24 ], [ %31, %35 ]
  %29 = call fastcc i32 @setkeys(float noundef %21, ptr noundef nonnull %25, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %30 = icmp eq i32 %29, 0
  %31 = add nuw nsw i32 %28, 1
  br i1 %30, label %32, label %33

32:                                               ; preds = %27
  call fastcc void @do_key(i32 noundef %28, i32 noundef %31, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #18
  br label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr %26, align 16, !tbaa !42
  call fastcc void @cp_key(i32 noundef %28, i32 noundef %31, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %10, ptr noundef %34, ptr noundef null, i32 noundef 0) #18
  br label %35

35:                                               ; preds = %32, %33
  %36 = icmp eq i32 %31, %4
  br i1 %36, label %51, label %27, !llvm.loop !135

37:                                               ; preds = %5
  br i1 %16, label %38, label %40

38:                                               ; preds = %17, %37
  %39 = tail call ptr @BKE_keyblock_get_per_block_weights(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null) #18
  tail call void @BKE_key_evaluate_relative(i32 noundef 0, i32 noundef %4, i32 noundef %4, ptr noundef %3, ptr noundef nonnull %2, ptr noundef %10, ptr noundef %39, i32 noundef 0) #18
  tail call void @BKE_keyblock_free_per_block_weights(ptr noundef nonnull %2, ptr noundef %39, ptr noundef null) #18
  br label %51

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 13
  %42 = load float, ptr %41, align 8, !tbaa !132
  %43 = fdiv float %42, 1.000000e+02
  %44 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %45 = call fastcc i32 @setkeys(float noundef %43, ptr noundef nonnull %44, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  call fastcc void @do_key(i32 noundef 0, i32 noundef %4, i32 noundef %4, ptr noundef %3, ptr noundef nonnull %2, ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #18
  br label %51

48:                                               ; preds = %40
  %49 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  %50 = load ptr, ptr %49, align 16, !tbaa !42
  call fastcc void @cp_key(i32 noundef 0, i32 noundef %4, i32 noundef %4, ptr noundef %3, ptr noundef nonnull %2, ptr noundef %10, ptr noundef %50, ptr noundef null, i32 noundef 0) #18
  br label %51

51:                                               ; preds = %35, %18, %47, %48, %38
  %52 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 5
  %53 = load i16, ptr %52, align 2, !tbaa !136
  %54 = and i16 %53, 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  call void @outside_lattice(ptr noundef nonnull %9) #16
  br label %57

57:                                               ; preds = %56, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_curve_key(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !137 {
  %6 = alloca [4 x ptr], align 16
  %7 = alloca [4 x float], align 16
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  %10 = tail call ptr @BKE_keyblock_from_object(ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  %11 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 11
  %12 = load i16, ptr %11, align 4, !tbaa !131
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !49
  %16 = icmp eq i16 %15, 1
  br i1 %13, label %94, label %17

17:                                               ; preds = %5
  br i1 %16, label %95, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 13
  %20 = load float, ptr %19, align 8, !tbaa !132
  %21 = fdiv float %20, 1.000000e+02
  %22 = tail call float @BKE_scene_frame_get(ptr noundef %0) #16
  %23 = icmp sgt i32 %4, 100
  %24 = load i32, ptr @slurph_opt, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  %27 = udiv i32 %4, 50
  %28 = select i1 %26, i32 %27, i32 1
  %29 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = icmp eq ptr %30, null
  br i1 %31, label %109, label %32

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %34 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  br label %41

35:                                               ; preds = %90, %55, %63
  %36 = phi i32 [ %45, %63 ], [ %45, %55 ], [ %86, %90 ]
  %37 = phi i32 [ %44, %63 ], [ %44, %55 ], [ %92, %90 ]
  %38 = phi i32 [ %43, %63 ], [ %43, %55 ], [ %77, %90 ]
  %39 = load ptr, ptr %42, align 8, !tbaa !42
  %40 = icmp eq ptr %39, null
  br i1 %40, label %109, label %41, !llvm.loop !138

41:                                               ; preds = %32, %35
  %42 = phi ptr [ %30, %32 ], [ %39, %35 ]
  %43 = phi i32 [ 0, %32 ], [ %38, %35 ]
  %44 = phi i32 [ 0, %32 ], [ %37, %35 ]
  %45 = phi i32 [ 0, %32 ], [ %36, %35 ]
  %46 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !121
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !120
  %52 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 7
  %53 = load i32, ptr %52, align 4, !tbaa !122
  %54 = mul nsw i32 %53, %51
  br label %63

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 18
  %57 = load ptr, ptr %56, align 8, !tbaa !118
  %58 = icmp eq ptr %57, null
  br i1 %58, label %35, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !120
  %62 = mul nsw i32 %61, 3
  br label %63

63:                                               ; preds = %59, %49
  %64 = phi i32 [ %54, %49 ], [ %62, %59 ]
  %65 = phi i32 [ 1, %49 ], [ 2, %59 ]
  %66 = icmp sgt i32 %64, 0
  br i1 %66, label %67, label %35

67:                                               ; preds = %63, %90
  %68 = phi i32 [ %77, %90 ], [ %43, %63 ]
  %69 = phi i32 [ %91, %90 ], [ 0, %63 ]
  %70 = phi i32 [ %92, %90 ], [ %44, %63 ]
  %71 = phi i32 [ %86, %90 ], [ %45, %63 ]
  %72 = icmp slt i32 %70, 1
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call fastcc i32 @setkeys(float noundef %21, ptr noundef nonnull %33, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i32 [ %28, %73 ], [ %70, %67 ]
  %77 = phi i32 [ %74, %73 ], [ %68, %67 ]
  %78 = call fastcc i32 @min_ii(i32 noundef %76, i32 noundef %64) #18
  br i1 %48, label %79, label %83

79:                                               ; preds = %75
  %80 = srem i32 %78, 3
  %81 = add i32 %78, 3
  %82 = sub i32 %81, %80
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i32 [ %82, %79 ], [ %78, %75 ]
  %85 = icmp eq i32 %77, 0
  %86 = add nsw i32 %84, %71
  br i1 %85, label %87, label %88

87:                                               ; preds = %83
  call fastcc void @do_key(i32 noundef %71, i32 noundef %86, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %65) #18
  br label %90

88:                                               ; preds = %83
  %89 = load ptr, ptr %34, align 16, !tbaa !42
  call fastcc void @cp_key(i32 noundef %71, i32 noundef %86, i32 noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %10, ptr noundef %89, ptr noundef null, i32 noundef %65) #18
  br label %90

90:                                               ; preds = %88, %87
  %91 = add nsw i32 %84, %69
  %92 = sub nsw i32 %76, %84
  %93 = icmp slt i32 %91, %64
  br i1 %93, label %67, label %35, !llvm.loop !139

94:                                               ; preds = %5
  br i1 %16, label %95, label %98

95:                                               ; preds = %17, %94
  %96 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 9
  %97 = load ptr, ptr %96, align 8, !tbaa !140
  tail call fastcc void @do_rel_cu_key(ptr noundef %9, ptr noundef %97, ptr noundef %10, ptr noundef %3, i32 noundef %4) #18
  br label %109

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 13
  %100 = load float, ptr %99, align 8, !tbaa !132
  %101 = fdiv float %100, 1.000000e+02
  %102 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %103 = call fastcc i32 @setkeys(float noundef %101, ptr noundef nonnull %102, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  call fastcc void @do_cu_key(ptr noundef %9, ptr noundef nonnull %2, ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %3, i32 noundef %4) #18
  br label %109

106:                                              ; preds = %98
  %107 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  %108 = load ptr, ptr %107, align 16, !tbaa !42
  call fastcc void @cp_cu_key(ptr noundef %9, ptr noundef nonnull %2, ptr noundef %10, ptr noundef %108, i32 noundef %4, ptr noundef %3, i32 noundef %4) #18
  br label %109

109:                                              ; preds = %35, %18, %105, %106, %95
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_key_evaluate_object(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_key_evaluate_object_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i64 noundef 0) #18
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_keyblock_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %4 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %5, i64 0, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !62
  %10 = fadd float %9, 0x3FB99999A0000000
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi float [ %10, %7 ], [ 0.000000e+00, %2 ]
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.3) #16
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 4
  store i16 1, ptr %15, align 8, !tbaa !144
  %16 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #16
  %17 = icmp eq ptr %1, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 11
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef nonnull %1, i64 noundef 64) #16
  br label %29

21:                                               ; preds = %11
  %22 = icmp eq i32 %16, 1
  %23 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 11
  br i1 %22, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef nonnull @.str.4, i64 noundef 64) #16
  br label %29

26:                                               ; preds = %21
  %27 = add nsw i32 %16, -1
  %28 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %23, i64 noundef 64, ptr noundef nonnull @.str.5, i32 noundef %27) #16
  br label %29

29:                                               ; preds = %24, %26, %18
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef nonnull %14, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 48, i32 noundef 64) #16
  %30 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !53
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 4, !tbaa !53
  %33 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 9
  store i32 %31, ptr %33, align 4, !tbaa !145
  %34 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 10
  %35 = load i16, ptr %34, align 2, !tbaa !94
  %36 = add i16 %35, 1
  store i16 %36, ptr %34, align 2, !tbaa !94
  %37 = icmp eq i16 %35, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 2
  store ptr %14, ptr %39, align 8, !tbaa !57
  br label %40

40:                                               ; preds = %38, %29
  %41 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 13
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %41, align 8, !tbaa !67
  %42 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 2
  store float %12, ptr %42, align 8, !tbaa !62
  ret ptr %14
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_keyblock_add_ctime(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_keyblock_add(ptr noundef %0, ptr noundef %1) #18
  %5 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 13
  %6 = load float, ptr %5, align 8, !tbaa !132
  %7 = fdiv float %6, 1.000000e+02
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 8, !tbaa !49
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %25, label %13

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
  %21 = load float, ptr %20, align 8, !tbaa !62
  %22 = fcmp oeq float %21, %7
  br i1 %22, label %25, label %15, !llvm.loop !146

23:                                               ; preds = %15, %3
  %24 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 2
  store float %7, ptr %24, align 8, !tbaa !62
  tail call void @BKE_key_sort(ptr noundef %0) #18
  br label %25

25:                                               ; preds = %19, %9, %23
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_keyblock_from_object_reference(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call ptr @BKE_key_from_object(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_keyblock_from_key(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !94
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i16 %6, 1
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i32 %16, 1
  %14 = icmp eq i32 %13, %7
  br i1 %14, label %20, label %15, !llvm.loop !147

15:                                               ; preds = %9, %12
  %16 = phi i32 [ %13, %12 ], [ 1, %9 ]
  %17 = phi ptr [ %18, %12 ], [ %11, %9 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !148
  %19 = icmp eq i32 %16, %1
  br i1 %19, label %20, label %12

20:                                               ; preds = %15, %12, %4, %2
  %21 = phi ptr [ null, %2 ], [ null, %4 ], [ %18, %15 ], [ null, %12 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_keyblock_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 48) #16
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_keyblock_copy_settings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 2
  %5 = load <2 x float>, ptr %3, align 8, !tbaa !67
  store <2 x float> %5, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !144
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 4
  store i16 %7, ptr %8, align 8, !tbaa !144
  %9 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 6
  %10 = load i16, ptr %9, align 4, !tbaa !73
  %11 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 6
  store i16 %10, ptr %11, align 4, !tbaa !73
  %12 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 12
  %13 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 12
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull %13, i64 noundef 64) #16
  %15 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 13
  %16 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 13
  %17 = load <2 x float>, ptr %15, align 8, !tbaa !67
  store <2 x float> %17, ptr %16, align 8, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_keyblock_curval_rnapath_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  call void @RNA_pointer_create(ptr noundef nonnull %0, ptr noundef nonnull @RNA_ShapeKey, ptr noundef nonnull %1, ptr noundef nonnull %3) #16
  %8 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.6) #16
  %9 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %3, ptr noundef %8) #16
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret ptr %11
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_key_convert_from_lattice(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !105
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !106
  %8 = sext i16 %7 to i32
  %9 = mul nsw i32 %8, %5
  %10 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %11 = load i16, ptr %10, align 4, !tbaa !107
  %12 = sext i16 %11 to i32
  %13 = mul nsw i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %20(ptr noundef nonnull %17) #16
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !149
  %25 = getelementptr inbounds %struct.Key, ptr %24, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !56
  %27 = mul nsw i32 %26, %13
  %28 = sext i32 %27 to i64
  %29 = tail call ptr %22(i64 noundef %28, ptr noundef nonnull @.str.7) #16
  store ptr %29, ptr %16, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 8
  store i32 %13, ptr %30, align 8, !tbaa !72
  %31 = icmp sgt i32 %13, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %34 = load ptr, ptr %33, align 8, !tbaa !150
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi ptr [ %41, %35 ], [ %34, %32 ]
  %37 = phi i32 [ %39, %35 ], [ 0, %32 ]
  %38 = phi ptr [ %40, %35 ], [ %29, %32 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %38, ptr noundef %36) #18
  %39 = add nuw nsw i32 %37, 1
  %40 = getelementptr inbounds float, ptr %38, i64 3
  %41 = getelementptr inbounds %struct.BPoint, ptr %36, i64 1
  %42 = load i32, ptr %30, align 8, !tbaa !72
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %35, label %44, !llvm.loop !151

44:                                               ; preds = %35, %21, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !152 {
  %3 = load float, ptr %1, align 4, !tbaa !67
  store float %3, ptr %0, align 4, !tbaa !67
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !67
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !67
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !67
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !67
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_key_convert_to_lattice(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.Lattice, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !105
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds %struct.Lattice, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !106
  %8 = sext i16 %7 to i32
  %9 = mul nsw i32 %8, %5
  %10 = getelementptr inbounds %struct.Lattice, ptr %1, i64 0, i32 4
  %11 = load i16, ptr %10, align 4, !tbaa !107
  %12 = sext i16 %11 to i32
  %13 = mul nsw i32 %9, %12
  %14 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !72
  %16 = tail call fastcc i32 @min_ii(i32 noundef %15, i32 noundef %13) #18
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.Lattice, ptr %1, i64 0, i32 21
  %22 = load ptr, ptr %21, align 8, !tbaa !150
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %27, %23 ], [ 0, %18 ]
  %25 = phi ptr [ %28, %23 ], [ %20, %18 ]
  %26 = phi ptr [ %29, %23 ], [ %22, %18 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %26, ptr noundef %25) #18
  %27 = add nuw nsw i32 %24, 1
  %28 = getelementptr inbounds float, ptr %25, i64 3
  %29 = getelementptr inbounds %struct.BPoint, ptr %26, i64 1
  %30 = icmp eq i32 %27, %16
  br i1 %30, label %31, label %23, !llvm.loop !153

31:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #12 !PGOFuncName !154 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_key_convert_from_curve(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @BKE_nurbList_verts_count(ptr noundef %2) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %72, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %11(ptr noundef nonnull %8) #16
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !140
  %16 = getelementptr inbounds %struct.Key, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !56
  %18 = mul nsw i32 %17, %4
  %19 = sext i32 %18 to i64
  %20 = tail call ptr %13(i64 noundef %19, ptr noundef nonnull @.str.7) #16
  store ptr %20, ptr %7, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 8
  store i32 %4, ptr %21, align 8, !tbaa !72
  %22 = load ptr, ptr %2, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %72, label %24

24:                                               ; preds = %12, %68
  %25 = phi ptr [ %70, %68 ], [ %22, %12 ]
  %26 = phi ptr [ %69, %68 ], [ %20, %12 ]
  %27 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !120
  br i1 %29, label %49, label %32

32:                                               ; preds = %24
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %32, %34
  %35 = phi i32 [ %38, %34 ], [ %31, %32 ]
  %36 = phi ptr [ %46, %34 ], [ %26, %32 ]
  %37 = phi ptr [ %47, %34 ], [ %28, %32 ]
  %38 = add nsw i32 %35, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %36, ptr noundef nonnull %37) #18
  %39 = getelementptr inbounds float, ptr %36, i64 3
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %39, ptr noundef nonnull %40) #18
  %41 = getelementptr inbounds float, ptr %36, i64 6
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %41, ptr noundef nonnull %42) #18
  %43 = getelementptr inbounds float, ptr %36, i64 9
  %44 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !155
  store float %45, ptr %43, align 4, !tbaa !67
  %46 = getelementptr inbounds float, ptr %36, i64 12
  %47 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 1
  %48 = icmp eq i32 %38, 0
  br i1 %48, label %68, label %34, !llvm.loop !157

49:                                               ; preds = %24
  %50 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 7
  %51 = load i32, ptr %50, align 4, !tbaa !122
  %52 = mul nsw i32 %51, %31
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !121
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi i32 [ %61, %57 ], [ %52, %54 ]
  %59 = phi ptr [ %65, %57 ], [ %26, %54 ]
  %60 = phi ptr [ %66, %57 ], [ %56, %54 ]
  %61 = add nsw i32 %58, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %59, ptr noundef %60) #18
  %62 = getelementptr inbounds %struct.BPoint, ptr %60, i64 0, i32 1
  %63 = load float, ptr %62, align 4, !tbaa !158
  %64 = getelementptr inbounds float, ptr %59, i64 3
  store float %63, ptr %64, align 4, !tbaa !67
  %65 = getelementptr inbounds float, ptr %59, i64 4
  %66 = getelementptr inbounds %struct.BPoint, ptr %60, i64 1
  %67 = icmp eq i32 %61, 0
  br i1 %67, label %68, label %57, !llvm.loop !160

68:                                               ; preds = %34, %57, %32, %49
  %69 = phi ptr [ %26, %49 ], [ %26, %32 ], [ %65, %57 ], [ %46, %34 ]
  %70 = load ptr, ptr %25, align 8, !tbaa !42
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %24, !llvm.loop !161

72:                                               ; preds = %68, %12, %3
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_nurbList_verts_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_key_convert_to_curve(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @BKE_nurbList_verts_count(ptr noundef nonnull %2) #16
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !72
  %10 = tail call fastcc i32 @min_ii(i32 noundef %9, i32 noundef %7) #18
  %11 = icmp ne ptr %4, null
  %12 = icmp sgt i32 %10, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %3, %67
  %15 = phi i32 [ %69, %67 ], [ %10, %3 ]
  %16 = phi ptr [ %68, %67 ], [ %6, %3 ]
  %17 = phi ptr [ %70, %67 ], [ %4, %3 ]
  %18 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !120
  br i1 %20, label %44, label %23

23:                                               ; preds = %14
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %67, label %25

25:                                               ; preds = %23, %25
  %26 = phi i32 [ %39, %25 ], [ %15, %23 ]
  %27 = phi i32 [ %30, %25 ], [ %22, %23 ]
  %28 = phi ptr [ %38, %25 ], [ %16, %23 ]
  %29 = phi ptr [ %40, %25 ], [ %19, %23 ]
  %30 = add nsw i32 %27, -1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %29, ptr noundef %28) #18
  %31 = getelementptr inbounds float, ptr %28, i64 3
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  %33 = getelementptr inbounds float, ptr %28, i64 6
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %34, ptr noundef nonnull %33) #18
  %35 = getelementptr inbounds float, ptr %28, i64 9
  %36 = load float, ptr %35, align 4, !tbaa !67
  %37 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 1
  store float %36, ptr %37, align 4, !tbaa !155
  %38 = getelementptr inbounds float, ptr %28, i64 12
  %39 = add nsw i32 %26, -3
  %40 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 1
  %41 = icmp ne i32 %30, 0
  %42 = icmp ugt i32 %26, 3
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %25, label %67, !llvm.loop !162

44:                                               ; preds = %14
  %45 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 7
  %46 = load i32, ptr %45, align 4, !tbaa !122
  %47 = mul nsw i32 %46, %22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  br label %52

52:                                               ; preds = %49, %52
  %53 = phi i32 [ %62, %52 ], [ %15, %49 ]
  %54 = phi i32 [ %57, %52 ], [ %47, %49 ]
  %55 = phi ptr [ %61, %52 ], [ %16, %49 ]
  %56 = phi ptr [ %63, %52 ], [ %51, %49 ]
  %57 = add nsw i32 %54, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %56, ptr noundef %55) #18
  %58 = getelementptr inbounds float, ptr %55, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !67
  %60 = getelementptr inbounds %struct.BPoint, ptr %56, i64 0, i32 1
  store float %59, ptr %60, align 4, !tbaa !158
  %61 = getelementptr inbounds float, ptr %55, i64 4
  %62 = add nsw i32 %53, -1
  %63 = getelementptr inbounds %struct.BPoint, ptr %56, i64 1
  %64 = icmp ne i32 %57, 0
  %65 = icmp ne i32 %62, 0
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %52, label %67, !llvm.loop !163

67:                                               ; preds = %25, %52, %23, %44
  %68 = phi ptr [ %16, %44 ], [ %16, %23 ], [ %61, %52 ], [ %38, %25 ]
  %69 = phi i32 [ %15, %44 ], [ %15, %23 ], [ %62, %52 ], [ %39, %25 ]
  %70 = load ptr, ptr %17, align 8, !tbaa !164
  %71 = icmp ne ptr %70, null
  %72 = icmp sgt i32 %69, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %14, label %74, !llvm.loop !165

74:                                               ; preds = %67, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_key_convert_from_mesh(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !102
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %11(ptr noundef nonnull %8) #16
  %12 = load i32, ptr %3, align 8, !tbaa !102
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %12, %10 ], [ %4, %6 ]
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !166
  %18 = getelementptr inbounds %struct.Key, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !56
  %20 = mul nsw i32 %14, %19
  %21 = sext i32 %20 to i64
  %22 = tail call ptr %15(i64 noundef %21, ptr noundef nonnull @.str.7) #16
  store ptr %22, ptr %7, align 8, !tbaa !34
  %23 = load i32, ptr %3, align 8, !tbaa !102
  %24 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 8
  store i32 %23, ptr %24, align 8, !tbaa !72
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !167
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i32 [ %33, %29 ], [ 0, %26 ]
  %31 = phi ptr [ %34, %29 ], [ %22, %26 ]
  %32 = phi ptr [ %35, %29 ], [ %28, %26 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %31, ptr noundef %32) #18
  %33 = add nuw nsw i32 %30, 1
  %34 = getelementptr inbounds float, ptr %31, i64 3
  %35 = getelementptr inbounds %struct.MVert, ptr %32, i64 1
  %36 = load i32, ptr %24, align 8, !tbaa !72
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %29, label %38, !llvm.loop !168

38:                                               ; preds = %29, %13, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_key_convert_to_mesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !102
  %7 = tail call fastcc i32 @min_ii(i32 noundef %4, i32 noundef %6) #18
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !167
  br label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %20, %14 ], [ %13, %9 ]
  %16 = phi i32 [ %18, %14 ], [ 0, %9 ]
  %17 = phi ptr [ %19, %14 ], [ %11, %9 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %15, ptr noundef %17) #18
  %18 = add nuw nsw i32 %16, 1
  %19 = getelementptr inbounds float, ptr %17, i64 3
  %20 = getelementptr inbounds %struct.MVert, ptr %15, i64 1
  %21 = icmp eq i32 %18, %7
  br i1 %21, label %22, label %14, !llvm.loop !169

22:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_key_convert_to_vertcos(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !97
  switch i16 %6, label %101 [
    i16 1, label %7
    i16 22, label %12
    i16 2, label %26
    i16 3, label %26
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !102
  br label %31

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.Lattice, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !105
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.Lattice, ptr %14, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !106
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %20, %17
  %22 = getelementptr inbounds %struct.Lattice, ptr %14, i64 0, i32 4
  %23 = load i16, ptr %22, align 4, !tbaa !107
  %24 = sext i16 %23 to i32
  %25 = mul nsw i32 %21, %24
  br label %31

26:                                               ; preds = %2, %2
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !100
  %29 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 3
  %30 = tail call i32 @BKE_nurbList_verts_count(ptr noundef nonnull %29) #16
  br label %31

31:                                               ; preds = %12, %26, %7
  %32 = phi i32 [ %11, %7 ], [ %25, %12 ], [ %30, %26 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %101, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %36 = sext i32 %32 to i64
  %37 = mul nsw i64 %36, 12
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @.str.8) #16
  %39 = load i16, ptr %5, align 8, !tbaa !97
  switch i16 %39, label %101 [
    i16 1, label %40
    i16 22, label %40
    i16 2, label %50
    i16 3, label %50
  ]

40:                                               ; preds = %34, %34
  %41 = icmp sgt i32 %32, 0
  br i1 %41, label %42, label %101

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %48, %42 ], [ %38, %40 ]
  %44 = phi ptr [ %47, %42 ], [ %4, %40 ]
  %45 = phi i32 [ %46, %42 ], [ 0, %40 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %43, ptr noundef %44) #18
  %46 = add nuw nsw i32 %45, 1
  %47 = getelementptr inbounds float, ptr %44, i64 3
  %48 = getelementptr inbounds float, ptr %43, i64 3
  %49 = icmp eq i32 %46, %32
  br i1 %49, label %101, label %42, !llvm.loop !170

50:                                               ; preds = %34, %34
  %51 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !100
  %53 = getelementptr inbounds %struct.Curve, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = icmp eq ptr %54, null
  br i1 %55, label %101, label %56

56:                                               ; preds = %50, %96
  %57 = phi ptr [ %99, %96 ], [ %54, %50 ]
  %58 = phi ptr [ %98, %96 ], [ %38, %50 ]
  %59 = phi ptr [ %97, %96 ], [ %4, %50 ]
  %60 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 18
  %61 = load ptr, ptr %60, align 8, !tbaa !118
  %62 = icmp eq ptr %61, null
  %63 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !120
  br i1 %62, label %83, label %65

65:                                               ; preds = %56
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %65, %79
  %68 = phi i32 [ %80, %79 ], [ %64, %65 ]
  %69 = phi ptr [ %76, %79 ], [ %58, %65 ]
  %70 = phi ptr [ %81, %79 ], [ %59, %65 ]
  br label %71

71:                                               ; preds = %67, %71
  %72 = phi i32 [ 0, %67 ], [ %77, %71 ]
  %73 = phi ptr [ %69, %67 ], [ %76, %71 ]
  %74 = phi ptr [ %70, %67 ], [ %75, %71 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %73, ptr noundef %74) #18
  %75 = getelementptr inbounds float, ptr %74, i64 3
  %76 = getelementptr inbounds float, ptr %73, i64 3
  %77 = add nuw nsw i32 %72, 1
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %71, !llvm.loop !171

79:                                               ; preds = %71
  %80 = add nsw i32 %68, -1
  %81 = getelementptr inbounds float, ptr %74, i64 6
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %96, label %67, !llvm.loop !172

83:                                               ; preds = %56
  %84 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 7
  %85 = load i32, ptr %84, align 4, !tbaa !122
  %86 = mul nsw i32 %85, %64
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %83, %88
  %89 = phi ptr [ %94, %88 ], [ %58, %83 ]
  %90 = phi ptr [ %93, %88 ], [ %59, %83 ]
  %91 = phi i32 [ %92, %88 ], [ %86, %83 ]
  %92 = add nsw i32 %91, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %89, ptr noundef %90) #18
  %93 = getelementptr inbounds float, ptr %90, i64 4
  %94 = getelementptr inbounds float, ptr %89, i64 3
  %95 = icmp eq i32 %92, 0
  br i1 %95, label %96, label %88, !llvm.loop !173

96:                                               ; preds = %79, %88, %65, %83
  %97 = phi ptr [ %59, %83 ], [ %59, %65 ], [ %93, %88 ], [ %81, %79 ]
  %98 = phi ptr [ %58, %83 ], [ %58, %65 ], [ %94, %88 ], [ %76, %79 ]
  %99 = load ptr, ptr %57, align 8, !tbaa !42
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %56, !llvm.loop !174

101:                                              ; preds = %96, %42, %50, %40, %2, %34, %31
  %102 = phi ptr [ null, %31 ], [ %38, %34 ], [ null, %2 ], [ %38, %40 ], [ %38, %50 ], [ %38, %42 ], [ %38, %96 ]
  ret ptr %102
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_key_convert_from_vertcos(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %8(ptr noundef nonnull %5) #16
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !97
  switch i16 %11, label %52 [
    i16 1, label %12
    i16 22, label %21
    i16 2, label %39
    i16 3, label %39
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !166
  %19 = getelementptr inbounds %struct.Key, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !56
  br label %48

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  %24 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !105
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !106
  %29 = sext i16 %28 to i32
  %30 = mul nsw i32 %29, %26
  %31 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 4
  %32 = load i16, ptr %31, align 4, !tbaa !107
  %33 = sext i16 %32 to i32
  %34 = mul nsw i32 %30, %33
  %35 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 23
  %36 = load ptr, ptr %35, align 8, !tbaa !149
  %37 = getelementptr inbounds %struct.Key, ptr %36, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !56
  br label %48

39:                                               ; preds = %9, %9
  %40 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  %42 = getelementptr inbounds %struct.Curve, ptr %41, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !140
  %44 = getelementptr inbounds %struct.Key, ptr %43, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !56
  %46 = getelementptr inbounds %struct.Curve, ptr %41, i64 0, i32 3
  %47 = tail call i32 @BKE_nurbList_verts_count(ptr noundef nonnull %46) #16
  br label %48

48:                                               ; preds = %21, %39, %12
  %49 = phi i32 [ %20, %12 ], [ %38, %21 ], [ %45, %39 ]
  %50 = phi i32 [ %16, %12 ], [ %34, %21 ], [ %47, %39 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %9, %48
  store ptr null, ptr %4, align 8, !tbaa !34
  br label %120

53:                                               ; preds = %48
  %54 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %55 = mul nsw i32 %50, %49
  %56 = sext i32 %55 to i64
  %57 = tail call ptr %54(i64 noundef %56, ptr noundef nonnull @.str.8) #16
  store ptr %57, ptr %4, align 8, !tbaa !34
  %58 = load i16, ptr %10, align 8, !tbaa !97
  switch i16 %58, label %120 [
    i16 1, label %59
    i16 22, label %59
    i16 2, label %69
    i16 3, label %69
  ]

59:                                               ; preds = %53, %53
  %60 = icmp sgt i32 %50, 0
  br i1 %60, label %61, label %120

61:                                               ; preds = %59, %61
  %62 = phi ptr [ %67, %61 ], [ %2, %59 ]
  %63 = phi ptr [ %66, %61 ], [ %57, %59 ]
  %64 = phi i32 [ %65, %61 ], [ 0, %59 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %63, ptr noundef %62) #18
  %65 = add nuw nsw i32 %64, 1
  %66 = getelementptr inbounds float, ptr %63, i64 3
  %67 = getelementptr inbounds float, ptr %62, i64 3
  %68 = icmp eq i32 %65, %50
  br i1 %68, label %120, label %61, !llvm.loop !175

69:                                               ; preds = %53, %53
  %70 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %71 = load ptr, ptr %70, align 8, !tbaa !100
  %72 = getelementptr inbounds %struct.Curve, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !42
  %74 = icmp eq ptr %73, null
  br i1 %74, label %120, label %75

75:                                               ; preds = %69, %115
  %76 = phi ptr [ %118, %115 ], [ %73, %69 ]
  %77 = phi ptr [ %117, %115 ], [ %2, %69 ]
  %78 = phi ptr [ %116, %115 ], [ %57, %69 ]
  %79 = getelementptr inbounds %struct.Nurb, ptr %76, i64 0, i32 18
  %80 = load ptr, ptr %79, align 8, !tbaa !118
  %81 = icmp eq ptr %80, null
  %82 = getelementptr inbounds %struct.Nurb, ptr %76, i64 0, i32 6
  %83 = load i32, ptr %82, align 8, !tbaa !120
  br i1 %81, label %102, label %84

84:                                               ; preds = %75
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %115, label %86

86:                                               ; preds = %84, %98
  %87 = phi i32 [ %99, %98 ], [ %83, %84 ]
  %88 = phi ptr [ %95, %98 ], [ %77, %84 ]
  %89 = phi ptr [ %100, %98 ], [ %78, %84 ]
  br label %90

90:                                               ; preds = %86, %90
  %91 = phi i32 [ 0, %86 ], [ %96, %90 ]
  %92 = phi ptr [ %88, %86 ], [ %95, %90 ]
  %93 = phi ptr [ %89, %86 ], [ %94, %90 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %93, ptr noundef %92) #18
  %94 = getelementptr inbounds float, ptr %93, i64 3
  %95 = getelementptr inbounds float, ptr %92, i64 3
  %96 = add nuw nsw i32 %91, 1
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %90, !llvm.loop !176

98:                                               ; preds = %90
  %99 = add nsw i32 %87, -1
  %100 = getelementptr inbounds float, ptr %93, i64 6
  %101 = icmp eq i32 %99, 0
  br i1 %101, label %115, label %86, !llvm.loop !177

102:                                              ; preds = %75
  %103 = getelementptr inbounds %struct.Nurb, ptr %76, i64 0, i32 7
  %104 = load i32, ptr %103, align 4, !tbaa !122
  %105 = mul nsw i32 %104, %83
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %113, %107 ], [ %77, %102 ]
  %109 = phi ptr [ %112, %107 ], [ %78, %102 ]
  %110 = phi i32 [ %111, %107 ], [ %105, %102 ]
  %111 = add nsw i32 %110, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %109, ptr noundef %108) #18
  %112 = getelementptr inbounds float, ptr %109, i64 4
  %113 = getelementptr inbounds float, ptr %108, i64 3
  %114 = icmp eq i32 %111, 0
  br i1 %114, label %115, label %107, !llvm.loop !178

115:                                              ; preds = %98, %107, %84, %102
  %116 = phi ptr [ %78, %102 ], [ %78, %84 ], [ %112, %107 ], [ %100, %98 ]
  %117 = phi ptr [ %77, %102 ], [ %77, %84 ], [ %113, %107 ], [ %95, %98 ]
  %118 = load ptr, ptr %76, align 8, !tbaa !42
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %75, !llvm.loop !179

120:                                              ; preds = %115, %61, %69, %59, %53, %52
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_key_convert_from_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !97
  switch i16 %7, label %72 [
    i16 1, label %8
    i16 22, label %8
    i16 2, label %21
    i16 3, label %21
  ]

8:                                                ; preds = %3, %3
  %9 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !72
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %72

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %16, %12 ], [ 0, %8 ]
  %14 = phi ptr [ %17, %12 ], [ %5, %8 ]
  %15 = phi ptr [ %18, %12 ], [ %2, %8 ]
  tail call fastcc void @add_v3_v3(ptr noundef %14, ptr noundef %15) #18
  %16 = add nuw nsw i32 %13, 1
  %17 = getelementptr inbounds float, ptr %14, i64 3
  %18 = getelementptr inbounds float, ptr %15, i64 3
  %19 = load i32, ptr %9, align 8, !tbaa !72
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %12, label %72, !llvm.loop !180

21:                                               ; preds = %3, %3
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  %24 = getelementptr inbounds %struct.Curve, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = icmp eq ptr %25, null
  br i1 %26, label %72, label %27

27:                                               ; preds = %21, %67
  %28 = phi ptr [ %70, %67 ], [ %25, %21 ]
  %29 = phi ptr [ %69, %67 ], [ %5, %21 ]
  %30 = phi ptr [ %68, %67 ], [ %2, %21 ]
  %31 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !118
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !120
  br i1 %33, label %54, label %36

36:                                               ; preds = %27
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %36, %50
  %39 = phi i32 [ %51, %50 ], [ %35, %36 ]
  %40 = phi ptr [ %52, %50 ], [ %29, %36 ]
  %41 = phi ptr [ %47, %50 ], [ %30, %36 ]
  br label %42

42:                                               ; preds = %38, %42
  %43 = phi i32 [ 0, %38 ], [ %48, %42 ]
  %44 = phi ptr [ %40, %38 ], [ %46, %42 ]
  %45 = phi ptr [ %41, %38 ], [ %47, %42 ]
  tail call fastcc void @add_v3_v3(ptr noundef %44, ptr noundef %45) #18
  %46 = getelementptr inbounds float, ptr %44, i64 3
  %47 = getelementptr inbounds float, ptr %45, i64 3
  %48 = add nuw nsw i32 %43, 1
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %42, !llvm.loop !181

50:                                               ; preds = %42
  %51 = add nsw i32 %39, -1
  %52 = getelementptr inbounds float, ptr %44, i64 6
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %67, label %38, !llvm.loop !182

54:                                               ; preds = %27
  %55 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 7
  %56 = load i32, ptr %55, align 4, !tbaa !122
  %57 = mul nsw i32 %56, %35
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54, %59
  %60 = phi i32 [ %63, %59 ], [ %57, %54 ]
  %61 = phi ptr [ %64, %59 ], [ %29, %54 ]
  %62 = phi ptr [ %65, %59 ], [ %30, %54 ]
  %63 = add nsw i32 %60, -1
  tail call fastcc void @add_v3_v3(ptr noundef %61, ptr noundef %62) #18
  %64 = getelementptr inbounds float, ptr %61, i64 4
  %65 = getelementptr inbounds float, ptr %62, i64 3
  %66 = icmp eq i32 %63, 0
  br i1 %66, label %67, label %59, !llvm.loop !183

67:                                               ; preds = %50, %59, %36, %54
  %68 = phi ptr [ %30, %54 ], [ %30, %36 ], [ %65, %59 ], [ %47, %50 ]
  %69 = phi ptr [ %29, %54 ], [ %29, %36 ], [ %64, %59 ], [ %52, %50 ]
  %70 = load ptr, ptr %28, align 8, !tbaa !42
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %27, !llvm.loop !184

72:                                               ; preds = %67, %12, %21, %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !185 {
  %3 = load float, ptr %1, align 4, !tbaa !67
  %4 = load float, ptr %0, align 4, !tbaa !67
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !67
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !67
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !67
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !67
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_keyblock_move(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %0) #18
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 115
  %6 = load i16, ptr %5, align 2, !tbaa !125
  %7 = sext i16 %6 to i32
  %8 = add nsw i32 %7, -1
  %9 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 10
  %10 = load i16, ptr %9, align 2, !tbaa !94
  %11 = sext i16 %10 to i32
  %12 = icmp slt i32 %1, 0
  %13 = select i1 %12, i32 %8, i32 %1
  %14 = icmp slt i32 %2, 0
  %15 = icmp sgt i32 %11, %2
  %16 = add nsw i32 %11, -1
  %17 = select i1 %15, i32 %2, i32 %16
  %18 = select i1 %14, i32 0, i32 %17
  %19 = icmp slt i32 %13, 0
  %20 = icmp slt i32 %13, %11
  %21 = select i1 %20, i32 %13, i32 %16
  %22 = select i1 %19, i32 0, i32 %21
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %102, label %24

24:                                               ; preds = %3
  %25 = icmp slt i32 %18, %22
  %26 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6, i32 1
  %27 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %28 = select i1 %25, ptr %26, ptr %27
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %78, label %31

31:                                               ; preds = %24
  %32 = select i1 %25, i32 %16, i32 0
  %33 = trunc i32 %18 to i16
  %34 = select i1 %25, i32 -1, i32 1
  br label %35

35:                                               ; preds = %31, %72
  %36 = phi ptr [ %29, %31 ], [ %76, %72 ]
  %37 = phi i8 [ 0, %31 ], [ %42, %72 ]
  %38 = phi i32 [ %32, %31 ], [ %75, %72 ]
  %39 = icmp eq i32 %38, %22
  %40 = icmp eq i32 %38, %18
  %41 = select i1 %40, i8 0, i8 %37
  %42 = select i1 %39, i8 1, i8 %41
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.KeyBlock, ptr %36, i64 0, i32 1
  %46 = select i1 %25, ptr %45, ptr %36
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  tail call void @BLI_listbase_swaplinks(ptr noundef nonnull %27, ptr noundef nonnull %36, ptr noundef %47) #16
  %48 = getelementptr inbounds %struct.KeyBlock, ptr %36, i64 0, i32 2
  %49 = load float, ptr %48, align 8, !tbaa !62
  %50 = getelementptr inbounds %struct.KeyBlock, ptr %47, i64 0, i32 2
  %51 = load float, ptr %50, align 8, !tbaa !62
  store float %51, ptr %48, align 8, !tbaa !62
  store float %49, ptr %50, align 8, !tbaa !62
  br label %52

52:                                               ; preds = %44, %35
  %53 = phi ptr [ %47, %44 ], [ %36, %35 ]
  %54 = getelementptr inbounds %struct.KeyBlock, ptr %53, i64 0, i32 6
  %55 = load i16, ptr %54, align 4, !tbaa !73
  %56 = sext i16 %55 to i32
  %57 = icmp eq i32 %22, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = icmp sle i32 %22, %56
  %60 = icmp sgt i32 %18, %56
  %61 = or i1 %59, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = add i16 %55, 1
  br label %70

64:                                               ; preds = %58
  %65 = icmp sge i32 %22, %56
  %66 = icmp slt i32 %18, %56
  %67 = or i1 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = add i16 %55, -1
  br label %70

70:                                               ; preds = %52, %62, %68
  %71 = phi i16 [ %69, %68 ], [ %63, %62 ], [ %33, %52 ]
  store i16 %71, ptr %54, align 4, !tbaa !73
  br label %72

72:                                               ; preds = %70, %64
  %73 = getelementptr inbounds %struct.KeyBlock, ptr %53, i64 0, i32 1
  %74 = select i1 %25, ptr %73, ptr %53
  %75 = add nsw i32 %38, %34
  %76 = load ptr, ptr %74, align 8, !tbaa !42
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %35, !llvm.loop !186

78:                                               ; preds = %72, %24
  %79 = icmp eq i32 %22, %8
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = trunc i32 %18 to i16
  %82 = add i16 %81, 1
  br label %97

83:                                               ; preds = %78
  %84 = icmp sge i32 %22, %7
  %85 = icmp slt i32 %18, %7
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i16, ptr %5, align 2, !tbaa !125
  %89 = add i16 %88, 1
  br label %97

90:                                               ; preds = %83
  %91 = icmp sle i32 %8, %22
  %92 = icmp sgt i32 %8, %18
  %93 = or i1 %92, %91
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i16, ptr %5, align 2, !tbaa !125
  %96 = add i16 %95, -1
  br label %97

97:                                               ; preds = %80, %94, %87
  %98 = phi i16 [ %89, %87 ], [ %96, %94 ], [ %82, %80 ]
  store i16 %98, ptr %5, align 2, !tbaa !125
  br label %99

99:                                               ; preds = %97, %90
  %100 = load ptr, ptr %27, align 8, !tbaa !66
  %101 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !57
  br label %102

102:                                              ; preds = %3, %99
  %103 = phi i8 [ 1, %99 ], [ 0, %3 ]
  ret i8 %103
}

; Function Attrs: optsize
declare void @BLI_listbase_swaplinks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !187 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #18
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !188 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !189
  %4 = tail call ptr %3(ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !191 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 1, ptr %3, align 4, !tbaa !192
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !193
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !189
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  store ptr %7, ptr %0, align 8, !tbaa !55
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #12 !PGOFuncName !195 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @setkeys(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !196 {
  %5 = alloca [4 x float], align 16
  %6 = load ptr, ptr %1, align 8, !tbaa !127
  %7 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !197
  %9 = getelementptr inbounds %struct.KeyBlock, ptr %8, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 2
  %12 = load float, ptr %11, align 8, !tbaa !62
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
  %23 = getelementptr inbounds float, ptr %3, i64 2
  %24 = getelementptr inbounds float, ptr %3, i64 1
  %25 = insertelement <4 x float> poison, float %12, i64 0
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %26, ptr %3, align 4, !tbaa !67
  %27 = load ptr, ptr %6, align 8, !tbaa !148
  %28 = icmp eq ptr %27, null
  br i1 %28, label %104, label %29

29:                                               ; preds = %17
  store ptr %27, ptr %20, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct.KeyBlock, ptr %27, i64 0, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !62
  store float %31, ptr %23, align 4, !tbaa !67
  %32 = load ptr, ptr %27, align 8, !tbaa !148
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr %27, ptr %32
  store ptr %34, ptr %19, align 8
  %35 = getelementptr inbounds %struct.KeyBlock, ptr %34, i64 0, i32 2
  %36 = load float, ptr %35, align 8, !tbaa !62
  store float %36, ptr %22, align 4, !tbaa !67
  %37 = load float, ptr %23, align 4, !tbaa !67
  %38 = fadd float %10, 0x4000CCCCC0000000
  %39 = fcmp olt float %38, 0.000000e+00
  br label %40

40:                                               ; preds = %52, %29
  %41 = phi ptr [ %27, %29 ], [ %45, %52 ]
  %42 = phi ptr [ %6, %29 ], [ %41, %52 ]
  %43 = phi float [ %36, %29 ], [ %57, %52 ]
  %44 = phi float [ %37, %29 ], [ %43, %52 ]
  %45 = phi ptr [ %34, %29 ], [ %53, %52 ]
  %46 = fcmp olt float %44, %18
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load ptr, ptr %45, align 8, !tbaa !148
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = fcmp oeq float %44, %43
  br i1 %51, label %58, label %52

52:                                               ; preds = %47, %50
  %53 = phi ptr [ %45, %50 ], [ %48, %47 ]
  %54 = load float, ptr %24, align 4, !tbaa !67
  store float %54, ptr %3, align 4, !tbaa !67
  store ptr %42, ptr %2, align 8, !tbaa !42
  store float %44, ptr %24, align 4, !tbaa !67
  store ptr %41, ptr %21, align 8, !tbaa !42
  store float %43, ptr %23, align 4, !tbaa !67
  store ptr %45, ptr %20, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct.KeyBlock, ptr %53, i64 0, i32 2
  %56 = load float, ptr %55, align 8, !tbaa !62
  %57 = fadd float %56, 0.000000e+00
  store float %57, ptr %22, align 4, !tbaa !67
  store ptr %53, ptr %19, align 8, !tbaa !42
  br i1 %39, label %58, label %40, !llvm.loop !198

58:                                               ; preds = %52, %50, %40
  %59 = phi float [ %43, %52 ], [ %44, %50 ], [ %44, %40 ]
  %60 = phi ptr [ %45, %52 ], [ %41, %50 ], [ %41, %40 ]
  %61 = phi ptr [ %41, %52 ], [ %42, %50 ], [ %42, %40 ]
  %62 = getelementptr inbounds %struct.KeyBlock, ptr %61, i64 0, i32 4
  %63 = load i16, ptr %62, align 8, !tbaa !144
  %64 = icmp eq i16 %63, 2
  br i1 %64, label %78, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.KeyBlock, ptr %60, i64 0, i32 4
  %67 = load i16, ptr %66, align 8, !tbaa !144
  %68 = icmp eq i16 %67, 2
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = load float, ptr %24, align 4, !tbaa !67
  %71 = fcmp ugt float %18, %70
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store float %70, ptr %23, align 4, !tbaa !67
  store ptr %61, ptr %20, align 8, !tbaa !42
  br label %104

73:                                               ; preds = %69
  %74 = fcmp oge float %18, %59
  %75 = fsub float %59, %70
  %76 = fcmp oeq float %75, 0.000000e+00
  %77 = or i1 %74, %76
  br i1 %77, label %104, label %86

78:                                               ; preds = %65, %58
  %79 = fcmp ogt float %18, %59
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  store ptr %60, ptr %19, align 8, !tbaa !42
  store float %59, ptr %22, align 4, !tbaa !67
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi float [ %59, %80 ], [ %18, %78 ]
  %83 = load float, ptr %24, align 4, !tbaa !67
  %84 = fsub float %59, %83
  %85 = fcmp oeq float %84, 0.000000e+00
  br i1 %85, label %92, label %86

86:                                               ; preds = %73, %81
  %87 = phi float [ %84, %81 ], [ %75, %73 ]
  %88 = phi float [ %83, %81 ], [ %70, %73 ]
  %89 = phi float [ %82, %81 ], [ %18, %73 ]
  %90 = fsub float %89, %88
  %91 = fdiv float %90, %87
  br label %92

92:                                               ; preds = %81, %86
  %93 = phi float [ %91, %86 ], [ %84, %81 ]
  %94 = sext i16 %63 to i32
  tail call void @key_curve_position_weights(float noundef %93, ptr noundef nonnull %3, i32 noundef %94) #18
  %95 = load ptr, ptr %21, align 8, !tbaa !42
  %96 = getelementptr inbounds %struct.KeyBlock, ptr %95, i64 0, i32 4
  %97 = load i16, ptr %96, align 8, !tbaa !144
  %98 = load ptr, ptr %20, align 8, !tbaa !42
  %99 = getelementptr inbounds %struct.KeyBlock, ptr %98, i64 0, i32 4
  %100 = load i16, ptr %99, align 8, !tbaa !144
  %101 = icmp eq i16 %97, %100
  br i1 %101, label %104, label %102

102:                                              ; preds = %92
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %103 = sext i16 %100 to i32
  call void @key_curve_position_weights(float noundef %93, ptr noundef nonnull %5, i32 noundef %103) #18
  call void @interp_v4_v4v4(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %5, float noundef %93) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  br label %104

104:                                              ; preds = %92, %102, %73, %17, %72
  %105 = phi i32 [ 1, %72 ], [ 1, %17 ], [ 1, %73 ], [ 0, %102 ], [ 0, %92 ]
  ret i32 %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_key(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !199 {
  %10 = alloca [32 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  store i32 0, ptr %11, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #17
  %17 = getelementptr inbounds [32 x i32], ptr %10, i64 0, i64 1
  store i32 0, ptr %17, align 4, !tbaa !68
  %18 = call fastcc zeroext i8 @key_pointer_size(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %11, ptr noundef nonnull %10) #18, !range !69
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %388, label %20

20:                                               ; preds = %9
  %21 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %22 = load ptr, ptr %6, align 8, !tbaa !42
  %23 = call fastcc ptr @key_block_get_data(ptr noundef %4, ptr noundef %5, ptr noundef %22, ptr noundef nonnull %12) #18
  %24 = getelementptr inbounds ptr, ptr %6, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = call fastcc ptr @key_block_get_data(ptr noundef %4, ptr noundef %5, ptr noundef %25, ptr noundef nonnull %13) #18
  %27 = getelementptr inbounds ptr, ptr %6, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = call fastcc ptr @key_block_get_data(ptr noundef %4, ptr noundef %5, ptr noundef %28, ptr noundef nonnull %14) #18
  %30 = getelementptr inbounds ptr, ptr %6, i64 3
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = call fastcc ptr @key_block_get_data(ptr noundef %4, ptr noundef %5, ptr noundef %31, ptr noundef nonnull %15) #18
  %33 = load ptr, ptr %6, align 8, !tbaa !42
  %34 = getelementptr inbounds %struct.KeyBlock, ptr %33, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !72
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %43, label %37

37:                                               ; preds = %20
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %37
  %40 = sitofp i32 %35 to float
  %41 = sitofp i32 %2 to float
  %42 = fdiv float %40, %41
  br label %43

43:                                               ; preds = %39, %20
  %44 = phi float [ %42, %39 ], [ 0.000000e+00, %20 ]
  %45 = phi i32 [ 1, %39 ], [ 0, %20 ]
  %46 = load ptr, ptr %24, align 8, !tbaa !42
  %47 = getelementptr inbounds %struct.KeyBlock, ptr %46, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !72
  %49 = icmp eq i32 %48, %2
  br i1 %49, label %64, label %57

50:                                               ; preds = %37
  %51 = load ptr, ptr %24, align 8, !tbaa !42
  %52 = getelementptr inbounds %struct.KeyBlock, ptr %51, i64 0, i32 8
  %53 = load i32, ptr %52, align 8, !tbaa !72
  %54 = icmp eq i32 %53, %2
  %55 = select i1 %54, i32 14, i32 12
  %56 = select i1 %54, i32 1, i32 3
  br label %64

57:                                               ; preds = %43
  %58 = or disjoint i32 %45, 2
  %59 = icmp eq i32 %35, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = sitofp i32 %48 to float
  %62 = sitofp i32 %2 to float
  %63 = fdiv float %61, %62
  br label %64

64:                                               ; preds = %50, %57, %60, %43
  %65 = phi float [ %44, %60 ], [ %44, %43 ], [ %44, %57 ], [ 0.000000e+00, %50 ]
  %66 = phi float [ %63, %60 ], [ 0.000000e+00, %43 ], [ 0.000000e+00, %57 ], [ 0.000000e+00, %50 ]
  %67 = phi i32 [ 15, %60 ], [ 15, %43 ], [ 13, %57 ], [ %55, %50 ]
  %68 = phi i32 [ %58, %60 ], [ %45, %43 ], [ %58, %57 ], [ %56, %50 ]
  %69 = load ptr, ptr %27, align 8, !tbaa !42
  %70 = getelementptr inbounds %struct.KeyBlock, ptr %69, i64 0, i32 8
  %71 = load i32, ptr %70, align 8, !tbaa !72
  %72 = icmp eq i32 %71, %2
  br i1 %72, label %80, label %73

73:                                               ; preds = %64
  %74 = or i32 %68, 4
  %75 = icmp eq i32 %35, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = sitofp i32 %71 to float
  %78 = sitofp i32 %2 to float
  %79 = fdiv float %77, %78
  br label %80

80:                                               ; preds = %76, %64
  %81 = phi float [ %79, %76 ], [ 0.000000e+00, %64 ]
  %82 = phi i32 [ %74, %76 ], [ %68, %64 ]
  %83 = load ptr, ptr %30, align 8, !tbaa !42
  %84 = getelementptr inbounds %struct.KeyBlock, ptr %83, i64 0, i32 8
  %85 = load i32, ptr %84, align 8, !tbaa !72
  %86 = icmp eq i32 %85, %2
  br i1 %86, label %107, label %95

87:                                               ; preds = %73
  %88 = add nsw i32 %67, -4
  %89 = load ptr, ptr %30, align 8, !tbaa !42
  %90 = getelementptr inbounds %struct.KeyBlock, ptr %89, i64 0, i32 8
  %91 = load i32, ptr %90, align 8, !tbaa !72
  %92 = icmp eq i32 %91, %2
  br i1 %92, label %107, label %93

93:                                               ; preds = %87
  %94 = or i32 %68, 12
  br label %102

95:                                               ; preds = %80
  %96 = or i32 %82, 8
  %97 = icmp eq i32 %35, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = sitofp i32 %85 to float
  %100 = sitofp i32 %2 to float
  %101 = fdiv float %99, %100
  br label %107

102:                                              ; preds = %93, %95
  %103 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %104 = phi float [ 0.000000e+00, %93 ], [ %81, %95 ]
  %105 = phi i32 [ %88, %93 ], [ %67, %95 ]
  %106 = add nsw i32 %105, -8
  br label %107

107:                                              ; preds = %87, %98, %102, %80
  %108 = phi float [ %81, %98 ], [ %104, %102 ], [ %81, %80 ], [ 0.000000e+00, %87 ]
  %109 = phi float [ %101, %98 ], [ 0.000000e+00, %102 ], [ 0.000000e+00, %80 ], [ 0.000000e+00, %87 ]
  %110 = phi i32 [ %67, %98 ], [ %106, %102 ], [ %67, %80 ], [ %88, %87 ]
  %111 = phi i32 [ %96, %98 ], [ %103, %102 ], [ %82, %80 ], [ %74, %87 ]
  %112 = icmp eq i32 %0, 0
  br i1 %112, label %215, label %113

113:                                              ; preds = %107
  %114 = load i32, ptr %11, align 4, !tbaa !68
  %115 = mul nsw i32 %114, %0
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %3, i64 %116
  %118 = and i32 %110, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %140, label %120

120:                                              ; preds = %113
  %121 = and i32 %111, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = sitofp i32 %0 to float
  %125 = tail call float @llvm.fmuladd.f32(float %124, float %65, float 0.000000e+00)
  %126 = tail call float @llvm.floor.f32(float %125)
  %127 = fptosi float %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %123
  %130 = sitofp i32 %127 to float
  %131 = fsub float %125, %130
  br label %132

132:                                              ; preds = %120, %129
  %133 = phi i32 [ %127, %129 ], [ %0, %120 ]
  %134 = phi float [ %131, %129 ], [ 0.000000e+00, %120 ]
  %135 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %136 = load i32, ptr %135, align 8, !tbaa !56
  %137 = mul nsw i32 %136, %133
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %23, i64 %138
  br label %140

140:                                              ; preds = %132, %123, %113
  %141 = phi float [ %125, %123 ], [ 0.000000e+00, %113 ], [ %134, %132 ]
  %142 = phi ptr [ %23, %123 ], [ %23, %113 ], [ %139, %132 ]
  %143 = and i32 %110, 2
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %165, label %145

145:                                              ; preds = %140
  %146 = and i32 %111, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %145
  %149 = sitofp i32 %0 to float
  %150 = tail call float @llvm.fmuladd.f32(float %149, float %66, float 0.000000e+00)
  %151 = tail call float @llvm.floor.f32(float %150)
  %152 = fptosi float %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %148
  %155 = sitofp i32 %152 to float
  %156 = fsub float %150, %155
  br label %157

157:                                              ; preds = %145, %154
  %158 = phi i32 [ %152, %154 ], [ %0, %145 ]
  %159 = phi float [ %156, %154 ], [ 0.000000e+00, %145 ]
  %160 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %161 = load i32, ptr %160, align 8, !tbaa !56
  %162 = mul nsw i32 %161, %158
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %26, i64 %163
  br label %165

165:                                              ; preds = %157, %148, %140
  %166 = phi float [ %150, %148 ], [ 0.000000e+00, %140 ], [ %159, %157 ]
  %167 = phi ptr [ %26, %148 ], [ %26, %140 ], [ %164, %157 ]
  %168 = and i32 %110, 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %190, label %170

170:                                              ; preds = %165
  %171 = and i32 %111, 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %170
  %174 = sitofp i32 %0 to float
  %175 = tail call float @llvm.fmuladd.f32(float %174, float %108, float 0.000000e+00)
  %176 = tail call float @llvm.floor.f32(float %175)
  %177 = fptosi float %176 to i32
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %173
  %180 = sitofp i32 %177 to float
  %181 = fsub float %175, %180
  br label %182

182:                                              ; preds = %170, %179
  %183 = phi i32 [ %177, %179 ], [ %0, %170 ]
  %184 = phi float [ %181, %179 ], [ 0.000000e+00, %170 ]
  %185 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %186 = load i32, ptr %185, align 8, !tbaa !56
  %187 = mul nsw i32 %186, %183
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %29, i64 %188
  br label %190

190:                                              ; preds = %182, %173, %165
  %191 = phi float [ %175, %173 ], [ 0.000000e+00, %165 ], [ %184, %182 ]
  %192 = phi ptr [ %29, %173 ], [ %29, %165 ], [ %189, %182 ]
  %193 = and i32 %110, 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %215, label %195

195:                                              ; preds = %190
  %196 = and i32 %111, 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %195
  %199 = sitofp i32 %0 to float
  %200 = tail call float @llvm.fmuladd.f32(float %199, float %109, float 0.000000e+00)
  %201 = tail call float @llvm.floor.f32(float %200)
  %202 = fptosi float %201 to i32
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %198
  %205 = sitofp i32 %202 to float
  %206 = fsub float %200, %205
  br label %207

207:                                              ; preds = %195, %204
  %208 = phi i32 [ %202, %204 ], [ %0, %195 ]
  %209 = phi float [ %206, %204 ], [ 0.000000e+00, %195 ]
  %210 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %211 = load i32, ptr %210, align 8, !tbaa !56
  %212 = mul nsw i32 %211, %208
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, ptr %32, i64 %213
  br label %215

215:                                              ; preds = %207, %190, %198, %107
  %216 = phi ptr [ %117, %198 ], [ %117, %190 ], [ %3, %107 ], [ %117, %207 ]
  %217 = phi float [ %141, %198 ], [ %141, %190 ], [ 0.000000e+00, %107 ], [ %141, %207 ]
  %218 = phi float [ %166, %198 ], [ %166, %190 ], [ 0.000000e+00, %107 ], [ %166, %207 ]
  %219 = phi float [ %191, %198 ], [ %191, %190 ], [ 0.000000e+00, %107 ], [ %191, %207 ]
  %220 = phi float [ %200, %198 ], [ 0.000000e+00, %190 ], [ 0.000000e+00, %107 ], [ %209, %207 ]
  %221 = phi ptr [ %142, %198 ], [ %142, %190 ], [ %23, %107 ], [ %142, %207 ]
  %222 = phi ptr [ %167, %198 ], [ %167, %190 ], [ %26, %107 ], [ %167, %207 ]
  %223 = phi ptr [ %192, %198 ], [ %192, %190 ], [ %29, %107 ], [ %192, %207 ]
  %224 = phi ptr [ %32, %198 ], [ %32, %190 ], [ %32, %107 ], [ %214, %207 ]
  store i8 1, ptr %16, align 1, !tbaa !55
  %225 = getelementptr inbounds [8 x i8], ptr %16, i64 0, i64 1
  store i8 100, ptr %225, align 1, !tbaa !55
  %226 = getelementptr inbounds [8 x i8], ptr %16, i64 0, i64 2
  store i8 0, ptr %226, align 1, !tbaa !55
  %227 = icmp eq i32 %8, 2
  %228 = icmp sgt i32 %21, %0
  br i1 %228, label %229, label %367

229:                                              ; preds = %215
  %230 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %231 = load i32, ptr %230, align 8, !tbaa !56
  %232 = mul nsw i32 %231, 3
  %233 = select i1 %227, i32 %232, i32 %231
  %234 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 3
  %235 = select i1 %227, ptr %16, ptr %234
  %236 = and i32 %110, 1
  %237 = icmp eq i32 %236, 0
  %238 = and i32 %111, 1
  %239 = icmp eq i32 %238, 0
  %240 = sext i32 %233 to i64
  %241 = and i32 %110, 2
  %242 = icmp eq i32 %241, 0
  %243 = and i32 %111, 2
  %244 = icmp eq i32 %243, 0
  %245 = and i32 %110, 4
  %246 = icmp eq i32 %245, 0
  %247 = and i32 %111, 4
  %248 = icmp eq i32 %247, 0
  %249 = and i32 %110, 8
  %250 = icmp eq i32 %249, 0
  %251 = and i32 %111, 8
  %252 = icmp eq i32 %251, 0
  br label %253

253:                                              ; preds = %229, %360
  %254 = phi ptr [ %224, %229 ], [ %362, %360 ]
  %255 = phi ptr [ %223, %229 ], [ %347, %360 ]
  %256 = phi ptr [ %222, %229 ], [ %332, %360 ]
  %257 = phi ptr [ %221, %229 ], [ %317, %360 ]
  %258 = phi i32 [ %0, %229 ], [ %365, %360 ]
  %259 = phi float [ %220, %229 ], [ %361, %360 ]
  %260 = phi float [ %219, %229 ], [ %346, %360 ]
  %261 = phi float [ %218, %229 ], [ %331, %360 ]
  %262 = phi float [ %217, %229 ], [ %316, %360 ]
  %263 = phi ptr [ %216, %229 ], [ %302, %360 ]
  %264 = load i8, ptr %235, align 1, !tbaa !55
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %301, label %266

266:                                              ; preds = %253, %292
  %267 = phi ptr [ %297, %292 ], [ %235, %253 ]
  %268 = phi ptr [ %298, %292 ], [ %10, %253 ]
  %269 = phi ptr [ %296, %292 ], [ %263, %253 ]
  %270 = getelementptr inbounds i8, ptr %267, i64 1
  %271 = load i8, ptr %270, align 1, !tbaa !55
  switch i8 %271, label %274 [
    i8 4, label %292
    i8 101, label %272
    i8 100, label %273
  ]

272:                                              ; preds = %266
  br label %292

273:                                              ; preds = %266
  br label %292

274:                                              ; preds = %266
  %275 = load ptr, ptr %12, align 8, !tbaa !42
  %276 = icmp eq ptr %275, null
  br i1 %276, label %279, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %278(ptr noundef nonnull %275) #16
  br label %279

279:                                              ; preds = %277, %274
  %280 = load ptr, ptr %13, align 8, !tbaa !42
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %283(ptr noundef nonnull %280) #16
  br label %284

284:                                              ; preds = %282, %279
  %285 = load ptr, ptr %14, align 8, !tbaa !42
  %286 = icmp eq ptr %285, null
  br i1 %286, label %289, label %287

287:                                              ; preds = %284
  %288 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %288(ptr noundef nonnull %285) #16
  br label %289

289:                                              ; preds = %287, %284
  %290 = load ptr, ptr %15, align 8, !tbaa !42
  %291 = icmp eq ptr %290, null
  br i1 %291, label %388, label %385

292:                                              ; preds = %266, %273, %272
  %293 = phi i32 [ 12, %273 ], [ 4, %272 ], [ 3, %266 ]
  tail call fastcc void @flerp(i32 noundef %293, ptr noundef %269, ptr noundef %257, ptr noundef %256, ptr noundef %255, ptr noundef %254, ptr noundef %7) #18
  %294 = load i32, ptr %268, align 4, !tbaa !68
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, ptr %269, i64 %295
  %297 = getelementptr inbounds i8, ptr %267, i64 2
  %298 = getelementptr inbounds i32, ptr %268, i64 1
  %299 = load i8, ptr %297, align 1, !tbaa !55
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %266, !llvm.loop !200

301:                                              ; preds = %292, %253
  %302 = phi ptr [ %263, %253 ], [ %296, %292 ]
  br i1 %237, label %315, label %303

303:                                              ; preds = %301
  br i1 %239, label %313, label %304

304:                                              ; preds = %303
  %305 = fadd float %65, %262
  %306 = fcmp ult float %305, 1.000000e+00
  br i1 %306, label %315, label %307

307:                                              ; preds = %304, %307
  %308 = phi ptr [ %311, %307 ], [ %257, %304 ]
  %309 = phi float [ %310, %307 ], [ %305, %304 ]
  %310 = fadd float %309, -1.000000e+00
  %311 = getelementptr inbounds i8, ptr %308, i64 %240
  %312 = fcmp ult float %310, 1.000000e+00
  br i1 %312, label %315, label %307, !llvm.loop !201

313:                                              ; preds = %303
  %314 = getelementptr inbounds i8, ptr %257, i64 %240
  br label %315

315:                                              ; preds = %307, %304, %313, %301
  %316 = phi float [ %262, %313 ], [ %262, %301 ], [ %305, %304 ], [ %310, %307 ]
  %317 = phi ptr [ %314, %313 ], [ %257, %301 ], [ %257, %304 ], [ %311, %307 ]
  br i1 %242, label %330, label %318

318:                                              ; preds = %315
  br i1 %244, label %328, label %319

319:                                              ; preds = %318
  %320 = fadd float %66, %261
  %321 = fcmp ult float %320, 1.000000e+00
  br i1 %321, label %330, label %322

322:                                              ; preds = %319, %322
  %323 = phi ptr [ %326, %322 ], [ %256, %319 ]
  %324 = phi float [ %325, %322 ], [ %320, %319 ]
  %325 = fadd float %324, -1.000000e+00
  %326 = getelementptr inbounds i8, ptr %323, i64 %240
  %327 = fcmp ult float %325, 1.000000e+00
  br i1 %327, label %330, label %322, !llvm.loop !202

328:                                              ; preds = %318
  %329 = getelementptr inbounds i8, ptr %256, i64 %240
  br label %330

330:                                              ; preds = %322, %319, %328, %315
  %331 = phi float [ %261, %328 ], [ %261, %315 ], [ %320, %319 ], [ %325, %322 ]
  %332 = phi ptr [ %329, %328 ], [ %256, %315 ], [ %256, %319 ], [ %326, %322 ]
  br i1 %246, label %345, label %333

333:                                              ; preds = %330
  br i1 %248, label %343, label %334

334:                                              ; preds = %333
  %335 = fadd float %108, %260
  %336 = fcmp ult float %335, 1.000000e+00
  br i1 %336, label %345, label %337

337:                                              ; preds = %334, %337
  %338 = phi ptr [ %341, %337 ], [ %255, %334 ]
  %339 = phi float [ %340, %337 ], [ %335, %334 ]
  %340 = fadd float %339, -1.000000e+00
  %341 = getelementptr inbounds i8, ptr %338, i64 %240
  %342 = fcmp ult float %340, 1.000000e+00
  br i1 %342, label %345, label %337, !llvm.loop !203

343:                                              ; preds = %333
  %344 = getelementptr inbounds i8, ptr %255, i64 %240
  br label %345

345:                                              ; preds = %337, %334, %343, %330
  %346 = phi float [ %260, %343 ], [ %260, %330 ], [ %335, %334 ], [ %340, %337 ]
  %347 = phi ptr [ %344, %343 ], [ %255, %330 ], [ %255, %334 ], [ %341, %337 ]
  br i1 %250, label %360, label %348

348:                                              ; preds = %345
  br i1 %252, label %358, label %349

349:                                              ; preds = %348
  %350 = fadd float %109, %259
  %351 = fcmp ult float %350, 1.000000e+00
  br i1 %351, label %360, label %352

352:                                              ; preds = %349, %352
  %353 = phi ptr [ %356, %352 ], [ %254, %349 ]
  %354 = phi float [ %355, %352 ], [ %350, %349 ]
  %355 = fadd float %354, -1.000000e+00
  %356 = getelementptr inbounds i8, ptr %353, i64 %240
  %357 = fcmp ult float %355, 1.000000e+00
  br i1 %357, label %360, label %352, !llvm.loop !204

358:                                              ; preds = %348
  %359 = getelementptr inbounds i8, ptr %254, i64 %240
  br label %360

360:                                              ; preds = %352, %349, %358, %345
  %361 = phi float [ %259, %358 ], [ %259, %345 ], [ %350, %349 ], [ %355, %352 ]
  %362 = phi ptr [ %359, %358 ], [ %254, %345 ], [ %254, %349 ], [ %356, %352 ]
  %363 = add nsw i32 %258, 2
  %364 = select i1 %227, i32 %363, i32 %258
  %365 = add nsw i32 %364, 1
  %366 = icmp slt i32 %365, %21
  br i1 %366, label %253, label %367, !llvm.loop !205

367:                                              ; preds = %360, %215
  %368 = load ptr, ptr %12, align 8, !tbaa !42
  %369 = icmp eq ptr %368, null
  br i1 %369, label %372, label %370

370:                                              ; preds = %367
  %371 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %371(ptr noundef nonnull %368) #16
  br label %372

372:                                              ; preds = %370, %367
  %373 = load ptr, ptr %13, align 8, !tbaa !42
  %374 = icmp eq ptr %373, null
  br i1 %374, label %377, label %375

375:                                              ; preds = %372
  %376 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %376(ptr noundef nonnull %373) #16
  br label %377

377:                                              ; preds = %375, %372
  %378 = load ptr, ptr %14, align 8, !tbaa !42
  %379 = icmp eq ptr %378, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %377
  %381 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %381(ptr noundef nonnull %378) #16
  br label %382

382:                                              ; preds = %380, %377
  %383 = load ptr, ptr %15, align 8, !tbaa !42
  %384 = icmp eq ptr %383, null
  br i1 %384, label %388, label %385

385:                                              ; preds = %382, %289
  %386 = phi ptr [ %290, %289 ], [ %383, %382 ]
  %387 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %387(ptr noundef nonnull %386) #16
  br label %388

388:                                              ; preds = %385, %382, %289, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: optsize
declare void @interp_v4_v4v4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @flerp(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #6 !PGOFuncName !206 {
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %7
  %10 = getelementptr inbounds float, ptr %6, i64 1
  %11 = getelementptr inbounds float, ptr %6, i64 2
  %12 = getelementptr inbounds float, ptr %6, i64 3
  %13 = zext nneg i32 %0 to i64
  br label %14

14:                                               ; preds = %9, %14
  %15 = phi i64 [ 0, %9 ], [ %33, %14 ]
  %16 = load float, ptr %6, align 4, !tbaa !67
  %17 = getelementptr inbounds float, ptr %2, i64 %15
  %18 = load float, ptr %17, align 4, !tbaa !67
  %19 = load float, ptr %10, align 4, !tbaa !67
  %20 = getelementptr inbounds float, ptr %3, i64 %15
  %21 = load float, ptr %20, align 4, !tbaa !67
  %22 = fmul float %19, %21
  %23 = tail call float @llvm.fmuladd.f32(float %16, float %18, float %22)
  %24 = load float, ptr %11, align 4, !tbaa !67
  %25 = getelementptr inbounds float, ptr %4, i64 %15
  %26 = load float, ptr %25, align 4, !tbaa !67
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %23)
  %28 = load float, ptr %12, align 4, !tbaa !67
  %29 = getelementptr inbounds float, ptr %5, i64 %15
  %30 = load float, ptr %29, align 4, !tbaa !67
  %31 = tail call float @llvm.fmuladd.f32(float %28, float %30, float %27)
  %32 = getelementptr inbounds float, ptr %1, i64 %15
  store float %31, ptr %32, align 4, !tbaa !67
  %33 = add nuw nsw i64 %15, 1
  %34 = icmp eq i64 %33, %13
  br i1 %34, label %35, label %14, !llvm.loop !207

35:                                               ; preds = %14, %7
  ret void
}

; Function Attrs: optsize
declare void @outside_lattice(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_rel_cu_key(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !208 {
  %6 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %5, %33
  %10 = phi ptr [ %36, %33 ], [ %7, %5 ]
  %11 = phi i32 [ %35, %33 ], [ 0, %5 ]
  %12 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !122
  %20 = mul nsw i32 %19, %17
  br label %29

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !118
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !120
  %28 = mul nsw i32 %27, 3
  br label %29

29:                                               ; preds = %25, %15
  %30 = phi i32 [ %20, %15 ], [ %28, %25 ]
  %31 = phi i32 [ 1, %15 ], [ 2, %25 ]
  %32 = add nsw i32 %30, %11
  tail call void @BKE_key_evaluate_relative(i32 noundef %11, i32 noundef %32, i32 noundef %4, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef %31) #18
  br label %33

33:                                               ; preds = %29, %21
  %34 = phi i32 [ 0, %21 ], [ %30, %29 ]
  %35 = add nsw i32 %34, %11
  %36 = load ptr, ptr %10, align 8, !tbaa !42
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %9, !llvm.loop !209

38:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_cu_key(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !210 {
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %7, %35
  %12 = phi ptr [ %38, %35 ], [ %9, %7 ]
  %13 = phi i32 [ %37, %35 ], [ 0, %7 ]
  %14 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !121
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !120
  %20 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !122
  %22 = mul nsw i32 %21, %19
  br label %31

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !118
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !120
  %30 = mul nsw i32 %29, 3
  br label %31

31:                                               ; preds = %27, %17
  %32 = phi i32 [ %22, %17 ], [ %30, %27 ]
  %33 = phi i32 [ 1, %17 ], [ 2, %27 ]
  %34 = add nsw i32 %32, %13
  tail call fastcc void @do_key(i32 noundef %13, i32 noundef %34, i32 noundef %6, ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %33) #18
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i32 [ 0, %23 ], [ %32, %31 ]
  %37 = add nsw i32 %36, %13
  %38 = load ptr, ptr %12, align 8, !tbaa !42
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %11, !llvm.loop !211

40:                                               ; preds = %35, %7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { optsize }

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
!34 = !{!35, !36, i64 40}
!35 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !39, i64 176, !39, i64 180}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!36, !36, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{!47, !36, i64 0}
!47 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !48, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!48 = !{!"ListBase", !36, i64 0, !36, i64 8}
!49 = !{!50, !40, i64 208}
!50 = !{!"Key", !51, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !41, i64 168, !41, i64 172, !48, i64 176, !36, i64 192, !36, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !39, i64 216, !41, i64 220}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!52 = !{!50, !36, i64 200}
!53 = !{!50, !41, i64 220}
!54 = !{!40, !40, i64 0}
!55 = !{!37, !37, i64 0}
!56 = !{!50, !41, i64 168}
!57 = !{!50, !36, i64 128}
!58 = distinct !{!58, !44}
!59 = !{!50, !36, i64 120}
!60 = distinct !{!60, !44}
!61 = !{!50, !36, i64 24}
!62 = !{!35, !39, i64 16}
!63 = distinct !{!63, !44}
!64 = distinct !{!64, !44}
!65 = !{!35, !36, i64 8}
!66 = !{!50, !36, i64 176}
!67 = !{!39, !39, i64 0}
!68 = !{!41, !41, i64 0}
!69 = !{i8 0, i8 2}
!70 = !{!35, !39, i64 20}
!71 = !{!35, !40, i64 30}
!72 = !{!35, !41, i64 32}
!73 = !{!35, !40, i64 28}
!74 = distinct !{!74, !44}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !44}
!77 = !{!"key.c:key_pointer_size"}
!78 = !{!"key.c:cp_key"}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !44}
!82 = !{!"key.c:key_block_get_data"}
!83 = !{!84, !36, i64 272}
!84 = !{!"Mesh", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !85, i64 280, !85, i64 480, !85, i64 680, !85, i64 880, !85, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !39, i64 1352, !41, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !40, i64 1366, !36, i64 1368}
!85 = !{!"CustomData", !36, i64 0, !37, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !36, i64 184, !36, i64 192}
!86 = !{!87, !36, i64 0}
!87 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !41, i64 32, !36, i64 40, !36, i64 48, !88, i64 56, !36, i64 64, !41, i64 72, !36, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !41, i64 104}
!88 = !{!"long", !37, i64 0}
!89 = !{!90, !41, i64 0}
!90 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !41, i64 128, !36, i64 136, !85, i64 144, !85, i64 344, !85, i64 544, !85, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !48, i64 960, !36, i64 976, !48, i64 984, !36, i64 1000}
!91 = distinct !{!91, !44}
!92 = !{!"key.c:rel_flerp"}
!93 = distinct !{!93, !44}
!94 = !{!50, !40, i64 210}
!95 = distinct !{!95, !44}
!96 = !{!"key.c:get_weights_array"}
!97 = !{!98, !40, i64 136}
!98 = !{!"Object", !51, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !99, i64 312, !36, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !39, i64 616, !39, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !39, i64 1048, !39, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !39, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !88, i64 1304, !88, i64 1312, !41, i64 1320, !41, i64 1324, !48, i64 1328, !48, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !48, i64 1400, !36, i64 1416}
!99 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!100 = !{!98, !36, i64 296}
!101 = !{!84, !36, i64 248}
!102 = !{!84, !41, i64 1280}
!103 = !{!104, !36, i64 200}
!104 = !{!"Lattice", !51, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !41, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!105 = !{!104, !40, i64 128}
!106 = !{!104, !40, i64 130}
!107 = !{!104, !40, i64 132}
!108 = !{!109, !36, i64 8}
!109 = !{!"WeightsArrayCache", !41, i64 0, !36, i64 8}
!110 = !{!109, !41, i64 0}
!111 = !{!112, !36, i64 0}
!112 = !{!"BMVert", !113, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!113 = !{!"BMHeader", !36, i64 0, !41, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!114 = distinct !{!114, !44}
!115 = distinct !{!115, !44}
!116 = distinct !{!116, !44}
!117 = distinct !{!117, !44}
!118 = !{!119, !36, i64 72}
!119 = !{!"Nurb", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !37, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!120 = !{!119, !41, i64 24}
!121 = !{!119, !36, i64 64}
!122 = !{!119, !41, i64 28}
!123 = distinct !{!123, !44}
!124 = !{!98, !37, i64 1265}
!125 = !{!98, !40, i64 1266}
!126 = !{!"key.c:BLI_listbase_is_empty"}
!127 = !{!48, !36, i64 0}
!128 = !{!"key.c:cp_cu_key"}
!129 = distinct !{!129, !44}
!130 = !{!"key.c:do_mesh_key"}
!131 = !{!50, !40, i64 212}
!132 = !{!50, !39, i64 216}
!133 = distinct !{!133, !44}
!134 = !{!"key.c:do_latt_key"}
!135 = distinct !{!135, !44}
!136 = !{!104, !40, i64 134}
!137 = !{!"key.c:do_curve_key"}
!138 = distinct !{!138, !44}
!139 = distinct !{!139, !44}
!140 = !{!141, !36, i64 192}
!141 = !{!"Curve", !51, i64 0, !36, i64 120, !36, i64 128, !48, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !39, i64 252, !39, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !37, i64 300, !40, i64 304, !37, i64 306, !37, i64 307, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !41, i64 488, !41, i64 492, !36, i64 496, !142, i64 504, !39, i64 512, !39, i64 516, !39, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!142 = !{!"CharInfo", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !40, i64 6}
!143 = !{!50, !36, i64 184}
!144 = !{!35, !40, i64 24}
!145 = !{!35, !41, i64 36}
!146 = distinct !{!146, !44}
!147 = distinct !{!147, !44}
!148 = !{!35, !36, i64 0}
!149 = !{!104, !36, i64 192}
!150 = !{!104, !36, i64 176}
!151 = distinct !{!151, !44}
!152 = !{!"key.c:copy_v3_v3"}
!153 = distinct !{!153, !44}
!154 = !{!"key.c:min_ii"}
!155 = !{!156, !39, i64 36}
!156 = !{!"BezTriple", !37, i64 0, !39, i64 36, !39, i64 40, !39, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !39, i64 56, !39, i64 60, !39, i64 64, !37, i64 68}
!157 = distinct !{!157, !44}
!158 = !{!159, !39, i64 16}
!159 = !{!"BPoint", !37, i64 0, !39, i64 16, !39, i64 20, !40, i64 24, !40, i64 26, !39, i64 28, !39, i64 32}
!160 = distinct !{!160, !44}
!161 = distinct !{!161, !44}
!162 = distinct !{!162, !44}
!163 = distinct !{!163, !44}
!164 = !{!119, !36, i64 0}
!165 = distinct !{!165, !44}
!166 = !{!84, !36, i64 144}
!167 = !{!84, !36, i64 232}
!168 = distinct !{!168, !44}
!169 = distinct !{!169, !44}
!170 = distinct !{!170, !44}
!171 = distinct !{!171, !44}
!172 = distinct !{!172, !44}
!173 = distinct !{!173, !44}
!174 = distinct !{!174, !44}
!175 = distinct !{!175, !44}
!176 = distinct !{!176, !44}
!177 = distinct !{!177, !44}
!178 = distinct !{!178, !44}
!179 = distinct !{!179, !44}
!180 = distinct !{!180, !44}
!181 = distinct !{!181, !44}
!182 = distinct !{!182, !44}
!183 = distinct !{!183, !44}
!184 = distinct !{!184, !44}
!185 = !{!"key.c:add_v3_v3"}
!186 = distinct !{!186, !44}
!187 = !{!"key.c:BM_iter_new"}
!188 = !{!"key.c:BM_iter_step"}
!189 = !{!190, !36, i64 48}
!190 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !41, i64 56, !37, i64 60}
!191 = !{!"key.c:BM_iter_init"}
!192 = !{!190, !37, i64 60}
!193 = !{!190, !36, i64 40}
!194 = !{!90, !36, i64 32}
!195 = !{!"key.c:max_ii"}
!196 = !{!"key.c:setkeys"}
!197 = !{!48, !36, i64 8}
!198 = distinct !{!198, !44}
!199 = !{!"key.c:do_key"}
!200 = distinct !{!200, !44}
!201 = distinct !{!201, !44}
!202 = distinct !{!202, !44}
!203 = distinct !{!203, !44}
!204 = distinct !{!204, !44}
!205 = distinct !{!205, !44}
!206 = !{!"key.c:flerp"}
!207 = distinct !{!207, !44}
!208 = !{!"key.c:do_rel_cu_key"}
!209 = distinct !{!209, !44}
!210 = !{!"key.c:do_cu_key"}
!211 = distinct !{!211, !44}
