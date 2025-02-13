; ModuleID = 'varray.c'
source_filename = "varray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i8, i8 }
%struct.varray_head_tag = type { i64, i64, i32, ptr, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x i64] }

@element = internal unnamed_addr constant [22 x %struct.anon] [%struct.anon { i8 1, i8 1 }, %struct.anon { i8 1, i8 1 }, %struct.anon { i8 2, i8 1 }, %struct.anon { i8 2, i8 1 }, %struct.anon { i8 4, i8 1 }, %struct.anon { i8 4, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 0 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 0 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @varray_init(i64 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [22 x %struct.anon], ptr @element, i64 0, i64 %4
  %6 = load i8, ptr %5, align 2, !tbaa !35
  %7 = zext i8 %6 to i64
  %8 = mul i64 %7, %0
  switch i32 %1, label %9 [
    i32 17, label %12
    i32 11, label %12
  ]

9:                                                ; preds = %3
  %10 = add i64 %8, 32
  %11 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %10) #5
  br label %15

12:                                               ; preds = %3, %3
  %13 = add i64 %8, 32
  %14 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %13) #5
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %11, %9 ], [ %14, %12 ]
  store i64 %0, ptr %16, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.varray_head_tag, ptr %16, i64 0, i32 1
  store i64 0, ptr %17, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.varray_head_tag, ptr %16, i64 0, i32 2
  store i32 %1, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.varray_head_tag, ptr %16, i64 0, i32 3
  store ptr %2, ptr %19, align 8, !tbaa !46
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @varray_grow(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load i64, ptr %0, align 8, !tbaa !39
  %4 = icmp eq i64 %3, %1
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !45
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [22 x %struct.anon], ptr @element, i64 0, i64 %8
  %10 = load i8, ptr %9, align 2, !tbaa !35
  %11 = zext i8 %10 to i64
  %12 = mul i64 %3, %11
  %13 = mul i64 %11, %1
  switch i32 %7, label %14 [
    i32 17, label %17
    i32 11, label %17
  ]

14:                                               ; preds = %5
  %15 = add i64 %13, 32
  %16 = tail call ptr @ggc_realloc_stat(ptr noundef nonnull %0, i64 noundef %15) #5
  br label %20

17:                                               ; preds = %5, %5
  %18 = add i64 %13, 32
  %19 = tail call ptr @xrealloc(ptr noundef nonnull %0, i64 noundef %18) #5
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %16, %14 ], [ %19, %17 ]
  store i64 %1, ptr %21, align 8, !tbaa !39
  %22 = icmp ult i64 %3, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.varray_head_tag, ptr %21, i64 0, i32 4
  %25 = getelementptr inbounds [1 x i8], ptr %24, i64 0, i64 %12
  %26 = sub i64 %13, %12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %25, i8 0, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %20, %23, %2
  %28 = phi ptr [ %0, %2 ], [ %21, %23 ], [ %21, %20 ]
  ret ptr %28
}

; Function Attrs: optsize
declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @varray_clear(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !34 {
  %2 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !45
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [22 x %struct.anon], ptr @element, i64 0, i64 %4
  %6 = load i8, ptr %5, align 2, !tbaa !35
  %7 = zext i8 %6 to i64
  %8 = load i64, ptr %0, align 8, !tbaa !39
  %9 = mul i64 %8, %7
  %10 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %10, i8 0, i64 %9, i1 false)
  %11 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 1
  store i64 0, ptr %11, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_varray_statistics() local_unnamed_addr #4 !prof !34 {
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }

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
!35 = !{!36, !37, i64 0}
!36 = !{!"", !37, i64 0, !37, i64 1}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 0}
!40 = !{!"varray_head_tag", !41, i64 0, !41, i64 8, !42, i64 16, !43, i64 24, !37, i64 32}
!41 = !{!"long", !37, i64 0}
!42 = !{!"int", !37, i64 0}
!43 = !{!"any pointer", !37, i64 0}
!44 = !{!40, !41, i64 8}
!45 = !{!40, !42, i64 16}
!46 = !{!40, !43, i64 24}
