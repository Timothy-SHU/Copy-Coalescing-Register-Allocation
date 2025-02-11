; ModuleID = 'dbgcnt.c'
source_filename = "dbgcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.string2counter_map = type { ptr, i32 }

@count = internal unnamed_addr global [38 x i32] zeroinitializer, align 16
@limit = internal unnamed_addr global [38 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"***dbgcnt: limit reached for %s.***\0A\00", align 1
@map = internal unnamed_addr constant [38 x %struct.string2counter_map] [%struct.string2counter_map { ptr @.str.1, i32 0 }, %struct.string2counter_map { ptr @.str.2, i32 1 }, %struct.string2counter_map { ptr @.str.3, i32 2 }, %struct.string2counter_map { ptr @.str.4, i32 3 }, %struct.string2counter_map { ptr @.str.5, i32 4 }, %struct.string2counter_map { ptr @.str.6, i32 5 }, %struct.string2counter_map { ptr @.str.7, i32 6 }, %struct.string2counter_map { ptr @.str.8, i32 7 }, %struct.string2counter_map { ptr @.str.9, i32 8 }, %struct.string2counter_map { ptr @.str.10, i32 9 }, %struct.string2counter_map { ptr @.str.11, i32 10 }, %struct.string2counter_map { ptr @.str.12, i32 11 }, %struct.string2counter_map { ptr @.str.13, i32 12 }, %struct.string2counter_map { ptr @.str.14, i32 13 }, %struct.string2counter_map { ptr @.str.15, i32 14 }, %struct.string2counter_map { ptr @.str.16, i32 15 }, %struct.string2counter_map { ptr @.str.17, i32 16 }, %struct.string2counter_map { ptr @.str.18, i32 17 }, %struct.string2counter_map { ptr @.str.19, i32 18 }, %struct.string2counter_map { ptr @.str.20, i32 19 }, %struct.string2counter_map { ptr @.str.21, i32 20 }, %struct.string2counter_map { ptr @.str.22, i32 21 }, %struct.string2counter_map { ptr @.str.23, i32 22 }, %struct.string2counter_map { ptr @.str.24, i32 23 }, %struct.string2counter_map { ptr @.str.25, i32 24 }, %struct.string2counter_map { ptr @.str.26, i32 25 }, %struct.string2counter_map { ptr @.str.27, i32 26 }, %struct.string2counter_map { ptr @.str.28, i32 27 }, %struct.string2counter_map { ptr @.str.29, i32 28 }, %struct.string2counter_map { ptr @.str.30, i32 29 }, %struct.string2counter_map { ptr @.str.31, i32 30 }, %struct.string2counter_map { ptr @.str.32, i32 31 }, %struct.string2counter_map { ptr @.str.33, i32 32 }, %struct.string2counter_map { ptr @.str.34, i32 33 }, %struct.string2counter_map { ptr @.str.35, i32 34 }, %struct.string2counter_map { ptr @.str.36, i32 35 }, %struct.string2counter_map { ptr @.str.37, i32 36 }, %struct.string2counter_map { ptr @.str.38, i32 37 }], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"auto_inc_dec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ccp\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cfg_cleanup\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"cse2_move2add\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cprop\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dce\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"dce_fast\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"dce_ud\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"delete_trivial_dead\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"df_byte_scan\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"dse\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dse1\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"dse2\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"gcse2_delete\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"global_alloc_at_func\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"global_alloc_at_reg\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"hoist\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"ia64_sched2\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"if_conversion\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"if_after_combine\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"if_after_reload\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"local_alloc_for_sched\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"postreload_cse\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"pre_insn\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"treepre_insert\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"sched2_func\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"sched_block\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"sched_func\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"sched_insn\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"sched_region\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"sel_sched_cnt\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"sel_sched_region_cnt\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"sel_sched_insn_cnt\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"sms_sched_loop\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"store_motion\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"split_for_sched2\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"tail_call\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%*c\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"Can not find a valid counter:value pair:\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"-fdbg-cnt=%s\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"          %s\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [24 x i8] c"dbg_cnt '%s' set to %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"  %-30s %-5s %-5s\0A\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"counter name\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"  %-30s %5d %5u\0A\00", align 1
@str = private unnamed_addr constant [47 x i8] c"----------------------------------------------\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @dbg_cnt_is_enabled(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [38 x i32], ptr @count, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = getelementptr inbounds [38 x i32], ptr @limit, i64 0, i64 %2
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = icmp ule i32 %4, %6
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local zeroext i8 @dbg_cnt(i32 noundef %0) local_unnamed_addr #1 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [38 x i32], ptr @count, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !6
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds [38 x i32], ptr @limit, i64 0, i64 %2
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = icmp eq i32 %5, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds [38 x %struct.string2counter_map], ptr @map, i64 0, i64 %2
  %14 = load ptr, ptr %13, align 16, !tbaa !12
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef %14) #9
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = tail call zeroext i8 @dbg_cnt_is_enabled(i32 noundef %0) #9, !range !14
  ret i8 %17
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dbg_cnt_process_opt(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call fastcc ptr @dbg_cnt_process_single_pair(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %8
  %5 = phi ptr [ %10, %8 ], [ %2, %1 ]
  %6 = phi ptr [ %9, %8 ], [ %0, %1 ]
  %7 = load i8, ptr %5, align 1, !tbaa !15
  switch i8 %7, label %12 [
    i8 44, label %8
    i8 0, label %22
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = tail call fastcc ptr @dbg_cnt_process_single_pair(ptr noundef nonnull %9) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4

12:                                               ; preds = %8, %4, %1
  %13 = phi ptr [ %0, %1 ], [ %6, %4 ], [ %9, %8 ]
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = sub i64 %14, %15
  %17 = add nsw i64 %16, 2
  %18 = alloca i8, i64 %17, align 16
  %19 = trunc i64 %16 to i32
  %20 = add i32 %19, 1
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %20, i32 noundef 94) #9
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.40) #10
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.41, ptr noundef %0) #10
  call void (ptr, ...) @error(ptr noundef nonnull @.str.42, ptr noundef nonnull %18) #10
  br label %22

22:                                               ; preds = %4, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc ptr @dbg_cnt_process_single_pair(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr null, ptr %2, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  %7 = call i64 @strtol(ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef 10) #9
  %8 = load ptr, ptr %2, align 8
  %9 = icmp eq ptr %8, null
  %10 = icmp eq ptr %8, %6
  %11 = or i1 %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = trunc i64 %7 to i32
  %14 = ptrtoint ptr %3 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = tail call fastcc zeroext i8 @dbg_cnt_set_limit_by_name(ptr noundef %0, i32 noundef %17, i32 noundef %13) #9, !range !14
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, ptr null, ptr %8
  br label %21

21:                                               ; preds = %12, %5, %1
  %22 = phi ptr [ null, %1 ], [ null, %5 ], [ %20, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %22
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @dbg_cnt_set_limit_by_name(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = sext i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %15
  %6 = phi i64 [ 37, %3 ], [ %16, %15 ]
  %7 = getelementptr inbounds [38 x %struct.string2counter_map], ptr @map, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 16, !tbaa !12
  %9 = tail call i32 @strncmp(ptr noundef %8, ptr noundef %0, i64 noundef %4) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %8, i64 %4
  %13 = load i8, ptr %12, align 1, !tbaa !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5, %11
  %16 = add nsw i64 %6, -1
  %17 = icmp eq i64 %6, 0
  br i1 %17, label %20, label %5, !llvm.loop !16

18:                                               ; preds = %11
  %19 = trunc i64 %6 to i32
  tail call fastcc void @dbg_cnt_set_limit_by_index(i32 noundef %19, i32 noundef %2) #9
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi i8 [ 1, %18 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dbg_cnt_set_limit_by_index(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds [38 x i32], ptr @limit, i64 0, i64 %3
  store i32 %1, ptr %4, align 4, !tbaa !6
  %5 = load ptr, ptr @stderr, align 8, !tbaa !10
  %6 = getelementptr inbounds [38 x %struct.string2counter_map], ptr @map, i64 0, i64 %3
  %7 = load ptr, ptr %6, align 16, !tbaa !12
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.43, ptr noundef %7, i32 noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dbg_cnt_list_all_counters() local_unnamed_addr #1 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #9
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ 0, %0 ], [ %15, %3 ]
  %5 = getelementptr inbounds [38 x %struct.string2counter_map], ptr @map, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 16, !tbaa !12
  %7 = getelementptr inbounds [38 x %struct.string2counter_map], ptr @map, i64 0, i64 %4, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !18
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [38 x i32], ptr @limit, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = getelementptr inbounds [38 x i32], ptr @count, i64 0, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef %6, i32 noundef %11, i32 noundef %13) #9
  %15 = add nuw nsw i64 %4, 1
  %16 = icmp eq i64 %15, 38
  br i1 %16, label %17, label %3, !llvm.loop !19

17:                                               ; preds = %3
  %18 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"string2counter_map", !11, i64 0, !7, i64 8}
!14 = !{i8 0, i8 2}
!15 = !{!8, !8, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!13, !7, i64 8}
!19 = distinct !{!19, !17}
