; ModuleID = 'xmalloc.c'
source_filename = "xmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@name = internal unnamed_addr global ptr @.str.2, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0A%s%sout of memory allocating %lu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @xmalloc_set_program_name(ptr noundef %0) local_unnamed_addr #0 !prof !43 {
  store ptr %0, ptr @name, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @xmalloc_failed(i64 noundef %0) local_unnamed_addr #1 !prof !48 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = load ptr, ptr @name, align 8, !tbaa !44
  %4 = load i8, ptr %3, align 1, !tbaa !49
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @.str.2, ptr @.str.1
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef %0) #7
  tail call void @xexit(i32 noundef 1) #8
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @xexit(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @xmalloc(i64 noundef %0) local_unnamed_addr #1 !prof !50 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4, !prof !51

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi i64 [ 1, %3 ], [ %0, %1 ]
  %6 = tail call ptr @malloc(i64 noundef %5) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !52

8:                                                ; preds = %4
  tail call void @xmalloc_failed(i64 noundef %5) #10
  br label %9

9:                                                ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !53 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %7, !prof !54

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i64 [ 1, %6 ], [ %1, %2 ]
  %9 = phi i64 [ 1, %6 ], [ %0, %2 ]
  %10 = tail call ptr @calloc(i64 noundef %9, i64 noundef %8) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14, !prof !55

12:                                               ; preds = %7
  %13 = mul i64 %9, %8
  tail call void @xmalloc_failed(i64 noundef %13) #10
  br label %14

14:                                               ; preds = %12, %7
  ret ptr %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @xrealloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !56 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %5, !prof !57

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i64 [ 1, %4 ], [ %1, %2 ]
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %10, !prof !58

8:                                                ; preds = %5
  %9 = tail call ptr @malloc(i64 noundef %6) #9
  br label %12

10:                                               ; preds = %5
  %11 = tail call ptr @realloc(ptr noundef nonnull %0, i64 noundef %6) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !57

15:                                               ; preds = %12
  tail call void @xmalloc_failed(i64 noundef %6) #10
  br label %16

16:                                               ; preds = %15, %12
  ret ptr %13
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize allocsize(0) }
attributes #10 = { optsize }
attributes #11 = { optsize allocsize(0,1) }
attributes #12 = { optsize allocsize(1) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!42}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @xmalloc, ptr @malloc, i64 14787224}
!36 = !{ptr @xmalloc, ptr @xmalloc_failed, i64 1}
!37 = !{ptr @xcalloc, ptr @calloc, i64 8012099}
!38 = !{ptr @xcalloc, ptr @xmalloc_failed, i64 1}
!39 = !{ptr @xrealloc, ptr @malloc, i64 4800449}
!40 = !{ptr @xrealloc, ptr @realloc, i64 485651}
!41 = !{ptr @xrealloc, ptr @xmalloc_failed, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 1}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!46, !46, i64 0}
!50 = !{!"function_entry_count", i64 14787224}
!51 = !{!"branch_weights", i32 6, i32 14787220}
!52 = !{!"branch_weights", i32 1, i32 14787225}
!53 = !{!"function_entry_count", i64 8012099}
!54 = !{!"branch_weights", i32 978, i32 -376891954}
!55 = !{!"branch_weights", i32 1, i32 8012100}
!56 = !{!"function_entry_count", i64 5286100}
!57 = !{!"branch_weights", i32 1, i32 5286101}
!58 = !{!"branch_weights", i32 4800451, i32 485651}
