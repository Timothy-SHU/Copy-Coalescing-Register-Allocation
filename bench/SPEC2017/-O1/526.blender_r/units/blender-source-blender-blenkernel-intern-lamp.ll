; ModuleID = 'blender/source/blender/blenkernel/intern/lamp.c'
source_filename = "blender/source/blender/blenkernel/intern/lamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"copylamptex\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"localize_lamp\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_lamp_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16716, ptr noundef %1) #3
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 10
  store float 1.000000e+00, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 9
  store float 1.000000e+00, ptr %5, align 4, !tbaa !43
  %6 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 8
  store float 1.000000e+00, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 7
  store float 1.000000e+00, ptr %7, align 4, !tbaa !45
  %8 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 15
  store float 1.000000e+00, ptr %8, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 19
  store float 1.000000e+00, ptr %9, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 16
  store float 2.500000e+01, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 17
  store float 0x3FE921FB60000000, ptr %11, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 18
  store float 0x3FC3333340000000, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 21
  store float 1.000000e+00, ptr %13, align 4, !tbaa !51
  %14 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  store i32 1, ptr %14, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 32
  store i16 512, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 25
  store float 5.000000e-01, ptr %16, align 4, !tbaa !54
  %17 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 26
  store float 4.000000e+01, ptr %17, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 33
  store i16 3, ptr %18, align 2, !tbaa !56
  %19 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 27
  store float 1.000000e+00, ptr %19, align 4, !tbaa !57
  %20 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 28
  store float 3.000000e+00, ptr %20, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 29
  store float 0x3FA99999A0000000, ptr %21, align 4, !tbaa !59
  %22 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 40
  store i16 1, ptr %22, align 2, !tbaa !60
  %23 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 39
  store i16 1, ptr %23, align 4, !tbaa !61
  %24 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 38
  store i16 1, ptr %24, align 2, !tbaa !62
  %25 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 45
  store float 0x3FB99999A0000000, ptr %25, align 4, !tbaa !63
  %26 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 44
  store float 0x3FB99999A0000000, ptr %26, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 43
  store float 0x3FB99999A0000000, ptr %27, align 4, !tbaa !65
  %28 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 34
  store i16 1, ptr %28, align 4, !tbaa !66
  %29 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 37
  store i8 2, ptr %29, align 1, !tbaa !67
  %30 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 47
  store i16 1, ptr %30, align 4, !tbaa !68
  %31 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 46
  store float 0x3F50624DE0000000, ptr %31, align 8, !tbaa !69
  %32 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 73
  store ptr null, ptr %32, align 8, !tbaa !70
  %33 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 23
  store i16 2, ptr %33, align 8, !tbaa !71
  %34 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #3
  %35 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 22
  store ptr %34, ptr %35, align 8, !tbaa !72
  %36 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 51
  store i16 0, ptr %36, align 4, !tbaa !73
  %37 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 53
  store float 1.000000e+00, ptr %37, align 8, !tbaa !74
  %38 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 54
  store float 1.000000e+00, ptr %38, align 4, !tbaa !75
  %39 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 55
  store float 1.000000e+00, ptr %39, align 8, !tbaa !76
  %40 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 56
  store float 1.000000e+00, ptr %40, align 4, !tbaa !77
  %41 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 57
  store float 1.000000e+00, ptr %41, align 8, !tbaa !78
  %42 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 59
  store float 2.000000e+00, ptr %42, align 8, !tbaa !79
  %43 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 60
  store float 1.000000e+00, ptr %43, align 4, !tbaa !80
  %44 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 61
  store float 1.000000e+00, ptr %44, align 8, !tbaa !81
  %45 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 62
  store float 1.000000e+00, ptr %45, align 4, !tbaa !82
  %46 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 58
  store float 1.000000e+00, ptr %46, align 4, !tbaa !83
  %47 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 52
  store i16 1, ptr %47, align 2, !tbaa !84
  %48 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 63
  store float 1.000000e+00, ptr %48, align 8, !tbaa !85
  %49 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 66
  store i16 2, ptr %49, align 4, !tbaa !86
  %50 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 64
  store float 1.000000e+00, ptr %50, align 4, !tbaa !87
  %51 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 65
  store float 1.000000e+01, ptr %51, align 8, !tbaa !88
  tail call void @curvemapping_initialize(ptr noundef %34) #3
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_lamp_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #3
  br label %3

3:                                                ; preds = %1, %16
  %4 = phi i64 [ 0, %1 ], [ %17, %16 ]
  %5 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 69, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !89
  %10 = tail call ptr %9(i64 noundef 312, ptr noundef nonnull @.str) #3
  store ptr %10, ptr %5, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %4
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %10, ptr noundef nonnull align 8 dereferenceable(312) %12, i64 312, i1 false)
  %13 = load ptr, ptr %5, align 8, !tbaa !89
  %14 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  tail call void @id_us_plus(ptr noundef %15) #3
  br label %16

16:                                               ; preds = %3, %8
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 18
  br i1 %18, label %19, label %3, !llvm.loop !92

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 22
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = tail call ptr @curvemapping_copy(ptr noundef %21) #3
  %23 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 22
  store ptr %22, ptr %23, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %25) #3
  %29 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 74
  store ptr %28, ptr %29, align 8, !tbaa !95
  br label %30

30:                                               ; preds = %27, %19
  %31 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 73
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @BKE_previewimg_copy(ptr noundef nonnull %32) #3
  %36 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 73
  store ptr %35, ptr %36, align 8, !tbaa !70
  br label %37

37:                                               ; preds = %34, %30
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #1

declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_previewimg_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @localize_lamp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy_nolib(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %3

3:                                                ; preds = %1, %16
  %4 = phi i64 [ 0, %1 ], [ %17, %16 ]
  %5 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 69, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !89
  %10 = tail call ptr %9(i64 noundef 312, ptr noundef nonnull @.str.1) #3
  store ptr %10, ptr %5, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %4
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %10, ptr noundef nonnull align 8 dereferenceable(312) %12, i64 312, i1 false)
  %13 = load ptr, ptr %5, align 8, !tbaa !89
  %14 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  tail call void @id_us_plus(ptr noundef %15) #3
  br label %16

16:                                               ; preds = %3, %8
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 18
  br i1 %18, label %19, label %3, !llvm.loop !96

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 22
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = tail call ptr @curvemapping_copy(ptr noundef %21) #3
  %23 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 22
  store ptr %22, ptr %23, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = tail call ptr @ntreeLocalize(ptr noundef nonnull %25) #3
  %29 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 74
  store ptr %28, ptr %29, align 8, !tbaa !95
  br label %30

30:                                               ; preds = %27, %19
  %31 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 73
  store ptr null, ptr %31, align 8, !tbaa !70
  ret ptr %2
}

declare ptr @BKE_libblock_copy_nolib(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_lamp_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !97
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = icmp eq ptr %4, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !101
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %65, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10, %27
  %15 = phi ptr [ %30, %27 ], [ %12, %10 ]
  %16 = phi i8 [ %29, %27 ], [ 0, %10 ]
  %17 = phi i8 [ %28, %27 ], [ 0, %10 ]
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !106
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i8 1, i8 %17
  %26 = select i1 %24, i8 %16, i8 1
  br label %27

27:                                               ; preds = %21, %14
  %28 = phi i8 [ %17, %14 ], [ %25, %21 ]
  %29 = phi i8 [ %16, %14 ], [ %26, %21 ]
  %30 = load ptr, ptr %15, align 8, !tbaa !89
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %14, !llvm.loop !107

32:                                               ; preds = %27
  %33 = icmp ne i8 %28, 0
  br label %34

34:                                               ; preds = %32, %10
  %35 = phi i1 [ false, %10 ], [ %33, %32 ]
  %36 = phi i8 [ 0, %10 ], [ %29, %32 ]
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %65, label %39

39:                                               ; preds = %34
  %40 = icmp ne i8 %36, 0
  %41 = select i1 %35, i1 %40, i1 false
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = tail call ptr @BKE_lamp_copy(ptr noundef %0)
  %44 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 6
  store i32 0, ptr %44, align 4, !tbaa !101
  %45 = load ptr, ptr %3, align 8, !tbaa !100
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %45, ptr noundef %43) #3
  %46 = load ptr, ptr %11, align 8, !tbaa !89
  %47 = icmp eq ptr %46, null
  br i1 %47, label %66, label %48

48:                                               ; preds = %42, %62
  %49 = phi ptr [ %63, %62 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !102
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !106
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  store ptr %43, ptr %50, align 8, !tbaa !102
  %58 = load i32, ptr %44, align 4, !tbaa !101
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %44, align 4, !tbaa !101
  %60 = load i32, ptr %7, align 4, !tbaa !101
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr %7, align 4, !tbaa !101
  br label %62

62:                                               ; preds = %53, %57, %48
  %63 = load ptr, ptr %49, align 8, !tbaa !89
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %48, !llvm.loop !108

65:                                               ; preds = %34, %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #3
  br label %66

66:                                               ; preds = %62, %65, %42, %39, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_lamp_free(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %17
  %3 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %4 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MTex, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !109
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 4, !tbaa !109
  br label %15

15:                                               ; preds = %7, %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  tail call void %16(ptr noundef nonnull %5) #3
  br label %17

17:                                               ; preds = %2, %15
  %18 = add nuw nsw i64 %3, 1
  %19 = icmp eq i64 %18, 18
  br i1 %19, label %20, label %2, !llvm.loop !112

20:                                               ; preds = %17
  tail call void @BKE_free_animdata(ptr noundef %0) #3
  %21 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 22
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  tail call void @curvemapping_free(ptr noundef %22) #3
  %23 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %24 = load ptr, ptr %23, align 8, !tbaa !95
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  tail call void @ntreeFreeTree(ptr noundef nonnull %24) #3
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  %28 = load ptr, ptr %23, align 8, !tbaa !95
  tail call void %27(ptr noundef %28) #3
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 73
  tail call void @BKE_previewimg_free(ptr noundef nonnull %30) #3
  tail call void @BKE_icon_delete(ptr noundef %0) #3
  %31 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %31, align 8, !tbaa !113
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #1

declare void @curvemapping_free(ptr noundef) local_unnamed_addr #1

declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #1

declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_icon_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lamp_drivers_update(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !114
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = or disjoint i16 %5, 1024
  store i16 %9, ptr %4, align 2, !tbaa !114
  %10 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.AnimData, ptr %11, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, float noundef %2, i16 noundef signext 1) #3
  br label %18

18:                                               ; preds = %17, %13, %8
  %19 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 74
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call fastcc void @lamp_node_drivers_update(ptr noundef %0, ptr noundef nonnull %20, float noundef %2)
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i16, ptr %4, align 2, !tbaa !114
  %25 = and i16 %24, -1025
  store i16 %25, ptr %4, align 2, !tbaa !114
  br label %26

26:                                               ; preds = %3, %23
  ret void
}

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lamp_node_drivers_update(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, float noundef %2, i16 noundef signext 1) #3
  br label %12

12:                                               ; preds = %11, %7, %3
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12, %26
  %17 = phi ptr [ %27, %26 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %23 = load i16, ptr %22, align 4, !tbaa !124
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @lamp_node_drivers_update(ptr noundef %0, ptr noundef nonnull %19, float noundef %2)
  br label %26

26:                                               ; preds = %16, %21, %25
  %27 = load ptr, ptr %17, align 8, !tbaa !89
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %16, !llvm.loop !125

29:                                               ; preds = %26, %12
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!34 = !{!35, !42, i64 152}
!35 = !{!"Lamp", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !37, i64 200, !40, i64 208, !40, i64 210, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !38, i64 248, !38, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !40, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !40, i64 496, !40, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!35, !42, i64 148}
!44 = !{!35, !42, i64 144}
!45 = !{!35, !42, i64 140}
!46 = !{!35, !42, i64 172}
!47 = !{!35, !42, i64 188}
!48 = !{!35, !42, i64 176}
!49 = !{!35, !42, i64 180}
!50 = !{!35, !42, i64 184}
!51 = !{!35, !42, i64 196}
!52 = !{!35, !41, i64 132}
!53 = !{!35, !40, i64 240}
!54 = !{!35, !42, i64 212}
!55 = !{!35, !42, i64 216}
!56 = !{!35, !40, i64 242}
!57 = !{!35, !42, i64 220}
!58 = !{!35, !42, i64 224}
!59 = !{!35, !42, i64 228}
!60 = !{!35, !40, i64 254}
!61 = !{!35, !40, i64 252}
!62 = !{!35, !40, i64 250}
!63 = !{!35, !42, i64 268}
!64 = !{!35, !42, i64 264}
!65 = !{!35, !42, i64 260}
!66 = !{!35, !40, i64 244}
!67 = !{!35, !38, i64 249}
!68 = !{!35, !40, i64 276}
!69 = !{!35, !42, i64 272}
!70 = !{!35, !37, i64 504}
!71 = !{!35, !40, i64 208}
!72 = !{!35, !37, i64 200}
!73 = !{!35, !40, i64 284}
!74 = !{!35, !42, i64 288}
!75 = !{!35, !42, i64 292}
!76 = !{!35, !42, i64 296}
!77 = !{!35, !42, i64 300}
!78 = !{!35, !42, i64 304}
!79 = !{!35, !42, i64 312}
!80 = !{!35, !42, i64 316}
!81 = !{!35, !42, i64 320}
!82 = !{!35, !42, i64 324}
!83 = !{!35, !42, i64 308}
!84 = !{!35, !40, i64 286}
!85 = !{!35, !42, i64 328}
!86 = !{!35, !40, i64 340}
!87 = !{!35, !42, i64 332}
!88 = !{!35, !42, i64 336}
!89 = !{!37, !37, i64 0}
!90 = !{!91, !37, i64 16}
!91 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !42, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !38, i64 132, !38, i64 133, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!35, !37, i64 512}
!96 = distinct !{!96, !93, !94}
!97 = !{!98, !37, i64 0}
!98 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !99, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!99 = !{!"ListBase", !37, i64 0, !37, i64 8}
!100 = !{!35, !37, i64 24}
!101 = !{!35, !41, i64 100}
!102 = !{!103, !37, i64 296}
!103 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !104, i64 312, !37, i64 360, !99, i64 368, !99, i64 384, !99, i64 400, !99, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !99, i64 1056, !99, i64 1072, !99, i64 1088, !99, i64 1104, !42, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !99, i64 1176, !99, i64 1192, !99, i64 1208, !99, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !105, i64 1304, !105, i64 1312, !41, i64 1320, !41, i64 1324, !99, i64 1328, !99, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !99, i64 1400, !37, i64 1416}
!104 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!105 = !{!"long", !38, i64 0}
!106 = !{!103, !37, i64 24}
!107 = distinct !{!107, !93, !94}
!108 = distinct !{!108, !93, !94}
!109 = !{!110, !41, i64 100}
!110 = !{!"Tex", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !111, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!111 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!112 = distinct !{!112, !93, !94}
!113 = !{!35, !41, i64 104}
!114 = !{!35, !40, i64 98}
!115 = !{!35, !37, i64 120}
!116 = !{!117, !37, i64 48}
!117 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !99, i64 24, !37, i64 40, !99, i64 48, !99, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !42, i64 92}
!118 = !{!119, !37, i64 120}
!119 = !{!"bNodeTree", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 200, !37, i64 208, !38, i64 216, !99, i64 224, !99, i64 240, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !40, i64 276, !40, i64 278, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !41, i64 292, !120, i64 296, !99, i64 312, !99, i64 328, !37, i64 344, !121, i64 352, !41, i64 356, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !37, i64 408, !37, i64 416, !37, i64 424}
!120 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!121 = !{!"bNodeInstanceKey", !41, i64 0}
!122 = !{!123, !37, i64 240}
!123 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !38, i64 188, !99, i64 200, !99, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !99, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !41, i64 308, !38, i64 312, !40, i64 376, !40, i64 378, !42, i64 380, !42, i64 384, !40, i64 388, !40, i64 390, !37, i64 392, !120, i64 400, !120, i64 416, !120, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !37, i64 456}
!124 = !{!123, !40, i64 172}
!125 = distinct !{!125, !93, !94}
