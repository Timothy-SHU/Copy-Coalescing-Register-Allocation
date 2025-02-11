; ModuleID = 'host-linux.c'
source_filename = "host-linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.host_hooks = type { ptr, ptr, ptr, ptr }

@host_hooks = dso_local local_unnamed_addr constant %struct.host_hooks { ptr @hook_void_void, ptr @default_gt_pch_get_address, ptr @default_gt_pch_use_address, ptr @default_gt_pch_alloc_granularity }, align 8

; Function Attrs: optsize
declare void @hook_void_void() #0

; Function Attrs: optsize
declare ptr @default_gt_pch_get_address(i64 noundef, i32 noundef) #0

; Function Attrs: optsize
declare i32 @default_gt_pch_use_address(ptr noundef, i64 noundef, i32 noundef, i64 noundef) #0

; Function Attrs: optsize
declare i64 @default_gt_pch_alloc_granularity() #0

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
