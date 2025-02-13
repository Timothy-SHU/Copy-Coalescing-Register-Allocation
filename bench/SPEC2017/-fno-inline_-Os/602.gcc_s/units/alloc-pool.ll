; ModuleID = 'alloc-pool.c'
source_filename = "alloc-pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.alloc_pool_def = type { ptr, i64, ptr, ptr, i64, i64, i64, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"alloc-pool.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_alloc_pool(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !47 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !48

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #5
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp ult i64 %1, 8
  br i1 %7, label %8, label %9, !prof !48

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i64 [ 8, %8 ], [ %1, %6 ]
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %12, label %13, !prof !48

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 155, ptr noundef nonnull @.str.1) #5
  br label %13

13:                                               ; preds = %9, %12
  %14 = add i64 %10, 7
  %15 = and i64 %14, -8
  %16 = tail call ptr @xmalloc(i64 noundef 88) #5
  store ptr %0, ptr %16, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.alloc_pool_def, ptr %16, i64 0, i32 10
  store i64 %15, ptr %17, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct.alloc_pool_def, ptr %16, i64 0, i32 1
  store i64 %2, ptr %18, align 8, !tbaa !56
  %19 = mul i64 %15, %2
  %20 = add i64 %19, 8
  %21 = getelementptr inbounds %struct.alloc_pool_def, ptr %16, i64 0, i32 9
  store i64 %20, ptr %21, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.alloc_pool_def, ptr %16, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %22, i8 0, i64 56, i1 false)
  ret ptr %16
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @empty_alloc_pool(ptr noundef %0) local_unnamed_addr #0 !prof !58 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !59

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.1) #5
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !61

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  tail call void @free(ptr noundef nonnull %9) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !prof !64, !llvm.loop !65

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_alloc_pool(ptr noundef %0) local_unnamed_addr #0 !prof !47 {
  tail call void @empty_alloc_pool(ptr noundef %0) #6
  tail call void @free(ptr noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_alloc_pool_if_empty(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !67 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds %struct.alloc_pool_def, ptr %2, i64 0, i32 6
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.alloc_pool_def, ptr %2, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %9, !prof !71

8:                                                ; preds = %1
  tail call void @free_alloc_pool(ptr noundef nonnull %2) #6
  store ptr null, ptr %0, align 8, !tbaa !68
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pool_alloc(ptr noundef %0) local_unnamed_addr #0 !prof !72 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !73

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.1) #5
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !75

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !62
  br label %42

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !76
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %17, label %14, !prof !77

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !78
  br label %34

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 9
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = tail call ptr @xmalloc(i64 noundef %19) #5
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  %22 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  store ptr %23, ptr %20, align 8, !tbaa !62
  store ptr %20, ptr %22, align 8, !tbaa !60
  %24 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !56
  %26 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 5
  %27 = load <2 x i64>, ptr %26, align 8, !tbaa !79
  %28 = insertelement <2 x i64> poison, i64 %25, i64 0
  %29 = shufflevector <2 x i64> %28, <2 x i64> poison, <2 x i32> zeroinitializer
  %30 = add <2 x i64> %27, %29
  store <2 x i64> %30, ptr %26, align 8, !tbaa !79
  %31 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 7
  %32 = load i64, ptr %31, align 8, !tbaa !80
  %33 = add i64 %32, 1
  store i64 %33, ptr %31, align 8, !tbaa !80
  br label %34

34:                                               ; preds = %14, %17
  %35 = phi i64 [ %12, %14 ], [ %25, %17 ]
  %36 = phi ptr [ %16, %14 ], [ %21, %17 ]
  %37 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 3
  store ptr null, ptr %36, align 8, !tbaa !62
  %38 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 10
  %39 = load i64, ptr %38, align 8, !tbaa !55
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  store ptr %40, ptr %37, align 8, !tbaa !78
  %41 = add i64 %35, -1
  store i64 %41, ptr %11, align 8, !tbaa !76
  br label %42

42:                                               ; preds = %8, %34
  %43 = phi ptr [ null, %34 ], [ %9, %8 ]
  %44 = phi ptr [ %36, %34 ], [ %6, %8 ]
  store ptr %43, ptr %5, align 8, !tbaa !74
  %45 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 6
  %46 = load i64, ptr %45, align 8, !tbaa !69
  %47 = add i64 %46, -1
  store i64 %47, ptr %45, align 8, !tbaa !69
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pool_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !81 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !82

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.1) #5
  br label %5

5:                                                ; preds = %2, %4
  %6 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !70
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %13, label %11, !prof !83

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 343, ptr noundef nonnull @.str.1) #5
  %12 = load i64, ptr %6, align 8, !tbaa !69
  br label %13

13:                                               ; preds = %5, %11
  %14 = phi i64 [ %7, %5 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  store ptr %16, ptr %1, align 8, !tbaa !62
  store ptr %1, ptr %15, align 8, !tbaa !74
  %17 = add i64 %14, 1
  store i64 %17, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_alloc_pool_statistics() local_unnamed_addr #3 !prof !84 {
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!46}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!36 = !{ptr @create_alloc_pool, ptr @fancy_abort, i64 2}
!37 = !{ptr @create_alloc_pool, ptr @xmalloc, i64 1880593}
!38 = !{ptr @empty_alloc_pool, ptr @fancy_abort, i64 1}
!39 = !{ptr @empty_alloc_pool, ptr @free, i64 4333942}
!40 = !{ptr @free_alloc_pool, ptr @empty_alloc_pool, i64 1880593}
!41 = !{ptr @free_alloc_pool, ptr @free, i64 1880593}
!42 = !{ptr @free_alloc_pool_if_empty, ptr @free_alloc_pool, i64 226990}
!43 = !{ptr @pool_alloc, ptr @fancy_abort, i64 1}
!44 = !{ptr @pool_alloc, ptr @xmalloc, i64 4333944}
!45 = !{ptr @pool_free, ptr @fancy_abort, i64 2}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 1880593}
!48 = !{!"branch_weights", i32 1, i32 1880594}
!49 = !{!50, !51, i64 0}
!50 = !{!"alloc_pool_def", !51, i64 0, !54, i64 8, !51, i64 16, !51, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !51, i64 64, !54, i64 72, !54, i64 80}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !{!"long", !52, i64 0}
!55 = !{!50, !54, i64 80}
!56 = !{!50, !54, i64 8}
!57 = !{!50, !54, i64 72}
!58 = !{!"function_entry_count", i64 2044777}
!59 = !{!"branch_weights", i32 1, i32 2044778}
!60 = !{!50, !51, i64 64}
!61 = !{!"branch_weights", i32 1, i32 2044777}
!62 = !{!63, !51, i64 0}
!63 = !{!"alloc_pool_list_def", !51, i64 0}
!64 = !{!"branch_weights", i32 2044777, i32 2289167}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"function_entry_count", i64 375184}
!68 = !{!51, !51, i64 0}
!69 = !{!50, !54, i64 48}
!70 = !{!50, !54, i64 40}
!71 = !{!"branch_weights", i32 226991, i32 148195}
!72 = !{!"function_entry_count", i64 144198437}
!73 = !{!"branch_weights", i32 1, i32 144198438}
!74 = !{!50, !51, i64 16}
!75 = !{!"branch_weights", i32 104409530, i32 39788909}
!76 = !{!50, !54, i64 32}
!77 = !{!"branch_weights", i32 4333944, i32 100075587}
!78 = !{!50, !51, i64 24}
!79 = !{!54, !54, i64 0}
!80 = !{!50, !54, i64 56}
!81 = !{!"function_entry_count", i64 63376085}
!82 = !{!"branch_weights", i32 1, i32 63376086}
!83 = !{!"branch_weights", i32 63376086, i32 1}
!84 = !{!"function_entry_count", i64 0}
