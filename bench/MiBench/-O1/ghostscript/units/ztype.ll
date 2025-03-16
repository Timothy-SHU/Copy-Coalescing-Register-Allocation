; ModuleID = 'ztype.c'
source_filename = "ztype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@op_def_table = external local_unnamed_addr global ptr, align 8
@ztype_op_defs.op_defs_ = internal constant [15 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcvi }, %struct.op_def { ptr @.str.1, ptr @zcvlit }, %struct.op_def { ptr @.str.2, ptr @zcvn }, %struct.op_def { ptr @.str.3, ptr @zcvr }, %struct.op_def { ptr @.str.4, ptr @zcvrs }, %struct.op_def { ptr @.str.5, ptr @zcvs }, %struct.op_def { ptr @.str.6, ptr @zcvx }, %struct.op_def { ptr @.str.7, ptr @zexecuteonly }, %struct.op_def { ptr @.str.8, ptr @znoaccess }, %struct.op_def { ptr @.str.9, ptr @zrcheck }, %struct.op_def { ptr @.str.10, ptr @zreadonly }, %struct.op_def { ptr @.str.11, ptr @ztype }, %struct.op_def { ptr @.str.12, ptr @zwcheck }, %struct.op_def { ptr @.str.13, ptr @zxcheck }, %struct.op_def { ptr null, ptr @ztype_init }], align 16
@.str = private unnamed_addr constant [5 x i8] c"1cvi\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1cvlit\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1cvn\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1cvr\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"3cvrs\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2cvs\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1cvx\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"1executeonly\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"1noaccess\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"1rcheck\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"1readonly\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"1type\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"1wcheck\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"1xcheck\00", align 1
@type_names = dso_local global %struct.ref_s zeroinitializer, align 8
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@ztype_init.tnames = internal unnamed_addr constant [21 x ptr] [ptr null, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.18, ptr @.str.17, ptr null, ptr null, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.24], align 16
@.str.14 = private unnamed_addr constant [12 x i8] c"booleantype\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"dicttype\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"filetype\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"arraytype\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"packedarraytype\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"fonttype\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"integertype\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"marktype\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"nametype\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"nulltype\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"operatortype\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"realtype\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"savetype\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"stringtype\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"devicetype\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"type names\00", align 1
@type_names_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@type_names_p = internal global ptr @type_names, align 8
@.str.30 = private unnamed_addr constant [11 x i8] c"type_names\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"access_check(modify)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @zcvx(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %7 = icmp eq i8 %6, 15
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !15
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call zeroext i16 @op_find_index(ptr noundef %0) #8
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi i16 [ %13, %12 ], [ %10, %8 ]
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @op_def_table, align 8, !tbaa !16
  %19 = zext i16 %15 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %25 = icmp eq i8 %24, 37
  br i1 %25, label %36, label %26

26:                                               ; preds = %17, %4
  %27 = load i8, ptr %5, align 1, !tbaa !14
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !14
  br label %32

32:                                               ; preds = %26, %29
  %33 = phi ptr [ %31, %29 ], [ %0, %26 ]
  %34 = load i16, ptr %33, align 8, !tbaa !19
  %35 = or i16 %34, 128
  store i16 %35, ptr %33, align 8, !tbaa !19
  br label %36

36:                                               ; preds = %14, %17, %1, %32
  %37 = phi i32 [ 0, %32 ], [ -17, %1 ], [ -15, %17 ], [ -15, %14 ]
  ret i32 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i16 @op_find_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zreadonly(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !14
  switch i8 %3, label %27 [
    i8 2, label %4
    i8 4, label %21
    i8 3, label %21
    i8 18, label %21
    i8 5, label %21
    i8 6, label %21
    i8 9, label %21
    i8 19, label %21
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = load i16, ptr %6, align 8, !tbaa !19
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 96
  %10 = icmp eq i32 %9, 96
  br i1 %10, label %11, label %29

11:                                               ; preds = %4
  %12 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !20
  %13 = and i32 %12, %8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.31) #8
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i16, ptr %6, align 8, !tbaa !19
  %19 = and i16 %18, -113
  %20 = or disjoint i16 %19, 96
  store i16 %20, ptr %6, align 8, !tbaa !19
  tail call void @dict_set_top() #8
  br label %29

21:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %22 = load i16, ptr %0, align 8, !tbaa !19
  %23 = and i16 %22, 96
  %24 = icmp eq i16 %23, 96
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = and i16 %22, -17
  store i16 %26, ptr %0, align 8, !tbaa !19
  br label %29

27:                                               ; preds = %1
  %28 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %29

29:                                               ; preds = %4, %17, %21, %25, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %25 ], [ 0, %17 ], [ -7, %4 ], [ -7, %21 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ztype_op_defs() local_unnamed_addr #3 {
  ret ptr @ztype_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zcvi(ptr noundef %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !14
  switch i8 %5, label %9 [
    i8 11, label %36
    i8 16, label %6
    i8 18, label %11
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 8, !tbaa !14
  br label %28

9:                                                ; preds = %1
  %10 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %36

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !22
  %12 = call i32 @scan_string_token(ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 2
  %15 = select i1 %14, i32 -18, i32 %12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %3, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !14
  switch i8 %19, label %24 [
    i8 11, label %20
    i8 16, label %21
  ]

20:                                               ; preds = %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !22
  br label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %23 = load float, ptr %22, align 8, !tbaa !14
  br label %24

24:                                               ; preds = %17, %11, %21, %20
  %25 = phi i32 [ undef, %21 ], [ 0, %20 ], [ %15, %11 ], [ -20, %17 ]
  %26 = phi float [ %23, %21 ], [ undef, %20 ], [ undef, %11 ], [ undef, %17 ]
  %27 = phi i1 [ true, %21 ], [ false, %20 ], [ false, %11 ], [ false, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  br i1 %27, label %28, label %36

28:                                               ; preds = %24, %6
  %29 = phi float [ %26, %24 ], [ %8, %6 ]
  %30 = fcmp ogt float %29, 0xC3E0000000000000
  %31 = fcmp olt float %29, 0x43E0000000000000
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = fptosi float %29 to i64
  %35 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i64 %34, ptr %35, align 8, !tbaa !14
  store i16 2816, ptr %0, align 8, !tbaa !19
  br label %36

36:                                               ; preds = %28, %1, %24, %33, %9
  %37 = phi i32 [ %10, %9 ], [ 0, %33 ], [ %25, %24 ], [ 0, %1 ], [ -15, %28 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zcvlit(ptr noundef %0) #4 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ %0, %4 ]
  %13 = load i16, ptr %12, align 8, !tbaa !19
  %14 = and i16 %13, -129
  store i16 %14, ptr %12, align 8, !tbaa !19
  br label %15

15:                                               ; preds = %1, %11
  %16 = phi i32 [ 0, %11 ], [ -17, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zcvn(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa !19
  %3 = and i16 %2, 16160
  %4 = icmp eq i16 %3, 4640
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %8 = icmp eq i8 %7, 18
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #8
  br label %13

11:                                               ; preds = %1
  %12 = tail call i32 @name_from_string(ptr noundef nonnull %0, ptr noundef nonnull %0) #8
  br label %13

13:                                               ; preds = %9, %5, %11
  %14 = phi i32 [ %12, %11 ], [ %10, %9 ], [ -7, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zcvr(ptr noundef %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !14
  switch i8 %5, label %10 [
    i8 11, label %6
    i8 16, label %29
    i8 18, label %12
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = sitofp i64 %8 to float
  store float %9, ptr %7, align 8, !tbaa !14
  store i16 4096, ptr %0, align 8, !tbaa !19
  br label %29

10:                                               ; preds = %1
  %11 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %29

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !22
  %13 = call i32 @scan_string_token(ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 2
  %16 = select i1 %15, i32 -18, i32 %13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds i8, ptr %3, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !14
  switch i8 %20, label %27 [
    i8 11, label %21
    i8 16, label %26
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !14
  %24 = sitofp i64 %23 to float
  %25 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store float %24, ptr %25, align 8, !tbaa !14
  store i16 4096, ptr %0, align 8, !tbaa !19
  br label %27

26:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !22
  br label %27

27:                                               ; preds = %18, %12, %26, %21
  %28 = phi i32 [ 0, %26 ], [ 0, %21 ], [ %16, %12 ], [ -20, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  br label %29

29:                                               ; preds = %6, %1, %27, %10
  %30 = phi i32 [ %11, %10 ], [ %28, %27 ], [ 0, %1 ], [ 0, %6 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @zcvrs(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds i8, ptr %0, i64 -15
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %7 = icmp eq i8 %6, 11
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %9) #8
  br label %123

11:                                               ; preds = %1
  %12 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = add i64 %13, -37
  %15 = icmp ult i64 %14, -35
  br i1 %15, label %123, label %16

16:                                               ; preds = %11
  %17 = load i16, ptr %0, align 8, !tbaa !19
  %18 = and i16 %17, 16144
  %19 = icmp eq i16 %18, 4624
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %0, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !14
  %23 = icmp eq i8 %22, 18
  br i1 %23, label %123, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #8
  br label %123

26:                                               ; preds = %16
  %27 = icmp eq i64 %13, 10
  br i1 %27, label %28, label %72

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %30 = getelementptr inbounds i8, ptr %0, i64 -31
  %31 = load i8, ptr %30, align 1, !tbaa !14
  switch i8 %31, label %70 [
    i8 11, label %32
    i8 16, label %32
  ]

32:                                               ; preds = %28, %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store ptr null, ptr %3, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %36 = load i16, ptr %35, align 2, !tbaa !15
  %37 = zext i16 %36 to i32
  %38 = call i32 @obj_cvp(ptr noundef nonnull %29, ptr noundef %34, i32 noundef %37, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0) #8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %32
  %41 = icmp eq i32 %38, -15
  br i1 %41, label %42, label %64

42:                                               ; preds = %40
  %43 = load i16, ptr %29, align 8, !tbaa !19
  %44 = icmp ugt i16 %43, 5375
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, ptr %0, i64 -31
  %47 = load i8, ptr %46, align 1, !tbaa !14
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i8 [ %47, %45 ], [ 15, %42 ]
  switch i8 %49, label %64 [
    i8 20, label %50
    i8 15, label %50
  ]

50:                                               ; preds = %48, %48
  %51 = load ptr, ptr %3, align 8, !tbaa !16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load i8, ptr %51, align 1, !tbaa !14
  switch i8 %54, label %64 [
    i8 37, label %55
    i8 46, label %55
    i8 64, label %55
  ]

55:                                               ; preds = %53, %53, %53
  %56 = load i16, ptr %35, align 2, !tbaa !15
  %57 = zext i16 %56 to i32
  store i32 %57, ptr %2, align 4, !tbaa !28
  %58 = load ptr, ptr %33, align 8, !tbaa !14
  %59 = zext i16 %56 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr nonnull align 1 %51, i64 %59, i1 false)
  br label %60

60:                                               ; preds = %55, %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !22
  %61 = load i32, ptr %2, align 4, !tbaa !28
  %62 = trunc i32 %61 to i16
  %63 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 0, i32 1
  store i16 %62, ptr %63, align 2, !tbaa !15
  br label %64

64:                                               ; preds = %40, %48, %50, %53, %60
  %65 = phi i32 [ 0, %60 ], [ %38, %48 ], [ %38, %53 ], [ %38, %50 ], [ %38, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %123, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @o_stack, align 8, !tbaa !29
  %69 = getelementptr inbounds %struct.ref_s, ptr %68, i64 -2
  store ptr %69, ptr @o_stack, align 8, !tbaa !29
  br label %123

70:                                               ; preds = %28
  %71 = tail call i32 @check_type_failed(ptr noundef nonnull %29) #8
  br label %123

72:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %73 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 64
  %74 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %75 = getelementptr inbounds i8, ptr %0, i64 -31
  %76 = load i8, ptr %75, align 1, !tbaa !14
  switch i8 %76, label %90 [
    i8 11, label %77
    i8 16, label %82
  ]

77:                                               ; preds = %72
  %78 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !14
  br label %80

80:                                               ; preds = %82, %77
  %81 = phi i64 [ %79, %77 ], [ %89, %82 ]
  br label %92

82:                                               ; preds = %72
  %83 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %84 = load float, ptr %83, align 8, !tbaa !14
  %85 = fcmp ogt float %84, 0xC3E0000000000000
  %86 = fcmp olt float %84, 0x43E0000000000000
  %87 = and i1 %85, %86
  %88 = fptosi float %84 to i64
  %89 = select i1 %87, i64 %88, i64 undef
  br i1 %87, label %80, label %117

90:                                               ; preds = %72
  %91 = tail call i32 @check_type_failed(ptr noundef nonnull %74) #8
  br label %117

92:                                               ; preds = %80, %92
  %93 = phi i64 [ %102, %92 ], [ %81, %80 ]
  %94 = phi ptr [ %101, %92 ], [ %73, %80 ]
  %95 = urem i64 %93, %13
  %96 = trunc i64 %95 to i32
  %97 = icmp slt i32 %96, 10
  %98 = select i1 %97, i32 48, i32 55
  %99 = add nuw nsw i32 %98, %96
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds i8, ptr %94, i64 -1
  store i8 %100, ptr %101, align 1, !tbaa !14
  %102 = udiv i64 %93, %13
  %103 = icmp ugt i64 %13, %93
  br i1 %103, label %104, label %92, !llvm.loop !30

104:                                              ; preds = %92
  %105 = ptrtoint ptr %73 to i64
  %106 = ptrtoint ptr %101 to i64
  %107 = sub i64 %105, %106
  %108 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !15
  %110 = zext i16 %109 to i64
  %111 = icmp sgt i64 %107, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !14
  %115 = and i64 %107, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %114, ptr nonnull align 1 %101, i64 %115, i1 false)
  %116 = trunc i64 %107 to i16
  store i16 %116, ptr %108, align 2, !tbaa !15
  br label %117

117:                                              ; preds = %104, %82, %112, %90
  %118 = phi i1 [ false, %90 ], [ true, %112 ], [ false, %82 ], [ false, %104 ]
  %119 = phi i32 [ %91, %90 ], [ -15, %112 ], [ -15, %82 ], [ -15, %104 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  br i1 %118, label %120, label %123

120:                                              ; preds = %117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !22
  %121 = load ptr, ptr @o_stack, align 8, !tbaa !29
  %122 = getelementptr inbounds %struct.ref_s, ptr %121, i64 -2
  store ptr %122, ptr @o_stack, align 8, !tbaa !29
  br label %123

123:                                              ; preds = %67, %64, %24, %20, %11, %117, %120, %70, %8
  %124 = phi i32 [ %71, %70 ], [ 0, %120 ], [ %119, %117 ], [ %10, %8 ], [ -15, %11 ], [ %25, %24 ], [ -7, %20 ], [ 0, %67 ], [ %65, %64 ]
  ret i32 %124
}

; Function Attrs: nounwind uwtable
define internal i32 @zcvs(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 1
  %6 = icmp ugt ptr %5, %0
  br i1 %6, label %56, label %7

7:                                                ; preds = %1
  %8 = load i16, ptr %0, align 8, !tbaa !19
  %9 = and i16 %8, 16144
  %10 = icmp eq i16 %9, 4624
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !14
  %14 = icmp eq i8 %13, 18
  br i1 %14, label %56, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #8
  br label %56

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store ptr null, ptr %3, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !15
  %23 = zext i16 %22 to i32
  %24 = call i32 @obj_cvp(ptr noundef nonnull %18, ptr noundef %20, i32 noundef %23, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %17
  %27 = icmp eq i32 %24, -15
  br i1 %27, label %28, label %50

28:                                               ; preds = %26
  %29 = load i16, ptr %18, align 8, !tbaa !19
  %30 = icmp ugt i16 %29, 5375
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %0, i64 -15
  %33 = load i8, ptr %32, align 1, !tbaa !14
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i8 [ %33, %31 ], [ 15, %28 ]
  switch i8 %35, label %50 [
    i8 20, label %36
    i8 15, label %36
  ]

36:                                               ; preds = %34, %34
  %37 = load ptr, ptr %3, align 8, !tbaa !16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = load i8, ptr %37, align 1, !tbaa !14
  switch i8 %40, label %50 [
    i8 37, label %41
    i8 46, label %41
    i8 64, label %41
  ]

41:                                               ; preds = %39, %39, %39
  %42 = load i16, ptr %21, align 2, !tbaa !15
  %43 = zext i16 %42 to i32
  store i32 %43, ptr %2, align 4, !tbaa !28
  %44 = load ptr, ptr %19, align 8, !tbaa !14
  %45 = zext i16 %42 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr nonnull align 1 %37, i64 %45, i1 false)
  br label %46

46:                                               ; preds = %41, %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !22
  %47 = load i32, ptr %2, align 4, !tbaa !28
  %48 = trunc i32 %47 to i16
  %49 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  store i16 %48, ptr %49, align 2, !tbaa !15
  br label %50

50:                                               ; preds = %26, %34, %36, %39, %46
  %51 = phi i32 [ 0, %46 ], [ %24, %34 ], [ %24, %39 ], [ %24, %36 ], [ %24, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load ptr, ptr @o_stack, align 8, !tbaa !29
  %55 = getelementptr inbounds %struct.ref_s, ptr %54, i64 -1
  store ptr %55, ptr @o_stack, align 8, !tbaa !29
  br label %56

56:                                               ; preds = %50, %53, %15, %11, %1
  %57 = phi i32 [ -17, %1 ], [ %16, %15 ], [ -7, %11 ], [ %51, %53 ], [ %51, %50 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @zexecuteonly(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !14
  switch i8 %6, label %13 [
    i8 2, label %15
    i8 19, label %7
    i8 4, label %7
    i8 3, label %7
    i8 18, label %7
    i8 5, label %7
    i8 6, label %7
    i8 9, label %7
  ]

7:                                                ; preds = %4, %4, %4, %4, %4, %4, %4
  %8 = load i16, ptr %0, align 8, !tbaa !19
  %9 = and i16 %8, 64
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = and i16 %8, -49
  store i16 %12, ptr %0, align 8, !tbaa !19
  br label %15

13:                                               ; preds = %4
  %14 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %15

15:                                               ; preds = %13, %11, %7, %4, %1
  %16 = phi i32 [ -17, %1 ], [ -20, %4 ], [ %14, %13 ], [ 0, %11 ], [ -7, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @znoaccess(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %37, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = tail call i32 @dict_is_permanent_on_dstack(ptr noundef %0) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = load i16, ptr %13, align 8, !tbaa !32
  %15 = and i16 %14, 16
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %11, %4
  %18 = load i8, ptr %5, align 1, !tbaa !14
  switch i8 %18, label %35 [
    i8 2, label %19
    i8 4, label %32
    i8 3, label %32
    i8 18, label %32
    i8 5, label %32
    i8 6, label %32
    i8 9, label %32
    i8 19, label %32
  ]

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = load i16, ptr %21, align 8, !tbaa !19
  %23 = zext i16 %22 to i32
  %24 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !20
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull @.str.31) #8
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i16, ptr %21, align 8, !tbaa !19
  %31 = and i16 %30, -113
  store i16 %31, ptr %21, align 8, !tbaa !19
  tail call void @dict_set_top() #8
  br label %37

32:                                               ; preds = %17, %17, %17, %17, %17, %17, %17
  %33 = load i16, ptr %0, align 8, !tbaa !19
  %34 = and i16 %33, -113
  store i16 %34, ptr %0, align 8, !tbaa !19
  br label %37

35:                                               ; preds = %17
  %36 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %37

37:                                               ; preds = %35, %32, %29, %8, %11, %1
  %38 = phi i32 [ -17, %1 ], [ -7, %11 ], [ -7, %8 ], [ %36, %35 ], [ 0, %32 ], [ 0, %29 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @zrcheck(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !14
  switch i8 %3, label %7 [
    i8 2, label %4
    i8 4, label %9
    i8 3, label %9
    i8 18, label %9
    i8 5, label %9
    i8 6, label %9
    i8 9, label %9
    i8 19, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  br label %9

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %15

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %10 = phi ptr [ %6, %4 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ]
  %11 = load i16, ptr %10, align 8, !tbaa !19
  %12 = lshr i16 %11, 5
  %13 = and i16 %12, 1
  %14 = zext nneg i16 %13 to i32
  br label %15

15:                                               ; preds = %7, %9
  %16 = phi i32 [ %8, %7 ], [ %14, %9 ]
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = trunc i32 %16 to i16
  %20 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 %19, ptr %20, align 8, !tbaa !14
  store i16 256, ptr %0, align 8, !tbaa !19
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 0, %18 ], [ %16, %15 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @ztype(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @type_names, i64 0, i32 1), align 8, !tbaa !14
  %3 = load i16, ptr %0, align 8, !tbaa !19
  %4 = icmp ugt i16 %3, 5375
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %8 = zext i8 %7 to i64
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %8, %5 ], [ 15, %1 ]
  %11 = getelementptr inbounds %struct.ref_s, ptr %2, i64 %10
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !14
  %14 = icmp eq i8 %13, 13
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %17 = icmp ugt ptr %16, %0
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @gs_imemory, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %19, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = tail call ptr %21(ptr noundef %19, ptr noundef %23) #8
  %25 = tail call ptr @gs_struct_type_name(ptr noundef %24) #8
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #9
  %27 = trunc i64 %26 to i32
  %28 = tail call i32 @name_ref(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %0, i32 noundef 0) #8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i16, ptr %0, align 8, !tbaa !19
  %32 = or i16 %31, 128
  store i16 %32, ptr %0, align 8, !tbaa !19
  br label %34

33:                                               ; preds = %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !22
  br label %34

34:                                               ; preds = %30, %33, %15, %18
  %35 = phi i32 [ %28, %18 ], [ -17, %15 ], [ 0, %33 ], [ 0, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @zwcheck(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !14
  switch i8 %3, label %7 [
    i8 2, label %4
    i8 4, label %9
    i8 3, label %9
    i8 18, label %9
    i8 5, label %9
    i8 6, label %9
    i8 9, label %9
    i8 19, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  br label %9

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %15

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %10 = phi ptr [ %6, %4 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ]
  %11 = load i16, ptr %10, align 8, !tbaa !19
  %12 = lshr i16 %11, 4
  %13 = and i16 %12, 1
  %14 = zext nneg i16 %13 to i32
  br label %15

15:                                               ; preds = %7, %9
  %16 = phi i32 [ %8, %7 ], [ %14, %9 ]
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = trunc i32 %16 to i16
  %20 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 %19, ptr %20, align 8, !tbaa !14
  store i16 256, ptr %0, align 8, !tbaa !19
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 0, %18 ], [ %16, %15 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zxcheck(ptr noundef %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ %0, %4 ]
  %13 = load i16, ptr %12, align 8, !tbaa !19
  %14 = lshr i16 %13, 7
  %15 = and i16 %14, 1
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 %15, ptr %16, align 8, !tbaa !14
  store i16 256, ptr %0, align 8, !tbaa !19
  br label %17

17:                                               ; preds = %1, %11
  %18 = phi i32 [ 0, %11 ], [ -17, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @ztype_init() #0 {
  %1 = load ptr, ptr @gs_imemory, align 8, !tbaa !34
  %2 = tail call i32 @gs_alloc_ref_array(ptr noundef %1, ptr noundef nonnull @type_names, i32 noundef 96, i32 noundef 21, ptr noundef nonnull @.str.29) #8
  br label %3

3:                                                ; preds = %0, %21
  %4 = phi i64 [ 0, %0 ], [ %22, %21 ]
  %5 = lshr i64 769, %4
  %6 = and i64 %5, 1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @type_names, i64 0, i32 1), align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 %4
  store i16 3584, ptr %10, align 8, !tbaa !19
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds [21 x ptr], ptr @ztype_init.tnames, i64 0, i64 %4
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @type_names, i64 0, i32 1), align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 %4
  %16 = tail call i32 @name_enter_string(ptr noundef %13, ptr noundef %15) #8
  %17 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @type_names, i64 0, i32 1), align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 %4
  %19 = load i16, ptr %18, align 8, !tbaa !19
  %20 = or i16 %19, 128
  store i16 %20, ptr %18, align 8, !tbaa !19
  br label %21

21:                                               ; preds = %8, %11
  %22 = add nuw nsw i64 %4, 1
  %23 = icmp eq i64 %22, 21
  br i1 %23, label %24, label %3, !llvm.loop !38

24:                                               ; preds = %21
  %25 = load ptr, ptr @gs_imemory, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %25, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  tail call void %27(ptr noundef %25, ptr noundef nonnull @type_names_root, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull @type_names_p, ptr noundef nonnull @.str.30) #8
  ret void
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @scan_string_token(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @name_from_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @obj_cvp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dict_is_permanent_on_dstack(ptr noundef) local_unnamed_addr #2

declare ptr @gs_struct_type_name(ptr noundef) local_unnamed_addr #2

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @name_enter_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dict_set_top() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !13, i64 40, !13, i64 44, !10, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !10, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !7, i64 120}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ref_s", !11, i64 0, !8, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!10, !12, i64 2}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !7, i64 0, !7, i64 8}
!19 = !{!10, !12, i64 0}
!20 = !{!21, !13, i64 56}
!21 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !13, i64 40, !13, i64 44, !7, i64 48, !13, i64 56, !13, i64 60}
!22 = !{i64 0, i64 2, !23, i64 2, i64 2, !23, i64 8, i64 8, !24, i64 8, i64 2, !23, i64 8, i64 4, !26, i64 8, i64 8, !24, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16}
!23 = !{!12, !12, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !8, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !8, i64 0}
!28 = !{!13, !13, i64 0}
!29 = !{!6, !7, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!33, !12, i64 0}
!33 = !{!"dict_s", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48}
!34 = !{!21, !7, i64 0}
!35 = !{!36, !7, i64 80}
!36 = !{!"gs_memory_s", !37, i64 0}
!37 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!38 = distinct !{!38, !31}
!39 = !{!36, !7, i64 128}
