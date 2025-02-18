; ModuleID = 'liblzma/check/check.c'
source_filename = "liblzma/check/check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }

@lzma_check_is_supported.available_checks = internal unnamed_addr constant [16 x i8] c"\01\01\00\00\01\00\00\00\00\00\01\00\00\00\00\00", align 16
@lzma_check_size.check_sizes = internal unnamed_addr constant [16 x i8] c"\00\04\04\04\08\08\08\10\10\10   @@@", align 16

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @lzma_check_is_supported(i32 noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = icmp ugt i32 %0, 15
  br i1 %2, label %7, label %3, !prof !41

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x i8], ptr @lzma_check_is_supported.available_checks, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !42
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i8 [ %6, %3 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @lzma_check_size(i32 noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = icmp ugt i32 %0, 15
  br i1 %2, label %8, label %3, !prof !46

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x i8], ptr @lzma_check_size.check_sizes, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !42
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i32 [ %7, %3 ], [ -1, %1 ]
  ret i32 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lzma_check_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !47 {
  switch i32 %1, label %8 [
    i32 10, label %7
    i32 1, label %3
    i32 4, label %5
  ], !prof !48

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !42
  br label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !42
  br label %8

7:                                                ; preds = %2
  tail call void @lzma_sha256_init(ptr noundef %0) #4
  br label %8

8:                                                ; preds = %2, %7, %5, %3
  ret void
}

declare void @lzma_sha256_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_check_update(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 !prof !49 {
  switch i32 %1, label %14 [
    i32 1, label %5
    i32 4, label %9
    i32 10, label %13
  ], !prof !50

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = tail call i32 @lzma_crc32(ptr noundef %2, i64 noundef %3, i32 noundef %7) #4
  store i32 %8, ptr %6, align 8, !tbaa !42
  br label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !42
  %12 = tail call i64 @lzma_crc64(ptr noundef %2, i64 noundef %3, i64 noundef %11) #4
  store i64 %12, ptr %10, align 8, !tbaa !42
  br label %14

13:                                               ; preds = %4
  tail call void @lzma_sha256_update(ptr noundef %2, i64 noundef %3, ptr noundef %0) #4
  br label %14

14:                                               ; preds = %4, %13, %9, %5
  ret void
}

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @lzma_crc64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @lzma_sha256_update(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @lzma_check_finish(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !47 {
  switch i32 %1, label %10 [
    i32 1, label %3
    i32 4, label %6
    i32 10, label %9
  ], !prof !51

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !42
  store i32 %5, ptr %0, align 8, !tbaa !42
  br label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !42
  store i64 %8, ptr %0, align 8, !tbaa !42
  br label %10

9:                                                ; preds = %2
  tail call void @lzma_sha256_finish(ptr noundef %0) #4
  br label %10

10:                                               ; preds = %2, %9, %6, %3
  ret void
}

declare void @lzma_sha256_finish(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @lzma_check_init, ptr @lzma_sha256_init, i64 4}
!36 = !{ptr @lzma_check_update, ptr @lzma_crc64, i64 80863}
!37 = !{ptr @lzma_check_update, ptr @lzma_sha256_update, i64 4}
!38 = !{ptr @lzma_check_finish, ptr @lzma_sha256_finish, i64 4}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 5}
!41 = !{!"branch_weights", i32 0, i32 5}
!42 = !{!43, !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!"function_entry_count", i64 10}
!46 = !{!"branch_weights", i32 0, i32 10}
!47 = !{!"function_entry_count", i64 7}
!48 = !{!"branch_weights", i32 0, i32 4, i32 0, i32 3}
!49 = !{!"function_entry_count", i64 80867}
!50 = !{!"branch_weights", i32 0, i32 0, i32 80863, i32 4}
!51 = !{!"branch_weights", i32 0, i32 0, i32 3, i32 4}
