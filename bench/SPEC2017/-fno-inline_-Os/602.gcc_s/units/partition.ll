; ModuleID = 'partition.c'
source_filename = "partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @partition_new(i32 noundef %0) local_unnamed_addr #0 !prof !39 {
  %2 = add nsw i32 %0, -1
  %3 = sext i32 %2 to i64
  %4 = mul nsw i64 %3, 24
  %5 = add nsw i64 %4, 32
  %6 = tail call ptr @xmalloc(i64 noundef %5) #8
  store i32 %0, ptr %6, align 8, !tbaa !40
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %18, !prof !45

8:                                                ; preds = %1
  %9 = zext nneg i32 %0 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %16, %10 ]
  %12 = getelementptr inbounds %struct.partition_def, ptr %6, i64 0, i32 1, i64 %11
  %13 = trunc i64 %11 to i32
  store i32 %13, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.partition_def, ptr %6, i64 0, i32 1, i64 %11, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.partition_def, ptr %6, i64 0, i32 1, i64 %11, i32 2
  store i32 1, ptr %15, align 8, !tbaa !50
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %18, label %10, !prof !51, !llvm.loop !52

18:                                               ; preds = %10, %1
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @partition_delete(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !39 {
  tail call void @free(ptr noundef %0) #9
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @partition_union(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !54 {
  %4 = getelementptr inbounds %struct.partition_def, ptr %0, i64 0, i32 1
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %8
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %43, label %12, !prof !55

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %5, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %8, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !50
  %17 = icmp ult i32 %14, %16
  %18 = select i1 %17, i32 %1, i32 %2, !prof !56
  %19 = select i1 %17, i32 %2, i32 %1, !prof !56
  %20 = select i1 %17, i32 %10, i32 %7, !prof !56
  %21 = sext i32 %19 to i64
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %25, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !50
  %28 = sext i32 %20 to i64
  %29 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %28, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !50
  %31 = add i32 %30, %27
  store i32 %31, ptr %29, align 8, !tbaa !50
  store i32 %20, ptr %23, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %22, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = icmp eq ptr %33, %23
  br i1 %34, label %40, label %35, !prof !57

35:                                               ; preds = %12, %35
  %36 = phi ptr [ %38, %35 ], [ %33, %12 ]
  store i32 %20, ptr %36, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.partition_elem, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = icmp eq ptr %38, %23
  br i1 %39, label %40, label %35, !prof !58, !llvm.loop !59

40:                                               ; preds = %35, %12
  %41 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %21, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  store ptr %33, ptr %41, align 8, !tbaa !49
  store ptr %42, ptr %32, align 8, !tbaa !49
  br label %43

43:                                               ; preds = %3, %40
  %44 = phi i32 [ %20, %40 ], [ %7, %3 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @partition_print(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !60 {
  %3 = load i32, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct.partition_def, ptr %0, i64 0, i32 1
  %5 = sext i32 %3 to i64
  %6 = tail call ptr @xmalloc(i64 noundef %5) #8
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %5, i1 false)
  %7 = shl nsw i64 %5, 2
  %8 = tail call ptr @xmalloc(i64 noundef %7) #8
  %9 = tail call i32 @fputc(i32 noundef 91, ptr noundef %1) #9
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %65

11:                                               ; preds = %2
  %12 = ptrtoint ptr %4 to i64
  %13 = zext nneg i32 %3 to i64
  br label %14

14:                                               ; preds = %11, %62
  %15 = phi i64 [ 0, %11 ], [ %63, %62 ]
  %16 = getelementptr inbounds i8, ptr %6, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !61
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %15
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %22, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !50
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = zext nneg i32 %24 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %41, %28 ]
  %30 = phi i64 [ %15, %26 ], [ %40, %28 ]
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds i32, ptr %8, i64 %29
  store i32 %31, ptr %32, align 4, !tbaa !62
  %33 = shl i64 %30, 32
  %34 = ashr exact i64 %33, 32
  %35 = getelementptr inbounds i8, ptr %6, i64 %34
  store i8 1, ptr %35, align 1, !tbaa !61
  %36 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %34, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !49
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %38, %12
  %40 = sdiv exact i64 %39, 24
  %41 = add nuw nsw i64 %29, 1
  %42 = icmp eq i64 %41, %27
  br i1 %42, label %43, label %28, !llvm.loop !63

43:                                               ; preds = %28
  %44 = zext nneg i32 %24 to i64
  tail call void @spec_qsort(ptr noundef %8, i64 noundef %44, i64 noundef 4, ptr noundef nonnull @elem_compare) #8
  %45 = tail call i32 @fputc(i32 noundef 40, ptr noundef %1) #9
  br i1 %25, label %46, label %60

46:                                               ; preds = %43
  %47 = zext nneg i32 %24 to i64
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ 0, %46 ], [ %55, %48 ]
  %50 = icmp eq i64 %49, 0
  %51 = select i1 %50, ptr @.str, ptr @.str.1
  %52 = getelementptr inbounds i32, ptr %8, i64 %49
  %53 = load i32, ptr %52, align 4, !tbaa !62
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull %51, i32 noundef %53) #9
  %55 = add nuw nsw i64 %49, 1
  %56 = icmp eq i64 %55, %47
  br i1 %56, label %60, label %48, !llvm.loop !64

57:                                               ; preds = %19
  %58 = sext i32 %24 to i64
  tail call void @spec_qsort(ptr noundef %8, i64 noundef %58, i64 noundef 4, ptr noundef nonnull @elem_compare) #8
  %59 = tail call i32 @fputc(i32 noundef 40, ptr noundef %1) #9
  br label %60

60:                                               ; preds = %48, %57, %43
  %61 = tail call i32 @fputc(i32 noundef 41, ptr noundef %1) #9
  br label %62

62:                                               ; preds = %14, %60
  %63 = add nuw nsw i64 %15, 1
  %64 = icmp eq i64 %63, %13
  br i1 %64, label %65, label %14, !llvm.loop !65

65:                                               ; preds = %62, %2
  %66 = tail call i32 @fputc(i32 noundef 93, ptr noundef %1) #9
  tail call void @free(ptr noundef %8) #9
  tail call void @free(ptr noundef %6) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @elem_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !prof !60 !PGOFuncName !66 {
  %3 = load i32, ptr %0, align 4, !tbaa !62
  %4 = load i32, ptr %1, align 4, !tbaa !62
  %5 = icmp slt i32 %3, %4
  %6 = icmp sgt i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!38}

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
!35 = distinct !{!36, !37}
!36 = !{ptr @partition_new, ptr @xmalloc, i64 35572}
!37 = !{ptr @partition_delete, ptr @free, i64 35572}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 35572}
!40 = !{!41, !42, i64 0}
!41 = !{!"partition_def", !42, i64 0, !43, i64 8}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!"branch_weights", i32 35572, i32 1}
!46 = !{!47, !42, i64 0}
!47 = !{!"partition_elem", !42, i64 0, !48, i64 8, !42, i64 16}
!48 = !{!"any pointer", !43, i64 0}
!49 = !{!47, !48, i64 8}
!50 = !{!47, !42, i64 16}
!51 = !{!"branch_weights", i32 35572, i32 4924891}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"function_entry_count", i64 532593}
!55 = !{!"branch_weights", i32 1, i32 532594}
!56 = !{!"branch_weights", i32 105179, i32 427416}
!57 = !{!"branch_weights", i32 490343, i32 42251}
!58 = !{!"branch_weights", i32 42251, i32 0}
!59 = distinct !{!59, !53}
!60 = !{!"function_entry_count", i64 0}
!61 = !{!43, !43, i64 0}
!62 = !{!42, !42, i64 0}
!63 = distinct !{!63, !53}
!64 = distinct !{!64, !53}
!65 = distinct !{!65, !53}
!66 = !{!"partition.c:elem_compare"}
