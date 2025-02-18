; ModuleID = 'regex-alpha/regfree.c'
source_filename = "regex-alpha/regfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regex_t = type { i32, i64, ptr, ptr }
%struct.re_guts = type { i32, ptr, i32, i32, ptr, ptr, i32, i64, i64, i64, i32, i32, i32, i32, ptr, ptr, i32, i64, i32, i64, [1 x i8] }

; Function Attrs: cold mustprogress nounwind willreturn uwtable
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
  tail call void @free(ptr noundef %13) #2
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef %18) #2
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef %23) #2
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef %28) #2
  br label %31

31:                                               ; preds = %30, %26
  tail call void @free(ptr noundef %6) #2
  br label %32

32:                                               ; preds = %4, %8, %1, %31
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #1

attributes #0 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
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
