; ModuleID = 'zfproc.c'
source_filename = "zfproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_proc_state_s = type { ptr, ptr, ptr, i32, i32, %struct.ref_s, %struct.ref_s }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@s_proc_read_template = internal constant %struct.stream_template_s { ptr @st_sproc_state, ptr null, ptr @s_proc_read_process, i32 1, i32 1, ptr null, ptr null, ptr null }, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@s_proc_write_template = internal constant %struct.stream_template_s { ptr @st_sproc_state, ptr null, ptr @s_proc_write_process, i32 1, i32 1, ptr null, ptr null, ptr null }, align 8
@zfproc_op_defs.op_defs_ = internal constant [3 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @s_proc_read_continue }, %struct.op_def { ptr @.str.1, ptr @s_proc_write_continue }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [23 x i8] c"2%s_proc_read_continue\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"2%s_proc_write_continue\00", align 1
@s_proc_init.procs = internal constant %struct.stream_procs { ptr @s_std_noavailable, ptr @s_std_noseek, ptr @s_std_read_reset, ptr @s_std_read_flush, ptr @s_std_null, ptr null, ptr null }, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"s_proc_init(stream)\00", align 1
@st_sproc_state = internal constant %struct.gs_memory_struct_type_s { i32 64, ptr @.str.4, ptr null, ptr @sproc_clear_marks, ptr @sproc_enum_ptrs, ptr @sproc_reloc_ptrs, ptr null }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"s_proc_init(state)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"procedure stream state\00", align 1
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sread_proc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %4 = tail call ptr @file_alloc_stream(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  %5 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %6 = tail call ptr @s_alloc_state(ptr noundef %5, ptr noundef nonnull @st_sproc_state, ptr noundef nonnull @.str.3) #8
  %7 = icmp eq ptr %4, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  tail call void %13(ptr noundef %11, ptr noundef %6, ptr noundef nonnull @.str.3) #8
  br label %25

14:                                               ; preds = %2
  tail call void @s_std_init(ptr noundef %4, ptr noundef null, i32 noundef 0, ptr noundef nonnull @s_proc_init.procs, i32 noundef 1) #8
  %15 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 12, i32 5
  store ptr @s_proc_read_process, ptr %15, align 8, !tbaa !14
  store ptr @s_proc_read_template, ptr %6, align 8, !tbaa !20
  %16 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 3
  store i32 0, ptr %18, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  %20 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 6
  %21 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 6, i32 1
  store ptr null, ptr %21, align 8, !tbaa !32
  store i16 4720, ptr %20, align 8, !tbaa !33
  %22 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 6, i32 0, i32 1
  store i16 0, ptr %22, align 2, !tbaa !34
  %23 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 4
  store i32 0, ptr %23, align 4, !tbaa !35
  %24 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 16
  store ptr %6, ptr %24, align 8, !tbaa !36
  store ptr %4, ptr %1, align 8, !tbaa !31
  br label %25

25:                                               ; preds = %10, %14
  %26 = phi i32 [ -25, %10 ], [ 0, %14 ]
  br i1 %9, label %30, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %1, align 8, !tbaa !31
  %29 = getelementptr inbounds %struct.stream_s, ptr %28, i64 0, i32 7
  store i16 -4, ptr %29, align 8, !tbaa !37
  br label %30

30:                                               ; preds = %25, %27
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local i32 @s_handle_read_exception(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = add nsw i32 %3, 4
  switch i32 %0, label %76 [
    i32 -3, label %7
    i32 -4, label %33
  ]

7:                                                ; preds = %5
  %8 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !40
  %10 = sub nsw i32 -2, %3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ref_s, ptr %9, i64 %11
  %13 = icmp ugt ptr %8, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add nsw i32 %3, 2
  %16 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef %15) #8
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %76

18:                                               ; preds = %14, %7
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 2
  %23 = sext i32 %3 to i64
  %24 = shl nsw i64 %23, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %22, ptr align 8 %2, i64 %24, i1 false)
  br label %25

25:                                               ; preds = %20, %18
  %26 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1, i32 1
  store ptr %4, ptr %27, align 8, !tbaa !32
  %28 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1
  store i16 3968, ptr %28, align 8, !tbaa !41
  %29 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1, i32 0, i32 1
  store i16 0, ptr %29, align 2, !tbaa !42
  %30 = sext i32 %3 to i64
  %31 = getelementptr %struct.ref_s, ptr %26, i64 %30
  %32 = getelementptr %struct.ref_s, ptr %31, i64 1
  store ptr %32, ptr @e_stack, align 8, !tbaa !38
  br label %76

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !32
  br label %36

36:                                               ; preds = %36, %33
  %37 = phi ptr [ %35, %33 ], [ %39, %36 ]
  %38 = getelementptr inbounds %struct.stream_s, ptr %37, i64 0, i32 13
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !44

41:                                               ; preds = %36
  %42 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %43 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !40
  %44 = sext i32 %6 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds %struct.ref_s, ptr %43, i64 %45
  %47 = icmp ugt ptr %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef %6) #8
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %76

51:                                               ; preds = %48, %41
  %52 = icmp eq i32 %3, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %55 = getelementptr inbounds %struct.ref_s, ptr %54, i64 2
  %56 = sext i32 %3 to i64
  %57 = shl nsw i64 %56, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %55, ptr align 8 %2, i64 %57, i1 false)
  br label %58

58:                                               ; preds = %53, %51
  %59 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %60 = getelementptr inbounds %struct.ref_s, ptr %59, i64 1, i32 1
  store ptr %4, ptr %60, align 8, !tbaa !32
  %61 = getelementptr inbounds %struct.ref_s, ptr %59, i64 1
  store i16 3968, ptr %61, align 8, !tbaa !41
  %62 = getelementptr inbounds %struct.ref_s, ptr %59, i64 1, i32 0, i32 1
  store i16 0, ptr %62, align 2, !tbaa !42
  %63 = getelementptr inbounds %struct.ref_s, ptr %59, i64 %44
  store ptr %63, ptr @e_stack, align 8, !tbaa !38
  %64 = getelementptr %struct.ref_s, ptr %63, i64 -2, i32 1
  store ptr @s_proc_read_continue, ptr %64, align 8, !tbaa !32
  %65 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %66 = getelementptr inbounds %struct.ref_s, ptr %65, i64 -2
  store i16 3968, ptr %66, align 8, !tbaa !41
  %67 = getelementptr %struct.ref_s, ptr %65, i64 -2, i32 0, i32 1
  store i16 0, ptr %67, align 2, !tbaa !42
  %68 = getelementptr inbounds %struct.ref_s, ptr %65, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !26
  %69 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %70 = getelementptr inbounds %struct.ref_s, ptr %69, i64 -1
  %71 = load i16, ptr %70, align 8, !tbaa !41
  %72 = and i16 %71, -129
  store i16 %72, ptr %70, align 8, !tbaa !41
  %73 = getelementptr inbounds %struct.stream_s, ptr %37, i64 0, i32 16
  %74 = load ptr, ptr %73, align 8, !tbaa !36
  %75 = getelementptr inbounds %struct.stream_proc_state_s, ptr %74, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull align 8 dereferenceable(16) %75, i64 16, i1 false), !tbaa.struct !26
  br label %76

76:                                               ; preds = %25, %14, %5, %48, %58
  %77 = phi i32 [ 5, %58 ], [ %49, %48 ], [ -12, %5 ], [ 5, %25 ], [ %16, %14 ]
  ret i32 %77
}

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_proc_read_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !32
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %48

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.stream_s, ptr %10, i64 0, i32 17
  %12 = load i16, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.stream_s, ptr %10, i64 0, i32 18
  %14 = load i16, ptr %13, align 2, !tbaa !47
  %15 = or i16 %14, %12
  %16 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !42
  %18 = icmp eq i16 %15, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %8
  %20 = load i16, ptr %2, align 8, !tbaa !41
  %21 = and i16 %20, 16160
  %22 = icmp eq i16 %21, 4640
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %0, i64 -15
  %25 = load i8, ptr %24, align 1, !tbaa !32
  %26 = icmp eq i8 %25, 18
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #8
  br label %48

29:                                               ; preds = %19, %29
  %30 = phi ptr [ %33, %29 ], [ %10, %19 ]
  %31 = getelementptr inbounds %struct.stream_s, ptr %30, i64 0, i32 7
  store i16 0, ptr %31, align 8, !tbaa !37
  %32 = getelementptr inbounds %struct.stream_s, ptr %30, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29, !llvm.loop !48

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.stream_s, ptr %30, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  %38 = getelementptr inbounds %struct.stream_proc_state_s, ptr %37, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !26
  %39 = getelementptr inbounds %struct.stream_proc_state_s, ptr %37, i64 0, i32 4
  store i32 0, ptr %39, align 4, !tbaa !35
  %40 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %41 = load i16, ptr %40, align 2, !tbaa !42
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.stream_proc_state_s, ptr %37, i64 0, i32 3
  store i32 1, ptr %44, align 8, !tbaa !25
  br label %45

45:                                               ; preds = %43, %35
  %46 = load ptr, ptr @o_stack, align 8, !tbaa !38
  %47 = getelementptr inbounds %struct.ref_s, ptr %46, i64 -2
  store ptr %47, ptr @o_stack, align 8, !tbaa !38
  br label %48

48:                                               ; preds = %27, %23, %8, %45, %6
  %49 = phi i32 [ 0, %45 ], [ %7, %6 ], [ -7, %8 ], [ %28, %27 ], [ -7, %23 ]
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @swrite_proc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %4 = tail call ptr @file_alloc_stream(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  %5 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %6 = tail call ptr @s_alloc_state(ptr noundef %5, ptr noundef nonnull @st_sproc_state, ptr noundef nonnull @.str.3) #8
  %7 = icmp eq ptr %4, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  tail call void %13(ptr noundef %11, ptr noundef %6, ptr noundef nonnull @.str.3) #8
  br label %25

14:                                               ; preds = %2
  tail call void @s_std_init(ptr noundef %4, ptr noundef null, i32 noundef 0, ptr noundef nonnull @s_proc_init.procs, i32 noundef 2) #8
  %15 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 12, i32 5
  store ptr @s_proc_write_process, ptr %15, align 8, !tbaa !14
  store ptr @s_proc_write_template, ptr %6, align 8, !tbaa !20
  %16 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 3
  store i32 0, ptr %18, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  %20 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 6
  %21 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 6, i32 1
  store ptr null, ptr %21, align 8, !tbaa !32
  store i16 4720, ptr %20, align 8, !tbaa !33
  %22 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 6, i32 0, i32 1
  store i16 0, ptr %22, align 2, !tbaa !34
  %23 = getelementptr inbounds %struct.stream_proc_state_s, ptr %6, i64 0, i32 4
  store i32 0, ptr %23, align 4, !tbaa !35
  %24 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 16
  store ptr %6, ptr %24, align 8, !tbaa !36
  store ptr %4, ptr %1, align 8, !tbaa !31
  br label %25

25:                                               ; preds = %10, %14
  %26 = phi i32 [ -25, %10 ], [ 0, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local i32 @s_handle_write_exception(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  switch i32 %0, label %121 [
    i32 -3, label %6
    i32 -4, label %32
  ]

6:                                                ; preds = %5
  %7 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !40
  %9 = sub nsw i32 -2, %3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ref_s, ptr %8, i64 %10
  %12 = icmp ugt ptr %7, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = add nsw i32 %3, 2
  %15 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef %14) #8
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %121

17:                                               ; preds = %13, %6
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 2
  %22 = sext i32 %3 to i64
  %23 = shl nsw i64 %22, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %21, ptr align 8 %2, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %19, %17
  %25 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %26 = getelementptr inbounds %struct.ref_s, ptr %25, i64 1, i32 1
  store ptr %4, ptr %26, align 8, !tbaa !32
  %27 = getelementptr inbounds %struct.ref_s, ptr %25, i64 1
  store i16 3968, ptr %27, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct.ref_s, ptr %25, i64 1, i32 0, i32 1
  store i16 0, ptr %28, align 2, !tbaa !42
  %29 = sext i32 %3 to i64
  %30 = getelementptr %struct.ref_s, ptr %25, i64 %29
  %31 = getelementptr %struct.ref_s, ptr %30, i64 1
  store ptr %31, ptr @e_stack, align 8, !tbaa !38
  br label %121

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !32
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %34, %32 ], [ %38, %35 ]
  %37 = getelementptr inbounds %struct.stream_s, ptr %36, i64 0, i32 13
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35, !llvm.loop !49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.stream_s, ptr %36, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !36
  %43 = getelementptr inbounds %struct.stream_proc_state_s, ptr %42, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !25
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %48 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !40
  %49 = getelementptr inbounds %struct.ref_s, ptr %48, i64 -5
  %50 = icmp ugt ptr %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 5) #8
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %121

54:                                               ; preds = %51, %46
  %55 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %56 = getelementptr inbounds %struct.ref_s, ptr %55, i64 5
  store ptr %56, ptr @e_stack, align 8, !tbaa !38
  %57 = getelementptr inbounds %struct.ref_s, ptr %55, i64 1, i32 1
  store ptr @zpop, ptr %57, align 8, !tbaa !32
  %58 = getelementptr inbounds %struct.ref_s, ptr %55, i64 1
  store i16 3968, ptr %58, align 8, !tbaa !41
  %59 = getelementptr inbounds %struct.ref_s, ptr %55, i64 1, i32 0, i32 1
  store i16 0, ptr %59, align 2, !tbaa !42
  %60 = getelementptr %struct.ref_s, ptr %55, i64 2, i32 1
  store ptr @zpop, ptr %60, align 8, !tbaa !32
  %61 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %62 = getelementptr inbounds %struct.ref_s, ptr %61, i64 -3
  store i16 3968, ptr %62, align 8, !tbaa !41
  %63 = getelementptr %struct.ref_s, ptr %61, i64 -3, i32 0, i32 1
  store i16 0, ptr %63, align 2, !tbaa !42
  %64 = getelementptr %struct.ref_s, ptr %61, i64 -1, i32 1
  store i16 0, ptr %64, align 8, !tbaa !32
  %65 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %66 = getelementptr inbounds %struct.ref_s, ptr %65, i64 -1
  store i16 256, ptr %66, align 8, !tbaa !41
  br label %107

67:                                               ; preds = %40
  %68 = add nsw i32 %3, 6
  %69 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %70 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !40
  %71 = sext i32 %68 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds %struct.ref_s, ptr %70, i64 %72
  %74 = icmp ugt ptr %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef %68) #8
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %104

78:                                               ; preds = %75, %67
  %79 = phi i32 [ %76, %75 ], [ undef, %67 ]
  %80 = icmp eq i32 %3, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %83 = getelementptr inbounds %struct.ref_s, ptr %82, i64 2
  %84 = sext i32 %3 to i64
  %85 = shl nsw i64 %84, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %83, ptr align 8 %2, i64 %85, i1 false)
  br label %86

86:                                               ; preds = %81, %78
  %87 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %88 = getelementptr inbounds %struct.ref_s, ptr %87, i64 1, i32 1
  store ptr %4, ptr %88, align 8, !tbaa !32
  %89 = getelementptr inbounds %struct.ref_s, ptr %87, i64 1
  store i16 3968, ptr %89, align 8, !tbaa !41
  %90 = getelementptr inbounds %struct.ref_s, ptr %87, i64 1, i32 0, i32 1
  store i16 0, ptr %90, align 2, !tbaa !42
  %91 = getelementptr inbounds %struct.ref_s, ptr %87, i64 %71
  store ptr %91, ptr @e_stack, align 8, !tbaa !38
  %92 = getelementptr %struct.ref_s, ptr %91, i64 -4, i32 1
  store ptr @s_proc_write_continue, ptr %92, align 8, !tbaa !32
  %93 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %94 = getelementptr inbounds %struct.ref_s, ptr %93, i64 -4
  store i16 3968, ptr %94, align 8, !tbaa !41
  %95 = getelementptr %struct.ref_s, ptr %93, i64 -4, i32 0, i32 1
  store i16 0, ptr %95, align 2, !tbaa !42
  %96 = getelementptr inbounds %struct.ref_s, ptr %93, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %96, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !26
  %97 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %98 = getelementptr inbounds %struct.ref_s, ptr %97, i64 -3
  %99 = load i16, ptr %98, align 8, !tbaa !41
  %100 = and i16 %99, -129
  store i16 %100, ptr %98, align 8, !tbaa !41
  %101 = getelementptr %struct.ref_s, ptr %97, i64 -1, i32 1
  store i16 1, ptr %101, align 8, !tbaa !32
  %102 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %103 = getelementptr inbounds %struct.ref_s, ptr %102, i64 -1
  store i16 256, ptr %103, align 8, !tbaa !41
  br label %104

104:                                              ; preds = %75, %86
  %105 = phi i1 [ true, %86 ], [ false, %75 ]
  %106 = phi i32 [ %79, %86 ], [ %76, %75 ]
  br i1 %105, label %107, label %121

107:                                              ; preds = %104, %54
  %108 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %109 = getelementptr inbounds %struct.ref_s, ptr %108, i64 -2
  %110 = load ptr, ptr %41, align 8, !tbaa !36
  %111 = getelementptr inbounds %struct.stream_proc_state_s, ptr %110, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %109, ptr noundef nonnull align 8 dereferenceable(16) %111, i64 16, i1 false), !tbaa.struct !26
  %112 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %113 = load ptr, ptr %41, align 8, !tbaa !36
  %114 = getelementptr inbounds %struct.stream_proc_state_s, ptr %113, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, ptr noundef nonnull align 8 dereferenceable(16) %114, i64 16, i1 false), !tbaa.struct !26
  %115 = load ptr, ptr %41, align 8, !tbaa !36
  %116 = getelementptr inbounds %struct.stream_proc_state_s, ptr %115, i64 0, i32 4
  %117 = load i32, ptr %116, align 4, !tbaa !35
  %118 = trunc i32 %117 to i16
  %119 = load ptr, ptr @e_stack, align 8, !tbaa !38
  %120 = getelementptr inbounds %struct.tas_s, ptr %119, i64 0, i32 1
  store i16 %118, ptr %120, align 2, !tbaa !42
  br label %121

121:                                              ; preds = %24, %13, %5, %51, %104, %107
  %122 = phi i32 [ 5, %107 ], [ %52, %51 ], [ %106, %104 ], [ -12, %5 ], [ 5, %24 ], [ %15, %13 ]
  ret i32 %122
}

declare i32 @zpop(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_proc_write_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !32
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %42

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.stream_s, ptr %10, i64 0, i32 17
  %12 = load i16, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.stream_s, ptr %10, i64 0, i32 18
  %14 = load i16, ptr %13, align 2, !tbaa !47
  %15 = or i16 %14, %12
  %16 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !42
  %18 = icmp eq i16 %15, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %8
  %20 = load i16, ptr %2, align 8, !tbaa !41
  %21 = and i16 %20, 16144
  %22 = icmp eq i16 %21, 4624
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %0, i64 -15
  %25 = load i8, ptr %24, align 1, !tbaa !32
  %26 = icmp eq i8 %25, 18
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #8
  br label %42

29:                                               ; preds = %19, %29
  %30 = phi ptr [ %33, %29 ], [ %10, %19 ]
  %31 = getelementptr inbounds %struct.stream_s, ptr %30, i64 0, i32 7
  store i16 0, ptr %31, align 8, !tbaa !37
  %32 = getelementptr inbounds %struct.stream_s, ptr %30, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29, !llvm.loop !50

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.stream_s, ptr %30, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  %38 = getelementptr inbounds %struct.stream_proc_state_s, ptr %37, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !26
  %39 = getelementptr inbounds %struct.stream_proc_state_s, ptr %37, i64 0, i32 4
  store i32 0, ptr %39, align 4, !tbaa !35
  %40 = load ptr, ptr @o_stack, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 -2
  store ptr %41, ptr @o_stack, align 8, !tbaa !38
  br label %42

42:                                               ; preds = %27, %23, %8, %35, %6
  %43 = phi i32 [ 0, %35 ], [ %7, %6 ], [ -7, %8 ], [ %28, %27 ], [ -7, %23 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfproc_op_defs() local_unnamed_addr #3 {
  ret ptr @zfproc_op_defs.op_defs_
}

declare i32 @s_std_noavailable(ptr noundef, ptr noundef) #1

declare i32 @s_std_noseek(ptr noundef, i64 noundef) #1

declare void @s_std_read_reset(ptr noundef) #1

declare i32 @s_std_read_flush(ptr noundef) #1

declare i32 @s_std_null(ptr noundef) #1

declare ptr @file_alloc_stream(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @s_alloc_state(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @s_std_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @sproc_clear_marks(ptr nocapture noundef %0, i32 %1) #4 {
  %3 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !51
  %5 = and i16 %4, -2
  store i16 %5, ptr %3, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 6
  %7 = load i16, ptr %6, align 8, !tbaa !33
  %8 = and i16 %7, -2
  store i16 %8, ptr %6, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef ptr @sproc_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #5 {
  switch i32 %2, label %11 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 5
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ]
  store ptr %10, ptr %3, align 8, !tbaa !31
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ null, %4 ], [ @ptr_ref_procs, %9 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @sproc_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 6
  tail call void @gs_reloc_refs(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2) #8
  %6 = load i16, ptr %4, align 8, !tbaa !51
  %7 = and i16 %6, -2
  store i16 %7, ptr %4, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 1
  tail call void @gs_reloc_refs(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef %2) #8
  %9 = load i16, ptr %5, align 8, !tbaa !33
  %10 = and i16 %9, -2
  store i16 %10, ptr %5, align 8, !tbaa !33
  ret void
}

declare void @gs_reloc_refs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_proc_read_process(ptr nocapture noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2, i32 %3) #6 {
  %5 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 6, i32 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !34
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !35
  %10 = icmp eq i32 %9, %7
  br i1 %10, label %32, label %11

11:                                               ; preds = %4
  %12 = sub i32 %7, %9
  %13 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = ptrtoint ptr %14 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = tail call i32 @llvm.umin.i32(i32 %12, i32 %20)
  %22 = getelementptr inbounds i8, ptr %16, i64 1
  %23 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 6, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  %25 = zext i32 %9 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = zext i32 %21 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr align 1 %26, i64 %27, i1 false)
  %28 = load ptr, ptr %15, align 8, !tbaa !54
  %29 = getelementptr inbounds i8, ptr %28, i64 %27
  store ptr %29, ptr %15, align 8, !tbaa !54
  %30 = load i32, ptr %8, align 4, !tbaa !35
  %31 = add i32 %30, %21
  store i32 %31, ptr %8, align 4, !tbaa !35
  br label %37

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !25
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 -4, i32 -1
  br label %37

37:                                               ; preds = %32, %11
  %38 = phi i32 [ 1, %11 ], [ %36, %32 ]
  ret i32 %38
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @s_proc_write_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture readnone %2, i32 noundef %3) #6 {
  %5 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %1, align 8, !tbaa !57
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 6, i32 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !34
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !35
  %19 = sub i32 %16, %18
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %11)
  %21 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 6, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = zext i32 %18 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = getelementptr inbounds i8, ptr %7, i64 1
  %26 = zext i32 %20 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr nonnull align 1 %25, i64 %26, i1 false)
  %27 = load ptr, ptr %1, align 8, !tbaa !57
  %28 = getelementptr inbounds i8, ptr %27, i64 %26
  store ptr %28, ptr %1, align 8, !tbaa !57
  %29 = load i32, ptr %17, align 4, !tbaa !35
  %30 = add i32 %29, %20
  store i32 %30, ptr %17, align 4, !tbaa !35
  %31 = icmp ult i32 %19, %11
  br i1 %31, label %40, label %32

32:                                               ; preds = %13
  %33 = icmp eq i32 %3, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 3
  store i32 1, ptr %35, align 8, !tbaa !25
  br label %40

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.stream_proc_state_s, ptr %0, i64 0, i32 3
  store i32 %3, ptr %37, align 8, !tbaa !25
  %38 = icmp ne i32 %3, 0
  %39 = sext i1 %38 to i32
  br label %40

40:                                               ; preds = %34, %13, %32, %36
  %41 = phi i32 [ %39, %36 ], [ -4, %34 ], [ -4, %13 ], [ 0, %32 ]
  ret i32 %41
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 56, !10, i64 60}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !7, i64 88}
!12 = !{!"gs_memory_s", !13, i64 0}
!13 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!14 = !{!15, !7, i64 136}
!15 = !{!"stream_s", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !7, i64 48, !10, i64 56, !10, i64 60, !16, i64 64, !8, i64 66, !8, i64 67, !17, i64 72, !18, i64 88, !19, i64 96, !7, i64 152, !10, i64 160, !10, i64 164, !7, i64 168, !16, i64 176, !16, i64 178, !7, i64 184, !7, i64 192, !10, i64 200, !7, i64 208, !10, i64 216, !7, i64 224}
!16 = !{!"short", !8, i64 0}
!17 = !{!"gs_string_s", !7, i64 0, !10, i64 8}
!18 = !{!"long", !8, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!20 = !{!21, !7, i64 0}
!21 = !{!"stream_proc_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !22, i64 32, !22, i64 48}
!22 = !{!"ref_s", !23, i64 0, !8, i64 8}
!23 = !{!"tas_s", !16, i64 0, !16, i64 2}
!24 = !{!21, !7, i64 8}
!25 = !{!21, !10, i64 24}
!26 = !{i64 0, i64 2, !27, i64 2, i64 2, !27, i64 8, i64 8, !28, i64 8, i64 2, !27, i64 8, i64 4, !29, i64 8, i64 8, !28, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31}
!27 = !{!16, !16, i64 0}
!28 = !{!18, !18, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !8, i64 0}
!31 = !{!7, !7, i64 0}
!32 = !{!8, !8, i64 0}
!33 = !{!21, !16, i64 48}
!34 = !{!21, !16, i64 50}
!35 = !{!21, !10, i64 28}
!36 = !{!15, !7, i64 168}
!37 = !{!15, !16, i64 64}
!38 = !{!39, !7, i64 0}
!39 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !22, i64 24, !10, i64 40, !10, i64 44, !22, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !22, i64 88, !10, i64 104, !10, i64 108, !10, i64 112, !7, i64 120}
!40 = !{!39, !7, i64 16}
!41 = !{!22, !16, i64 0}
!42 = !{!22, !16, i64 2}
!43 = !{!15, !7, i64 152}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!15, !16, i64 176}
!47 = !{!15, !16, i64 178}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !45}
!51 = !{!21, !16, i64 32}
!52 = !{!53, !7, i64 16}
!53 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!54 = !{!53, !7, i64 8}
!55 = !{!56, !7, i64 8}
!56 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!57 = !{!56, !7, i64 0}
