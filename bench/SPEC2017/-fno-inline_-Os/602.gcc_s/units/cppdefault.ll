; ModuleID = 'cppdefault.c'
source_filename = "cppdefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.default_include = type { ptr, ptr, i8, i8, i8, i8 }

@gcc_exec_prefix = dso_local local_unnamed_addr global ptr null, align 8
@cpp_include_defaults = dso_local local_unnamed_addr constant [2 x %struct.default_include] [%struct.default_include { ptr @.str, ptr null, i8 0, i8 0, i8 1, i8 0 }, %struct.default_include zeroinitializer], align 16
@.str = private unnamed_addr constant [13 x i8] c"/usr/include\00", align 1
@cpp_GCC_INCLUDE_DIR = dso_local local_unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cpp_GCC_INCLUDE_DIR_len = dso_local local_unnamed_addr constant i64 0, align 8
@cpp_PREFIX = dso_local local_unnamed_addr constant [2 x i8] c".\00", align 1
@cpp_PREFIX_len = dso_local local_unnamed_addr constant i64 1, align 8
@cpp_EXEC_PREFIX = dso_local local_unnamed_addr constant [2 x i8] c".\00", align 1
@cpp_relocated.relocated = internal unnamed_addr global i32 -1, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"GCC_EXEC_PREFIX\00", align 1

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: read) uwtable
define dso_local zeroext i8 @cpp_relocated() local_unnamed_addr #0 !prof !38 {
  %1 = load i32, ptr @cpp_relocated.relocated, align 4, !tbaa !39
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %7, !prof !43

3:                                                ; preds = %0
  %4 = tail call ptr @getenv(ptr noundef nonnull @.str.1) #2
  store ptr %4, ptr @gcc_exec_prefix, align 8, !tbaa !44
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i32
  store i32 %6, ptr @cpp_relocated.relocated, align 4, !tbaa !39
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %1, %0 ], [ %6, %3 ]
  %9 = trunc i32 %8 to i8
  ret i8 %9
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #1

attributes #0 = { nofree noinline nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36}
!36 = !{ptr @cpp_relocated, ptr @getenv, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"branch_weights", i32 2, i32 1}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !41, i64 0}
