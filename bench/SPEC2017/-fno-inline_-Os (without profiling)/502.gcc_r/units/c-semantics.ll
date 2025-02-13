; ModuleID = 'c-semantics.c'
source_filename = "c-semantics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [14 x i8] c"c-semantics.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @push_stmt_list() local_unnamed_addr #0 {
  %1 = tail call ptr @alloc_stmt_list() #5
  %2 = tail call ptr @current_stmt_tree() #5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !11
  %5 = tail call ptr @current_stmt_tree() #5
  store ptr %1, ptr %5, align 8, !tbaa !5
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @alloc_stmt_list() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @current_stmt_tree() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pop_stmt_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.tree_stmt_iterator, align 8
  %3 = tail call ptr @current_stmt_tree() #5
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %15, %1
  %6 = phi ptr [ %4, %1 ], [ %8, %15 ]
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  store ptr null, ptr %7, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load i64, ptr %6, align 8
  %12 = load i64, ptr %8, align 8
  %13 = and i64 %11, 68719476736
  %14 = or i64 %13, %12
  store i64 %14, ptr %8, align 8
  br label %15

15:                                               ; preds = %10, %5
  %16 = icmp eq ptr %6, %0
  br i1 %16, label %17, label %5

17:                                               ; preds = %15
  %18 = tail call ptr @current_stmt_tree() #5
  store ptr %8, ptr %18, align 8, !tbaa !5
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65536
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  %23 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef nonnull %0) #7
  %24 = extractvalue { ptr, ptr } %23, 0
  store ptr %24, ptr %2, align 8
  %25 = getelementptr inbounds { ptr, ptr }, ptr %2, i64 0, i32 1
  %26 = extractvalue { ptr, ptr } %23, 1
  store ptr %26, ptr %25, align 8
  %27 = tail call fastcc zeroext i8 @tsi_one_before_end_p(ptr %24) #7
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = tail call fastcc ptr @tsi_stmt(ptr %24) #7
  call void @tsi_delink(ptr noundef nonnull %2) #5
  call void @free_stmt_list(ptr noundef nonnull %0) #5
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi ptr [ %30, %29 ], [ %0, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi ptr [ %32, %31 ], [ %0, %17 ]
  ret ptr %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @tsi_one_before_end_p(ptr readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = icmp eq ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %3 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @tsi_stmt(ptr nocapture readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare void @tsi_delink(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_stmt_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_stmt(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.1) #5
  br label %9

9:                                                ; preds = %2, %8
  call void @llvm.va_start(ptr nonnull %3)
  %10 = call ptr @make_node_stat(i32 noundef %1) #5
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !16
  %12 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !11
  %13 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %4
  %14 = load i8, ptr %13, align 1, !tbaa !11
  %15 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 1
  store i32 %0, ptr %15, align 8, !tbaa !11
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %19 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %20 = zext i8 %14 to i64
  br label %21

21:                                               ; preds = %17, %49
  %22 = phi i64 [ 0, %17 ], [ %52, %49 ]
  %23 = phi i8 [ 0, %17 ], [ %50, %49 ]
  %24 = load i32, ptr %3, align 16
  %25 = icmp ult i32 %24, 41
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load ptr, ptr %19, align 16
  %28 = zext nneg i32 %24 to i64
  %29 = getelementptr i8, ptr %27, i64 %28
  %30 = add nuw nsw i32 %24, 8
  store i32 %30, ptr %3, align 16
  br label %34

31:                                               ; preds = %21
  %32 = load ptr, ptr %18, align 8
  %33 = getelementptr i8, ptr %32, i64 8
  store ptr %33, ptr %18, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi ptr [ %29, %26 ], [ %32, %31 ]
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = load i64, ptr %36, align 8
  %40 = and i64 %39, 65535
  %41 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !15
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = lshr i64 %39, 16
  %46 = trunc i64 %45 to i8
  %47 = and i8 %46, 1
  %48 = or i8 %47, %23
  br label %49

49:                                               ; preds = %44, %38, %34
  %50 = phi i8 [ %23, %38 ], [ %48, %44 ], [ %23, %34 ]
  %51 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3, i64 %22
  store ptr %36, ptr %51, align 8, !tbaa !11
  %52 = add nuw nsw i64 %22, 1
  %53 = icmp eq i64 %52, %20
  br i1 %53, label %54, label %21, !llvm.loop !17

54:                                               ; preds = %49
  %55 = zext nneg i8 %50 to i64
  %56 = shl nuw nsw i64 %55, 16
  %57 = and i64 %56, 65536
  br label %58

58:                                               ; preds = %54, %9
  %59 = phi i64 [ 0, %9 ], [ %57, %54 ]
  %60 = load i64, ptr %10, align 8
  %61 = or i64 %60, %59
  store i64 %61, ptr %10, align 8
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret ptr %10
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_case_label(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr (i32, i32, ...) @build_stmt(i32 noundef %0, i32 noundef 139, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  ret ptr %5
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"stmt_tree_s", !7, i64 0, !10, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!13, !7, i64 8}
!13 = !{!"tree_statement_list_node", !7, i64 0, !7, i64 8, !7, i64 16}
!14 = !{!13, !7, i64 16}
!15 = !{!10, !10, i64 0}
!16 = !{!7, !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
