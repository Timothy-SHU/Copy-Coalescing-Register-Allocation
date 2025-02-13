; ModuleID = 'spaces.c'
source_filename = "spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@spaces.buf = internal unnamed_addr global ptr null, align 8
@spaces.maxsize = internal unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local ptr @spaces(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i32, ptr @spaces.maxsize, align 4, !tbaa !35
  %3 = icmp slt i32 %2, %0
  %4 = load ptr, ptr @spaces.buf, align 8, !tbaa !39
  br i1 %3, label %7, label %5

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  br label %21

7:                                                ; preds = %1
  %8 = icmp eq ptr %4, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @free(ptr noundef nonnull %4) #4
  br label %10

10:                                               ; preds = %9, %7
  %11 = add nuw nsw i32 %0, 1
  %12 = sext i32 %11 to i64
  %13 = tail call ptr @malloc(i64 noundef %12) #5
  store ptr %13, ptr @spaces.buf, align 8, !tbaa !39
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = zext i32 %0 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = icmp eq i32 %0, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %13, i8 32, i64 %16, i1 false), !tbaa !41
  br label %20

20:                                               ; preds = %19, %15
  store i32 %0, ptr @spaces.maxsize, align 4, !tbaa !35
  store i8 0, ptr %17, align 1, !tbaa !41
  br label %21

21:                                               ; preds = %5, %20
  %22 = phi i64 [ %6, %5 ], [ %16, %20 ]
  %23 = phi ptr [ %4, %5 ], [ %13, %20 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 %22
  %25 = sext i32 %0 to i64
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, ptr %24, i64 %26
  br label %28

28:                                               ; preds = %10, %21
  %29 = phi ptr [ %27, %21 ], [ null, %10 ]
  ret ptr %29
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { optsize }
attributes #5 = { optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!37, !37, i64 0}
