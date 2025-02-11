; ModuleID = 'lambda-trans.c'
source_filename = "lambda-trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lambda_trans_matrix_s = type { ptr, i32, i32, i32 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lambda_trans_matrix_new(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #2
  %4 = tail call ptr @lambda_matrix_new(i32 noundef %1, i32 noundef %0) #2
  store ptr %4, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %3, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %3, i64 0, i32 2
  store i32 %0, ptr %6, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %3, i64 0, i32 3
  store i32 1, ptr %7, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lambda_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @lambda_trans_matrix_id_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !5
  %9 = tail call zeroext i8 @lambda_matrix_id_p(ptr noundef %8, i32 noundef %3) #2
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i8 [ %9, %7 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: optsize
declare zeroext i8 @lambda_matrix_id_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lambda_trans_matrix_inverse(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = tail call ptr @lambda_trans_matrix_new(i32 noundef %3, i32 noundef %5) #3
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  %8 = load ptr, ptr %6, align 8, !tbaa !5
  %9 = load i32, ptr %2, align 8, !tbaa !11
  %10 = tail call i32 @lambda_matrix_inverse(ptr noundef %7, ptr noundef %8, i32 noundef %9) #2
  %11 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %6, i64 0, i32 3
  store i32 %10, ptr %11, align 8, !tbaa !13
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @lambda_matrix_inverse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_lambda_trans_matrix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !12
  tail call void @print_lambda_matrix(ptr noundef %0, ptr noundef %3, i32 noundef %5, i32 noundef %7) #2
  ret void
}

; Function Attrs: optsize
declare void @print_lambda_matrix(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"lambda_trans_matrix_s", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !10, i64 12}
!13 = !{!6, !10, i64 16}
