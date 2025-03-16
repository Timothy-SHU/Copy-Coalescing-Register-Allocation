; ModuleID = 'idparam.c'
source_filename = "idparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ref_language_level = external local_unnamed_addr global %struct.ref_s, align 8
@.str = private unnamed_addr constant [5 x i8] c"XUID\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"get XUID\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UniqueID\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dict_bool_param(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = icmp eq ptr %0, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #5
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 8, !tbaa !5
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ref_s, ptr %11, i64 0, i32 1
  %17 = load i16, ptr %16, align 8, !tbaa !9
  %18 = zext i16 %17 to i32
  br label %19

19:                                               ; preds = %4, %7, %15
  %20 = phi i32 [ %18, %15 ], [ %2, %7 ], [ %2, %4 ]
  %21 = phi i32 [ 0, %15 ], [ 1, %7 ], [ 1, %4 ]
  store i32 %20, ptr %3, align 4, !tbaa !10
  br label %22

22:                                               ; preds = %19, %10
  %23 = phi i32 [ -20, %10 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dict_int_null_param(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  %8 = icmp eq ptr %0, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7) #5
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %6
  %13 = sext i32 %4 to i64
  br label %34

14:                                               ; preds = %9
  %15 = load ptr, ptr %7, align 8, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !9
  switch i8 %17, label %33 [
    i8 11, label %18
    i8 16, label %21
    i8 14, label %44
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ref_s, ptr %15, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !9
  br label %34

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ref_s, ptr %15, i64 0, i32 1
  %23 = load float, ptr %22, align 8, !tbaa !9
  %24 = sitofp i32 %2 to float
  %25 = fcmp olt float %23, %24
  %26 = sitofp i32 %3 to float
  %27 = fcmp ogt float %23, %26
  %28 = or i1 %25, %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %21
  %30 = fptosi float %23 to i64
  %31 = sitofp i64 %30 to float
  %32 = fcmp une float %23, %31
  br i1 %32, label %44, label %34

33:                                               ; preds = %14
  br label %44

34:                                               ; preds = %18, %29, %12
  %35 = phi i32 [ 1, %12 ], [ 0, %29 ], [ 0, %18 ]
  %36 = phi i64 [ %13, %12 ], [ %30, %29 ], [ %20, %18 ]
  %37 = sext i32 %2 to i64
  %38 = icmp slt i64 %36, %37
  %39 = sext i32 %3 to i64
  %40 = icmp sgt i64 %36, %39
  %41 = or i1 %38, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = trunc i64 %36 to i32
  store i32 %43, ptr %5, align 4, !tbaa !10
  br label %44

44:                                               ; preds = %34, %14, %29, %21, %42, %33
  %45 = phi i32 [ %35, %42 ], [ -20, %33 ], [ -15, %21 ], [ -15, %29 ], [ 2, %14 ], [ -15, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dict_int_param(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  %8 = icmp eq ptr %0, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7) #5
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %6
  %13 = sext i32 %4 to i64
  br label %34

14:                                               ; preds = %9
  %15 = load ptr, ptr %7, align 8, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !9
  switch i8 %17, label %33 [
    i8 11, label %18
    i8 16, label %21
    i8 14, label %44
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ref_s, ptr %15, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !9
  br label %34

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ref_s, ptr %15, i64 0, i32 1
  %23 = load float, ptr %22, align 8, !tbaa !9
  %24 = sitofp i32 %2 to float
  %25 = fcmp olt float %23, %24
  %26 = sitofp i32 %3 to float
  %27 = fcmp ogt float %23, %26
  %28 = or i1 %25, %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %21
  %30 = fptosi float %23 to i64
  %31 = sitofp i64 %30 to float
  %32 = fcmp une float %23, %31
  br i1 %32, label %44, label %34

33:                                               ; preds = %14
  br label %44

34:                                               ; preds = %29, %18, %12
  %35 = phi i32 [ 1, %12 ], [ 0, %29 ], [ 0, %18 ]
  %36 = phi i64 [ %13, %12 ], [ %30, %29 ], [ %20, %18 ]
  %37 = sext i32 %2 to i64
  %38 = icmp slt i64 %36, %37
  %39 = sext i32 %3 to i64
  %40 = icmp sgt i64 %36, %39
  %41 = or i1 %38, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = trunc i64 %36 to i32
  store i32 %43, ptr %5, align 4, !tbaa !10
  br label %44

44:                                               ; preds = %14, %21, %29, %33, %34, %42
  %45 = phi i32 [ %35, %42 ], [ -20, %33 ], [ -15, %21 ], [ -15, %29 ], [ 2, %14 ], [ -15, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  %46 = icmp eq i32 %45, 2
  %47 = select i1 %46, i32 -20, i32 %45
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dict_uint_param(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  %8 = icmp eq ptr %0, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %6
  %10 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7) #5
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %7, align 8, !tbaa !5
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = icmp eq i8 %15, 11
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ref_s, ptr %13, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !9
  %20 = icmp ult i64 %19, 4294967296
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = trunc i64 %19 to i32
  br label %23

23:                                               ; preds = %6, %9, %21
  %24 = phi i32 [ 0, %21 ], [ 1, %9 ], [ 1, %6 ]
  %25 = phi i32 [ %22, %21 ], [ %4, %9 ], [ %4, %6 ]
  %26 = icmp ult i32 %25, %2
  %27 = icmp ugt i32 %25, %3
  %28 = or i1 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 %25, ptr %5, align 4, !tbaa !10
  br label %30

30:                                               ; preds = %23, %17, %12, %29
  %31 = phi i32 [ %24, %29 ], [ -20, %12 ], [ -15, %17 ], [ -15, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dict_float_param(ptr noundef %0, ptr noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #5
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %4
  %11 = fptrunc double %2 to float
  br label %23

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !5
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !9
  switch i8 %15, label %26 [
    i8 11, label %16
    i8 16, label %20
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ref_s, ptr %13, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !9
  %19 = sitofp i64 %18 to float
  br label %23

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ref_s, ptr %13, i64 0, i32 1
  %22 = load float, ptr %21, align 8, !tbaa !9
  br label %23

23:                                               ; preds = %10, %16, %20
  %24 = phi float [ %22, %20 ], [ %19, %16 ], [ %11, %10 ]
  %25 = phi i32 [ 0, %20 ], [ 0, %16 ], [ 1, %10 ]
  store float %24, ptr %3, align 4, !tbaa !12
  br label %26

26:                                               ; preds = %23, %12
  %27 = phi i32 [ -20, %12 ], [ %25, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_int_array_param(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = icmp eq ptr %0, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #5
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %54, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 8, !tbaa !5
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 4
  br i1 %14, label %15, label %54

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tas_s, ptr %11, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !14
  %18 = zext i16 %17 to i32
  %19 = icmp ugt i32 %18, %2
  br i1 %19, label %54, label %20

20:                                               ; preds = %15
  %21 = icmp eq i16 %17, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ref_s, ptr %11, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  br label %25

25:                                               ; preds = %22, %48
  %26 = phi i32 [ %50, %48 ], [ 0, %22 ]
  %27 = phi ptr [ %52, %48 ], [ %3, %22 ]
  %28 = phi ptr [ %51, %48 ], [ %24, %22 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !9
  switch i8 %30, label %54 [
    i8 11, label %31
    i8 16, label %38
  ]

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ref_s, ptr %28, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !9
  %34 = add i64 %33, 2147483648
  %35 = icmp ult i64 %34, 4294967296
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = trunc i64 %33 to i32
  br label %48

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.ref_s, ptr %28, i64 0, i32 1
  %40 = load float, ptr %39, align 8, !tbaa !9
  %41 = fcmp olt float %40, 0xC1E0000000000000
  %42 = fcmp ogt float %40, 0x41E0000000000000
  %43 = or i1 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %38
  %45 = fptosi float %40 to i32
  %46 = sitofp i32 %45 to float
  %47 = fcmp une float %40, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %44, %36
  %49 = phi i32 [ %37, %36 ], [ %45, %44 ]
  store i32 %49, ptr %27, align 4, !tbaa !10
  %50 = add nuw nsw i32 %26, 1
  %51 = getelementptr inbounds %struct.ref_s, ptr %28, i64 1
  %52 = getelementptr inbounds i32, ptr %27, i64 1
  %53 = icmp eq i32 %50, %18
  br i1 %53, label %54, label %25, !llvm.loop !18

54:                                               ; preds = %31, %44, %38, %25, %48, %20, %15, %10, %4, %7
  %55 = phi i32 [ 0, %7 ], [ 0, %4 ], [ -20, %10 ], [ -13, %15 ], [ %18, %20 ], [ %18, %48 ], [ -20, %25 ], [ -15, %38 ], [ -15, %44 ], [ -15, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_float_array_param(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %6) #5
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %8, %5
  %12 = icmp eq ptr %4, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %11
  %14 = zext i32 %2 to i64
  %15 = shl nuw nsw i64 %14, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr nonnull align 4 %4, i64 %15, i1 false)
  br label %35

16:                                               ; preds = %8
  %17 = load ptr, ptr %6, align 8, !tbaa !5
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = icmp eq i8 %19, 4
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tas_s, ptr %17, i64 0, i32 1
  %23 = load i16, ptr %22, align 2, !tbaa !14
  %24 = zext i16 %23 to i32
  %25 = icmp ugt i32 %24, %2
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = zext i16 %23 to i64
  %30 = getelementptr inbounds %struct.ref_s, ptr %28, i64 %29
  %31 = getelementptr inbounds %struct.ref_s, ptr %30, i64 -1
  %32 = call i32 @num_params(ptr noundef nonnull %31, i32 noundef %24, ptr noundef %3) #5
  %33 = icmp slt i32 %32, 0
  %34 = select i1 %33, i32 %32, i32 %24
  br label %35

35:                                               ; preds = %21, %16, %11, %26, %13
  %36 = phi i32 [ %2, %13 ], [ %34, %26 ], [ 0, %11 ], [ -20, %16 ], [ -13, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_proc_param(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #5
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7, %4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store ptr null, ptr %13, align 8, !tbaa !9
  store i16 1248, ptr %2, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  store i16 0, ptr %14, align 2, !tbaa !14
  br label %24

15:                                               ; preds = %10
  store i16 0, ptr %2, align 8, !tbaa !20
  br label %24

16:                                               ; preds = %7
  %17 = load ptr, ptr %5, align 8, !tbaa !5
  %18 = load i16, ptr %17, align 8, !tbaa !20
  %19 = and i16 %18, 15552
  %20 = icmp eq i16 %19, 1216
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @check_proc_failed(ptr noundef nonnull %17) #5
  br label %24

23:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !21
  br label %24

24:                                               ; preds = %12, %15, %23, %21
  %25 = phi i32 [ 0, %23 ], [ %22, %21 ], [ 1, %15 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %25
}

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_matrix_param(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4) #5
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %4, align 8, !tbaa !5
  %11 = call i32 @read_matrix(ptr noundef %10, ptr noundef %2) #5
  br label %12

12:                                               ; preds = %3, %6, %9
  %13 = phi i32 [ %11, %9 ], [ -20, %6 ], [ -20, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %13
}

declare i32 @read_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dict_uid_param(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store i64 16777216, ptr %1, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.gs_uid_s, ptr %1, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !27
  br label %76

9:                                                ; preds = %4
  %10 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !9
  %11 = and i64 %10, 4294967295
  %12 = icmp eq i64 %11, 2
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull %5) #5
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 8, !tbaa !5
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = icmp eq i8 %19, 4
  br i1 %20, label %21, label %76

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tas_s, ptr %17, i64 0, i32 1
  %23 = load i16, ptr %22, align 2, !tbaa !14
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %76, label %25

25:                                               ; preds = %21
  %26 = zext i16 %23 to i32
  %27 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  %29 = call ptr %28(ptr noundef %3, i32 noundef %26, i32 noundef 8, ptr noundef nonnull @.str.1) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %76, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %33 = zext i16 %23 to i64
  br label %37

34:                                               ; preds = %52
  %35 = add nuw nsw i64 %38, 1
  %36 = icmp eq i64 %35, %33
  br i1 %36, label %53, label %37, !llvm.loop !31

37:                                               ; preds = %31, %34
  %38 = phi i64 [ 0, %31 ], [ %35, %34 ]
  %39 = load ptr, ptr %5, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.ref_s, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.ref_s, ptr %41, i64 %38
  %43 = getelementptr inbounds i8, ptr %42, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp eq i8 %44, 11
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = load ptr, ptr %32, align 8, !tbaa !32
  call void %47(ptr noundef %3, ptr noundef nonnull %29, ptr noundef nonnull @.str.1) #5
  br label %52

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.ref_s, ptr %41, i64 %38, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !9
  %51 = getelementptr inbounds i64, ptr %29, i64 %38
  store i64 %50, ptr %51, align 8, !tbaa !23
  br label %52

52:                                               ; preds = %48, %46
  br i1 %45, label %34, label %76

53:                                               ; preds = %34
  %54 = zext i16 %23 to i64
  %55 = sub nsw i64 0, %54
  store i64 %55, ptr %1, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct.gs_uid_s, ptr %1, i64 0, i32 1
  store ptr %29, ptr %56, align 8, !tbaa !27
  br label %76

57:                                               ; preds = %13, %9
  %58 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #5
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  store i64 16777216, ptr %1, align 8, !tbaa !25
  %61 = getelementptr inbounds %struct.gs_uid_s, ptr %1, i64 0, i32 1
  store ptr null, ptr %61, align 8, !tbaa !27
  br label %76

62:                                               ; preds = %57
  %63 = load ptr, ptr %5, align 8, !tbaa !5
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !9
  %66 = icmp eq i8 %65, 11
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ref_s, ptr %63, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !9
  %70 = icmp ugt i64 %69, 16777215
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = icmp eq i64 %69, 0
  %73 = getelementptr inbounds %struct.gs_uid_s, ptr %1, i64 0, i32 1
  br i1 %72, label %74, label %75

74:                                               ; preds = %71
  store i64 16777216, ptr %1, align 8, !tbaa !25
  store ptr null, ptr %73, align 8, !tbaa !27
  br label %76

75:                                               ; preds = %71
  store i64 %69, ptr %1, align 8, !tbaa !25
  store ptr null, ptr %73, align 8, !tbaa !27
  br label %76

76:                                               ; preds = %52, %62, %67, %53, %16, %21, %25, %75, %74, %60, %7
  %77 = phi i32 [ %2, %7 ], [ %2, %60 ], [ %2, %74 ], [ 0, %75 ], [ 1, %53 ], [ -20, %16 ], [ -15, %21 ], [ -25, %25 ], [ -15, %67 ], [ -15, %62 ], [ -20, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_check_uid_param(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = load i64, ptr %1, align 8, !tbaa !25
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %45

6:                                                ; preds = %2
  %7 = trunc i64 %4 to i32
  %8 = sub i32 0, %7
  %9 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %3) #5
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %59, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %59

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tas_s, ptr %12, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !14
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = icmp eq i32 %7, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ref_s, ptr %12, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = getelementptr inbounds %struct.gs_uid_s, ptr %1, i64 0, i32 1
  %28 = call i32 @llvm.umax.i32(i32 %8, i32 1)
  %29 = zext i32 %28 to i64
  br label %33

30:                                               ; preds = %38
  %31 = add nuw nsw i64 %34, 1
  %32 = icmp eq i64 %31, %29
  br i1 %32, label %59, label %33, !llvm.loop !33

33:                                               ; preds = %23, %30
  %34 = phi i64 [ 0, %23 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct.ref_s, ptr %26, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !9
  %37 = icmp eq i8 %36, 11
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ref_s, ptr %25, i64 %34, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !9
  %41 = load ptr, ptr %27, align 8, !tbaa !27
  %42 = getelementptr inbounds i64, ptr %41, i64 %34
  %43 = load i64, ptr %42, align 8, !tbaa !23
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %30, label %59

45:                                               ; preds = %2
  %46 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #5
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 8, !tbaa !5
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 11
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ref_s, ptr %49, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !9
  %56 = load i64, ptr %1, align 8, !tbaa !25
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  br label %59

59:                                               ; preds = %33, %30, %38, %21, %48, %53, %45, %6, %16, %11
  %60 = phi i32 [ 0, %6 ], [ 0, %16 ], [ 0, %11 ], [ 0, %45 ], [ 0, %48 ], [ %58, %53 ], [ 1, %21 ], [ 0, %38 ], [ 1, %30 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %60
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!15, !17, i64 2}
!15 = !{!"ref_s", !16, i64 0, !7, i64 8}
!16 = !{!"tas_s", !17, i64 0, !17, i64 2}
!17 = !{!"short", !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!15, !17, i64 0}
!21 = !{i64 0, i64 2, !22, i64 2, i64 2, !22, i64 8, i64 8, !23, i64 8, i64 2, !22, i64 8, i64 4, !12, i64 8, i64 8, !23, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!22 = !{!17, !17, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{!26, !24, i64 0}
!26 = !{!"gs_uid_s", !24, i64 0, !6, i64 8}
!27 = !{!26, !6, i64 8}
!28 = !{!29, !6, i64 32}
!29 = !{!"gs_memory_s", !30, i64 0}
!30 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!31 = distinct !{!31, !19}
!32 = !{!29, !6, i64 88}
!33 = distinct !{!33, !19}
