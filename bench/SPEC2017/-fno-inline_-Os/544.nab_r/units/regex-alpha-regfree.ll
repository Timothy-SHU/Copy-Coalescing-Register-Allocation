; ModuleID = 'regex-alpha/regfree.c'
source_filename = "regex-alpha/regfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regex_t = type { i32, i64, ptr, ptr }
%struct.re_guts = type { i32, ptr, i32, i32, ptr, ptr, i32, i64, i64, i64, i32, i32, i32, i32, ptr, ptr, i32, i64, i32, i64, [1 x i8] }

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @regfree(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !35
  %3 = icmp eq i32 %2, 62053
  br i1 %3, label %4, label %32

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !43
  %10 = icmp eq i32 %9, 53829
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  store i32 0, ptr %0, align 8, !tbaa !35
  store i32 0, ptr %6, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #2
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %18) #2
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #2
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !48
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

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 36494405452}
!4 = !{!"MaxCount", i64 7149406114}
!5 = !{!"MaxInternalCount", i64 7149406114}
!6 = !{!"MaxFunctionCount", i64 1283723375}
!7 = !{!"NumCounts", i64 1914}
!8 = !{!"NumFunctions", i64 240}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7149406114, i32 1}
!14 = !{i32 100000, i64 7149406114, i32 1}
!15 = !{i32 200000, i64 7140152539, i32 2}
!16 = !{i32 300000, i64 7140152539, i32 2}
!17 = !{i32 400000, i64 3344610218, i32 4}
!18 = !{i32 500000, i64 3344610218, i32 4}
!19 = !{i32 600000, i64 2054445201, i32 5}
!20 = !{i32 700000, i64 2041548705, i32 10}
!21 = !{i32 800000, i64 2041548705, i32 10}
!22 = !{i32 900000, i64 2041548705, i32 10}
!23 = !{i32 950000, i64 855650904, i32 12}
!24 = !{i32 990000, i64 428072471, i32 14}
!25 = !{i32 999000, i64 9072759, i32 28}
!26 = !{i32 999900, i64 104986, i32 54}
!27 = !{i32 999990, i64 19030, i32 143}
!28 = !{i32 999999, i64 2509, i32 165}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"", !37, i64 0, !40, i64 8, !41, i64 16, !41, i64 24}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!36, !41, i64 24}
!43 = !{!44, !37, i64 0}
!44 = !{!"re_guts", !37, i64 0, !41, i64 8, !37, i64 16, !37, i64 20, !41, i64 24, !41, i64 32, !37, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !37, i64 72, !37, i64 76, !37, i64 80, !37, i64 84, !41, i64 88, !41, i64 96, !37, i64 104, !40, i64 112, !37, i64 120, !40, i64 128, !38, i64 136}
!45 = !{!44, !41, i64 8}
!46 = !{!44, !41, i64 24}
!47 = !{!44, !41, i64 32}
!48 = !{!44, !41, i64 96}
