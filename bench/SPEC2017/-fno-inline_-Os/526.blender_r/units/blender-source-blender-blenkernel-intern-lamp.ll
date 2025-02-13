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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_lamp_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16716, ptr noundef %1) #3
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 7
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 15
  %6 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 19
  store float 1.000000e+00, ptr %6, align 4, !tbaa !38
  store <4 x float> <float 1.000000e+00, float 2.500000e+01, float 0x3FE921FB60000000, float 0x3FC3333340000000>, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 21
  store float 1.000000e+00, ptr %7, align 4, !tbaa !44
  %8 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  store i32 1, ptr %8, align 4, !tbaa !45
  %9 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 32
  store i16 512, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 25
  %11 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 33
  store i16 3, ptr %11, align 2, !tbaa !47
  store <4 x float> <float 5.000000e-01, float 4.000000e+01, float 1.000000e+00, float 3.000000e+00>, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 29
  store float 0x3FA99999A0000000, ptr %12, align 4, !tbaa !48
  %13 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 40
  store i16 1, ptr %13, align 2, !tbaa !49
  %14 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 39
  store i16 1, ptr %14, align 4, !tbaa !50
  %15 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 38
  store i16 1, ptr %15, align 2, !tbaa !51
  %16 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 43
  %17 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 34
  store i16 1, ptr %17, align 4, !tbaa !52
  %18 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 37
  store i8 2, ptr %18, align 1, !tbaa !53
  %19 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 47
  store i16 1, ptr %19, align 4, !tbaa !54
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3F50624DE0000000>, ptr %16, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 73
  store ptr null, ptr %20, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 23
  store i16 2, ptr %21, align 8, !tbaa !56
  %22 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #3
  %23 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 22
  store ptr %22, ptr %23, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 51
  store i16 0, ptr %24, align 4, !tbaa !58
  %25 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 53
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %25, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 57
  %27 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 61
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 52
  store i16 1, ptr %28, align 2, !tbaa !59
  %29 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 66
  store i16 2, ptr %29, align 4, !tbaa !60
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %27, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 65
  store float 1.000000e+01, ptr %30, align 8, !tbaa !61
  tail call void @curvemapping_initialize(ptr noundef %22) #3
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_lamp_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #3
  br label %3

3:                                                ; preds = %1, %16
  %4 = phi i64 [ 0, %1 ], [ %17, %16 ]
  %5 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 69, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %10 = tail call ptr %9(i64 noundef 312, ptr noundef nonnull @.str) #3
  store ptr %10, ptr %5, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %4
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %10, ptr noundef nonnull align 8 dereferenceable(312) %12, i64 312, i1 false)
  %13 = load ptr, ptr %5, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  tail call void @id_us_plus(ptr noundef %15) #3
  br label %16

16:                                               ; preds = %3, %8
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 18
  br i1 %18, label %19, label %3, !llvm.loop !65

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 22
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = tail call ptr @curvemapping_copy(ptr noundef %21) #3
  %23 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 22
  store ptr %22, ptr %23, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %25) #3
  %29 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 74
  store ptr %28, ptr %29, align 8, !tbaa !67
  br label %30

30:                                               ; preds = %27, %19
  %31 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 73
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @BKE_previewimg_copy(ptr noundef nonnull %32) #3
  %36 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 73
  store ptr %35, ptr %36, align 8, !tbaa !55
  br label %37

37:                                               ; preds = %34, %30
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_previewimg_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @localize_lamp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy_nolib(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %3

3:                                                ; preds = %1, %16
  %4 = phi i64 [ 0, %1 ], [ %17, %16 ]
  %5 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 69, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %10 = tail call ptr %9(i64 noundef 312, ptr noundef nonnull @.str.1) #3
  store ptr %10, ptr %5, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %4
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %10, ptr noundef nonnull align 8 dereferenceable(312) %12, i64 312, i1 false)
  %13 = load ptr, ptr %5, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  tail call void @id_us_plus(ptr noundef %15) #3
  br label %16

16:                                               ; preds = %3, %8
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 18
  br i1 %18, label %19, label %3, !llvm.loop !68

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 22
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = tail call ptr @curvemapping_copy(ptr noundef %21) #3
  %23 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 22
  store ptr %22, ptr %23, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = tail call ptr @ntreeLocalize(ptr noundef nonnull %25) #3
  %29 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 74
  store ptr %28, ptr %29, align 8, !tbaa !67
  br label %30

30:                                               ; preds = %27, %19
  %31 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 73
  store ptr null, ptr %31, align 8, !tbaa !55
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy_nolib(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_lamp_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !69
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !73
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #3
  br label %64

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %11, %28
  %16 = phi ptr [ %31, %28 ], [ %13, %11 ]
  %17 = phi i8 [ %30, %28 ], [ 0, %11 ]
  %18 = phi i8 [ %29, %28 ], [ 0, %11 ]
  %19 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !78
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, i8 1, i8 %18
  %27 = select i1 %25, i8 %17, i8 1
  br label %28

28:                                               ; preds = %22, %15
  %29 = phi i8 [ %18, %15 ], [ %26, %22 ]
  %30 = phi i8 [ %17, %15 ], [ %27, %22 ]
  %31 = load ptr, ptr %16, align 8, !tbaa !62
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %15, !llvm.loop !79

33:                                               ; preds = %28
  %34 = icmp ne i8 %29, 0
  %35 = icmp eq i8 %30, 0
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #3
  br label %64

38:                                               ; preds = %33
  %39 = icmp ne i8 %30, 0
  %40 = select i1 %34, i1 %39, i1 false
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = tail call ptr @BKE_lamp_copy(ptr noundef %0) #4
  %43 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 6
  store i32 0, ptr %43, align 4, !tbaa !73
  %44 = load ptr, ptr %3, align 8, !tbaa !72
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %44, ptr noundef %42) #3
  %45 = load ptr, ptr %12, align 8, !tbaa !62
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %41, %61
  %48 = phi ptr [ %62, %61 ], [ %45, %41 ]
  %49 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  %51 = icmp eq ptr %50, %0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !78
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  store ptr %42, ptr %49, align 8, !tbaa !74
  %57 = load i32, ptr %43, align 4, !tbaa !73
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %43, align 4, !tbaa !73
  %59 = load i32, ptr %7, align 4, !tbaa !73
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %7, align 4, !tbaa !73
  br label %61

61:                                               ; preds = %52, %56, %47
  %62 = load ptr, ptr %48, align 8, !tbaa !62
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %47, !llvm.loop !80

64:                                               ; preds = %61, %11, %41, %37, %38, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_lamp_free(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %17
  %3 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %4 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MTex, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !81
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 4, !tbaa !81
  br label %15

15:                                               ; preds = %7, %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %16(ptr noundef nonnull %5) #3
  br label %17

17:                                               ; preds = %2, %15
  %18 = add nuw nsw i64 %3, 1
  %19 = icmp eq i64 %18, 18
  br i1 %19, label %20, label %2, !llvm.loop !84

20:                                               ; preds = %17
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #3
  %21 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 22
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  tail call void @curvemapping_free(ptr noundef %22) #3
  %23 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  tail call void @ntreeFreeTree(ptr noundef nonnull %24) #3
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  %28 = load ptr, ptr %23, align 8, !tbaa !67
  tail call void %27(ptr noundef %28) #3
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 73
  tail call void @BKE_previewimg_free(ptr noundef nonnull %30) #3
  tail call void @BKE_icon_delete(ptr noundef nonnull %0) #3
  %31 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %31, align 8, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @curvemapping_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_icon_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lamp_drivers_update(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !86
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = or disjoint i16 %5, 1024
  store i16 %9, ptr %4, align 2, !tbaa !86
  %10 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.AnimData, ptr %11, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %11, float noundef %2, i16 noundef signext 1) #3
  br label %18

18:                                               ; preds = %17, %13, %8
  %19 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 74
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call fastcc void @lamp_node_drivers_update(ptr noundef %0, ptr noundef nonnull %20, float noundef %2) #4
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i16, ptr %4, align 2, !tbaa !86
  %25 = and i16 %24, -1025
  store i16 %25, ptr %4, align 2, !tbaa !86
  br label %26

26:                                               ; preds = %3, %23
  ret void
}

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lamp_node_drivers_update(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !90 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, float noundef %2, i16 noundef signext 1) #3
  br label %12

12:                                               ; preds = %11, %7, %3
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12, %26
  %17 = phi ptr [ %27, %26 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %23 = load i16, ptr %22, align 4, !tbaa !97
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @lamp_node_drivers_update(ptr noundef %0, ptr noundef nonnull %19, float noundef %2) #4
  br label %26

26:                                               ; preds = %16, %21, %25
  %27 = load ptr, ptr %17, align 8, !tbaa !62
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %16, !llvm.loop !98

29:                                               ; preds = %26, %12
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 188}
!39 = !{!"Lamp", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !43, i64 132, !42, i64 136, !42, i64 138, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !41, i64 200, !42, i64 208, !42, i64 210, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !42, i64 240, !42, i64 242, !42, i64 244, !42, i64 246, !36, i64 248, !36, i64 249, !42, i64 250, !42, i64 252, !42, i64 254, !42, i64 256, !42, i64 258, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !42, i64 276, !42, i64 278, !42, i64 280, !42, i64 282, !42, i64 284, !42, i64 286, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !42, i64 340, !36, i64 342, !41, i64 344, !36, i64 352, !42, i64 496, !42, i64 498, !36, i64 500, !41, i64 504, !41, i64 512}
!40 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !42, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !41, i64 112}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"int", !36, i64 0}
!44 = !{!39, !35, i64 196}
!45 = !{!39, !43, i64 132}
!46 = !{!39, !42, i64 240}
!47 = !{!39, !42, i64 242}
!48 = !{!39, !35, i64 228}
!49 = !{!39, !42, i64 254}
!50 = !{!39, !42, i64 252}
!51 = !{!39, !42, i64 250}
!52 = !{!39, !42, i64 244}
!53 = !{!39, !36, i64 249}
!54 = !{!39, !42, i64 276}
!55 = !{!39, !41, i64 504}
!56 = !{!39, !42, i64 208}
!57 = !{!39, !41, i64 200}
!58 = !{!39, !42, i64 284}
!59 = !{!39, !42, i64 286}
!60 = !{!39, !42, i64 340}
!61 = !{!39, !35, i64 336}
!62 = !{!41, !41, i64 0}
!63 = !{!64, !41, i64 16}
!64 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !35, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !36, i64 132, !36, i64 133, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!39, !41, i64 512}
!68 = distinct !{!68, !66}
!69 = !{!70, !41, i64 0}
!70 = !{!"Global", !41, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !71, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !36, i64 2090, !42, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!71 = !{!"ListBase", !41, i64 0, !41, i64 8}
!72 = !{!39, !41, i64 24}
!73 = !{!39, !43, i64 100}
!74 = !{!75, !41, i64 296}
!75 = !{!"Object", !40, i64 0, !41, i64 120, !41, i64 128, !42, i64 136, !42, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !76, i64 312, !41, i64 360, !71, i64 368, !71, i64 384, !71, i64 400, !71, i64 416, !43, i64 432, !43, i64 436, !41, i64 440, !41, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !71, i64 1056, !71, i64 1072, !71, i64 1088, !71, i64 1104, !35, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !41, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !71, i64 1176, !71, i64 1192, !71, i64 1208, !71, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !35, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !77, i64 1304, !77, i64 1312, !43, i64 1320, !43, i64 1324, !71, i64 1328, !71, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !36, i64 1384, !41, i64 1392, !71, i64 1400, !41, i64 1416}
!76 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!77 = !{!"long", !36, i64 0}
!78 = !{!75, !41, i64 24}
!79 = distinct !{!79, !66}
!80 = distinct !{!80, !66}
!81 = !{!82, !43, i64 100}
!82 = !{!"Tex", !40, i64 0, !41, i64 120, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !43, i64 252, !43, i64 256, !42, i64 260, !42, i64 262, !42, i64 264, !42, i64 266, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !83, i64 296, !41, i64 336, !41, i64 344, !41, i64 352, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !36, i64 408, !36, i64 409}
!83 = !{!"ImageUser", !41, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !43, i64 36}
!84 = distinct !{!84, !66}
!85 = !{!39, !43, i64 104}
!86 = !{!39, !42, i64 98}
!87 = !{!39, !41, i64 120}
!88 = !{!89, !41, i64 48}
!89 = !{!"AnimData", !41, i64 0, !41, i64 8, !41, i64 16, !71, i64 24, !41, i64 40, !71, i64 48, !71, i64 64, !43, i64 80, !43, i64 84, !42, i64 88, !42, i64 90, !35, i64 92}
!90 = !{!"lamp.c:lamp_node_drivers_update"}
!91 = !{!92, !41, i64 120}
!92 = !{!"bNodeTree", !40, i64 0, !41, i64 120, !41, i64 128, !36, i64 136, !41, i64 200, !41, i64 208, !36, i64 216, !71, i64 224, !71, i64 240, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !42, i64 276, !42, i64 278, !43, i64 280, !43, i64 284, !42, i64 288, !42, i64 290, !43, i64 292, !93, i64 296, !71, i64 312, !71, i64 328, !41, i64 344, !94, i64 352, !43, i64 356, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !41, i64 408, !41, i64 416, !41, i64 424}
!93 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!94 = !{!"bNodeInstanceKey", !43, i64 0}
!95 = !{!96, !41, i64 240}
!96 = !{!"bNode", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !36, i64 40, !36, i64 104, !43, i64 168, !42, i64 172, !42, i64 174, !42, i64 176, !42, i64 178, !42, i64 180, !42, i64 182, !42, i64 184, !42, i64 186, !36, i64 188, !71, i64 200, !71, i64 216, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !71, i64 264, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !43, i64 308, !36, i64 312, !42, i64 376, !42, i64 378, !35, i64 380, !35, i64 384, !42, i64 388, !42, i64 390, !41, i64 392, !93, i64 400, !93, i64 416, !93, i64 432, !42, i64 448, !42, i64 450, !43, i64 452, !41, i64 456}
!97 = !{!96, !42, i64 172}
!98 = distinct !{!98, !66}
