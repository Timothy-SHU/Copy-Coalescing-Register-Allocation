; ModuleID = 'memutil.c'
source_filename = "memutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"FATAL: %s\0A\00", align 1
@nabout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"allocation failure in vector: nh = %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"allocation failure in vector()\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"allocation failure in ivector()\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"allocation failure in ipvector()\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"allocation failure 1 in matrix()\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"allocation failure 2 in matrix()\00", align 1

; Function Attrs: cold noreturn nounwind uwtable
define dso_local void @nrerror(ptr noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !41
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef %0) #10
  tail call void @exit(i32 noundef 1) #11
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noalias ptr @vector(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !45 {
  %3 = sub i64 %1, %0
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 8
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15, !prof !46

8:                                                ; preds = %2
  %9 = load ptr, ptr @nabout, align 8, !tbaa !41
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.1, i64 noundef %1)
  %11 = load ptr, ptr @nabout, align 8, !tbaa !41
  %12 = tail call i32 @fflush(ptr noundef %11)
  %13 = load ptr, ptr @stderr, align 8, !tbaa !41
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #10
  tail call void @exit(i32 noundef 1) #11
  unreachable

15:                                               ; preds = %2
  %16 = sub i64 0, %0
  %17 = getelementptr inbounds double, ptr %6, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @ivector(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !47 {
  %3 = sub i32 %1, %0
  %4 = add i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12, !prof !48

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !41
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  tail call void @exit(i32 noundef 1) #11
  unreachable

12:                                               ; preds = %2
  %13 = sext i32 %0 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds i32, ptr %7, i64 %14
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias ptr @ipvector(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !40 {
  %3 = sub i32 %1, %0
  %4 = add i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !41
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #10
  tail call void @exit(i32 noundef 1) #11
  unreachable

12:                                               ; preds = %2
  %13 = sext i32 %0 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds i32, ptr %7, i64 %14
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias nonnull ptr @matrix(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !40 {
  %5 = sub nsw i32 %1, %0
  %6 = sub nsw i32 %3, %2
  %7 = add nsw i32 %6, 1
  %8 = add nsw i32 %5, 2
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr @stderr, align 8, !tbaa !41
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  tail call void @exit(i32 noundef 1) #11
  unreachable

16:                                               ; preds = %4
  %17 = add nsw i32 %5, 1
  %18 = getelementptr inbounds ptr, ptr %11, i64 1
  %19 = sext i32 %0 to i64
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = mul nsw i32 %7, %17
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #12
  store ptr %26, ptr %18, align 8, !tbaa !41
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load ptr, ptr @stderr, align 8, !tbaa !41
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10
  tail call void @exit(i32 noundef 1) #11
  unreachable

31:                                               ; preds = %16
  %32 = getelementptr inbounds double, ptr %26, i64 1
  %33 = sext i32 %2 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds double, ptr %32, i64 %34
  store ptr %35, ptr %18, align 8, !tbaa !41
  %36 = icmp slt i32 %0, %1
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = sext i32 %7 to i64
  %39 = sext i32 %1 to i64
  %40 = load ptr, ptr %18, align 8
  br label %41

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %40, %37 ], [ %45, %41 ]
  %43 = phi i64 [ %19, %37 ], [ %44, %41 ]
  %44 = add nsw i64 %43, 1
  %45 = getelementptr inbounds double, ptr %42, i64 %38
  %46 = getelementptr inbounds ptr, ptr %21, i64 %44
  store ptr %45, ptr %46, align 8, !tbaa !41
  %47 = icmp eq i64 %44, %39
  br i1 %47, label %48, label %41, !llvm.loop !49

48:                                               ; preds = %41, %31
  ret ptr %21
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias nonnull ptr @imatrix(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !40 {
  %5 = sub nsw i32 %1, %0
  %6 = sub nsw i32 %3, %2
  %7 = add nsw i32 %6, 1
  %8 = add nsw i32 %5, 2
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr @stderr, align 8, !tbaa !41
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  tail call void @exit(i32 noundef 1) #11
  unreachable

16:                                               ; preds = %4
  %17 = add nsw i32 %5, 1
  %18 = getelementptr inbounds ptr, ptr %11, i64 1
  %19 = sext i32 %0 to i64
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = mul nsw i32 %7, %17
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #12
  store ptr %26, ptr %18, align 8, !tbaa !41
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load ptr, ptr @stderr, align 8, !tbaa !41
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10
  tail call void @exit(i32 noundef 1) #11
  unreachable

31:                                               ; preds = %16
  %32 = getelementptr inbounds i32, ptr %26, i64 1
  %33 = sext i32 %2 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  store ptr %35, ptr %18, align 8, !tbaa !41
  %36 = icmp slt i32 %0, %1
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = sext i32 %7 to i64
  %39 = sext i32 %1 to i64
  %40 = load ptr, ptr %18, align 8
  br label %41

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %40, %37 ], [ %45, %41 ]
  %43 = phi i64 [ %19, %37 ], [ %44, %41 ]
  %44 = add nsw i64 %43, 1
  %45 = getelementptr inbounds i32, ptr %42, i64 %38
  %46 = getelementptr inbounds ptr, ptr %21, i64 %44
  store ptr %45, ptr %46, align 8, !tbaa !41
  %47 = icmp eq i64 %44, %39
  br i1 %47, label %48, label %41, !llvm.loop !52

48:                                               ; preds = %41, %31
  ret ptr %21
}

; Function Attrs: cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @free_vector(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 !prof !45 {
  %4 = getelementptr inbounds double, ptr %0, i64 %1
  tail call void @free(ptr noundef %4) #13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @free_ivector(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 !prof !53 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  tail call void @free(ptr noundef %5) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @free_matrix(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !40 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds double, ptr %8, i64 %9
  %11 = getelementptr inbounds double, ptr %10, i64 -1
  tail call void @free(ptr noundef %11) #13
  %12 = getelementptr inbounds ptr, ptr %7, i64 -1
  tail call void @free(ptr noundef %12) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @free_imatrix(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !40 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = getelementptr inbounds i32, ptr %10, i64 -1
  tail call void @free(ptr noundef %11) #13
  %12 = getelementptr inbounds ptr, ptr %7, i64 -1
  tail call void @free(ptr noundef %12) #13
  ret void
}

attributes #0 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @vector, ptr @malloc, i64 7}
!36 = !{ptr @ivector, ptr @malloc, i64 310253}
!37 = !{ptr @free_vector, ptr @free, i64 7}
!38 = !{ptr @free_ivector, ptr @free, i64 297379}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!"function_entry_count", i64 7}
!46 = !{!"branch_weights", i32 0, i32 7}
!47 = !{!"function_entry_count", i64 310253}
!48 = !{!"branch_weights", i32 0, i32 310253}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !50, !51}
!53 = !{!"function_entry_count", i64 297379}
