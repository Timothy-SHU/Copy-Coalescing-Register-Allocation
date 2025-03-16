; ModuleID = 'zmatrix.c'
source_filename = "zmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_point_s = type { double, double }

@zmatrix_op_defs.op_defs_ = internal constant [16 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zconcat }, %struct.op_def { ptr @.str.1, ptr @zdtransform }, %struct.op_def { ptr @.str.2, ptr @zconcatmatrix }, %struct.op_def { ptr @.str.3, ptr @zcurrentmatrix }, %struct.op_def { ptr @.str.4, ptr @zdefaultmatrix }, %struct.op_def { ptr @.str.5, ptr @zidtransform }, %struct.op_def { ptr @.str.6, ptr @zinitmatrix }, %struct.op_def { ptr @.str.7, ptr @zinvertmatrix }, %struct.op_def { ptr @.str.8, ptr @zitransform }, %struct.op_def { ptr @.str.9, ptr @zrotate }, %struct.op_def { ptr @.str.10, ptr @zscale }, %struct.op_def { ptr @.str.11, ptr @zsetmatrix }, %struct.op_def { ptr @.str.12, ptr @zsetdefaultmatrix }, %struct.op_def { ptr @.str.13, ptr @ztransform }, %struct.op_def { ptr @.str.14, ptr @ztranslate }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"1concat\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"2dtransform\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"3concatmatrix\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"1currentmatrix\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"1defaultmatrix\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"2idtransform\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"0initmatrix\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"2invertmatrix\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"2itransform\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"1rotate\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"2scale\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"1setmatrix\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"1.setdefaultmatrix\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"2transform\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"2translate\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zmatrix_op_defs() local_unnamed_addr #0 {
  ret ptr @zmatrix_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zconcat(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  %3 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = call i32 @gs_concat(ptr noundef %6, ptr noundef nonnull %2) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.ref_s, ptr %10, i64 -1
  store ptr %11, ptr @o_stack, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %5, %1, %9
  %13 = phi i32 [ 0, %9 ], [ %3, %1 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zdtransform(ptr noundef %0) #1 {
  %2 = alloca [2 x float], align 4
  %3 = alloca %struct.gs_point_s, align 8
  %4 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !15
  switch i8 %6, label %42 [
    i8 16, label %7
    i8 11, label %10
    i8 4, label %14
    i8 6, label %14
    i8 5, label %14
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 8, !tbaa !15
  br label %44

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = sitofp i64 %12 to float
  br label %44

14:                                               ; preds = %1, %1, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  %15 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %4) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %19 = call i32 @num_params(ptr noundef nonnull %18, i32 noundef 2, ptr noundef nonnull %2) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load float, ptr %2, align 4, !tbaa !16
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !16
  %26 = fpext float %25 to double
  %27 = call i32 @gs_distance_transform(double noundef %23, double noundef %26, ptr noundef nonnull %4, ptr noundef nonnull %3) #5, !callees !18
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21, %17, %14
  %30 = phi i32 [ %15, %14 ], [ %19, %17 ], [ %27, %21 ]
  %31 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.ref_s, ptr %31, i64 2
  %33 = icmp ugt ptr %32, %0
  %34 = select i1 %33, i32 -17, i32 %30
  br label %38

35:                                               ; preds = %21
  %36 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 -1
  store ptr %37, ptr @o_stack, align 8, !tbaa !9
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi ptr [ %18, %35 ], [ %0, %29 ]
  %40 = phi i32 [ undef, %35 ], [ %34, %29 ]
  %41 = phi i1 [ true, %35 ], [ false, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  br i1 %41, label %68, label %78

42:                                               ; preds = %1
  %43 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %78

44:                                               ; preds = %10, %7
  %45 = phi float [ %13, %10 ], [ %9, %7 ]
  %46 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  store float %45, ptr %46, align 4, !tbaa !16
  %47 = getelementptr inbounds i8, ptr %0, i64 -15
  %48 = load i8, ptr %47, align 1, !tbaa !15
  switch i8 %48, label %56 [
    i8 16, label %49
    i8 11, label %52
  ]

49:                                               ; preds = %44
  %50 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %51 = load float, ptr %50, align 8, !tbaa !15
  br label %59

52:                                               ; preds = %44
  %53 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !15
  %55 = sitofp i64 %54 to float
  br label %59

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %58 = tail call i32 @check_type_failed(ptr noundef nonnull %57) #5
  br label %78

59:                                               ; preds = %52, %49
  %60 = phi float [ %55, %52 ], [ %51, %49 ]
  store float %60, ptr %2, align 4, !tbaa !16
  %61 = load ptr, ptr @igs, align 8, !tbaa !5
  %62 = fpext float %60 to double
  %63 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !16
  %65 = fpext float %64 to double
  %66 = call i32 @gs_dtransform(ptr noundef %61, double noundef %62, double noundef %65, ptr noundef nonnull %3) #5, !callees !20
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %59, %38
  %69 = phi ptr [ %39, %38 ], [ %0, %59 ]
  %70 = load double, ptr %3, align 8, !tbaa !21
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct.ref_s, ptr %69, i64 -1
  %73 = getelementptr %struct.ref_s, ptr %69, i64 -1, i32 1
  store float %71, ptr %73, align 8, !tbaa !15
  store i16 4096, ptr %72, align 8, !tbaa !24
  %74 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  %75 = load double, ptr %74, align 8, !tbaa !25
  %76 = fptrunc double %75 to float
  %77 = getelementptr inbounds %struct.ref_s, ptr %69, i64 0, i32 1
  store float %76, ptr %77, align 8, !tbaa !15
  store i16 4096, ptr %69, align 8, !tbaa !24
  br label %78

78:                                               ; preds = %38, %42, %56, %59, %68
  %79 = phi i32 [ %43, %42 ], [ 0, %68 ], [ %40, %38 ], [ %58, %56 ], [ %66, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @zconcatmatrix(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = alloca %struct.gs_matrix_s, align 4
  %4 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %6 = call i32 @read_matrix(ptr noundef nonnull %5, ptr noundef nonnull %2) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %10 = call i32 @read_matrix(ptr noundef nonnull %9, ptr noundef nonnull %3) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = call i32 @gs_matrix_multiply(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = call i32 @write_matrix(ptr noundef %0, ptr noundef nonnull %4) #5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  %19 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.ref_s, ptr %19, i64 -2
  store ptr %20, ptr @o_stack, align 8, !tbaa !9
  br label %21

21:                                               ; preds = %1, %8, %12, %15, %18
  %22 = phi i32 [ %16, %18 ], [ %6, %1 ], [ %10, %8 ], [ %13, %12 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentmatrix(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  %3 = load ptr, ptr @igs, align 8, !tbaa !5
  %4 = call i32 @gs_currentmatrix(ptr noundef %3, ptr noundef nonnull %2) #5
  %5 = call i32 @write_matrix(ptr noundef %0, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @zdefaultmatrix(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  %3 = load ptr, ptr @igs, align 8, !tbaa !5
  %4 = call i32 @gs_defaultmatrix(ptr noundef %3, ptr noundef nonnull %2) #5
  %5 = call i32 @write_matrix(ptr noundef %0, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @zidtransform(ptr noundef %0) #1 {
  %2 = alloca [2 x float], align 4
  %3 = alloca %struct.gs_point_s, align 8
  %4 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !15
  switch i8 %6, label %42 [
    i8 16, label %7
    i8 11, label %10
    i8 4, label %14
    i8 6, label %14
    i8 5, label %14
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 8, !tbaa !15
  br label %44

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = sitofp i64 %12 to float
  br label %44

14:                                               ; preds = %1, %1, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  %15 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %4) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %19 = call i32 @num_params(ptr noundef nonnull %18, i32 noundef 2, ptr noundef nonnull %2) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load float, ptr %2, align 4, !tbaa !16
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !16
  %26 = fpext float %25 to double
  %27 = call i32 @gs_distance_transform_inverse(double noundef %23, double noundef %26, ptr noundef nonnull %4, ptr noundef nonnull %3) #5, !callees !18
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21, %17, %14
  %30 = phi i32 [ %15, %14 ], [ %19, %17 ], [ %27, %21 ]
  %31 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.ref_s, ptr %31, i64 2
  %33 = icmp ugt ptr %32, %0
  %34 = select i1 %33, i32 -17, i32 %30
  br label %38

35:                                               ; preds = %21
  %36 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 -1
  store ptr %37, ptr @o_stack, align 8, !tbaa !9
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi ptr [ %18, %35 ], [ %0, %29 ]
  %40 = phi i32 [ undef, %35 ], [ %34, %29 ]
  %41 = phi i1 [ true, %35 ], [ false, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  br i1 %41, label %68, label %78

42:                                               ; preds = %1
  %43 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %78

44:                                               ; preds = %10, %7
  %45 = phi float [ %13, %10 ], [ %9, %7 ]
  %46 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  store float %45, ptr %46, align 4, !tbaa !16
  %47 = getelementptr inbounds i8, ptr %0, i64 -15
  %48 = load i8, ptr %47, align 1, !tbaa !15
  switch i8 %48, label %56 [
    i8 16, label %49
    i8 11, label %52
  ]

49:                                               ; preds = %44
  %50 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %51 = load float, ptr %50, align 8, !tbaa !15
  br label %59

52:                                               ; preds = %44
  %53 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !15
  %55 = sitofp i64 %54 to float
  br label %59

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %58 = tail call i32 @check_type_failed(ptr noundef nonnull %57) #5
  br label %78

59:                                               ; preds = %52, %49
  %60 = phi float [ %55, %52 ], [ %51, %49 ]
  store float %60, ptr %2, align 4, !tbaa !16
  %61 = load ptr, ptr @igs, align 8, !tbaa !5
  %62 = fpext float %60 to double
  %63 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !16
  %65 = fpext float %64 to double
  %66 = call i32 @gs_idtransform(ptr noundef %61, double noundef %62, double noundef %65, ptr noundef nonnull %3) #5, !callees !20
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %59, %38
  %69 = phi ptr [ %39, %38 ], [ %0, %59 ]
  %70 = load double, ptr %3, align 8, !tbaa !21
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct.ref_s, ptr %69, i64 -1
  %73 = getelementptr %struct.ref_s, ptr %69, i64 -1, i32 1
  store float %71, ptr %73, align 8, !tbaa !15
  store i16 4096, ptr %72, align 8, !tbaa !24
  %74 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  %75 = load double, ptr %74, align 8, !tbaa !25
  %76 = fptrunc double %75 to float
  %77 = getelementptr inbounds %struct.ref_s, ptr %69, i64 0, i32 1
  store float %76, ptr %77, align 8, !tbaa !15
  store i16 4096, ptr %69, align 8, !tbaa !24
  br label %78

78:                                               ; preds = %38, %42, %56, %59, %68
  %79 = phi i32 [ %43, %42 ], [ 0, %68 ], [ %40, %38 ], [ %58, %56 ], [ %66, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @zinitmatrix(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_initmatrix(ptr noundef %2) #5
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zinvertmatrix(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %4 = call i32 @read_matrix(ptr noundef nonnull %3, ptr noundef nonnull %2) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = call i32 @gs_matrix_invert(ptr noundef nonnull %2, ptr noundef nonnull %2) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = call i32 @write_matrix(ptr noundef %0, ptr noundef nonnull %2) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  %13 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 -1
  store ptr %14, ptr @o_stack, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %1, %6, %9, %12
  %16 = phi i32 [ %10, %12 ], [ %4, %1 ], [ %7, %6 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zitransform(ptr noundef %0) #1 {
  %2 = alloca [2 x float], align 4
  %3 = alloca %struct.gs_point_s, align 8
  %4 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !15
  switch i8 %6, label %42 [
    i8 16, label %7
    i8 11, label %10
    i8 4, label %14
    i8 6, label %14
    i8 5, label %14
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 8, !tbaa !15
  br label %44

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = sitofp i64 %12 to float
  br label %44

14:                                               ; preds = %1, %1, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  %15 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %4) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %19 = call i32 @num_params(ptr noundef nonnull %18, i32 noundef 2, ptr noundef nonnull %2) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load float, ptr %2, align 4, !tbaa !16
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !16
  %26 = fpext float %25 to double
  %27 = call i32 @gs_point_transform_inverse(double noundef %23, double noundef %26, ptr noundef nonnull %4, ptr noundef nonnull %3) #5, !callees !18
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21, %17, %14
  %30 = phi i32 [ %15, %14 ], [ %19, %17 ], [ %27, %21 ]
  %31 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.ref_s, ptr %31, i64 2
  %33 = icmp ugt ptr %32, %0
  %34 = select i1 %33, i32 -17, i32 %30
  br label %38

35:                                               ; preds = %21
  %36 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 -1
  store ptr %37, ptr @o_stack, align 8, !tbaa !9
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi ptr [ %18, %35 ], [ %0, %29 ]
  %40 = phi i32 [ undef, %35 ], [ %34, %29 ]
  %41 = phi i1 [ true, %35 ], [ false, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  br i1 %41, label %68, label %78

42:                                               ; preds = %1
  %43 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %78

44:                                               ; preds = %10, %7
  %45 = phi float [ %13, %10 ], [ %9, %7 ]
  %46 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  store float %45, ptr %46, align 4, !tbaa !16
  %47 = getelementptr inbounds i8, ptr %0, i64 -15
  %48 = load i8, ptr %47, align 1, !tbaa !15
  switch i8 %48, label %56 [
    i8 16, label %49
    i8 11, label %52
  ]

49:                                               ; preds = %44
  %50 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %51 = load float, ptr %50, align 8, !tbaa !15
  br label %59

52:                                               ; preds = %44
  %53 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !15
  %55 = sitofp i64 %54 to float
  br label %59

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %58 = tail call i32 @check_type_failed(ptr noundef nonnull %57) #5
  br label %78

59:                                               ; preds = %52, %49
  %60 = phi float [ %55, %52 ], [ %51, %49 ]
  store float %60, ptr %2, align 4, !tbaa !16
  %61 = load ptr, ptr @igs, align 8, !tbaa !5
  %62 = fpext float %60 to double
  %63 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !16
  %65 = fpext float %64 to double
  %66 = call i32 @gs_itransform(ptr noundef %61, double noundef %62, double noundef %65, ptr noundef nonnull %3) #5, !callees !20
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %59, %38
  %69 = phi ptr [ %39, %38 ], [ %0, %59 ]
  %70 = load double, ptr %3, align 8, !tbaa !21
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct.ref_s, ptr %69, i64 -1
  %73 = getelementptr %struct.ref_s, ptr %69, i64 -1, i32 1
  store float %71, ptr %73, align 8, !tbaa !15
  store i16 4096, ptr %72, align 8, !tbaa !24
  %74 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  %75 = load double, ptr %74, align 8, !tbaa !25
  %76 = fptrunc double %75 to float
  %77 = getelementptr inbounds %struct.ref_s, ptr %69, i64 0, i32 1
  store float %76, ptr %77, align 8, !tbaa !15
  store i16 4096, ptr %69, align 8, !tbaa !24
  br label %78

78:                                               ; preds = %38, %42, %56, %59, %68
  %79 = phi i32 [ %43, %42 ], [ 0, %68 ], [ %40, %38 ], [ %58, %56 ], [ %66, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @zrotate(ptr noundef %0) #1 {
  %2 = alloca float, align 4
  %3 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %4 = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #5
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr @igs, align 8, !tbaa !5
  %8 = load float, ptr %2, align 4, !tbaa !16
  %9 = fpext float %8 to double
  %10 = call i32 @gs_rotate(ptr noundef %7, double noundef %9) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %42, label %38

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  %13 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !19
  %14 = icmp ugt ptr %13, %0
  br i1 %14, label %34, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %17 = call i32 @num_params(ptr noundef nonnull %16, i32 noundef 1, ptr noundef nonnull %2) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load float, ptr %2, align 4, !tbaa !16
  %21 = fpext float %20 to double
  %22 = call i32 @gs_make_rotation(double noundef %21, ptr noundef nonnull %3) #5
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = call i32 @write_matrix(ptr noundef %0, ptr noundef nonnull %3) #5
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %19, %15
  %28 = phi i32 [ %17, %15 ], [ %22, %19 ], [ %25, %24 ]
  %29 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.ref_s, ptr %29, i64 1
  %31 = icmp ugt ptr %30, %0
  %32 = select i1 %31, i32 -17, i32 %28
  br label %34

33:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  br label %34

34:                                               ; preds = %27, %12, %33
  %35 = phi i32 [ undef, %33 ], [ -17, %12 ], [ %32, %27 ]
  %36 = phi i32 [ %25, %33 ], [ %4, %12 ], [ %28, %27 ]
  %37 = phi i1 [ true, %33 ], [ false, %12 ], [ false, %27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %6
  %39 = phi i32 [ %10, %6 ], [ %36, %34 ]
  %40 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 -1
  store ptr %41, ptr @o_stack, align 8, !tbaa !9
  br label %42

42:                                               ; preds = %6, %34, %38
  %43 = phi i32 [ %39, %38 ], [ %35, %34 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @zscale(ptr noundef %0) #1 {
  %2 = alloca [2 x float], align 4
  %3 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %4 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #5
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load ptr, ptr @igs, align 8, !tbaa !5
  %8 = load float, ptr %2, align 4, !tbaa !16
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !16
  %12 = fpext float %11 to double
  %13 = call i32 @gs_scale(ptr noundef %7, double noundef %9, double noundef %12) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %50, label %46

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  %16 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.ref_s, ptr %16, i64 1
  %18 = icmp ugt ptr %17, %0
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %21 = call i32 @num_params(ptr noundef nonnull %20, i32 noundef 2, ptr noundef nonnull %2) #5
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load float, ptr %2, align 4, !tbaa !16
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !16
  %28 = fpext float %27 to double
  %29 = call i32 @gs_make_scaling(double noundef %25, double noundef %28, ptr noundef nonnull %3) #5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = call i32 @write_matrix(ptr noundef %0, ptr noundef nonnull %3) #5
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31, %23, %19
  %35 = phi i32 [ %21, %19 ], [ %29, %23 ], [ %32, %31 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !19
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 2
  %38 = icmp ugt ptr %37, %0
  %39 = select i1 %38, i32 -17, i32 %35
  br label %42

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  br label %42

42:                                               ; preds = %34, %15, %40
  %43 = phi i32 [ undef, %40 ], [ -17, %15 ], [ %39, %34 ]
  %44 = phi i32 [ %32, %40 ], [ %4, %15 ], [ %35, %34 ]
  %45 = phi i1 [ true, %40 ], [ false, %15 ], [ false, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %6
  %47 = phi i32 [ %13, %6 ], [ %44, %42 ]
  %48 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %49 = getelementptr inbounds %struct.ref_s, ptr %48, i64 -2
  store ptr %49, ptr @o_stack, align 8, !tbaa !9
  br label %50

50:                                               ; preds = %6, %42, %46
  %51 = phi i32 [ %47, %46 ], [ %43, %42 ], [ %13, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetmatrix(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  %3 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = call i32 @gs_setmatrix(ptr noundef %6, ptr noundef nonnull %2) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.ref_s, ptr %10, i64 -1
  store ptr %11, ptr @o_stack, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %5, %1, %9
  %13 = phi i32 [ 0, %9 ], [ %3, %1 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdefaultmatrix(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !15
  %5 = icmp eq i8 %4, 14
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr @igs, align 8, !tbaa !5
  %8 = tail call i32 @gs_setdefaultmatrix(ptr noundef %7, ptr noundef null) #5
  br label %17

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  %10 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %2) #5
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load ptr, ptr @igs, align 8, !tbaa !5
  %14 = call i32 @gs_setdefaultmatrix(ptr noundef %13, ptr noundef nonnull %2) #5
  br label %15

15:                                               ; preds = %9, %12
  %16 = phi i32 [ %14, %12 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  br i1 %11, label %17, label %23

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %8, %6 ], [ %16, %15 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -1
  store ptr %22, ptr @o_stack, align 8, !tbaa !9
  br label %23

23:                                               ; preds = %17, %15, %20
  %24 = phi i32 [ 0, %20 ], [ %10, %15 ], [ %18, %17 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @ztransform(ptr noundef %0) #1 {
  %2 = alloca [2 x float], align 4
  %3 = alloca %struct.gs_point_s, align 8
  %4 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !15
  switch i8 %6, label %42 [
    i8 16, label %7
    i8 11, label %10
    i8 4, label %14
    i8 6, label %14
    i8 5, label %14
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 8, !tbaa !15
  br label %44

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = sitofp i64 %12 to float
  br label %44

14:                                               ; preds = %1, %1, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  %15 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %4) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %19 = call i32 @num_params(ptr noundef nonnull %18, i32 noundef 2, ptr noundef nonnull %2) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load float, ptr %2, align 4, !tbaa !16
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !16
  %26 = fpext float %25 to double
  %27 = call i32 @gs_point_transform(double noundef %23, double noundef %26, ptr noundef nonnull %4, ptr noundef nonnull %3) #5, !callees !18
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21, %17, %14
  %30 = phi i32 [ %15, %14 ], [ %19, %17 ], [ %27, %21 ]
  %31 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.ref_s, ptr %31, i64 2
  %33 = icmp ugt ptr %32, %0
  %34 = select i1 %33, i32 -17, i32 %30
  br label %38

35:                                               ; preds = %21
  %36 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 -1
  store ptr %37, ptr @o_stack, align 8, !tbaa !9
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi ptr [ %18, %35 ], [ %0, %29 ]
  %40 = phi i32 [ undef, %35 ], [ %34, %29 ]
  %41 = phi i1 [ true, %35 ], [ false, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  br i1 %41, label %68, label %78

42:                                               ; preds = %1
  %43 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %78

44:                                               ; preds = %10, %7
  %45 = phi float [ %13, %10 ], [ %9, %7 ]
  %46 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  store float %45, ptr %46, align 4, !tbaa !16
  %47 = getelementptr inbounds i8, ptr %0, i64 -15
  %48 = load i8, ptr %47, align 1, !tbaa !15
  switch i8 %48, label %56 [
    i8 16, label %49
    i8 11, label %52
  ]

49:                                               ; preds = %44
  %50 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %51 = load float, ptr %50, align 8, !tbaa !15
  br label %59

52:                                               ; preds = %44
  %53 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !15
  %55 = sitofp i64 %54 to float
  br label %59

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %58 = tail call i32 @check_type_failed(ptr noundef nonnull %57) #5
  br label %78

59:                                               ; preds = %52, %49
  %60 = phi float [ %55, %52 ], [ %51, %49 ]
  store float %60, ptr %2, align 4, !tbaa !16
  %61 = load ptr, ptr @igs, align 8, !tbaa !5
  %62 = fpext float %60 to double
  %63 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !16
  %65 = fpext float %64 to double
  %66 = call i32 @gs_transform(ptr noundef %61, double noundef %62, double noundef %65, ptr noundef nonnull %3) #5, !callees !20
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %59, %38
  %69 = phi ptr [ %39, %38 ], [ %0, %59 ]
  %70 = load double, ptr %3, align 8, !tbaa !21
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct.ref_s, ptr %69, i64 -1
  %73 = getelementptr %struct.ref_s, ptr %69, i64 -1, i32 1
  store float %71, ptr %73, align 8, !tbaa !15
  store i16 4096, ptr %72, align 8, !tbaa !24
  %74 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  %75 = load double, ptr %74, align 8, !tbaa !25
  %76 = fptrunc double %75 to float
  %77 = getelementptr inbounds %struct.ref_s, ptr %69, i64 0, i32 1
  store float %76, ptr %77, align 8, !tbaa !15
  store i16 4096, ptr %69, align 8, !tbaa !24
  br label %78

78:                                               ; preds = %38, %42, %56, %59, %68
  %79 = phi i32 [ %43, %42 ], [ 0, %68 ], [ %40, %38 ], [ %58, %56 ], [ %66, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @ztranslate(ptr noundef %0) #1 {
  %2 = alloca [2 x float], align 4
  %3 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %4 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #5
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load ptr, ptr @igs, align 8, !tbaa !5
  %8 = load float, ptr %2, align 4, !tbaa !16
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !16
  %12 = fpext float %11 to double
  %13 = call i32 @gs_translate(ptr noundef %7, double noundef %9, double noundef %12) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %50, label %46

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  %16 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.ref_s, ptr %16, i64 1
  %18 = icmp ugt ptr %17, %0
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %21 = call i32 @num_params(ptr noundef nonnull %20, i32 noundef 2, ptr noundef nonnull %2) #5
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load float, ptr %2, align 4, !tbaa !16
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !16
  %28 = fpext float %27 to double
  %29 = call i32 @gs_make_translation(double noundef %25, double noundef %28, ptr noundef nonnull %3) #5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = call i32 @write_matrix(ptr noundef %0, ptr noundef nonnull %3) #5
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31, %23, %19
  %35 = phi i32 [ %21, %19 ], [ %29, %23 ], [ %32, %31 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !19
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 2
  %38 = icmp ugt ptr %37, %0
  %39 = select i1 %38, i32 -17, i32 %35
  br label %42

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  br label %42

42:                                               ; preds = %34, %15, %40
  %43 = phi i32 [ undef, %40 ], [ -17, %15 ], [ %39, %34 ]
  %44 = phi i32 [ %32, %40 ], [ %4, %15 ], [ %35, %34 ]
  %45 = phi i1 [ true, %40 ], [ false, %15 ], [ false, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %6
  %47 = phi i32 [ %13, %6 ], [ %44, %42 ]
  %48 = load ptr, ptr @o_stack, align 8, !tbaa !9
  %49 = getelementptr inbounds %struct.ref_s, ptr %48, i64 -2
  store ptr %49, ptr @o_stack, align 8, !tbaa !9
  br label %50

50:                                               ; preds = %6, %42, %46
  %51 = phi i32 [ %47, %46 ], [ %43, %42 ], [ %13, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %51
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @read_matrix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_concat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_dtransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_distance_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @write_matrix(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @gs_currentmatrix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_defaultmatrix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_idtransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_distance_transform_inverse(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_initmatrix(ptr noundef) local_unnamed_addr #3

declare i32 @gs_matrix_invert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_itransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_point_transform_inverse(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_rotate(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @gs_make_rotation(double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @gs_make_scaling(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_setmatrix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_setdefaultmatrix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_transform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_point_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @gs_make_translation(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !14, i64 40, !14, i64 44, !11, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !11, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !6, i64 120}
!11 = !{!"ref_s", !12, i64 0, !7, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !7, i64 0}
!18 = !{ptr @gs_distance_transform, ptr @gs_distance_transform_inverse, ptr @gs_point_transform, ptr @gs_point_transform_inverse}
!19 = !{!10, !6, i64 8}
!20 = !{ptr @gs_dtransform, ptr @gs_idtransform, ptr @gs_itransform, ptr @gs_transform}
!21 = !{!22, !23, i64 0}
!22 = !{!"gs_point_s", !23, i64 0, !23, i64 8}
!23 = !{!"double", !7, i64 0}
!24 = !{!11, !13, i64 0}
!25 = !{!22, !23, i64 8}
!26 = !{i64 0, i64 2, !27, i64 2, i64 2, !27, i64 8, i64 8, !28, i64 8, i64 2, !27, i64 8, i64 4, !16, i64 8, i64 8, !28, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!27 = !{!13, !13, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"long", !7, i64 0}
