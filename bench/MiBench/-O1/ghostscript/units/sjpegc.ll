; ModuleID = 'sjpegc.c'
source_filename = "sjpegc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_DCT_state_s = type { ptr, ptr, ptr, %struct.gs_const_string_s, float, i32, i32, %union._jd, i32, i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%union._jd = type { ptr }
%struct.jpeg_stream_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag], i32, i32 }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.jpeg_compress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag], i32, i32, %struct.jpeg_compress_struct, %struct.jpeg_destination_mgr }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }

@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str = private unnamed_addr constant [36 x i8] c"JPEG small internal data allocation\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Freeing JPEG small internal data\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"JPEG large internal data allocation\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Freeing JPEG large internal data\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @gs_jpeg_error_setup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 1
  store ptr @gs_jpeg_error_exit, ptr %4, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 1, i32 1
  store ptr @gs_jpeg_emit_message, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 1, i32 3
  store ptr @gs_jpeg_format_message, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 1, i32 4
  store ptr @gs_jpeg_reset_error_mgr, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 1, i32 7
  store i32 0, ptr %8, align 4, !tbaa !16
  %9 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 1, i32 8
  store i64 0, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 1, i32 5
  store i32 0, ptr %10, align 8, !tbaa !18
  %11 = tail call ptr @gs_jpeg_message_table() #11
  %12 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 1, i32 9
  store ptr %11, ptr %12, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 1, i32 10
  store i32 119, ptr %13, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 1, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr %2, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %15, i64 0, i32 5
  store ptr %4, ptr %16, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @gs_jpeg_error_exit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -208
  tail call void @longjmp(ptr noundef nonnull %2, i32 noundef 1) #12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @gs_jpeg_emit_message(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  %6 = load i32, ptr %5, align 8, !tbaa !28
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 -208
  tail call void @longjmp(ptr noundef nonnull %9, i32 noundef 1) #12
  unreachable

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @gs_jpeg_format_message(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !18
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !20
  %10 = icmp sgt i32 %5, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = zext nneg i32 %5 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  br label %32

16:                                               ; preds = %7, %2
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !33
  %23 = icmp slt i32 %5, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 13
  %26 = load i32, ptr %25, align 4, !tbaa !34
  %27 = icmp sgt i32 %5, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = sub nsw i32 %5, %22
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %18, i64 %30
  br label %32

32:                                               ; preds = %11, %28
  %33 = phi ptr [ %31, %28 ], [ %15, %11 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %32, %16, %20, %24
  %36 = phi ptr [ null, %24 ], [ null, %20 ], [ null, %16 ], [ %34, %32 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  store i32 %5, ptr %39, align 4, !tbaa !5
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !19
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi ptr [ %42, %38 ], [ %36, %35 ]
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi ptr [ %44, %43 ], [ %47, %45 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  %48 = load i8, ptr %46, align 1, !tbaa !5
  switch i8 %48, label %45 [
    i8 0, label %55
    i8 37, label %49
  ]

49:                                               ; preds = %45
  %50 = load i8, ptr %47, align 1, !tbaa !5
  %51 = icmp eq i8 %50, 115
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  %54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull %53) #11
  br label %73

55:                                               ; preds = %45, %49
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  %57 = load i32, ptr %56, align 4, !tbaa !5
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 1
  %59 = load i32, ptr %58, align 4, !tbaa !5
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 2
  %61 = load i32, ptr %60, align 4, !tbaa !5
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 3
  %63 = load i32, ptr %62, align 4, !tbaa !5
  %64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 4
  %65 = load i32, ptr %64, align 4, !tbaa !5
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 5
  %67 = load i32, ptr %66, align 4, !tbaa !5
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 6
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 7
  %71 = load i32, ptr %70, align 4, !tbaa !5
  %72 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %44, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71) #11
  br label %73

73:                                               ; preds = %55, %52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @gs_jpeg_reset_error_mgr(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 8
  store i64 0, ptr %3, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !18
  ret void
}

declare ptr @gs_jpeg_message_table() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_jpeg_log_error(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [200 x i8], align 16
  %3 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %4, i64 0, i32 5
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #11
  call void @gs_jpeg_format_message(ptr noundef nonnull %5, ptr noundef nonnull %2)
  %6 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = call i32 %7(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #11
  ret i32 -12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_jpeg_alloc_quant_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [200 x i8], align 16
  %3 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %4, i64 0, i32 2
  %6 = call i32 @_setjmp(ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %3, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %8, i64 0, i32 5
  br i1 %7, label %14, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #11
  call void @gs_jpeg_format_message(ptr noundef nonnull %9, ptr noundef nonnull %2)
  %11 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = call i32 %12(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #11
  br label %16

14:                                               ; preds = %1
  %15 = call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %9) #11
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ null, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #6

declare ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_jpeg_alloc_huff_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [200 x i8], align 16
  %3 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %4, i64 0, i32 2
  %6 = call i32 @_setjmp(ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %3, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %8, i64 0, i32 5
  br i1 %7, label %14, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #11
  call void @gs_jpeg_format_message(ptr noundef nonnull %9, ptr noundef nonnull %2)
  %11 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = call i32 %12(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #11
  br label %16

14:                                               ; preds = %1
  %15 = call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %9) #11
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ null, %10 ], [ %15, %14 ]
  ret ptr %17
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_jpeg_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [200 x i8], align 16
  %3 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %4, i64 0, i32 2
  %6 = call i32 @_setjmp(ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %3, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %8, i64 0, i32 5
  br i1 %7, label %14, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #11
  call void @gs_jpeg_format_message(ptr noundef nonnull %9, ptr noundef nonnull %2)
  %11 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = call i32 %12(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #11
  br label %15

14:                                               ; preds = %1
  call void @jpeg_destroy(ptr noundef nonnull %9) #11
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ -12, %10 ], [ 0, %14 ]
  ret i32 %16
}

declare void @jpeg_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @jpeg_get_small(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !40
  %4 = trunc i64 %1 to i32
  %5 = tail call ptr %3(ptr noundef nonnull @gs_memory_default, i32 noundef 1, i32 noundef %4, ptr noundef nonnull @.str) #11
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_free_small(ptr nocapture noundef readnone %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !43
  tail call void %4(ptr noundef nonnull @gs_memory_default, ptr noundef %1, ptr noundef nonnull @.str.1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @jpeg_get_large(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !40
  %4 = trunc i64 %1 to i32
  %5 = tail call ptr %3(ptr noundef nonnull @gs_memory_default, i32 noundef 1, i32 noundef %4, ptr noundef nonnull @.str.2) #11
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_free_large(ptr nocapture noundef readnone %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !43
  tail call void %4(ptr noundef nonnull @gs_memory_default, ptr noundef %1, ptr noundef nonnull @.str.3) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @jpeg_mem_available(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef returned %2, i64 noundef %3) local_unnamed_addr #7 {
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_open_backing_store(ptr noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !30
  %5 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 48, ptr %5, align 8, !tbaa !18
  %6 = load ptr, ptr %4, align 8, !tbaa !8
  tail call void %6(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @jpeg_mem_init(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @jpeg_mem_term(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind returns_twice }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 44, !11, i64 124, !12, i64 128, !10, i64 136, !11, i64 144, !10, i64 152, !11, i64 160, !11, i64 164}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !10, i64 8}
!14 = !{!9, !10, i64 24}
!15 = !{!9, !10, i64 32}
!16 = !{!9, !11, i64 124}
!17 = !{!9, !12, i64 128}
!18 = !{!9, !11, i64 40}
!19 = !{!9, !10, i64 136}
!20 = !{!9, !11, i64 144}
!21 = !{!22, !10, i64 432}
!22 = !{!"jpeg_compress_data_s", !23, i64 0, !9, i64 56, !6, i64 224, !11, i64 424, !11, i64 428, !24, i64 432, !27, i64 928}
!23 = !{!"stream_template_s", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !10, i64 32, !10, i64 40, !10, i64 48}
!24 = !{!"jpeg_compress_struct", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !10, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !25, i64 56, !11, i64 64, !11, i64 68, !11, i64 72, !10, i64 80, !6, i64 88, !6, i64 120, !6, i64 152, !6, i64 184, !6, i64 200, !6, i64 216, !11, i64 232, !10, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !6, i64 284, !26, i64 286, !26, i64 288, !11, i64 292, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !6, i64 320, !11, i64 352, !11, i64 356, !11, i64 360, !6, i64 364, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !10, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !10, i64 480, !10, i64 488}
!25 = !{!"double", !6, i64 0}
!26 = !{!"short", !6, i64 0}
!27 = !{!"jpeg_destination_mgr", !10, i64 0, !12, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!28 = !{!29, !11, i64 424}
!29 = !{!"jpeg_stream_data_s", !23, i64 0, !9, i64 56, !6, i64 224, !11, i64 424, !11, i64 428}
!30 = !{!31, !10, i64 0}
!31 = !{!"jpeg_common_struct", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 28}
!32 = !{!9, !10, i64 152}
!33 = !{!9, !11, i64 160}
!34 = !{!9, !11, i64 164}
!35 = !{!10, !10, i64 0}
!36 = !{!37, !10, i64 16}
!37 = !{!"stream_DCT_state_s", !10, i64 0, !10, i64 8, !10, i64 16, !38, i64 24, !39, i64 40, !11, i64 44, !11, i64 48, !6, i64 56, !11, i64 64, !11, i64 68}
!38 = !{!"gs_const_string_s", !10, i64 0, !11, i64 8}
!39 = !{!"float", !6, i64 0}
!40 = !{!41, !10, i64 32}
!41 = !{!"gs_memory_s", !42, i64 0}
!42 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!43 = !{!41, !10, i64 88}
