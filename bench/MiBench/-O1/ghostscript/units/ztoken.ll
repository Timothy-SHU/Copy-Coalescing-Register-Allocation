; ModuleID = 'ztoken.c'
source_filename = "ztoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.op_def = type { ptr, ptr }
%struct.scanner_state_s = type { i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_ }
%struct.dynamic_area_s = type { %struct.gs_string_s, ptr, ptr, ptr, i32, [257 x i8], ptr }
%struct.gs_string_s = type { ptr, i32 }
%union.sss_ = type { %struct.scan_binary_state_s }
%struct.scan_binary_state_s = type { i32, ptr, %struct.ref_s, i32, i32, i32, i32, i32 }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@invalid_file_entry = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@st_scanner_state = external constant %struct.gs_memory_struct_type_s, align 8
@ztoken_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @ztoken }, %struct.op_def { ptr @.str.1, ptr @ztokenexec }, %struct.op_def { ptr @.str.2, ptr @ztokenexec_continue }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"1token\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"1.tokenexec\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"2%ztokenexec_continue\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"token_continue\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ztoken(ptr noundef %0) #0 {
  %2 = alloca %struct.scanner_state_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !5
  switch i8 %5, label %6 [
    i8 3, label %8
    i8 18, label %50
  ]

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %67

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %2) #5
  %9 = load i16, ptr %0, align 8, !tbaa !8
  %10 = and i16 %9, 16160
  %11 = icmp eq i16 %10, 800
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = icmp eq i8 %5, 3
  br i1 %13, label %48, label %14

14:                                               ; preds = %12
  %15 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #5
  br label %48

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.stream_s, ptr %18, i64 0, i32 17
  %20 = load i16, ptr %19, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !19
  %23 = icmp eq i16 %20, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %16
  %25 = icmp eq i16 %20, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.stream_s, ptr %18, i64 0, i32 18
  %28 = load i16, ptr %27, align 2, !tbaa !20
  %29 = icmp eq i16 %28, %22
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = tail call i32 @file_switch_to_read(ptr noundef nonnull %0) #5
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %48

33:                                               ; preds = %24, %26
  %34 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !21
  br label %35

35:                                               ; preds = %33, %30, %16
  %36 = phi ptr [ %18, %30 ], [ %34, %33 ], [ %18, %16 ]
  %37 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !22
  %38 = load ptr, ptr @o_stack, align 8, !tbaa !24
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = icmp slt i64 %41, 16
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !25
  br label %48

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  store i32 0, ptr %45, align 4, !tbaa !26
  store i32 0, ptr %2, align 8, !tbaa !29
  %46 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 2
  store i32 0, ptr %46, align 8, !tbaa !30
  %47 = call fastcc i32 @token_continue(ptr noundef nonnull %0, ptr noundef %36, ptr noundef nonnull %2, i32 noundef 1)
  br label %48

48:                                               ; preds = %14, %12, %30, %44, %43
  %49 = phi i32 [ -16, %43 ], [ %47, %44 ], [ %31, %30 ], [ %15, %14 ], [ -7, %12 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %2) #5
  br label %67

50:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %51 = call i32 @scan_string_token(ptr noundef %0, ptr noundef nonnull %3) #5
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 0, ptr %54, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !8
  br label %65

55:                                               ; preds = %50
  %56 = icmp slt i32 %51, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %59 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !22
  %60 = icmp ugt ptr %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !25
  br label %65

62:                                               ; preds = %57
  store ptr %58, ptr @o_stack, align 8, !tbaa !24
  %63 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !31
  %64 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i16 1, ptr %64, align 8, !tbaa !5
  store i16 256, ptr %58, align 8, !tbaa !8
  br label %65

65:                                               ; preds = %55, %62, %61, %53
  %66 = phi i32 [ 0, %53 ], [ -16, %61 ], [ 0, %62 ], [ %51, %55 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  br label %67

67:                                               ; preds = %65, %48, %6
  %68 = phi i32 [ %7, %6 ], [ %66, %65 ], [ %49, %48 ]
  ret i32 %68
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @file_switch_to_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @token_continue(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !31
  br label %7

7:                                                ; preds = %38, %4
  %8 = load ptr, ptr @o_stack, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.ref_s, ptr %8, i64 -1
  store ptr %9, ptr @o_stack, align 8, !tbaa !24
  %10 = call i32 @scan_token(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2) #5
  %11 = load ptr, ptr @o_stack, align 8, !tbaa !24
  switch i32 %10, label %12 [
    i32 1, label %18
    i32 0, label %18
    i32 2, label %26
    i32 3, label %33
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  %14 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !22
  %15 = icmp ugt ptr %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !25
  br label %49

17:                                               ; preds = %12
  store ptr %13, ptr @o_stack, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !31
  br label %40

18:                                               ; preds = %7, %7
  %19 = getelementptr inbounds %struct.ref_s, ptr %11, i64 2
  %20 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !22
  %21 = icmp ugt ptr %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !25
  br label %49

23:                                               ; preds = %18
  store ptr %19, ptr @o_stack, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !31
  %25 = getelementptr inbounds %struct.ref_s, ptr %11, i64 2, i32 1
  store i16 1, ptr %25, align 8, !tbaa !5
  store i16 256, ptr %19, align 8, !tbaa !8
  br label %40

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  %28 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !22
  %29 = icmp ugt ptr %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !25
  br label %49

31:                                               ; preds = %26
  store ptr %27, ptr @o_stack, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1, i32 1
  store i16 0, ptr %32, align 8, !tbaa !5
  store i16 256, ptr %27, align 8, !tbaa !8
  br label %40

33:                                               ; preds = %7
  %34 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  %35 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !22
  %36 = icmp ugt ptr %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !25
  br label %49

38:                                               ; preds = %33
  store ptr %34, ptr @o_stack, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !31
  %39 = call i32 @scan_handle_refill(ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull @ztoken_continue) #5
  switch i32 %39, label %40 [
    i32 0, label %7
    i32 5, label %49
  ]

40:                                               ; preds = %38, %31, %23, %17
  %41 = phi i32 [ %10, %17 ], [ 0, %31 ], [ 0, %23 ], [ %39, %38 ]
  %42 = icmp sgt i32 %41, 0
  %43 = icmp ne i32 %3, 0
  %44 = or i1 %43, %42
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %47 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %46, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !38
  call void %48(ptr noundef %46, ptr noundef %2, ptr noundef nonnull @.str.3) #5
  br label %49

49:                                               ; preds = %38, %40, %45, %37, %30, %22, %16
  %50 = phi i32 [ -16, %16 ], [ -16, %37 ], [ -16, %30 ], [ -16, %22 ], [ %41, %45 ], [ %41, %40 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  ret i32 %50
}

declare i32 @scan_string_token(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ztokenexec(ptr noundef %0) #0 {
  %2 = alloca %struct.scanner_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %2) #5
  %3 = load i16, ptr %0, align 8, !tbaa !8
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 800
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %46, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #5
  br label %46

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 17
  %16 = load i16, ptr %15, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !19
  %19 = icmp eq i16 %16, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %12
  %21 = icmp eq i16 %16, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 18
  %24 = load i16, ptr %23, align 2, !tbaa !20
  %25 = icmp eq i16 %24, %18
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = tail call i32 @file_switch_to_read(ptr noundef nonnull %0) #5
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %46

29:                                               ; preds = %20, %22
  %30 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !21
  br label %31

31:                                               ; preds = %29, %26, %12
  %32 = phi ptr [ %14, %26 ], [ %30, %29 ], [ %14, %12 ]
  %33 = phi i32 [ %27, %26 ], [ undef, %29 ], [ undef, %12 ]
  %34 = load ptr, ptr @e_stack, align 8, !tbaa !24
  %35 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !22
  %36 = getelementptr inbounds %struct.ref_s, ptr %35, i64 -1
  %37 = icmp ugt ptr %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #5
  %40 = icmp sgt i32 %39, -1
  %41 = select i1 %40, i32 %33, i32 %39
  br i1 %40, label %42, label %46

42:                                               ; preds = %38, %31
  %43 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  store i32 0, ptr %43, align 4, !tbaa !26
  store i32 0, ptr %2, align 8, !tbaa !29
  %44 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 2
  store i32 0, ptr %44, align 8, !tbaa !30
  %45 = call fastcc i32 @tokenexec_continue(ptr noundef nonnull %0, ptr noundef %32, ptr noundef nonnull %2, i32 noundef 1)
  br label %46

46:                                               ; preds = %10, %6, %26, %38, %42
  %47 = phi i32 [ %45, %42 ], [ %41, %38 ], [ %27, %26 ], [ %11, %10 ], [ -7, %6 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %2) #5
  ret i32 %47
}

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @tokenexec_continue(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !31
  %6 = load ptr, ptr @o_stack, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.ref_s, ptr %6, i64 -1
  store ptr %7, ptr @o_stack, align 8, !tbaa !24
  br label %8

8:                                                ; preds = %28, %4
  %9 = load ptr, ptr @e_stack, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 1
  %11 = call i32 @scan_token(ptr noundef %1, ptr noundef nonnull %10, ptr noundef %2) #5
  %12 = load ptr, ptr @o_stack, align 8, !tbaa !24
  switch i32 %11, label %31 [
    i32 0, label %13
    i32 1, label %25
    i32 2, label %30
    i32 3, label %28
  ]

13:                                               ; preds = %8
  %14 = load ptr, ptr @e_stack, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 1
  %16 = load i16, ptr %15, align 8, !tbaa !8
  %17 = and i16 %16, 15552
  %18 = icmp eq i16 %17, 1216
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ref_s, ptr %12, i64 1
  %21 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !22
  %22 = icmp ugt ptr %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !25
  br label %47

24:                                               ; preds = %19
  store ptr %20, ptr @o_stack, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !31
  br label %31

25:                                               ; preds = %8, %13
  %26 = load ptr, ptr @e_stack, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1
  store ptr %27, ptr @e_stack, align 8, !tbaa !24
  br label %31

28:                                               ; preds = %8
  %29 = call i32 @scan_handle_refill(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef nonnull @ztokenexec_continue) #5
  switch i32 %29, label %31 [
    i32 0, label %8
    i32 5, label %47
  ]

30:                                               ; preds = %8
  br label %31

31:                                               ; preds = %28, %8, %30, %25, %24
  %32 = phi ptr [ %12, %25 ], [ %20, %24 ], [ %12, %8 ], [ %12, %28 ], [ %12, %30 ]
  %33 = phi i32 [ 5, %25 ], [ 0, %24 ], [ %11, %8 ], [ %29, %28 ], [ 0, %30 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ref_s, ptr %32, i64 1
  %37 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !22
  %38 = icmp ugt ptr %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !25
  br label %47

40:                                               ; preds = %35
  store ptr %36, ptr @o_stack, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !31
  br label %41

41:                                               ; preds = %40, %31
  %42 = icmp eq i32 %3, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %45 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  call void %46(ptr noundef %44, ptr noundef %2, ptr noundef nonnull @.str.3) #5
  br label %47

47:                                               ; preds = %28, %41, %43, %39, %23
  %48 = phi i32 [ -16, %39 ], [ -16, %23 ], [ %33, %43 ], [ %33, %41 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ztokenexec_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = load i16, ptr %2, align 8, !tbaa !8
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 800
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 -15
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %51, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #5
  br label %51

12:                                               ; preds = %1
  %13 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 17
  %16 = load i16, ptr %15, align 8, !tbaa !12
  %17 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !19
  %19 = icmp eq i16 %16, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %12
  %21 = icmp eq i16 %16, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 18
  %24 = load i16, ptr %23, align 2, !tbaa !20
  %25 = icmp eq i16 %24, %18
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = tail call i32 @file_switch_to_read(ptr noundef nonnull %2) #5
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %51

29:                                               ; preds = %20, %22
  %30 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !21
  br label %31

31:                                               ; preds = %29, %26, %12
  %32 = phi ptr [ %14, %26 ], [ %30, %29 ], [ %14, %12 ]
  %33 = load i16, ptr %0, align 8, !tbaa !8
  %34 = and i16 %33, 15872
  %35 = icmp eq i16 %34, 2048
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %38 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %37, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  %40 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = tail call ptr %39(ptr noundef %37, ptr noundef %41) #5
  %43 = icmp eq ptr %42, @st_scanner_state
  br i1 %43, label %46, label %44

44:                                               ; preds = %36, %31
  %45 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #5
  br label %51

46:                                               ; preds = %36
  %47 = load ptr, ptr %40, align 8, !tbaa !5
  %48 = load ptr, ptr @o_stack, align 8, !tbaa !24
  %49 = getelementptr inbounds %struct.ref_s, ptr %48, i64 -1
  store ptr %49, ptr @o_stack, align 8, !tbaa !24
  %50 = tail call fastcc i32 @tokenexec_continue(ptr noundef nonnull %49, ptr noundef %32, ptr noundef %47, i32 noundef 0)
  br label %51

51:                                               ; preds = %10, %6, %26, %46, %44
  %52 = phi i32 [ %50, %46 ], [ %45, %44 ], [ %27, %26 ], [ %11, %10 ], [ -7, %6 ]
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ztoken_op_defs() local_unnamed_addr #4 {
  ret ptr @ztoken_op_defs.op_defs_
}

declare i32 @scan_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @scan_handle_refill(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ztoken_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = load i16, ptr %2, align 8, !tbaa !8
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 800
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 -15
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %51, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #5
  br label %51

12:                                               ; preds = %1
  %13 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 17
  %16 = load i16, ptr %15, align 8, !tbaa !12
  %17 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !19
  %19 = icmp eq i16 %16, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %12
  %21 = icmp eq i16 %16, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 18
  %24 = load i16, ptr %23, align 2, !tbaa !20
  %25 = icmp eq i16 %24, %18
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = tail call i32 @file_switch_to_read(ptr noundef nonnull %2) #5
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %51

29:                                               ; preds = %20, %22
  %30 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !21
  br label %31

31:                                               ; preds = %29, %26, %12
  %32 = phi ptr [ %14, %26 ], [ %30, %29 ], [ %14, %12 ]
  %33 = load i16, ptr %0, align 8, !tbaa !8
  %34 = and i16 %33, 15872
  %35 = icmp eq i16 %34, 2048
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %38 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %37, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  %40 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = tail call ptr %39(ptr noundef %37, ptr noundef %41) #5
  %43 = icmp eq ptr %42, @st_scanner_state
  br i1 %43, label %46, label %44

44:                                               ; preds = %36, %31
  %45 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #5
  br label %51

46:                                               ; preds = %36
  %47 = load ptr, ptr %40, align 8, !tbaa !5
  %48 = load ptr, ptr @o_stack, align 8, !tbaa !24
  %49 = getelementptr inbounds %struct.ref_s, ptr %48, i64 -1
  store ptr %49, ptr @o_stack, align 8, !tbaa !24
  %50 = tail call fastcc i32 @token_continue(ptr noundef nonnull %49, ptr noundef %32, ptr noundef %47, i32 noundef 0)
  br label %51

51:                                               ; preds = %10, %6, %26, %46, %44
  %52 = phi i32 [ %50, %46 ], [ %45, %44 ], [ %27, %26 ], [ %11, %10 ], [ -7, %6 ]
  ret i32 %52
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!8 = !{!9, !11, i64 0}
!9 = !{!"ref_s", !10, i64 0, !6, i64 8}
!10 = !{!"tas_s", !11, i64 0, !11, i64 2}
!11 = !{!"short", !6, i64 0}
!12 = !{!13, !11, i64 176}
!13 = !{!"stream_s", !14, i64 0, !14, i64 8, !14, i64 16, !6, i64 24, !14, i64 48, !15, i64 56, !15, i64 60, !11, i64 64, !6, i64 66, !6, i64 67, !16, i64 72, !17, i64 88, !18, i64 96, !14, i64 152, !15, i64 160, !15, i64 164, !14, i64 168, !11, i64 176, !11, i64 178, !14, i64 184, !14, i64 192, !15, i64 200, !14, i64 208, !15, i64 216, !14, i64 224}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!"gs_string_s", !14, i64 0, !15, i64 8}
!17 = !{!"long", !6, i64 0}
!18 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!19 = !{!9, !11, i64 2}
!20 = !{!13, !11, i64 178}
!21 = !{!14, !14, i64 0}
!22 = !{!23, !14, i64 16}
!23 = !{!"ref_stack_s", !14, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !15, i64 40, !15, i64 44, !9, i64 48, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !9, i64 88, !15, i64 104, !15, i64 108, !15, i64 112, !14, i64 120}
!24 = !{!23, !14, i64 0}
!25 = !{!23, !15, i64 64}
!26 = !{!27, !15, i64 12}
!27 = !{!"scanner_state_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !28, i64 16, !6, i64 328}
!28 = !{!"dynamic_area_s", !16, i64 0, !14, i64 16, !14, i64 24, !14, i64 32, !15, i64 40, !6, i64 44, !14, i64 304}
!29 = !{!27, !15, i64 0}
!30 = !{!27, !15, i64 8}
!31 = !{i64 0, i64 2, !32, i64 2, i64 2, !32, i64 8, i64 8, !33, i64 8, i64 2, !32, i64 8, i64 4, !34, i64 8, i64 8, !33, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21}
!32 = !{!11, !11, i64 0}
!33 = !{!17, !17, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !6, i64 0}
!36 = !{!37, !14, i64 0}
!37 = !{!"gs_dual_memory_s", !14, i64 0, !6, i64 8, !15, i64 40, !15, i64 44, !14, i64 48, !15, i64 56, !15, i64 60}
!38 = !{!39, !14, i64 88}
!39 = !{!"gs_memory_s", !40, i64 0}
!40 = !{!"gs_memory_procs_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152}
!41 = !{!39, !14, i64 80}
