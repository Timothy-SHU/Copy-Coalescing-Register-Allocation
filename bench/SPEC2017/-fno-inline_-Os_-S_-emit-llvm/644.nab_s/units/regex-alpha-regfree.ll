; ModuleID = 'regex-alpha/regfree.c'
source_filename = "regex-alpha/regfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regex_t = type { i32, i64, ptr, ptr }
%struct.re_guts = type { i32, ptr, i32, i32, ptr, ptr, i32, i64, i64, i64, i32, i32, i32, i32, ptr, ptr, i32, i64, i32, i64, [1 x i8] }

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @regfree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !6
  %3 = icmp eq i32 %2, 62053
  br i1 %3, label %4, label %32

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !14
  %10 = icmp eq i32 %9, 53829
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  store i32 0, ptr %0, align 8, !tbaa !6
  store i32 0, ptr %6, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #2
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %18) #2
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #2
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %28) #2
  br label %31

31:                                               ; preds = %30, %26
  tail call void @free(ptr noundef nonnull %6) #2
  br label %32

32:                                               ; preds = %4, %8, %1, %31
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #1

attributes #0 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"", !8, i64 0, !11, i64 8, !12, i64 16, !12, i64 24}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!7, !12, i64 24}
!14 = !{!15, !8, i64 0}
!15 = !{!"re_guts", !8, i64 0, !12, i64 8, !8, i64 16, !8, i64 20, !12, i64 24, !12, i64 32, !8, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !12, i64 88, !12, i64 96, !8, i64 104, !11, i64 112, !8, i64 120, !11, i64 128, !9, i64 136}
!16 = !{!15, !12, i64 8}
!17 = !{!15, !12, i64 24}
!18 = !{!15, !12, i64 32}
!19 = !{!15, !12, i64 96}
