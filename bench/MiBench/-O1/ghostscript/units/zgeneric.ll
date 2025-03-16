; ModuleID = 'zgeneric.c'
source_filename = "zgeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }

@zgeneric_op_defs.op_defs_ = internal constant [12 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcopy }, %struct.op_def { ptr @.str.1, ptr @zforall }, %struct.op_def { ptr @.str.2, ptr @zget }, %struct.op_def { ptr @.str.3, ptr @zgetinterval }, %struct.op_def { ptr @.str.4, ptr @zlength }, %struct.op_def { ptr @.str.5, ptr @zput }, %struct.op_def { ptr @.str.6, ptr @zputinterval }, %struct.op_def { ptr @.str.7, ptr @array_continue }, %struct.op_def { ptr @.str.8, ptr @dict_continue }, %struct.op_def { ptr @.str.9, ptr @packedarray_continue }, %struct.op_def { ptr @.str.10, ptr @string_continue }, %struct.op_def { ptr null, ptr @zgeneric_init }], align 16
@.str = private unnamed_addr constant [6 x i8] c"1copy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"2forall\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"2get\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"3getinterval\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1length\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"3put\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"3putinterval\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"0%array_continue\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"0%dict_continue\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"0%packedarray_continue\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"0%string_continue\00", align 1
@zcopy_procs = dso_local local_unnamed_addr global [21 x ptr] zeroinitializer, align 16
@o_stack = external global %struct.ref_stack_s, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"putinterval\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"copy\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zgeneric_op_defs() local_unnamed_addr #0 {
  ret ptr @zgeneric_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zcopy(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %5, label %56

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !5
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !8
  %9 = ptrtoint ptr %0 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 4
  %13 = icmp ugt i64 %7, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #7
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %7, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = load i64, ptr %6, align 8, !tbaa !5
  %20 = trunc i64 %19 to i32
  br label %40

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %23 = trunc i64 %7 to i32
  %24 = shl i64 %7, 32
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds %struct.ref_s, ptr %22, i64 %25
  %27 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %28 = icmp ugt ptr %26, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %21
  %30 = sub nsw i64 0, %25
  %31 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %30
  %32 = ashr exact i64 %24, 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %31, i64 %32, i1 false)
  %33 = add nsw i32 %23, -1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %34
  %36 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %37 = icmp ugt ptr %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 %33, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %67

39:                                               ; preds = %29
  store ptr %35, ptr @o_stack, align 8, !tbaa !17
  br label %67

40:                                               ; preds = %21, %18
  %41 = phi i32 [ %20, %18 ], [ %23, %21 ]
  %42 = add nsw i32 %41, -1
  %43 = tail call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef %42) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %40
  %46 = icmp sgt i32 %41, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %45
  %48 = zext nneg i32 %41 to i64
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i64 [ 0, %47 ], [ %54, %49 ]
  %51 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %50) #7
  %52 = add nuw nsw i64 %50, %48
  %53 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %52) #7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %53, i64 16, i1 false), !tbaa.struct !18
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %54, %48
  br i1 %55, label %67, label %49, !llvm.loop !25

56:                                               ; preds = %1
  %57 = icmp ugt i8 %3, 20
  br i1 %57, label %67, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !8
  %60 = getelementptr inbounds %struct.ref_s, ptr %59, i64 1
  %61 = icmp ugt ptr %60, %0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = zext nneg i8 %3 to i64
  %64 = getelementptr inbounds [21 x ptr], ptr @zcopy_procs, i64 0, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !24
  %66 = tail call i32 %65(ptr noundef %0) #7
  br label %67

67:                                               ; preds = %49, %45, %40, %39, %38, %14, %58, %56, %62
  %68 = phi i32 [ %66, %62 ], [ -20, %56 ], [ -17, %58 ], [ -16, %38 ], [ 0, %39 ], [ -15, %14 ], [ %43, %40 ], [ 0, %45 ], [ 0, %49 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @zforall(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 -6
  %6 = icmp ugt ptr %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 6) #7
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %74

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds i8, ptr %0, i64 -15
  %12 = load i8, ptr %11, align 1, !tbaa !5
  switch i8 %12, label %13 [
    i8 4, label %15
    i8 2, label %23
    i8 18, label %35
    i8 5, label %43
    i8 6, label %43
  ]

13:                                               ; preds = %10
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #7
  br label %74

15:                                               ; preds = %10
  %16 = load i16, ptr %2, align 8, !tbaa !27
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %74, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5
  %21 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5, i32 1
  store ptr @array_continue, ptr %21, align 8, !tbaa !5
  store i16 3968, ptr %20, align 8, !tbaa !27
  %22 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5, i32 0, i32 1
  store i16 0, ptr %22, align 2, !tbaa !28
  br label %51

23:                                               ; preds = %10
  %24 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = load i16, ptr %25, align 8, !tbaa !29
  %27 = and i16 %26, 32
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %74, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5
  %31 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5, i32 1
  store ptr @dict_continue, ptr %31, align 8, !tbaa !5
  store i16 3968, ptr %30, align 8, !tbaa !27
  %32 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5, i32 0, i32 1
  store i16 0, ptr %32, align 2, !tbaa !28
  %33 = tail call i32 @dict_first(ptr noundef nonnull %2) #7
  %34 = zext i32 %33 to i64
  br label %51

35:                                               ; preds = %10
  %36 = load i16, ptr %2, align 8, !tbaa !27
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5
  %41 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5, i32 1
  store ptr @string_continue, ptr %41, align 8, !tbaa !5
  store i16 3968, ptr %40, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5, i32 0, i32 1
  store i16 0, ptr %42, align 2, !tbaa !28
  br label %51

43:                                               ; preds = %10, %10
  %44 = load i16, ptr %2, align 8, !tbaa !27
  %45 = and i16 %44, 32
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %74, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5
  %49 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5, i32 1
  store ptr @packedarray_continue, ptr %49, align 8, !tbaa !5
  store i16 3968, ptr %48, align 8, !tbaa !27
  %50 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5, i32 0, i32 1
  store i16 0, ptr %50, align 2, !tbaa !28
  br label %51

51:                                               ; preds = %47, %39, %29, %19
  %52 = phi i64 [ 0, %47 ], [ 0, %39 ], [ %34, %29 ], [ 0, %19 ]
  %53 = load i16, ptr %0, align 8, !tbaa !27
  %54 = and i16 %53, 15552
  %55 = icmp eq i16 %54, 1216
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #7
  br label %74

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  %60 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1, i32 1
  store ptr @forall_cleanup, ptr %60, align 8, !tbaa !5
  store i16 3712, ptr %59, align 8, !tbaa !27
  %61 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1, i32 0, i32 1
  store i16 2, ptr %61, align 2, !tbaa !28
  %62 = getelementptr inbounds %struct.ref_s, ptr %3, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  %63 = getelementptr inbounds %struct.ref_s, ptr %3, i64 3
  %64 = getelementptr inbounds %struct.ref_s, ptr %3, i64 3, i32 1
  store i64 %52, ptr %64, align 8, !tbaa !5
  store i16 2816, ptr %63, align 8, !tbaa !27
  %65 = getelementptr inbounds %struct.ref_s, ptr %3, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  %66 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %67 = getelementptr inbounds %struct.ref_s, ptr %66, i64 4
  store ptr %67, ptr @e_stack, align 8, !tbaa !17
  %68 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %69 = getelementptr inbounds %struct.ref_s, ptr %68, i64 -2
  store ptr %69, ptr @o_stack, align 8, !tbaa !17
  %70 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %71 = getelementptr inbounds %struct.ref_s, ptr %3, i64 5, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = tail call i32 %72(ptr noundef nonnull %70) #7
  br label %74

74:                                               ; preds = %43, %35, %23, %15, %7, %58, %56, %13
  %75 = phi i32 [ %14, %13 ], [ %73, %58 ], [ %57, %56 ], [ %8, %7 ], [ -7, %15 ], [ -7, %23 ], [ -7, %35 ], [ -7, %43 ]
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @zget(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %4 = getelementptr inbounds i8, ptr %0, i64 -15
  %5 = load i8, ptr %4, align 1, !tbaa !5
  switch i8 %5, label %41 [
    i8 2, label %6
    i8 18, label %17
  ]

6:                                                ; preds = %1
  %7 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = load i16, ptr %8, align 8, !tbaa !29
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %66, label %12

12:                                               ; preds = %6
  %13 = call i32 @dict_find(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #7
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %66, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !18
  br label %63

17:                                               ; preds = %1
  %18 = load i16, ptr %3, align 8, !tbaa !27
  %19 = and i16 %18, 32
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %66, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %0, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 11
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %66

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !5
  %30 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !28
  %32 = zext i16 %31 to i64
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %27
  %35 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = and i64 %29, 4294967295
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = zext i8 %39 to i64
  store i64 %40, ptr %35, align 8, !tbaa !5
  store i16 2816, ptr %3, align 8, !tbaa !27
  br label %63

41:                                               ; preds = %1
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !5
  %44 = icmp eq i8 %43, 11
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %60

47:                                               ; preds = %41
  %48 = load i16, ptr %3, align 8, !tbaa !27
  %49 = and i16 %48, 32
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !5
  %54 = tail call i32 @array_get(ptr noundef nonnull %3, i64 noundef %53, ptr noundef nonnull %3) #7
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = icmp eq i32 %54, -20
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = tail call i32 @check_type_failed(ptr noundef nonnull %3) #7
  br label %60

60:                                               ; preds = %51, %56, %47, %58, %45
  %61 = phi i1 [ false, %58 ], [ false, %45 ], [ false, %47 ], [ false, %56 ], [ true, %51 ]
  %62 = phi i32 [ %59, %58 ], [ %46, %45 ], [ -7, %47 ], [ %54, %56 ], [ undef, %51 ]
  br i1 %61, label %63, label %66

63:                                               ; preds = %60, %34, %15
  %64 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %65 = getelementptr inbounds %struct.ref_s, ptr %64, i64 -1
  store ptr %65, ptr @o_stack, align 8, !tbaa !17
  br label %66

66:                                               ; preds = %27, %17, %12, %6, %60, %63, %25
  %67 = phi i32 [ 0, %63 ], [ %62, %60 ], [ %26, %25 ], [ -7, %6 ], [ -21, %12 ], [ -7, %17 ], [ -15, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetinterval(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %4 = getelementptr inbounds i8, ptr %0, i64 -31
  %5 = load i8, ptr %4, align 1, !tbaa !5
  switch i8 %5, label %6 [
    i8 4, label %8
    i8 18, label %8
    i8 5, label %8
    i8 6, label %8
  ]

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %3) #7
  br label %73

8:                                                ; preds = %1, %1, %1, %1
  %9 = load i16, ptr %3, align 8, !tbaa !27
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %73, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %0, i64 -15
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 11
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #7
  br label %73

18:                                               ; preds = %12
  %19 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !5
  %21 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !28
  %23 = zext i16 %22 to i64
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %73, label %25

25:                                               ; preds = %18
  %26 = trunc i64 %20 to i32
  %27 = getelementptr inbounds i8, ptr %0, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = icmp eq i8 %28, 11
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %73

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !5
  %35 = sub i64 %23, %20
  %36 = and i64 %35, 4294967295
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %73, label %38

38:                                               ; preds = %32
  switch i8 %5, label %69 [
    i8 4, label %39
    i8 18, label %44
    i8 5, label %49
    i8 6, label %64
  ]

39:                                               ; preds = %38
  %40 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = and i64 %20, 4294967295
  %43 = getelementptr inbounds %struct.ref_s, ptr %41, i64 %42
  store ptr %43, ptr %40, align 8, !tbaa !5
  br label %69

44:                                               ; preds = %38
  %45 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = and i64 %20, 4294967295
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  store ptr %48, ptr %45, align 8, !tbaa !5
  br label %69

49:                                               ; preds = %38
  %50 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = icmp eq i32 %26, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49, %53
  %54 = phi ptr [ %60, %53 ], [ %51, %49 ]
  %55 = phi i32 [ %56, %53 ], [ %26, %49 ]
  %56 = add i32 %55, -1
  %57 = load i16, ptr %54, align 2, !tbaa !19
  %58 = icmp ugt i16 %57, 16383
  %59 = select i1 %58, i64 1, i64 8
  %60 = getelementptr inbounds i16, ptr %54, i64 %59
  %61 = icmp eq i32 %56, 0
  br i1 %61, label %62, label %53, !llvm.loop !31

62:                                               ; preds = %53, %49
  %63 = phi ptr [ %51, %49 ], [ %60, %53 ]
  store ptr %63, ptr %50, align 8, !tbaa !5
  br label %69

64:                                               ; preds = %38
  %65 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = and i64 %20, 4294967295
  %68 = getelementptr inbounds i16, ptr %66, i64 %67
  store ptr %68, ptr %65, align 8, !tbaa !5
  br label %69

69:                                               ; preds = %38, %64, %62, %44, %39
  %70 = trunc i64 %34 to i16
  store i16 %70, ptr %21, align 2, !tbaa !28
  %71 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %72 = getelementptr inbounds %struct.ref_s, ptr %71, i64 -2
  store ptr %72, ptr @o_stack, align 8, !tbaa !17
  br label %73

73:                                               ; preds = %32, %18, %8, %69, %30, %16, %6
  %74 = phi i32 [ %7, %6 ], [ 0, %69 ], [ %31, %30 ], [ %17, %16 ], [ -7, %8 ], [ -15, %18 ], [ -15, %32 ]
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @zlength(ptr noundef %0) #1 {
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  switch i8 %4, label %28 [
    i8 4, label %5
    i8 18, label %5
    i8 5, label %5
    i8 6, label %5
    i8 2, label %14
    i8 13, label %23
  ]

5:                                                ; preds = %1, %1, %1, %1
  %6 = load i16, ptr %0, align 8, !tbaa !27
  %7 = and i16 %6, 32
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !28
  %12 = zext i16 %11 to i64
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i64 %12, ptr %13, align 8, !tbaa !5
  store i16 2816, ptr %0, align 8, !tbaa !27
  br label %30

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = load i16, ptr %16, align 8, !tbaa !29
  %18 = and i16 %17, 32
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @dict_length(ptr noundef %0) #7
  %22 = zext i32 %21 to i64
  store i64 %22, ptr %15, align 8, !tbaa !5
  store i16 2816, ptr %0, align 8, !tbaa !27
  br label %30

23:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @name_string_ref(ptr noundef %0, ptr noundef nonnull %2) #7
  %24 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !28
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i64 %26, ptr %27, align 8, !tbaa !5
  store i16 2816, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  br label %30

28:                                               ; preds = %1
  %29 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %30

30:                                               ; preds = %14, %5, %28, %23, %20, %9
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ 0, %20 ], [ 0, %9 ], [ -7, %5 ], [ -7, %14 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @zput(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %4 = getelementptr inbounds i8, ptr %0, i64 -31
  %5 = load i8, ptr %4, align 1, !tbaa !5
  switch i8 %5, label %89 [
    i8 2, label %6
    i8 4, label %15
    i8 5, label %94
    i8 6, label %94
    i8 18, label %56
  ]

6:                                                ; preds = %1
  %7 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = load i16, ptr %8, align 8, !tbaa !29
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %94, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @dict_put(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #7
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %91, label %94

15:                                               ; preds = %1
  %16 = load i16, ptr %3, align 8, !tbaa !27
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %94, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %0, i64 -15
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = icmp eq i8 %22, 11
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #7
  br label %94

26:                                               ; preds = %20
  %27 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !5
  %29 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 0, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !28
  %31 = zext i16 %30 to i64
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %94

33:                                               ; preds = %26
  %34 = load i16, ptr %0, align 8, !tbaa !27
  %35 = and i16 %34, 12
  %36 = zext nneg i16 %35 to i32
  %37 = and i32 %17, 12
  %38 = icmp ult i32 %37, %36
  br i1 %38, label %94, label %39

39:                                               ; preds = %33
  %40 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = and i64 %28, 4294967295
  %43 = getelementptr inbounds %struct.ref_s, ptr %41, i64 %42
  %44 = load i16, ptr %43, align 8, !tbaa !27
  %45 = zext i16 %44 to i32
  %46 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !32
  %47 = and i32 %46, %45
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %3, ptr noundef nonnull %43, ptr noundef nonnull @.str.11) #7
  br label %51

51:                                               ; preds = %39, %49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  %52 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !34
  %53 = load i16, ptr %43, align 8, !tbaa !27
  %54 = trunc i32 %52 to i16
  %55 = or i16 %53, %54
  store i16 %55, ptr %43, align 8, !tbaa !27
  br label %91

56:                                               ; preds = %1
  %57 = load i16, ptr %3, align 8, !tbaa !27
  %58 = and i16 %57, 16
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %94, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %0, i64 -15
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = icmp eq i8 %62, 11
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #7
  br label %94

66:                                               ; preds = %60
  %67 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !5
  %69 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 0, i32 1
  %70 = load i16, ptr %69, align 2, !tbaa !28
  %71 = zext i16 %70 to i64
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = getelementptr inbounds i8, ptr %0, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !5
  %76 = icmp eq i8 %75, 11
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %94

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !5
  %82 = icmp ugt i64 %81, 255
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  %84 = trunc i64 %81 to i8
  %85 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = and i64 %68, 4294967295
  %88 = getelementptr inbounds i8, ptr %86, i64 %87
  store i8 %84, ptr %88, align 1, !tbaa !5
  br label %91

89:                                               ; preds = %1
  %90 = tail call i32 @check_type_failed(ptr noundef nonnull %3) #7
  br label %94

91:                                               ; preds = %12, %83, %51
  %92 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %93 = getelementptr inbounds %struct.ref_s, ptr %92, i64 -3
  store ptr %93, ptr @o_stack, align 8, !tbaa !17
  br label %94

94:                                               ; preds = %79, %66, %56, %1, %1, %33, %26, %15, %6, %12, %91, %89, %77, %64, %24
  %95 = phi i32 [ %90, %89 ], [ 0, %91 ], [ %78, %77 ], [ %65, %64 ], [ %25, %24 ], [ %13, %12 ], [ -7, %6 ], [ -7, %15 ], [ -15, %26 ], [ -7, %33 ], [ -7, %1 ], [ -7, %1 ], [ -7, %56 ], [ -15, %66 ], [ -15, %79 ]
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal i32 @zputinterval(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %4 = getelementptr inbounds i8, ptr %0, i64 -31
  %5 = load i8, ptr %4, align 1, !tbaa !5
  switch i8 %5, label %6 [
    i8 5, label %32
    i8 6, label %32
    i8 4, label %8
    i8 18, label %8
  ]

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %3) #7
  br label %32

8:                                                ; preds = %1, %1
  %9 = load i16, ptr %3, align 8, !tbaa !27
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %0, i64 -15
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 11
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #7
  br label %32

18:                                               ; preds = %12
  %19 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !5
  %21 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !28
  %23 = zext i16 %22 to i64
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = trunc i64 %20 to i32
  %27 = tail call fastcc i32 @copy_interval(ptr noundef nonnull %3, i32 noundef %26, ptr noundef %0, ptr noundef nonnull @.str.12)
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %31 = getelementptr inbounds %struct.ref_s, ptr %30, i64 -3
  store ptr %31, ptr @o_stack, align 8, !tbaa !17
  br label %32

32:                                               ; preds = %25, %29, %18, %8, %1, %1, %16, %6
  %33 = phi i32 [ %7, %6 ], [ %17, %16 ], [ -7, %1 ], [ -7, %1 ], [ -7, %8 ], [ -15, %18 ], [ %27, %29 ], [ %27, %25 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @array_continue(ptr noundef %0) #2 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %3 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 0, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !28
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %9 = icmp ugt ptr %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %21

11:                                               ; preds = %6
  store ptr %7, ptr @o_stack, align 8, !tbaa !17
  %12 = add i16 %4, -1
  store i16 %12, ptr %3, align 2, !tbaa !28
  %13 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !18
  %15 = load ptr, ptr %13, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.ref_s, ptr %15, i64 1
  store ptr %16, ptr %13, align 8, !tbaa !5
  %17 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 2
  store ptr %18, ptr @e_stack, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  br label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -4
  store ptr %20, ptr @e_stack, align 8, !tbaa !17
  br label %21

21:                                               ; preds = %19, %11, %10
  %22 = phi i32 [ -16, %10 ], [ 5, %11 ], [ 14, %19 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dict_continue(ptr noundef %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %5 = icmp ugt ptr %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %26

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -2
  %9 = getelementptr %struct.ref_s, ptr %2, i64 -1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !5
  %11 = trunc i64 %10 to i32
  store ptr %3, ptr @o_stack, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %13 = tail call i32 @dict_next(ptr noundef nonnull %8, i32 noundef %11, ptr noundef nonnull %12) #7
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = zext nneg i32 %13 to i64
  %17 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %18 = getelementptr %struct.ref_s, ptr %17, i64 -1, i32 1
  store i64 %16, ptr %18, align 8, !tbaa !5
  %19 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.ref_s, ptr %19, i64 2
  store ptr %20, ptr @e_stack, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  br label %26

21:                                               ; preds = %7
  %22 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -2
  store ptr %23, ptr @o_stack, align 8, !tbaa !17
  %24 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -4
  store ptr %25, ptr @e_stack, align 8, !tbaa !17
  br label %26

26:                                               ; preds = %21, %15, %6
  %27 = phi i32 [ -16, %6 ], [ 5, %15 ], [ 14, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @packedarray_continue(ptr noundef %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %3 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 0, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !28
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = add i16 %4, -1
  store i16 %9, ptr %3, align 2, !tbaa !28
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %11 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %12 = icmp ugt ptr %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %23

14:                                               ; preds = %6
  store ptr %10, ptr @o_stack, align 8, !tbaa !17
  tail call void @packed_get(ptr noundef %8, ptr noundef nonnull %10) #7
  %15 = load i16, ptr %8, align 2, !tbaa !19
  %16 = icmp ugt i16 %15, 16383
  %17 = select i1 %16, i64 1, i64 8
  %18 = getelementptr inbounds i16, ptr %8, i64 %17
  store ptr %18, ptr %7, align 8, !tbaa !5
  %19 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.ref_s, ptr %19, i64 2
  store ptr %20, ptr @e_stack, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  br label %23

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -4
  store ptr %22, ptr @e_stack, align 8, !tbaa !17
  br label %23

23:                                               ; preds = %13, %14, %21
  %24 = phi i32 [ 14, %21 ], [ -16, %13 ], [ 5, %14 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @string_continue(ptr noundef %0) #2 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %3 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 0, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !28
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = add i16 %4, -1
  store i16 %7, ptr %3, align 2, !tbaa !28
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %10 = icmp ugt ptr %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %24

12:                                               ; preds = %6
  store ptr %8, ptr @o_stack, align 8, !tbaa !17
  %13 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !5
  store i16 2816, ptr %8, align 8, !tbaa !27
  %18 = load ptr, ptr %13, align 8, !tbaa !5
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %19, ptr %13, align 8, !tbaa !5
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 2
  store ptr %21, ptr @e_stack, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  br label %24

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -4
  store ptr %23, ptr @e_stack, align 8, !tbaa !17
  br label %24

24:                                               ; preds = %22, %12, %11
  %25 = phi i32 [ -16, %11 ], [ 5, %12 ], [ 14, %22 ]
  ret i32 %25
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @zgeneric_init() #3 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %4, %1 ]
  %3 = getelementptr inbounds [21 x ptr], ptr @zcopy_procs, i64 0, i64 %2
  store ptr @zcopy_invalid, ptr %3, align 8, !tbaa !24
  %4 = add nuw nsw i64 %2, 1
  %5 = icmp eq i64 %4, 21
  br i1 %5, label %6, label %1, !llvm.loop !35

6:                                                ; preds = %1
  store ptr @zcopy_interval, ptr getelementptr inbounds ([21 x ptr], ptr @zcopy_procs, i64 0, i64 18), align 16, !tbaa !24
  store ptr @zcopy_interval, ptr getelementptr inbounds ([21 x ptr], ptr @zcopy_procs, i64 0, i64 4), align 16, !tbaa !24
  store ptr @zcopy_dict, ptr getelementptr inbounds ([21 x ptr], ptr @zcopy_procs, i64 0, i64 2), align 16, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #5

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @ref_stack_push(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @dict_first(ptr noundef) local_unnamed_addr #5

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @forall_cleanup(ptr nocapture readnone %0) #0 {
  ret i32 0
}

declare i32 @dict_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dict_length(ptr noundef) local_unnamed_addr #5

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dict_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @copy_interval(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.ref_s, align 8
  %6 = getelementptr inbounds i8, ptr %2, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !28
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp eq i8 %7, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = add i8 %7, -5
  %16 = icmp ult i8 %15, 2
  %17 = icmp eq i8 %12, 4
  %18 = and i1 %16, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @check_type_failed(ptr noundef %2) #7
  br label %110

21:                                               ; preds = %14, %4
  %22 = load i16, ptr %2, align 8, !tbaa !27
  %23 = and i16 %22, 32
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %110, label %25

25:                                               ; preds = %21
  %26 = load i16, ptr %0, align 8, !tbaa !27
  %27 = and i16 %26, 16
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %110, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !28
  %32 = zext i16 %31 to i32
  %33 = sub nsw i32 %32, %1
  %34 = icmp ult i32 %33, %10
  br i1 %34, label %110, label %35

35:                                               ; preds = %29
  switch i8 %7, label %110 [
    i8 4, label %36
    i8 18, label %40
    i8 5, label %77
    i8 6, label %77
  ]

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = tail call i32 @refcpy_to_old(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %38, i32 noundef %10, ptr noundef %3) #7
  br label %110

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = zext nneg i32 %1 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  %47 = zext i16 %9 to i64
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = icmp ugt ptr %48, %46
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = getelementptr inbounds i8, ptr %46, i64 %47
  %52 = icmp ugt ptr %51, %42
  br i1 %52, label %54, label %53

53:                                               ; preds = %50, %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %42, i64 %47, i1 false)
  br label %110

54:                                               ; preds = %50
  %55 = icmp ult ptr %46, %42
  %56 = icmp eq i16 %9, 0
  br i1 %55, label %58, label %57

57:                                               ; preds = %54
  br i1 %56, label %110, label %68

58:                                               ; preds = %54
  br i1 %56, label %110, label %59

59:                                               ; preds = %58, %59
  %60 = phi i32 [ %64, %59 ], [ %10, %58 ]
  %61 = phi ptr [ %66, %59 ], [ %46, %58 ]
  %62 = phi ptr [ %65, %59 ], [ %42, %58 ]
  %63 = load i8, ptr %62, align 1, !tbaa !5
  store i8 %63, ptr %61, align 1, !tbaa !5
  %64 = add nsw i32 %60, -1
  %65 = getelementptr inbounds i8, ptr %62, i64 1
  %66 = getelementptr inbounds i8, ptr %61, i64 1
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %110, label %59, !llvm.loop !36

68:                                               ; preds = %57, %68
  %69 = phi i32 [ %75, %68 ], [ %10, %57 ]
  %70 = phi ptr [ %74, %68 ], [ %51, %57 ]
  %71 = phi ptr [ %72, %68 ], [ %48, %57 ]
  %72 = getelementptr inbounds i8, ptr %71, i64 -1
  %73 = load i8, ptr %72, align 1, !tbaa !5
  %74 = getelementptr inbounds i8, ptr %70, i64 -1
  store i8 %73, ptr %74, align 1, !tbaa !5
  %75 = add nsw i32 %69, -1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %110, label %68, !llvm.loop !37

77:                                               ; preds = %35, %35
  %78 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %82 = icmp eq i16 %9, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %77
  %84 = zext nneg i32 %1 to i64
  %85 = getelementptr inbounds %struct.ref_s, ptr %81, i64 %84
  br label %86

86:                                               ; preds = %83, %97
  %87 = phi ptr [ %107, %97 ], [ %85, %83 ]
  %88 = phi ptr [ %105, %97 ], [ %79, %83 ]
  %89 = phi i32 [ %106, %97 ], [ 0, %83 ]
  call void @packed_get(ptr noundef %88, ptr noundef nonnull %5) #7
  %90 = load i16, ptr %87, align 8, !tbaa !27
  %91 = zext i16 %90 to i32
  %92 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !32
  %93 = and i32 %92, %91
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %87, ptr noundef %3) #7
  br label %97

97:                                               ; preds = %86, %95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !18
  %98 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !34
  %99 = load i16, ptr %87, align 8, !tbaa !27
  %100 = trunc i32 %98 to i16
  %101 = or i16 %99, %100
  store i16 %101, ptr %87, align 8, !tbaa !27
  %102 = load i16, ptr %88, align 2, !tbaa !19
  %103 = icmp ugt i16 %102, 16383
  %104 = select i1 %103, i64 1, i64 8
  %105 = getelementptr inbounds i16, ptr %88, i64 %104
  %106 = add nuw nsw i32 %89, 1
  %107 = getelementptr inbounds %struct.ref_s, ptr %87, i64 1
  %108 = icmp eq i32 %106, %10
  br i1 %108, label %109, label %86, !llvm.loop !38

109:                                              ; preds = %97, %77
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %110

110:                                              ; preds = %68, %59, %57, %58, %109, %35, %53, %29, %25, %21, %36, %19
  %111 = phi i32 [ %39, %36 ], [ %20, %19 ], [ -7, %21 ], [ -7, %25 ], [ -15, %29 ], [ 0, %53 ], [ 0, %35 ], [ 0, %109 ], [ 0, %58 ], [ 0, %57 ], [ 0, %59 ], [ 0, %68 ]
  ret i32 %111
}

declare i32 @refcpy_to_old(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @packed_get(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dict_next(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @zcopy_invalid(ptr noundef %0) #1 {
  %2 = tail call i32 @check_type_failed(ptr noundef %0) #7
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zcopy_interval(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = tail call fastcc i32 @copy_interval(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull @.str.13)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !28
  %8 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  store i16 %7, ptr %8, align 2, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  %9 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 -1
  store ptr %10, ptr @o_stack, align 8, !tbaa !17
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i32 [ 0, %5 ], [ %3, %1 ]
  ret i32 %12
}

declare i32 @zcopy_dict(ptr noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !14, i64 40, !14, i64 44, !11, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !11, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !10, i64 120}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"ref_s", !12, i64 0, !6, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!9, !10, i64 16}
!16 = !{!9, !14, i64 64}
!17 = !{!9, !10, i64 0}
!18 = !{i64 0, i64 2, !19, i64 2, i64 2, !19, i64 8, i64 8, !20, i64 8, i64 2, !19, i64 8, i64 4, !22, i64 8, i64 8, !20, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24}
!19 = !{!13, !13, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{!10, !10, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!11, !13, i64 0}
!28 = !{!11, !13, i64 2}
!29 = !{!30, !13, i64 0}
!30 = !{!"dict_s", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48}
!31 = distinct !{!31, !26}
!32 = !{!33, !14, i64 56}
!33 = !{!"gs_dual_memory_s", !10, i64 0, !6, i64 8, !14, i64 40, !14, i64 44, !10, i64 48, !14, i64 56, !14, i64 60}
!34 = !{!33, !14, i64 60}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = distinct !{!37, !26}
!38 = distinct !{!38, !26}
