; ModuleID = 'lambda-trans.c'
source_filename = "lambda-trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lambda_trans_matrix_s = type { ptr, i32, i32, i32 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lambda_trans_matrix_new(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #2
  %4 = tail call ptr @lambda_matrix_new(i32 noundef %1, i32 noundef %0) #2
  store ptr %4, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %3, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %3, i64 0, i32 2
  store i32 %0, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %3, i64 0, i32 3
  store i32 1, ptr %7, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lambda_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @lambda_trans_matrix_id_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !36
  %9 = tail call zeroext i8 @lambda_matrix_id_p(ptr noundef %8, i32 noundef %3) #2
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i8 [ %9, %7 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: optsize
declare zeroext i8 @lambda_matrix_id_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lambda_trans_matrix_inverse(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = tail call ptr @lambda_trans_matrix_new(i32 noundef %3, i32 noundef %5) #3
  %7 = load ptr, ptr %0, align 8, !tbaa !36
  %8 = load ptr, ptr %6, align 8, !tbaa !36
  %9 = load i32, ptr %2, align 8, !tbaa !42
  %10 = tail call i32 @lambda_matrix_inverse(ptr noundef %7, ptr noundef %8, i32 noundef %9) #2
  %11 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %6, i64 0, i32 3
  store i32 %10, ptr %11, align 8, !tbaa !44
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @lambda_matrix_inverse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_lambda_trans_matrix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  tail call void @print_lambda_matrix(ptr noundef %0, ptr noundef %3, i32 noundef %5, i32 noundef %7) #2
  ret void
}

; Function Attrs: optsize
declare void @print_lambda_matrix(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"lambda_trans_matrix_s", !38, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!37, !41, i64 8}
!43 = !{!37, !41, i64 12}
!44 = !{!37, !41, i64 16}
