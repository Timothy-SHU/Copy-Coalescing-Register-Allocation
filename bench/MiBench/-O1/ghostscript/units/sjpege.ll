; ModuleID = 'sjpege.c'
source_filename = "sjpege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_jpeg_create_compress(ptr noundef %0) local_unnamed_addr #0 {
  call void @gs_jpeg_error_setup(ptr noundef %0) #3
  %2 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 2
  %5 = call i32 @_setjmp(ptr noundef nonnull %4) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @gs_jpeg_log_error(ptr noundef %0) #3
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %10, i64 0, i32 5
  call void @jpeg_CreateCompress(ptr noundef nonnull %11, i32 noundef 61, i64 noundef 496) #3
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %13
}

declare void @gs_jpeg_error_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #2

declare i32 @gs_jpeg_log_error(ptr noundef) local_unnamed_addr #1

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_jpeg_set_defaults(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 2
  %5 = call i32 @_setjmp(ptr noundef nonnull %4) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @gs_jpeg_log_error(ptr noundef %0) #3
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %10, i64 0, i32 5
  call void @jpeg_set_defaults(ptr noundef nonnull %11) #3
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %13
}

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_jpeg_set_colorspace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %4, i64 0, i32 2
  %6 = call i32 @_setjmp(ptr noundef nonnull %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @gs_jpeg_log_error(ptr noundef %0) #3
  br label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %11, i64 0, i32 5
  call void @jpeg_set_colorspace(ptr noundef nonnull %12, i32 noundef %1) #3
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ 0, %10 ]
  ret i32 %14
}

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_jpeg_set_linear_quality(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %5, i64 0, i32 2
  %7 = call i32 @_setjmp(ptr noundef nonnull %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = call i32 @gs_jpeg_log_error(ptr noundef %0) #3
  br label %14

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %12, i64 0, i32 5
  call void @jpeg_set_linear_quality(ptr noundef nonnull %13, i32 noundef %1, i32 noundef %2) #3
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %10, %9 ], [ 0, %11 ]
  ret i32 %15
}

declare void @jpeg_set_linear_quality(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_jpeg_set_quality(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %5, i64 0, i32 2
  %7 = call i32 @_setjmp(ptr noundef nonnull %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = call i32 @gs_jpeg_log_error(ptr noundef %0) #3
  br label %14

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %12, i64 0, i32 5
  call void @jpeg_set_quality(ptr noundef nonnull %13, i32 noundef %1, i32 noundef %2) #3
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %10, %9 ], [ 0, %11 ]
  ret i32 %15
}

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_jpeg_start_compress(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %4, i64 0, i32 2
  %6 = call i32 @_setjmp(ptr noundef nonnull %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @gs_jpeg_log_error(ptr noundef %0) #3
  br label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %11, i64 0, i32 5
  call void @jpeg_start_compress(ptr noundef nonnull %12, i32 noundef %1) #3
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ 0, %10 ]
  ret i32 %14
}

declare void @jpeg_start_compress(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_jpeg_write_scanlines(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %5, i64 0, i32 2
  %7 = call i32 @_setjmp(ptr noundef nonnull %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = call i32 @gs_jpeg_log_error(ptr noundef %0) #3
  br label %15

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %12, i64 0, i32 5
  %14 = call i32 @jpeg_write_scanlines(ptr noundef nonnull %13, ptr noundef %1, i32 noundef %2) #3
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_jpeg_finish_compress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %3, i64 0, i32 2
  %5 = call i32 @_setjmp(ptr noundef nonnull %4) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @gs_jpeg_log_error(ptr noundef %0) #3
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %10, i64 0, i32 5
  call void @jpeg_finish_compress(ptr noundef nonnull %11) #3
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %13
}

declare void @jpeg_finish_compress(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind returns_twice }

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
