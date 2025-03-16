; ModuleID = 'interp.c'
source_filename = "interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.op_def = type { ptr, ptr }
%struct.op_array_table_s = type { %struct.ref_s, ptr, i32, i32, i32, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_gc_status_s = type { i64, i64, ptr, i32, i32, i64 }
%struct.interp_error_s = type { i32, i32, ptr, %struct.ref_s }
%struct.scanner_state_s = type { i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_ }
%struct.dynamic_area_s = type { %struct.gs_string_s, ptr, ptr, ptr, i32, [257 x i8], ptr }
%struct.gs_string_s = type { ptr, i32 }
%union.sss_ = type { %struct.scan_binary_state_s }
%struct.scan_binary_state_s = type { i32, ptr, %struct.ref_s, i32, i32, i32, i32, i32 }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.name_s = type { i16, i16, ptr, ptr }
%struct.name_table_s = type { i32, i32, i32, i32, ptr, [1024 x i32], [512 x ptr] }

@gs_interp_reschedule_proc = dso_local local_unnamed_addr global ptr @no_reschedule, align 8
@gs_interp_time_slice_proc = dso_local local_unnamed_addr global ptr @no_time_slice_proc, align 8
@gs_interp_time_slice_ticks = dso_local local_unnamed_addr global i32 32767, align 4
@gs_interp_max_op_num_args = dso_local local_unnamed_addr constant i32 16, align 4
@gs_interp_num_special_ops = dso_local local_unnamed_addr constant i32 10, align 4
@tx_next_index = dso_local local_unnamed_addr constant i32 31, align 4
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@gs_debug = external local_unnamed_addr global [128 x i8], align 16
@ref_static_stacks = dso_local local_unnamed_addr global %struct.ref_s zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"interp_init\00", align 1
@st_ref_stack = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"alloc_init_stack\00", align 1
@ref_ref_stacks = dso_local local_unnamed_addr global [3 x %struct.ref_s] zeroinitializer, align 16
@o_stack = dso_local global %struct.ref_stack_s zeroinitializer, align 8
@e_stack = dso_local global %struct.ref_stack_s zeroinitializer, align 8
@esfile = dso_local local_unnamed_addr global ptr null, align 8
@d_stack = dso_local global %struct.ref_stack_s zeroinitializer, align 8
@min_dstack_size = dso_local local_unnamed_addr global i32 0, align 4
@special_ops = internal unnamed_addr constant [10 x ptr] [ptr @zadd, ptr @zdef, ptr @zdup, ptr @zexch, ptr @zif, ptr @zifelse, ptr @zindex, ptr @zpop, ptr @zroll, ptr @zsub], align 16
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"gs_interpret\00", align 1
@ref_systemdict = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"errordict\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ErrorNames\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"gs_errorinfo_put_string\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"$error\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"errorinfo\00", align 1
@interp_op_defs.op_defs_ = internal constant [3 x %struct.op_def] [%struct.op_def { ptr @.str.8, ptr @interp_exit }, %struct.op_def { ptr @.str.9, ptr @oparray_pop }, %struct.op_def zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"0%interp_exit\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"0%oparray_pop\00", align 1
@ref_language_level = dso_local local_unnamed_addr global %struct.ref_s zeroinitializer, align 8
@dtop_keys = external local_unnamed_addr global ptr, align 8
@dtop_npairs = external local_unnamed_addr global i32, align 4
@dtop_values = external local_unnamed_addr global ptr, align 8
@invalid_file_entry = external local_unnamed_addr global ptr, align 8
@op_def_count = external local_unnamed_addr global i32, align 4
@op_array_table_global = external local_unnamed_addr global %struct.op_array_table_s, align 8
@op_array_table_local = external local_unnamed_addr global %struct.op_array_table_s, align 8
@op_def_table = external local_unnamed_addr global ptr, align 8
@null_proc = internal global %struct.ref_s zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"copy_stack\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @no_reschedule() #0 {
  ret i32 -27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @no_time_slice_proc() #0 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_interp_init() local_unnamed_addr #1 {
  %1 = alloca %struct.ref_s, align 8
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  %5 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 43), align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 822, i32 38
  %8 = select i1 %6, i32 22, i32 5
  store ptr null, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_static_stacks, i64 0, i32 1), align 8, !tbaa !5
  store i16 1024, ptr @ref_static_stacks, align 8, !tbaa !8
  store i16 0, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_static_stacks, i64 0, i32 0, i32 1), align 2, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %9 = add nuw nsw i32 %7, 263
  %10 = add nuw nsw i32 %9, %8
  %11 = call i32 @gs_alloc_ref_array(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 0, i32 noundef %10, ptr noundef nonnull @.str) #8
  %12 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %14 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !5
  store i16 1028, ptr %1, align 8, !tbaa !8
  %15 = trunc i32 %7 to i16
  %16 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %15, ptr %16, align 2, !tbaa !12
  %17 = zext nneg i32 %7 to i64
  %18 = getelementptr inbounds %struct.ref_s, ptr %13, i64 %17
  %19 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = call ptr %20(ptr noundef %4, ptr noundef nonnull @st_ref_stack, ptr noundef nonnull @.str.1) #8
  store ptr %21, ptr getelementptr inbounds ([3 x %struct.ref_s], ptr @ref_ref_stacks, i64 0, i64 0, i32 1), align 8, !tbaa !5
  store i16 2052, ptr @ref_ref_stacks, align 16, !tbaa !8
  call void @ref_stack_init(ptr noundef nonnull @o_stack, ptr noundef nonnull %1, i32 noundef 10, i32 noundef 10, ptr noundef null, ptr noundef %4) #8
  store i32 -17, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 13), align 8, !tbaa !17
  store i32 -16, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 14), align 4, !tbaa !20
  %22 = call i32 @ref_stack_set_max_count(ptr noundef nonnull @o_stack, i64 noundef 800) #8
  store ptr %18, ptr %14, align 8, !tbaa !5
  store i16 1028, ptr %1, align 8, !tbaa !8
  store i16 263, ptr %16, align 2, !tbaa !12
  %23 = getelementptr inbounds %struct.ref_s, ptr %18, i64 263
  %24 = load ptr, ptr %19, align 8, !tbaa !13
  %25 = call ptr %24(ptr noundef %4, ptr noundef nonnull @st_ref_stack, ptr noundef nonnull @.str.1) #8
  store ptr %25, ptr getelementptr inbounds ([3 x %struct.ref_s], ptr @ref_ref_stacks, i64 0, i64 1, i32 1), align 8, !tbaa !5
  store i16 2052, ptr getelementptr inbounds ([3 x %struct.ref_s], ptr @ref_ref_stacks, i64 0, i64 1), align 16, !tbaa !8
  %26 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store ptr @estack_underflow, ptr %26, align 8, !tbaa !5
  store i16 3968, ptr %2, align 8, !tbaa !8
  %27 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  store i16 0, ptr %27, align 2, !tbaa !12
  call void @ref_stack_init(ptr noundef nonnull @e_stack, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 10, ptr noundef nonnull %2, ptr noundef %4) #8
  store i32 -104, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 13), align 8, !tbaa !17
  store i32 -5, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 14), align 4, !tbaa !20
  store i32 0, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 15), align 8, !tbaa !21
  store ptr null, ptr @esfile, align 8, !tbaa !22
  %28 = call i32 @ref_stack_set_max_count(ptr noundef nonnull @e_stack, i64 noundef 250) #8
  store ptr %23, ptr %14, align 8, !tbaa !5
  store i16 1028, ptr %1, align 8, !tbaa !8
  %29 = trunc i32 %8 to i16
  store i16 %29, ptr %16, align 2, !tbaa !12
  %30 = load ptr, ptr %19, align 8, !tbaa !13
  %31 = call ptr %30(ptr noundef %4, ptr noundef nonnull @st_ref_stack, ptr noundef nonnull @.str.1) #8
  store ptr %31, ptr getelementptr inbounds ([3 x %struct.ref_s], ptr @ref_ref_stacks, i64 0, i64 2, i32 1), align 8, !tbaa !5
  store i16 2052, ptr getelementptr inbounds ([3 x %struct.ref_s], ptr @ref_ref_stacks, i64 0, i64 2), align 16, !tbaa !8
  call void @ref_stack_init(ptr noundef nonnull @d_stack, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %4) #8
  store i32 -4, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 13), align 8, !tbaa !17
  store i32 -3, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 14), align 4, !tbaa !20
  %32 = call i32 @ref_stack_set_max_count(ptr noundef nonnull @d_stack, i64 noundef 20) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @ref_stack_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ref_stack_set_max_count(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @estack_underflow(ptr nocapture readnone %0) #0 {
  ret i32 -104
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_interp_reset() local_unnamed_addr #1 {
  %1 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #8
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %1) #8
  %2 = tail call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #8
  tail call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %2) #8
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  store ptr %4, ptr @e_stack, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1, i32 1
  store ptr @interp_exit, ptr %5, align 8, !tbaa !5
  store i16 3968, ptr %4, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1, i32 0, i32 1
  store i16 0, ptr %6, align 2, !tbaa !12
  %7 = tail call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #8
  %8 = load i32, ptr @min_dstack_size, align 4, !tbaa !24
  %9 = sub i32 %7, %8
  tail call void @ref_stack_pop(ptr noundef nonnull @d_stack, i32 noundef %9) #8
  tail call void @dict_set_top() #8
  ret void
}

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @interp_exit(ptr nocapture readnone %0) #0 {
  ret i32 -102
}

declare void @dict_set_top() local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @gs_interp_make_oper(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi i64 [ %8, %7 ], [ 10, %3 ]
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = add nsw i64 %5, -1
  %9 = getelementptr inbounds [10 x ptr], ptr @special_ops, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !25

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !5
  %14 = trunc i64 %5 to i16
  %15 = shl i16 %14, 8
  %16 = add i16 %15, 5248
  store i16 %16, ptr %0, align 8, !tbaa !8
  br label %20

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !5
  store i16 3968, ptr %0, align 8, !tbaa !8
  %19 = trunc i32 %2 to i16
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i16 [ %19, %17 ], [ %14, %12 ]
  %22 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  store i16 %21, ptr %22, align 2, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_interpret(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.gs_memory_gc_status_s, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.gs_memory_gc_status_s, align 8
  %9 = alloca %struct.gs_memory_gc_status_s, align 8
  %10 = alloca %struct.ref_s, align 8
  %11 = alloca %struct.interp_error_s, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scanner_state_s, align 8
  %14 = alloca %struct.stream_s, align 8
  %15 = alloca %struct.scanner_state_s, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct.ref_s, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %struct.ref_s, align 8
  %20 = alloca %struct.ref_s, align 8
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca %struct.gs_gc_root_s, align 8
  store ptr %3, ptr %22, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #8
  %24 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %24, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !27
  call void %26(ptr noundef %24, ptr noundef nonnull %23, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull %22, ptr noundef nonnull @.str.2) #8
  %27 = load ptr, ptr %22, align 8, !tbaa !22
  store i16 3584, ptr %27, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store ptr %0, ptr %16, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #8
  store i32 0, ptr %21, align 4, !tbaa !24
  store i32 0, ptr %2, align 4, !tbaa !24
  call void @ialloc_reset_requested(ptr noundef nonnull @gs_imemory) #8
  %28 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %9, i64 0, i32 2
  %29 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %9, i64 0, i32 3
  %30 = getelementptr inbounds %struct.interp_error_s, ptr %11, i64 0, i32 1
  %31 = getelementptr inbounds %struct.interp_error_s, ptr %11, i64 0, i32 2
  %32 = getelementptr inbounds %struct.scanner_state_s, ptr %15, i64 0, i32 3
  %33 = getelementptr inbounds %struct.scanner_state_s, ptr %15, i64 0, i32 2
  %34 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 3
  %35 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 3, i32 0, i32 1
  %36 = getelementptr inbounds %struct.scanner_state_s, ptr %13, i64 0, i32 3
  %37 = getelementptr inbounds %struct.scanner_state_s, ptr %13, i64 0, i32 2
  %38 = getelementptr inbounds %struct.ref_s, ptr %10, i64 0, i32 1
  %39 = getelementptr inbounds %struct.interp_error_s, ptr %11, i64 0, i32 3
  %40 = getelementptr inbounds %struct.ref_s, ptr %27, i64 0, i32 1
  %41 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %8, i64 0, i32 2
  %42 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %8, i64 0, i32 3
  %43 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %44 = getelementptr inbounds %struct.tas_s, ptr %17, i64 0, i32 1
  %45 = icmp slt i32 %1, 0
  br label %46

46:                                               ; preds = %1415, %4
  store i32 0, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 7), align 8, !tbaa !28
  store i32 0, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 7), align 8, !tbaa !28
  store i32 0, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %47

47:                                               ; preds = %50, %46
  %48 = load i32, ptr %21, align 4, !tbaa !24
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  store i32 0, ptr %21, align 4, !tbaa !24
  %51 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 4), align 8, !tbaa !29
  %52 = call i32 %51(ptr noundef nonnull @gs_imemory, i32 noundef -1) #8
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %1417, label %47, !llvm.loop !31

54:                                               ; preds = %47
  %55 = load ptr, ptr %16, align 8, !tbaa !22
  %56 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %57 = load ptr, ptr @e_stack, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #8
  %58 = call ptr @the_name_table() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  %59 = load i32, ptr @gs_interp_time_slice_ticks, align 4, !tbaa !24
  store i32 %59, ptr %12, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #8
  br label %60

60:                                               ; preds = %66, %54
  %61 = phi i64 [ 0, %54 ], [ %67, %66 ]
  %62 = getelementptr inbounds [4 x ptr], ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1), i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  call void @gs_memory_gc_status(ptr noundef nonnull %63, ptr noundef nonnull %9) #8
  store ptr %12, ptr %28, align 8, !tbaa !32
  store i32 -100, ptr %29, align 8, !tbaa !35
  call void @gs_memory_set_gc_status(ptr noundef nonnull %63, ptr noundef nonnull %9) #8
  br label %66

66:                                               ; preds = %65, %60
  %67 = add nuw nsw i64 %61, 1
  %68 = icmp eq i64 %67, 4
  br i1 %68, label %69, label %60, !llvm.loop !36

69:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #8
  store ptr null, ptr @esfile, align 8, !tbaa !22
  %70 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !37
  %71 = icmp ult ptr %57, %70
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 -5, ptr %11, align 8, !tbaa !38
  store i32 682, ptr %30, align 4, !tbaa !40
  br label %1215

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ref_s, ptr %57, i64 1
  br label %1098

75:                                               ; preds = %1079, %1122
  %76 = phi ptr [ %1123, %1122 ], [ %1080, %1079 ]
  %77 = phi i32 [ %1124, %1122 ], [ %1081, %1079 ]
  %78 = phi ptr [ %1125, %1122 ], [ %1082, %1079 ]
  %79 = phi ptr [ %1126, %1122 ], [ %1083, %1079 ]
  %80 = phi i32 [ %1127, %1122 ], [ %1084, %1079 ]
  %81 = phi ptr [ %1128, %1122 ], [ %1085, %1079 ]
  %82 = load i16, ptr %81, align 8, !tbaa !41
  %83 = zext i16 %82 to i32
  %84 = lshr i32 %83, 6
  switch i32 %84, label %837 [
    i32 0, label %85
    i32 2, label %85
    i32 18, label %86
    i32 10, label %86
    i32 14, label %86
    i32 74, label %86
    i32 22, label %86
    i32 26, label %86
    i32 17, label %1086
    i32 16, label %1086
    i32 4, label %1086
    i32 6, label %1086
    i32 9, label %1086
    i32 8, label %1086
    i32 13, label %1086
    i32 12, label %1086
    i32 40, label %1086
    i32 42, label %1086
    i32 44, label %1086
    i32 46, label %1086
    i32 48, label %1086
    i32 50, label %1086
    i32 52, label %1086
    i32 56, label %1086
    i32 80, label %1086
    i32 60, label %1086
    i32 64, label %1086
    i32 66, label %1086
    i32 68, label %1086
    i32 70, label %1086
    i32 73, label %1086
    i32 72, label %1086
    i32 21, label %1086
    i32 20, label %1086
    i32 25, label %1086
    i32 24, label %1086
    i32 76, label %1086
    i32 78, label %1086
    i32 32, label %1086
    i32 34, label %1086
    i32 36, label %1086
    i32 38, label %1086
    i32 19, label %1086
    i32 23, label %1086
    i32 27, label %1086
    i32 86, label %87
    i32 90, label %110
    i32 94, label %133
    i32 98, label %166
    i32 102, label %199
    i32 106, label %255
    i32 110, label %332
    i32 114, label %354
    i32 118, label %379
    i32 122, label %402
    i32 58, label %547
    i32 82, label %425
    i32 62, label %514
    i32 54, label %588
    i32 15, label %670
    i32 75, label %790
  ]

85:                                               ; preds = %75, %75
  store i32 -100, ptr %11, align 8, !tbaa !38
  store i32 752, ptr %30, align 4, !tbaa !40
  br label %1215

86:                                               ; preds = %75, %75, %75, %75, %75, %75
  store i32 -7, ptr %11, align 8, !tbaa !38
  store i32 758, ptr %30, align 4, !tbaa !40
  br label %1215

87:                                               ; preds = %1071, %620, %75
  %88 = phi ptr [ %1072, %1071 ], [ %621, %620 ], [ %76, %75 ]
  %89 = phi ptr [ %1074, %1071 ], [ %78, %620 ], [ %78, %75 ]
  %90 = phi ptr [ %1076, %1071 ], [ %79, %620 ], [ %79, %75 ]
  %91 = phi i32 [ %1077, %1071 ], [ %80, %620 ], [ %80, %75 ]
  %92 = phi ptr [ %1078, %1071 ], [ %81, %620 ], [ %81, %75 ]
  %93 = call i32 @zop_add(ptr noundef %90) #8
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %1202, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.ref_s, ptr %90, i64 -1
  %97 = add nsw i32 %91, -1
  %98 = icmp slt i32 %91, 2
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = icmp eq i32 %91, 1
  br i1 %100, label %101, label %554

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.ref_s, ptr %89, i64 -1
  br label %103

103:                                              ; preds = %101, %95
  %104 = phi ptr [ %102, %101 ], [ %89, %95 ]
  %105 = load i16, ptr %92, align 2, !tbaa !41
  %106 = icmp ugt i16 %105, 16383
  %107 = getelementptr inbounds i16, ptr %92, i64 1
  %108 = getelementptr inbounds %struct.ref_s, ptr %92, i64 1
  %109 = select i1 %106, ptr %107, ptr %108
  br label %1079

110:                                              ; preds = %1071, %620, %75
  %111 = phi ptr [ %1072, %1071 ], [ %621, %620 ], [ %76, %75 ]
  %112 = phi ptr [ %1074, %1071 ], [ %78, %620 ], [ %78, %75 ]
  %113 = phi ptr [ %1076, %1071 ], [ %79, %620 ], [ %79, %75 ]
  %114 = phi i32 [ %1077, %1071 ], [ %80, %620 ], [ %80, %75 ]
  %115 = phi ptr [ %1078, %1071 ], [ %81, %620 ], [ %81, %75 ]
  %116 = call i32 @zop_def(ptr noundef %113) #8
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %1202, label %118

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.ref_s, ptr %113, i64 -2
  %120 = add nsw i32 %114, -1
  %121 = icmp slt i32 %114, 2
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = icmp eq i32 %114, 1
  br i1 %123, label %124, label %554

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.ref_s, ptr %112, i64 -1
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi ptr [ %125, %124 ], [ %112, %118 ]
  %128 = load i16, ptr %115, align 2, !tbaa !41
  %129 = icmp ugt i16 %128, 16383
  %130 = getelementptr inbounds i16, ptr %115, i64 1
  %131 = getelementptr inbounds %struct.ref_s, ptr %115, i64 1
  %132 = select i1 %129, ptr %130, ptr %131
  br label %1079

133:                                              ; preds = %1071, %620, %75
  %134 = phi ptr [ %1072, %1071 ], [ %621, %620 ], [ %76, %75 ]
  %135 = phi i32 [ %1073, %1071 ], [ %77, %620 ], [ %77, %75 ]
  %136 = phi ptr [ %1074, %1071 ], [ %78, %620 ], [ %78, %75 ]
  %137 = phi ptr [ %1076, %1071 ], [ %79, %620 ], [ %79, %75 ]
  %138 = phi i32 [ %1077, %1071 ], [ %80, %620 ], [ %80, %75 ]
  %139 = phi ptr [ %1078, %1071 ], [ %81, %620 ], [ %81, %75 ]
  %140 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !42
  %141 = icmp ult ptr %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i32 -17, ptr %11, align 8, !tbaa !38
  store i32 812, ptr %30, align 4, !tbaa !40
  br label %1215

143:                                              ; preds = %133
  %144 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %145 = icmp ult ptr %137, %144
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  store i32 -16, ptr %11, align 8, !tbaa !38
  store i32 814, ptr %30, align 4, !tbaa !40
  br label %1215

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.ref_s, ptr %137, i64 1
  %149 = getelementptr inbounds %struct.ref_s, ptr %137, i64 1, i32 1
  %150 = getelementptr inbounds %struct.ref_s, ptr %137, i64 0, i32 1
  %151 = load i64, ptr %150, align 8
  store i64 %151, ptr %149, align 8
  %152 = load i32, ptr %137, align 8
  store i32 %152, ptr %148, align 8
  %153 = add nsw i32 %138, -1
  %154 = icmp slt i32 %138, 2
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = icmp eq i32 %138, 1
  br i1 %156, label %157, label %554

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.ref_s, ptr %136, i64 -1
  br label %159

159:                                              ; preds = %157, %147
  %160 = phi ptr [ %158, %157 ], [ %136, %147 ]
  %161 = load i16, ptr %139, align 2, !tbaa !41
  %162 = icmp ugt i16 %161, 16383
  %163 = getelementptr inbounds i16, ptr %139, i64 1
  %164 = getelementptr inbounds %struct.ref_s, ptr %139, i64 1
  %165 = select i1 %162, ptr %163, ptr %164
  br label %1079

166:                                              ; preds = %1071, %620, %75
  %167 = phi ptr [ %1072, %1071 ], [ %621, %620 ], [ %76, %75 ]
  %168 = phi i32 [ %1073, %1071 ], [ %77, %620 ], [ %77, %75 ]
  %169 = phi ptr [ %1074, %1071 ], [ %78, %620 ], [ %78, %75 ]
  %170 = phi ptr [ %1076, %1071 ], [ %79, %620 ], [ %79, %75 ]
  %171 = phi i32 [ %1077, %1071 ], [ %80, %620 ], [ %80, %75 ]
  %172 = phi ptr [ %1078, %1071 ], [ %81, %620 ], [ %81, %75 ]
  %173 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !42
  %174 = icmp ugt ptr %170, %173
  br i1 %174, label %176, label %175

175:                                              ; preds = %166
  store i32 -17, ptr %11, align 8, !tbaa !38
  store i32 820, ptr %30, align 4, !tbaa !40
  br label %1215

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.ref_s, ptr %170, i64 0, i32 1
  %178 = load i64, ptr %177, align 8
  store i64 %178, ptr %38, align 8
  %179 = load i32, ptr %170, align 8
  store i32 %179, ptr %10, align 8
  %180 = getelementptr inbounds %struct.ref_s, ptr %170, i64 -1
  %181 = getelementptr %struct.ref_s, ptr %170, i64 -1, i32 1
  %182 = load i64, ptr %181, align 8
  store i64 %182, ptr %177, align 8
  %183 = load i32, ptr %180, align 8
  store i32 %183, ptr %170, align 8
  %184 = load i64, ptr %38, align 8
  store i64 %184, ptr %181, align 8
  %185 = load i32, ptr %10, align 8
  store i32 %185, ptr %180, align 8
  %186 = add nsw i32 %171, -1
  %187 = icmp slt i32 %171, 2
  br i1 %187, label %188, label %192

188:                                              ; preds = %176
  %189 = icmp eq i32 %171, 1
  br i1 %189, label %190, label %554

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.ref_s, ptr %169, i64 -1
  br label %192

192:                                              ; preds = %190, %176
  %193 = phi ptr [ %191, %190 ], [ %169, %176 ]
  %194 = load i16, ptr %172, align 2, !tbaa !41
  %195 = icmp ugt i16 %194, 16383
  %196 = getelementptr inbounds i16, ptr %172, i64 1
  %197 = getelementptr inbounds %struct.ref_s, ptr %172, i64 1
  %198 = select i1 %195, ptr %196, ptr %197
  br label %1079

199:                                              ; preds = %1071, %620, %75
  %200 = phi ptr [ %1072, %1071 ], [ %621, %620 ], [ %76, %75 ]
  %201 = phi i32 [ %1073, %1071 ], [ %77, %620 ], [ %77, %75 ]
  %202 = phi ptr [ %1074, %1071 ], [ %78, %620 ], [ %78, %75 ]
  %203 = phi ptr [ %1076, %1071 ], [ %79, %620 ], [ %79, %75 ]
  %204 = phi i32 [ %1077, %1071 ], [ %80, %620 ], [ %80, %75 ]
  %205 = phi ptr [ %1078, %1071 ], [ %81, %620 ], [ %81, %75 ]
  %206 = getelementptr inbounds i8, ptr %203, i64 -15
  %207 = load i8, ptr %206, align 1, !tbaa !5
  %208 = icmp eq i8 %207, 1
  br i1 %208, label %213, label %209

209:                                              ; preds = %199
  %210 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !42
  %211 = icmp ugt ptr %203, %210
  %212 = select i1 %211, i32 -20, i32 -17
  store i32 %212, ptr %11, align 8, !tbaa !38
  store i32 828, ptr %30, align 4, !tbaa !40
  br label %1215

213:                                              ; preds = %199
  %214 = load i16, ptr %203, align 8, !tbaa !8
  %215 = and i16 %214, 15552
  %216 = icmp eq i16 %215, 1216
  br i1 %216, label %219, label %217

217:                                              ; preds = %213
  %218 = call i32 @check_proc_failed(ptr noundef nonnull %203) #8
  store i32 %218, ptr %11, align 8, !tbaa !38
  store i32 830, ptr %30, align 4, !tbaa !40
  br label %1215

219:                                              ; preds = %213
  %220 = getelementptr %struct.ref_s, ptr %203, i64 -1, i32 1
  %221 = load i16, ptr %220, align 8, !tbaa !5
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.ref_s, ptr %203, i64 -2
  %225 = add nsw i32 %204, -1
  %226 = icmp slt i32 %204, 2
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = icmp eq i32 %204, 1
  br i1 %228, label %229, label %554

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.ref_s, ptr %202, i64 -1
  br label %231

231:                                              ; preds = %229, %223
  %232 = phi ptr [ %230, %229 ], [ %202, %223 ]
  %233 = load i16, ptr %205, align 2, !tbaa !41
  %234 = icmp ugt i16 %233, 16383
  %235 = getelementptr inbounds i16, ptr %205, i64 1
  %236 = getelementptr inbounds %struct.ref_s, ptr %205, i64 1
  %237 = select i1 %234, ptr %235, ptr %236
  br label %1079

238:                                              ; preds = %219
  %239 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !37
  %240 = icmp ult ptr %202, %239
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  store i32 -5, ptr %11, align 8, !tbaa !38
  store i32 836, ptr %30, align 4, !tbaa !40
  br label %1215

242:                                              ; preds = %238
  %243 = icmp sgt i32 %204, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %242
  %245 = load i16, ptr %205, align 2, !tbaa !41
  %246 = icmp ugt i16 %245, 16383
  %247 = getelementptr inbounds i16, ptr %205, i64 1
  %248 = getelementptr inbounds %struct.ref_s, ptr %205, i64 1
  %249 = select i1 %246, ptr %247, ptr %248
  %250 = getelementptr inbounds %struct.ref_s, ptr %202, i64 0, i32 1
  store ptr %249, ptr %250, align 8, !tbaa !5
  %251 = trunc i32 %204 to i16
  %252 = getelementptr inbounds %struct.tas_s, ptr %202, i64 0, i32 1
  store i16 %251, ptr %252, align 2, !tbaa !12
  br label %253

253:                                              ; preds = %244, %242
  %254 = getelementptr inbounds %struct.ref_s, ptr %203, i64 -2
  br label %304

255:                                              ; preds = %1071, %620, %75
  %256 = phi ptr [ %1072, %1071 ], [ %621, %620 ], [ %76, %75 ]
  %257 = phi i32 [ %1073, %1071 ], [ %77, %620 ], [ %77, %75 ]
  %258 = phi ptr [ %1074, %1071 ], [ %78, %620 ], [ %78, %75 ]
  %259 = phi ptr [ %1076, %1071 ], [ %79, %620 ], [ %79, %75 ]
  %260 = phi i32 [ %1077, %1071 ], [ %80, %620 ], [ %80, %75 ]
  %261 = phi ptr [ %1078, %1071 ], [ %81, %620 ], [ %81, %75 ]
  %262 = getelementptr inbounds i8, ptr %259, i64 -31
  %263 = load i8, ptr %262, align 1, !tbaa !5
  %264 = icmp eq i8 %263, 1
  br i1 %264, label %270, label %265

265:                                              ; preds = %255
  %266 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !42
  %267 = getelementptr inbounds %struct.ref_s, ptr %266, i64 2
  %268 = icmp ult ptr %259, %267
  %269 = select i1 %268, i32 -17, i32 -20
  store i32 %269, ptr %11, align 8, !tbaa !38
  store i32 844, ptr %30, align 4, !tbaa !40
  br label %1215

270:                                              ; preds = %255
  %271 = getelementptr inbounds %struct.ref_s, ptr %259, i64 -1
  %272 = load i16, ptr %271, align 8, !tbaa !8
  %273 = and i16 %272, 15552
  %274 = icmp eq i16 %273, 1216
  br i1 %274, label %277, label %275

275:                                              ; preds = %270
  %276 = call i32 @check_proc_failed(ptr noundef nonnull %271) #8
  store i32 %276, ptr %11, align 8, !tbaa !38
  store i32 846, ptr %30, align 4, !tbaa !40
  br label %1215

277:                                              ; preds = %270
  %278 = load i16, ptr %259, align 8, !tbaa !8
  %279 = and i16 %278, 15552
  %280 = icmp eq i16 %279, 1216
  br i1 %280, label %283, label %281

281:                                              ; preds = %277
  %282 = call i32 @check_proc_failed(ptr noundef nonnull %259) #8
  store i32 %282, ptr %11, align 8, !tbaa !38
  store i32 848, ptr %30, align 4, !tbaa !40
  br label %1215

283:                                              ; preds = %277
  %284 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !37
  %285 = icmp ult ptr %258, %284
  br i1 %285, label %287, label %286

286:                                              ; preds = %283
  store i32 -5, ptr %11, align 8, !tbaa !38
  store i32 850, ptr %30, align 4, !tbaa !40
  br label %1215

287:                                              ; preds = %283
  %288 = icmp sgt i32 %260, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %287
  %290 = load i16, ptr %261, align 2, !tbaa !41
  %291 = icmp ugt i16 %290, 16383
  %292 = getelementptr inbounds i16, ptr %261, i64 1
  %293 = getelementptr inbounds %struct.ref_s, ptr %261, i64 1
  %294 = select i1 %291, ptr %292, ptr %293
  %295 = getelementptr inbounds %struct.ref_s, ptr %258, i64 0, i32 1
  store ptr %294, ptr %295, align 8, !tbaa !5
  %296 = trunc i32 %260 to i16
  %297 = getelementptr inbounds %struct.tas_s, ptr %258, i64 0, i32 1
  store i16 %296, ptr %297, align 2, !tbaa !12
  br label %298

298:                                              ; preds = %289, %287
  %299 = getelementptr %struct.ref_s, ptr %259, i64 -2, i32 1
  %300 = load i16, ptr %299, align 8, !tbaa !5
  %301 = icmp eq i16 %300, 0
  %302 = select i1 %301, ptr %259, ptr %271
  %303 = getelementptr inbounds %struct.ref_s, ptr %259, i64 -3
  br label %304

304:                                              ; preds = %298, %253
  %305 = phi ptr [ %302, %298 ], [ %203, %253 ]
  %306 = phi ptr [ %256, %298 ], [ %200, %253 ]
  %307 = phi i32 [ %257, %298 ], [ %201, %253 ]
  %308 = phi ptr [ %258, %298 ], [ %202, %253 ]
  %309 = phi ptr [ %303, %298 ], [ %254, %253 ]
  %310 = getelementptr inbounds %struct.tas_s, ptr %305, i64 0, i32 1
  %311 = load i16, ptr %310, align 2, !tbaa !12
  %312 = zext i16 %311 to i32
  %313 = add nsw i32 %312, -1
  %314 = icmp ult i16 %311, 2
  br i1 %314, label %315, label %323

315:                                              ; preds = %304
  %316 = icmp eq i16 %311, 0
  br i1 %316, label %554, label %317

317:                                              ; preds = %315
  %318 = getelementptr inbounds %struct.ref_s, ptr %305, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !5
  %320 = load i32, ptr %12, align 4, !tbaa !24
  %321 = add nsw i32 %320, -1
  store i32 %321, ptr %12, align 4, !tbaa !24
  %322 = icmp sgt i32 %320, 1
  br i1 %322, label %1079, label %323

323:                                              ; preds = %317, %304
  %324 = getelementptr inbounds %struct.ref_s, ptr %308, i64 1
  %325 = load i32, ptr %305, align 8
  store i32 %325, ptr %324, align 8
  %326 = getelementptr inbounds %struct.ref_s, ptr %305, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !5
  %328 = getelementptr inbounds %struct.ref_s, ptr %308, i64 1, i32 1
  store ptr %327, ptr %328, align 8, !tbaa !5
  %329 = load i32, ptr %12, align 4, !tbaa !24
  %330 = add nsw i32 %329, -1
  store i32 %330, ptr %12, align 4, !tbaa !24
  %331 = icmp sgt i32 %329, 1
  br i1 %331, label %1079, label %1187

332:                                              ; preds = %1071, %620, %75
  %333 = phi ptr [ %1072, %1071 ], [ %621, %620 ], [ %76, %75 ]
  %334 = phi ptr [ %1074, %1071 ], [ %78, %620 ], [ %78, %75 ]
  %335 = phi ptr [ %1076, %1071 ], [ %79, %620 ], [ %79, %75 ]
  %336 = phi i32 [ %1077, %1071 ], [ %80, %620 ], [ %80, %75 ]
  %337 = phi ptr [ %1078, %1071 ], [ %81, %620 ], [ %81, %75 ]
  store ptr %335, ptr @o_stack, align 8, !tbaa !23
  %338 = call i32 @zindex(ptr noundef %335) #8
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %1202, label %340

340:                                              ; preds = %332
  %341 = add nsw i32 %336, -1
  %342 = icmp slt i32 %336, 2
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = icmp eq i32 %336, 1
  br i1 %344, label %345, label %554

345:                                              ; preds = %343
  %346 = getelementptr inbounds %struct.ref_s, ptr %334, i64 -1
  br label %347

347:                                              ; preds = %345, %340
  %348 = phi ptr [ %346, %345 ], [ %334, %340 ]
  %349 = load i16, ptr %337, align 2, !tbaa !41
  %350 = icmp ugt i16 %349, 16383
  %351 = getelementptr inbounds i16, ptr %337, i64 1
  %352 = getelementptr inbounds %struct.ref_s, ptr %337, i64 1
  %353 = select i1 %350, ptr %351, ptr %352
  br label %1079

354:                                              ; preds = %1071, %620, %75
  %355 = phi ptr [ %1072, %1071 ], [ %621, %620 ], [ %76, %75 ]
  %356 = phi i32 [ %1073, %1071 ], [ %77, %620 ], [ %77, %75 ]
  %357 = phi ptr [ %1074, %1071 ], [ %78, %620 ], [ %78, %75 ]
  %358 = phi ptr [ %1076, %1071 ], [ %79, %620 ], [ %79, %75 ]
  %359 = phi i32 [ %1077, %1071 ], [ %80, %620 ], [ %80, %75 ]
  %360 = phi ptr [ %1078, %1071 ], [ %81, %620 ], [ %81, %75 ]
  %361 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !42
  %362 = icmp ult ptr %358, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %354
  store i32 -17, ptr %11, align 8, !tbaa !38
  store i32 875, ptr %30, align 4, !tbaa !40
  br label %1215

364:                                              ; preds = %354
  %365 = getelementptr inbounds %struct.ref_s, ptr %358, i64 -1
  %366 = add nsw i32 %359, -1
  %367 = icmp slt i32 %359, 2
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = icmp eq i32 %359, 1
  br i1 %369, label %370, label %554

370:                                              ; preds = %368
  %371 = getelementptr inbounds %struct.ref_s, ptr %357, i64 -1
  br label %372

372:                                              ; preds = %370, %364
  %373 = phi ptr [ %371, %370 ], [ %357, %364 ]
  %374 = load i16, ptr %360, align 2, !tbaa !41
  %375 = icmp ugt i16 %374, 16383
  %376 = getelementptr inbounds i16, ptr %360, i64 1
  %377 = getelementptr inbounds %struct.ref_s, ptr %360, i64 1
  %378 = select i1 %375, ptr %376, ptr %377
  br label %1079

379:                                              ; preds = %1071, %620, %75
  %380 = phi ptr [ %1072, %1071 ], [ %621, %620 ], [ %76, %75 ]
  %381 = phi ptr [ %1074, %1071 ], [ %78, %620 ], [ %78, %75 ]
  %382 = phi ptr [ %1076, %1071 ], [ %79, %620 ], [ %79, %75 ]
  %383 = phi i32 [ %1077, %1071 ], [ %80, %620 ], [ %80, %75 ]
  %384 = phi ptr [ %1078, %1071 ], [ %81, %620 ], [ %81, %75 ]
  store ptr %382, ptr @o_stack, align 8, !tbaa !23
  %385 = call i32 @zroll(ptr noundef %382) #8
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %1202, label %387

387:                                              ; preds = %379
  %388 = getelementptr inbounds %struct.ref_s, ptr %382, i64 -2
  %389 = add nsw i32 %383, -1
  %390 = icmp slt i32 %383, 2
  br i1 %390, label %391, label %395

391:                                              ; preds = %387
  %392 = icmp eq i32 %383, 1
  br i1 %392, label %393, label %554

393:                                              ; preds = %391
  %394 = getelementptr inbounds %struct.ref_s, ptr %381, i64 -1
  br label %395

395:                                              ; preds = %393, %387
  %396 = phi ptr [ %394, %393 ], [ %381, %387 ]
  %397 = load i16, ptr %384, align 2, !tbaa !41
  %398 = icmp ugt i16 %397, 16383
  %399 = getelementptr inbounds i16, ptr %384, i64 1
  %400 = getelementptr inbounds %struct.ref_s, ptr %384, i64 1
  %401 = select i1 %398, ptr %399, ptr %400
  br label %1079

402:                                              ; preds = %1071, %620, %75
  %403 = phi ptr [ %1072, %1071 ], [ %621, %620 ], [ %76, %75 ]
  %404 = phi ptr [ %1074, %1071 ], [ %78, %620 ], [ %78, %75 ]
  %405 = phi ptr [ %1076, %1071 ], [ %79, %620 ], [ %79, %75 ]
  %406 = phi i32 [ %1077, %1071 ], [ %80, %620 ], [ %80, %75 ]
  %407 = phi ptr [ %1078, %1071 ], [ %81, %620 ], [ %81, %75 ]
  %408 = call i32 @zop_sub(ptr noundef %405) #8
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %1202, label %410

410:                                              ; preds = %402
  %411 = getelementptr inbounds %struct.ref_s, ptr %405, i64 -1
  %412 = add nsw i32 %406, -1
  %413 = icmp slt i32 %406, 2
  br i1 %413, label %414, label %418

414:                                              ; preds = %410
  %415 = icmp eq i32 %406, 1
  br i1 %415, label %416, label %554

416:                                              ; preds = %414
  %417 = getelementptr inbounds %struct.ref_s, ptr %404, i64 -1
  br label %418

418:                                              ; preds = %416, %410
  %419 = phi ptr [ %417, %416 ], [ %404, %410 ]
  %420 = load i16, ptr %407, align 2, !tbaa !41
  %421 = icmp ugt i16 %420, 16383
  %422 = getelementptr inbounds i16, ptr %407, i64 1
  %423 = getelementptr inbounds %struct.ref_s, ptr %407, i64 1
  %424 = select i1 %421, ptr %422, ptr %423
  br label %1079

425:                                              ; preds = %620, %75
  %426 = phi ptr [ %81, %75 ], [ %621, %620 ]
  %427 = getelementptr inbounds %struct.ref_s, ptr %426, i64 0, i32 1
  %428 = load ptr, ptr %427, align 8, !tbaa !5
  %429 = icmp sgt i32 %80, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %425
  %431 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  %432 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %431, ptr %432, align 8, !tbaa !5
  %433 = trunc i32 %80 to i16
  %434 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %433, ptr %434, align 2, !tbaa !12
  br label %435

435:                                              ; preds = %1071, %430, %425
  %436 = phi ptr [ %1072, %1071 ], [ %428, %430 ], [ %428, %425 ]
  %437 = phi i32 [ %1073, %1071 ], [ %77, %430 ], [ %77, %425 ]
  %438 = phi ptr [ %1074, %1071 ], [ %78, %430 ], [ %78, %425 ]
  %439 = phi ptr [ %1076, %1071 ], [ %79, %430 ], [ %79, %425 ]
  %440 = phi i32 [ %1077, %1071 ], [ %80, %430 ], [ %80, %425 ]
  %441 = phi ptr [ %1078, %1071 ], [ %81, %430 ], [ %81, %425 ]
  %442 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !37
  %443 = getelementptr inbounds %struct.ref_s, ptr %442, i64 -3
  %444 = icmp ult ptr %438, %443
  br i1 %444, label %446, label %445

445:                                              ; preds = %435
  store i32 -5, ptr %11, align 8, !tbaa !38
  store i32 899, ptr %30, align 4, !tbaa !40
  br label %1215

446:                                              ; preds = %435
  %447 = getelementptr inbounds %struct.ref_s, ptr %438, i64 4
  store ptr %439, ptr @o_stack, align 8, !tbaa !23
  %448 = getelementptr inbounds %struct.ref_s, ptr %438, i64 1
  %449 = getelementptr inbounds %struct.ref_s, ptr %438, i64 1, i32 1
  store ptr @oparray_cleanup, ptr %449, align 8, !tbaa !5
  store i16 3712, ptr %448, align 8, !tbaa !8
  %450 = getelementptr inbounds %struct.ref_s, ptr %438, i64 1, i32 0, i32 1
  store i16 0, ptr %450, align 2, !tbaa !12
  %451 = getelementptr inbounds %struct.ref_s, ptr %439, i64 1
  %452 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !42
  %453 = ptrtoint ptr %451 to i64
  %454 = ptrtoint ptr %452 to i64
  %455 = sub i64 %453, %454
  %456 = ashr exact i64 %455, 4
  %457 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 5), align 4, !tbaa !43
  %458 = zext i32 %457 to i64
  %459 = add nsw i64 %456, %458
  %460 = getelementptr inbounds %struct.ref_s, ptr %438, i64 2
  %461 = getelementptr inbounds %struct.ref_s, ptr %438, i64 2, i32 1
  store i64 %459, ptr %461, align 8, !tbaa !5
  store i16 2816, ptr %460, align 8, !tbaa !8
  %462 = load ptr, ptr @d_stack, align 8, !tbaa !23
  %463 = getelementptr inbounds %struct.ref_s, ptr %462, i64 1
  %464 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !42
  %465 = ptrtoint ptr %463 to i64
  %466 = ptrtoint ptr %464 to i64
  %467 = sub i64 %465, %466
  %468 = ashr exact i64 %467, 4
  %469 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 5), align 4, !tbaa !43
  %470 = zext i32 %469 to i64
  %471 = add nsw i64 %468, %470
  %472 = getelementptr inbounds %struct.ref_s, ptr %438, i64 3
  %473 = getelementptr inbounds %struct.ref_s, ptr %438, i64 3, i32 1
  store i64 %471, ptr %473, align 8, !tbaa !5
  store i16 2816, ptr %472, align 8, !tbaa !8
  %474 = getelementptr inbounds %struct.ref_s, ptr %438, i64 4, i32 1
  store ptr @oparray_pop, ptr %474, align 8, !tbaa !5
  store i16 3968, ptr %447, align 8, !tbaa !8
  %475 = getelementptr inbounds %struct.ref_s, ptr %438, i64 4, i32 0, i32 1
  store i16 0, ptr %475, align 2, !tbaa !12
  br label %481

476:                                              ; preds = %640
  %477 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  %478 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %477, ptr %478, align 8, !tbaa !5
  %479 = trunc i32 %80 to i16
  %480 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %479, ptr %480, align 2, !tbaa !12
  br label %481

481:                                              ; preds = %1071, %830, %782, %640, %476, %446
  %482 = phi ptr [ %1072, %1071 ], [ %436, %446 ], [ %831, %830 ], [ %783, %782 ], [ %621, %476 ], [ %621, %640 ]
  %483 = phi i32 [ %1073, %1071 ], [ %437, %446 ], [ %832, %830 ], [ %784, %782 ], [ %77, %476 ], [ %77, %640 ]
  %484 = phi ptr [ %1074, %1071 ], [ %447, %446 ], [ %833, %830 ], [ %785, %782 ], [ %78, %476 ], [ %78, %640 ]
  %485 = phi ptr [ %1076, %1071 ], [ %439, %446 ], [ %797, %830 ], [ %787, %782 ], [ %79, %476 ], [ %79, %640 ]
  %486 = phi ptr [ %1078, %1071 ], [ %441, %446 ], [ %836, %830 ], [ %789, %782 ], [ %81, %476 ], [ %81, %640 ]
  %487 = getelementptr inbounds %struct.tas_s, ptr %482, i64 0, i32 1
  %488 = load i16, ptr %487, align 2, !tbaa !12
  %489 = zext i16 %488 to i32
  %490 = add nsw i32 %489, -1
  %491 = icmp ult i16 %488, 2
  br i1 %491, label %492, label %500

492:                                              ; preds = %481
  %493 = icmp eq i16 %488, 0
  br i1 %493, label %554, label %494

494:                                              ; preds = %492
  %495 = getelementptr inbounds %struct.ref_s, ptr %482, i64 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !5
  %497 = load i32, ptr %12, align 4, !tbaa !24
  %498 = add nsw i32 %497, -1
  store i32 %498, ptr %12, align 4, !tbaa !24
  %499 = icmp sgt i32 %497, 1
  br i1 %499, label %1079, label %500

500:                                              ; preds = %494, %481
  %501 = phi ptr [ %496, %494 ], [ %486, %481 ]
  %502 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !37
  %503 = icmp ult ptr %484, %502
  br i1 %503, label %505, label %504

504:                                              ; preds = %500
  store i32 -5, ptr %11, align 8, !tbaa !38
  store i32 917, ptr %30, align 4, !tbaa !40
  br label %1215

505:                                              ; preds = %500
  %506 = getelementptr inbounds %struct.ref_s, ptr %484, i64 1
  %507 = load i32, ptr %482, align 8
  store i32 %507, ptr %506, align 8
  %508 = getelementptr inbounds %struct.ref_s, ptr %482, i64 0, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !5
  %510 = getelementptr inbounds %struct.ref_s, ptr %484, i64 1, i32 1
  store ptr %509, ptr %510, align 8, !tbaa !5
  %511 = load i32, ptr %12, align 4, !tbaa !24
  %512 = add nsw i32 %511, -1
  store i32 %512, ptr %12, align 4, !tbaa !24
  %513 = icmp sgt i32 %511, 1
  br i1 %513, label %1079, label %1187

514:                                              ; preds = %75
  %515 = load i32, ptr %12, align 4, !tbaa !24
  %516 = add nsw i32 %515, -1
  store i32 %516, ptr %12, align 4, !tbaa !24
  store ptr %78, ptr @e_stack, align 8, !tbaa !23
  store ptr %79, ptr @o_stack, align 8, !tbaa !23
  %517 = getelementptr inbounds %struct.ref_s, ptr %81, i64 0, i32 1
  %518 = load ptr, ptr %517, align 8, !tbaa !5
  %519 = call i32 %518(ptr noundef %79) #8
  switch i32 %519, label %585 [
    i32 0, label %520
    i32 1, label %520
    i32 5, label %526
    i32 14, label %542
    i32 22, label %567
    i32 -103, label %569
  ]

520:                                              ; preds = %514, %514
  %521 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %522 = add nsw i32 %80, -1
  %523 = icmp sgt i32 %80, 1
  br i1 %523, label %524, label %1129

524:                                              ; preds = %520
  %525 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  br label %1079

526:                                              ; preds = %514
  %527 = icmp sgt i32 %80, 0
  br i1 %527, label %528, label %534

528:                                              ; preds = %526, %654
  %529 = phi ptr [ %621, %654 ], [ %76, %526 ]
  %530 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  %531 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %530, ptr %531, align 8, !tbaa !5
  %532 = trunc i32 %80 to i16
  %533 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %532, ptr %533, align 2, !tbaa !12
  br label %534

534:                                              ; preds = %1071, %528, %654, %526
  %535 = phi ptr [ %621, %654 ], [ %76, %526 ], [ %529, %528 ], [ %1072, %1071 ]
  %536 = phi i32 [ 5, %654 ], [ 5, %526 ], [ 5, %528 ], [ %1073, %1071 ]
  %537 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %538 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %539 = load i32, ptr %12, align 4, !tbaa !24
  %540 = add nsw i32 %539, -1
  store i32 %540, ptr %12, align 4, !tbaa !24
  %541 = icmp sgt i32 %539, 1
  br i1 %541, label %559, label %1187

542:                                              ; preds = %642, %514
  %543 = phi ptr [ %621, %642 ], [ %76, %514 ]
  %544 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %545 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %546 = icmp eq ptr %545, %78
  br i1 %546, label %547, label %559

547:                                              ; preds = %75, %620, %782, %830, %542
  %548 = phi ptr [ %543, %542 ], [ %831, %830 ], [ %783, %782 ], [ %621, %620 ], [ %76, %75 ]
  %549 = phi i32 [ 14, %542 ], [ %832, %830 ], [ %784, %782 ], [ %77, %620 ], [ %77, %75 ]
  %550 = phi ptr [ %78, %542 ], [ %833, %830 ], [ %785, %782 ], [ %78, %620 ], [ %78, %75 ]
  %551 = phi ptr [ %544, %542 ], [ %797, %830 ], [ %787, %782 ], [ %79, %620 ], [ %79, %75 ]
  %552 = phi i32 [ %80, %542 ], [ %835, %830 ], [ %788, %782 ], [ %80, %620 ], [ %80, %75 ]
  %553 = phi ptr [ %81, %542 ], [ %836, %830 ], [ %789, %782 ], [ %81, %620 ], [ %81, %75 ]
  br label %1111

554:                                              ; preds = %1071, %782, %492, %414, %391, %368, %343, %315, %227, %188, %155, %122, %99
  %555 = phi ptr [ %783, %782 ], [ %88, %99 ], [ %111, %122 ], [ %134, %155 ], [ %167, %188 ], [ %200, %227 ], [ %306, %315 ], [ %333, %343 ], [ %355, %368 ], [ %380, %391 ], [ %403, %414 ], [ %482, %492 ], [ %1072, %1071 ]
  %556 = phi i32 [ %784, %782 ], [ %93, %99 ], [ %116, %122 ], [ %135, %155 ], [ %168, %188 ], [ %201, %227 ], [ %307, %315 ], [ %338, %343 ], [ %356, %368 ], [ %385, %391 ], [ %408, %414 ], [ %483, %492 ], [ %1073, %1071 ]
  %557 = phi ptr [ %785, %782 ], [ %89, %99 ], [ %112, %122 ], [ %136, %155 ], [ %169, %188 ], [ %202, %227 ], [ %308, %315 ], [ %334, %343 ], [ %357, %368 ], [ %381, %391 ], [ %404, %414 ], [ %484, %492 ], [ %1074, %1071 ]
  %558 = phi ptr [ %787, %782 ], [ %96, %99 ], [ %119, %122 ], [ %148, %155 ], [ %170, %188 ], [ %224, %227 ], [ %309, %315 ], [ %335, %343 ], [ %365, %368 ], [ %388, %391 ], [ %411, %414 ], [ %485, %492 ], [ %1076, %1071 ]
  br label %559

559:                                              ; preds = %554, %1183, %1129, %577, %542, %534
  %560 = phi ptr [ %543, %542 ], [ %578, %577 ], [ %535, %534 ], [ %1130, %1129 ], [ %1177, %1183 ], [ %555, %554 ]
  %561 = phi i32 [ 14, %542 ], [ -103, %577 ], [ %536, %534 ], [ %1131, %1129 ], [ %1178, %1183 ], [ %556, %554 ]
  %562 = phi ptr [ %545, %542 ], [ %584, %577 ], [ %538, %534 ], [ %1132, %1129 ], [ %1185, %1183 ], [ %557, %554 ]
  %563 = phi ptr [ %544, %542 ], [ %79, %577 ], [ %537, %534 ], [ %1133, %1129 ], [ %1184, %1183 ], [ %558, %554 ]
  %564 = load i32, ptr %12, align 4, !tbaa !24
  %565 = call i32 @llvm.smin.i32(i32 %564, i32 0)
  %566 = add i32 %565, -1
  br label %1140

567:                                              ; preds = %514
  %568 = icmp sgt i32 %80, 0
  br i1 %568, label %1164, label %1170

569:                                              ; preds = %514
  %570 = icmp sgt i32 %80, 0
  br i1 %570, label %571, label %577

571:                                              ; preds = %569, %658
  %572 = phi ptr [ %621, %658 ], [ %76, %569 ]
  %573 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  %574 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %573, ptr %574, align 8, !tbaa !5
  %575 = trunc i32 %80 to i16
  %576 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %575, ptr %576, align 2, !tbaa !12
  br label %577

577:                                              ; preds = %571, %658, %569
  %578 = phi ptr [ %621, %658 ], [ %76, %569 ], [ %572, %571 ]
  %579 = getelementptr inbounds %struct.ref_s, ptr %78, i64 1
  %580 = getelementptr inbounds %struct.ref_s, ptr %78, i64 1, i32 1
  %581 = getelementptr inbounds %struct.ref_s, ptr %81, i64 0, i32 1
  %582 = load i64, ptr %581, align 8
  store i64 %582, ptr %580, align 8
  %583 = load i32, ptr %81, align 8
  store i32 %583, ptr %579, align 8
  %584 = load ptr, ptr @e_stack, align 8, !tbaa !23
  br label %559

585:                                              ; preds = %514
  %586 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %587 = load ptr, ptr @e_stack, align 8, !tbaa !23
  br label %1202

588:                                              ; preds = %75
  %589 = getelementptr inbounds %struct.ref_s, ptr %81, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !5
  %591 = getelementptr inbounds %struct.name_s, ptr %590, i64 0, i32 3
  %592 = load ptr, ptr %591, align 8, !tbaa !44
  %593 = icmp ugt ptr %592, inttoptr (i64 1 to ptr)
  br i1 %593, label %620, label %594

594:                                              ; preds = %588
  %595 = getelementptr inbounds %struct.tas_s, ptr %81, i64 0, i32 1
  %596 = load i16, ptr %595, align 2, !tbaa !12
  %597 = zext i16 %596 to i32
  %598 = load ptr, ptr @dtop_keys, align 8, !tbaa !22
  %599 = load i32, ptr @dtop_npairs, align 4, !tbaa !24
  %600 = add i32 %599, 65535
  %601 = and i32 %600, %597
  %602 = add nuw nsw i32 %601, 1
  %603 = zext nneg i32 %602 to i64
  %604 = getelementptr inbounds i16, ptr %598, i64 %603
  %605 = load i16, ptr %604, align 2, !tbaa !41
  %606 = zext i16 %605 to i32
  %607 = add nuw nsw i32 %597, 49152
  %608 = icmp eq i32 %607, %606
  br i1 %608, label %609, label %612

609:                                              ; preds = %594
  %610 = load ptr, ptr @dtop_values, align 8, !tbaa !22
  %611 = getelementptr inbounds %struct.ref_s, ptr %610, i64 %603
  br label %614

612:                                              ; preds = %594
  %613 = call ptr @dict_find_name_by_index(i32 noundef %597) #8
  br label %614

614:                                              ; preds = %612, %609
  %615 = phi ptr [ %611, %609 ], [ %613, %612 ]
  %616 = icmp eq ptr %615, null
  br i1 %616, label %617, label %618

617:                                              ; preds = %614
  store i32 -21, ptr %11, align 8, !tbaa !38
  store i32 984, ptr %30, align 4, !tbaa !40
  br label %618

618:                                              ; preds = %617, %614
  %619 = phi i32 [ 6, %617 ], [ 0, %614 ]
  switch i32 %619, label %1267 [
    i32 0, label %620
    i32 6, label %1215
  ]

620:                                              ; preds = %618, %588
  %621 = phi ptr [ %592, %588 ], [ %615, %618 ]
  %622 = load i16, ptr %621, align 8, !tbaa !41
  %623 = lshr i16 %622, 6
  switch i16 %623, label %663 [
    i16 0, label %624
    i16 2, label %624
    i16 18, label %625
    i16 10, label %625
    i16 14, label %625
    i16 74, label %625
    i16 22, label %625
    i16 26, label %625
    i16 17, label %626
    i16 16, label %626
    i16 4, label %626
    i16 6, label %626
    i16 9, label %626
    i16 8, label %626
    i16 13, label %626
    i16 12, label %626
    i16 40, label %626
    i16 42, label %626
    i16 44, label %626
    i16 46, label %626
    i16 48, label %626
    i16 50, label %626
    i16 52, label %626
    i16 56, label %626
    i16 80, label %626
    i16 60, label %626
    i16 64, label %626
    i16 66, label %626
    i16 68, label %626
    i16 70, label %626
    i16 73, label %626
    i16 72, label %626
    i16 21, label %626
    i16 20, label %626
    i16 25, label %626
    i16 24, label %626
    i16 76, label %626
    i16 78, label %626
    i16 32, label %626
    i16 34, label %626
    i16 36, label %626
    i16 38, label %626
    i16 19, label %640
    i16 23, label %640
    i16 27, label %640
    i16 86, label %87
    i16 90, label %110
    i16 94, label %133
    i16 98, label %166
    i16 102, label %199
    i16 106, label %255
    i16 110, label %332
    i16 114, label %354
    i16 118, label %379
    i16 122, label %402
    i16 58, label %547
    i16 82, label %425
    i16 62, label %642
  ]

624:                                              ; preds = %620, %620
  store i32 -100, ptr %11, align 8, !tbaa !38
  store i32 991, ptr %30, align 4, !tbaa !40
  br label %1215

625:                                              ; preds = %620, %620, %620, %620, %620, %620
  store i32 -7, ptr %11, align 8, !tbaa !38
  store i32 993, ptr %30, align 4, !tbaa !40
  br label %1215

626:                                              ; preds = %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620, %620
  %627 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %628 = icmp ult ptr %79, %627
  br i1 %628, label %630, label %629

629:                                              ; preds = %626
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  store i32 -16, ptr %11, align 8, !tbaa !38
  store i32 1001, ptr %30, align 4, !tbaa !40
  br label %1215

630:                                              ; preds = %626
  %631 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1
  %632 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1, i32 1
  %633 = getelementptr inbounds %struct.ref_s, ptr %621, i64 0, i32 1
  %634 = load i64, ptr %633, align 8
  store i64 %634, ptr %632, align 8
  %635 = load i32, ptr %621, align 8
  store i32 %635, ptr %631, align 8
  %636 = add nsw i32 %80, -1
  %637 = icmp sgt i32 %80, 1
  br i1 %637, label %638, label %1129

638:                                              ; preds = %630
  %639 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  br label %1079

640:                                              ; preds = %620, %620, %620
  %641 = icmp sgt i32 %80, 0
  br i1 %641, label %476, label %481

642:                                              ; preds = %620
  %643 = load i32, ptr %12, align 4, !tbaa !24
  %644 = add nsw i32 %643, -1
  store i32 %644, ptr %12, align 4, !tbaa !24
  store ptr %78, ptr @e_stack, align 8, !tbaa !23
  store ptr %79, ptr @o_stack, align 8, !tbaa !23
  %645 = getelementptr inbounds %struct.ref_s, ptr %621, i64 0, i32 1
  %646 = load ptr, ptr %645, align 8, !tbaa !5
  %647 = call i32 %646(ptr noundef %79) #8
  switch i32 %647, label %660 [
    i32 0, label %648
    i32 1, label %648
    i32 5, label %654
    i32 14, label %542
    i32 22, label %656
    i32 -103, label %658
  ]

648:                                              ; preds = %642, %642
  %649 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %650 = add nsw i32 %80, -1
  %651 = icmp sgt i32 %80, 1
  br i1 %651, label %652, label %1129

652:                                              ; preds = %648
  %653 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  br label %1079

654:                                              ; preds = %642
  %655 = icmp sgt i32 %80, 0
  br i1 %655, label %528, label %534

656:                                              ; preds = %642
  %657 = icmp sgt i32 %80, 0
  br i1 %657, label %1164, label %1170

658:                                              ; preds = %642
  %659 = icmp sgt i32 %80, 0
  br i1 %659, label %571, label %577

660:                                              ; preds = %642
  %661 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %662 = load ptr, ptr @e_stack, align 8, !tbaa !23
  store i32 %647, ptr %11, align 8, !tbaa !38
  store i32 1055, ptr %30, align 4, !tbaa !40
  br label %1215

663:                                              ; preds = %620
  %664 = icmp sgt i32 %80, 0
  br i1 %664, label %665, label %1079

665:                                              ; preds = %663
  %666 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  %667 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %666, ptr %667, align 8, !tbaa !5
  %668 = trunc i32 %80 to i16
  %669 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %668, ptr %669, align 2, !tbaa !12
  br label %1079

670:                                              ; preds = %75
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %13) #8
  %671 = getelementptr inbounds %struct.ref_s, ptr %81, i64 0, i32 1
  %672 = load ptr, ptr %671, align 8, !tbaa !5
  %673 = getelementptr inbounds %struct.stream_s, ptr %672, i64 0, i32 17
  %674 = load i16, ptr %673, align 8, !tbaa !46
  %675 = getelementptr inbounds %struct.tas_s, ptr %81, i64 0, i32 1
  %676 = load i16, ptr %675, align 2, !tbaa !12
  %677 = icmp eq i16 %674, %676
  br i1 %677, label %692, label %678

678:                                              ; preds = %670
  %679 = icmp eq i16 %674, 0
  br i1 %679, label %680, label %690

680:                                              ; preds = %678
  %681 = getelementptr inbounds %struct.stream_s, ptr %672, i64 0, i32 18
  %682 = load i16, ptr %681, align 2, !tbaa !50
  %683 = icmp eq i16 %682, %676
  br i1 %683, label %684, label %690

684:                                              ; preds = %680
  %685 = call i32 @file_switch_to_read(ptr noundef nonnull %81) #8
  %686 = icmp sgt i32 %685, -1
  br i1 %686, label %688, label %687

687:                                              ; preds = %684
  store i32 %685, ptr %11, align 8, !tbaa !38
  store i32 1071, ptr %30, align 4, !tbaa !40
  br label %688

688:                                              ; preds = %687, %684
  %689 = phi i32 [ 6, %687 ], [ 0, %684 ]
  br i1 %686, label %692, label %782

690:                                              ; preds = %680, %678
  %691 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !22
  br label %692

692:                                              ; preds = %690, %688, %670
  %693 = phi ptr [ %672, %688 ], [ %691, %690 ], [ %672, %670 ]
  %694 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %695 = icmp ult ptr %79, %694
  br i1 %695, label %696, label %700

696:                                              ; preds = %692
  %697 = icmp sgt i32 %80, 0
  %698 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  %699 = trunc i32 %80 to i16
  br label %704

700:                                              ; preds = %719, %692
  %701 = phi i32 [ %77, %692 ], [ 0, %719 ]
  %702 = phi ptr [ %78, %692 ], [ %708, %719 ]
  %703 = phi ptr [ %79, %692 ], [ %720, %719 ]
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  store i32 -16, ptr %11, align 8, !tbaa !38
  store i32 1073, ptr %30, align 4, !tbaa !40
  br label %782

704:                                              ; preds = %719, %696
  %705 = phi ptr [ %79, %696 ], [ %720, %719 ]
  %706 = phi ptr [ %78, %696 ], [ %708, %719 ]
  store ptr %705, ptr @o_stack, align 8, !tbaa !23
  store i32 0, ptr %36, align 4, !tbaa !51
  store i32 0, ptr %13, align 8, !tbaa !54
  store i32 0, ptr %37, align 8, !tbaa !55
  br label %707

707:                                              ; preds = %769, %704
  %708 = phi ptr [ %706, %704 ], [ %770, %769 ]
  %709 = call i32 @scan_token(ptr noundef %693, ptr noundef nonnull %10, ptr noundef nonnull %13) #8
  %710 = load ptr, ptr @o_stack, align 8, !tbaa !23
  switch i32 %709, label %778 [
    i32 0, label %711
    i32 2, label %739
    i32 1, label %740
    i32 3, label %753
  ]

711:                                              ; preds = %707
  %712 = load i16, ptr %10, align 8, !tbaa !8
  %713 = zext i16 %712 to i32
  %714 = and i32 %713, 128
  %715 = icmp eq i32 %714, 0
  %716 = and i32 %713, 15360
  %717 = icmp eq i32 %716, 1024
  %718 = or i1 %715, %717
  br i1 %718, label %719, label %726

719:                                              ; preds = %711
  %720 = getelementptr inbounds %struct.ref_s, ptr %710, i64 1
  %721 = getelementptr inbounds %struct.ref_s, ptr %710, i64 1, i32 1
  %722 = load i64, ptr %38, align 8
  store i64 %722, ptr %721, align 8
  %723 = load i32, ptr %10, align 8
  store i32 %723, ptr %720, align 8
  %724 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %725 = icmp ult ptr %720, %724
  br i1 %725, label %704, label %700

726:                                              ; preds = %711
  br i1 %697, label %727, label %730

727:                                              ; preds = %726
  %728 = getelementptr inbounds %struct.ref_s, ptr %708, i64 0, i32 1
  store ptr %698, ptr %728, align 8, !tbaa !5
  %729 = getelementptr inbounds %struct.tas_s, ptr %708, i64 0, i32 1
  store i16 %699, ptr %729, align 2, !tbaa !12
  br label %730

730:                                              ; preds = %727, %726
  %731 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !37
  %732 = icmp ult ptr %708, %731
  br i1 %732, label %734, label %733

733:                                              ; preds = %730
  store i32 -5, ptr %11, align 8, !tbaa !38
  store i32 1100, ptr %30, align 4, !tbaa !40
  br label %782

734:                                              ; preds = %730
  %735 = getelementptr inbounds %struct.ref_s, ptr %708, i64 1
  store ptr %735, ptr @esfile, align 8, !tbaa !22
  %736 = getelementptr inbounds %struct.ref_s, ptr %708, i64 1, i32 1
  %737 = load i64, ptr %671, align 8
  store i64 %737, ptr %736, align 8
  %738 = load i32, ptr %81, align 8
  store i32 %738, ptr %735, align 8
  br label %782

739:                                              ; preds = %707
  store ptr null, ptr @esfile, align 8, !tbaa !22
  br label %782

740:                                              ; preds = %707
  br i1 %697, label %741, label %744

741:                                              ; preds = %740
  %742 = getelementptr inbounds %struct.ref_s, ptr %708, i64 0, i32 1
  store ptr %698, ptr %742, align 8, !tbaa !5
  %743 = getelementptr inbounds %struct.tas_s, ptr %708, i64 0, i32 1
  store i16 %699, ptr %743, align 2, !tbaa !12
  br label %744

744:                                              ; preds = %741, %740
  %745 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !37
  %746 = icmp ult ptr %708, %745
  br i1 %746, label %748, label %747

747:                                              ; preds = %744
  store i32 -5, ptr %11, align 8, !tbaa !38
  store i32 1115, ptr %30, align 4, !tbaa !40
  br label %782

748:                                              ; preds = %744
  %749 = getelementptr inbounds %struct.ref_s, ptr %708, i64 1
  store ptr %749, ptr @esfile, align 8, !tbaa !22
  %750 = getelementptr inbounds %struct.ref_s, ptr %708, i64 1, i32 1
  %751 = load i64, ptr %671, align 8
  store i64 %751, ptr %750, align 8
  %752 = load i32, ptr %81, align 8
  store i32 %752, ptr %749, align 8
  br label %782

753:                                              ; preds = %707
  br i1 %697, label %754, label %757

754:                                              ; preds = %753
  %755 = getelementptr inbounds %struct.ref_s, ptr %708, i64 0, i32 1
  store ptr %698, ptr %755, align 8, !tbaa !5
  %756 = getelementptr inbounds %struct.tas_s, ptr %708, i64 0, i32 1
  store i16 %699, ptr %756, align 2, !tbaa !12
  br label %757

757:                                              ; preds = %754, %753
  %758 = load i64, ptr %671, align 8
  store i64 %758, ptr %38, align 8
  %759 = load i32, ptr %81, align 8
  store i32 %759, ptr %10, align 8
  %760 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !37
  %761 = icmp ult ptr %708, %760
  br i1 %761, label %763, label %762

762:                                              ; preds = %757
  store i32 -5, ptr %11, align 8, !tbaa !38
  store i32 1127, ptr %30, align 4, !tbaa !40
  br label %782

763:                                              ; preds = %757
  %764 = getelementptr inbounds %struct.ref_s, ptr %708, i64 1
  %765 = getelementptr inbounds %struct.ref_s, ptr %708, i64 1, i32 1
  store i64 %758, ptr %765, align 8
  store i32 %759, ptr %764, align 8
  store ptr %764, ptr @e_stack, align 8, !tbaa !23
  %766 = call i32 @scan_handle_refill(ptr noundef nonnull %10, ptr noundef nonnull %13, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @ztokenexec_continue) #8
  %767 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %768 = load ptr, ptr @e_stack, align 8, !tbaa !23
  switch i32 %766, label %776 [
    i32 0, label %769
    i32 5, label %771
  ]

769:                                              ; preds = %763
  %770 = getelementptr inbounds %struct.ref_s, ptr %768, i64 -1
  br label %707

771:                                              ; preds = %763
  store ptr null, ptr @esfile, align 8, !tbaa !22
  %772 = load i32, ptr %12, align 4, !tbaa !24
  %773 = add nsw i32 %772, -1
  store i32 %773, ptr %12, align 4, !tbaa !24
  %774 = icmp sgt i32 %772, 1
  %775 = select i1 %774, i32 9, i32 16
  br label %782

776:                                              ; preds = %763
  %777 = getelementptr inbounds %struct.ref_s, ptr %768, i64 -1
  br label %778

778:                                              ; preds = %707, %776
  %779 = phi i32 [ %766, %776 ], [ %709, %707 ]
  %780 = phi ptr [ %777, %776 ], [ %708, %707 ]
  %781 = phi ptr [ %767, %776 ], [ %710, %707 ]
  store i32 1150, ptr %30, align 4, !tbaa !40
  br label %782

782:                                              ; preds = %778, %771, %762, %748, %747, %739, %734, %733, %700, %688
  %783 = phi ptr [ %76, %700 ], [ %76, %778 ], [ %76, %762 ], [ %76, %747 ], [ %10, %748 ], [ %76, %739 ], [ %76, %733 ], [ %76, %734 ], [ %76, %688 ], [ %76, %771 ]
  %784 = phi i32 [ %701, %700 ], [ %779, %778 ], [ 3, %762 ], [ 1, %747 ], [ 1, %748 ], [ 2, %739 ], [ 0, %733 ], [ 0, %734 ], [ %77, %688 ], [ 5, %771 ]
  %785 = phi ptr [ %702, %700 ], [ %780, %778 ], [ %708, %762 ], [ %708, %747 ], [ %749, %748 ], [ %708, %739 ], [ %708, %733 ], [ %735, %734 ], [ %78, %688 ], [ %768, %771 ]
  %786 = phi i32 [ 6, %700 ], [ 8, %778 ], [ 6, %762 ], [ 6, %747 ], [ 23, %748 ], [ 3, %739 ], [ 6, %733 ], [ 4, %734 ], [ %689, %688 ], [ %775, %771 ]
  %787 = phi ptr [ %703, %700 ], [ %781, %778 ], [ %710, %762 ], [ %710, %747 ], [ %710, %748 ], [ %710, %739 ], [ %710, %733 ], [ %710, %734 ], [ %79, %688 ], [ %767, %771 ]
  %788 = phi i32 [ %80, %700 ], [ %80, %778 ], [ %80, %762 ], [ %80, %747 ], [ %80, %748 ], [ %80, %739 ], [ %80, %733 ], [ 0, %734 ], [ %80, %688 ], [ %80, %771 ]
  %789 = phi ptr [ %81, %700 ], [ %81, %778 ], [ %81, %762 ], [ %81, %747 ], [ %81, %748 ], [ %81, %739 ], [ %81, %733 ], [ %10, %734 ], [ %81, %688 ], [ %81, %771 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %13) #8
  switch i32 %786, label %1267 [
    i32 4, label %1079
    i32 23, label %481
    i32 3, label %547
    i32 9, label %554
    i32 16, label %1187
    i32 8, label %1209
    i32 6, label %1215
  ]

790:                                              ; preds = %75
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %15) #8
  store i32 0, ptr %32, align 4, !tbaa !51
  store i32 0, ptr %15, align 8, !tbaa !54
  store i32 1, ptr %33, align 8, !tbaa !55
  %791 = getelementptr inbounds %struct.ref_s, ptr %81, i64 0, i32 1
  %792 = load ptr, ptr %791, align 8, !tbaa !5
  %793 = getelementptr inbounds %struct.tas_s, ptr %81, i64 0, i32 1
  %794 = load i16, ptr %793, align 2, !tbaa !12
  %795 = zext i16 %794 to i32
  call void @sread_string(ptr noundef nonnull %14, ptr noundef %792, i32 noundef %795) #8
  store ptr %79, ptr @o_stack, align 8, !tbaa !23
  %796 = call i32 @scan_token(ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %15) #8
  %797 = load ptr, ptr @o_stack, align 8, !tbaa !23
  switch i32 %796, label %828 [
    i32 0, label %798
    i32 1, label %798
    i32 2, label %830
    i32 3, label %827
  ]

798:                                              ; preds = %790, %790
  %799 = icmp sgt i32 %80, 0
  br i1 %799, label %800, label %805

800:                                              ; preds = %798
  %801 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  %802 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %801, ptr %802, align 8, !tbaa !5
  %803 = trunc i32 %80 to i16
  %804 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %803, ptr %804, align 2, !tbaa !12
  br label %805

805:                                              ; preds = %800, %798
  %806 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !37
  %807 = icmp ult ptr %78, %806
  br i1 %807, label %809, label %808

808:                                              ; preds = %805
  store i32 -5, ptr %11, align 8, !tbaa !38
  store i32 1169, ptr %30, align 4, !tbaa !40
  br label %830

809:                                              ; preds = %805
  %810 = getelementptr inbounds %struct.ref_s, ptr %78, i64 1
  %811 = load i16, ptr %81, align 8, !tbaa !8
  store i16 %811, ptr %810, align 8, !tbaa !8
  %812 = load ptr, ptr %34, align 8, !tbaa !5
  %813 = getelementptr inbounds i8, ptr %812, i64 1
  %814 = getelementptr inbounds %struct.ref_s, ptr %78, i64 1, i32 1
  store ptr %813, ptr %814, align 8, !tbaa !5
  %815 = load ptr, ptr %35, align 8, !tbaa !5
  %816 = load ptr, ptr %34, align 8, !tbaa !5
  %817 = ptrtoint ptr %815 to i64
  %818 = ptrtoint ptr %816 to i64
  %819 = sub i64 %817, %818
  %820 = trunc i64 %819 to i16
  %821 = getelementptr inbounds %struct.ref_s, ptr %78, i64 1, i32 0, i32 1
  store i16 %820, ptr %821, align 2, !tbaa !12
  %822 = icmp eq i32 %796, 0
  %823 = select i1 %822, ptr %76, ptr %10
  %824 = select i1 %822, i32 4, i32 23
  %825 = select i1 %822, i32 0, i32 %80
  %826 = select i1 %822, ptr %10, ptr %81
  br label %830

827:                                              ; preds = %790
  br label %828

828:                                              ; preds = %827, %790
  %829 = phi i32 [ %796, %790 ], [ -18, %827 ]
  store i32 1187, ptr %30, align 4, !tbaa !40
  br label %830

830:                                              ; preds = %828, %809, %808, %790
  %831 = phi ptr [ %76, %828 ], [ %76, %808 ], [ %823, %809 ], [ %76, %790 ]
  %832 = phi i32 [ %829, %828 ], [ %796, %808 ], [ %796, %809 ], [ %796, %790 ]
  %833 = phi ptr [ %78, %828 ], [ %78, %808 ], [ %810, %809 ], [ %78, %790 ]
  %834 = phi i32 [ 8, %828 ], [ 6, %808 ], [ %824, %809 ], [ 3, %790 ]
  %835 = phi i32 [ %80, %828 ], [ %80, %808 ], [ %825, %809 ], [ %80, %790 ]
  %836 = phi ptr [ %81, %828 ], [ %81, %808 ], [ %826, %809 ], [ %81, %790 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %14) #8
  switch i32 %834, label %1267 [
    i32 4, label %1079
    i32 23, label %481
    i32 3, label %547
    i32 8, label %1209
    i32 6, label %1215
  ]

837:                                              ; preds = %75
  %838 = lshr i32 %83, 13
  switch i32 %838, label %1071 [
    i32 0, label %839
    i32 1, label %839
    i32 2, label %854
    i32 3, label %951
    i32 6, label %970
    i32 7, label %996
  ]

839:                                              ; preds = %837, %837
  %840 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %841 = icmp ult ptr %79, %840
  br i1 %841, label %843, label %842

842:                                              ; preds = %839
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  store i32 -16, ptr %11, align 8, !tbaa !38
  store i32 1199, ptr %30, align 4, !tbaa !40
  br label %1071

843:                                              ; preds = %839
  %844 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1
  %845 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1, i32 1
  %846 = getelementptr inbounds %struct.ref_s, ptr %81, i64 0, i32 1
  %847 = load i64, ptr %846, align 8
  store i64 %847, ptr %845, align 8
  %848 = load i32, ptr %81, align 8
  store i32 %848, ptr %844, align 8
  %849 = add nsw i32 %80, -1
  %850 = icmp sgt i32 %80, 1
  %851 = select i1 %850, i32 4, i32 26
  %852 = zext i1 %850 to i64
  %853 = getelementptr inbounds %struct.ref_s, ptr %81, i64 %852
  br label %1071

854:                                              ; preds = %837
  %855 = and i32 %83, 4095
  %856 = load i32, ptr %12, align 4, !tbaa !24
  %857 = add nsw i32 %856, -1
  store i32 %857, ptr %12, align 4, !tbaa !24
  %858 = load i32, ptr @op_def_count, align 4, !tbaa !24
  %859 = icmp ult i32 %855, %858
  br i1 %859, label %881, label %860

860:                                              ; preds = %854
  %861 = icmp sgt i32 %80, 0
  br i1 %861, label %862, label %867

862:                                              ; preds = %860
  %863 = getelementptr inbounds i16, ptr %81, i64 1
  %864 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %863, ptr %864, align 8, !tbaa !5
  %865 = trunc i32 %80 to i16
  %866 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %865, ptr %866, align 2, !tbaa !12
  br label %867

867:                                              ; preds = %862, %860
  %868 = sub i32 %855, %858
  %869 = load i16, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 0, i32 0, i32 1), align 2, !tbaa !56
  %870 = zext i16 %869 to i32
  %871 = icmp ult i32 %868, %870
  br i1 %871, label %872, label %876

872:                                              ; preds = %867
  %873 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 0, i32 1), align 8, !tbaa !5
  %874 = zext nneg i32 %868 to i64
  %875 = getelementptr inbounds %struct.ref_s, ptr %873, i64 %874
  br label %1071

876:                                              ; preds = %867
  %877 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 0, i32 1), align 8, !tbaa !5
  %878 = sub i32 %868, %870
  %879 = zext i32 %878 to i64
  %880 = getelementptr inbounds %struct.ref_s, ptr %877, i64 %879
  br label %1071

881:                                              ; preds = %854
  switch i32 %855, label %891 [
    i32 1, label %1071
    i32 2, label %882
    i32 3, label %883
    i32 4, label %884
    i32 5, label %885
    i32 6, label %886
    i32 7, label %887
    i32 8, label %888
    i32 9, label %889
    i32 10, label %890
  ]

882:                                              ; preds = %881
  br label %1071

883:                                              ; preds = %881
  br label %1071

884:                                              ; preds = %881
  br label %1071

885:                                              ; preds = %881
  br label %1071

886:                                              ; preds = %881
  br label %1071

887:                                              ; preds = %881
  br label %1071

888:                                              ; preds = %881
  br label %1071

889:                                              ; preds = %881
  br label %1071

890:                                              ; preds = %881
  br label %1071

891:                                              ; preds = %881
  store ptr %78, ptr @e_stack, align 8, !tbaa !23
  store ptr %79, ptr @o_stack, align 8, !tbaa !23
  %892 = load ptr, ptr @op_def_table, align 8, !tbaa !22
  %893 = zext nneg i32 %855 to i64
  %894 = getelementptr inbounds ptr, ptr %892, i64 %893
  %895 = load ptr, ptr %894, align 8, !tbaa !22
  %896 = getelementptr inbounds %struct.op_def, ptr %895, i64 0, i32 1
  %897 = load ptr, ptr %896, align 8, !tbaa !58
  %898 = call i32 %897(ptr noundef %79) #8
  switch i32 %898, label %948 [
    i32 0, label %899
    i32 1, label %899
    i32 5, label %910
    i32 14, label %917
    i32 22, label %931
    i32 -103, label %938
  ]

899:                                              ; preds = %891, %891
  %900 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %901 = add nsw i32 %80, -1
  %902 = icmp slt i32 %80, 2
  br i1 %902, label %903, label %907

903:                                              ; preds = %899
  %904 = icmp eq i32 %80, 1
  br i1 %904, label %905, label %1071

905:                                              ; preds = %903
  %906 = getelementptr inbounds %struct.ref_s, ptr %78, i64 -1
  br label %907

907:                                              ; preds = %905, %899
  %908 = phi ptr [ %906, %905 ], [ %78, %899 ]
  %909 = getelementptr inbounds i16, ptr %81, i64 1
  br label %1071

910:                                              ; preds = %891
  %911 = icmp sgt i32 %80, 0
  br i1 %911, label %912, label %1071

912:                                              ; preds = %910
  %913 = getelementptr inbounds i16, ptr %81, i64 1
  %914 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %913, ptr %914, align 8, !tbaa !5
  %915 = trunc i32 %80 to i16
  %916 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %915, ptr %916, align 2, !tbaa !12
  br label %1071

917:                                              ; preds = %891
  %918 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %919 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %920 = icmp eq ptr %919, %78
  br i1 %920, label %921, label %1071

921:                                              ; preds = %917
  %922 = add nsw i32 %80, -1
  %923 = icmp slt i32 %80, 2
  br i1 %923, label %924, label %928

924:                                              ; preds = %921
  %925 = icmp eq i32 %80, 1
  br i1 %925, label %926, label %1071

926:                                              ; preds = %924
  %927 = getelementptr inbounds %struct.ref_s, ptr %78, i64 -1
  br label %928

928:                                              ; preds = %926, %921
  %929 = phi ptr [ %927, %926 ], [ %78, %921 ]
  %930 = getelementptr inbounds i16, ptr %81, i64 1
  br label %1071

931:                                              ; preds = %891
  %932 = icmp sgt i32 %80, 0
  br i1 %932, label %933, label %1071

933:                                              ; preds = %931
  %934 = getelementptr inbounds i16, ptr %81, i64 1
  %935 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %934, ptr %935, align 8, !tbaa !5
  %936 = trunc i32 %80 to i16
  %937 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %936, ptr %937, align 2, !tbaa !12
  br label %1071

938:                                              ; preds = %891
  %939 = icmp sgt i32 %80, 0
  br i1 %939, label %940, label %945

940:                                              ; preds = %938
  %941 = getelementptr inbounds i16, ptr %81, i64 1
  %942 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %941, ptr %942, align 8, !tbaa !5
  %943 = trunc i32 %80 to i16
  %944 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %943, ptr %944, align 2, !tbaa !12
  br label %945

945:                                              ; preds = %940, %938
  %946 = getelementptr inbounds %struct.ref_s, ptr %78, i64 1
  call void @packed_get(ptr noundef nonnull %81, ptr noundef nonnull %946) #8
  %947 = load ptr, ptr @e_stack, align 8, !tbaa !23
  br label %1071

948:                                              ; preds = %891
  %949 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %950 = load ptr, ptr @e_stack, align 8, !tbaa !23
  store i32 1280, ptr %30, align 4, !tbaa !40
  br label %1071

951:                                              ; preds = %837
  %952 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %953 = icmp ult ptr %79, %952
  br i1 %953, label %955, label %954

954:                                              ; preds = %951
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  store i32 -16, ptr %11, align 8, !tbaa !38
  store i32 1283, ptr %30, align 4, !tbaa !40
  br label %1071

955:                                              ; preds = %951
  %956 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1
  %957 = and i16 %82, 4095
  %958 = zext nneg i16 %957 to i64
  %959 = add nsw i64 %958, -2048
  %960 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1, i32 1
  store i64 %959, ptr %960, align 8, !tbaa !5
  store i16 2816, ptr %956, align 8, !tbaa !8
  %961 = add nsw i32 %80, -1
  %962 = icmp slt i32 %80, 2
  br i1 %962, label %963, label %967

963:                                              ; preds = %955
  %964 = icmp eq i32 %80, 1
  br i1 %964, label %965, label %1071

965:                                              ; preds = %963
  %966 = getelementptr inbounds %struct.ref_s, ptr %78, i64 -1
  br label %967

967:                                              ; preds = %965, %955
  %968 = phi ptr [ %966, %965 ], [ %78, %955 ]
  %969 = getelementptr inbounds i16, ptr %81, i64 1
  br label %1071

970:                                              ; preds = %837
  %971 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %972 = icmp ult ptr %79, %971
  br i1 %972, label %974, label %973

973:                                              ; preds = %970
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  store i32 -16, ptr %11, align 8, !tbaa !38
  store i32 1292, ptr %30, align 4, !tbaa !40
  br label %1071

974:                                              ; preds = %970
  %975 = and i32 %83, 4095
  %976 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1
  %977 = lshr i32 %975, 7
  %978 = zext nneg i32 %977 to i64
  %979 = getelementptr inbounds %struct.name_table_s, ptr %58, i64 0, i32 6, i64 %978
  %980 = load ptr, ptr %979, align 8, !tbaa !22
  %981 = and i32 %83, 127
  %982 = zext nneg i32 %981 to i64
  %983 = getelementptr inbounds %struct.name_s, ptr %980, i64 %982
  %984 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1, i32 1
  store ptr %983, ptr %984, align 8, !tbaa !5
  store i16 3332, ptr %976, align 8, !tbaa !8
  %985 = trunc i32 %975 to i16
  %986 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1, i32 0, i32 1
  store i16 %985, ptr %986, align 2, !tbaa !12
  %987 = add nsw i32 %80, -1
  %988 = icmp slt i32 %80, 2
  br i1 %988, label %989, label %993

989:                                              ; preds = %974
  %990 = icmp eq i32 %80, 1
  br i1 %990, label %991, label %1071

991:                                              ; preds = %989
  %992 = getelementptr inbounds %struct.ref_s, ptr %78, i64 -1
  br label %993

993:                                              ; preds = %991, %974
  %994 = phi ptr [ %992, %991 ], [ %78, %974 ]
  %995 = getelementptr inbounds i16, ptr %81, i64 1
  br label %1071

996:                                              ; preds = %837
  %997 = and i32 %83, 4095
  %998 = lshr i32 %997, 7
  %999 = zext nneg i32 %998 to i64
  %1000 = getelementptr inbounds %struct.name_table_s, ptr %58, i64 0, i32 6, i64 %999
  %1001 = load ptr, ptr %1000, align 8, !tbaa !22
  %1002 = and i32 %83, 127
  %1003 = zext nneg i32 %1002 to i64
  %1004 = getelementptr inbounds %struct.name_s, ptr %1001, i64 %1003, i32 3
  %1005 = load ptr, ptr %1004, align 8, !tbaa !44
  %1006 = icmp ugt ptr %1005, inttoptr (i64 1 to ptr)
  br i1 %1006, label %1030, label %1007

1007:                                             ; preds = %996
  %1008 = load ptr, ptr @dtop_keys, align 8, !tbaa !22
  %1009 = load i32, ptr @dtop_npairs, align 4, !tbaa !24
  %1010 = add i32 %1009, 4095
  %1011 = and i32 %1010, %997
  %1012 = add nuw nsw i32 %1011, 1
  %1013 = zext nneg i32 %1012 to i64
  %1014 = getelementptr inbounds i16, ptr %1008, i64 %1013
  %1015 = load i16, ptr %1014, align 2, !tbaa !41
  %1016 = zext i16 %1015 to i32
  %1017 = or disjoint i32 %997, 49152
  %1018 = icmp eq i32 %1017, %1016
  br i1 %1018, label %1019, label %1022

1019:                                             ; preds = %1007
  %1020 = load ptr, ptr @dtop_values, align 8, !tbaa !22
  %1021 = getelementptr inbounds %struct.ref_s, ptr %1020, i64 %1013
  br label %1024

1022:                                             ; preds = %1007
  %1023 = call ptr @dict_find_name_by_index(i32 noundef %997) #8
  br label %1024

1024:                                             ; preds = %1022, %1019
  %1025 = phi ptr [ %1021, %1019 ], [ %1023, %1022 ]
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1027, label %1028

1027:                                             ; preds = %1024
  call void @name_index_ref(i32 noundef %997, ptr noundef nonnull %10) #8
  store i32 -21, ptr %11, align 8, !tbaa !38
  store i32 1305, ptr %30, align 4, !tbaa !40
  store ptr %10, ptr %31, align 8, !tbaa !60
  br label %1028

1028:                                             ; preds = %1027, %1024
  %1029 = phi i32 [ 2, %1027 ], [ 0, %1024 ]
  br i1 %1026, label %1071, label %1030

1030:                                             ; preds = %1028, %996
  %1031 = phi ptr [ %1005, %996 ], [ %1025, %1028 ]
  %1032 = load i16, ptr %1031, align 8, !tbaa !8
  %1033 = zext i16 %1032 to i32
  %1034 = and i32 %1033, 192
  %1035 = icmp eq i32 %1034, 64
  br i1 %1035, label %1036, label %1055

1036:                                             ; preds = %1030
  %1037 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %1038 = icmp ult ptr %79, %1037
  br i1 %1038, label %1040, label %1039

1039:                                             ; preds = %1036
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  store i32 -16, ptr %11, align 8, !tbaa !38
  store i32 1311, ptr %30, align 4, !tbaa !40
  br label %1071

1040:                                             ; preds = %1036
  %1041 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1
  %1042 = getelementptr inbounds %struct.ref_s, ptr %79, i64 1, i32 1
  %1043 = getelementptr inbounds %struct.ref_s, ptr %1031, i64 0, i32 1
  %1044 = load i64, ptr %1043, align 8
  store i64 %1044, ptr %1042, align 8
  %1045 = load i32, ptr %1031, align 8
  store i32 %1045, ptr %1041, align 8
  %1046 = add nsw i32 %80, -1
  %1047 = icmp slt i32 %80, 2
  br i1 %1047, label %1048, label %1052

1048:                                             ; preds = %1040
  %1049 = icmp eq i32 %80, 1
  br i1 %1049, label %1050, label %1071

1050:                                             ; preds = %1048
  %1051 = getelementptr inbounds %struct.ref_s, ptr %78, i64 -1
  br label %1052

1052:                                             ; preds = %1050, %1040
  %1053 = phi ptr [ %1051, %1050 ], [ %78, %1040 ]
  %1054 = getelementptr inbounds i16, ptr %81, i64 1
  br label %1071

1055:                                             ; preds = %1030
  %1056 = and i32 %1033, 15552
  %1057 = icmp eq i32 %1056, 1216
  %1058 = icmp sgt i32 %80, 0
  br i1 %1057, label %1059, label %1065

1059:                                             ; preds = %1055
  br i1 %1058, label %1060, label %1071

1060:                                             ; preds = %1059
  %1061 = getelementptr inbounds i16, ptr %81, i64 1
  %1062 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %1061, ptr %1062, align 8, !tbaa !5
  %1063 = trunc i32 %80 to i16
  %1064 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %1063, ptr %1064, align 2, !tbaa !12
  br label %1071

1065:                                             ; preds = %1055
  br i1 %1058, label %1066, label %1071

1066:                                             ; preds = %1065
  %1067 = getelementptr inbounds i16, ptr %81, i64 1
  %1068 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %1067, ptr %1068, align 8, !tbaa !5
  %1069 = trunc i32 %80 to i16
  %1070 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %1069, ptr %1070, align 2, !tbaa !12
  br label %1071

1071:                                             ; preds = %1066, %1065, %1060, %1059, %1052, %1048, %1039, %1028, %993, %989, %973, %967, %963, %954, %948, %945, %933, %931, %928, %924, %917, %912, %910, %907, %903, %890, %889, %888, %887, %886, %885, %884, %883, %882, %881, %876, %872, %843, %842, %837
  %1072 = phi ptr [ %76, %954 ], [ %76, %967 ], [ %76, %948 ], [ %76, %945 ], [ %76, %928 ], [ %76, %907 ], [ %76, %890 ], [ %76, %889 ], [ %76, %888 ], [ %76, %887 ], [ %76, %886 ], [ %76, %885 ], [ %76, %884 ], [ %76, %883 ], [ %76, %882 ], [ %76, %842 ], [ %875, %872 ], [ %880, %876 ], [ %76, %881 ], [ %76, %903 ], [ %76, %910 ], [ %76, %912 ], [ %76, %924 ], [ %76, %917 ], [ %76, %931 ], [ %76, %933 ], [ %76, %963 ], [ %76, %989 ], [ %76, %973 ], [ %76, %993 ], [ %1031, %1039 ], [ %1031, %1052 ], [ %1025, %1028 ], [ %1031, %1048 ], [ %1031, %1059 ], [ %1031, %1060 ], [ %1031, %1065 ], [ %1031, %1066 ], [ %76, %837 ], [ %76, %843 ]
  %1073 = phi i32 [ %77, %954 ], [ %77, %967 ], [ %898, %948 ], [ -103, %945 ], [ 14, %928 ], [ %898, %907 ], [ %77, %890 ], [ %77, %889 ], [ %77, %888 ], [ %77, %887 ], [ %77, %886 ], [ %77, %885 ], [ %77, %884 ], [ %77, %883 ], [ %77, %882 ], [ %77, %842 ], [ %77, %872 ], [ %77, %876 ], [ %77, %881 ], [ %898, %903 ], [ 5, %910 ], [ 5, %912 ], [ 14, %924 ], [ 14, %917 ], [ 22, %931 ], [ 22, %933 ], [ %77, %963 ], [ %77, %989 ], [ %77, %973 ], [ %77, %993 ], [ %77, %1039 ], [ %77, %1052 ], [ %77, %1028 ], [ %77, %1048 ], [ %77, %1059 ], [ %77, %1060 ], [ %77, %1065 ], [ %77, %1066 ], [ %77, %837 ], [ %77, %843 ]
  %1074 = phi ptr [ %78, %954 ], [ %968, %967 ], [ %950, %948 ], [ %947, %945 ], [ %929, %928 ], [ %908, %907 ], [ %78, %890 ], [ %78, %889 ], [ %78, %888 ], [ %78, %887 ], [ %78, %886 ], [ %78, %885 ], [ %78, %884 ], [ %78, %883 ], [ %78, %882 ], [ %78, %842 ], [ %78, %872 ], [ %78, %876 ], [ %78, %881 ], [ %78, %903 ], [ %78, %910 ], [ %78, %912 ], [ %78, %924 ], [ %919, %917 ], [ %78, %931 ], [ %78, %933 ], [ %78, %963 ], [ %78, %989 ], [ %78, %973 ], [ %994, %993 ], [ %78, %1039 ], [ %1053, %1052 ], [ %78, %1028 ], [ %78, %1048 ], [ %78, %1059 ], [ %78, %1060 ], [ %78, %1065 ], [ %78, %1066 ], [ %78, %837 ], [ %78, %843 ]
  %1075 = phi i32 [ 6, %954 ], [ 4, %967 ], [ 8, %948 ], [ 9, %945 ], [ 4, %928 ], [ 4, %907 ], [ 20, %890 ], [ 19, %889 ], [ 18, %888 ], [ 17, %887 ], [ 15, %886 ], [ 13, %885 ], [ 12, %884 ], [ 11, %883 ], [ 10, %882 ], [ 6, %842 ], [ 22, %872 ], [ 22, %876 ], [ 7, %881 ], [ 9, %903 ], [ 27, %910 ], [ 27, %912 ], [ 9, %924 ], [ 9, %917 ], [ 29, %931 ], [ 29, %933 ], [ 9, %963 ], [ 9, %989 ], [ 6, %973 ], [ 4, %993 ], [ 6, %1039 ], [ 4, %1052 ], [ %1029, %1028 ], [ 9, %1048 ], [ 23, %1059 ], [ 23, %1060 ], [ 4, %1065 ], [ 4, %1066 ], [ 0, %837 ], [ %851, %843 ]
  %1076 = phi ptr [ %79, %954 ], [ %956, %967 ], [ %949, %948 ], [ %79, %945 ], [ %918, %928 ], [ %900, %907 ], [ %79, %890 ], [ %79, %889 ], [ %79, %888 ], [ %79, %887 ], [ %79, %886 ], [ %79, %885 ], [ %79, %884 ], [ %79, %883 ], [ %79, %882 ], [ %79, %842 ], [ %79, %872 ], [ %79, %876 ], [ %79, %881 ], [ %900, %903 ], [ %79, %910 ], [ %79, %912 ], [ %918, %924 ], [ %918, %917 ], [ %79, %931 ], [ %79, %933 ], [ %956, %963 ], [ %976, %989 ], [ %79, %973 ], [ %976, %993 ], [ %79, %1039 ], [ %1041, %1052 ], [ %79, %1028 ], [ %1041, %1048 ], [ %79, %1059 ], [ %79, %1060 ], [ %79, %1065 ], [ %79, %1066 ], [ %79, %837 ], [ %844, %843 ]
  %1077 = phi i32 [ %80, %954 ], [ %961, %967 ], [ %80, %948 ], [ %80, %945 ], [ %922, %928 ], [ %901, %907 ], [ %80, %890 ], [ %80, %889 ], [ %80, %888 ], [ %80, %887 ], [ %80, %886 ], [ %80, %885 ], [ %80, %884 ], [ %80, %883 ], [ %80, %882 ], [ %80, %842 ], [ %80, %872 ], [ %80, %876 ], [ %80, %881 ], [ %901, %903 ], [ %80, %910 ], [ %80, %912 ], [ %922, %924 ], [ %80, %917 ], [ %80, %931 ], [ %80, %933 ], [ %961, %963 ], [ %987, %989 ], [ %80, %973 ], [ %987, %993 ], [ %80, %1039 ], [ %1046, %1052 ], [ %80, %1028 ], [ %1046, %1048 ], [ %80, %1059 ], [ %80, %1060 ], [ 0, %1065 ], [ 0, %1066 ], [ %80, %837 ], [ %849, %843 ]
  %1078 = phi ptr [ %81, %954 ], [ %969, %967 ], [ %81, %948 ], [ %81, %945 ], [ %930, %928 ], [ %909, %907 ], [ %81, %890 ], [ %81, %889 ], [ %81, %888 ], [ %81, %887 ], [ %81, %886 ], [ %81, %885 ], [ %81, %884 ], [ %81, %883 ], [ %81, %882 ], [ %81, %842 ], [ %81, %872 ], [ %81, %876 ], [ %81, %881 ], [ %81, %903 ], [ %81, %910 ], [ %81, %912 ], [ %81, %924 ], [ %81, %917 ], [ %81, %931 ], [ %81, %933 ], [ %81, %963 ], [ %81, %989 ], [ %81, %973 ], [ %995, %993 ], [ %81, %1039 ], [ %1054, %1052 ], [ %81, %1028 ], [ %81, %1048 ], [ %81, %1059 ], [ %81, %1060 ], [ %1031, %1065 ], [ %1031, %1066 ], [ %81, %837 ], [ %853, %843 ]
  switch i32 %1075, label %1267 [
    i32 0, label %1086
    i32 4, label %1079
    i32 22, label %435
    i32 7, label %87
    i32 10, label %110
    i32 11, label %133
    i32 12, label %166
    i32 13, label %199
    i32 15, label %255
    i32 17, label %332
    i32 18, label %354
    i32 19, label %379
    i32 20, label %402
    i32 27, label %534
    i32 23, label %481
    i32 26, label %1129
    i32 9, label %554
    i32 29, label %1170
    i32 8, label %1209
    i32 6, label %1215
    i32 2, label %1221
  ]

1079:                                             ; preds = %1071, %830, %782, %665, %663, %652, %638, %524, %505, %494, %418, %395, %372, %347, %323, %317, %231, %192, %159, %126, %103
  %1080 = phi ptr [ %482, %494 ], [ %482, %505 ], [ %403, %418 ], [ %380, %395 ], [ %355, %372 ], [ %333, %347 ], [ %306, %317 ], [ %306, %323 ], [ %200, %231 ], [ %167, %192 ], [ %134, %159 ], [ %111, %126 ], [ %88, %103 ], [ %1072, %1071 ], [ %831, %830 ], [ %783, %782 ], [ %621, %652 ], [ %621, %638 ], [ %76, %524 ], [ %621, %663 ], [ %621, %665 ]
  %1081 = phi i32 [ %483, %494 ], [ %483, %505 ], [ %408, %418 ], [ %385, %395 ], [ %356, %372 ], [ %338, %347 ], [ %307, %317 ], [ %307, %323 ], [ %201, %231 ], [ %168, %192 ], [ %135, %159 ], [ %116, %126 ], [ %93, %103 ], [ %1073, %1071 ], [ %832, %830 ], [ %784, %782 ], [ %647, %652 ], [ %77, %638 ], [ %519, %524 ], [ %77, %663 ], [ %77, %665 ]
  %1082 = phi ptr [ %484, %494 ], [ %506, %505 ], [ %419, %418 ], [ %396, %395 ], [ %373, %372 ], [ %348, %347 ], [ %308, %317 ], [ %324, %323 ], [ %232, %231 ], [ %193, %192 ], [ %160, %159 ], [ %127, %126 ], [ %104, %103 ], [ %1074, %1071 ], [ %833, %830 ], [ %785, %782 ], [ %78, %652 ], [ %78, %638 ], [ %78, %524 ], [ %78, %663 ], [ %78, %665 ]
  %1083 = phi ptr [ %485, %494 ], [ %485, %505 ], [ %411, %418 ], [ %388, %395 ], [ %365, %372 ], [ %335, %347 ], [ %309, %317 ], [ %309, %323 ], [ %224, %231 ], [ %170, %192 ], [ %148, %159 ], [ %119, %126 ], [ %96, %103 ], [ %1076, %1071 ], [ %797, %830 ], [ %787, %782 ], [ %649, %652 ], [ %631, %638 ], [ %521, %524 ], [ %79, %663 ], [ %79, %665 ]
  %1084 = phi i32 [ 0, %494 ], [ %490, %505 ], [ %412, %418 ], [ %389, %395 ], [ %366, %372 ], [ %341, %347 ], [ 0, %317 ], [ %313, %323 ], [ %225, %231 ], [ %186, %192 ], [ %153, %159 ], [ %120, %126 ], [ %97, %103 ], [ %1077, %1071 ], [ %835, %830 ], [ %788, %782 ], [ %650, %652 ], [ %636, %638 ], [ %522, %524 ], [ 0, %663 ], [ 0, %665 ]
  %1085 = phi ptr [ %496, %494 ], [ %509, %505 ], [ %424, %418 ], [ %401, %395 ], [ %378, %372 ], [ %353, %347 ], [ %319, %317 ], [ %327, %323 ], [ %237, %231 ], [ %198, %192 ], [ %165, %159 ], [ %132, %126 ], [ %109, %103 ], [ %1078, %1071 ], [ %836, %830 ], [ %789, %782 ], [ %653, %652 ], [ %639, %638 ], [ %525, %524 ], [ %621, %663 ], [ %621, %665 ]
  br label %75

1086:                                             ; preds = %1071, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75
  %1087 = phi ptr [ %1072, %1071 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ], [ %76, %75 ]
  %1088 = phi i32 [ %1073, %1071 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ], [ %77, %75 ]
  %1089 = phi ptr [ %1074, %1071 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ]
  %1090 = phi ptr [ %1076, %1071 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ]
  %1091 = phi i32 [ %1077, %1071 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ], [ %80, %75 ]
  %1092 = phi ptr [ %1078, %1071 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ], [ %81, %75 ]
  %1093 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %1094 = icmp ult ptr %1090, %1093
  br i1 %1094, label %1096, label %1095

1095:                                             ; preds = %1086
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  store i32 -16, ptr %11, align 8, !tbaa !38
  store i32 1334, ptr %30, align 4, !tbaa !40
  br label %1215

1096:                                             ; preds = %1086
  %1097 = getelementptr inbounds %struct.ref_s, ptr %1090, i64 1
  br label %1098

1098:                                             ; preds = %73, %1096
  %1099 = phi ptr [ %1090, %1096 ], [ %57, %73 ]
  %1100 = phi ptr [ %1092, %1096 ], [ %55, %73 ]
  %1101 = phi ptr [ %1097, %1096 ], [ %74, %73 ]
  %1102 = phi ptr [ %1087, %1096 ], [ undef, %73 ]
  %1103 = phi i32 [ %1088, %1096 ], [ undef, %73 ]
  %1104 = phi ptr [ %1089, %1096 ], [ %74, %73 ]
  %1105 = phi ptr [ %1097, %1096 ], [ %56, %73 ]
  %1106 = phi i32 [ %1091, %1096 ], [ 0, %73 ]
  %1107 = getelementptr inbounds %struct.ref_s, ptr %1099, i64 1, i32 1
  %1108 = getelementptr inbounds %struct.ref_s, ptr %1100, i64 0, i32 1
  %1109 = load i64, ptr %1108, align 8
  store i64 %1109, ptr %1107, align 8
  %1110 = load i32, ptr %1100, align 8
  store i32 %1110, ptr %1101, align 8
  br label %1111

1111:                                             ; preds = %547, %1098
  %1112 = phi ptr [ %1102, %1098 ], [ %548, %547 ]
  %1113 = phi i32 [ %1103, %1098 ], [ %549, %547 ]
  %1114 = phi ptr [ %1104, %1098 ], [ %550, %547 ]
  %1115 = phi ptr [ %1105, %1098 ], [ %551, %547 ]
  %1116 = phi i32 [ %1106, %1098 ], [ %552, %547 ]
  %1117 = phi ptr [ %1100, %1098 ], [ %553, %547 ]
  %1118 = add nsw i32 %1116, -1
  %1119 = icmp sgt i32 %1116, 1
  br i1 %1119, label %1120, label %1129

1120:                                             ; preds = %1111
  %1121 = getelementptr inbounds %struct.ref_s, ptr %1117, i64 1
  br label %1122

1122:                                             ; preds = %1158, %1149, %1137, %1120
  %1123 = phi ptr [ %1112, %1120 ], [ %560, %1158 ], [ %560, %1149 ], [ %1130, %1137 ]
  %1124 = phi i32 [ %1113, %1120 ], [ %561, %1158 ], [ %561, %1149 ], [ %1131, %1137 ]
  %1125 = phi ptr [ %1114, %1120 ], [ %1159, %1158 ], [ %1150, %1149 ], [ %1138, %1137 ]
  %1126 = phi ptr [ %1115, %1120 ], [ %563, %1158 ], [ %563, %1149 ], [ %1133, %1137 ]
  %1127 = phi i32 [ %1118, %1120 ], [ %1163, %1158 ], [ 0, %1149 ], [ 0, %1137 ]
  %1128 = phi ptr [ %1121, %1120 ], [ %1161, %1158 ], [ %1142, %1149 ], [ %1139, %1137 ]
  br label %75

1129:                                             ; preds = %1071, %648, %630, %520, %1111
  %1130 = phi ptr [ %1112, %1111 ], [ %1072, %1071 ], [ %621, %648 ], [ %621, %630 ], [ %76, %520 ]
  %1131 = phi i32 [ %1113, %1111 ], [ %1073, %1071 ], [ %647, %648 ], [ %77, %630 ], [ %519, %520 ]
  %1132 = phi ptr [ %1114, %1111 ], [ %1074, %1071 ], [ %78, %648 ], [ %78, %630 ], [ %78, %520 ]
  %1133 = phi ptr [ %1115, %1111 ], [ %1076, %1071 ], [ %649, %648 ], [ %631, %630 ], [ %521, %520 ]
  %1134 = phi i32 [ %1118, %1111 ], [ %1077, %1071 ], [ %650, %648 ], [ %636, %630 ], [ %522, %520 ]
  %1135 = phi ptr [ %1117, %1111 ], [ %1078, %1071 ], [ %81, %648 ], [ %81, %630 ], [ %81, %520 ]
  %1136 = icmp eq i32 %1134, 0
  br i1 %1136, label %1137, label %559

1137:                                             ; preds = %1129
  %1138 = getelementptr inbounds %struct.ref_s, ptr %1132, i64 -1
  %1139 = getelementptr inbounds %struct.ref_s, ptr %1135, i64 1
  br label %1122

1140:                                             ; preds = %1155, %559
  %1141 = phi i32 [ %1143, %1155 ], [ %564, %559 ]
  %1142 = phi ptr [ %1156, %1155 ], [ %562, %559 ]
  %1143 = add nsw i32 %1141, -1
  %1144 = icmp slt i32 %1141, 1
  br i1 %1144, label %1186, label %1145

1145:                                             ; preds = %1140
  %1146 = load i16, ptr %1142, align 8, !tbaa !8
  %1147 = and i16 %1146, 15552
  %1148 = icmp eq i16 %1147, 1216
  br i1 %1148, label %1151, label %1149

1149:                                             ; preds = %1145
  store i32 %1143, ptr %12, align 4, !tbaa !24
  %1150 = getelementptr inbounds %struct.ref_s, ptr %1142, i64 -1
  br label %1122

1151:                                             ; preds = %1145
  %1152 = getelementptr inbounds %struct.tas_s, ptr %1142, i64 0, i32 1
  %1153 = load i16, ptr %1152, align 2, !tbaa !12
  %1154 = icmp ult i16 %1153, 2
  br i1 %1154, label %1155, label %1158

1155:                                             ; preds = %1151
  %1156 = getelementptr inbounds %struct.ref_s, ptr %1142, i64 -1
  %1157 = icmp eq i16 %1153, 0
  br i1 %1157, label %1140, label %1158

1158:                                             ; preds = %1155, %1151
  %1159 = phi ptr [ %1156, %1155 ], [ %1142, %1151 ]
  %1160 = getelementptr inbounds %struct.ref_s, ptr %1142, i64 0, i32 1
  %1161 = load ptr, ptr %1160, align 8, !tbaa !5
  store i32 %1143, ptr %12, align 4, !tbaa !24
  %1162 = zext i16 %1153 to i32
  %1163 = add nsw i32 %1162, -1
  br label %1122

1164:                                             ; preds = %656, %567
  %1165 = phi ptr [ %76, %567 ], [ %621, %656 ]
  %1166 = getelementptr inbounds %struct.ref_s, ptr %81, i64 1
  %1167 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  store ptr %1166, ptr %1167, align 8, !tbaa !5
  %1168 = trunc i32 %80 to i16
  %1169 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  store i16 %1168, ptr %1169, align 2, !tbaa !12
  br label %1170

1170:                                             ; preds = %1071, %1164, %656, %567
  %1171 = phi ptr [ %621, %656 ], [ %76, %567 ], [ %1165, %1164 ], [ %1072, %1071 ]
  %1172 = phi ptr [ %78, %656 ], [ %78, %567 ], [ %78, %1164 ], [ %1074, %1071 ]
  %1173 = phi ptr [ %79, %656 ], [ %79, %567 ], [ %79, %1164 ], [ %1076, %1071 ]
  %1174 = load ptr, ptr @gs_interp_reschedule_proc, align 8, !tbaa !22
  %1175 = call i32 %1174() #8
  br label %1176

1176:                                             ; preds = %1199, %1170
  %1177 = phi ptr [ %1171, %1170 ], [ %1188, %1199 ]
  %1178 = phi i32 [ %1175, %1170 ], [ %1200, %1199 ]
  %1179 = phi ptr [ %1172, %1170 ], [ %1189, %1199 ]
  %1180 = phi ptr [ %1173, %1170 ], [ %1190, %1199 ]
  %1181 = icmp slt i32 %1178, 0
  br i1 %1181, label %1182, label %1183

1182:                                             ; preds = %1176
  store i32 %1178, ptr %11, align 8, !tbaa !38
  store i32 1367, ptr %30, align 4, !tbaa !40
  store ptr null, ptr getelementptr inbounds (%struct.ref_s, ptr @null_proc, i64 0, i32 1), align 8, !tbaa !5
  store i16 1248, ptr @null_proc, align 8, !tbaa !8
  store i16 0, ptr getelementptr inbounds (%struct.ref_s, ptr @null_proc, i64 0, i32 0, i32 1), align 2, !tbaa !12
  store ptr @null_proc, ptr %31, align 8, !tbaa !60
  br label %1247

1183:                                             ; preds = %1176
  %1184 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %1185 = load ptr, ptr @e_stack, align 8, !tbaa !23
  br label %559

1186:                                             ; preds = %1140
  store i32 %566, ptr %12, align 4, !tbaa !24
  br label %1187

1187:                                             ; preds = %782, %505, %323, %1186, %534
  %1188 = phi ptr [ %535, %534 ], [ %560, %1186 ], [ %482, %505 ], [ %306, %323 ], [ %783, %782 ]
  %1189 = phi ptr [ %538, %534 ], [ %1142, %1186 ], [ %506, %505 ], [ %324, %323 ], [ %785, %782 ]
  %1190 = phi ptr [ %537, %534 ], [ %563, %1186 ], [ %485, %505 ], [ %309, %323 ], [ %787, %782 ]
  store ptr %1190, ptr @o_stack, align 8, !tbaa !23
  store ptr %1189, ptr @e_stack, align 8, !tbaa !23
  %1191 = load i32, ptr %12, align 4, !tbaa !24
  %1192 = icmp slt i32 %1191, -99
  br i1 %1192, label %1193, label %1196

1193:                                             ; preds = %1187
  %1194 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 4), align 8, !tbaa !29
  %1195 = call i32 %1194(ptr noundef nonnull @gs_imemory, i32 noundef -1) #8
  br label %1199

1196:                                             ; preds = %1187
  %1197 = load ptr, ptr @gs_interp_time_slice_proc, align 8, !tbaa !22
  %1198 = call i32 %1197() #8
  br label %1199

1199:                                             ; preds = %1196, %1193
  %1200 = phi i32 [ %1195, %1193 ], [ %1198, %1196 ]
  %1201 = load i32, ptr @gs_interp_time_slice_ticks, align 4, !tbaa !24
  store i32 %1201, ptr %12, align 4, !tbaa !24
  br label %1176

1202:                                             ; preds = %402, %379, %332, %110, %87, %585
  %1203 = phi i32 [ 977, %585 ], [ 886, %402 ], [ 881, %379 ], [ 871, %332 ], [ 807, %110 ], [ 802, %87 ]
  %1204 = phi i32 [ %519, %585 ], [ %408, %402 ], [ %385, %379 ], [ %338, %332 ], [ %116, %110 ], [ %93, %87 ]
  %1205 = phi ptr [ %587, %585 ], [ %404, %402 ], [ %381, %379 ], [ %334, %332 ], [ %112, %110 ], [ %89, %87 ]
  %1206 = phi ptr [ %586, %585 ], [ %405, %402 ], [ %382, %379 ], [ %335, %332 ], [ %113, %110 ], [ %90, %87 ]
  %1207 = phi i32 [ %80, %585 ], [ %406, %402 ], [ %383, %379 ], [ %336, %332 ], [ %114, %110 ], [ %91, %87 ]
  %1208 = phi ptr [ %81, %585 ], [ %407, %402 ], [ %384, %379 ], [ %337, %332 ], [ %115, %110 ], [ %92, %87 ]
  store i32 %1203, ptr %30, align 4, !tbaa !40
  br label %1209

1209:                                             ; preds = %1071, %830, %782, %1202
  %1210 = phi i32 [ %1204, %1202 ], [ %1073, %1071 ], [ %832, %830 ], [ %784, %782 ]
  %1211 = phi ptr [ %1205, %1202 ], [ %1074, %1071 ], [ %833, %830 ], [ %785, %782 ]
  %1212 = phi ptr [ %1206, %1202 ], [ %1076, %1071 ], [ %797, %830 ], [ %787, %782 ]
  %1213 = phi i32 [ %1207, %1202 ], [ %1077, %1071 ], [ %835, %830 ], [ %788, %782 ]
  %1214 = phi ptr [ %1208, %1202 ], [ %1078, %1071 ], [ %836, %830 ], [ %789, %782 ]
  store i32 %1210, ptr %11, align 8, !tbaa !38
  br label %1215

1215:                                             ; preds = %618, %782, %830, %1071, %85, %86, %142, %146, %175, %209, %217, %241, %265, %275, %281, %286, %363, %445, %504, %624, %625, %1095, %1209, %72, %629, %660
  %1216 = phi ptr [ %621, %660 ], [ %621, %629 ], [ %55, %72 ], [ %1214, %1209 ], [ %501, %504 ], [ %360, %363 ], [ %261, %286 ], [ %261, %281 ], [ %261, %275 ], [ %261, %265 ], [ %205, %241 ], [ %205, %217 ], [ %205, %209 ], [ %172, %175 ], [ %139, %142 ], [ %139, %146 ], [ %441, %445 ], [ %1092, %1095 ], [ %81, %625 ], [ %81, %624 ], [ %81, %86 ], [ %81, %85 ], [ %1078, %1071 ], [ %836, %830 ], [ %789, %782 ], [ %81, %618 ]
  %1217 = phi ptr [ %662, %660 ], [ %78, %629 ], [ %57, %72 ], [ %1211, %1209 ], [ %484, %504 ], [ %357, %363 ], [ %258, %286 ], [ %258, %281 ], [ %258, %275 ], [ %258, %265 ], [ %202, %241 ], [ %202, %217 ], [ %202, %209 ], [ %169, %175 ], [ %136, %142 ], [ %136, %146 ], [ %438, %445 ], [ %1089, %1095 ], [ %78, %625 ], [ %78, %624 ], [ %78, %86 ], [ %78, %85 ], [ %1074, %1071 ], [ %833, %830 ], [ %785, %782 ], [ %78, %618 ]
  %1218 = phi ptr [ %661, %660 ], [ %79, %629 ], [ %56, %72 ], [ %1212, %1209 ], [ %485, %504 ], [ %358, %363 ], [ %259, %286 ], [ %259, %281 ], [ %259, %275 ], [ %259, %265 ], [ %203, %241 ], [ %203, %217 ], [ %203, %209 ], [ %170, %175 ], [ %137, %142 ], [ %137, %146 ], [ %439, %445 ], [ %1090, %1095 ], [ %79, %625 ], [ %79, %624 ], [ %79, %86 ], [ %79, %85 ], [ %1076, %1071 ], [ %797, %830 ], [ %787, %782 ], [ %79, %618 ]
  %1219 = phi i32 [ %80, %660 ], [ %80, %629 ], [ 0, %72 ], [ %1213, %1209 ], [ %490, %504 ], [ %359, %363 ], [ %260, %286 ], [ %260, %281 ], [ %260, %275 ], [ %260, %265 ], [ %204, %241 ], [ %204, %217 ], [ %204, %209 ], [ %171, %175 ], [ %138, %142 ], [ %138, %146 ], [ %440, %445 ], [ %1091, %1095 ], [ %80, %625 ], [ %80, %624 ], [ %80, %86 ], [ %80, %85 ], [ %1077, %1071 ], [ %835, %830 ], [ %788, %782 ], [ %80, %618 ]
  %1220 = phi ptr [ %81, %660 ], [ %81, %629 ], [ %55, %72 ], [ %1214, %1209 ], [ %501, %504 ], [ %360, %363 ], [ %261, %286 ], [ %261, %281 ], [ %261, %275 ], [ %261, %265 ], [ %205, %241 ], [ %205, %217 ], [ %205, %209 ], [ %172, %175 ], [ %139, %142 ], [ %139, %146 ], [ %441, %445 ], [ %1092, %1095 ], [ %81, %625 ], [ %81, %624 ], [ %81, %86 ], [ %81, %85 ], [ %1078, %1071 ], [ %836, %830 ], [ %789, %782 ], [ %81, %618 ]
  store ptr %1216, ptr %31, align 8, !tbaa !60
  br label %1221

1221:                                             ; preds = %1071, %1215
  %1222 = phi ptr [ %1217, %1215 ], [ %1074, %1071 ]
  %1223 = phi ptr [ %1218, %1215 ], [ %1076, %1071 ]
  %1224 = phi i32 [ %1219, %1215 ], [ %1077, %1071 ]
  %1225 = phi ptr [ %1220, %1215 ], [ %1078, %1071 ]
  %1226 = load i16, ptr %1225, align 2, !tbaa !41
  %1227 = icmp ugt i16 %1226, 16383
  br i1 %1227, label %1235, label %1228

1228:                                             ; preds = %1221
  %1229 = icmp sgt i32 %1224, 0
  br i1 %1229, label %1230, label %1247

1230:                                             ; preds = %1228
  %1231 = getelementptr inbounds %struct.ref_s, ptr %1225, i64 1
  %1232 = getelementptr inbounds %struct.ref_s, ptr %1222, i64 0, i32 1
  store ptr %1231, ptr %1232, align 8, !tbaa !5
  %1233 = trunc i32 %1224 to i16
  %1234 = getelementptr inbounds %struct.tas_s, ptr %1222, i64 0, i32 1
  store i16 %1233, ptr %1234, align 2, !tbaa !12
  br label %1247

1235:                                             ; preds = %1221
  %1236 = load ptr, ptr %31, align 8, !tbaa !60
  call void @packed_get(ptr noundef %1236, ptr noundef nonnull %39) #8
  %1237 = icmp sgt i32 %1224, 0
  br i1 %1237, label %1238, label %1243

1238:                                             ; preds = %1235
  %1239 = getelementptr inbounds i16, ptr %1225, i64 1
  %1240 = getelementptr inbounds %struct.ref_s, ptr %1222, i64 0, i32 1
  store ptr %1239, ptr %1240, align 8, !tbaa !5
  %1241 = trunc i32 %1224 to i16
  %1242 = getelementptr inbounds %struct.tas_s, ptr %1222, i64 0, i32 1
  store i16 %1241, ptr %1242, align 2, !tbaa !12
  br label %1243

1243:                                             ; preds = %1238, %1235
  %1244 = load ptr, ptr %31, align 8, !tbaa !60
  %1245 = icmp eq ptr %1225, %1244
  %1246 = select i1 %1245, ptr %39, ptr %1225
  store ptr %39, ptr %31, align 8, !tbaa !60
  br label %1247

1247:                                             ; preds = %1243, %1230, %1228, %1182
  %1248 = phi ptr [ %1222, %1243 ], [ %1222, %1230 ], [ %1222, %1228 ], [ %1179, %1182 ]
  %1249 = phi ptr [ %1223, %1243 ], [ %1223, %1230 ], [ %1223, %1228 ], [ %1180, %1182 ]
  %1250 = phi ptr [ %1246, %1243 ], [ %1225, %1230 ], [ %1225, %1228 ], [ @null_proc, %1182 ]
  %1251 = load i32, ptr %11, align 8
  switch i32 %1251, label %1261 [
    i32 -6, label %1252
    i32 -19, label %1252
  ]

1252:                                             ; preds = %1247, %1247
  %1253 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !37
  %1254 = icmp ult ptr %1248, %1253
  br i1 %1254, label %1255, label %1261

1255:                                             ; preds = %1252
  %1256 = getelementptr inbounds %struct.ref_s, ptr %1248, i64 1
  %1257 = getelementptr inbounds %struct.ref_s, ptr %1248, i64 1, i32 1
  %1258 = getelementptr inbounds %struct.ref_s, ptr %1250, i64 0, i32 1
  %1259 = load i64, ptr %1258, align 8
  store i64 %1259, ptr %1257, align 8
  %1260 = load i32, ptr %1250, align 8
  store i32 %1260, ptr %1256, align 8
  br label %1261

1261:                                             ; preds = %1255, %1252, %1247
  %1262 = phi ptr [ %1256, %1255 ], [ %1248, %1247 ], [ %1248, %1252 ]
  store ptr %1262, ptr @e_stack, align 8, !tbaa !23
  store ptr %1249, ptr @o_stack, align 8, !tbaa !23
  %1263 = load ptr, ptr %31, align 8, !tbaa !60
  %1264 = getelementptr inbounds %struct.ref_s, ptr %1263, i64 0, i32 1
  %1265 = load i64, ptr %1264, align 8
  store i64 %1265, ptr %40, align 8
  %1266 = load i32, ptr %1263, align 8
  store i32 %1266, ptr %27, align 8
  br label %1267

1267:                                             ; preds = %1071, %830, %782, %618, %1261
  %1268 = phi i32 [ %1251, %1261 ], [ undef, %618 ], [ undef, %782 ], [ undef, %830 ], [ undef, %1071 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #8
  br label %1269

1269:                                             ; preds = %1275, %1267
  %1270 = phi i64 [ 0, %1267 ], [ %1276, %1275 ]
  %1271 = getelementptr inbounds [4 x ptr], ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1), i64 0, i64 %1270
  %1272 = load ptr, ptr %1271, align 8, !tbaa !5
  %1273 = icmp eq ptr %1272, null
  br i1 %1273, label %1275, label %1274

1274:                                             ; preds = %1269
  call void @gs_memory_gc_status(ptr noundef nonnull %1272, ptr noundef nonnull %8) #8
  store ptr %21, ptr %41, align 8, !tbaa !32
  store i32 1, ptr %42, align 8, !tbaa !35
  call void @gs_memory_set_gc_status(ptr noundef nonnull %1272, ptr noundef nonnull %8) #8
  br label %1275

1275:                                             ; preds = %1274, %1269
  %1276 = add nuw nsw i64 %1270, 1
  %1277 = icmp eq i64 %1276, 4
  br i1 %1277, label %1278, label %1269, !llvm.loop !36

1278:                                             ; preds = %1275
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #8
  %1279 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %1280 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !42
  %1281 = icmp ult ptr %1279, %1280
  br i1 %1281, label %1282, label %1283

1282:                                             ; preds = %1278
  store ptr %1280, ptr @e_stack, align 8, !tbaa !23
  br label %1283

1283:                                             ; preds = %1282, %1278
  switch i32 %1268, label %1306 [
    i32 -100, label %1284
    i32 -101, label %1285
    i32 -102, label %1417
    i32 -104, label %1296
    i32 -105, label %1298
    i32 -106, label %1416
  ]

1284:                                             ; preds = %1283
  store i32 255, ptr %2, align 4, !tbaa !24
  br label %1417

1285:                                             ; preds = %1283
  %1286 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %1287 = getelementptr inbounds %struct.ref_s, ptr %1286, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %1287, i64 16, i1 false), !tbaa.struct !61
  %1288 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %1289 = getelementptr inbounds %struct.ref_s, ptr %1288, i64 0, i32 1
  %1290 = load i64, ptr %1289, align 8, !tbaa !5
  %1291 = trunc i64 %1290 to i32
  store i32 %1291, ptr %2, align 4, !tbaa !24
  %1292 = getelementptr inbounds %struct.ref_s, ptr %1288, i64 -2
  store ptr %1292, ptr @o_stack, align 8, !tbaa !23
  %1293 = icmp eq i32 %1291, 0
  %1294 = call i32 @llvm.umax.i32(i32 %1291, i32 -100)
  %1295 = select i1 %1293, i32 -101, i32 %1294
  br label %1417

1296:                                             ; preds = %1283
  %1297 = call i32 @ref_stack_pop_block(ptr noundef nonnull @e_stack) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !61
  store ptr %17, ptr %16, align 8, !tbaa !22
  br label %1415

1298:                                             ; preds = %1283
  %1299 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 4), align 8, !tbaa !29
  %1300 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %1301 = getelementptr inbounds %struct.ref_s, ptr %1300, i64 0, i32 1
  %1302 = load i64, ptr %1301, align 8, !tbaa !5
  %1303 = icmp eq i64 %1302, 2
  %1304 = select i1 %1303, i32 8, i32 12
  %1305 = call i32 %1299(ptr noundef nonnull @gs_imemory, i32 noundef %1304) #8
  store ptr @zpop, ptr %43, align 8, !tbaa !5
  store i16 3968, ptr %17, align 8, !tbaa !8
  store i16 0, ptr %44, align 2, !tbaa !12
  store ptr %17, ptr %16, align 8, !tbaa !22
  br label %1415

1306:                                             ; preds = %1283
  %1307 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %1308 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !42
  %1309 = getelementptr inbounds %struct.ref_s, ptr %1308, i64 -1
  %1310 = icmp ult ptr %1307, %1309
  br i1 %1310, label %1311, label %1312

1311:                                             ; preds = %1306
  store ptr %1309, ptr @o_stack, align 8, !tbaa !23
  br label %1312

1312:                                             ; preds = %1311, %1306
  switch i32 %1268, label %1388 [
    i32 -3, label %1313
    i32 -4, label %1332
    i32 -5, label %1336
    i32 -16, label %1364
    i32 -17, label %1381
  ]

1313:                                             ; preds = %1312
  %1314 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 7), align 8, !tbaa !28
  %1315 = call i32 @ref_stack_extend(ptr noundef nonnull @d_stack, i32 noundef %1314) #8
  %1316 = icmp sgt i32 %1315, -1
  br i1 %1316, label %1317, label %1318

1317:                                             ; preds = %1313
  call void @dict_set_top() #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !61
  store ptr %17, ptr %16, align 8, !tbaa !22
  br label %1415

1318:                                             ; preds = %1313
  %1319 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %1320 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %1321 = icmp ult ptr %1319, %1320
  br i1 %1321, label %1325, label %1322

1322:                                             ; preds = %1318
  %1323 = call i32 @ref_stack_extend(ptr noundef nonnull @o_stack, i32 noundef 1) #8
  %1324 = icmp slt i32 %1323, 0
  br i1 %1324, label %1417, label %1325

1325:                                             ; preds = %1322, %1318
  %1326 = call fastcc i32 @copy_stack(ptr noundef nonnull @d_stack, ptr noundef nonnull %20)
  %1327 = icmp slt i32 %1326, 0
  br i1 %1327, label %1417, label %1328

1328:                                             ; preds = %1325
  %1329 = call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #8
  %1330 = load i32, ptr @min_dstack_size, align 4, !tbaa !24
  %1331 = sub i32 %1329, %1330
  call void @ref_stack_pop(ptr noundef nonnull @d_stack, i32 noundef %1331) #8
  call void @dict_set_top() #8
  br label %1385

1332:                                             ; preds = %1312
  %1333 = call i32 @ref_stack_pop_block(ptr noundef nonnull @d_stack) #8
  %1334 = icmp sgt i32 %1333, -1
  br i1 %1334, label %1335, label %1388

1335:                                             ; preds = %1332
  call void @dict_set_top() #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !61
  store ptr %17, ptr %16, align 8, !tbaa !22
  br label %1415

1336:                                             ; preds = %1312
  %1337 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %1338 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !37
  %1339 = icmp ult ptr %1337, %1338
  br i1 %1339, label %1343, label %1340

1340:                                             ; preds = %1336
  %1341 = call i32 @ref_stack_extend(ptr noundef nonnull @o_stack, i32 noundef 1) #8
  %1342 = icmp slt i32 %1341, 0
  br i1 %1342, label %1417, label %1343

1343:                                             ; preds = %1340, %1336
  %1344 = call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #8
  %1345 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !65
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 12) #8
  %1346 = load ptr, ptr @gs_imemory, align 8, !tbaa !66
  %1347 = call i32 @gs_alloc_ref_array(ptr noundef %1346, ptr noundef nonnull %20, i32 noundef 112, i32 noundef %1344, ptr noundef nonnull @.str.10) #8
  %1348 = icmp sgt i32 %1347, -1
  br i1 %1348, label %1349, label %1351

1349:                                             ; preds = %1343
  %1350 = call i32 @ref_stack_store(ptr noundef nonnull @e_stack, ptr noundef nonnull %20, i32 noundef %1344, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.10) #8
  br label %1351

1351:                                             ; preds = %1349, %1343
  %1352 = phi i32 [ %1350, %1349 ], [ %1347, %1343 ]
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %1345) #8
  %1353 = icmp slt i32 %1352, 0
  br i1 %1353, label %1417, label %1354

1354:                                             ; preds = %1351
  %1355 = call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #8
  %1356 = load i64, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 6, i32 1), align 8, !tbaa !5
  %1357 = add i64 %1356, 4294967286
  %1358 = and i64 %1357, 4294967295
  %1359 = zext i32 %1355 to i64
  %1360 = icmp ult i64 %1358, %1359
  br i1 %1360, label %1361, label %1385

1361:                                             ; preds = %1354
  %1362 = trunc i64 %1357 to i32
  %1363 = sub i32 %1355, %1362
  call void @pop_estack(i32 noundef %1363) #8
  br label %1385

1364:                                             ; preds = %1312
  %1365 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  %1366 = call i32 @ref_stack_extend(ptr noundef nonnull @o_stack, i32 noundef %1365) #8
  %1367 = icmp sgt i32 %1366, -1
  br i1 %1367, label %1368, label %1376

1368:                                             ; preds = %1364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !61
  %1369 = load i16, ptr %17, align 8, !tbaa !8
  %1370 = and i16 %1369, 15552
  %1371 = icmp eq i16 %1370, 1216
  br i1 %1371, label %1372, label %1375

1372:                                             ; preds = %1368
  %1373 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %1374 = getelementptr inbounds %struct.ref_s, ptr %1373, i64 1
  store ptr %1374, ptr @o_stack, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1374, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !61
  store ptr null, ptr %43, align 8, !tbaa !5
  store i16 1248, ptr %17, align 8, !tbaa !8
  store i16 0, ptr %44, align 2, !tbaa !12
  br label %1375

1375:                                             ; preds = %1372, %1368
  store ptr %17, ptr %16, align 8, !tbaa !22
  br label %1415

1376:                                             ; preds = %1364
  %1377 = call fastcc i32 @copy_stack(ptr noundef nonnull @o_stack, ptr noundef nonnull %20)
  %1378 = icmp slt i32 %1377, 0
  br i1 %1378, label %1417, label %1379

1379:                                             ; preds = %1376
  %1380 = call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #8
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %1380) #8
  br label %1385

1381:                                             ; preds = %1312
  %1382 = call i32 @ref_stack_pop_block(ptr noundef nonnull @o_stack) #8
  %1383 = icmp sgt i32 %1382, -1
  br i1 %1383, label %1384, label %1388

1384:                                             ; preds = %1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !61
  store ptr %17, ptr %16, align 8, !tbaa !22
  br label %1415

1385:                                             ; preds = %1354, %1361, %1328, %1379
  %1386 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %1387 = getelementptr inbounds %struct.ref_s, ptr %1386, i64 1
  store ptr %1387, ptr @o_stack, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1387, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false)
  br label %1388

1388:                                             ; preds = %1385, %1381, %1332, %1312
  br i1 %45, label %1417, label %1389

1389:                                             ; preds = %1388
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %1390 = call i32 @dict_find_string(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #8
  %1391 = icmp slt i32 %1390, 1
  br i1 %1391, label %1400, label %1392

1392:                                             ; preds = %1389
  %1393 = call i32 @dict_find_string(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #8
  %1394 = icmp slt i32 %1393, 1
  br i1 %1394, label %1400, label %1395

1395:                                             ; preds = %1392
  %1396 = load ptr, ptr %7, align 8, !tbaa !22
  %1397 = xor i32 %1268, -1
  %1398 = sext i32 %1397 to i64
  %1399 = call i32 @array_get(ptr noundef %1396, i64 noundef %1398, ptr noundef nonnull %19) #8
  br label %1400

1400:                                             ; preds = %1395, %1392, %1389
  %1401 = phi i32 [ %1399, %1395 ], [ -21, %1392 ], [ -21, %1389 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %1402 = icmp slt i32 %1401, 0
  br i1 %1402, label %1417, label %1403

1403:                                             ; preds = %1400
  %1404 = call i32 @dict_find_string(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull @.str.3, ptr noundef nonnull %18) #8
  %1405 = icmp slt i32 %1404, 1
  br i1 %1405, label %1417, label %1406

1406:                                             ; preds = %1403
  %1407 = load ptr, ptr %18, align 8, !tbaa !22
  %1408 = call i32 @dict_find(ptr noundef %1407, ptr noundef nonnull %19, ptr noundef nonnull %16) #8
  %1409 = icmp slt i32 %1408, 1
  br i1 %1409, label %1417, label %1410

1410:                                             ; preds = %1406
  %1411 = load ptr, ptr %16, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %1411, i64 16, i1 false), !tbaa.struct !61
  store ptr %17, ptr %16, align 8, !tbaa !22
  switch i32 %1268, label %1412 [
    i32 -6, label %1415
    i32 -19, label %1415
  ]

1412:                                             ; preds = %1410
  %1413 = load ptr, ptr @o_stack, align 8, !tbaa !23
  %1414 = getelementptr inbounds %struct.ref_s, ptr %1413, i64 1
  store ptr %1414, ptr @o_stack, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1414, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !61
  br label %1415

1415:                                             ; preds = %1412, %1410, %1410, %1384, %1375, %1335, %1317, %1298, %1296
  br label %46

1416:                                             ; preds = %1283
  br label %1417

1417:                                             ; preds = %1322, %1325, %1340, %1351, %1376, %1388, %1400, %1403, %1406, %50, %1283, %1416, %1284, %1285
  %1418 = phi i32 [ %1295, %1285 ], [ -100, %1284 ], [ 0, %1283 ], [ %52, %50 ], [ %1323, %1322 ], [ %1326, %1325 ], [ %1341, %1340 ], [ %1352, %1351 ], [ %1377, %1376 ], [ %1268, %1388 ], [ %1268, %1400 ], [ %1268, %1406 ], [ %1268, %1403 ], [ %1268, %1416 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  %1419 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !5
  %1420 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1419, i64 0, i32 17
  %1421 = load ptr, ptr %1420, align 8, !tbaa !67
  call void %1421(ptr noundef %1419, ptr noundef nonnull %23, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8
  %1422 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %5, i64 0, i32 2
  %1423 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %5, i64 0, i32 3
  br label %1424

1424:                                             ; preds = %1430, %1417
  %1425 = phi i64 [ 0, %1417 ], [ %1431, %1430 ]
  %1426 = getelementptr inbounds [4 x ptr], ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1), i64 0, i64 %1425
  %1427 = load ptr, ptr %1426, align 8, !tbaa !5
  %1428 = icmp eq ptr %1427, null
  br i1 %1428, label %1430, label %1429

1429:                                             ; preds = %1424
  call void @gs_memory_gc_status(ptr noundef nonnull %1427, ptr noundef nonnull %5) #8
  store ptr null, ptr %1422, align 8, !tbaa !32
  store i32 0, ptr %1423, align 8, !tbaa !35
  call void @gs_memory_set_gc_status(ptr noundef nonnull %1427, ptr noundef nonnull %5) #8
  br label %1430

1430:                                             ; preds = %1429, %1424
  %1431 = add nuw nsw i64 %1425, 1
  %1432 = icmp eq i64 %1431, 4
  br i1 %1432, label %1433, label %1424, !llvm.loop !36

1433:                                             ; preds = %1430
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #8
  ret i32 %1418
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_errorname(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = call i32 @dict_find_string(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #8
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = call i32 @dict_find_string(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #8
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !22
  %12 = xor i32 %0, -1
  %13 = sext i32 %12 to i64
  %14 = call i32 @array_get(ptr noundef %11, i64 noundef %13, ptr noundef %1) #8
  br label %15

15:                                               ; preds = %2, %7, %10
  %16 = phi i32 [ %14, %10 ], [ -21, %7 ], [ -21, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %16
}

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_errorinfo_put_string(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = load ptr, ptr @gs_imemory, align 8, !tbaa !66
  %5 = call i32 @string_to_ref(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull @.str.5) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = call i32 @dict_find_string(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #8
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !22
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = call i32 @dict_put_string(ptr noundef %11, ptr noundef nonnull @.str.7, ptr noundef nonnull %2) #8
  %17 = icmp slt i32 %16, 0
  %18 = select i1 %17, i32 -100, i32 0
  br label %19

19:                                               ; preds = %15, %7, %10, %1
  %20 = phi i32 [ %5, %1 ], [ -100, %10 ], [ -100, %7 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i32 %20
}

declare i32 @string_to_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_put_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @interp_op_defs() local_unnamed_addr #0 {
  ret ptr @interp_op_defs.op_defs_
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @oparray_pop(ptr nocapture readnone %0) #5 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -3
  store ptr %3, ptr @e_stack, align 8, !tbaa !23
  ret i32 14
}

declare i32 @zadd(ptr noundef) #3

declare i32 @zdef(ptr noundef) #3

declare i32 @zdup(ptr noundef) #3

declare i32 @zexch(ptr noundef) #3

declare i32 @zif(ptr noundef) #3

declare i32 @zifelse(ptr noundef) #3

declare i32 @zindex(ptr noundef) #3

declare i32 @zpop(ptr noundef) #3

declare i32 @zroll(ptr noundef) #3

declare i32 @zsub(ptr noundef) #3

declare void @ialloc_reset_requested(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @ref_stack_pop_block(ptr noundef) local_unnamed_addr #3

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @copy_stack(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call i32 @ref_stack_count(ptr noundef %0) #8
  %4 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !65
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 12) #8
  %5 = load ptr, ptr @gs_imemory, align 8, !tbaa !66
  %6 = tail call i32 @gs_alloc_ref_array(ptr noundef %5, ptr noundef %1, i32 noundef 112, i32 noundef %3, ptr noundef nonnull @.str.10) #8
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 @ref_stack_store(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.10) #8
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %6, %2 ]
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %4) #8
  ret i32 %11
}

declare void @pop_estack(i32 noundef) local_unnamed_addr #3

declare i32 @dict_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @the_name_table() local_unnamed_addr #3

declare i32 @zop_add(ptr noundef) local_unnamed_addr #3

declare i32 @zop_def(ptr noundef) local_unnamed_addr #3

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #3

declare i32 @zop_sub(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @oparray_cleanup(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.ref_s, ptr %2, i64 3, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !5
  %8 = trunc i64 %7 to i32
  %9 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #8
  %10 = tail call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #8
  %11 = icmp ugt i32 %9, %5
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = sub i32 %9, %5
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %13) #8
  br label %14

14:                                               ; preds = %12, %1
  %15 = icmp ugt i32 %10, %8
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = sub i32 %10, %8
  tail call void @ref_stack_pop(ptr noundef nonnull @d_stack, i32 noundef %17) #8
  br label %18

18:                                               ; preds = %16, %14
  ret i32 0
}

declare ptr @dict_find_name_by_index(i32 noundef) local_unnamed_addr #3

declare i32 @file_switch_to_read(ptr noundef) local_unnamed_addr #3

declare i32 @scan_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @scan_handle_refill(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ztokenexec_continue(ptr noundef) #3

declare void @sread_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @packed_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @name_index_ref(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ialloc_set_space(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ref_stack_store(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_memory_gc_status(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_memory_set_gc_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!12 = !{!9, !11, i64 2}
!13 = !{!14, !16, i64 16}
!14 = !{!"gs_memory_s", !15, i64 0}
!15 = !{!"gs_memory_procs_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!18, !19, i64 104}
!18 = !{!"ref_stack_s", !16, i64 0, !16, i64 8, !16, i64 16, !9, i64 24, !19, i64 40, !19, i64 44, !9, i64 48, !19, i64 64, !19, i64 68, !19, i64 72, !19, i64 76, !19, i64 80, !9, i64 88, !19, i64 104, !19, i64 108, !19, i64 112, !16, i64 120}
!19 = !{!"int", !6, i64 0}
!20 = !{!18, !19, i64 108}
!21 = !{!18, !19, i64 112}
!22 = !{!16, !16, i64 0}
!23 = !{!18, !16, i64 0}
!24 = !{!19, !19, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!14, !16, i64 128}
!28 = !{!18, !19, i64 64}
!29 = !{!30, !16, i64 48}
!30 = !{!"gs_dual_memory_s", !16, i64 0, !6, i64 8, !19, i64 40, !19, i64 44, !16, i64 48, !19, i64 56, !19, i64 60}
!31 = distinct !{!31, !26}
!32 = !{!33, !16, i64 16}
!33 = !{!"gs_memory_gc_status_s", !34, i64 0, !34, i64 8, !16, i64 16, !19, i64 24, !19, i64 28, !34, i64 32}
!34 = !{!"long", !6, i64 0}
!35 = !{!33, !19, i64 24}
!36 = distinct !{!36, !26}
!37 = !{!18, !16, i64 16}
!38 = !{!39, !19, i64 0}
!39 = !{!"interp_error_s", !19, i64 0, !19, i64 4, !16, i64 8, !9, i64 16}
!40 = !{!39, !19, i64 4}
!41 = !{!11, !11, i64 0}
!42 = !{!18, !16, i64 8}
!43 = !{!18, !19, i64 44}
!44 = !{!45, !16, i64 16}
!45 = !{!"name_s", !11, i64 0, !19, i64 2, !19, i64 2, !19, i64 2, !16, i64 8, !16, i64 16}
!46 = !{!47, !11, i64 176}
!47 = !{!"stream_s", !16, i64 0, !16, i64 8, !16, i64 16, !6, i64 24, !16, i64 48, !19, i64 56, !19, i64 60, !11, i64 64, !6, i64 66, !6, i64 67, !48, i64 72, !34, i64 88, !49, i64 96, !16, i64 152, !19, i64 160, !19, i64 164, !16, i64 168, !11, i64 176, !11, i64 178, !16, i64 184, !16, i64 192, !19, i64 200, !16, i64 208, !19, i64 216, !16, i64 224}
!48 = !{!"gs_string_s", !16, i64 0, !19, i64 8}
!49 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48}
!50 = !{!47, !11, i64 178}
!51 = !{!52, !19, i64 12}
!52 = !{!"scanner_state_s", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !53, i64 16, !6, i64 328}
!53 = !{!"dynamic_area_s", !48, i64 0, !16, i64 16, !16, i64 24, !16, i64 32, !19, i64 40, !6, i64 44, !16, i64 304}
!54 = !{!52, !19, i64 0}
!55 = !{!52, !19, i64 8}
!56 = !{!57, !11, i64 2}
!57 = !{!"op_array_table_s", !9, i64 0, !16, i64 16, !19, i64 24, !19, i64 28, !19, i64 32, !16, i64 40}
!58 = !{!59, !16, i64 8}
!59 = !{!"", !16, i64 0, !16, i64 8}
!60 = !{!39, !16, i64 8}
!61 = !{i64 0, i64 2, !41, i64 2, i64 2, !41, i64 8, i64 8, !62, i64 8, i64 2, !41, i64 8, i64 4, !63, i64 8, i64 8, !62, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22}
!62 = !{!34, !34, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"float", !6, i64 0}
!65 = !{!30, !19, i64 40}
!66 = !{!30, !16, i64 0}
!67 = !{!14, !16, i64 136}
