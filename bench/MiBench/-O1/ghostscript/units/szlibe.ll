; ModuleID = 'szlibe.c'
source_filename = "szlibe.c"
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
@s_zlibE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_zlib_state, ptr @s_zlibE_init, ptr @s_zlibE_process, i32 1, i32 1, ptr @s_zlibE_release, ptr @s_zlib_set_defaults, ptr @s_zlibE_reset }, align 8
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibE_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 8
  store ptr @s_zlib_alloc, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 9
  store ptr @s_zlib_free, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 10
  store ptr @gs_memory_default, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !16
  %9 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !17
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !18
  %14 = sub nsw i32 0, %13
  %15 = select i1 %11, i32 %13, i32 %14
  %16 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9
  %17 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !20
  %21 = tail call i32 @deflateInit2_(ptr noundef nonnull %16, i32 noundef %6, i32 noundef %8, i32 noundef %15, i32 noundef %18, i32 noundef %20, ptr noundef nonnull @.str, i32 noundef 112) #2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 0, i32 -2
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibE_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %50, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = icmp ne ptr %5, %13
  %15 = icmp ne i32 %3, 0
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %50

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %5, i64 1
  %19 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9
  store ptr %18, ptr %19, align 8, !tbaa !27
  %20 = ptrtoint ptr %13 to i64
  %21 = ptrtoint ptr %5 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !28
  %25 = getelementptr inbounds i8, ptr %7, i64 1
  %26 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !29
  %27 = ptrtoint ptr %9 to i64
  %28 = ptrtoint ptr %7 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9, i32 4
  store i32 %30, ptr %31, align 8, !tbaa !30
  %32 = select i1 %15, i32 4, i32 0
  %33 = tail call i32 @deflate(ptr noundef nonnull %19, i32 noundef %32) #2
  %34 = load ptr, ptr %19, align 8, !tbaa !27
  %35 = getelementptr inbounds i8, ptr %34, i64 -1
  store ptr %35, ptr %1, align 8, !tbaa !21
  %36 = load ptr, ptr %26, align 8, !tbaa !29
  %37 = getelementptr inbounds i8, ptr %36, i64 -1
  store ptr %37, ptr %6, align 8, !tbaa !23
  switch i32 %33, label %50 [
    i32 0, label %38
    i32 1, label %45
  ]

38:                                               ; preds = %17
  %39 = load ptr, ptr %8, align 8, !tbaa !25
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = icmp ule ptr %35, %5
  %43 = or i1 %15, %42
  %44 = zext i1 %43 to i32
  br label %50

45:                                               ; preds = %17
  br i1 %15, label %46, label %50

46:                                               ; preds = %45
  %47 = load ptr, ptr %12, align 8, !tbaa !26
  %48 = icmp eq ptr %35, %47
  %49 = select i1 %48, i32 0, i32 -2
  br label %50

50:                                               ; preds = %17, %45, %46, %41, %38, %11, %4
  %51 = phi i32 [ 1, %4 ], [ 0, %11 ], [ %44, %41 ], [ 1, %38 ], [ -2, %45 ], [ %49, %46 ], [ -2, %17 ]
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal void @s_zlibE_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9
  %3 = tail call i32 @deflateEnd(ptr noundef nonnull %2) #2
  ret void
}

declare void @s_zlib_set_defaults(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_zlibE_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 9
  %3 = tail call i32 @deflateReset(ptr noundef nonnull %2) #2
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 -2
  ret i32 %5
}

declare ptr @s_zlib_alloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @s_zlib_free(ptr noundef, ptr noundef) #1

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #1

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
!15 = !{!6, !10, i64 32}
!16 = !{!6, !10, i64 36}
!17 = !{!6, !10, i64 28}
!18 = !{!6, !10, i64 24}
!19 = !{!6, !10, i64 40}
!20 = !{!6, !10, i64 44}
!21 = !{!22, !7, i64 0}
!22 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!23 = !{!24, !7, i64 8}
!24 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!25 = !{!24, !7, i64 16}
!26 = !{!22, !7, i64 8}
!27 = !{!6, !7, i64 48}
!28 = !{!6, !10, i64 56}
!29 = !{!6, !7, i64 72}
!30 = !{!6, !10, i64 80}
