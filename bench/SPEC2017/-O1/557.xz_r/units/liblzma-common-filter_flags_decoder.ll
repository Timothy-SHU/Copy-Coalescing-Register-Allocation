; ModuleID = 'liblzma/common/filter_flags_decoder.c'
source_filename = "liblzma/common/filter_flags_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_filter = type { i64, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_filter_flags_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 !prof !38 {
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !39
  %8 = tail call i32 @lzma_vli_decode(ptr noundef %0, ptr noundef null, ptr noundef %2, ptr noundef %3, i64 noundef %4) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30, !prof !45

10:                                               ; preds = %5
  %11 = load i64, ptr %0, align 8, !tbaa !46
  %12 = icmp ugt i64 %11, 4611686018427387903
  br i1 %12, label %30, label %13, !prof !47

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %14 = call i32 @lzma_vli_decode(ptr noundef nonnull %6, ptr noundef null, ptr noundef %2, ptr noundef %3, i64 noundef %4) #3
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 %8, i32 %14, !prof !45
  br i1 %15, label %17, label %28, !prof !45

17:                                               ; preds = %13
  %18 = load i64, ptr %3, align 8, !tbaa !48
  %19 = sub i64 %4, %18
  %20 = load i64, ptr %6, align 8, !tbaa !48
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %28, label %22, !prof !47

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, ptr %2, i64 %18
  %24 = call i32 @lzma_properties_decode(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %23, i64 noundef %20) #3
  %25 = load i64, ptr %6, align 8, !tbaa !48
  %26 = load i64, ptr %3, align 8, !tbaa !48
  %27 = add i64 %26, %25
  store i64 %27, ptr %3, align 8, !tbaa !48
  br label %28

28:                                               ; preds = %17, %13, %22
  %29 = phi i32 [ %24, %22 ], [ %16, %13 ], [ 9, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  br label %30

30:                                               ; preds = %5, %10, %28
  %31 = phi i32 [ %8, %5 ], [ %29, %28 ], [ 9, %10 ]
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_properties_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @lzma_filter_flags_decode, ptr @lzma_vli_decode, i64 4}
!36 = !{ptr @lzma_filter_flags_decode, ptr @lzma_properties_decode, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 2}
!39 = !{!40, !44, i64 8}
!40 = !{!"", !41, i64 0, !44, i64 8}
!41 = !{!"long", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!"branch_weights", i32 2, i32 0}
!46 = !{!40, !41, i64 0}
!47 = !{!"branch_weights", i32 0, i32 2}
!48 = !{!41, !41, i64 0}
