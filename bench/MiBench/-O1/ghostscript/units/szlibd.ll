; ModuleID = 'szlibd.c'
source_filename = "szlibd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_zlib_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.z_stream_s }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }

@st_zlib_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_zlibD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_zlib_state, ptr @s_zlibD_init, ptr @s_zlibD_process, i32 1, i32 1, ptr @s_zlibD_release, ptr @s_zlib_set_defaults, ptr @s_zlibD_reset }, align 8
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibD_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 8
  store ptr @s_zlib_alloc, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 9
  store ptr @s_zlib_free, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 10
  store ptr @gs_memory_default, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !16
  %10 = sub nsw i32 0, %9
  %11 = select i1 %7, i32 %9, i32 %10
  %12 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9
  %13 = tail call i32 @inflateInit2_(ptr noundef nonnull %12, i32 noundef %11, ptr noundef nonnull @.str, i32 noundef 112) #2
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 0, i32 -2
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibD_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %42, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %5, %13
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %5, i64 1
  %17 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9
  store ptr %16, ptr %17, align 8, !tbaa !23
  %18 = ptrtoint ptr %13 to i64
  %19 = ptrtoint ptr %5 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !24
  %23 = getelementptr inbounds i8, ptr %7, i64 1
  %24 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !25
  %25 = ptrtoint ptr %9 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 4
  store i32 %28, ptr %29, align 8, !tbaa !26
  %30 = tail call i32 @inflate(ptr noundef nonnull %17, i32 noundef 1) #2
  %31 = load ptr, ptr %17, align 8, !tbaa !23
  %32 = getelementptr inbounds i8, ptr %31, i64 -1
  store ptr %32, ptr %1, align 8, !tbaa !17
  %33 = load ptr, ptr %24, align 8, !tbaa !25
  %34 = getelementptr inbounds i8, ptr %33, i64 -1
  store ptr %34, ptr %6, align 8, !tbaa !19
  switch i32 %30, label %41 [
    i32 0, label %35
    i32 1, label %42
  ]

35:                                               ; preds = %15
  %36 = load ptr, ptr %8, align 8, !tbaa !21
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = icmp ule ptr %32, %5
  %40 = zext i1 %39 to i32
  br label %42

41:                                               ; preds = %15
  br label %42

42:                                               ; preds = %15, %38, %35, %11, %4, %41
  %43 = phi i32 [ -2, %41 ], [ 1, %4 ], [ 0, %11 ], [ %40, %38 ], [ 1, %35 ], [ -1, %15 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal void @s_zlibD_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9
  %3 = tail call i32 @inflateEnd(ptr noundef nonnull %2) #2
  ret void
}

declare void @s_zlib_set_defaults(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibD_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9
  %3 = tail call i32 @inflateReset(ptr noundef nonnull %2) #2
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 -2
  ret i32 %5
}

declare ptr @s_zlib_alloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @s_zlib_free(ptr noundef, ptr noundef) #1

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #1

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 112}
!6 = !{!"stream_zlib_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !11, i64 48}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !12, i64 16, !7, i64 24, !10, i64 32, !12, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !12, i64 96, !12, i64 104}
!12 = !{!"long", !8, i64 0}
!13 = !{!6, !7, i64 120}
!14 = !{!6, !7, i64 128}
!15 = !{!6, !10, i64 28}
!16 = !{!6, !10, i64 24}
!17 = !{!18, !7, i64 0}
!18 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!19 = !{!20, !7, i64 8}
!20 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!21 = !{!20, !7, i64 16}
!22 = !{!18, !7, i64 8}
!23 = !{!6, !7, i64 48}
!24 = !{!6, !10, i64 56}
!25 = !{!6, !7, i64 72}
!26 = !{!6, !10, i64 80}
