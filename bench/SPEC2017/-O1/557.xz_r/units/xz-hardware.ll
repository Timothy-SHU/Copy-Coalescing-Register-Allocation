; ModuleID = 'xz/hardware.c'
source_filename = "xz/hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@threadlimit = internal unnamed_addr global i32 0, align 4
@total_ram = internal unnamed_addr global i1 false, align 8
@memlimit_compress = internal unnamed_addr global i64 0, align 8
@memlimit_decompress = internal unnamed_addr global i64 0, align 8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_threadlimit_set(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  store i32 %2, ptr @threadlimit, align 4, !tbaa !35
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @hardware_threadlimit_get() local_unnamed_addr #1 !prof !34 {
  %1 = load i32, ptr @threadlimit, align 4, !tbaa !35
  ret i32 %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_memlimit_set(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 !prof !34 {
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
  store i64 %12, ptr @memlimit_compress, align 8, !tbaa !39
  br label %14

14:                                               ; preds = %13, %11
  br i1 %2, label %15, label %16

15:                                               ; preds = %14
  store i64 %12, ptr @memlimit_decompress, align 8, !tbaa !39
  br label %16

16:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @hardware_memlimit_get(i32 noundef %0) local_unnamed_addr #1 !prof !34 {
  %2 = icmp eq i32 %0, 0
  %3 = load i64, ptr @memlimit_compress, align 8
  %4 = load i64, ptr @memlimit_decompress, align 8
  %5 = select i1 %2, i64 %3, i64 %4
  %6 = icmp eq i64 %5, 0
  %7 = select i1 %6, i64 -1, i64 %5
  ret i64 %7
}

; Function Attrs: cold nounwind uwtable
define dso_local void @hardware_memlimit_show() local_unnamed_addr #3 !prof !34 {
  %1 = tail call i32 @message_verbosity_get() #6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i32
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %3) #6
  ret void
}

declare void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @message_verbosity_get() local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_init() local_unnamed_addr #0 !prof !34 {
  store i1 true, ptr @total_ram, align 8
  store i64 0, ptr @memlimit_compress, align 8, !tbaa !39
  store i64 0, ptr @memlimit_decompress, align 8, !tbaa !39
  store i32 1, ptr @threadlimit, align 4, !tbaa !35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !37, i64 0}
