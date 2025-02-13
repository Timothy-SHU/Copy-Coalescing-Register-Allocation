; ModuleID = 'common/tuklib_mbstr_fw.c'
source_filename = "common/tuklib_mbstr_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tuklib_mbstr_fw(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  %4 = call i64 @tuklib_mbstr_width(ptr noundef %0, ptr noundef nonnull %3) #5
  %5 = icmp eq i64 %4, -1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = icmp ugt i64 %4, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load i64, ptr %3, align 8, !tbaa !6
  %11 = call i64 @llvm.usub.sat.i64(i64 %7, i64 %4)
  %12 = add i64 %10, %11
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %6, %2, %9
  %15 = phi i32 [ %13, %9 ], [ -1, %2 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i64 @tuklib_mbstr_width(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
