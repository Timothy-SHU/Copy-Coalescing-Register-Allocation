; ModuleID = 'lto-opts.c'
source_filename = "lto-opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cl_option = type { ptr, ptr, i16, i8, i32, i32, ptr, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.opt_d = type { i32, i64, ptr, i32 }
%struct.VEC_opt_t_base = type { i32, i32, [1 x %struct.opt_d] }
%struct.lto_output_stream = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.lto_simple_header = type { %struct.lto_header, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.lto_input_block = type { ptr, i32, i32 }

@user_options = internal global ptr null, align 8
@file_options = internal global ptr null, align 8
@flag_wpa = external local_unnamed_addr global i32, align 4
@cl_options = external constant [0 x %struct.cl_option], align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [11 x i8] c"lto-opts.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_register_user_option(i64 noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.opt_d, align 8
  %6 = tail call fastcc zeroext i8 @register_user_option_p(i64 noundef %0, i32 noundef %3) #12, !range !6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  store i32 %3, ptr %5, align 8, !tbaa !7
  %9 = getelementptr inbounds %struct.opt_d, ptr %5, i64 0, i32 1
  store i64 %0, ptr %9, align 8, !tbaa !14
  %10 = icmp eq ptr %1, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %13 = add i64 %12, 1
  %14 = tail call ptr @xmalloc(i64 noundef %13) #14
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #12
  br label %16

16:                                               ; preds = %8, %11
  %17 = phi ptr [ %14, %11 ], [ null, %8 ]
  %18 = getelementptr inbounds %struct.opt_d, ptr %5, i64 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.opt_d, ptr %5, i64 0, i32 3
  store i32 %2, ptr %19, align 8, !tbaa !15
  call fastcc void @VEC_opt_t_heap_safe_push(ptr noundef nonnull @user_options, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %20

20:                                               ; preds = %16, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @register_user_option_p(i64 noundef %0, i32 noundef %1) unnamed_addr #1 {
  switch i32 %1, label %7 [
    i32 1048576, label %8
    i32 2097152, label %3
  ]

3:                                                ; preds = %2
  switch i64 %0, label %4 [
    i64 527, label %8
    i64 526, label %8
    i64 301, label %8
    i64 249, label %8
    i64 248, label %8
  ]

4:                                                ; preds = %3
  %5 = icmp eq i64 %0, 368
  %6 = zext i1 %5 to i8
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %4, %3, %3, %3, %3, %3, %2, %7
  %9 = phi i8 [ 0, %7 ], [ 1, %2 ], [ 1, %3 ], [ %6, %4 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ]
  ret i8 %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_opt_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_opt_t_heap_reserve(ptr noundef %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  tail call fastcc void @VEC_opt_t_base_quick_push(ptr noundef %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_opt_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = tail call fastcc i32 @VEC_opt_t_base_space(ptr noundef %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 32) #14
  store ptr %6, ptr %0, align 8, !tbaa !16
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_opt_t_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !17
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !17
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !19
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_opt_t_base_space(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !22
  %6 = load i32, ptr %0, align 8, !tbaa !17
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_clear_user_options() local_unnamed_addr #0 {
  tail call fastcc void @clear_options(ptr noundef nonnull @user_options) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_options(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %4 = call fastcc i32 @VEC_opt_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #12, !range !23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %11, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.opt_d, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  tail call void @free(ptr noundef %10) #12
  %11 = add nuw nsw i32 %7, 1
  %12 = load ptr, ptr %0, align 8, !tbaa !16
  %13 = call fastcc i32 @VEC_opt_t_base_iterate(ptr noundef %12, i32 noundef %11, ptr noundef nonnull %2) #12, !range !23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !25

15:                                               ; preds = %6, %1
  tail call fastcc void @VEC_opt_t_heap_free(ptr noundef nonnull %0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_opt_t_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !17
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !16
  ret i32 %13
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_opt_t_heap_free(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #12
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_clear_file_options() local_unnamed_addr #0 {
  tail call fastcc void @clear_options(ptr noundef nonnull @file_options) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_write_options() local_unnamed_addr #0 {
  %1 = alloca %struct.lto_output_stream, align 8
  %2 = alloca %struct.lto_simple_header, align 4
  %3 = tail call ptr @lto_get_section_name(i32 noundef 9, ptr noundef null) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %4 = load i32, ptr @flag_wpa, align 4, !tbaa !20
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  tail call void @lto_begin_section(ptr noundef %3, i8 noundef zeroext %6) #14
  tail call void @free(ptr noundef %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  call fastcc void @output_options(ptr noundef nonnull %1) #12
  store i16 1, ptr %2, align 4, !tbaa !27
  %7 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 1
  store i16 0, ptr %7, align 2, !tbaa !31
  %8 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 2
  store i32 9, ptr %8, align 4, !tbaa !32
  %9 = getelementptr inbounds %struct.lto_simple_header, ptr %2, i64 0, i32 2
  store i32 0, ptr %9, align 4, !tbaa !33
  %10 = getelementptr inbounds %struct.lto_output_stream, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.lto_simple_header, ptr %2, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !36
  %13 = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #14
  call void @lto_output_data_stream(ptr noundef %13, ptr noundef nonnull %2, i64 noundef 16) #14
  call void @lto_write_stream(ptr noundef %13) #14
  call void @free(ptr noundef %13) #12
  call void @lto_write_stream(ptr noundef nonnull %1) #14
  call void @lto_end_section() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #13
  ret void
}

; Function Attrs: optsize
declare ptr @lto_get_section_name(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_begin_section(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_options(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %5 = load ptr, ptr @file_options, align 8, !tbaa !16
  %6 = load ptr, ptr @user_options, align 8, !tbaa !16
  %7 = tail call fastcc ptr @concatenate_options(ptr noundef %5, ptr noundef %6) #12
  store ptr %7, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %8 = tail call fastcc i32 @VEC_opt_t_base_length(ptr noundef %7) #12
  %9 = zext i32 %8 to i64
  store i64 %9, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call fastcc void @output_data_stream(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 8) #12
  %10 = call fastcc i32 @VEC_opt_t_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %4) #12, !range !23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1, %12
  %13 = phi i32 [ %19, %12 ], [ 0, %1 ]
  %14 = load ptr, ptr %4, align 8, !tbaa !16
  call fastcc void @output_data_stream(ptr noundef %0, ptr noundef %14, i64 noundef 4) #12
  %15 = getelementptr inbounds %struct.opt_d, ptr %14, i64 0, i32 1
  call fastcc void @output_data_stream(ptr noundef %0, ptr noundef nonnull %15, i64 noundef 8) #12
  %16 = getelementptr inbounds %struct.opt_d, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  call fastcc void @output_string_stream(ptr noundef %0, ptr noundef %17) #12
  %18 = getelementptr inbounds %struct.opt_d, ptr %14, i64 0, i32 3
  call fastcc void @output_data_stream(ptr noundef %0, ptr noundef nonnull %18, i64 noundef 4) #12
  %19 = add nuw nsw i32 %13, 1
  %20 = call fastcc i32 @VEC_opt_t_base_iterate(ptr noundef %7, i32 noundef %19, ptr noundef nonnull %4) #12, !range !23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %12, !llvm.loop !37

22:                                               ; preds = %12, %1
  call fastcc void @VEC_opt_t_heap_free(ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_output_data_stream(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_write_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_end_section() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @concatenate_options(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !16
  %4 = tail call ptr @lto_bitmap_alloc() #14
  call fastcc void @reverse_iterate_options(ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4) #12
  call fastcc void @reverse_iterate_options(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4) #12
  tail call void @lto_bitmap_free(ptr noundef %4) #14
  %5 = load ptr, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_opt_t_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_data_stream(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  tail call void @lto_output_data_stream(ptr noundef %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_string_stream(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !tbaa !38
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  store i64 %7, ptr %4, align 8, !tbaa !21
  store i8 1, ptr %3, align 1, !tbaa !38
  call fastcc void @output_data_stream(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1) #12
  call fastcc void @output_data_stream(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 8) #12
  %8 = load i64, ptr %4, align 8, !tbaa !21
  call fastcc void @output_data_stream(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %10

9:                                                ; preds = %2
  call fastcc void @output_data_stream(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1) #12
  br label %10

10:                                               ; preds = %9, %6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare ptr @lto_bitmap_alloc() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reverse_iterate_options(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @VEC_opt_t_base_length(ptr noundef %0) #12
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3, %16
  %7 = phi i32 [ %8, %16 ], [ %4, %3 ]
  %8 = add nsw i32 %7, -1
  %9 = tail call fastcc ptr @VEC_opt_t_base_index(ptr noundef %0, i32 noundef %8) #12
  %10 = getelementptr inbounds %struct.opt_d, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !14
  %12 = trunc i64 %11 to i32
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %12) #14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  tail call fastcc void @VEC_opt_t_heap_safe_push(ptr noundef %1, ptr noundef nonnull %9) #12
  br label %16

16:                                               ; preds = %15, %6
  %17 = icmp ugt i32 %7, 1
  br i1 %17, label %6, label %18, !llvm.loop !39

18:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: optsize
declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_opt_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #1 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_read_file_options(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lto_input_block, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = call ptr @lto_get_section_data(ptr noundef %0, i32 noundef 9, ptr noundef null, ptr noundef nonnull %2) #14
  %5 = load i16, ptr %4, align 4, !tbaa !27
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.lto_header, ptr %4, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !31
  %9 = sext i16 %8 to i32
  call void @lto_check_version(i32 noundef %6, i32 noundef %9) #14
  %10 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr %10, ptr %3, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.lto_input_block, ptr %3, i64 0, i32 1
  store i32 0, ptr %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.lto_simple_header, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !36
  %14 = getelementptr inbounds %struct.lto_input_block, ptr %3, i64 0, i32 2
  store i32 %13, ptr %14, align 4, !tbaa !43
  call fastcc void @input_options(ptr noundef nonnull %3) #12
  %15 = load i64, ptr %2, align 8, !tbaa !21
  call void @lto_free_section_data(ptr noundef %0, i32 noundef 9, ptr noundef null, ptr noundef nonnull %4, i64 noundef %15) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: optsize
declare ptr @lto_get_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_check_version(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_options(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.opt_d, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call fastcc void @input_data_block(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 8) #12
  %4 = load i64, ptr %2, align 8, !tbaa !21
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.opt_d, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.opt_d, ptr %3, i64 0, i32 2
  %9 = getelementptr inbounds %struct.opt_d, ptr %3, i64 0, i32 3
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %13, %10 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call fastcc void @input_data_block(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 4) #12
  call fastcc void @input_data_block(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 8) #12
  %12 = call fastcc ptr @input_string_block(ptr noundef %0) #12
  store ptr %12, ptr %8, align 8, !tbaa !24
  call fastcc void @input_data_block(ptr noundef %0, ptr noundef nonnull %9, i64 noundef 4) #12
  call fastcc void @VEC_opt_t_heap_safe_push(ptr noundef nonnull @file_options, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  %13 = add nuw i64 %11, 1
  %14 = icmp eq i64 %13, %4
  br i1 %14, label %15, label %10, !llvm.loop !44

15:                                               ; preds = %10, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: optsize
declare void @lto_free_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_data_block(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ %9, %5 ], [ 0, %3 ]
  %7 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %0) #14
  %8 = getelementptr inbounds i8, ptr %1, i64 %6
  store i8 %7, ptr %8, align 1, !tbaa !38
  %9 = add nuw i64 %6, 1
  %10 = icmp eq i64 %9, %2
  br i1 %10, label %11, label %5, !llvm.loop !45

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @input_string_block(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  call fastcc void @input_data_block(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 1) #12
  %4 = load i8, ptr %2, align 1, !tbaa !38
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call fastcc void @input_data_block(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 8) #12
  %7 = load i64, ptr %3, align 8, !tbaa !21
  %8 = add i64 %7, 1
  %9 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %8) #14
  tail call fastcc void @input_data_block(ptr noundef %0, ptr noundef %9, i64 noundef %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %9, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: optsize
declare zeroext i8 @lto_input_1_unsigned(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_reissue_options() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  %3 = load ptr, ptr @file_options, align 8, !tbaa !16
  %4 = load ptr, ptr @user_options, align 8, !tbaa !16
  %5 = tail call fastcc ptr @concatenate_options(ptr noundef %3, ptr noundef %4) #12
  store ptr %5, ptr %1, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %6 = call fastcc i32 @VEC_opt_t_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #12, !range !23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %0, %35
  %9 = phi i32 [ %36, %35 ], [ 0, %0 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.opt_d, ptr %10, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %12, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %12
  %18 = getelementptr inbounds %struct.opt_d, ptr %10, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.opt_d, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  tail call void @set_option(ptr noundef nonnull %17, i32 noundef %19, ptr noundef %21) #14
  br label %22

22:                                               ; preds = %16, %8
  %23 = load i32, ptr %10, align 8, !tbaa !7
  switch i32 %23, label %34 [
    i32 1048576, label %24
    i32 2097152, label %32
  ]

24:                                               ; preds = %22
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 5), align 8, !tbaa !48
  %26 = load i64, ptr %11, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.opt_d, ptr %10, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = getelementptr inbounds %struct.opt_d, ptr %10, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !15
  %31 = tail call zeroext i8 %25(i64 noundef %26, ptr noundef %28, i32 noundef %30) #14
  br label %35

32:                                               ; preds = %22
  br i1 %15, label %33, label %35

33:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 391, ptr noundef nonnull @.str.1) #14
  br label %35

34:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 393, ptr noundef nonnull @.str.1) #14
  br label %35

35:                                               ; preds = %33, %32, %34, %24
  %36 = add nuw nsw i32 %9, 1
  %37 = call fastcc i32 @VEC_opt_t_base_iterate(ptr noundef %5, i32 noundef %36, ptr noundef nonnull %2) #12, !range !23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %8, !llvm.loop !60

39:                                               ; preds = %35, %0
  call fastcc void @VEC_opt_t_heap_free(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  ret void
}

; Function Attrs: optsize
declare void @set_option(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{i8 0, i8 2}
!7 = !{!8, !9, i64 0}
!8 = !{!"opt_d", !9, i64 0, !12, i64 8, !13, i64 16, !9, i64 24}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"long", !10, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!8, !12, i64 8}
!15 = !{!8, !9, i64 24}
!16 = !{!13, !13, i64 0}
!17 = !{!18, !9, i64 0}
!18 = !{!"VEC_opt_t_base", !9, i64 0, !9, i64 4, !10, i64 8}
!19 = !{i64 0, i64 4, !20, i64 8, i64 8, !21, i64 16, i64 8, !16, i64 24, i64 4, !20}
!20 = !{!9, !9, i64 0}
!21 = !{!12, !12, i64 0}
!22 = !{!18, !9, i64 4}
!23 = !{i32 0, i32 2}
!24 = !{!8, !13, i64 16}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !30, i64 0}
!28 = !{!"lto_simple_header", !29, i64 0, !9, i64 8, !9, i64 12}
!29 = !{!"lto_header", !30, i64 0, !30, i64 2, !9, i64 4}
!30 = !{!"short", !10, i64 0}
!31 = !{!28, !30, i64 2}
!32 = !{!28, !9, i64 4}
!33 = !{!28, !9, i64 12}
!34 = !{!35, !9, i64 32}
!35 = !{!"lto_output_stream", !13, i64 0, !13, i64 8, !13, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!36 = !{!28, !9, i64 8}
!37 = distinct !{!37, !26}
!38 = !{!10, !10, i64 0}
!39 = distinct !{!39, !26}
!40 = !{!41, !13, i64 0}
!41 = !{!"lto_input_block", !13, i64 0, !9, i64 8, !9, i64 12}
!42 = !{!41, !9, i64 8}
!43 = !{!41, !9, i64 12}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = !{!47, !13, i64 32}
!47 = !{!"cl_option", !13, i64 0, !13, i64 8, !30, i64 16, !10, i64 18, !9, i64 20, !9, i64 24, !13, i64 32, !9, i64 40, !9, i64 44}
!48 = !{!49, !13, i64 760}
!49 = !{!"gcc_target", !50, i64 0, !52, i64 368, !53, i64 664, !9, i64 744, !13, i64 752, !13, i64 760, !13, i64 768, !13, i64 776, !13, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !13, i64 840, !13, i64 848, !13, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !13, i64 912, !13, i64 920, !13, i64 928, !13, i64 936, !13, i64 944, !13, i64 952, !13, i64 960, !13, i64 968, !13, i64 976, !13, i64 984, !13, i64 992, !13, i64 1000, !13, i64 1008, !13, i64 1016, !13, i64 1024, !13, i64 1032, !13, i64 1040, !13, i64 1048, !13, i64 1056, !12, i64 1064, !12, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !13, i64 1112, !13, i64 1120, !13, i64 1128, !13, i64 1136, !13, i64 1144, !13, i64 1152, !13, i64 1160, !13, i64 1168, !54, i64 1176, !13, i64 1232, !13, i64 1240, !13, i64 1248, !13, i64 1256, !13, i64 1264, !13, i64 1272, !13, i64 1280, !13, i64 1288, !13, i64 1296, !13, i64 1304, !13, i64 1312, !13, i64 1320, !13, i64 1328, !13, i64 1336, !13, i64 1344, !13, i64 1352, !13, i64 1360, !13, i64 1368, !13, i64 1376, !13, i64 1384, !13, i64 1392, !13, i64 1400, !13, i64 1408, !13, i64 1416, !13, i64 1424, !13, i64 1432, !13, i64 1440, !13, i64 1448, !13, i64 1456, !12, i64 1464, !55, i64 1472, !13, i64 1664, !13, i64 1672, !13, i64 1680, !13, i64 1688, !13, i64 1696, !13, i64 1704, !13, i64 1712, !13, i64 1720, !13, i64 1728, !13, i64 1736, !13, i64 1744, !13, i64 1752, !13, i64 1760, !13, i64 1768, !13, i64 1776, !56, i64 1784, !57, i64 1792, !58, i64 1896, !59, i64 1968, !13, i64 2016, !10, i64 2024, !10, i64 2025, !10, i64 2026, !10, i64 2027, !10, i64 2028, !10, i64 2029, !10, i64 2030, !10, i64 2031, !10, i64 2032, !10, i64 2033, !10, i64 2034, !10, i64 2035}
!50 = !{!"asm_out", !13, i64 0, !13, i64 8, !13, i64 16, !51, i64 24, !51, i64 56, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360}
!51 = !{!"asm_int_op", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!52 = !{!"sched", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288}
!53 = !{!"vectorize", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!54 = !{!"addr_space", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!55 = !{!"calls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184}
!56 = !{!"c", !13, i64 0}
!57 = !{!"cxx", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!58 = !{!"emutls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !10, i64 64, !10, i64 65}
!59 = !{!"target_option_hooks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!60 = distinct !{!60, !26}
