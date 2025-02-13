; ModuleID = 'alloca.c'
source_filename = "alloca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr }

@stack_dir = internal unnamed_addr global i32 0, align 4
@last_alloca_header = internal unnamed_addr global ptr null, align 8
@libiberty_optr = dso_local local_unnamed_addr global ptr null, align 8
@libiberty_nptr = dso_local local_unnamed_addr global ptr null, align 8
@libiberty_len = dso_local local_unnamed_addr global i64 0, align 8
@find_stack_direction.addr = internal unnamed_addr global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @C_alloca(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  %3 = load i32, ptr @stack_dir, align 4, !tbaa !35
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @find_stack_direction() #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @last_alloca_header, align 8, !tbaa !39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %6, %23
  %10 = phi ptr [ %24, %23 ], [ %7, %6 ]
  %11 = load i32, ptr @stack_dir, align 4, !tbaa !35
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.anon, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp ugt ptr %15, %2
  br i1 %16, label %23, label %26

17:                                               ; preds = %9
  %18 = icmp slt i32 %11, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.anon, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = icmp ult ptr %21, %2
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %13
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  call void @free(ptr noundef nonnull %10) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !llvm.loop !42

26:                                               ; preds = %23, %19, %17, %13, %6
  %27 = phi ptr [ null, %6 ], [ %10, %13 ], [ %10, %17 ], [ %10, %19 ], [ null, %23 ]
  store ptr %27, ptr @last_alloca_header, align 8, !tbaa !39
  %28 = icmp eq i64 %0, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = add i64 %0, 16
  %31 = call ptr @xmalloc(i64 noundef %30) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @abort() #9
  unreachable

34:                                               ; preds = %29
  %35 = load ptr, ptr @last_alloca_header, align 8, !tbaa !39
  store ptr %35, ptr %31, align 8, !tbaa !41
  %36 = getelementptr inbounds %struct.anon, ptr %31, i64 0, i32 1
  store ptr %2, ptr %36, align 8, !tbaa !41
  store ptr %31, ptr @last_alloca_header, align 8, !tbaa !39
  %37 = getelementptr inbounds i8, ptr %31, i64 16
  br label %38

38:                                               ; preds = %26, %34
  %39 = phi ptr [ %37, %34 ], [ null, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret ptr %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @find_stack_direction() unnamed_addr #2 !prof !34 !PGOFuncName !44 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #6
  %2 = load ptr, ptr @find_stack_direction.addr, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store ptr %1, ptr @find_stack_direction.addr, align 8, !tbaa !39
  call fastcc void @find_stack_direction() #7
  br label %9

5:                                                ; preds = %0
  %6 = icmp ugt ptr %1, %2
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  store i32 1, ptr @stack_dir, align 4, !tbaa !35
  br label %9

8:                                                ; preds = %5
  store i32 -1, ptr @stack_dir, align 4, !tbaa !35
  br label %9

9:                                                ; preds = %7, %8, %4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }

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
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"alloca.c:find_stack_direction"}
