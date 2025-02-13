; ModuleID = 'rtlhooks.c'
source_filename = "rtlhooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@general_rtl_hooks = dso_local local_unnamed_addr constant %struct.rtl_hooks { ptr @gen_lowpart_general, ptr @gen_lowpart_no_emit_general, ptr @reg_nonzero_bits_general, ptr @reg_num_sign_bit_copies_general, ptr @reg_truncated_to_mode_general }, align 8
@rtl_hooks = dso_local local_unnamed_addr global %struct.rtl_hooks { ptr @gen_lowpart_general, ptr @gen_lowpart_no_emit_general, ptr @reg_nonzero_bits_general, ptr @reg_num_sign_bit_copies_general, ptr @reg_truncated_to_mode_general }, align 8
@.str = private unnamed_addr constant [11 x i8] c"rtlhooks.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@reload_completed = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_lowpart_general(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @gen_lowpart_common(i32 noundef %0, ptr noundef %1) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %42

5:                                                ; preds = %2, %36
  %6 = phi ptr [ %37, %36 ], [ %1, %2 ]
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %14 [
    i16 37, label %9
    i16 39, label %9
    i16 43, label %16
  ]

9:                                                ; preds = %5, %5
  %10 = tail call ptr @copy_to_reg(ptr noundef nonnull %6) #3
  %11 = tail call ptr @gen_lowpart_common(i32 noundef %0, ptr noundef %10) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 51, ptr noundef nonnull @.str.1) #3
  br label %42

14:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 59, ptr noundef nonnull @.str.1) #3
  %15 = load i32, ptr %6, align 8
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi i32 [ %7, %5 ], [ %15, %14 ]
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = icmp ult i8 %22, 5
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = icmp eq i8 %26, 2
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = icmp ne i8 %26, 3
  %30 = load i32, ptr @reload_completed, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %40, label %36

33:                                               ; preds = %24
  %34 = load i32, ptr @reload_completed, align 4, !tbaa !8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28, %33
  %37 = tail call ptr @force_reg(i32 noundef %19, ptr noundef nonnull %6) #3
  %38 = tail call ptr @gen_lowpart_common(i32 noundef %0, ptr noundef %37) #3
  %39 = icmp eq ptr %38, null
  br i1 %39, label %5, label %42

40:                                               ; preds = %33, %28, %16
  %41 = tail call ptr @adjust_address_1(ptr noundef nonnull %6, i32 noundef %0, i64 noundef 0, i32 noundef 1, i32 noundef 1) #3
  br label %42

42:                                               ; preds = %36, %2, %40, %13, %9
  %43 = phi ptr [ %11, %9 ], [ null, %13 ], [ %41, %40 ], [ %3, %2 ], [ %38, %36 ]
  ret ptr %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_lowpart_no_emit_general(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @gen_lowpart_if_possible(i32 noundef %0, ptr noundef %1) #4
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr %1, ptr %3
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @reg_nonzero_bits_general(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, i32 %3, i64 %4, ptr nocapture readnone %5) #1 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @reg_num_sign_bit_copies_general(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, i32 %3, i32 %4, ptr nocapture readnone %5) #1 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @reg_truncated_to_mode_general(i32 %0, ptr nocapture readnone %1) #1 {
  ret i8 0
}

; Function Attrs: optsize
declare ptr @gen_lowpart_common(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_lowpart_if_possible(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gen_lowpart_common(i32 noundef %0, ptr noundef %1) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %36

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 43
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = tail call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef %0, i64 noundef 0, i32 noundef 0, i32 noundef 1) #3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %14, i64 0, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !10
  br label %19

19:                                               ; preds = %9, %16
  %20 = phi i8 [ %18, %16 ], [ 0, %9 ]
  %21 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %12, i8 noundef zeroext %20) #3
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr null, ptr %10
  br label %36

24:                                               ; preds = %5
  %25 = lshr i32 %6, 16
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, %0
  %28 = icmp eq i32 %26, 0
  %29 = or i1 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %26) #3
  %32 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %26, ptr noundef nonnull %1, i32 noundef %31) #3
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %0, ptr noundef nonnull %1) #3
  br label %36

36:                                               ; preds = %24, %30, %2, %34, %19
  %37 = phi ptr [ %23, %19 ], [ %35, %34 ], [ %3, %2 ], [ null, %30 ], [ null, %24 ]
  ret ptr %37
}

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_subreg(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !6, i64 32}
!11 = !{!"mem_attrs", !12, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !6, i64 32}
!12 = !{!"any pointer", !6, i64 0}
