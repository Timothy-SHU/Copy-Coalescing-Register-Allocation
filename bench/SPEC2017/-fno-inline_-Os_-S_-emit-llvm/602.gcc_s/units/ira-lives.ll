; ModuleID = 'ira-lives.c'
source_filename = "ira-lives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.ira_allocno_iterator = type { i32 }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.ira_allocno_live_range = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.sparseset_def = type { ptr, ptr, i32, i32, i32, i8, i8, [2 x i32] }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@ira_max_point = dso_local local_unnamed_addr global i32 0, align 4
@ira_start_point_ranges = dso_local local_unnamed_addr global ptr null, align 8
@ira_finish_point_ranges = dso_local local_unnamed_addr global ptr null, align 8
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@ira_reg_class_nregs = external local_unnamed_addr global [27 x [87 x i32]], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c" [%d..%d]\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c" a%d(r%d):\00", align 1
@allocnos_live = internal unnamed_addr global ptr null, align 8
@curr_point = internal unnamed_addr global i32 0, align 4
@last_call_num = internal unnamed_addr global i32 0, align 4
@allocno_saved_at_call = internal unnamed_addr global ptr null, align 8
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@ira_reg_class_cover_size = external local_unnamed_addr global i32, align 4
@curr_reg_pressure = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_reg_class_cover = external local_unnamed_addr global [27 x i32], align 16
@high_pressure_start_point = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@curr_bb_node = internal unnamed_addr global ptr null, align 8
@hard_regs_live = internal global i64 0, align 8
@eliminable_regset = external local_unnamed_addr global i64, align 8
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@ira_class_translate = external local_unnamed_addr global [27 x i32], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@ira_reg_class_super_classes = external local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_curr_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"   Insn %u(l%d): point = %d\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ira-lives.c\00", align 1
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@ira_hard_regno_cover_class = external local_unnamed_addr global [53 x i32], align 16
@ira_class_subset_p = external local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_class_hard_regs_num = external local_unnamed_addr global [27 x i32], align 16
@ira_class_hard_reg_index = external local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_class_hard_regs = external local_unnamed_addr global [27 x [53 x i16]], align 16
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@ira_register_move_cost = external local_unnamed_addr global [87 x ptr], align 16
@recog_op_alt = external local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Ranges after the compression:\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Compressing live ranges: from %d to %d - %d%%\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_implicitly_set_insn_hard_regs(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store i64 0, ptr %0, align 8, !tbaa !6
  %2 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !10
  %3 = icmp sgt i8 %2, 0
  br i1 %3, label %4, label %72

4:                                                ; preds = %1, %67
  %5 = phi i8 [ %68, %67 ], [ %2, %1 ]
  %6 = phi i64 [ %69, %67 ], [ 0, %1 ]
  %7 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = load i32, ptr %14, align 8
  br label %16

16:                                               ; preds = %12, %4
  %17 = phi i32 [ %15, %12 ], [ %9, %4 ]
  %18 = phi ptr [ %14, %12 ], [ %8, %4 ]
  %19 = trunc i32 %17 to i16
  switch i16 %19, label %67 [
    i16 38, label %29
    i16 37, label %20
  ]

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #18
  %22 = icmp sgt i32 %21, 52
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  %24 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !13
  %25 = zext nneg i32 %21 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %16, %23
  %30 = phi i32 [ %28, %23 ], [ %17, %16 ]
  %31 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %6
  %32 = load ptr, ptr %31, align 8, !tbaa !13
  %33 = lshr i32 %30, 16
  %34 = and i32 %33, 255
  %35 = zext nneg i32 %34 to i64
  br label %36

36:                                               ; preds = %61, %29
  %37 = phi i8 [ 0, %29 ], [ %62, %61 ]
  %38 = phi ptr [ %32, %29 ], [ %64, %61 ]
  %39 = load i8, ptr %38, align 1, !tbaa !14
  switch i8 %39, label %41 [
    i8 0, label %65
    i8 35, label %61
    i8 44, label %40
  ]

40:                                               ; preds = %36
  br label %61

41:                                               ; preds = %36
  %42 = icmp eq i8 %37, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %41
  switch i8 %39, label %61 [
    i8 114, label %48
    i8 65, label %44
    i8 66, label %44
    i8 67, label %44
    i8 68, label %44
    i8 81, label %44
    i8 82, label %44
    i8 83, label %44
    i8 84, label %44
    i8 85, label %44
    i8 87, label %44
    i8 89, label %44
    i8 90, label %44
    i8 97, label %44
    i8 98, label %44
    i8 99, label %44
    i8 100, label %44
    i8 101, label %44
    i8 102, label %44
    i8 104, label %44
    i8 106, label %44
    i8 107, label %44
    i8 108, label %44
    i8 113, label %44
    i8 116, label %44
    i8 117, label %44
    i8 118, label %44
    i8 119, label %44
    i8 120, label %44
    i8 121, label %44
    i8 122, label %44
  ]

44:                                               ; preds = %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43
  %45 = tail call i32 @lookup_constraint(ptr noundef nonnull %38) #19
  %46 = tail call i32 @regclass_for_constraint(i32 noundef %45) #19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %43, %44
  %49 = phi i32 [ %46, %44 ], [ 13, %43 ]
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !15
  %53 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %50, i64 %35
  %54 = load i32, ptr %53, align 4, !tbaa !15
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %50
  %58 = load i64, ptr %57, align 8, !tbaa !6
  %59 = load i64, ptr %0, align 8, !tbaa !6
  %60 = or i64 %59, %58
  store i64 %60, ptr %0, align 8, !tbaa !6
  br label %61

61:                                               ; preds = %43, %36, %41, %44, %48, %56, %40
  %62 = phi i8 [ 0, %40 ], [ 1, %41 ], [ 0, %43 ], [ 0, %56 ], [ 0, %48 ], [ 0, %44 ], [ 1, %36 ]
  %63 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %39) #18
  %64 = getelementptr inbounds i8, ptr %38, i64 %63
  br label %36, !llvm.loop !17

65:                                               ; preds = %36
  %66 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !10
  br label %67

67:                                               ; preds = %65, %16, %20
  %68 = phi i8 [ %5, %20 ], [ %5, %16 ], [ %66, %65 ]
  %69 = add nuw nsw i64 %6, 1
  %70 = sext i8 %68 to i64
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %4, label %72, !llvm.loop !19

72:                                               ; preds = %67, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !14
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #4 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
  ret i64 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_rebuild_start_finish_chains() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !13
  tail call void @ira_free(ptr noundef %1) #19
  %2 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !13
  tail call void @ira_free(ptr noundef %2) #19
  tail call fastcc void @create_start_finish_chains() #18
  ret void
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_start_finish_chains() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %3 = load i32, ptr @ira_max_point, align 4, !tbaa !15
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #19
  store ptr %6, ptr @ira_start_point_ranges, align 8, !tbaa !13
  %7 = load i32, ptr @ira_max_point, align 4, !tbaa !15
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %9, i1 false)
  %10 = load i32, ptr @ira_max_point, align 4, !tbaa !15
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr @ira_allocate(i64 noundef %12) #19
  store ptr %13, ptr @ira_finish_point_ranges, align 8, !tbaa !13
  %14 = load i32, ptr @ira_max_point, align 4, !tbaa !15
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %16, i1 false)
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #18
  %17 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %46, label %22

19:                                               ; preds = %27, %22
  %20 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %46, label %22, !llvm.loop !21

22:                                               ; preds = %0, %19
  %23 = load ptr, ptr %1, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %19, label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %44, %27 ], [ %25, %22 ]
  %29 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !22
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %29, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !24
  store ptr %28, ptr %33, align 8, !tbaa !13
  %36 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !13
  %37 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !25
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 5
  store ptr %41, ptr %42, align 8, !tbaa !26
  store ptr %28, ptr %40, align 8, !tbaa !13
  %43 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %19, label %27, !llvm.loop !27

46:                                               ; preds = %19, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #6 {
  store i32 0, ptr %0, align 4, !tbaa !28
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 4, !tbaa !28
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !15
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !13
  %8 = sext i32 %3 to i64
  %9 = sext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %18
  %11 = phi i64 [ %8, %6 ], [ %19, %18 ]
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = trunc i64 %11 to i32
  store ptr %13, ptr %1, align 8, !tbaa !13
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %0, align 4, !tbaa !28
  br label %21

18:                                               ; preds = %10
  %19 = add nsw i64 %11, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %21, label %10, !llvm.loop !30

21:                                               ; preds = %18, %2, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %2 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_print_live_range_list(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %12, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !25
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !32

14:                                               ; preds = %4, %2
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_live_range_list(ptr noundef %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !13
  tail call void @ira_print_live_range_list(ptr noundef %2, ptr noundef %0) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_allocno_live_ranges(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !13
  tail call fastcc void @print_allocno_live_ranges(ptr noundef %2, ptr noundef %0) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_allocno_live_ranges(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = load i32, ptr %1, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !35
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %3, i32 noundef %5) #18
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  tail call void @ira_print_live_range_list(ptr noundef %0, ptr noundef %8) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_live_ranges() local_unnamed_addr #8 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !13
  tail call fastcc void @print_live_ranges(ptr noundef %1) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_live_ranges(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #18
  %4 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1, %6
  %7 = load ptr, ptr %2, align 8, !tbaa !13
  tail call fastcc void @print_allocno_live_ranges(ptr noundef %0, ptr noundef %7) #18
  %8 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %6, !llvm.loop !37

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_create_allocno_live_ranges() local_unnamed_addr #0 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !15
  %2 = tail call ptr @sparseset_alloc(i32 noundef %1) #19
  store ptr %2, ptr @allocnos_live, align 8, !tbaa !13
  store i32 0, ptr @curr_point, align 4, !tbaa !15
  store i32 0, ptr @last_call_num, align 4, !tbaa !15
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !15
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #19
  store ptr %6, ptr @allocno_saved_at_call, align 8, !tbaa !13
  %7 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !15
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %9, i1 false)
  %10 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !13
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %10, ptr noundef null, ptr noundef nonnull @process_bb_node_lives) #19
  %11 = load i32, ptr @curr_point, align 4, !tbaa !15
  store i32 %11, ptr @ira_max_point, align 4, !tbaa !15
  tail call fastcc void @create_start_finish_chains() #18
  %12 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !15
  %13 = icmp sgt i32 %12, 2
  %14 = load ptr, ptr @ira_dump_file, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  tail call fastcc void @print_live_ranges(ptr noundef nonnull %14) #18
  br label %18

18:                                               ; preds = %17, %0
  %19 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !13
  tail call void @ira_free(ptr noundef %19) #19
  %20 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  tail call void @free(ptr noundef %20) #18
  ret void
}

; Function Attrs: optsize
declare ptr @sparseset_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @process_bb_node_lives(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %446, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !15
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %13 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !15
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %15
  store i32 0, ptr %16, align 4, !tbaa !15
  %17 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %15
  store i32 -1, ptr %17, align 4, !tbaa !15
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %10
  br i1 %19, label %20, label %11, !llvm.loop !40

20:                                               ; preds = %11, %6
  store ptr %0, ptr @curr_bb_node, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !41
  %23 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %22) #18
  %24 = getelementptr inbounds %struct.df_lr_bb_info, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  tail call fastcc void @sparseset_clear(ptr noundef %26) #18
  store i64 0, ptr @hard_regs_live, align 8, !tbaa !6
  tail call void @reg_set_to_hard_reg_set(ptr noundef nonnull @hard_regs_live, ptr noundef %25) #19
  %27 = load i64, ptr @eliminable_regset, align 8, !tbaa !6
  %28 = load i64, ptr @hard_regs_live, align 8, !tbaa !6
  %29 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !6
  %30 = or i64 %27, %29
  %31 = xor i64 %30, -1
  %32 = and i64 %28, %31
  store i64 %32, ptr @hard_regs_live, align 8, !tbaa !6
  %33 = load ptr, ptr @curr_bb_node, align 8
  br label %34

34:                                               ; preds = %20, %67
  %35 = phi i64 [ 0, %20 ], [ %69, %67 ]
  %36 = phi i32 [ undef, %20 ], [ %68, %67 ]
  %37 = shl nuw nsw i64 1, %35
  %38 = and i64 %37, %32
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %35
  %42 = load i32, ptr %41, align 4, !tbaa !15
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !15
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %46, i64 0
  %48 = load i32, ptr %47, align 4, !tbaa !15
  %49 = icmp eq i32 %48, 27
  br i1 %49, label %67, label %50

50:                                               ; preds = %40, %61
  %51 = phi i32 [ %65, %61 ], [ %48, %40 ]
  %52 = phi i32 [ %62, %61 ], [ 0, %40 ]
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !15
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !15
  %57 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %33, i64 0, i32 11, i64 %53
  %58 = load i32, ptr %57, align 4, !tbaa !15
  %59 = icmp sgt i32 %58, %55
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  store i32 %56, ptr %57, align 4, !tbaa !15
  br label %61

61:                                               ; preds = %50, %60
  %62 = add i32 %52, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %46, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !15
  %66 = icmp eq i32 %65, 27
  br i1 %66, label %67, label %50, !llvm.loop !45

67:                                               ; preds = %61, %40, %34
  %68 = phi i32 [ %36, %34 ], [ 0, %40 ], [ %62, %61 ]
  %69 = add nuw nsw i64 %35, 1
  %70 = icmp eq i64 %69, 53
  br i1 %70, label %71, label %34, !llvm.loop !46

71:                                               ; preds = %67
  store i32 %68, ptr %2, align 4, !tbaa !15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %25, i32 noundef 53, ptr noundef nonnull %2) #18
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !20
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !13
  br label %76

76:                                               ; preds = %74, %85
  %77 = phi ptr [ %75, %74 ], [ %86, %85 ]
  %78 = load i32, ptr %2, align 4, !tbaa !15
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !13
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %76
  tail call fastcc void @set_allocno_live(ptr noundef nonnull %81) #18
  tail call fastcc void @make_regno_born(i32 noundef %78) #18
  %84 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !13
  br label %85

85:                                               ; preds = %76, %83
  %86 = phi ptr [ %77, %76 ], [ %84, %83 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !20
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %76, !llvm.loop !47

89:                                               ; preds = %85, %71
  %90 = load i32, ptr @optimize_size, align 4, !tbaa !15
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !15
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr @cfun, align 8, !tbaa !13
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !48
  %99 = load ptr, ptr %98, align 8, !tbaa !50
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 8
  %101 = load i64, ptr %100, align 8, !tbaa !52
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %95, %92
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 11
  %105 = load i32, ptr %104, align 8, !tbaa !53
  %106 = add i32 %105, 9
  %107 = icmp ult i32 %106, 19
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = sdiv i32 %105, 10
  br label %110

110:                                              ; preds = %108, %103, %89, %95
  %111 = phi i32 [ 1000, %95 ], [ 1000, %89 ], [ %109, %108 ], [ 1, %103 ]
  %112 = tail call i32 @llvm.umax.i32(i32 %111, i32 1)
  %113 = load i32, ptr @last_call_num, align 4, !tbaa !15
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr @last_call_num, align 4, !tbaa !15
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %116 = load ptr, ptr %115, align 8, !tbaa !14
  %117 = getelementptr inbounds %struct.rtl_bb_info, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !14
  %119 = icmp eq ptr %118, null
  br i1 %119, label %379, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  br label %122

122:                                              ; preds = %120, %375
  %123 = phi ptr [ %118, %120 ], [ %377, %375 ]
  %124 = load ptr, ptr %115, align 8, !tbaa !14
  %125 = load ptr, ptr %124, align 8, !tbaa !54
  %126 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !14
  %128 = icmp eq ptr %123, %127
  br i1 %128, label %379, label %129

129:                                              ; preds = %122
  %130 = load i32, ptr %123, align 8
  %131 = and i32 %130, 65535
  %132 = add nsw i32 %131, -11
  %133 = icmp ult i32 %132, -3
  br i1 %133, label %375, label %134

134:                                              ; preds = %129
  %135 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !15
  %136 = icmp sgt i32 %135, 2
  %137 = load ptr, ptr @ira_dump_file, align 8
  %138 = icmp ne ptr %137, null
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !14
  %143 = load ptr, ptr %121, align 8, !tbaa !56
  %144 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !57
  %146 = load i32, ptr %145, align 8, !tbaa !58
  %147 = load i32, ptr @curr_point, align 4, !tbaa !15
  %148 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %137, ptr noundef nonnull @.str.3, i32 noundef %142, i32 noundef %146, i32 noundef %147) #18
  %149 = load i32, ptr %123, align 8
  br label %150

150:                                              ; preds = %140, %134
  %151 = phi i32 [ %149, %140 ], [ %130, %134 ]
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 10
  %154 = load ptr, ptr @df, align 8, !tbaa !13
  %155 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 10
  %156 = load ptr, ptr %155, align 8, !tbaa !62
  %157 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !14
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %156, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !13
  %162 = getelementptr inbounds %struct.df_insn_info, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !65
  %164 = load ptr, ptr %163, align 8, !tbaa !13
  %165 = icmp eq ptr %164, null
  br i1 %165, label %178, label %166

166:                                              ; preds = %150, %174
  %167 = phi ptr [ %176, %174 ], [ %164, %150 ]
  %168 = phi ptr [ %175, %174 ], [ %163, %150 ]
  br i1 %153, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32, ptr %167, align 8
  %171 = and i32 %170, 4194304
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %166
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %167) #18
  br label %174

174:                                              ; preds = %169, %173
  %175 = getelementptr inbounds ptr, ptr %168, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !13
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %166, !llvm.loop !67

178:                                              ; preds = %174, %150
  %179 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !14
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 65535
  %183 = icmp eq i32 %182, 15
  br i1 %183, label %184, label %235

184:                                              ; preds = %178
  %185 = tail call i32 @multiple_sets(ptr noundef nonnull %123) #19
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %235, label %187

187:                                              ; preds = %184
  %188 = load ptr, ptr @df, align 8, !tbaa !13
  %189 = getelementptr inbounds %struct.df, ptr %188, i64 0, i32 10
  %190 = load ptr, ptr %189, align 8, !tbaa !62
  %191 = load i32, ptr %157, align 8, !tbaa !14
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %190, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !13
  %195 = getelementptr inbounds %struct.df_insn_info, ptr %194, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !68
  %197 = load ptr, ptr %196, align 8, !tbaa !13
  %198 = icmp eq ptr %197, null
  br i1 %198, label %235, label %199

199:                                              ; preds = %187, %231
  %200 = phi ptr [ %233, %231 ], [ %197, %187 ]
  %201 = phi ptr [ %232, %231 ], [ %196, %187 ]
  %202 = getelementptr inbounds %struct.df_base_ref, ptr %200, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !14
  %204 = load ptr, ptr %179, align 8, !tbaa !14
  %205 = getelementptr inbounds %struct.rtx_def, ptr %204, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !14
  %207 = load i32, ptr %206, align 8, !tbaa !69
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %199
  %210 = zext nneg i32 %207 to i64
  br label %211

211:                                              ; preds = %209, %229
  %212 = phi i64 [ %210, %209 ], [ %213, %229 ]
  %213 = add nsw i64 %212, -1
  %214 = load ptr, ptr %179, align 8, !tbaa !14
  %215 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !14
  %217 = getelementptr inbounds %struct.rtvec_def, ptr %216, i64 0, i32 1, i64 %213
  %218 = load ptr, ptr %217, align 8, !tbaa !13
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 65535
  %221 = icmp eq i32 %220, 23
  br i1 %221, label %222, label %229

222:                                              ; preds = %211
  %223 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !14
  %225 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %203, ptr noundef %224) #19
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %222
  %228 = load ptr, ptr %201, align 8, !tbaa !13
  tail call fastcc void @mark_ref_live(ptr noundef %228) #18
  br label %231

229:                                              ; preds = %211, %222
  %230 = icmp ugt i64 %212, 1
  br i1 %230, label %211, label %231, !llvm.loop !71

231:                                              ; preds = %229, %199, %227
  %232 = getelementptr inbounds ptr, ptr %201, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !13
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %199, !llvm.loop !72

235:                                              ; preds = %231, %187, %184, %178
  tail call void @extract_insn(ptr noundef nonnull %123) #19
  tail call void @preprocess_constraints() #19
  tail call fastcc void @process_single_reg_class_operands(i8 noundef zeroext 0, i32 noundef %112) #18
  %236 = load ptr, ptr @df, align 8, !tbaa !13
  %237 = getelementptr inbounds %struct.df, ptr %236, i64 0, i32 10
  %238 = load ptr, ptr %237, align 8, !tbaa !62
  %239 = load i32, ptr %157, align 8, !tbaa !14
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds ptr, ptr %238, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !13
  %243 = getelementptr inbounds %struct.df_insn_info, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !65
  %245 = load ptr, ptr %244, align 8, !tbaa !13
  %246 = icmp eq ptr %245, null
  br i1 %246, label %259, label %247

247:                                              ; preds = %235, %255
  %248 = phi ptr [ %257, %255 ], [ %245, %235 ]
  %249 = phi ptr [ %256, %255 ], [ %244, %235 ]
  br i1 %153, label %250, label %254

250:                                              ; preds = %247
  %251 = load i32, ptr %248, align 8
  %252 = and i32 %251, 4194304
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %250, %247
  tail call fastcc void @mark_ref_dead(ptr noundef nonnull %248) #18
  br label %255

255:                                              ; preds = %250, %254
  %256 = getelementptr inbounds ptr, ptr %249, i64 1
  %257 = load ptr, ptr %256, align 8, !tbaa !13
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %247, !llvm.loop !73

259:                                              ; preds = %255, %235
  br i1 %153, label %260, label %311

260:                                              ; preds = %259
  %261 = load i32, ptr @last_call_num, align 4, !tbaa !15
  %262 = add nsw i32 %261, 1
  store i32 %262, ptr @last_call_num, align 4, !tbaa !15
  %263 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  tail call fastcc void @sparseset_iter_init(ptr noundef %263) #18
  %264 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %263) #18, !range !20
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %311, label %266

266:                                              ; preds = %260, %307
  %267 = phi ptr [ %308, %307 ], [ %263, %260 ]
  %268 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %267) #18
  %269 = load ptr, ptr @ira_allocnos, align 8, !tbaa !13
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds ptr, ptr %269, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !13
  %273 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !13
  %274 = getelementptr inbounds i32, ptr %273, i64 %270
  %275 = load i32, ptr %274, align 4, !tbaa !15
  %276 = load i32, ptr @last_call_num, align 4, !tbaa !15
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %282, label %278

278:                                              ; preds = %266
  %279 = getelementptr inbounds %struct.ira_allocno, ptr %272, i64 0, i32 29
  %280 = load i32, ptr %279, align 4, !tbaa !74
  %281 = add nsw i32 %280, %112
  store i32 %281, ptr %279, align 4, !tbaa !74
  br label %282

282:                                              ; preds = %278, %266
  %283 = add nsw i32 %276, 1
  store i32 %283, ptr %274, align 4, !tbaa !15
  %284 = getelementptr inbounds %struct.ira_allocno, ptr %272, i64 0, i32 30
  %285 = load i32, ptr %284, align 8, !tbaa !75
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %284, align 8, !tbaa !75
  %287 = load ptr, ptr @cfun, align 8, !tbaa !13
  %288 = getelementptr inbounds %struct.function, ptr %287, i64 0, i32 20
  %289 = load i32, ptr %288, align 8
  %290 = and i32 %289, 1048576
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %282
  %293 = tail call ptr @find_reg_note(ptr noundef nonnull %123, i32 noundef 30, ptr noundef null) #19
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295

295:                                              ; preds = %292, %282
  %296 = getelementptr inbounds %struct.ira_allocno, ptr %272, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %296, i8 -1, i64 16, i1 false)
  br label %297

297:                                              ; preds = %295, %292
  %298 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %123) #19
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %297
  %301 = load i64, ptr @call_used_reg_set, align 8, !tbaa !6
  %302 = getelementptr inbounds %struct.ira_allocno, ptr %272, i64 0, i32 26
  %303 = load <2 x i64>, ptr %302, align 8, !tbaa !6
  %304 = insertelement <2 x i64> poison, i64 %301, i64 0
  %305 = shufflevector <2 x i64> %304, <2 x i64> poison, <2 x i32> zeroinitializer
  %306 = or <2 x i64> %303, %305
  store <2 x i64> %306, ptr %302, align 8, !tbaa !6
  br label %307

307:                                              ; preds = %300, %297
  %308 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  tail call fastcc void @sparseset_iter_next(ptr noundef %308) #18
  %309 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %308) #18, !range !20
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %266, !llvm.loop !76

311:                                              ; preds = %307, %260, %259
  tail call fastcc void @make_early_clobber_and_input_conflicts() #18
  %312 = load i32, ptr @curr_point, align 4, !tbaa !15
  %313 = add nsw i32 %312, 1
  store i32 %313, ptr @curr_point, align 4, !tbaa !15
  %314 = load ptr, ptr @df, align 8, !tbaa !13
  %315 = getelementptr inbounds %struct.df, ptr %314, i64 0, i32 10
  %316 = load ptr, ptr %315, align 8, !tbaa !62
  %317 = load i32, ptr %157, align 8, !tbaa !14
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds ptr, ptr %316, i64 %318
  %320 = load ptr, ptr %319, align 8, !tbaa !13
  %321 = getelementptr inbounds %struct.df_insn_info, ptr %320, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !68
  %323 = load ptr, ptr %322, align 8, !tbaa !13
  %324 = icmp eq ptr %323, null
  br i1 %324, label %331, label %325

325:                                              ; preds = %311, %325
  %326 = phi ptr [ %329, %325 ], [ %323, %311 ]
  %327 = phi ptr [ %328, %325 ], [ %322, %311 ]
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %326) #18
  %328 = getelementptr inbounds ptr, ptr %327, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !13
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %325, !llvm.loop !77

331:                                              ; preds = %325, %311
  tail call fastcc void @process_single_reg_class_operands(i8 noundef zeroext 1, i32 noundef %112) #18
  %332 = tail call fastcc zeroext i8 @mark_hard_reg_early_clobbers(ptr noundef nonnull %123, i8 noundef zeroext 1) #18, !range !20
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %372, label %334

334:                                              ; preds = %331
  %335 = tail call fastcc zeroext i8 @mark_hard_reg_early_clobbers(ptr noundef nonnull %123, i8 noundef zeroext 0) #18, !range !20
  %336 = load ptr, ptr @df, align 8, !tbaa !13
  %337 = getelementptr inbounds %struct.df, ptr %336, i64 0, i32 10
  %338 = load ptr, ptr %337, align 8, !tbaa !62
  %339 = load i32, ptr %157, align 8, !tbaa !14
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds ptr, ptr %338, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !13
  %343 = getelementptr inbounds %struct.df_insn_info, ptr %342, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !68
  %345 = load ptr, ptr %344, align 8, !tbaa !13
  %346 = icmp eq ptr %345, null
  br i1 %346, label %372, label %347

347:                                              ; preds = %334, %368
  %348 = phi ptr [ %370, %368 ], [ %345, %334 ]
  %349 = phi ptr [ %369, %368 ], [ %344, %334 ]
  %350 = getelementptr inbounds %struct.df_base_ref, ptr %348, i64 0, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !14
  %352 = load i32, ptr %351, align 8
  %353 = and i32 %352, 65535
  %354 = icmp eq i32 %353, 39
  br i1 %354, label %355, label %359

355:                                              ; preds = %347
  %356 = getelementptr inbounds %struct.rtx_def, ptr %351, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !14
  %358 = load i32, ptr %357, align 8
  br label %359

359:                                              ; preds = %355, %347
  %360 = phi i32 [ %358, %355 ], [ %352, %347 ]
  %361 = phi ptr [ %357, %355 ], [ %351, %347 ]
  %362 = and i32 %360, 65535
  %363 = icmp eq i32 %362, 37
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %361) #18
  %366 = icmp ugt i32 %365, 52
  br i1 %366, label %368, label %367

367:                                              ; preds = %364
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %348) #18
  br label %368

368:                                              ; preds = %359, %364, %367
  %369 = getelementptr inbounds ptr, ptr %349, i64 1
  %370 = load ptr, ptr %369, align 8, !tbaa !13
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %347, !llvm.loop !78

372:                                              ; preds = %368, %334, %331
  %373 = load i32, ptr @curr_point, align 4, !tbaa !15
  %374 = add nsw i32 %373, 1
  store i32 %374, ptr @curr_point, align 4, !tbaa !15
  br label %375

375:                                              ; preds = %129, %372
  %376 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  %377 = load ptr, ptr %376, align 8, !tbaa !14
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %122, !llvm.loop !79

379:                                              ; preds = %122, %375, %110
  %380 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef nonnull %4) #18, !range !20
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %379
  tail call fastcc void @make_regno_born(i32 noundef 0) #18
  tail call fastcc void @make_regno_born(i32 noundef 1) #18
  br label %383

383:                                              ; preds = %382, %379
  %384 = tail call fastcc zeroext i8 @bb_has_abnormal_pred(ptr noundef nonnull %4) #18, !range !20
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %429, label %386

386:                                              ; preds = %383
  %387 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  tail call fastcc void @sparseset_iter_init(ptr noundef %387) #18
  %388 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %387) #18, !range !20
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %405, label %390

390:                                              ; preds = %386, %390
  %391 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %387) #18
  %392 = load ptr, ptr @ira_allocnos, align 8, !tbaa !13
  %393 = zext i32 %391 to i64
  %394 = getelementptr inbounds ptr, ptr %392, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !13
  %396 = getelementptr inbounds %struct.ira_allocno, ptr %395, i64 0, i32 31
  %397 = load i16, ptr %396, align 4
  %398 = or i16 %397, 16
  store i16 %398, ptr %396, align 4
  %399 = load ptr, ptr %394, align 8, !tbaa !13
  %400 = getelementptr inbounds %struct.ira_allocno, ptr %399, i64 0, i32 31
  %401 = load i16, ptr %400, align 4
  %402 = or i16 %401, 32
  store i16 %402, ptr %400, align 4
  tail call fastcc void @sparseset_iter_next(ptr noundef %387) #18
  %403 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %387) #18, !range !20
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %405, label %390, !llvm.loop !80

405:                                              ; preds = %390, %386
  br label %406

406:                                              ; preds = %405, %406
  %407 = phi i32 [ %408, %406 ], [ 8, %405 ]
  tail call fastcc void @make_regno_born(i32 noundef %407) #18
  %408 = add nuw nsw i32 %407, 1
  %409 = icmp eq i32 %408, 16
  br i1 %409, label %410, label %406, !llvm.loop !81

410:                                              ; preds = %406
  %411 = load ptr, ptr @cfun, align 8, !tbaa !13
  %412 = getelementptr inbounds %struct.function, ptr %411, i64 0, i32 20
  %413 = load i32, ptr %412, align 8
  %414 = and i32 %413, 1048576
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %429

416:                                              ; preds = %410
  %417 = tail call fastcc zeroext i8 @bb_has_abnormal_call_pred(ptr noundef nonnull %4) #18, !range !20
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %429, label %419

419:                                              ; preds = %416, %426
  %420 = phi i64 [ %427, %426 ], [ 0, %416 ]
  %421 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %420
  %422 = load i8, ptr %421, align 1, !tbaa !14
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %419
  %425 = trunc i64 %420 to i32
  tail call fastcc void @make_regno_born(i32 noundef %425) #18
  br label %426

426:                                              ; preds = %419, %424
  %427 = add nuw nsw i64 %420, 1
  %428 = icmp eq i64 %427, 53
  br i1 %428, label %429, label %419, !llvm.loop !82

429:                                              ; preds = %426, %410, %416, %383
  %430 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  tail call fastcc void @sparseset_iter_init(ptr noundef %430) #18
  %431 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %430) #18, !range !20
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %443, label %433

433:                                              ; preds = %429, %433
  %434 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %430) #18
  %435 = load ptr, ptr @ira_allocnos, align 8, !tbaa !13
  %436 = sext i32 %434 to i64
  %437 = getelementptr inbounds ptr, ptr %435, i64 %436
  %438 = load ptr, ptr %437, align 8, !tbaa !13
  %439 = getelementptr inbounds %struct.ira_allocno, ptr %438, i64 0, i32 1
  %440 = load i32, ptr %439, align 4, !tbaa !35
  tail call fastcc void @make_regno_dead(i32 noundef %440) #18
  tail call fastcc void @sparseset_iter_next(ptr noundef %430) #18
  %441 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %430) #18, !range !20
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %443, label %433, !llvm.loop !83

443:                                              ; preds = %433, %429
  %444 = load i32, ptr @curr_point, align 4, !tbaa !15
  %445 = add nsw i32 %444, 1
  store i32 %445, ptr @curr_point, align 4, !tbaa !15
  br label %446

446:                                              ; preds = %443, %1
  %447 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !13
  %448 = icmp ne ptr %447, %0
  %449 = load i32, ptr @ira_reg_class_cover_size, align 4
  %450 = icmp sgt i32 %449, 0
  %451 = select i1 %448, i1 %450, i1 false
  br i1 %451, label %452, label %473

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %454 = load ptr, ptr %453, align 8, !tbaa !56
  br label %455

455:                                              ; preds = %452, %468
  %456 = phi i32 [ %449, %452 ], [ %469, %468 ]
  %457 = phi i64 [ 0, %452 ], [ %470, %468 ]
  %458 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !15
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !15
  %463 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %454, i64 0, i32 11, i64 %460
  %464 = load i32, ptr %463, align 4, !tbaa !15
  %465 = icmp sgt i32 %462, %464
  br i1 %465, label %466, label %468

466:                                              ; preds = %455
  store i32 %462, ptr %463, align 4, !tbaa !15
  %467 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !15
  br label %468

468:                                              ; preds = %466, %455
  %469 = phi i32 [ %467, %466 ], [ %456, %455 ]
  %470 = add nuw nsw i64 %457, 1
  %471 = sext i32 %469 to i64
  %472 = icmp slt i64 %470, %471
  br i1 %472, label %455, label %473, !llvm.loop !84

473:                                              ; preds = %468, %446
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr @df, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !85
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_clear(ptr nocapture noundef writeonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !88
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 0, ptr %3, align 1, !tbaa !90
  ret void
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = load ptr, ptr %1, align 8, !tbaa !91
  store ptr %5, ptr %0, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !95
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !93
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %12, 7
  %15 = select i1 %13, i32 %2, i32 %14
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !98
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %23 = and i32 %15, 63
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %21, %24
  store i64 %25, ptr %22, align 8, !tbaa !99
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add i32 %15, %27
  store i32 %28, ptr %3, align 4, !tbaa !15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !99
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !15
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !100

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !15
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !15
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !98
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !93
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !98
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !6
  store i64 %35, ptr %3, align 8, !tbaa !99
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !15
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !15
  %40 = load i32, ptr %23, align 8, !tbaa !98
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !98
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !101

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !102
  store ptr %44, ptr %0, align 8, !tbaa !93
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !96
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !15
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !99
  store i32 %16, ptr %1, align 4, !tbaa !15
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_allocno_live(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !13
  %3 = load i32, ptr %0, align 8, !tbaa !33
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %2, i64 %4
  store i32 0, ptr %5, align 4, !tbaa !15
  %6 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  %7 = load i32, ptr %0, align 8, !tbaa !33
  %8 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %6, i32 noundef %7) #18, !range !20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %1
  %11 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  %12 = load i32, ptr %0, align 8, !tbaa !33
  tail call fastcc void @sparseset_set_bit(ptr noundef %11, i32 noundef %12) #18
  %13 = load i64, ptr @hard_regs_live, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %15 = load <2 x i64>, ptr %14, align 8, !tbaa !6
  %16 = insertelement <2 x i64> poison, i64 %13, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  %18 = or <2 x i64> %15, %17
  store <2 x i64> %18, ptr %14, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !103
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %21, i64 0
  %23 = load i32, ptr %22, align 4, !tbaa !15
  %24 = icmp eq i32 %23, 27
  br i1 %24, label %58, label %25

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %27 = load i32, ptr @curr_point, align 4
  %28 = load ptr, ptr @curr_bb_node, align 8, !tbaa !13
  br label %29

29:                                               ; preds = %25, %53
  %30 = phi i64 [ 0, %25 ], [ %54, %53 ]
  %31 = phi i32 [ %23, %25 ], [ %56, %53 ]
  %32 = zext i32 %31 to i64
  %33 = load i32, ptr %26, align 8, !tbaa !104
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %32, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !15
  %37 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %32
  %38 = load i32, ptr %37, align 4, !tbaa !15
  %39 = add nsw i32 %38, %36
  store i32 %39, ptr %37, align 4, !tbaa !15
  %40 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %32
  %41 = load i32, ptr %40, align 4, !tbaa !15
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %32
  %45 = load i32, ptr %44, align 4, !tbaa !15
  %46 = icmp sgt i32 %39, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 %27, ptr %40, align 4, !tbaa !15
  br label %48

48:                                               ; preds = %47, %43, %29
  %49 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 11, i64 %32
  %50 = load i32, ptr %49, align 4, !tbaa !15
  %51 = icmp slt i32 %50, %39
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 %39, ptr %49, align 4, !tbaa !15
  br label %53

53:                                               ; preds = %48, %52
  %54 = add nuw nsw i64 %30, 1
  %55 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %21, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !15
  %57 = icmp eq i32 %56, 27
  br i1 %57, label %58, label %29, !llvm.loop !105

58:                                               ; preds = %53, %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_regno_born(i32 noundef %0) unnamed_addr #0 {
  %2 = icmp slt i32 %0, 53
  br i1 %2, label %3, label %25

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl nuw i64 1, %4
  %6 = load i64, ptr @hard_regs_live, align 8, !tbaa !6
  %7 = or i64 %6, %5
  store i64 %7, ptr @hard_regs_live, align 8, !tbaa !6
  %8 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  tail call fastcc void @sparseset_iter_init(ptr noundef %8) #18
  %9 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %8) #18, !range !20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %3
  %12 = insertelement <2 x i64> poison, i64 %5, i64 0
  %13 = shufflevector <2 x i64> %12, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %11, %14
  %15 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %8) #18
  %16 = load ptr, ptr @ira_allocnos, align 8, !tbaa !13
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 26
  %21 = load <2 x i64>, ptr %20, align 8, !tbaa !6
  %22 = or <2 x i64> %21, %13
  store <2 x i64> %22, ptr %20, align 8, !tbaa !6
  tail call fastcc void @sparseset_iter_next(ptr noundef %8) #18
  %23 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %8) #18, !range !20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %45, label %14, !llvm.loop !106

25:                                               ; preds = %1
  %26 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !13
  %27 = zext nneg i32 %0 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = icmp eq ptr %33, null
  %35 = load i32, ptr @curr_point, align 4, !tbaa !15
  br i1 %34, label %43, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %33, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !25
  %39 = icmp eq i32 %38, %35
  %40 = add nsw i32 %38, 1
  %41 = icmp eq i32 %40, %35
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %36, %31
  %44 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %29, i32 noundef %35, i32 noundef -1, ptr noundef %33) #19
  store ptr %44, ptr %32, align 8, !tbaa !36
  br label %45

45:                                               ; preds = %14, %3, %36, %43, %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !99
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !99
  %6 = load i32, ptr %1, align 4, !tbaa !15
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_ref_live(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %3, %1 ]
  tail call fastcc void @mark_reg_live(ptr noundef %11) #18
  ret void
}

; Function Attrs: optsize
declare i32 @multiple_sets(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @preprocess_constraints() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_single_reg_class_operands(i8 noundef zeroext %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !10
  %4 = icmp sgt i8 %3, 0
  br i1 %4, label %5, label %149

5:                                                ; preds = %2
  %6 = icmp eq i8 %0, 0
  br label %7

7:                                                ; preds = %5, %144
  %8 = phi i64 [ 0, %5 ], [ %145, %144 ]
  %9 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %8
  %12 = load i32, ptr %11, align 4, !tbaa !15
  br i1 %6, label %14, label %13

13:                                               ; preds = %7
  switch i32 %12, label %144 [
    i32 0, label %17
    i32 2, label %17
  ]

14:                                               ; preds = %7
  %15 = add i32 %12, -1
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %144

17:                                               ; preds = %13, %13, %14
  %18 = trunc i64 %8 to i32
  %19 = tail call fastcc i32 @single_reg_operand_class(i32 noundef %18) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %144, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %10, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 39
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %28, %25 ], [ %22, %21 ]
  %31 = phi ptr [ %27, %25 ], [ %10, %21 ]
  %32 = and i32 %30, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %117

34:                                               ; preds = %29
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %31) #18
  %36 = icmp sgt i32 %35, 52
  br i1 %36, label %37, label %117

37:                                               ; preds = %34
  %38 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !13
  %39 = zext nneg i32 %35 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !104
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !103
  %46 = zext i32 %19 to i64
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %46, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !15
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %117, label %51

51:                                               ; preds = %37
  %52 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %46
  %53 = load i32, ptr %52, align 4, !tbaa !15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %117, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %46
  %57 = load i16, ptr %56, align 2, !tbaa !107
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %47, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !107
  %61 = icmp sgt i16 %60, -1
  br i1 %61, label %62, label %117

62:                                               ; preds = %55
  %63 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %46
  %64 = load i32, ptr %63, align 4, !tbaa !15
  %65 = tail call i32 @reg_classes_intersect_p(i32 noundef %19, i32 noundef 13) #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = zext i32 %43 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !14
  %71 = and i8 %70, -2
  %72 = icmp eq i8 %71, 10
  %73 = select i1 %72, i32 2, i32 1
  br label %85

74:                                               ; preds = %62
  %75 = icmp eq i32 %43, 40
  br i1 %75, label %81, label %76

76:                                               ; preds = %74
  %77 = zext i32 %43 to i64
  %78 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !14
  %80 = zext i8 %79 to i32
  br label %81

81:                                               ; preds = %74, %76
  %82 = phi i32 [ %80, %76 ], [ 12, %74 ]
  %83 = add nuw nsw i32 %82, 3
  %84 = lshr i32 %83, 2
  br label %85

85:                                               ; preds = %81, %67
  %86 = phi i32 [ %73, %67 ], [ %84, %81 ]
  %87 = icmp ugt i32 %64, %86
  br i1 %87, label %117, label %88

88:                                               ; preds = %85
  br i1 %6, label %91, label %89

89:                                               ; preds = %88
  %90 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %43, i32 noundef %45, i32 noundef %19) #18, !range !109
  br label %93

91:                                               ; preds = %88
  %92 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %43, i32 noundef %19, i32 noundef %45) #18, !range !109
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = mul nsw i32 %94, %1
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 35
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %96, i32 noundef %45) #18
  %97 = zext i32 %43 to i64
  %98 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %47, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !15
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %93
  %102 = load ptr, ptr %96, align 8, !tbaa !110
  %103 = zext nneg i32 %99 to i64
  br label %104

104:                                              ; preds = %101, %104
  %105 = phi i64 [ 0, %101 ], [ %115, %104 ]
  %106 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %46, i64 %105
  %107 = load i16, ptr %106, align 2, !tbaa !107
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %47, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !107
  %111 = sext i16 %110 to i64
  %112 = getelementptr inbounds i32, ptr %102, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !15
  %114 = sub nsw i32 %113, %95
  store i32 %114, ptr %112, align 4, !tbaa !15
  %115 = add nuw nsw i64 %105, 1
  %116 = icmp eq i64 %115, %103
  br i1 %116, label %117, label %104, !llvm.loop !111

117:                                              ; preds = %104, %93, %37, %51, %55, %85, %34, %29
  %118 = phi ptr [ null, %34 ], [ null, %29 ], [ %41, %85 ], [ %41, %55 ], [ %41, %51 ], [ %41, %37 ], [ %41, %93 ], [ %41, %104 ]
  %119 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  tail call fastcc void @sparseset_iter_init(ptr noundef %119) #18
  %120 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %119) #18, !range !20
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %144, label %122

122:                                              ; preds = %117
  %123 = zext i32 %19 to i64
  %124 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %123
  br label %125

125:                                              ; preds = %122, %141
  %126 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %119) #18
  %127 = load ptr, ptr @ira_allocnos, align 8, !tbaa !13
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds ptr, ptr %127, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !13
  %131 = icmp eq ptr %130, %118
  br i1 %131, label %141, label %132

132:                                              ; preds = %125
  %133 = load i64, ptr %124, align 8, !tbaa !6
  %134 = getelementptr inbounds %struct.ira_allocno, ptr %130, i64 0, i32 26
  %135 = load i64, ptr %134, align 8, !tbaa !112
  %136 = or i64 %135, %133
  store i64 %136, ptr %134, align 8, !tbaa !112
  %137 = load i64, ptr %124, align 8, !tbaa !6
  %138 = getelementptr inbounds %struct.ira_allocno, ptr %130, i64 0, i32 27
  %139 = load i64, ptr %138, align 8, !tbaa !113
  %140 = or i64 %139, %137
  store i64 %140, ptr %138, align 8, !tbaa !113
  br label %141

141:                                              ; preds = %125, %132
  tail call fastcc void @sparseset_iter_next(ptr noundef %119) #18
  %142 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %119) #18, !range !20
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %125, !llvm.loop !114

144:                                              ; preds = %141, %117, %14, %13, %17
  %145 = add nuw nsw i64 %8, 1
  %146 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !10
  %147 = sext i8 %146 to i64
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %7, label %149, !llvm.loop !115

149:                                              ; preds = %144, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_ref_dead(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 1114112
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 39
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi ptr [ %13, %11 ], [ %7, %5 ]
  tail call fastcc void @mark_reg_dead(ptr noundef %15) #18
  br label %16

16:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !117
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @sparseset_iter_p(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !90
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !88
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %5, %1
  store i8 0, ptr %2, align 1, !tbaa !90
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sparseset_iter_elm(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !116
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !15
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sparseset_iter_next(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !117
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !116
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !116
  store i8 1, ptr %2, align 4, !tbaa !117
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_early_clobber_and_input_conflicts() unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !119
  %2 = icmp sgt i8 %1, 0
  br i1 %2, label %3, label %62

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !10
  br label %5

5:                                                ; preds = %3, %56
  %6 = phi i8 [ %1, %3 ], [ %57, %56 ]
  %7 = phi i8 [ %4, %3 ], [ %58, %56 ]
  %8 = phi i64 [ 0, %3 ], [ %59, %56 ]
  %9 = icmp sgt i8 %7, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %5
  %11 = trunc i64 %8 to i32
  %12 = trunc i64 %8 to i32
  br label %13

13:                                               ; preds = %10, %49
  %14 = phi i64 [ 0, %10 ], [ %50, %49 ]
  %15 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %14, i64 %8, i32 5
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = icmp sgt i8 %16, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %14, i64 %8, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !120
  br label %24

24:                                               ; preds = %19, %21
  %25 = phi i32 [ %23, %21 ], [ 26, %19 ]
  %26 = trunc i64 %14 to i32
  tail call fastcc void @check_and_make_def_conflict(i32 noundef %11, i32 noundef %26, i32 noundef %25) #18
  br label %27

27:                                               ; preds = %24, %13
  %28 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %14, i64 %8, i32 3
  %29 = load i32, ptr %28, align 16, !tbaa !122
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %32, i64 %8, i32 5
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8, ptr %15, align 8
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37, %31
  %42 = icmp sgt i8 %34, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %32, i64 %8, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !120
  br label %46

46:                                               ; preds = %41, %43
  %47 = phi i32 [ %45, %43 ], [ 26, %41 ]
  %48 = trunc i64 %14 to i32
  tail call fastcc void @check_and_make_def_conflict(i32 noundef %12, i32 noundef %48, i32 noundef %47) #18
  br label %49

49:                                               ; preds = %27, %37, %46
  %50 = add nuw nsw i64 %14, 1
  %51 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !10
  %52 = sext i8 %51 to i64
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %13, label %54, !llvm.loop !123

54:                                               ; preds = %49
  %55 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !119
  br label %56

56:                                               ; preds = %54, %5
  %57 = phi i8 [ %55, %54 ], [ %6, %5 ]
  %58 = phi i8 [ %51, %54 ], [ %7, %5 ]
  %59 = add nuw nsw i64 %8, 1
  %60 = sext i8 %57 to i64
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %5, label %62, !llvm.loop !124

62:                                               ; preds = %56, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mark_hard_reg_early_clobbers(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !14
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %2
  %16 = icmp eq i8 %1, 0
  br label %17

17:                                               ; preds = %15, %45
  %18 = phi ptr [ %13, %15 ], [ %48, %45 ]
  %19 = phi i8 [ 0, %15 ], [ %46, %45 ]
  %20 = phi ptr [ %12, %15 ], [ %47, %45 ]
  %21 = load i32, ptr %18, align 8
  %22 = and i32 %21, 8388608
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %18, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 39
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !14
  %33 = load i32, ptr %32, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i32 [ %33, %30 ], [ %27, %24 ]
  %36 = phi ptr [ %32, %30 ], [ %26, %24 ]
  %37 = and i32 %35, 65535
  %38 = icmp eq i32 %37, 37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %36) #18
  %41 = icmp ugt i32 %40, 52
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  br i1 %16, label %44, label %43

43:                                               ; preds = %42
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %18) #18
  br label %45

44:                                               ; preds = %42
  tail call fastcc void @mark_ref_dead(ptr noundef nonnull %18) #18
  br label %45

45:                                               ; preds = %39, %34, %44, %43, %17
  %46 = phi i8 [ %19, %17 ], [ %19, %39 ], [ %19, %34 ], [ 1, %44 ], [ 1, %43 ]
  %47 = getelementptr inbounds ptr, ptr %20, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %17, !llvm.loop !125

50:                                               ; preds = %45, %2
  %51 = phi i8 [ 0, %2 ], [ %46, %45 ]
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !126
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !127
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !128
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !130

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_abnormal_pred(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !126
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !127
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !128
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !131

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_abnormal_call_pred(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !126
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !127
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !128
  %12 = and i32 %11, 12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !132

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @make_regno_dead(i32 noundef %0) unnamed_addr #14 {
  %2 = icmp slt i32 %0, 53
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl nuw i64 1, %4
  %6 = xor i64 %5, -1
  %7 = load i64, ptr @hard_regs_live, align 8, !tbaa !6
  %8 = and i64 %7, %6
  store i64 %8, ptr @hard_regs_live, align 8, !tbaa !6
  br label %20

9:                                                ; preds = %1
  %10 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !13
  %11 = zext nneg i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = load i32, ptr @curr_point, align 4, !tbaa !15
  %19 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !25
  tail call fastcc void @update_allocno_pressure_excess_length(ptr noundef nonnull %13) #18
  br label %20

20:                                               ; preds = %9, %15, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !133
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 85, ptr noundef nonnull @.str.5) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !88
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !118
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !15
  %21 = icmp eq i32 %20, %1
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %16, %7
  %24 = phi i8 [ 0, %7 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sparseset_set_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %0, i32 noundef %1) #18, !range !20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !88
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !88
  tail call fastcc void @sparseset_insert_bit(ptr noundef %0, i32 noundef %1, i32 noundef %7) #18
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sparseset_insert_bit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 {
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store i32 %2, ptr %7, align 4, !tbaa !15
  %8 = load ptr, ptr %0, align 8, !tbaa !118
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %1, ptr %10, align 4, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare ptr @ira_create_allocno_live_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_reg_live(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 252, ptr noundef nonnull @.str.5) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %8 = icmp sgt i32 %7, 52
  %9 = zext nneg i32 %7 to i64
  br i1 %8, label %10, label %27

10:                                               ; preds = %6
  %11 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !13
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  %17 = load i32, ptr %13, align 8, !tbaa !33
  %18 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %16, i32 noundef %17) #18, !range !20
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !13
  %22 = load i32, ptr %13, align 8, !tbaa !33
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 0, ptr %24, align 4, !tbaa !15
  br label %111

25:                                               ; preds = %15
  tail call fastcc void @set_allocno_live(ptr noundef nonnull %13) #18
  br label %26

26:                                               ; preds = %25, %10
  tail call fastcc void @make_regno_born(i32 noundef %7) #18
  br label %111

27:                                               ; preds = %6
  %28 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !6
  %29 = shl nuw i64 1, %9
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %111

32:                                               ; preds = %27
  %33 = sext i32 %7 to i64
  %34 = load i32, ptr %0, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %33, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %111, label %41

41:                                               ; preds = %32
  %42 = zext i8 %39 to i32
  %43 = add nsw i32 %7, %42
  %44 = sext i32 %43 to i64
  %45 = load i64, ptr @hard_regs_live, align 8, !tbaa !6
  br label %46

46:                                               ; preds = %41, %107
  %47 = phi i64 [ %45, %41 ], [ %108, %107 ]
  %48 = phi i64 [ %33, %41 ], [ %109, %107 ]
  %49 = shl nuw i64 1, %48
  %50 = and i64 %47, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %107

52:                                               ; preds = %46
  %53 = load i64, ptr @eliminable_regset, align 8, !tbaa !6
  %54 = and i64 %53, %49
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %107

56:                                               ; preds = %52
  %57 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %48
  %58 = load i32, ptr %57, align 4, !tbaa !15
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %59, i64 0
  %61 = load i32, ptr %60, align 4, !tbaa !15
  %62 = icmp eq i32 %61, 27
  br i1 %62, label %85, label %63

63:                                               ; preds = %56
  %64 = load i32, ptr @curr_point, align 4
  br label %65

65:                                               ; preds = %63, %80
  %66 = phi i64 [ 0, %63 ], [ %81, %80 ]
  %67 = phi i32 [ %61, %63 ], [ %83, %80 ]
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !15
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !15
  %72 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %68
  %73 = load i32, ptr %72, align 4, !tbaa !15
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %68
  %77 = load i32, ptr %76, align 4, !tbaa !15
  %78 = icmp slt i32 %70, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 %64, ptr %72, align 4, !tbaa !15
  br label %80

80:                                               ; preds = %65, %75, %79
  %81 = add nuw nsw i64 %66, 1
  %82 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %59, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !15
  %84 = icmp eq i32 %83, 27
  br i1 %84, label %85, label %65, !llvm.loop !135

85:                                               ; preds = %80, %56
  %86 = trunc i64 %48 to i32
  tail call fastcc void @make_regno_born(i32 noundef %86) #18
  %87 = load i32, ptr %60, align 4, !tbaa !15
  %88 = icmp eq i32 %87, 27
  %89 = load i64, ptr @hard_regs_live, align 8, !tbaa !6
  br i1 %88, label %107, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr @curr_bb_node, align 8, !tbaa !13
  br label %92

92:                                               ; preds = %90, %102
  %93 = phi i64 [ 0, %90 ], [ %103, %102 ]
  %94 = phi i32 [ %87, %90 ], [ %105, %102 ]
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %91, i64 0, i32 11, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !15
  %98 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %95
  %99 = load i32, ptr %98, align 4, !tbaa !15
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 %99, ptr %96, align 4, !tbaa !15
  br label %102

102:                                              ; preds = %92, %101
  %103 = add nuw nsw i64 %93, 1
  %104 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %59, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !15
  %106 = icmp eq i32 %105, 27
  br i1 %106, label %107, label %92, !llvm.loop !136

107:                                              ; preds = %102, %85, %52, %46
  %108 = phi i64 [ %89, %85 ], [ %47, %52 ], [ %47, %46 ], [ %89, %102 ]
  %109 = add nsw i64 %48, 1
  %110 = icmp slt i64 %109, %44
  br i1 %110, label %46, label %111, !llvm.loop !137

111:                                              ; preds = %107, %32, %27, %26, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @single_reg_operand_class(i32 noundef %0) unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = tail call fastcc i32 @single_reg_class(ptr noundef %9, ptr noundef %11) #18
  br label %13

13:                                               ; preds = %1, %6
  %14 = phi i32 [ %12, %6 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #19
  %9 = load ptr, ptr %5, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !107
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_costs(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #19
  store ptr %6, ptr %0, align 8, !tbaa !13
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !15
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = zext nneg i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %13, i1 false), !tbaa !15
  br label %14

14:                                               ; preds = %11, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @single_reg_class(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %4

4:                                                ; preds = %111, %2
  %5 = phi ptr [ %0, %2 ], [ %115, %111 ]
  %6 = phi i32 [ 0, %2 ], [ %112, %111 ]
  %7 = phi i32 [ 0, %2 ], [ %113, %111 ]
  %8 = load i8, ptr %5, align 1, !tbaa !14
  %9 = sext i8 %8 to i64
  switch i8 %8, label %11 [
    i8 0, label %116
    i8 35, label %111
    i8 44, label %10
  ]

10:                                               ; preds = %4
  br label %111

11:                                               ; preds = %4
  %12 = icmp eq i32 %6, 0
  br i1 %12, label %13, label %111

13:                                               ; preds = %11
  switch i8 %8, label %116 [
    i8 32, label %111
    i8 9, label %111
    i8 61, label %111
    i8 43, label %111
    i8 42, label %111
    i8 38, label %111
    i8 37, label %111
    i8 33, label %111
    i8 63, label %111
    i8 105, label %14
    i8 110, label %21
    i8 115, label %27
    i8 73, label %39
    i8 74, label %39
    i8 75, label %39
    i8 76, label %39
    i8 77, label %39
    i8 78, label %39
    i8 79, label %39
    i8 80, label %39
    i8 69, label %48
    i8 70, label %48
    i8 71, label %58
    i8 72, label %58
    i8 114, label %66
    i8 97, label %66
    i8 98, label %66
    i8 99, label %66
    i8 100, label %66
    i8 101, label %66
    i8 102, label %66
    i8 104, label %66
    i8 106, label %66
    i8 107, label %66
    i8 108, label %66
    i8 113, label %66
    i8 116, label %66
    i8 117, label %66
    i8 118, label %66
    i8 119, label %66
    i8 120, label %66
    i8 121, label %66
    i8 122, label %66
    i8 65, label %66
    i8 66, label %66
    i8 67, label %66
    i8 68, label %66
    i8 81, label %66
    i8 82, label %66
    i8 83, label %66
    i8 84, label %66
    i8 85, label %66
    i8 87, label %66
    i8 89, label %66
    i8 90, label %66
    i8 48, label %87
    i8 49, label %87
    i8 50, label %87
    i8 51, label %87
    i8 52, label %87
    i8 53, label %87
    i8 54, label %87
    i8 55, label %87
    i8 56, label %87
    i8 57, label %87
  ]

14:                                               ; preds = %13
  %15 = load i32, ptr %1, align 8
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !15
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %116, label %111

21:                                               ; preds = %13
  %22 = load i32, ptr %1, align 8
  %23 = trunc i32 %22 to i16
  switch i16 %23, label %111 [
    i16 30, label %116
    i16 32, label %24
  ]

24:                                               ; preds = %21
  %25 = and i32 %22, 16711680
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %116, label %111

27:                                               ; preds = %13
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 65535
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !15
  %33 = icmp ne i32 %32, 9
  %34 = icmp eq i32 %29, 30
  %35 = or i1 %33, %34
  %36 = and i32 %28, 16777215
  %37 = icmp eq i32 %36, 32
  %38 = or i1 %37, %35
  br i1 %38, label %111, label %116

39:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  %40 = load i32, ptr %1, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 30
  br i1 %42, label %43, label %111

43:                                               ; preds = %39
  %44 = load i64, ptr %3, align 8, !tbaa !14
  %45 = tail call i32 @lookup_constraint(ptr noundef nonnull %5) #19
  %46 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %44, i32 noundef %45) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %111, label %116

48:                                               ; preds = %13, %13
  %49 = load i32, ptr %1, align 8
  %50 = trunc i32 %49 to i16
  switch i16 %50, label %111 [
    i16 32, label %116
    i16 33, label %51
  ]

51:                                               ; preds = %48
  %52 = lshr i32 %49, 16
  %53 = and i32 %52, 255
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !14
  %57 = icmp eq i8 %56, 17
  br i1 %57, label %116, label %111

58:                                               ; preds = %13, %13
  %59 = load i32, ptr %1, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = tail call i32 @lookup_constraint(ptr noundef nonnull %5) #19
  %64 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %1, i32 noundef %63) #19
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %116

66:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %67 = icmp eq i8 %8, 114
  br i1 %67, label %71, label %68

68:                                               ; preds = %62, %58, %66
  %69 = tail call i32 @lookup_constraint(ptr noundef nonnull %5) #19
  %70 = tail call i32 @regclass_for_constraint(i32 noundef %69) #19
  br label %71

71:                                               ; preds = %66, %68
  %72 = phi i32 [ %70, %68 ], [ 13, %66 ]
  %73 = icmp eq i32 %7, 0
  %74 = icmp eq i32 %72, %7
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %76, label %116

76:                                               ; preds = %71
  %77 = zext i32 %72 to i64
  %78 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !15
  %80 = load i32, ptr %1, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %77, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !15
  %86 = icmp sgt i32 %79, %85
  br i1 %86, label %116, label %111

87:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %88 = add nuw nsw i64 %9, 4294967248
  %89 = and i64 %88, 4294967295
  %90 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !13
  %92 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %89
  %93 = load ptr, ptr %92, align 8, !tbaa !13
  %94 = tail call fastcc i32 @single_reg_class(ptr noundef %91, ptr noundef %93) #18
  %95 = icmp eq i32 %7, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %87
  %97 = icmp eq i32 %94, %7
  br i1 %97, label %100, label %116

98:                                               ; preds = %87
  %99 = icmp eq i32 %94, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %96, %98
  %101 = zext i32 %94 to i64
  %102 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !15
  %104 = load i32, ptr %1, align 8
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %101, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !15
  %110 = icmp sgt i32 %103, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %100, %76, %51, %48, %39, %43, %27, %24, %21, %14, %4, %11, %13, %13, %13, %13, %13, %13, %13, %13, %13, %10
  %112 = phi i32 [ 0, %10 ], [ 1, %11 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 1, %4 ], [ 0, %14 ], [ 0, %21 ], [ 0, %24 ], [ 0, %27 ], [ 0, %43 ], [ 0, %39 ], [ 0, %48 ], [ 0, %51 ], [ 0, %76 ], [ 0, %100 ]
  %113 = phi i32 [ %7, %10 ], [ %7, %11 ], [ %7, %13 ], [ %7, %13 ], [ %7, %13 ], [ %7, %13 ], [ %7, %13 ], [ %7, %13 ], [ %7, %13 ], [ %7, %13 ], [ %7, %13 ], [ %7, %4 ], [ %7, %14 ], [ %7, %21 ], [ %7, %24 ], [ %7, %27 ], [ %7, %43 ], [ %7, %39 ], [ %7, %48 ], [ %7, %51 ], [ %72, %76 ], [ %94, %100 ]
  %114 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %8) #18
  %115 = getelementptr inbounds i8, ptr %5, i64 %114
  br label %4, !llvm.loop !138

116:                                              ; preds = %27, %4, %13, %96, %98, %100, %76, %71, %62, %51, %48, %43, %24, %21, %14
  %117 = phi i32 [ 0, %14 ], [ 0, %21 ], [ 0, %24 ], [ 0, %43 ], [ 0, %48 ], [ 0, %51 ], [ 0, %62 ], [ 0, %71 ], [ 0, %76 ], [ 0, %100 ], [ 0, %98 ], [ 0, %96 ], [ 0, %13 ], [ %7, %4 ], [ 0, %27 ]
  ret i32 %117
}

; Function Attrs: optsize
declare zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ira_allocate_cost_vector(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_reg_dead(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 327, ptr noundef nonnull @.str.5) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %8 = icmp sgt i32 %7, 52
  %9 = zext nneg i32 %7 to i64
  br i1 %8, label %10, label %27

10:                                               ; preds = %6
  %11 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !13
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  %17 = load i32, ptr %13, align 8, !tbaa !33
  %18 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %16, i32 noundef %17) #18, !range !20
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !13
  %22 = load i32, ptr %13, align 8, !tbaa !33
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 0, ptr %24, align 4, !tbaa !15
  br label %124

25:                                               ; preds = %15
  tail call fastcc void @clear_allocno_live(ptr noundef nonnull %13) #18
  br label %26

26:                                               ; preds = %25, %10
  tail call fastcc void @make_regno_dead(i32 noundef %7) #18
  br label %124

27:                                               ; preds = %6
  %28 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !6
  %29 = shl nuw i64 1, %9
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %124

32:                                               ; preds = %27
  %33 = sext i32 %7 to i64
  %34 = load i32, ptr %0, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %33, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %124, label %41

41:                                               ; preds = %32
  %42 = zext i8 %39 to i32
  %43 = add nsw i32 %7, %42
  %44 = sext i32 %43 to i64
  %45 = load i64, ptr @hard_regs_live, align 8, !tbaa !6
  br label %46

46:                                               ; preds = %41, %120
  %47 = phi i64 [ %45, %41 ], [ %121, %120 ]
  %48 = phi i64 [ %33, %41 ], [ %122, %120 ]
  %49 = shl nuw i64 1, %48
  %50 = and i64 %47, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %120, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %48
  %54 = load i32, ptr %53, align 4, !tbaa !15
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %55, i64 0
  %57 = load i32, ptr %56, align 4, !tbaa !15
  %58 = icmp eq i32 %57, 27
  br i1 %58, label %117, label %59

59:                                               ; preds = %52, %75
  %60 = phi i64 [ %77, %75 ], [ 0, %52 ]
  %61 = phi i32 [ %79, %75 ], [ %57, %52 ]
  %62 = phi i8 [ %76, %75 ], [ 0, %52 ]
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !15
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %64, align 4, !tbaa !15
  %67 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %63
  %68 = load i32, ptr %67, align 4, !tbaa !15
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %63
  %72 = load i32, ptr %71, align 4, !tbaa !15
  %73 = icmp sgt i32 %66, %72
  %74 = select i1 %73, i8 %62, i8 1
  br label %75

75:                                               ; preds = %70, %59
  %76 = phi i8 [ %62, %59 ], [ %74, %70 ]
  %77 = add nuw nsw i64 %60, 1
  %78 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %55, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !15
  %80 = icmp eq i32 %79, 27
  br i1 %80, label %81, label %59, !llvm.loop !139

81:                                               ; preds = %75
  %82 = icmp eq i8 %76, 0
  br i1 %82, label %117, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  tail call fastcc void @sparseset_iter_init(ptr noundef %84) #18
  %85 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %84) #18, !range !20
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %90, %83
  %88 = load i32, ptr %56, align 4, !tbaa !15
  %89 = icmp eq i32 %88, 27
  br i1 %89, label %117, label %98

90:                                               ; preds = %83, %90
  %91 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %84) #18
  %92 = load ptr, ptr @ira_allocnos, align 8, !tbaa !13
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !13
  tail call fastcc void @update_allocno_pressure_excess_length(ptr noundef %95) #18
  tail call fastcc void @sparseset_iter_next(ptr noundef %84) #18
  %96 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %84) #18, !range !20
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %87, label %90, !llvm.loop !140

98:                                               ; preds = %87, %112
  %99 = phi i64 [ %113, %112 ], [ 0, %87 ]
  %100 = phi i32 [ %115, %112 ], [ %88, %87 ]
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !15
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %101
  %107 = load i32, ptr %106, align 4, !tbaa !15
  %108 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %101
  %109 = load i32, ptr %108, align 4, !tbaa !15
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  store i32 -1, ptr %102, align 4, !tbaa !15
  br label %112

112:                                              ; preds = %98, %105, %111
  %113 = add nuw nsw i64 %99, 1
  %114 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %55, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !15
  %116 = icmp eq i32 %115, 27
  br i1 %116, label %117, label %98, !llvm.loop !141

117:                                              ; preds = %112, %52, %87, %81
  %118 = trunc i64 %48 to i32
  tail call fastcc void @make_regno_dead(i32 noundef %118) #18
  %119 = load i64, ptr @hard_regs_live, align 8, !tbaa !6
  br label %120

120:                                              ; preds = %117, %46
  %121 = phi i64 [ %119, %117 ], [ %47, %46 ]
  %122 = add nsw i64 %48, 1
  %123 = icmp slt i64 %122, %44
  br i1 %123, label %46, label %124, !llvm.loop !142

124:                                              ; preds = %120, %32, %27, %26, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_allocno_live(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !13
  %3 = load i32, ptr %0, align 8, !tbaa !33
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %2, i64 %4
  store i32 0, ptr %5, align 4, !tbaa !15
  %6 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  %7 = load i32, ptr %0, align 8, !tbaa !33
  %8 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %6, i32 noundef %7) #18, !range !20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  br label %85

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !103
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %15, i64 0
  %17 = load i32, ptr %16, align 4, !tbaa !15
  %18 = icmp eq i32 %17, 27
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  br label %85

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !104
  %24 = zext i32 %23 to i64
  br label %25

25:                                               ; preds = %21, %43
  %26 = phi i64 [ 0, %21 ], [ %45, %43 ]
  %27 = phi i32 [ %17, %21 ], [ %47, %43 ]
  %28 = phi i8 [ 0, %21 ], [ %44, %43 ]
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %29, i64 %24
  %31 = load i32, ptr %30, align 4, !tbaa !15
  %32 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %29
  %33 = load i32, ptr %32, align 4, !tbaa !15
  %34 = sub nsw i32 %33, %31
  store i32 %34, ptr %32, align 4, !tbaa !15
  %35 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %29
  %36 = load i32, ptr %35, align 4, !tbaa !15
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %29
  %40 = load i32, ptr %39, align 4, !tbaa !15
  %41 = icmp sgt i32 %34, %40
  %42 = select i1 %41, i8 %28, i8 1
  br label %43

43:                                               ; preds = %38, %25
  %44 = phi i8 [ %28, %25 ], [ %42, %38 ]
  %45 = add nuw nsw i64 %26, 1
  %46 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %15, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !15
  %48 = icmp eq i32 %47, 27
  br i1 %48, label %49, label %25, !llvm.loop !143

49:                                               ; preds = %43
  %50 = icmp eq i8 %44, 0
  %51 = load ptr, ptr @allocnos_live, align 8, !tbaa !13
  br i1 %50, label %85, label %52

52:                                               ; preds = %49
  tail call fastcc void @sparseset_iter_init(ptr noundef %51) #18
  %53 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %51) #18, !range !20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %58, %52
  %56 = load i32, ptr %16, align 4, !tbaa !15
  %57 = icmp eq i32 %56, 27
  br i1 %57, label %85, label %66

58:                                               ; preds = %52, %58
  %59 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %51) #18
  %60 = load ptr, ptr @ira_allocnos, align 8, !tbaa !13
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  tail call fastcc void @update_allocno_pressure_excess_length(ptr noundef %63) #18
  tail call fastcc void @sparseset_iter_next(ptr noundef %51) #18
  %64 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %51) #18, !range !20
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %55, label %58, !llvm.loop !144

66:                                               ; preds = %55, %80
  %67 = phi i64 [ %81, %80 ], [ 0, %55 ]
  %68 = phi i32 [ %83, %80 ], [ %56, %55 ]
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !15
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %69
  %75 = load i32, ptr %74, align 4, !tbaa !15
  %76 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %69
  %77 = load i32, ptr %76, align 4, !tbaa !15
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store i32 -1, ptr %70, align 4, !tbaa !15
  br label %80

80:                                               ; preds = %66, %73, %79
  %81 = add nuw nsw i64 %67, 1
  %82 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %15, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !15
  %84 = icmp eq i32 %83, 27
  br i1 %84, label %85, label %66, !llvm.loop !145

85:                                               ; preds = %80, %19, %10, %55, %49
  %86 = phi ptr [ %11, %10 ], [ %51, %55 ], [ %51, %49 ], [ %20, %19 ], [ %51, %80 ]
  %87 = load i32, ptr %0, align 8, !tbaa !33
  tail call void @sparseset_clear_bit(ptr noundef %86, i32 noundef %87) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_allocno_pressure_excess_length(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !103
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %4, i64 0
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = icmp eq i32 %6, 27
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 20
  %10 = load i32, ptr @curr_point, align 4
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 14
  br label %12

12:                                               ; preds = %8, %28
  %13 = phi i64 [ 0, %8 ], [ %29, %28 ]
  %14 = phi i32 [ %6, %8 ], [ %31, %28 ]
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !15
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %9, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  %23 = tail call i32 @llvm.smax.i32(i32 %17, i32 %22)
  %24 = load i32, ptr %11, align 4, !tbaa !146
  %25 = sub i32 %10, %23
  %26 = add i32 %25, 1
  %27 = add nsw i32 %26, %24
  store i32 %27, ptr %11, align 4, !tbaa !146
  br label %28

28:                                               ; preds = %12, %19
  %29 = add nuw nsw i64 %13, 1
  %30 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %4, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !15
  %32 = icmp eq i32 %31, 27
  br i1 %32, label %33, label %12, !llvm.loop !147

33:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: optsize
declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_and_make_def_conflict(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %121, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = load i32, ptr %14, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %15, %12 ], [ %9, %8 ]
  %18 = phi ptr [ %14, %12 ], [ %6, %8 ]
  %19 = and i32 %17, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %121

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #18
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %121, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !13
  %26 = zext i32 %22 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !103
  %31 = tail call i32 @reg_classes_intersect_p(i32 noundef %30, i32 noundef %2) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %121, label %33

33:                                               ; preds = %24
  %34 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !10
  %35 = icmp sgt i8 %34, 0
  br i1 %35, label %36, label %121

36:                                               ; preds = %33
  %37 = zext nneg i8 %34 to i64
  %38 = sext i32 %0 to i64
  %39 = zext i32 %1 to i64
  br label %40

40:                                               ; preds = %36, %114
  %41 = phi i64 [ 0, %36 ], [ %116, %114 ]
  %42 = phi i64 [ %37, %36 ], [ %118, %114 ]
  %43 = phi i8 [ 1, %36 ], [ %115, %114 ]
  %44 = icmp eq i64 %41, %39
  br i1 %44, label %114, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %41
  %47 = load i32, ptr %46, align 4, !tbaa !15
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %114, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 5
  %51 = load i8, ptr %50, align 8
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !120
  br label %56

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %55, %53 ], [ 26, %49 ]
  %58 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !119
  %59 = icmp sgt i8 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %56
  %61 = zext nneg i8 %58 to i64
  %62 = add nsw i64 %42, -1
  %63 = icmp slt i64 %41, %62
  %64 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %41
  %65 = add nuw nsw i64 %41, 1
  %66 = icmp eq i64 %41, 0
  %67 = add nsw i64 %41, -1
  %68 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %67
  br label %69

69:                                               ; preds = %60, %92
  %70 = phi i64 [ 0, %60 ], [ %93, %92 ]
  %71 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %70, i32 3
  %72 = load i32, ptr %71, align 16, !tbaa !122
  %73 = icmp eq i32 %72, %1
  br i1 %73, label %114, label %74

74:                                               ; preds = %69
  br i1 %63, label %75, label %83

75:                                               ; preds = %74
  %76 = load ptr, ptr %64, align 8, !tbaa !13
  %77 = load i8, ptr %76, align 1, !tbaa !14
  %78 = icmp eq i8 %77, 37
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %65, i64 %70, i32 3
  %81 = load i32, ptr %80, align 16, !tbaa !122
  %82 = icmp eq i32 %81, %1
  br i1 %82, label %114, label %83

83:                                               ; preds = %79, %75, %74
  br i1 %66, label %92, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %68, align 8, !tbaa !13
  %86 = load i8, ptr %85, align 1, !tbaa !14
  %87 = icmp eq i8 %86, 37
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %67, i64 %70, i32 3
  %90 = load i32, ptr %89, align 16, !tbaa !122
  %91 = icmp eq i32 %90, %1
  br i1 %91, label %114, label %92

92:                                               ; preds = %83, %84, %88
  %93 = add nuw nsw i64 %70, 1
  %94 = icmp eq i64 %93, %61
  br i1 %94, label %95, label %69, !llvm.loop !148

95:                                               ; preds = %92, %56
  %96 = trunc i64 %41 to i32
  %97 = tail call fastcc zeroext i8 @check_and_make_def_use_conflict(ptr noundef nonnull %18, i32 noundef %2, i32 noundef %96, i32 noundef %57, i8 noundef zeroext %43) #18, !range !20
  %98 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 3
  %99 = load i32, ptr %98, align 16, !tbaa !122
  %100 = icmp slt i32 %99, 0
  %101 = icmp eq i32 %99, %1
  %102 = or i1 %100, %101
  br i1 %102, label %114, label %103

103:                                              ; preds = %95
  %104 = zext nneg i32 %99 to i64
  %105 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %104, i64 %38, i32 5
  %106 = load i8, ptr %105, align 8
  %107 = icmp sgt i8 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %104, i64 %38, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !120
  br label %111

111:                                              ; preds = %103, %108
  %112 = phi i32 [ %110, %108 ], [ 26, %103 ]
  %113 = tail call fastcc zeroext i8 @check_and_make_def_use_conflict(ptr noundef nonnull %18, i32 noundef %2, i32 noundef %96, i32 noundef %112, i8 noundef zeroext %97) #18, !range !20
  br label %114

114:                                              ; preds = %88, %79, %69, %95, %111, %40, %45
  %115 = phi i8 [ %43, %45 ], [ %43, %40 ], [ %113, %111 ], [ %97, %95 ], [ %43, %69 ], [ %43, %79 ], [ %43, %88 ]
  %116 = add nuw nsw i64 %41, 1
  %117 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !10
  %118 = sext i8 %117 to i64
  %119 = sext i8 %117 to i64
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %40, label %121, !llvm.loop !149

121:                                              ; preds = %114, %33, %24, %16, %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_and_make_def_use_conflict(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call i32 @reg_classes_intersect_p(i32 noundef %1, i32 noundef %3) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %5
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %11, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %4) #18, !range !20
  %13 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !10
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %17, label %28

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = load i8, ptr %19, align 1, !tbaa !14
  %21 = icmp eq i8 %20, 37
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = add nsw i32 %2, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %26, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %12) #18, !range !20
  br label %28

28:                                               ; preds = %22, %17, %8
  %29 = phi i8 [ %27, %22 ], [ %12, %17 ], [ %12, %8 ]
  %30 = icmp sgt i32 %2, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = add nsw i32 %2, -1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  %36 = load i8, ptr %35, align 1, !tbaa !14
  %37 = icmp eq i8 %36, 37
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !13
  %41 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %40, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %29) #18, !range !20
  br label %42

42:                                               ; preds = %28, %31, %38, %5
  %43 = phi i8 [ %4, %5 ], [ %41, %38 ], [ %29, %31 ], [ %29, %28 ]
  ret i8 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @make_pseudo_conflict(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ %5, %4 ]
  %14 = phi ptr [ %10, %8 ], [ %0, %4 ]
  %15 = and i32 %13, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #18
  %19 = icmp ult i32 %18, 53
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !13
  %22 = zext i32 %18 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !103
  %27 = tail call i32 @reg_classes_intersect_p(i32 noundef %1, i32 noundef %26) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = icmp eq i8 %3, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr @curr_point, align 4, !tbaa !15
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @curr_point, align 4, !tbaa !15
  br label %34

34:                                               ; preds = %31, %29
  tail call fastcc void @mark_reg_live(ptr noundef nonnull %14) #18
  tail call fastcc void @mark_reg_live(ptr noundef %2) #18
  tail call fastcc void @mark_reg_dead(ptr noundef nonnull %14) #18
  tail call fastcc void @mark_reg_dead(ptr noundef %2) #18
  br label %35

35:                                               ; preds = %20, %12, %17, %34
  %36 = phi i8 [ 0, %34 ], [ %3, %17 ], [ %3, %12 ], [ %3, %20 ]
  ret i8 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !13
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.5) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !150
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !150
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #18
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !152
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.5) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !13
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_compress_allocno_live_ranges() local_unnamed_addr #0 {
  tail call fastcc void @remove_some_program_points_and_update_live_ranges() #18
  tail call void @ira_rebuild_start_finish_chains() #18
  %1 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !15
  %2 = icmp sgt i32 %1, 2
  %3 = load ptr, ptr @ira_dump_file, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 30, i64 1, ptr nonnull %3)
  %8 = load ptr, ptr @ira_dump_file, align 8, !tbaa !13
  tail call fastcc void @print_live_ranges(ptr noundef %8) #18
  br label %9

9:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_some_program_points_and_update_live_ranges() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %5 = tail call ptr @ira_allocate_bitmap() #19
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #18
  %6 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %11

8:                                                ; preds = %16, %11
  %9 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %27, label %11, !llvm.loop !154

11:                                               ; preds = %0, %8
  %12 = load ptr, ptr %2, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %16

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %25, %16 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !22
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %19) #19
  %21 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !25
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %22) #19
  %24 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %8, label %16, !llvm.loop !155

27:                                               ; preds = %8, %0
  %28 = load i32, ptr @ira_max_point, align 4, !tbaa !15
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr @ira_allocate(i64 noundef %30) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 0, ptr noundef nonnull %1) #18
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %1) #18, !range !20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ 0, %27 ]
  %36 = add nuw nsw i32 %35, 1
  %37 = load i32, ptr %1, align 4, !tbaa !15
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %31, i64 %38
  store i32 %35, ptr %39, align 4, !tbaa !15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %1) #18
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %1) #18, !range !20
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %34, !llvm.loop !156

42:                                               ; preds = %34, %27
  %43 = phi i32 [ 0, %27 ], [ %36, %34 ]
  tail call void @ira_free_bitmap(ptr noundef %5) #19
  %44 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !15
  %45 = icmp sgt i32 %44, 1
  %46 = load ptr, ptr @ira_dump_file, align 8
  %47 = icmp ne ptr %46, null
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, ptr @ira_max_point, align 4, !tbaa !15
  %51 = mul nsw i32 %43, 100
  %52 = sdiv i32 %51, %50
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.9, i32 noundef %50, i32 noundef %43, i32 noundef %52) #18
  br label %54

54:                                               ; preds = %49, %42
  store i32 %43, ptr @ira_max_point, align 4, !tbaa !15
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #18
  %55 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !20
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %80, label %60

57:                                               ; preds = %65, %60
  %58 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !20
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %80, label %60, !llvm.loop !157

60:                                               ; preds = %54, %57
  %61 = load ptr, ptr %2, align 8, !tbaa !13
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 20
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %57, label %65

65:                                               ; preds = %60, %65
  %66 = phi ptr [ %78, %65 ], [ %63, %60 ]
  %67 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !22
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %31, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !15
  store i32 %71, ptr %67, align 8, !tbaa !22
  %72 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %66, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !25
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %31, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !15
  store i32 %76, ptr %72, align 4, !tbaa !25
  %77 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %66, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !13
  %79 = icmp eq ptr %78, null
  br i1 %79, label %57, label %65, !llvm.loop !158

80:                                               ; preds = %57, %54
  tail call void @ira_free(ptr noundef %31) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #20
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate_bitmap() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_allocno_live_ranges() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !13
  tail call void @ira_free(ptr noundef %1) #19
  %2 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !13
  tail call void @ira_free(ptr noundef %2) #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !8, i64 1086}
!11 = !{!"recog_data", !8, i64 0, !8, i64 240, !8, i64 480, !8, i64 720, !8, i64 840, !8, i64 960, !8, i64 1072, !8, i64 1086, !8, i64 1087, !8, i64 1088, !8, i64 1089, !12, i64 1120}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{i8 0, i8 2}
!21 = distinct !{!21, !18}
!22 = !{!23, !16, i64 8}
!23 = !{!"ira_allocno_live_range", !12, i64 0, !16, i64 8, !16, i64 12, !12, i64 16, !12, i64 24, !12, i64 32}
!24 = !{!23, !12, i64 24}
!25 = !{!23, !16, i64 12}
!26 = !{!23, !12, i64 32}
!27 = distinct !{!27, !18}
!28 = !{!29, !16, i64 0}
!29 = !{!"", !16, i64 0}
!30 = distinct !{!30, !18}
!31 = !{!23, !12, i64 16}
!32 = distinct !{!32, !18}
!33 = !{!34, !16, i64 0}
!34 = !{!"ira_allocno", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !16, i64 120, !16, i64 124, !12, i64 128, !16, i64 136, !16, i64 140, !7, i64 144, !7, i64 152, !16, i64 160, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 172, !16, i64 172, !16, i64 172, !16, i64 172, !16, i64 172, !16, i64 172, !16, i64 172, !16, i64 173, !16, i64 173, !16, i64 173, !16, i64 173, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !16, i64 216, !16, i64 220, !12, i64 224, !12, i64 232, !16, i64 240}
!35 = !{!34, !16, i64 4}
!36 = !{!34, !12, i64 112}
!37 = distinct !{!37, !18}
!38 = !{!39, !12, i64 0}
!39 = !{!"ira_loop_tree_node", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !16, i64 56, !8, i64 60, !12, i64 64, !8, i64 72, !8, i64 76, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208}
!40 = distinct !{!40, !18}
!41 = !{!42, !16, i64 80}
!42 = !{!"basic_block_def", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 48, !12, i64 56, !8, i64 64, !7, i64 72, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96}
!43 = !{!44, !12, i64 24}
!44 = !{!"df_lr_bb_info", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = !{!49, !12, i64 8}
!49 = !{!"function", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !16, i64 120, !16, i64 124, !12, i64 128, !16, i64 136, !16, i64 137, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139}
!50 = !{!51, !12, i64 0}
!51 = !{!"control_flow_graph", !12, i64 0, !12, i64 8, !12, i64 16, !16, i64 24, !16, i64 28, !16, i64 32, !12, i64 40, !16, i64 48, !8, i64 52, !8, i64 60, !16, i64 68, !16, i64 72}
!52 = !{!42, !7, i64 72}
!53 = !{!42, !16, i64 88}
!54 = !{!55, !12, i64 0}
!55 = !{!"rtl_bb_info", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !16, i64 32}
!56 = !{!39, !12, i64 48}
!57 = !{!39, !12, i64 8}
!58 = !{!59, !16, i64 0}
!59 = !{!"loop", !16, i64 0, !16, i64 4, !12, i64 8, !12, i64 16, !60, i64 24, !16, i64 32, !16, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !61, i64 80, !61, i64 96, !8, i64 112, !8, i64 113, !16, i64 116, !12, i64 120, !12, i64 128, !8, i64 136, !12, i64 144}
!60 = !{!"lpt_decision", !16, i64 0, !16, i64 4}
!61 = !{!"", !7, i64 0, !7, i64 8}
!62 = !{!63, !12, i64 248}
!63 = !{!"df", !8, i64 0, !8, i64 64, !12, i64 128, !64, i64 136, !64, i64 176, !12, i64 216, !12, i64 224, !12, i64 232, !16, i64 240, !16, i64 244, !12, i64 248, !16, i64 256, !16, i64 260, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !16, i64 344, !16, i64 348, !12, i64 352, !16, i64 360, !16, i64 364, !8, i64 365, !8, i64 366}
!64 = !{!"df_ref_info", !12, i64 0, !12, i64 8, !12, i64 16, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36}
!65 = !{!66, !12, i64 8}
!66 = !{!"df_insn_info", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !16, i64 40}
!67 = distinct !{!67, !18}
!68 = !{!66, !12, i64 16}
!69 = !{!70, !16, i64 0}
!70 = !{!"rtvec_def", !16, i64 0, !8, i64 8}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !18}
!74 = !{!34, !16, i64 164}
!75 = !{!34, !16, i64 168}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !18}
!82 = distinct !{!82, !18}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !18}
!85 = !{!86, !16, i64 16}
!86 = !{!"dataflow", !12, i64 0, !12, i64 8, !16, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !16, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!87 = !{!86, !12, i64 8}
!88 = !{!89, !16, i64 16}
!89 = !{!"sparseset_def", !12, i64 0, !12, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !8, i64 28, !8, i64 29, !8, i64 32}
!90 = !{!89, !8, i64 29}
!91 = !{!92, !12, i64 0}
!92 = !{!"bitmap_head_def", !12, i64 0, !12, i64 8, !16, i64 16, !12, i64 24}
!93 = !{!94, !12, i64 0}
!94 = !{!"", !12, i64 0, !12, i64 8, !16, i64 16, !7, i64 24}
!95 = !{!94, !12, i64 8}
!96 = !{!97, !16, i64 16}
!97 = !{!"bitmap_element_def", !12, i64 0, !12, i64 8, !16, i64 16, !8, i64 24}
!98 = !{!94, !16, i64 16}
!99 = !{!94, !7, i64 24}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18}
!102 = !{!97, !12, i64 0}
!103 = !{!34, !16, i64 48}
!104 = !{!34, !16, i64 8}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !18}
!107 = !{!108, !108, i64 0}
!108 = !{!"short", !8, i64 0}
!109 = !{i32 0, i32 65536}
!110 = !{!34, !12, i64 200}
!111 = distinct !{!111, !18}
!112 = !{!34, !7, i64 144}
!113 = !{!34, !7, i64 152}
!114 = distinct !{!114, !18}
!115 = distinct !{!115, !18}
!116 = !{!89, !16, i64 24}
!117 = !{!89, !8, i64 28}
!118 = !{!89, !12, i64 0}
!119 = !{!11, !8, i64 1088}
!120 = !{!121, !16, i64 8}
!121 = !{!"operand_alternative", !12, i64 0, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 24, !16, i64 24, !16, i64 24, !16, i64 24, !16, i64 24, !16, i64 24, !16, i64 24}
!122 = !{!121, !16, i64 16}
!123 = distinct !{!123, !18}
!124 = distinct !{!124, !18}
!125 = distinct !{!125, !18}
!126 = !{i64 0, i64 4, !15, i64 8, i64 8, !13}
!127 = !{i64 0, i64 8, !13}
!128 = !{!129, !16, i64 48}
!129 = !{!"edge_def", !12, i64 0, !12, i64 8, !8, i64 16, !12, i64 24, !12, i64 32, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !7, i64 56}
!130 = distinct !{!130, !18}
!131 = distinct !{!131, !18}
!132 = distinct !{!132, !18}
!133 = !{!89, !16, i64 20}
!134 = !{!89, !12, i64 8}
!135 = distinct !{!135, !18}
!136 = distinct !{!136, !18}
!137 = distinct !{!137, !18}
!138 = distinct !{!138, !18}
!139 = distinct !{!139, !18}
!140 = distinct !{!140, !18}
!141 = distinct !{!141, !18}
!142 = distinct !{!142, !18}
!143 = distinct !{!143, !18}
!144 = distinct !{!144, !18}
!145 = distinct !{!145, !18}
!146 = !{!34, !16, i64 68}
!147 = distinct !{!147, !18}
!148 = distinct !{!148, !18}
!149 = distinct !{!149, !18}
!150 = !{!151, !16, i64 0}
!151 = !{!"", !16, i64 0, !12, i64 8}
!152 = !{!153, !16, i64 0}
!153 = !{!"VEC_edge_base", !16, i64 0, !16, i64 4, !8, i64 8}
!154 = distinct !{!154, !18}
!155 = distinct !{!155, !18}
!156 = distinct !{!156, !18}
!157 = distinct !{!157, !18}
!158 = distinct !{!158, !18}
