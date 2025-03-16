; ModuleID = 'zbseq.c'
source_filename = "zbseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zbseq_l2_op_defs.op_defs_ = internal constant [7 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zinstallsystemnames }, %struct.op_def { ptr @.str.2, ptr @zcurrentobjectformat }, %struct.op_def { ptr @.str.3, ptr @zsetobjectformat }, %struct.op_def { ptr @.str.4, ptr @zbosheader }, %struct.op_def { ptr @.str.5, ptr @zbosobject }, %struct.op_def { ptr null, ptr @zbseq_init }], align 16
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"1.installsystemnames\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"0currentobjectformat\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"1setobjectformat\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"3.bosheader\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"4.bosobject\00", align 1
@system_names = dso_local global %struct.ref_s zeroinitializer, align 8
@user_names = dso_local global %struct.ref_s zeroinitializer, align 8
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c".installsystemnames\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@ref_binary_object_format = external global %struct.ref_s, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"setobjectformat\00", align 1
@system_names_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@system_names_p = internal global ptr @system_names, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"system_names\00", align 1
@user_names_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@user_names_p = internal global ptr @user_names, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"user_names\00", align 1
@scan_btoken_proc = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zbseq_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zbseq_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zinstallsystemnames(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 8, !tbaa !5
  %3 = zext i16 %2 to i32
  %4 = and i32 %3, 12
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = and i32 %3, 16160
  %8 = icmp eq i32 %7, 1568
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !11
  %12 = icmp eq i8 %11, 6
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %30

15:                                               ; preds = %6
  %16 = load i16, ptr @system_names, align 8, !tbaa !5
  %17 = zext i16 %16 to i32
  %18 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !12
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef null, ptr noundef nonnull @system_names, ptr noundef nonnull @.str.6) #7
  br label %23

23:                                               ; preds = %15, %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @system_names, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !16
  %24 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !23
  %25 = load i16, ptr @system_names, align 8, !tbaa !5
  %26 = trunc i32 %24 to i16
  %27 = or i16 %25, %26
  store i16 %27, ptr @system_names, align 8, !tbaa !5
  %28 = load ptr, ptr @o_stack, align 8, !tbaa !24
  %29 = getelementptr inbounds %struct.ref_s, ptr %28, i64 -1
  store ptr %29, ptr @o_stack, align 8, !tbaa !24
  br label %30

30:                                               ; preds = %13, %9, %1, %23
  %31 = phi i32 [ 0, %23 ], [ -7, %1 ], [ %14, %13 ], [ -7, %9 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zcurrentobjectformat(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !26
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !27
  br label %7

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @ref_binary_object_format, i64 16, i1 false), !tbaa.struct !16
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetobjectformat(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %26

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !11
  %10 = icmp ugt i64 %9, 4
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = load i16, ptr @ref_binary_object_format, align 8, !tbaa !5
  %13 = zext i16 %12 to i32
  %14 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !12
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef null, ptr noundef nonnull @ref_binary_object_format, ptr noundef nonnull @.str.7) #7
  br label %19

19:                                               ; preds = %11, %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @ref_binary_object_format, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !16
  %20 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !23
  %21 = load i16, ptr @ref_binary_object_format, align 8, !tbaa !5
  %22 = trunc i32 %20 to i16
  %23 = or i16 %21, %22
  store i16 %23, ptr @ref_binary_object_format, align 8, !tbaa !5
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -1
  store ptr %25, ptr @o_stack, align 8, !tbaa !24
  br label %26

26:                                               ; preds = %7, %19, %5
  %27 = phi i32 [ 0, %19 ], [ %6, %5 ], [ -15, %7 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @zbosheader(ptr noundef %0) #1 {
  %2 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_binary_object_format, i64 0, i32 1), align 8, !tbaa !11
  %3 = trunc i64 %2 to i32
  %4 = add nsw i32 %3, -1
  %5 = icmp slt i32 %3, 1
  br i1 %5, label %91, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %8 = getelementptr inbounds i8, ptr %0, i64 -31
  %9 = load i8, ptr %8, align 1, !tbaa !11
  %10 = icmp eq i8 %9, 11
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #7
  br label %91

13:                                               ; preds = %6
  %14 = getelementptr inbounds i8, ptr %0, i64 -15
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = icmp eq i8 %15, 11
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %19 = tail call i32 @check_type_failed(ptr noundef nonnull %18) #7
  br label %91

20:                                               ; preds = %13
  %21 = load i16, ptr %0, align 8, !tbaa !5
  %22 = and i16 %21, 16144
  %23 = icmp eq i16 %22, 4624
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %0, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !11
  %27 = icmp eq i8 %26, 18
  br i1 %27, label %91, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %91

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !28
  %33 = icmp ult i16 %32, 8
  br i1 %33, label %91, label %34

34:                                               ; preds = %30
  %35 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !11
  %37 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = icmp slt i64 %36, 256
  %42 = icmp slt i64 %38, 65532
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %58

44:                                               ; preds = %34
  %45 = trunc i64 %36 to i8
  %46 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 %45, ptr %46, align 1, !tbaa !11
  %47 = getelementptr inbounds i8, ptr %40, i64 2
  %48 = trunc i64 %38 to i16
  %49 = add i16 %48, 4
  %50 = trunc i16 %49 to i8
  %51 = lshr i16 %49, 8
  %52 = trunc i16 %51 to i8
  %53 = and i32 %4, 1
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds i8, ptr %40, i64 3
  br i1 %54, label %57, label %56

56:                                               ; preds = %44
  store i8 %50, ptr %47, align 1, !tbaa !11
  store i8 %52, ptr %55, align 1, !tbaa !11
  br label %85

57:                                               ; preds = %44
  store i8 %52, ptr %47, align 1, !tbaa !11
  store i8 %50, ptr %55, align 1, !tbaa !11
  br label %85

58:                                               ; preds = %34
  %59 = icmp slt i64 %36, 65536
  br i1 %59, label %60, label %91

60:                                               ; preds = %58
  %61 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 0, ptr %61, align 1, !tbaa !11
  %62 = getelementptr inbounds i8, ptr %40, i64 2
  %63 = trunc i64 %36 to i8
  %64 = lshr i64 %36, 8
  %65 = trunc i64 %64 to i8
  %66 = and i32 %4, 1
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds i8, ptr %40, i64 3
  %69 = select i1 %67, i8 %65, i8 %63
  %70 = select i1 %67, i8 %63, i8 %65
  store i8 %69, ptr %62, align 1, !tbaa !11
  store i8 %70, ptr %68, align 1, !tbaa !11
  %71 = getelementptr inbounds i8, ptr %40, i64 4
  %72 = add nsw i64 %38, 8
  %73 = trunc i64 %72 to i8
  %74 = lshr i64 %72, 8
  %75 = trunc i64 %74 to i8
  %76 = lshr i64 %72, 16
  %77 = trunc i64 %76 to i8
  %78 = lshr i64 %72, 24
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds i8, ptr %40, i64 5
  %81 = getelementptr inbounds i8, ptr %40, i64 6
  %82 = getelementptr inbounds i8, ptr %40, i64 7
  br i1 %67, label %84, label %83

83:                                               ; preds = %60
  store i8 %73, ptr %71, align 1, !tbaa !11
  store i8 %75, ptr %80, align 1, !tbaa !11
  store i8 %77, ptr %81, align 1, !tbaa !11
  store i8 %79, ptr %82, align 1, !tbaa !11
  br label %85

84:                                               ; preds = %60
  store i8 %79, ptr %71, align 1, !tbaa !11
  store i8 %77, ptr %80, align 1, !tbaa !11
  store i8 %75, ptr %81, align 1, !tbaa !11
  store i8 %73, ptr %82, align 1, !tbaa !11
  br label %85

85:                                               ; preds = %84, %83, %57, %56
  %86 = phi i16 [ 4, %56 ], [ 4, %57 ], [ 8, %83 ], [ 8, %84 ]
  store i16 %86, ptr %31, align 2, !tbaa !28
  %87 = trunc i64 %2 to i8
  %88 = add i8 %87, 127
  store i8 %88, ptr %40, align 1, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !16
  %89 = load ptr, ptr @o_stack, align 8, !tbaa !24
  %90 = getelementptr inbounds %struct.ref_s, ptr %89, i64 -2
  store ptr %90, ptr @o_stack, align 8, !tbaa !24
  br label %91

91:                                               ; preds = %58, %30, %28, %24, %1, %85, %17, %11
  %92 = phi i32 [ 0, %85 ], [ %19, %17 ], [ %12, %11 ], [ -21, %1 ], [ %29, %28 ], [ -7, %24 ], [ -15, %30 ], [ -15, %58 ]
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal i32 @zbosobject(ptr noundef %0) #1 {
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %4 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_binary_object_format, i64 0, i32 1), align 8, !tbaa !11
  %5 = trunc i64 %4 to i32
  %6 = add nsw i32 %5, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %7 = getelementptr inbounds i8, ptr %0, i64 -47
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 11
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %12 = tail call i32 @check_type_failed(ptr noundef nonnull %11) #7
  br label %124

13:                                               ; preds = %1
  %14 = getelementptr inbounds i8, ptr %0, i64 -31
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = icmp eq i8 %15, 11
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %19 = tail call i32 @check_type_failed(ptr noundef nonnull %18) #7
  br label %124

20:                                               ; preds = %13
  %21 = load i16, ptr %0, align 8, !tbaa !5
  %22 = and i16 %21, 16144
  %23 = icmp eq i16 %22, 4624
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %0, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !11
  %27 = icmp eq i8 %26, 18
  br i1 %27, label %124, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %124

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !28
  %33 = icmp ult i16 %32, 8
  br i1 %33, label %124, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %0, i64 -15
  %36 = load i8, ptr %35, align 1, !tbaa !11
  switch i8 %36, label %111 [
    i8 13, label %109
    i8 12, label %37
    i8 11, label %38
    i8 16, label %51
    i8 1, label %54
    i8 4, label %58
    i8 2, label %70
    i8 18, label %83
  ]

37:                                               ; preds = %34
  br label %111

38:                                               ; preds = %34
  %39 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !11
  %41 = trunc i64 %40 to i32
  br label %42

42:                                               ; preds = %97, %38, %51, %54
  %43 = phi i32 [ %57, %54 ], [ %53, %51 ], [ %41, %38 ], [ %102, %97 ]
  %44 = phi i16 [ 0, %54 ], [ 0, %51 ], [ 0, %38 ], [ %108, %97 ]
  %45 = phi i8 [ 4, %54 ], [ 2, %51 ], [ 1, %38 ], [ %100, %97 ]
  %46 = phi i16 [ 0, %54 ], [ 0, %51 ], [ 0, %38 ], [ %107, %97 ]
  %47 = and i32 %6, 1
  %48 = icmp eq i32 %47, 0
  %49 = call i32 @llvm.bswap.i32(i32 %43)
  %50 = select i1 %48, i32 %49, i32 %43
  br label %111

51:                                               ; preds = %34
  %52 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !11
  br label %42

54:                                               ; preds = %34
  %55 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %56 = load i16, ptr %55, align 8, !tbaa !11
  %57 = zext i16 %56 to i32
  br label %42

58:                                               ; preds = %34
  %59 = load i16, ptr %3, align 8, !tbaa !5
  %60 = and i16 %59, 128
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %61, i8 9, i8 -119
  %63 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %64 = load i16, ptr %63, align 2, !tbaa !28
  %65 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !11
  %67 = zext i16 %64 to i64
  %68 = shl nuw nsw i64 %67, 3
  %69 = add i64 %68, %66
  store i64 %69, ptr %65, align 8, !tbaa !11
  br label %97

70:                                               ; preds = %34
  %71 = load i16, ptr %3, align 8, !tbaa !5
  %72 = and i16 %71, 128
  %73 = icmp eq i16 %72, 0
  %74 = select i1 %73, i8 15, i8 -113
  %75 = tail call i32 @dict_length(ptr noundef nonnull %3) #7
  %76 = trunc i32 %75 to i16
  %77 = shl i16 %76, 1
  %78 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !11
  %80 = zext i16 %77 to i64
  %81 = shl nuw nsw i64 %80, 3
  %82 = add i64 %81, %79
  store i64 %82, ptr %78, align 8, !tbaa !11
  br label %97

83:                                               ; preds = %34
  %84 = load i16, ptr %3, align 8, !tbaa !5
  %85 = and i16 %84, 128
  %86 = icmp eq i16 %85, 0
  %87 = select i1 %86, i8 5, i8 -123
  %88 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  br label %89

89:                                               ; preds = %109, %83
  %90 = phi ptr [ %110, %109 ], [ %88, %83 ]
  %91 = phi i8 [ 3, %109 ], [ %87, %83 ]
  %92 = load i16, ptr %90, align 2, !tbaa !28
  %93 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !11
  %95 = zext i16 %92 to i64
  %96 = add nsw i64 %94, %95
  store i64 %96, ptr %93, align 8, !tbaa !11
  br label %97

97:                                               ; preds = %89, %70, %58
  %98 = phi i64 [ %94, %89 ], [ %79, %70 ], [ %66, %58 ]
  %99 = phi i16 [ %92, %89 ], [ %77, %70 ], [ %64, %58 ]
  %100 = phi i8 [ %91, %89 ], [ %74, %70 ], [ %62, %58 ]
  %101 = lshr i16 %99, 8
  %102 = trunc i64 %98 to i32
  %103 = and i32 %6, 1
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i16 %101, i16 %99
  %106 = select i1 %104, i16 %99, i16 %101
  %107 = shl i16 %106, 8
  %108 = and i16 %105, 255
  br label %42

109:                                              ; preds = %34
  call void @name_string_ref(ptr noundef nonnull %3, ptr noundef nonnull %2) #7
  %110 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  br label %89

111:                                              ; preds = %42, %34, %37
  %112 = phi i32 [ undef, %37 ], [ undef, %34 ], [ %50, %42 ]
  %113 = phi i16 [ 0, %37 ], [ 0, %34 ], [ %44, %42 ]
  %114 = phi i8 [ 10, %37 ], [ 0, %34 ], [ %45, %42 ]
  %115 = phi i16 [ 0, %37 ], [ 0, %34 ], [ %46, %42 ]
  %116 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !11
  store i8 %114, ptr %117, align 1
  %118 = getelementptr inbounds i8, ptr %117, i64 2
  %119 = or disjoint i16 %115, %113
  store i16 %119, ptr %118, align 1
  %120 = getelementptr inbounds i8, ptr %117, i64 4
  store i32 %112, ptr %120, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !16
  %121 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  store i16 8, ptr %121, align 2, !tbaa !28
  %122 = load ptr, ptr @o_stack, align 8, !tbaa !24
  %123 = getelementptr inbounds %struct.ref_s, ptr %122, i64 -1
  store ptr %123, ptr @o_stack, align 8, !tbaa !24
  br label %124

124:                                              ; preds = %30, %28, %24, %111, %17, %10
  %125 = phi i32 [ 0, %111 ], [ %19, %17 ], [ %12, %10 ], [ %29, %28 ], [ -7, %24 ], [ -15, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define internal void @zbseq_init() #1 {
  store ptr null, ptr getelementptr inbounds (%struct.ref_s, ptr @system_names, i64 0, i32 1), align 8, !tbaa !11
  store i16 1120, ptr @system_names, align 8, !tbaa !5
  store i16 0, ptr getelementptr inbounds (%struct.ref_s, ptr @system_names, i64 0, i32 0, i32 1), align 2, !tbaa !28
  %1 = load ptr, ptr @gs_imemory, align 8, !tbaa !29
  %2 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  tail call void %3(ptr noundef %1, ptr noundef nonnull @system_names_root, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull @system_names_p, ptr noundef nonnull @.str.8) #7
  store ptr null, ptr getelementptr inbounds (%struct.ref_s, ptr @user_names, i64 0, i32 1), align 8, !tbaa !11
  store i16 1136, ptr @user_names, align 8, !tbaa !5
  store i16 0, ptr getelementptr inbounds (%struct.ref_s, ptr @user_names, i64 0, i32 0, i32 1), align 2, !tbaa !28
  %4 = load ptr, ptr @gs_imemory, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  tail call void %6(ptr noundef %4, ptr noundef nonnull @user_names_root, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull @user_names_p, ptr noundef nonnull @.str.9) #7
  store ptr @scan_binary_token, ptr @scan_btoken_proc, align 8, !tbaa !22
  ret void
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare i32 @dict_length(ptr noundef) local_unnamed_addr #3

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @scan_binary_token(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 0}
!6 = !{!"ref_s", !7, i64 0, !9, i64 8}
!7 = !{!"tas_s", !8, i64 0, !8, i64 2}
!8 = !{!"short", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !15, i64 56}
!13 = !{!"gs_dual_memory_s", !14, i64 0, !9, i64 8, !15, i64 40, !15, i64 44, !14, i64 48, !15, i64 56, !15, i64 60}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"int", !9, i64 0}
!16 = !{i64 0, i64 2, !17, i64 2, i64 2, !17, i64 8, i64 8, !18, i64 8, i64 2, !17, i64 8, i64 4, !20, i64 8, i64 8, !18, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22}
!17 = !{!8, !8, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !9, i64 0}
!22 = !{!14, !14, i64 0}
!23 = !{!13, !15, i64 60}
!24 = !{!25, !14, i64 0}
!25 = !{!"ref_stack_s", !14, i64 0, !14, i64 8, !14, i64 16, !6, i64 24, !15, i64 40, !15, i64 44, !6, i64 48, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !6, i64 88, !15, i64 104, !15, i64 108, !15, i64 112, !14, i64 120}
!26 = !{!25, !14, i64 16}
!27 = !{!25, !15, i64 64}
!28 = !{!6, !8, i64 2}
!29 = !{!13, !14, i64 0}
!30 = !{!31, !14, i64 128}
!31 = !{!"gs_memory_s", !32, i64 0}
!32 = !{!"gs_memory_procs_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152}
