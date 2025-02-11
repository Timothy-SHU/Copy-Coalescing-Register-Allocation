; ModuleID = 'xz/hardware.c'
source_filename = "xz/hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@threadlimit = internal unnamed_addr global i32 0, align 4
@total_ram = internal unnamed_addr global i1 false, align 8
@memlimit_compress = internal unnamed_addr global i64 0, align 8
@memlimit_decompress = internal unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_threadlimit_set(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  store i32 %2, ptr @threadlimit, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @hardware_threadlimit_get() local_unnamed_addr #1 {
  %1 = load i32, ptr @threadlimit, align 4, !tbaa !6
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_memlimit_set(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
  br i1 %3, label %5, label %11

5:                                                ; preds = %4
  %6 = and i64 %0, 4294967295
  %7 = load i1, ptr @total_ram, align 8
  %8 = select i1 %7, i64 943718400, i64 0
  %9 = mul nuw nsw i64 %8, %6
  %10 = udiv i64 %9, 100
  br label %11

11:                                               ; preds = %5, %4
  %12 = phi i64 [ %10, %5 ], [ %0, %4 ]
  br i1 %1, label %13, label %14

13:                                               ; preds = %11
  store i64 %12, ptr @memlimit_compress, align 8, !tbaa !10
  br label %14

14:                                               ; preds = %13, %11
  br i1 %2, label %15, label %16

15:                                               ; preds = %14
  store i64 %12, ptr @memlimit_decompress, align 8, !tbaa !10
  br label %16

16:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @hardware_memlimit_get(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i32 %0, 0
  %3 = load i64, ptr @memlimit_compress, align 8
  %4 = load i64, ptr @memlimit_decompress, align 8
  %5 = select i1 %2, i64 %3, i64 %4
  %6 = icmp eq i64 %5, 0
  %7 = select i1 %6, i64 -1, i64 %5
  ret i64 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @hardware_memlimit_show() local_unnamed_addr #3 {
  %1 = tail call i32 @message_verbosity_get() #7
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i32
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %3) #7
  ret void
}

; Function Attrs: optsize
declare void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @message_verbosity_get() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hardware_init() local_unnamed_addr #5 {
  store i1 true, ptr @total_ram, align 8
  tail call void @hardware_memlimit_set(i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #8
  tail call void @hardware_threadlimit_set(i32 noundef 0) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
