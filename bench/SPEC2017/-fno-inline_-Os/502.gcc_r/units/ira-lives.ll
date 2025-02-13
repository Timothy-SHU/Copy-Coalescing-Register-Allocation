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

@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@ira_reg_class_nregs = external local_unnamed_addr global [27 x [87 x i32]], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@ira_finish_point_ranges = dso_local local_unnamed_addr global ptr null, align 8
@ira_start_point_ranges = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [10 x i8] c" [%d..%d]\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@allocnos_live = internal unnamed_addr global ptr null, align 8
@curr_point = internal unnamed_addr global i32 0, align 4
@last_call_num = internal unnamed_addr global i32 0, align 4
@allocno_saved_at_call = internal unnamed_addr global ptr null, align 8
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@ira_max_point = dso_local local_unnamed_addr global i32 0, align 4
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Ranges after the compression:\0A\00", align 1
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" a%d(r%d):\00", align 1
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
@.str.4 = private unnamed_addr constant [29 x i8] c"   Insn %u(l%d): point = %d\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ira-lives.c\00", align 1
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
@.str.8 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Compressing live ranges: from %d to %d - %d%%\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_implicitly_set_insn_hard_regs(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !165 {
  store i64 0, ptr %0, align 8, !tbaa !166
  %2 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !170
  %3 = icmp sgt i8 %2, 0
  br i1 %3, label %4, label %72

4:                                                ; preds = %1, %67
  %5 = phi i8 [ %68, %67 ], [ %2, %1 ]
  %6 = phi i64 [ %69, %67 ], [ 0, %1 ]
  %7 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !173
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !174
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
  %24 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !173
  %25 = zext nneg i32 %21 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !173
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %16, %23
  %30 = phi i32 [ %28, %23 ], [ %17, %16 ]
  %31 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %6
  %32 = load ptr, ptr %31, align 8, !tbaa !173
  %33 = lshr i32 %30, 16
  %34 = and i32 %33, 255
  %35 = zext nneg i32 %34 to i64
  br label %36

36:                                               ; preds = %61, %29
  %37 = phi i8 [ 0, %29 ], [ %62, %61 ]
  %38 = phi ptr [ %32, %29 ], [ %64, %61 ]
  %39 = load i8, ptr %38, align 1, !tbaa !174
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
  %52 = load i32, ptr %51, align 4, !tbaa !175
  %53 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %50, i64 %35
  %54 = load i32, ptr %53, align 4, !tbaa !175
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %50
  %58 = load i64, ptr %57, align 8, !tbaa !166
  %59 = load i64, ptr %0, align 8, !tbaa !166
  %60 = or i64 %59, %58
  store i64 %60, ptr %0, align 8, !tbaa !166
  br label %61

61:                                               ; preds = %43, %36, %41, %44, %48, %56, %40
  %62 = phi i8 [ 0, %40 ], [ 1, %41 ], [ 0, %43 ], [ 0, %56 ], [ 0, %48 ], [ 0, %44 ], [ 1, %36 ]
  %63 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %39) #18
  %64 = getelementptr inbounds i8, ptr %38, i64 %63
  br label %36, !llvm.loop !177

65:                                               ; preds = %36
  %66 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !170
  br label %67

67:                                               ; preds = %65, %16, %20
  %68 = phi i8 [ %5, %20 ], [ %5, %16 ], [ %66, %65 ]
  %69 = add nuw nsw i64 %6, 1
  %70 = sext i8 %68 to i64
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %4, label %72, !llvm.loop !179

72:                                               ; preds = %67, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !180 !PGOFuncName !181 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !174
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #4 !prof !182 !PGOFuncName !183 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !184
  ret i64 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_rebuild_start_finish_chains() local_unnamed_addr #0 !prof !185 {
  %1 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !173
  tail call void @ira_free(ptr noundef %1) #19
  %2 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !173
  tail call void @ira_free(ptr noundef %2) #19
  tail call fastcc void @create_start_finish_chains() #18
  ret void
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_start_finish_chains() unnamed_addr #0 !prof !186 !PGOFuncName !187 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %3 = load i32, ptr @ira_max_point, align 4, !tbaa !175
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #19
  store ptr %6, ptr @ira_start_point_ranges, align 8, !tbaa !173
  %7 = load i32, ptr @ira_max_point, align 4, !tbaa !175
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %9, i1 false)
  %10 = load i32, ptr @ira_max_point, align 4, !tbaa !175
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr @ira_allocate(i64 noundef %12) #19
  store ptr %13, ptr @ira_finish_point_ranges, align 8, !tbaa !173
  %14 = load i32, ptr @ira_max_point, align 4, !tbaa !175
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %16, i1 false)
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #18
  %17 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !188
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %46, label %22, !prof !189

19:                                               ; preds = %27, %22
  %20 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !188
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %46, label %22, !prof !190, !llvm.loop !191

22:                                               ; preds = %0, %19
  %23 = load ptr, ptr %1, align 8, !tbaa !173
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !173
  %26 = icmp eq ptr %25, null
  br i1 %26, label %19, label %27, !prof !192

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %44, %27 ], [ %25, %22 ]
  %29 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !173
  %30 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !193
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %29, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !173
  %35 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !195
  store ptr %28, ptr %33, align 8, !tbaa !173
  %36 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !173
  %37 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !196
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !173
  %42 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 5
  store ptr %41, ptr %42, align 8, !tbaa !197
  store ptr %28, ptr %40, align 8, !tbaa !173
  %43 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !173
  %45 = icmp eq ptr %44, null
  br i1 %45, label %19, label %27, !prof !198, !llvm.loop !199

46:                                               ; preds = %19, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_print_live_range_list(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #5 !prof !165 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %12, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !196
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !200
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !201

14:                                               ; preds = %4, %2
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_live_range_list(ptr noundef %0) local_unnamed_addr #5 !prof !165 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !173
  tail call void @ira_print_live_range_list(ptr noundef %2, ptr noundef %0) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_allocno_live_ranges(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !165 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !173
  tail call fastcc void @print_allocno_live_ranges(ptr noundef %2, ptr noundef %0) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_allocno_live_ranges(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !prof !165 !PGOFuncName !202 {
  %3 = load i32, ptr %1, align 8, !tbaa !203
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !205
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %5) #18
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  tail call void @ira_print_live_range_list(ptr noundef %0, ptr noundef %8) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_live_ranges() local_unnamed_addr #5 !prof !165 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !173
  tail call fastcc void @print_live_ranges(ptr noundef %1) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_live_ranges(ptr nocapture noundef %0) unnamed_addr #5 !prof !165 !PGOFuncName !207 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #18
  %4 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !188
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1, %6
  %7 = load ptr, ptr %2, align 8, !tbaa !173
  tail call fastcc void @print_allocno_live_ranges(ptr noundef %0, ptr noundef %7) #18
  %8 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !188
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %6, !llvm.loop !208

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_create_allocno_live_ranges() local_unnamed_addr #0 !prof !185 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !175
  %2 = tail call ptr @sparseset_alloc(i32 noundef %1) #19
  store ptr %2, ptr @allocnos_live, align 8, !tbaa !173
  store i32 0, ptr @curr_point, align 4, !tbaa !175
  store i32 0, ptr @last_call_num, align 4, !tbaa !175
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !175
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #19
  store ptr %6, ptr @allocno_saved_at_call, align 8, !tbaa !173
  %7 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !175
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %9, i1 false)
  %10 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !173
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %10, ptr noundef null, ptr noundef nonnull @process_bb_node_lives) #19
  %11 = load i32, ptr @curr_point, align 4, !tbaa !175
  store i32 %11, ptr @ira_max_point, align 4, !tbaa !175
  tail call fastcc void @create_start_finish_chains() #18
  %12 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !175
  %13 = icmp sgt i32 %12, 2
  %14 = load ptr, ptr @ira_dump_file, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !209

17:                                               ; preds = %0
  tail call fastcc void @print_live_ranges(ptr noundef nonnull %14) #18
  br label %18

18:                                               ; preds = %17, %0
  %19 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !173
  tail call void @ira_free(ptr noundef %19) #19
  %20 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  tail call void @free(ptr noundef %20) #18
  ret void
}

; Function Attrs: optsize
declare ptr @sparseset_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @process_bb_node_lives(ptr noundef %0) #0 !prof !210 !PGOFuncName !211 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !212
  %5 = icmp eq ptr %4, null
  br i1 %5, label %444, label %6, !prof !214

6:                                                ; preds = %1
  %7 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !175
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20, !prof !215

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %13 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !175
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %15
  store i32 0, ptr %16, align 4, !tbaa !175
  %17 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %15
  store i32 -1, ptr %17, align 4, !tbaa !175
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %10
  br i1 %19, label %20, label %11, !prof !216, !llvm.loop !217

20:                                               ; preds = %11, %6
  store ptr %0, ptr @curr_bb_node, align 8, !tbaa !173
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !218
  %23 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %22) #18
  %24 = getelementptr inbounds %struct.df_lr_bb_info, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !220
  %26 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  tail call fastcc void @sparseset_clear(ptr noundef %26) #18
  store i64 0, ptr @hard_regs_live, align 8, !tbaa !166
  tail call void @reg_set_to_hard_reg_set(ptr noundef nonnull @hard_regs_live, ptr noundef %25) #19
  %27 = load i64, ptr @eliminable_regset, align 8, !tbaa !166
  %28 = load i64, ptr @hard_regs_live, align 8, !tbaa !166
  %29 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !166
  %30 = or i64 %27, %29
  %31 = xor i64 %30, -1
  %32 = and i64 %28, %31
  store i64 %32, ptr @hard_regs_live, align 8, !tbaa !166
  %33 = load ptr, ptr @curr_bb_node, align 8
  br label %34

34:                                               ; preds = %20, %67
  %35 = phi i64 [ 0, %20 ], [ %69, %67 ]
  %36 = phi i32 [ undef, %20 ], [ %68, %67 ]
  %37 = shl nuw nsw i64 1, %35
  %38 = and i64 %37, %32
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %67, label %40, !prof !222

40:                                               ; preds = %34
  %41 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %35
  %42 = load i32, ptr %41, align 4, !tbaa !175
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !175
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %46, i64 0
  %48 = load i32, ptr %47, align 4, !tbaa !175
  %49 = icmp eq i32 %48, 27
  br i1 %49, label %67, label %50, !prof !223

50:                                               ; preds = %40, %61
  %51 = phi i32 [ %65, %61 ], [ %48, %40 ]
  %52 = phi i32 [ %62, %61 ], [ 0, %40 ]
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !175
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !175
  %57 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %33, i64 0, i32 11, i64 %53
  %58 = load i32, ptr %57, align 4, !tbaa !175
  %59 = icmp sgt i32 %58, %55
  br i1 %59, label %61, label %60, !prof !224

60:                                               ; preds = %50
  store i32 %56, ptr %57, align 4, !tbaa !175
  br label %61

61:                                               ; preds = %50, %60
  %62 = add i32 %52, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %46, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !175
  %66 = icmp eq i32 %65, 27
  br i1 %66, label %67, label %50, !prof !225, !llvm.loop !226

67:                                               ; preds = %61, %40, %34
  %68 = phi i32 [ %36, %34 ], [ 0, %40 ], [ %62, %61 ]
  %69 = add nuw nsw i64 %35, 1
  %70 = icmp eq i64 %69, 53
  br i1 %70, label %71, label %34, !prof !227, !llvm.loop !228

71:                                               ; preds = %67
  store i32 %68, ptr %2, align 4, !tbaa !175
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %25, i32 noundef 53, ptr noundef nonnull %2) #18
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !188
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %89, label %74, !prof !229

74:                                               ; preds = %71
  %75 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !173
  br label %76

76:                                               ; preds = %74, %85
  %77 = phi ptr [ %75, %74 ], [ %86, %85 ]
  %78 = load i32, ptr %2, align 4, !tbaa !175
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !173
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83, !prof !230

83:                                               ; preds = %76
  tail call fastcc void @set_allocno_live(ptr noundef nonnull %81) #18
  tail call fastcc void @make_regno_born(i32 noundef %78) #18
  %84 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !173
  br label %85

85:                                               ; preds = %76, %83
  %86 = phi ptr [ %77, %76 ], [ %84, %83 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !188
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %76, !prof !231, !llvm.loop !232

89:                                               ; preds = %85, %71
  %90 = load i32, ptr @optimize_size, align 4, !tbaa !175
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %110, !prof !233

92:                                               ; preds = %89
  %93 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !175
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95, !prof !233

95:                                               ; preds = %92
  %96 = load ptr, ptr @cfun, align 8, !tbaa !173
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !234
  %99 = load ptr, ptr %98, align 8, !tbaa !236
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 8
  %101 = load i64, ptr %100, align 8, !tbaa !238
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %95, %92
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 11
  %105 = load i32, ptr %104, align 8, !tbaa !239
  %106 = add i32 %105, 9
  %107 = icmp ult i32 %106, 19
  br i1 %107, label %110, label %108, !prof !240

108:                                              ; preds = %103
  %109 = sdiv i32 %105, 10
  br label %110

110:                                              ; preds = %108, %103, %89, %95
  %111 = phi i32 [ %109, %108 ], [ 1, %103 ], [ 1000, %89 ], [ 1000, %95 ]
  %112 = load i32, ptr @last_call_num, align 4, !tbaa !175
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr @last_call_num, align 4, !tbaa !175
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8, !tbaa !174
  %116 = getelementptr inbounds %struct.rtl_bb_info, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !174
  %118 = icmp eq ptr %117, null
  br i1 %118, label %377, label %119, !prof !241

119:                                              ; preds = %110, %373
  %120 = phi ptr [ %375, %373 ], [ %117, %110 ]
  %121 = load ptr, ptr %114, align 8, !tbaa !174
  %122 = load ptr, ptr %121, align 8, !tbaa !242
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !174
  %125 = icmp eq ptr %120, %124
  br i1 %125, label %377, label %126, !prof !244

126:                                              ; preds = %119
  %127 = load i32, ptr %120, align 8
  %128 = and i32 %127, 65535
  %129 = add nsw i32 %128, -11
  %130 = icmp ult i32 %129, -3
  br i1 %130, label %373, label %131, !prof !245

131:                                              ; preds = %126
  %132 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !175
  %133 = icmp sgt i32 %132, 2
  %134 = load ptr, ptr @ira_dump_file, align 8
  %135 = icmp ne ptr %134, null
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %137, label %148, !prof !246

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %139 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !174
  %141 = load ptr, ptr %138, align 8, !tbaa !247
  %142 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !248
  %144 = load i32, ptr %143, align 8, !tbaa !249
  %145 = load i32, ptr @curr_point, align 4, !tbaa !175
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %134, ptr noundef nonnull @.str.4, i32 noundef %140, i32 noundef %144, i32 noundef %145) #18
  %147 = load i32, ptr %120, align 8
  br label %148

148:                                              ; preds = %137, %131
  %149 = phi i32 [ %147, %137 ], [ %127, %131 ]
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 10
  %152 = load ptr, ptr @df, align 8, !tbaa !173
  %153 = getelementptr inbounds %struct.df, ptr %152, i64 0, i32 10
  %154 = load ptr, ptr %153, align 8, !tbaa !253
  %155 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !174
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %154, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !173
  %160 = getelementptr inbounds %struct.df_insn_info, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !256
  %162 = load ptr, ptr %161, align 8, !tbaa !173
  %163 = icmp eq ptr %162, null
  br i1 %163, label %176, label %164, !prof !258

164:                                              ; preds = %148, %172
  %165 = phi ptr [ %174, %172 ], [ %162, %148 ]
  %166 = phi ptr [ %173, %172 ], [ %161, %148 ]
  br i1 %151, label %167, label %171, !prof !259

167:                                              ; preds = %164
  %168 = load i32, ptr %165, align 8
  %169 = and i32 %168, 4194304
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172, !prof !260

171:                                              ; preds = %167, %164
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %165) #18
  br label %172

172:                                              ; preds = %167, %171
  %173 = getelementptr inbounds ptr, ptr %166, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !173
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %164, !prof !261, !llvm.loop !262

176:                                              ; preds = %172, %148
  %177 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !174
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 15
  br i1 %181, label %182, label %233, !prof !263

182:                                              ; preds = %176
  %183 = tail call i32 @multiple_sets(ptr noundef nonnull %120) #19
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %233, label %185, !prof !264

185:                                              ; preds = %182
  %186 = load ptr, ptr @df, align 8, !tbaa !173
  %187 = getelementptr inbounds %struct.df, ptr %186, i64 0, i32 10
  %188 = load ptr, ptr %187, align 8, !tbaa !253
  %189 = load i32, ptr %155, align 8, !tbaa !174
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds ptr, ptr %188, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !173
  %193 = getelementptr inbounds %struct.df_insn_info, ptr %192, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !265
  %195 = load ptr, ptr %194, align 8, !tbaa !173
  %196 = icmp eq ptr %195, null
  br i1 %196, label %233, label %197, !prof !266

197:                                              ; preds = %185, %229
  %198 = phi ptr [ %231, %229 ], [ %195, %185 ]
  %199 = phi ptr [ %230, %229 ], [ %194, %185 ]
  %200 = getelementptr inbounds %struct.df_base_ref, ptr %198, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !174
  %202 = load ptr, ptr %177, align 8, !tbaa !174
  %203 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !174
  %205 = load i32, ptr %204, align 8, !tbaa !267
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %229, !prof !269

207:                                              ; preds = %197
  %208 = zext nneg i32 %205 to i64
  br label %209

209:                                              ; preds = %207, %227
  %210 = phi i64 [ %208, %207 ], [ %211, %227 ]
  %211 = add nsw i64 %210, -1
  %212 = load ptr, ptr %177, align 8, !tbaa !174
  %213 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !174
  %215 = getelementptr inbounds %struct.rtvec_def, ptr %214, i64 0, i32 1, i64 %211
  %216 = load ptr, ptr %215, align 8, !tbaa !173
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, 65535
  %219 = icmp eq i32 %218, 23
  br i1 %219, label %220, label %227, !prof !270

220:                                              ; preds = %209
  %221 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !174
  %223 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %201, ptr noundef %222) #19
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225, !prof !270

225:                                              ; preds = %220
  %226 = load ptr, ptr %199, align 8, !tbaa !173
  tail call fastcc void @mark_ref_live(ptr noundef %226) #18
  br label %229

227:                                              ; preds = %209, %220
  %228 = icmp ugt i64 %210, 1
  br i1 %228, label %209, label %229, !prof !271, !llvm.loop !272

229:                                              ; preds = %227, %197, %225
  %230 = getelementptr inbounds ptr, ptr %199, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !173
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %197, !prof !273, !llvm.loop !274

233:                                              ; preds = %229, %185, %182, %176
  tail call void @extract_insn(ptr noundef nonnull %120) #19
  tail call void @preprocess_constraints() #19
  tail call fastcc void @process_single_reg_class_operands(i8 noundef zeroext 0, i32 noundef %111) #18
  %234 = load ptr, ptr @df, align 8, !tbaa !173
  %235 = getelementptr inbounds %struct.df, ptr %234, i64 0, i32 10
  %236 = load ptr, ptr %235, align 8, !tbaa !253
  %237 = load i32, ptr %155, align 8, !tbaa !174
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds ptr, ptr %236, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !173
  %241 = getelementptr inbounds %struct.df_insn_info, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !256
  %243 = load ptr, ptr %242, align 8, !tbaa !173
  %244 = icmp eq ptr %243, null
  br i1 %244, label %257, label %245, !prof !258

245:                                              ; preds = %233, %253
  %246 = phi ptr [ %255, %253 ], [ %243, %233 ]
  %247 = phi ptr [ %254, %253 ], [ %242, %233 ]
  br i1 %151, label %248, label %252, !prof !259

248:                                              ; preds = %245
  %249 = load i32, ptr %246, align 8
  %250 = and i32 %249, 4194304
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253, !prof !260

252:                                              ; preds = %248, %245
  tail call fastcc void @mark_ref_dead(ptr noundef nonnull %246) #18
  br label %253

253:                                              ; preds = %248, %252
  %254 = getelementptr inbounds ptr, ptr %247, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !173
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %245, !prof !261, !llvm.loop !275

257:                                              ; preds = %253, %233
  br i1 %151, label %258, label %309, !prof !276

258:                                              ; preds = %257
  %259 = load i32, ptr @last_call_num, align 4, !tbaa !175
  %260 = add nsw i32 %259, 1
  store i32 %260, ptr @last_call_num, align 4, !tbaa !175
  %261 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  tail call fastcc void @sparseset_iter_init(ptr noundef %261) #18
  %262 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %261) #18, !range !188
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %309, label %264, !prof !277

264:                                              ; preds = %258, %305
  %265 = phi ptr [ %306, %305 ], [ %261, %258 ]
  %266 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %265) #18
  %267 = load ptr, ptr @ira_allocnos, align 8, !tbaa !173
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds ptr, ptr %267, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !173
  %271 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !173
  %272 = getelementptr inbounds i32, ptr %271, i64 %268
  %273 = load i32, ptr %272, align 4, !tbaa !175
  %274 = load i32, ptr @last_call_num, align 4, !tbaa !175
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %280, label %276, !prof !278

276:                                              ; preds = %264
  %277 = getelementptr inbounds %struct.ira_allocno, ptr %270, i64 0, i32 29
  %278 = load i32, ptr %277, align 4, !tbaa !279
  %279 = add nsw i32 %278, %111
  store i32 %279, ptr %277, align 4, !tbaa !279
  br label %280

280:                                              ; preds = %276, %264
  %281 = add nsw i32 %274, 1
  store i32 %281, ptr %272, align 4, !tbaa !175
  %282 = getelementptr inbounds %struct.ira_allocno, ptr %270, i64 0, i32 30
  %283 = load i32, ptr %282, align 8, !tbaa !280
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr %282, align 8, !tbaa !280
  %285 = load ptr, ptr @cfun, align 8, !tbaa !173
  %286 = getelementptr inbounds %struct.function, ptr %285, i64 0, i32 20
  %287 = load i32, ptr %286, align 8
  %288 = and i32 %287, 1048576
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %293, !prof !281

290:                                              ; preds = %280
  %291 = tail call ptr @find_reg_note(ptr noundef nonnull %120, i32 noundef 30, ptr noundef null) #19
  %292 = icmp eq ptr %291, null
  br i1 %292, label %295, label %293, !prof !281

293:                                              ; preds = %290, %280
  %294 = getelementptr inbounds %struct.ira_allocno, ptr %270, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %294, i8 -1, i64 16, i1 false)
  br label %295

295:                                              ; preds = %293, %290
  %296 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %120) #19
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %305, label %298, !prof !281

298:                                              ; preds = %295
  %299 = load i64, ptr @call_used_reg_set, align 8, !tbaa !166
  %300 = getelementptr inbounds %struct.ira_allocno, ptr %270, i64 0, i32 26
  %301 = load <2 x i64>, ptr %300, align 8, !tbaa !166
  %302 = insertelement <2 x i64> poison, i64 %299, i64 0
  %303 = shufflevector <2 x i64> %302, <2 x i64> poison, <2 x i32> zeroinitializer
  %304 = or <2 x i64> %301, %303
  store <2 x i64> %304, ptr %300, align 8, !tbaa !166
  br label %305

305:                                              ; preds = %298, %295
  %306 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  tail call fastcc void @sparseset_iter_next(ptr noundef %306) #18
  %307 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %306) #18, !range !188
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %264, !prof !282, !llvm.loop !283

309:                                              ; preds = %305, %258, %257
  tail call fastcc void @make_early_clobber_and_input_conflicts() #18
  %310 = load i32, ptr @curr_point, align 4, !tbaa !175
  %311 = add nsw i32 %310, 1
  store i32 %311, ptr @curr_point, align 4, !tbaa !175
  %312 = load ptr, ptr @df, align 8, !tbaa !173
  %313 = getelementptr inbounds %struct.df, ptr %312, i64 0, i32 10
  %314 = load ptr, ptr %313, align 8, !tbaa !253
  %315 = load i32, ptr %155, align 8, !tbaa !174
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds ptr, ptr %314, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !173
  %319 = getelementptr inbounds %struct.df_insn_info, ptr %318, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !265
  %321 = load ptr, ptr %320, align 8, !tbaa !173
  %322 = icmp eq ptr %321, null
  br i1 %322, label %329, label %323, !prof !284

323:                                              ; preds = %309, %323
  %324 = phi ptr [ %327, %323 ], [ %321, %309 ]
  %325 = phi ptr [ %326, %323 ], [ %320, %309 ]
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %324) #18
  %326 = getelementptr inbounds ptr, ptr %325, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !173
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %323, !prof !285, !llvm.loop !286

329:                                              ; preds = %323, %309
  tail call fastcc void @process_single_reg_class_operands(i8 noundef zeroext 1, i32 noundef %111) #18
  %330 = tail call fastcc zeroext i8 @mark_hard_reg_early_clobbers(ptr noundef nonnull %120, i8 noundef zeroext 1) #18, !range !188
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %370, label %332, !prof !287

332:                                              ; preds = %329
  %333 = tail call fastcc zeroext i8 @mark_hard_reg_early_clobbers(ptr noundef nonnull %120, i8 noundef zeroext 0) #18, !range !188
  %334 = load ptr, ptr @df, align 8, !tbaa !173
  %335 = getelementptr inbounds %struct.df, ptr %334, i64 0, i32 10
  %336 = load ptr, ptr %335, align 8, !tbaa !253
  %337 = load i32, ptr %155, align 8, !tbaa !174
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds ptr, ptr %336, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !173
  %341 = getelementptr inbounds %struct.df_insn_info, ptr %340, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !265
  %343 = load ptr, ptr %342, align 8, !tbaa !173
  %344 = icmp eq ptr %343, null
  br i1 %344, label %370, label %345, !prof !288

345:                                              ; preds = %332, %366
  %346 = phi ptr [ %368, %366 ], [ %343, %332 ]
  %347 = phi ptr [ %367, %366 ], [ %342, %332 ]
  %348 = getelementptr inbounds %struct.df_base_ref, ptr %346, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !174
  %350 = load i32, ptr %349, align 8
  %351 = and i32 %350, 65535
  %352 = icmp eq i32 %351, 39
  br i1 %352, label %353, label %357, !prof !289

353:                                              ; preds = %345
  %354 = getelementptr inbounds %struct.rtx_def, ptr %349, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !174
  %356 = load i32, ptr %355, align 8
  br label %357

357:                                              ; preds = %353, %345
  %358 = phi i32 [ %356, %353 ], [ %350, %345 ]
  %359 = phi ptr [ %355, %353 ], [ %349, %345 ]
  %360 = and i32 %358, 65535
  %361 = icmp eq i32 %360, 37
  br i1 %361, label %362, label %366, !prof !290

362:                                              ; preds = %357
  %363 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %359) #18
  %364 = icmp ugt i32 %363, 52
  br i1 %364, label %366, label %365, !prof !291

365:                                              ; preds = %362
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %346) #18
  br label %366

366:                                              ; preds = %357, %362, %365
  %367 = getelementptr inbounds ptr, ptr %347, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !173
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %345, !prof !292, !llvm.loop !293

370:                                              ; preds = %366, %332, %329
  %371 = load i32, ptr @curr_point, align 4, !tbaa !175
  %372 = add nsw i32 %371, 1
  store i32 %372, ptr @curr_point, align 4, !tbaa !175
  br label %373

373:                                              ; preds = %126, %370
  %374 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %375 = load ptr, ptr %374, align 8, !tbaa !174
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %119, !prof !294, !llvm.loop !295

377:                                              ; preds = %119, %373, %110
  %378 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef nonnull %4) #18, !range !188
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %381, label %380, !prof !233

380:                                              ; preds = %377
  tail call fastcc void @make_regno_born(i32 noundef 0) #18
  tail call fastcc void @make_regno_born(i32 noundef 1) #18
  br label %381

381:                                              ; preds = %380, %377
  %382 = tail call fastcc zeroext i8 @bb_has_abnormal_pred(ptr noundef nonnull %4) #18, !range !188
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %427, label %384, !prof !233

384:                                              ; preds = %381
  %385 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  tail call fastcc void @sparseset_iter_init(ptr noundef %385) #18
  %386 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %385) #18, !range !188
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %403, label %388

388:                                              ; preds = %384, %388
  %389 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %385) #18
  %390 = load ptr, ptr @ira_allocnos, align 8, !tbaa !173
  %391 = zext i32 %389 to i64
  %392 = getelementptr inbounds ptr, ptr %390, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !173
  %394 = getelementptr inbounds %struct.ira_allocno, ptr %393, i64 0, i32 31
  %395 = load i16, ptr %394, align 4
  %396 = or i16 %395, 16
  store i16 %396, ptr %394, align 4
  %397 = load ptr, ptr %392, align 8, !tbaa !173
  %398 = getelementptr inbounds %struct.ira_allocno, ptr %397, i64 0, i32 31
  %399 = load i16, ptr %398, align 4
  %400 = or i16 %399, 32
  store i16 %400, ptr %398, align 4
  tail call fastcc void @sparseset_iter_next(ptr noundef %385) #18
  %401 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %385) #18, !range !188
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %403, label %388, !llvm.loop !296

403:                                              ; preds = %388, %384
  br label %404

404:                                              ; preds = %403, %404
  %405 = phi i32 [ %406, %404 ], [ 8, %403 ]
  tail call fastcc void @make_regno_born(i32 noundef %405) #18
  %406 = add nuw nsw i32 %405, 1
  %407 = icmp eq i32 %406, 16
  br i1 %407, label %408, label %404, !llvm.loop !297

408:                                              ; preds = %404
  %409 = load ptr, ptr @cfun, align 8, !tbaa !173
  %410 = getelementptr inbounds %struct.function, ptr %409, i64 0, i32 20
  %411 = load i32, ptr %410, align 8
  %412 = and i32 %411, 1048576
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %427

414:                                              ; preds = %408
  %415 = tail call fastcc zeroext i8 @bb_has_abnormal_call_pred(ptr noundef nonnull %4) #18, !range !188
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %427, label %417

417:                                              ; preds = %414, %424
  %418 = phi i64 [ %425, %424 ], [ 0, %414 ]
  %419 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !174
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %417
  %423 = trunc i64 %418 to i32
  tail call fastcc void @make_regno_born(i32 noundef %423) #18
  br label %424

424:                                              ; preds = %417, %422
  %425 = add nuw nsw i64 %418, 1
  %426 = icmp eq i64 %425, 53
  br i1 %426, label %427, label %417, !llvm.loop !298

427:                                              ; preds = %424, %408, %414, %381
  %428 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  tail call fastcc void @sparseset_iter_init(ptr noundef %428) #18
  %429 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %428) #18, !range !188
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %441, label %431, !prof !229

431:                                              ; preds = %427, %431
  %432 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %428) #18
  %433 = load ptr, ptr @ira_allocnos, align 8, !tbaa !173
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds ptr, ptr %433, i64 %434
  %436 = load ptr, ptr %435, align 8, !tbaa !173
  %437 = getelementptr inbounds %struct.ira_allocno, ptr %436, i64 0, i32 1
  %438 = load i32, ptr %437, align 4, !tbaa !205
  tail call fastcc void @make_regno_dead(i32 noundef %438) #18
  tail call fastcc void @sparseset_iter_next(ptr noundef %428) #18
  %439 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %428) #18, !range !188
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %441, label %431, !prof !299, !llvm.loop !300

441:                                              ; preds = %431, %427
  %442 = load i32, ptr @curr_point, align 4, !tbaa !175
  %443 = add nsw i32 %442, 1
  store i32 %443, ptr @curr_point, align 4, !tbaa !175
  br label %444

444:                                              ; preds = %441, %1
  %445 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !173
  %446 = icmp ne ptr %445, %0
  %447 = load i32, ptr @ira_reg_class_cover_size, align 4
  %448 = icmp sgt i32 %447, 0
  %449 = select i1 %446, i1 %448, i1 false
  br i1 %449, label %450, label %471, !prof !301

450:                                              ; preds = %444
  %451 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %452 = load ptr, ptr %451, align 8, !tbaa !247
  br label %453

453:                                              ; preds = %450, %466
  %454 = phi i32 [ %447, %450 ], [ %467, %466 ]
  %455 = phi i64 [ 0, %450 ], [ %468, %466 ]
  %456 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %455
  %457 = load i32, ptr %456, align 4, !tbaa !175
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %458
  %460 = load i32, ptr %459, align 4, !tbaa !175
  %461 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %452, i64 0, i32 11, i64 %458
  %462 = load i32, ptr %461, align 4, !tbaa !175
  %463 = icmp sgt i32 %460, %462
  br i1 %463, label %464, label %466, !prof !302

464:                                              ; preds = %453
  store i32 %460, ptr %461, align 4, !tbaa !175
  %465 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !175
  br label %466

466:                                              ; preds = %464, %453
  %467 = phi i32 [ %465, %464 ], [ %454, %453 ]
  %468 = add nuw nsw i64 %455, 1
  %469 = sext i32 %467 to i64
  %470 = icmp slt i64 %468, %469
  br i1 %470, label %453, label %471, !prof !303, !llvm.loop !304

471:                                              ; preds = %466, %444
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_compress_allocno_live_ranges() local_unnamed_addr #0 !prof !185 {
  tail call fastcc void @remove_some_program_points_and_update_live_ranges() #18
  tail call void @ira_rebuild_start_finish_chains() #18
  %1 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !175
  %2 = icmp sgt i32 %1, 2
  %3 = load ptr, ptr @ira_dump_file, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %9, !prof !209

6:                                                ; preds = %0
  %7 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 30, i64 1, ptr nonnull %3)
  %8 = load ptr, ptr @ira_dump_file, align 8, !tbaa !173
  tail call fastcc void @print_live_ranges(ptr noundef %8) #18
  br label %9

9:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_some_program_points_and_update_live_ranges() unnamed_addr #0 !prof !185 !PGOFuncName !305 {
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
  %6 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !188
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %11, !prof !306

8:                                                ; preds = %16, %11
  %9 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !188
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %27, label %11, !prof !307, !llvm.loop !308

11:                                               ; preds = %0, %8
  %12 = load ptr, ptr %2, align 8, !tbaa !173
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !173
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %16, !prof !309

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %25, %16 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !193
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %19) #19
  %21 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !196
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %22) #19
  %24 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !173
  %26 = icmp eq ptr %25, null
  br i1 %26, label %8, label %16, !prof !310, !llvm.loop !311

27:                                               ; preds = %8, %0
  %28 = load i32, ptr @ira_max_point, align 4, !tbaa !175
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr @ira_allocate(i64 noundef %30) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 0, ptr noundef nonnull %1) #18
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %1) #18, !range !188
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34, !prof !306

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ 0, %27 ]
  %36 = add nuw nsw i32 %35, 1
  %37 = load i32, ptr %1, align 4, !tbaa !175
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %31, i64 %38
  store i32 %35, ptr %39, align 4, !tbaa !175
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %1) #18
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %1) #18, !range !188
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %34, !prof !312, !llvm.loop !313

42:                                               ; preds = %34, %27
  %43 = phi i32 [ 0, %27 ], [ %36, %34 ]
  tail call void @ira_free_bitmap(ptr noundef %5) #19
  %44 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !175
  %45 = icmp sgt i32 %44, 1
  %46 = load ptr, ptr @ira_dump_file, align 8
  %47 = icmp ne ptr %46, null
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %54, !prof !209

49:                                               ; preds = %42
  %50 = load i32, ptr @ira_max_point, align 4, !tbaa !175
  %51 = mul nsw i32 %43, 100
  %52 = sdiv i32 %51, %50
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.9, i32 noundef %50, i32 noundef %43, i32 noundef %52) #18
  br label %54

54:                                               ; preds = %49, %42
  store i32 %43, ptr @ira_max_point, align 4, !tbaa !175
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #18
  %55 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !188
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %80, label %60, !prof !306

57:                                               ; preds = %65, %60
  %58 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !188
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %80, label %60, !prof !307, !llvm.loop !314

60:                                               ; preds = %54, %57
  %61 = load ptr, ptr %2, align 8, !tbaa !173
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 20
  %63 = load ptr, ptr %62, align 8, !tbaa !173
  %64 = icmp eq ptr %63, null
  br i1 %64, label %57, label %65, !prof !309

65:                                               ; preds = %60, %65
  %66 = phi ptr [ %78, %65 ], [ %63, %60 ]
  %67 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !193
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %31, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !175
  store i32 %71, ptr %67, align 8, !tbaa !193
  %72 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %66, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !196
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %31, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !175
  store i32 %76, ptr %72, align 4, !tbaa !196
  %77 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %66, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !173
  %79 = icmp eq ptr %78, null
  br i1 %79, label %57, label %65, !prof !310, !llvm.loop !315

80:                                               ; preds = %57, %54
  tail call void @ira_free(ptr noundef %31) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_allocno_live_ranges() local_unnamed_addr #0 !prof !185 {
  %1 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !173
  tail call void @ira_free(ptr noundef %1) #19
  %2 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !173
  tail call void @ira_free(ptr noundef %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #9 !prof !316 !PGOFuncName !317 {
  store i32 0, ptr %0, align 4, !tbaa !318
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !prof !320 !PGOFuncName !321 {
  %3 = load i32, ptr %0, align 4, !tbaa !318
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !175
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !322

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !173
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !173
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !323

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !173
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !318
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !324, !llvm.loop !325

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #11 !prof !326 !PGOFuncName !327 {
  %2 = load ptr, ptr @df, align 8, !tbaa !173
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !328
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !233

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !330
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_clear(ptr nocapture noundef writeonly %0) unnamed_addr #9 !prof !326 !PGOFuncName !331 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !332
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 0, ptr %3, align 1, !tbaa !334
  ret void
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 !prof !210 !PGOFuncName !335 {
  %5 = load ptr, ptr %1, align 8, !tbaa !336
  store ptr %5, ptr %0, align 8, !tbaa !338
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !340
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9, !prof !341

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !338
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !342
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !344

14:                                               ; preds = %9
  %15 = shl i32 %12, 7
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %15, %14 ], [ %2, %9 ]
  %18 = lshr i32 %17, 6
  %19 = and i32 %18, 1
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !345
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !166
  %24 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %25 = and i32 %17, 63
  %26 = zext nneg i32 %25 to i64
  %27 = lshr i64 %23, %26
  store i64 %27, ptr %24, align 8, !tbaa !346
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add i32 %17, %29
  store i32 %30, ptr %3, align 4, !tbaa !175
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !347 !PGOFuncName !348 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !346
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !349

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !350

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !175
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !351, !llvm.loop !352

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !175
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !175
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !345
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !338
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !345
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !353

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !166
  store i64 %35, ptr %3, align 8, !tbaa !346
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !354

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !175
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !175
  %40 = load i32, ptr %23, align 8, !tbaa !345
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !345
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !355, !llvm.loop !356

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !357
  store ptr %44, ptr %0, align 8, !tbaa !338
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !358

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !342
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !175
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !346
  store i32 %16, ptr %1, align 4, !tbaa !175
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_allocno_live(ptr nocapture noundef %0) unnamed_addr #0 !prof !359 !PGOFuncName !360 {
  %2 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !173
  %3 = load i32, ptr %0, align 8, !tbaa !203
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %2, i64 %4
  store i32 0, ptr %5, align 4, !tbaa !175
  %6 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  %7 = load i32, ptr %0, align 8, !tbaa !203
  %8 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %6, i32 noundef %7) #18, !range !188
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %58, !prof !361

10:                                               ; preds = %1
  %11 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  %12 = load i32, ptr %0, align 8, !tbaa !203
  tail call fastcc void @sparseset_set_bit(ptr noundef %11, i32 noundef %12) #18
  %13 = load i64, ptr @hard_regs_live, align 8, !tbaa !166
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %15 = load <2 x i64>, ptr %14, align 8, !tbaa !166
  %16 = insertelement <2 x i64> poison, i64 %13, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  %18 = or <2 x i64> %15, %17
  store <2 x i64> %18, ptr %14, align 8, !tbaa !166
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !362
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %21, i64 0
  %23 = load i32, ptr %22, align 4, !tbaa !175
  %24 = icmp eq i32 %23, 27
  br i1 %24, label %58, label %25, !prof !363

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %27 = load i32, ptr @curr_point, align 4
  %28 = load ptr, ptr @curr_bb_node, align 8, !tbaa !173
  br label %29

29:                                               ; preds = %25, %53
  %30 = phi i64 [ 0, %25 ], [ %54, %53 ]
  %31 = phi i32 [ %23, %25 ], [ %56, %53 ]
  %32 = zext i32 %31 to i64
  %33 = load i32, ptr %26, align 8, !tbaa !364
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %32, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !175
  %37 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %32
  %38 = load i32, ptr %37, align 4, !tbaa !175
  %39 = add nsw i32 %38, %36
  store i32 %39, ptr %37, align 4, !tbaa !175
  %40 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %32
  %41 = load i32, ptr %40, align 4, !tbaa !175
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48, !prof !365

43:                                               ; preds = %29
  %44 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %32
  %45 = load i32, ptr %44, align 4, !tbaa !175
  %46 = icmp sgt i32 %39, %45
  br i1 %46, label %47, label %48, !prof !366

47:                                               ; preds = %43
  store i32 %27, ptr %40, align 4, !tbaa !175
  br label %48

48:                                               ; preds = %47, %43, %29
  %49 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 11, i64 %32
  %50 = load i32, ptr %49, align 4, !tbaa !175
  %51 = icmp slt i32 %50, %39
  br i1 %51, label %52, label %53, !prof !367

52:                                               ; preds = %48
  store i32 %39, ptr %49, align 4, !tbaa !175
  br label %53

53:                                               ; preds = %48, %52
  %54 = add nuw nsw i64 %30, 1
  %55 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %21, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !175
  %57 = icmp eq i32 %56, 27
  br i1 %57, label %58, label %29, !prof !368, !llvm.loop !369

58:                                               ; preds = %53, %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_regno_born(i32 noundef %0) unnamed_addr #0 !prof !370 !PGOFuncName !371 {
  %2 = icmp slt i32 %0, 53
  br i1 %2, label %3, label %25, !prof !372

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl nuw i64 1, %4
  %6 = load i64, ptr @hard_regs_live, align 8, !tbaa !166
  %7 = or i64 %6, %5
  store i64 %7, ptr @hard_regs_live, align 8, !tbaa !166
  %8 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  tail call fastcc void @sparseset_iter_init(ptr noundef %8) #18
  %9 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %8) #18, !range !188
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %45, label %11, !prof !373

11:                                               ; preds = %3
  %12 = insertelement <2 x i64> poison, i64 %5, i64 0
  %13 = shufflevector <2 x i64> %12, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %11, %14
  %15 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %8) #18
  %16 = load ptr, ptr @ira_allocnos, align 8, !tbaa !173
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 26
  %21 = load <2 x i64>, ptr %20, align 8, !tbaa !166
  %22 = or <2 x i64> %21, %13
  store <2 x i64> %22, ptr %20, align 8, !tbaa !166
  tail call fastcc void @sparseset_iter_next(ptr noundef %8) #18
  %23 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %8) #18, !range !188
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %45, label %14, !prof !374, !llvm.loop !375

25:                                               ; preds = %1
  %26 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !173
  %27 = zext nneg i32 %0 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !173
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31, !prof !376

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !206
  %34 = icmp eq ptr %33, null
  %35 = load i32, ptr @curr_point, align 4, !tbaa !175
  br i1 %34, label %43, label %36, !prof !377

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %33, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !196
  %39 = icmp eq i32 %38, %35
  %40 = add nsw i32 %38, 1
  %41 = icmp eq i32 %40, %35
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %45, label %43, !prof !378

43:                                               ; preds = %36, %31
  %44 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %29, i32 noundef %35, i32 noundef -1, ptr noundef %33) #19
  store ptr %44, ptr %32, align 8, !tbaa !206
  br label %45

45:                                               ; preds = %14, %3, %36, %43, %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !379 !PGOFuncName !380 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !346
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !346
  %6 = load i32, ptr %1, align 4, !tbaa !175
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !175
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_ref_live(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !381 !PGOFuncName !382 {
  %2 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10, !prof !383

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !174
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
define internal fastcc void @process_single_reg_class_operands(i8 noundef zeroext %0, i32 noundef %1) unnamed_addr #0 !prof !384 !PGOFuncName !385 {
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !170
  %4 = icmp sgt i8 %3, 0
  br i1 %4, label %5, label %150, !prof !386

5:                                                ; preds = %2
  %6 = icmp eq i8 %0, 0
  br label %7

7:                                                ; preds = %5, %145
  %8 = phi i64 [ 0, %5 ], [ %146, %145 ]
  %9 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %8
  %12 = load i32, ptr %11, align 4, !tbaa !175
  br i1 %6, label %14, label %13, !prof !387

13:                                               ; preds = %7
  switch i32 %12, label %145 [
    i32 0, label %17
    i32 2, label %17
  ], !prof !388

14:                                               ; preds = %7
  %15 = add i32 %12, -1
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %145, !prof !389

17:                                               ; preds = %13, %13, %14
  %18 = trunc i64 %8 to i32
  %19 = tail call fastcc i32 @single_reg_operand_class(i32 noundef %18) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %145, label %21, !prof !390

21:                                               ; preds = %17
  %22 = load i32, ptr %10, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 39
  br i1 %24, label %25, label %29, !prof !391

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !174
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %28, %25 ], [ %22, %21 ]
  %31 = phi ptr [ %27, %25 ], [ %10, %21 ]
  %32 = and i32 %30, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %118, !prof !391

34:                                               ; preds = %29
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %31) #18
  %36 = icmp sgt i32 %35, 52
  br i1 %36, label %37, label %118, !prof !391

37:                                               ; preds = %34
  %38 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !173
  %39 = zext nneg i32 %35 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !173
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !364
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !362
  %46 = zext i32 %19 to i64
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %46, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !175
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %118, label %51, !prof !392

51:                                               ; preds = %37
  %52 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %46
  %53 = load i32, ptr %52, align 4, !tbaa !175
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %118, label %55, !prof !392

55:                                               ; preds = %51
  %56 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %46
  %57 = load i16, ptr %56, align 2, !tbaa !393
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %47, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !393
  %61 = icmp sgt i16 %60, -1
  br i1 %61, label %62, label %118, !prof !391

62:                                               ; preds = %55
  %63 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %46
  %64 = load i32, ptr %63, align 4, !tbaa !175
  %65 = tail call i32 @reg_classes_intersect_p(i32 noundef %19, i32 noundef 13) #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75, !prof !392

67:                                               ; preds = %62
  %68 = zext i32 %43 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !174
  %71 = freeze i8 %70
  %72 = and i8 %71, -2
  %73 = icmp eq i8 %72, 10
  %74 = select i1 %73, i32 2, i32 1, !prof !395
  br label %86

75:                                               ; preds = %62
  %76 = icmp eq i32 %43, 40
  br i1 %76, label %82, label %77

77:                                               ; preds = %75
  %78 = zext i32 %43 to i64
  %79 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !174
  %81 = zext i8 %80 to i32
  br label %82

82:                                               ; preds = %75, %77
  %83 = phi i32 [ %81, %77 ], [ 12, %75 ]
  %84 = add nuw nsw i32 %83, 3
  %85 = lshr i32 %84, 2
  br label %86

86:                                               ; preds = %67, %82
  %87 = phi i32 [ %85, %82 ], [ %74, %67 ]
  %88 = icmp ugt i32 %64, %87
  br i1 %88, label %118, label %89, !prof !392

89:                                               ; preds = %86
  br i1 %6, label %92, label %90, !prof !392

90:                                               ; preds = %89
  %91 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %43, i32 noundef %45, i32 noundef %19) #18, !range !396
  br label %94

92:                                               ; preds = %89
  %93 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %43, i32 noundef %19, i32 noundef %45) #18, !range !396
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = mul nsw i32 %95, %1
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 35
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %97, i32 noundef %45) #18
  %98 = zext i32 %43 to i64
  %99 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %47, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !175
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %118, !prof !397

102:                                              ; preds = %94
  %103 = load ptr, ptr %97, align 8, !tbaa !398
  %104 = zext nneg i32 %100 to i64
  br label %105

105:                                              ; preds = %102, %105
  %106 = phi i64 [ 0, %102 ], [ %116, %105 ]
  %107 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %46, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !393
  %109 = sext i16 %108 to i64
  %110 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %47, i64 %109
  %111 = load i16, ptr %110, align 2, !tbaa !393
  %112 = sext i16 %111 to i64
  %113 = getelementptr inbounds i32, ptr %103, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !175
  %115 = sub nsw i32 %114, %96
  store i32 %115, ptr %113, align 4, !tbaa !175
  %116 = add nuw nsw i64 %106, 1
  %117 = icmp eq i64 %116, %104
  br i1 %117, label %118, label %105, !prof !397, !llvm.loop !399

118:                                              ; preds = %105, %94, %37, %51, %55, %86, %34, %29
  %119 = phi ptr [ null, %34 ], [ null, %29 ], [ %41, %86 ], [ %41, %55 ], [ %41, %51 ], [ %41, %37 ], [ %41, %94 ], [ %41, %105 ]
  %120 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  tail call fastcc void @sparseset_iter_init(ptr noundef %120) #18
  %121 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %120) #18, !range !188
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %145, label %123, !prof !400

123:                                              ; preds = %118
  %124 = zext i32 %19 to i64
  %125 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %124
  br label %126

126:                                              ; preds = %123, %142
  %127 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %120) #18
  %128 = load ptr, ptr @ira_allocnos, align 8, !tbaa !173
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds ptr, ptr %128, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !173
  %132 = icmp eq ptr %131, %119
  br i1 %132, label %142, label %133, !prof !401

133:                                              ; preds = %126
  %134 = load i64, ptr %125, align 8, !tbaa !166
  %135 = getelementptr inbounds %struct.ira_allocno, ptr %131, i64 0, i32 26
  %136 = load i64, ptr %135, align 8, !tbaa !402
  %137 = or i64 %136, %134
  store i64 %137, ptr %135, align 8, !tbaa !402
  %138 = load i64, ptr %125, align 8, !tbaa !166
  %139 = getelementptr inbounds %struct.ira_allocno, ptr %131, i64 0, i32 27
  %140 = load i64, ptr %139, align 8, !tbaa !403
  %141 = or i64 %140, %138
  store i64 %141, ptr %139, align 8, !tbaa !403
  br label %142

142:                                              ; preds = %126, %133
  tail call fastcc void @sparseset_iter_next(ptr noundef %120) #18
  %143 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %120) #18, !range !188
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %126, !prof !404, !llvm.loop !405

145:                                              ; preds = %142, %118, %14, %13, %17
  %146 = add nuw nsw i64 %8, 1
  %147 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !170
  %148 = sext i8 %147 to i64
  %149 = icmp slt i64 %146, %148
  br i1 %149, label %7, label %150, !prof !406, !llvm.loop !407

150:                                              ; preds = %145, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_ref_dead(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !408 !PGOFuncName !409 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 1114112
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16, !prof !410

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !174
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 39
  br i1 %10, label %11, label %14, !prof !411

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !174
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi ptr [ %13, %11 ], [ %7, %5 ]
  tail call fastcc void @mark_reg_dead(ptr noundef %15) #18
  br label %16

16:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #9 !prof !412 !PGOFuncName !413 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !414
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !415
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !334
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @sparseset_iter_p(ptr nocapture noundef %0) unnamed_addr #13 !prof !416 !PGOFuncName !417 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !334
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5, !prof !418

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !414
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !332
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !419

11:                                               ; preds = %5, %1
  store i8 0, ptr %2, align 1, !tbaa !334
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sparseset_iter_elm(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !420 !PGOFuncName !421 {
  %2 = load ptr, ptr %0, align 8, !tbaa !422
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !414
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !175
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sparseset_iter_next(ptr nocapture noundef %0) unnamed_addr #13 !prof !420 !PGOFuncName !423 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !415
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !414
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !414
  store i8 1, ptr %2, align 4, !tbaa !415
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_early_clobber_and_input_conflicts() unnamed_addr #0 !prof !424 !PGOFuncName !425 {
  %1 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !426
  %2 = icmp sgt i8 %1, 0
  br i1 %2, label %3, label %61, !prof !427

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !170
  br label %5

5:                                                ; preds = %3, %55
  %6 = phi i8 [ %1, %3 ], [ %56, %55 ]
  %7 = phi i8 [ %4, %3 ], [ %57, %55 ]
  %8 = phi i64 [ 0, %3 ], [ %58, %55 ]
  %9 = icmp sgt i8 %7, 0
  br i1 %9, label %10, label %55, !prof !428

10:                                               ; preds = %5, %48
  %11 = phi i64 [ %49, %48 ], [ 0, %5 ]
  %12 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %11, i64 %8, i32 5
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16, !prof !429

16:                                               ; preds = %10
  %17 = icmp sgt i8 %13, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %11, i64 %8, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !430
  br label %21

21:                                               ; preds = %16, %18
  %22 = phi i32 [ %20, %18 ], [ 26, %16 ]
  %23 = trunc i64 %8 to i32
  %24 = trunc i64 %11 to i32
  tail call fastcc void @check_and_make_def_conflict(i32 noundef %23, i32 noundef %24, i32 noundef %22) #18
  br label %25

25:                                               ; preds = %21, %10
  %26 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %11, i64 %8, i32 3
  %27 = load i32, ptr %26, align 16, !tbaa !432
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %48, !prof !433

29:                                               ; preds = %25
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %30, i64 %8, i32 5
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39, !prof !434

35:                                               ; preds = %29
  %36 = load i8, ptr %12, align 8
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39, !prof !434

39:                                               ; preds = %35, %29
  %40 = icmp sgt i8 %32, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %30, i64 %8, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !430
  br label %44

44:                                               ; preds = %39, %41
  %45 = phi i32 [ %43, %41 ], [ 26, %39 ]
  %46 = trunc i64 %8 to i32
  %47 = trunc i64 %11 to i32
  tail call fastcc void @check_and_make_def_conflict(i32 noundef %46, i32 noundef %47, i32 noundef %45) #18
  br label %48

48:                                               ; preds = %25, %35, %44
  %49 = add nuw nsw i64 %11, 1
  %50 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !170
  %51 = sext i8 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %10, label %53, !prof !435, !llvm.loop !436

53:                                               ; preds = %48
  %54 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !426
  br label %55

55:                                               ; preds = %53, %5
  %56 = phi i8 [ %54, %53 ], [ %6, %5 ]
  %57 = phi i8 [ %50, %53 ], [ %7, %5 ]
  %58 = add nuw nsw i64 %8, 1
  %59 = sext i8 %56 to i64
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %5, label %61, !prof !437, !llvm.loop !438

61:                                               ; preds = %55, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mark_hard_reg_early_clobbers(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !439 !PGOFuncName !440 {
  %3 = load ptr, ptr @df, align 8, !tbaa !173
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !253
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !174
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !256
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15, !prof !441

15:                                               ; preds = %2, %44
  %16 = phi ptr [ %47, %44 ], [ %13, %2 ]
  %17 = phi i8 [ %45, %44 ], [ 0, %2 ]
  %18 = phi ptr [ %46, %44 ], [ %12, %2 ]
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 8388608
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22, !prof !442

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !174
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 39
  br i1 %27, label %28, label %32, !prof !443

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !174
  %31 = load i32, ptr %30, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i32 [ %31, %28 ], [ %25, %22 ]
  %34 = phi ptr [ %30, %28 ], [ %24, %22 ]
  %35 = and i32 %33, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %44, !prof !444

37:                                               ; preds = %32
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #18
  %39 = icmp ugt i32 %38, 52
  br i1 %39, label %44, label %40, !prof !443

40:                                               ; preds = %37
  %41 = icmp eq i8 %1, 0
  br i1 %41, label %43, label %42, !prof !445

42:                                               ; preds = %40
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %16) #18
  br label %44

43:                                               ; preds = %40
  tail call fastcc void @mark_ref_dead(ptr noundef nonnull %16) #18
  br label %44

44:                                               ; preds = %37, %32, %43, %42, %15
  %45 = phi i8 [ %17, %15 ], [ %17, %37 ], [ %17, %32 ], [ 1, %43 ], [ 1, %42 ]
  %46 = getelementptr inbounds ptr, ptr %18, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !173
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %15, !prof !446, !llvm.loop !447

49:                                               ; preds = %44, %2
  %50 = phi i8 [ 0, %2 ], [ %45, %44 ]
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 !prof !326 !PGOFuncName !448 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !449
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !450
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !188
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !229

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !173
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !451
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !453

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !188
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !454, !llvm.loop !455

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_abnormal_pred(ptr noundef %0) unnamed_addr #0 !prof !326 !PGOFuncName !456 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !449
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !450
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !188
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !229

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !173
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !451
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !453

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !188
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !454, !llvm.loop !457

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_abnormal_call_pred(ptr noundef %0) unnamed_addr #0 !prof !165 !PGOFuncName !458 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !449
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !450
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !188
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !173
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !451
  %12 = and i32 %11, 12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !188
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !459

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @make_regno_dead(i32 noundef %0) unnamed_addr #14 !prof !460 !PGOFuncName !461 {
  %2 = icmp slt i32 %0, 53
  br i1 %2, label %3, label %9, !prof !462

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl nuw i64 1, %4
  %6 = xor i64 %5, -1
  %7 = load i64, ptr @hard_regs_live, align 8, !tbaa !166
  %8 = and i64 %7, %6
  store i64 %8, ptr @hard_regs_live, align 8, !tbaa !166
  br label %20

9:                                                ; preds = %1
  %10 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !173
  %11 = zext nneg i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !376

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !206
  %18 = load i32, ptr @curr_point, align 4, !tbaa !175
  %19 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !196
  tail call fastcc void @update_allocno_pressure_excess_length(ptr noundef nonnull %13) #18
  br label %20

20:                                               ; preds = %9, %15, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !463 !PGOFuncName !464 {
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !465
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6, !prof !466

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !467
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !175
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !332
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %23, !prof !468

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !422
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !175
  %21 = icmp eq i32 %20, %1
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %16, %7
  %24 = phi i8 [ 0, %7 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sparseset_set_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !359 !PGOFuncName !469 {
  %3 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %0, i32 noundef %1) #18, !range !188
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !361

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !332
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !332
  tail call fastcc void @sparseset_insert_bit(ptr noundef %0, i32 noundef %1, i32 noundef %7) #18
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sparseset_insert_bit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 !prof !359 !PGOFuncName !470 {
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !467
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store i32 %2, ptr %7, align 4, !tbaa !175
  %8 = load ptr, ptr %0, align 8, !tbaa !422
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %1, ptr %10, align 4, !tbaa !175
  ret void
}

; Function Attrs: optsize
declare ptr @ira_create_allocno_live_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_reg_live(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !381 !PGOFuncName !471 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %6, label %5, !prof !472

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 252, ptr noundef nonnull @.str.6) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %8 = icmp sgt i32 %7, 52
  %9 = zext nneg i32 %7 to i64
  br i1 %8, label %10, label %27, !prof !473

10:                                               ; preds = %6
  %11 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !173
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15, !prof !474

15:                                               ; preds = %10
  %16 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  %17 = load i32, ptr %13, align 8, !tbaa !203
  %18 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %16, i32 noundef %17) #18, !range !188
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20, !prof !475

20:                                               ; preds = %15
  %21 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !173
  %22 = load i32, ptr %13, align 8, !tbaa !203
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 0, ptr %24, align 4, !tbaa !175
  br label %111

25:                                               ; preds = %15
  tail call fastcc void @set_allocno_live(ptr noundef nonnull %13) #18
  br label %26

26:                                               ; preds = %25, %10
  tail call fastcc void @make_regno_born(i32 noundef %7) #18
  br label %111

27:                                               ; preds = %6
  %28 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !166
  %29 = shl nuw i64 1, %9
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %111, !prof !476

32:                                               ; preds = %27
  %33 = sext i32 %7 to i64
  %34 = load i32, ptr %0, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %33, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !174
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %111, label %41, !prof !477

41:                                               ; preds = %32
  %42 = zext i8 %39 to i32
  %43 = add nsw i32 %7, %42
  %44 = sext i32 %43 to i64
  %45 = load i64, ptr @hard_regs_live, align 8, !tbaa !166
  br label %46

46:                                               ; preds = %41, %107
  %47 = phi i64 [ %45, %41 ], [ %108, %107 ]
  %48 = phi i64 [ %33, %41 ], [ %109, %107 ]
  %49 = shl nuw i64 1, %48
  %50 = and i64 %47, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %107, !prof !478

52:                                               ; preds = %46
  %53 = load i64, ptr @eliminable_regset, align 8, !tbaa !166
  %54 = and i64 %53, %49
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %107, !prof !479

56:                                               ; preds = %52
  %57 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %48
  %58 = load i32, ptr %57, align 4, !tbaa !175
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %59, i64 0
  %61 = load i32, ptr %60, align 4, !tbaa !175
  %62 = icmp eq i32 %61, 27
  br i1 %62, label %85, label %63, !prof !373

63:                                               ; preds = %56
  %64 = load i32, ptr @curr_point, align 4
  br label %65

65:                                               ; preds = %63, %80
  %66 = phi i64 [ 0, %63 ], [ %81, %80 ]
  %67 = phi i32 [ %61, %63 ], [ %83, %80 ]
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !175
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !175
  %72 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %68
  %73 = load i32, ptr %72, align 4, !tbaa !175
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80, !prof !480

75:                                               ; preds = %65
  %76 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %68
  %77 = load i32, ptr %76, align 4, !tbaa !175
  %78 = icmp slt i32 %70, %77
  br i1 %78, label %80, label %79, !prof !481

79:                                               ; preds = %75
  store i32 %64, ptr %72, align 4, !tbaa !175
  br label %80

80:                                               ; preds = %65, %75, %79
  %81 = add nuw nsw i64 %66, 1
  %82 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %59, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !175
  %84 = icmp eq i32 %83, 27
  br i1 %84, label %85, label %65, !prof !482, !llvm.loop !483

85:                                               ; preds = %80, %56
  %86 = trunc i64 %48 to i32
  tail call fastcc void @make_regno_born(i32 noundef %86) #18
  %87 = load i32, ptr %60, align 4, !tbaa !175
  %88 = icmp eq i32 %87, 27
  %89 = load i64, ptr @hard_regs_live, align 8, !tbaa !166
  br i1 %88, label %107, label %90, !prof !373

90:                                               ; preds = %85
  %91 = load ptr, ptr @curr_bb_node, align 8, !tbaa !173
  br label %92

92:                                               ; preds = %90, %102
  %93 = phi i64 [ 0, %90 ], [ %103, %102 ]
  %94 = phi i32 [ %87, %90 ], [ %105, %102 ]
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %91, i64 0, i32 11, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !175
  %98 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %95
  %99 = load i32, ptr %98, align 4, !tbaa !175
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %102, !prof !484

101:                                              ; preds = %92
  store i32 %99, ptr %96, align 4, !tbaa !175
  br label %102

102:                                              ; preds = %92, %101
  %103 = add nuw nsw i64 %93, 1
  %104 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %59, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !175
  %106 = icmp eq i32 %105, 27
  br i1 %106, label %107, label %92, !prof !482, !llvm.loop !485

107:                                              ; preds = %102, %85, %52, %46
  %108 = phi i64 [ %89, %85 ], [ %47, %52 ], [ %47, %46 ], [ %89, %102 ]
  %109 = add nsw i64 %48, 1
  %110 = icmp slt i64 %109, %44
  br i1 %110, label %46, label %111, !prof !477, !llvm.loop !486

111:                                              ; preds = %107, %32, %27, %26, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @single_reg_operand_class(i32 noundef %0) unnamed_addr #0 !prof !487 !PGOFuncName !488 {
  %2 = icmp slt i32 %0, 0
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %13, label %6, !prof !489

6:                                                ; preds = %1
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !173
  %10 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !173
  %12 = tail call fastcc i32 @single_reg_class(ptr noundef %9, ptr noundef %11) #18
  br label %13

13:                                               ; preds = %1, %6
  %14 = phi i32 [ %12, %6 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !490 !PGOFuncName !491 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !392

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #19
  %9 = load ptr, ptr %5, align 8, !tbaa !173
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !393
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_costs(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !490 !PGOFuncName !492 {
  %3 = load ptr, ptr %0, align 8, !tbaa !173
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14, !prof !391

5:                                                ; preds = %2
  %6 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #19
  store ptr %6, ptr %0, align 8, !tbaa !173
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !175
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14, !prof !397

11:                                               ; preds = %5
  %12 = zext nneg i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %13, i1 false), !tbaa !175
  br label %14

14:                                               ; preds = %11, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @single_reg_class(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !493 !PGOFuncName !494 {
  br label %3

3:                                                ; preds = %111, %2
  %4 = phi ptr [ %0, %2 ], [ %115, %111 ]
  %5 = phi i32 [ 0, %2 ], [ %112, %111 ]
  %6 = phi i32 [ 0, %2 ], [ %113, %111 ]
  %7 = load i8, ptr %4, align 1, !tbaa !174
  %8 = sext i8 %7 to i64
  switch i8 %7, label %10 [
    i8 0, label %116
    i8 35, label %111
    i8 44, label %9
  ], !prof !495

9:                                                ; preds = %3
  br label %111

10:                                               ; preds = %3
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %12, label %111, !prof !496

12:                                               ; preds = %10
  switch i8 %7, label %116 [
    i8 32, label %111
    i8 9, label %111
    i8 61, label %111
    i8 43, label %111
    i8 42, label %111
    i8 38, label %111
    i8 37, label %111
    i8 33, label %111
    i8 63, label %111
    i8 105, label %13
    i8 110, label %20
    i8 115, label %26
    i8 73, label %38
    i8 74, label %38
    i8 75, label %38
    i8 76, label %38
    i8 77, label %38
    i8 78, label %38
    i8 79, label %38
    i8 80, label %38
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
  ], !prof !497

13:                                               ; preds = %12
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !175
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %116, label %111, !prof !498

20:                                               ; preds = %12
  %21 = load i32, ptr %1, align 8
  %22 = trunc i32 %21 to i16
  switch i16 %22, label %111 [
    i16 30, label %116
    i16 32, label %23
  ], !prof !499

23:                                               ; preds = %20
  %24 = and i32 %21, 16711680
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %116, label %111

26:                                               ; preds = %12
  %27 = load i32, ptr %1, align 8
  %28 = and i32 %27, 65535
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !175
  %32 = icmp ne i32 %31, 9
  %33 = icmp eq i32 %28, 30
  %34 = or i1 %32, %33
  %35 = and i32 %27, 16777215
  %36 = icmp eq i32 %35, 32
  %37 = or i1 %36, %34
  br i1 %37, label %111, label %116

38:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12
  %39 = load i32, ptr %1, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %111, !prof !392

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !174
  %45 = tail call i32 @lookup_constraint(ptr noundef nonnull %4) #19
  %46 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %44, i32 noundef %45) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %111, label %116

48:                                               ; preds = %12, %12
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
  %56 = load i8, ptr %55, align 1, !tbaa !174
  %57 = icmp eq i8 %56, 17
  br i1 %57, label %116, label %111

58:                                               ; preds = %12, %12
  %59 = load i32, ptr %1, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = tail call i32 @lookup_constraint(ptr noundef nonnull %4) #19
  %64 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %1, i32 noundef %63) #19
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %116

66:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %67 = icmp eq i8 %7, 114
  br i1 %67, label %71, label %68, !prof !500

68:                                               ; preds = %62, %58, %66
  %69 = tail call i32 @lookup_constraint(ptr noundef nonnull %4) #19
  %70 = tail call i32 @regclass_for_constraint(i32 noundef %69) #19
  br label %71

71:                                               ; preds = %66, %68
  %72 = phi i32 [ %70, %68 ], [ 13, %66 ]
  %73 = icmp eq i32 %6, 0
  %74 = icmp eq i32 %72, %6
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %76, label %116, !prof !501

76:                                               ; preds = %71
  %77 = zext i32 %72 to i64
  %78 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !175
  %80 = load i32, ptr %1, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %77, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !175
  %86 = icmp sgt i32 %79, %85
  br i1 %86, label %116, label %111, !prof !502

87:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %88 = add nuw nsw i64 %8, 4294967248
  %89 = and i64 %88, 4294967295
  %90 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !173
  %92 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %89
  %93 = load ptr, ptr %92, align 8, !tbaa !173
  %94 = tail call fastcc i32 @single_reg_class(ptr noundef %91, ptr noundef %93) #18
  %95 = icmp eq i32 %6, 0
  br i1 %95, label %98, label %96, !prof !503

96:                                               ; preds = %87
  %97 = icmp eq i32 %94, %6
  br i1 %97, label %100, label %116, !prof !504

98:                                               ; preds = %87
  %99 = icmp eq i32 %94, 0
  br i1 %99, label %116, label %100, !prof !503

100:                                              ; preds = %96, %98
  %101 = zext i32 %94 to i64
  %102 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !175
  %104 = load i32, ptr %1, align 8
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %101, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !175
  %110 = icmp sgt i32 %103, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %100, %76, %51, %48, %38, %42, %26, %23, %20, %13, %3, %10, %12, %12, %12, %12, %12, %12, %12, %12, %12, %9
  %112 = phi i32 [ 0, %9 ], [ 1, %10 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 1, %3 ], [ 0, %13 ], [ 0, %20 ], [ 0, %23 ], [ 0, %26 ], [ 0, %42 ], [ 0, %38 ], [ 0, %48 ], [ 0, %51 ], [ 0, %76 ], [ 0, %100 ]
  %113 = phi i32 [ %6, %9 ], [ %6, %10 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %3 ], [ %6, %13 ], [ %6, %20 ], [ %6, %23 ], [ %6, %26 ], [ %6, %42 ], [ %6, %38 ], [ %6, %48 ], [ %6, %51 ], [ %72, %76 ], [ %94, %100 ]
  %114 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %7) #18
  %115 = getelementptr inbounds i8, ptr %4, i64 %114
  br label %3, !llvm.loop !505

116:                                              ; preds = %71, %26, %3, %12, %96, %98, %100, %76, %62, %51, %48, %42, %23, %20, %13
  %117 = phi i32 [ 0, %13 ], [ 0, %20 ], [ 0, %23 ], [ 0, %42 ], [ 0, %48 ], [ 0, %51 ], [ 0, %62 ], [ 0, %76 ], [ 0, %100 ], [ 0, %98 ], [ 0, %96 ], [ 0, %12 ], [ %6, %3 ], [ 0, %26 ], [ 0, %71 ]
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
define internal fastcc void @mark_reg_dead(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !408 !PGOFuncName !506 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %6, label %5, !prof !507

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 327, ptr noundef nonnull @.str.6) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %8 = icmp sgt i32 %7, 52
  %9 = zext nneg i32 %7 to i64
  br i1 %8, label %10, label %27, !prof !508

10:                                               ; preds = %6
  %11 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !173
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15, !prof !509

15:                                               ; preds = %10
  %16 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  %17 = load i32, ptr %13, align 8, !tbaa !203
  %18 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %16, i32 noundef %17) #18, !range !188
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25, !prof !509

20:                                               ; preds = %15
  %21 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !173
  %22 = load i32, ptr %13, align 8, !tbaa !203
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 0, ptr %24, align 4, !tbaa !175
  br label %124

25:                                               ; preds = %15
  tail call fastcc void @clear_allocno_live(ptr noundef nonnull %13) #18
  br label %26

26:                                               ; preds = %25, %10
  tail call fastcc void @make_regno_dead(i32 noundef %7) #18
  br label %124

27:                                               ; preds = %6
  %28 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !166
  %29 = shl nuw i64 1, %9
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %124, !prof !510

32:                                               ; preds = %27
  %33 = sext i32 %7 to i64
  %34 = load i32, ptr %0, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %33, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !174
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %124, label %41, !prof !511

41:                                               ; preds = %32
  %42 = zext i8 %39 to i32
  %43 = add nsw i32 %7, %42
  %44 = sext i32 %43 to i64
  %45 = load i64, ptr @hard_regs_live, align 8, !tbaa !166
  br label %46

46:                                               ; preds = %41, %120
  %47 = phi i64 [ %45, %41 ], [ %121, %120 ]
  %48 = phi i64 [ %33, %41 ], [ %122, %120 ]
  %49 = shl nuw i64 1, %48
  %50 = and i64 %47, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %120, label %52, !prof !512

52:                                               ; preds = %46
  %53 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %48
  %54 = load i32, ptr %53, align 4, !tbaa !175
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %55, i64 0
  %57 = load i32, ptr %56, align 4, !tbaa !175
  %58 = icmp eq i32 %57, 27
  br i1 %58, label %117, label %59, !prof !511

59:                                               ; preds = %52, %75
  %60 = phi i64 [ %77, %75 ], [ 0, %52 ]
  %61 = phi i32 [ %79, %75 ], [ %57, %52 ]
  %62 = phi i8 [ %76, %75 ], [ 0, %52 ]
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !175
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %64, align 4, !tbaa !175
  %67 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %63
  %68 = load i32, ptr %67, align 4, !tbaa !175
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %75, !prof !513

70:                                               ; preds = %59
  %71 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %63
  %72 = load i32, ptr %71, align 4, !tbaa !175
  %73 = icmp sgt i32 %66, %72
  %74 = select i1 %73, i8 %62, i8 1, !prof !514
  br label %75

75:                                               ; preds = %70, %59
  %76 = phi i8 [ %62, %59 ], [ %74, %70 ]
  %77 = add nuw nsw i64 %60, 1
  %78 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %55, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !175
  %80 = icmp eq i32 %79, 27
  br i1 %80, label %81, label %59, !prof !515, !llvm.loop !516

81:                                               ; preds = %75
  %82 = icmp eq i8 %76, 0
  br i1 %82, label %117, label %83, !prof !517

83:                                               ; preds = %81
  %84 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  tail call fastcc void @sparseset_iter_init(ptr noundef %84) #18
  %85 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %84) #18, !range !188
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %90, !prof !518

87:                                               ; preds = %90, %83
  %88 = load i32, ptr %56, align 4, !tbaa !175
  %89 = icmp eq i32 %88, 27
  br i1 %89, label %117, label %98, !prof !518

90:                                               ; preds = %83, %90
  %91 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %84) #18
  %92 = load ptr, ptr @ira_allocnos, align 8, !tbaa !173
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !173
  tail call fastcc void @update_allocno_pressure_excess_length(ptr noundef %95) #18
  tail call fastcc void @sparseset_iter_next(ptr noundef %84) #18
  %96 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %84) #18, !range !188
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %87, label %90, !prof !519, !llvm.loop !520

98:                                               ; preds = %87, %112
  %99 = phi i64 [ %113, %112 ], [ 0, %87 ]
  %100 = phi i32 [ %115, %112 ], [ %88, %87 ]
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !175
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %105, label %112, !prof !521

105:                                              ; preds = %98
  %106 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %101
  %107 = load i32, ptr %106, align 4, !tbaa !175
  %108 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %101
  %109 = load i32, ptr %108, align 4, !tbaa !175
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %112, label %111, !prof !522

111:                                              ; preds = %105
  store i32 -1, ptr %102, align 4, !tbaa !175
  br label %112

112:                                              ; preds = %98, %105, %111
  %113 = add nuw nsw i64 %99, 1
  %114 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %55, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !175
  %116 = icmp eq i32 %115, 27
  br i1 %116, label %117, label %98, !prof !523, !llvm.loop !524

117:                                              ; preds = %112, %52, %87, %81
  %118 = trunc i64 %48 to i32
  tail call fastcc void @make_regno_dead(i32 noundef %118) #18
  %119 = load i64, ptr @hard_regs_live, align 8, !tbaa !166
  br label %120

120:                                              ; preds = %117, %46
  %121 = phi i64 [ %119, %117 ], [ %47, %46 ]
  %122 = add nsw i64 %48, 1
  %123 = icmp slt i64 %122, %44
  br i1 %123, label %46, label %124, !prof !511, !llvm.loop !525

124:                                              ; preds = %120, %32, %27, %26, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_allocno_live(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !526 !PGOFuncName !527 {
  %2 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !173
  %3 = load i32, ptr %0, align 8, !tbaa !203
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %2, i64 %4
  store i32 0, ptr %5, align 4, !tbaa !175
  %6 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  %7 = load i32, ptr %0, align 8, !tbaa !203
  %8 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %6, i32 noundef %7) #18, !range !188
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12, !prof !509

10:                                               ; preds = %1
  %11 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  br label %85

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !362
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %15, i64 0
  %17 = load i32, ptr %16, align 4, !tbaa !175
  %18 = icmp eq i32 %17, 27
  br i1 %18, label %19, label %21, !prof !528

19:                                               ; preds = %12
  %20 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  br label %85

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !364
  %24 = zext i32 %23 to i64
  br label %25

25:                                               ; preds = %21, %43
  %26 = phi i64 [ 0, %21 ], [ %45, %43 ]
  %27 = phi i32 [ %17, %21 ], [ %47, %43 ]
  %28 = phi i8 [ 0, %21 ], [ %44, %43 ]
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %29, i64 %24
  %31 = load i32, ptr %30, align 4, !tbaa !175
  %32 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %29
  %33 = load i32, ptr %32, align 4, !tbaa !175
  %34 = sub nsw i32 %33, %31
  store i32 %34, ptr %32, align 4, !tbaa !175
  %35 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %29
  %36 = load i32, ptr %35, align 4, !tbaa !175
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %43, !prof !529

38:                                               ; preds = %25
  %39 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %29
  %40 = load i32, ptr %39, align 4, !tbaa !175
  %41 = icmp sgt i32 %34, %40
  %42 = select i1 %41, i8 %28, i8 1, !prof !530
  br label %43

43:                                               ; preds = %38, %25
  %44 = phi i8 [ %28, %25 ], [ %42, %38 ]
  %45 = add nuw nsw i64 %26, 1
  %46 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %15, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !175
  %48 = icmp eq i32 %47, 27
  br i1 %48, label %49, label %25, !prof !531, !llvm.loop !532

49:                                               ; preds = %43
  %50 = icmp eq i8 %44, 0
  %51 = load ptr, ptr @allocnos_live, align 8, !tbaa !173
  br i1 %50, label %85, label %52, !prof !533

52:                                               ; preds = %49
  tail call fastcc void @sparseset_iter_init(ptr noundef %51) #18
  %53 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %51) #18, !range !188
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58, !prof !534

55:                                               ; preds = %58, %52
  %56 = load i32, ptr %16, align 4, !tbaa !175
  %57 = icmp eq i32 %56, 27
  br i1 %57, label %85, label %66, !prof !534

58:                                               ; preds = %52, %58
  %59 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %51) #18
  %60 = load ptr, ptr @ira_allocnos, align 8, !tbaa !173
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !173
  tail call fastcc void @update_allocno_pressure_excess_length(ptr noundef %63) #18
  tail call fastcc void @sparseset_iter_next(ptr noundef %51) #18
  %64 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %51) #18, !range !188
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %55, label %58, !prof !535, !llvm.loop !536

66:                                               ; preds = %55, %80
  %67 = phi i64 [ %81, %80 ], [ 0, %55 ]
  %68 = phi i32 [ %83, %80 ], [ %56, %55 ]
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !175
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %80, !prof !523

73:                                               ; preds = %66
  %74 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %69
  %75 = load i32, ptr %74, align 4, !tbaa !175
  %76 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %69
  %77 = load i32, ptr %76, align 4, !tbaa !175
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %80, label %79, !prof !518

79:                                               ; preds = %73
  store i32 -1, ptr %70, align 4, !tbaa !175
  br label %80

80:                                               ; preds = %66, %73, %79
  %81 = add nuw nsw i64 %67, 1
  %82 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %15, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !175
  %84 = icmp eq i32 %83, 27
  br i1 %84, label %85, label %66, !prof !537, !llvm.loop !538

85:                                               ; preds = %80, %19, %10, %55, %49
  %86 = phi ptr [ %11, %10 ], [ %51, %55 ], [ %51, %49 ], [ %20, %19 ], [ %51, %80 ]
  %87 = load i32, ptr %0, align 8, !tbaa !203
  tail call void @sparseset_clear_bit(ptr noundef %86, i32 noundef %87) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_allocno_pressure_excess_length(ptr nocapture noundef %0) unnamed_addr #10 !prof !539 !PGOFuncName !540 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !362
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %4, i64 0
  %6 = load i32, ptr %5, align 4, !tbaa !175
  %7 = icmp eq i32 %6, 27
  br i1 %7, label %33, label %8, !prof !541

8:                                                ; preds = %1
  %9 = load i32, ptr @curr_point, align 4
  br label %10

10:                                               ; preds = %8, %28
  %11 = phi i64 [ 0, %8 ], [ %29, %28 ]
  %12 = phi i32 [ %6, %8 ], [ %31, %28 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !175
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %28, label %17, !prof !542

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 20
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 14
  %20 = load ptr, ptr %18, align 8, !tbaa !206
  %21 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !193
  %23 = tail call i32 @llvm.smax.i32(i32 %15, i32 %22)
  %24 = load i32, ptr %19, align 4, !tbaa !543
  %25 = sub i32 %9, %23
  %26 = add i32 %25, 1
  %27 = add nsw i32 %26, %24
  store i32 %27, ptr %19, align 4, !tbaa !543
  br label %28

28:                                               ; preds = %10, %17
  %29 = add nuw nsw i64 %11, 1
  %30 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %4, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !175
  %32 = icmp eq i32 %31, 27
  br i1 %32, label %33, label %10, !prof !544, !llvm.loop !545

33:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: optsize
declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_and_make_def_conflict(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !165 !PGOFuncName !546 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %121, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !174
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
  %25 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !173
  %26 = zext i32 %22 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !173
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !362
  %31 = tail call i32 @reg_classes_intersect_p(i32 noundef %30, i32 noundef %2) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %121, label %33

33:                                               ; preds = %24
  %34 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !170
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
  %47 = load i32, ptr %46, align 4, !tbaa !175
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %114, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 5
  %51 = load i8, ptr %50, align 8
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !430
  br label %56

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %55, %53 ], [ 26, %49 ]
  %58 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !426
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
  %72 = load i32, ptr %71, align 16, !tbaa !432
  %73 = icmp eq i32 %72, %1
  br i1 %73, label %114, label %74

74:                                               ; preds = %69
  br i1 %63, label %75, label %83

75:                                               ; preds = %74
  %76 = load ptr, ptr %64, align 8, !tbaa !173
  %77 = load i8, ptr %76, align 1, !tbaa !174
  %78 = icmp eq i8 %77, 37
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %65, i64 %70, i32 3
  %81 = load i32, ptr %80, align 16, !tbaa !432
  %82 = icmp eq i32 %81, %1
  br i1 %82, label %114, label %83

83:                                               ; preds = %79, %75, %74
  br i1 %66, label %92, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %68, align 8, !tbaa !173
  %86 = load i8, ptr %85, align 1, !tbaa !174
  %87 = icmp eq i8 %86, 37
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %67, i64 %70, i32 3
  %90 = load i32, ptr %89, align 16, !tbaa !432
  %91 = icmp eq i32 %90, %1
  br i1 %91, label %114, label %92

92:                                               ; preds = %83, %84, %88
  %93 = add nuw nsw i64 %70, 1
  %94 = icmp eq i64 %93, %61
  br i1 %94, label %95, label %69, !llvm.loop !547

95:                                               ; preds = %92, %56
  %96 = trunc i64 %41 to i32
  %97 = tail call fastcc zeroext i8 @check_and_make_def_use_conflict(ptr noundef nonnull %18, i32 noundef %2, i32 noundef %96, i32 noundef %57, i8 noundef zeroext %43) #18, !range !188
  %98 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 3
  %99 = load i32, ptr %98, align 16, !tbaa !432
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
  %110 = load i32, ptr %109, align 8, !tbaa !430
  br label %111

111:                                              ; preds = %103, %108
  %112 = phi i32 [ %110, %108 ], [ 26, %103 ]
  %113 = tail call fastcc zeroext i8 @check_and_make_def_use_conflict(ptr noundef nonnull %18, i32 noundef %2, i32 noundef %96, i32 noundef %112, i8 noundef zeroext %97) #18, !range !188
  br label %114

114:                                              ; preds = %88, %79, %69, %95, %111, %40, %45
  %115 = phi i8 [ %43, %45 ], [ %43, %40 ], [ %113, %111 ], [ %97, %95 ], [ %43, %69 ], [ %43, %79 ], [ %43, %88 ]
  %116 = add nuw nsw i64 %41, 1
  %117 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !170
  %118 = sext i8 %117 to i64
  %119 = sext i8 %117 to i64
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %40, label %121, !llvm.loop !548

121:                                              ; preds = %114, %33, %24, %16, %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_and_make_def_use_conflict(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !165 !PGOFuncName !549 {
  %6 = tail call i32 @reg_classes_intersect_p(i32 noundef %1, i32 noundef %3) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %5
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !173
  %12 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %11, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %4) #18, !range !188
  %13 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !170
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %17, label %28

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = load i8, ptr %19, align 1, !tbaa !174
  %21 = icmp eq i8 %20, 37
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = add nsw i32 %2, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !173
  %27 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %26, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %12) #18, !range !188
  br label %28

28:                                               ; preds = %22, %17, %8
  %29 = phi i8 [ %27, %22 ], [ %12, %17 ], [ %12, %8 ]
  %30 = icmp sgt i32 %2, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = add nsw i32 %2, -1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !173
  %36 = load i8, ptr %35, align 1, !tbaa !174
  %37 = icmp eq i8 %36, 37
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !173
  %41 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %40, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %29) #18, !range !188
  br label %42

42:                                               ; preds = %28, %31, %38, %5
  %43 = phi i8 [ %4, %5 ], [ %41, %38 ], [ %29, %31 ], [ %29, %28 ]
  ret i8 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @make_pseudo_conflict(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !165 !PGOFuncName !550 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !174
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
  %21 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !173
  %22 = zext i32 %18 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !173
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !362
  %27 = tail call i32 @reg_classes_intersect_p(i32 noundef %1, i32 noundef %26) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = icmp eq i8 %3, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr @curr_point, align 4, !tbaa !175
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @curr_point, align 4, !tbaa !175
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !551 !PGOFuncName !552 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !553 !PGOFuncName !554 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !188
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !555

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !173
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !556 !PGOFuncName !557 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !558

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !559

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.6) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !560
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !560
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !553 !PGOFuncName !562 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !563

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !556 !PGOFuncName !564 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !558

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !565 !PGOFuncName !566 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !567

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !568
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !570 !PGOFuncName !571 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !572

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 687, ptr noundef nonnull @.str.6) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !173
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !556 !PGOFuncName !573 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @ira_allocate_bitmap() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!164}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!35 = !{ptr @ira_rebuild_start_finish_chains, ptr @ira_free, i64 76}
!36 = !{ptr @ira_rebuild_start_finish_chains, ptr @create_start_finish_chains, i64 38}
!37 = !{ptr @create_start_finish_chains, ptr @ira_allocate, i64 152}
!38 = !{ptr @create_start_finish_chains, ptr @ira_allocno_iter_init, i64 76}
!39 = !{ptr @create_start_finish_chains, ptr @ira_allocno_iter_cond, i64 212152}
!40 = !{ptr @ira_create_allocno_live_ranges, ptr @sparseset_alloc, i64 38}
!41 = !{ptr @ira_create_allocno_live_ranges, ptr @ira_allocate, i64 38}
!42 = !{ptr @ira_create_allocno_live_ranges, ptr @ira_traverse_loop_tree, i64 38}
!43 = !{ptr @ira_create_allocno_live_ranges, ptr @create_start_finish_chains, i64 38}
!44 = !{ptr @ira_create_allocno_live_ranges, ptr @print_live_ranges, i64 1}
!45 = !{ptr @ira_create_allocno_live_ranges, ptr @ira_free, i64 38}
!46 = !{ptr @ira_create_allocno_live_ranges, ptr @free, i64 38}
!47 = !{ptr @process_bb_node_lives, ptr @df_lr_get_bb_info, i64 155653}
!48 = !{ptr @process_bb_node_lives, ptr @sparseset_clear, i64 155653}
!49 = !{ptr @process_bb_node_lives, ptr @reg_set_to_hard_reg_set, i64 155653}
!50 = !{ptr @process_bb_node_lives, ptr @bmp_iter_set_init, i64 155653}
!51 = !{ptr @process_bb_node_lives, ptr @bmp_iter_set, i64 390350}
!52 = !{ptr @process_bb_node_lives, ptr @set_allocno_live, i64 234696}
!53 = !{ptr @process_bb_node_lives, ptr @make_regno_born, i64 234736}
!54 = !{ptr @process_bb_node_lives, ptr @bmp_iter_next, i64 234697}
!55 = !{ptr @process_bb_node_lives, ptr @fprintf, i64 1}
!56 = !{ptr @process_bb_node_lives, ptr @mark_ref_live, i64 945644}
!57 = !{ptr @process_bb_node_lives, ptr @multiple_sets, i64 8356}
!58 = !{ptr @process_bb_node_lives, ptr @reg_overlap_mentioned_p, i64 1221}
!59 = !{ptr @process_bb_node_lives, ptr @extract_insn, i64 618793}
!60 = !{ptr @process_bb_node_lives, ptr @preprocess_constraints, i64 618793}
!61 = !{ptr @process_bb_node_lives, ptr @process_single_reg_class_operands, i64 1237586}
!62 = !{ptr @process_bb_node_lives, ptr @mark_ref_dead, i64 389725}
!63 = !{ptr @process_bb_node_lives, ptr @sparseset_iter_init, i64 224073}
!64 = !{ptr @process_bb_node_lives, ptr @sparseset_iter_p, i64 481648}
!65 = !{ptr @process_bb_node_lives, ptr @sparseset_iter_elm, i64 257575}
!66 = !{ptr @process_bb_node_lives, ptr @find_reg_note, i64 74768}
!67 = !{ptr @process_bb_node_lives, ptr @can_throw_internal, i64 74769}
!68 = !{ptr @process_bb_node_lives, ptr @sparseset_iter_next, i64 257575}
!69 = !{ptr @process_bb_node_lives, ptr @make_early_clobber_and_input_conflicts, i64 618793}
!70 = !{ptr @process_bb_node_lives, ptr @mark_hard_reg_early_clobbers, i64 626973}
!71 = !{ptr @process_bb_node_lives, ptr @rhs_regno, i64 9049}
!72 = !{ptr @process_bb_node_lives, ptr @bb_has_eh_pred, i64 155653}
!73 = !{ptr @process_bb_node_lives, ptr @bb_has_abnormal_pred, i64 155653}
!74 = !{ptr @process_bb_node_lives, ptr @make_regno_dead, i64 182786}
!75 = !{ptr @ira_compress_allocno_live_ranges, ptr @remove_some_program_points_and_update_live_ranges, i64 38}
!76 = !{ptr @ira_compress_allocno_live_ranges, ptr @ira_rebuild_start_finish_chains, i64 38}
!77 = !{ptr @ira_compress_allocno_live_ranges, ptr @fwrite, i64 1}
!78 = !{ptr @ira_compress_allocno_live_ranges, ptr @print_live_ranges, i64 1}
!79 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_allocate_bitmap, i64 38}
!80 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_allocno_iter_init, i64 76}
!81 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_allocno_iter_cond, i64 209434}
!82 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @bitmap_set_bit, i64 329696}
!83 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_allocate, i64 38}
!84 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @bmp_iter_set_init, i64 38}
!85 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @bmp_iter_set, i64 320481}
!86 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @bmp_iter_next, i64 320443}
!87 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_free_bitmap, i64 38}
!88 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @fprintf, i64 1}
!89 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_free, i64 38}
!90 = !{ptr @ira_finish_allocno_live_ranges, ptr @ira_free, i64 76}
!91 = !{ptr @set_allocno_live, ptr @sparseset_bit_p, i64 349419}
!92 = !{ptr @set_allocno_live, ptr @sparseset_set_bit, i64 349418}
!93 = !{ptr @make_regno_born, ptr @sparseset_iter_init, i64 66740}
!94 = !{ptr @make_regno_born, ptr @sparseset_iter_p, i64 140567}
!95 = !{ptr @make_regno_born, ptr @sparseset_iter_elm, i64 73827}
!96 = !{ptr @make_regno_born, ptr @sparseset_iter_next, i64 73827}
!97 = !{ptr @make_regno_born, ptr @ira_create_allocno_live_range, i64 169185}
!98 = !{ptr @mark_ref_live, ptr @mark_reg_live, i64 961347}
!99 = !{ptr @process_single_reg_class_operands, ptr @single_reg_operand_class, i64 1314037}
!100 = !{ptr @process_single_reg_class_operands, ptr @rhs_regno, i64 202}
!101 = !{ptr @process_single_reg_class_operands, ptr @reg_classes_intersect_p, i64 198}
!102 = !{ptr @process_single_reg_class_operands, ptr @ira_get_register_move_cost, i64 197}
!103 = !{ptr @process_single_reg_class_operands, ptr @ira_allocate_and_set_costs, i64 197}
!104 = !{ptr @process_single_reg_class_operands, ptr @sparseset_iter_init, i64 203}
!105 = !{ptr @process_single_reg_class_operands, ptr @sparseset_iter_p, i64 608}
!106 = !{ptr @process_single_reg_class_operands, ptr @sparseset_iter_elm, i64 405}
!107 = !{ptr @process_single_reg_class_operands, ptr @sparseset_iter_next, i64 405}
!108 = !{ptr @mark_ref_dead, ptr @mark_reg_dead, i64 401041}
!109 = !{ptr @make_early_clobber_and_input_conflicts, ptr @check_and_make_def_conflict, i64 3}
!110 = !{ptr @mark_hard_reg_early_clobbers, ptr @rhs_regno, i64 16488}
!111 = !{ptr @mark_hard_reg_early_clobbers, ptr @mark_ref_live, i64 8243}
!112 = !{ptr @mark_hard_reg_early_clobbers, ptr @mark_ref_dead, i64 8243}
!113 = !{ptr @bb_has_eh_pred, ptr @ei_start_1, i64 155654}
!114 = !{ptr @bb_has_eh_pred, ptr @ei_cond, i64 462142}
!115 = !{ptr @bb_has_eh_pred, ptr @ei_next, i64 306488}
!116 = !{ptr @bb_has_abnormal_pred, ptr @ei_start_1, i64 155654}
!117 = !{ptr @bb_has_abnormal_pred, ptr @ei_cond, i64 462142}
!118 = !{ptr @bb_has_abnormal_pred, ptr @ei_next, i64 306488}
!119 = !{ptr @make_regno_dead, ptr @update_allocno_pressure_excess_length, i64 349417}
!120 = !{ptr @sparseset_bit_p, ptr @fancy_abort, i64 1}
!121 = !{ptr @sparseset_set_bit, ptr @sparseset_bit_p, i64 349419}
!122 = !{ptr @sparseset_set_bit, ptr @sparseset_insert_bit, i64 349418}
!123 = !{ptr @mark_reg_live, ptr @fancy_abort, i64 1}
!124 = !{ptr @mark_reg_live, ptr @rhs_regno, i64 961347}
!125 = !{ptr @mark_reg_live, ptr @sparseset_bit_p, i64 357247}
!126 = !{ptr @mark_reg_live, ptr @set_allocno_live, i64 114720}
!127 = !{ptr @mark_reg_live, ptr @make_regno_born, i64 181459}
!128 = !{ptr @single_reg_operand_class, ptr @single_reg_class, i64 805876}
!129 = !{ptr @ira_get_register_move_cost, ptr @ira_init_register_move_cost, i64 1}
!130 = !{ptr @ira_allocate_and_set_costs, ptr @ira_allocate_cost_vector, i64 201}
!131 = !{ptr @single_reg_class, ptr @lookup_constraint, i64 12551}
!132 = !{ptr @single_reg_class, ptr @insn_const_int_ok_for_constraint, i64 1}
!133 = !{ptr @single_reg_class, ptr @constraint_satisfied_p, i64 1}
!134 = !{ptr @single_reg_class, ptr @regclass_for_constraint, i64 12549}
!135 = !{ptr @single_reg_class, ptr @single_reg_class, i64 7411}
!136 = !{ptr @single_reg_class, ptr @insn_constraint_len, i64 268966}
!137 = !{ptr @mark_reg_dead, ptr @fancy_abort, i64 1}
!138 = !{ptr @mark_reg_dead, ptr @rhs_regno, i64 401043}
!139 = !{ptr @mark_reg_dead, ptr @sparseset_bit_p, i64 166631}
!140 = !{ptr @mark_reg_dead, ptr @clear_allocno_live, i64 166630}
!141 = !{ptr @mark_reg_dead, ptr @make_regno_dead, i64 233426}
!142 = !{ptr @mark_reg_dead, ptr @sparseset_iter_init, i64 65}
!143 = !{ptr @mark_reg_dead, ptr @sparseset_iter_p, i64 450}
!144 = !{ptr @mark_reg_dead, ptr @sparseset_iter_elm, i64 385}
!145 = !{ptr @mark_reg_dead, ptr @update_allocno_pressure_excess_length, i64 385}
!146 = !{ptr @mark_reg_dead, ptr @sparseset_iter_next, i64 385}
!147 = !{ptr @clear_allocno_live, ptr @sparseset_bit_p, i64 166632}
!148 = !{ptr @clear_allocno_live, ptr @sparseset_iter_init, i64 129}
!149 = !{ptr @clear_allocno_live, ptr @sparseset_iter_p, i64 1026}
!150 = !{ptr @clear_allocno_live, ptr @sparseset_iter_elm, i64 897}
!151 = !{ptr @clear_allocno_live, ptr @update_allocno_pressure_excess_length, i64 897}
!152 = !{ptr @clear_allocno_live, ptr @sparseset_iter_next, i64 897}
!153 = !{ptr @clear_allocno_live, ptr @sparseset_clear_bit, i64 166632}
!154 = !{ptr @ei_cond, ptr @ei_end_p, i64 924290}
!155 = !{ptr @ei_cond, ptr @ei_edge, i64 612982}
!156 = !{ptr @ei_next, ptr @ei_container, i64 1225963}
!157 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 612982}
!158 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!159 = !{ptr @ei_end_p, ptr @ei_container, i64 1848579}
!160 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 924290}
!161 = !{ptr @ei_edge, ptr @ei_container, i64 1225963}
!162 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 612982}
!163 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!164 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!165 = !{!"function_entry_count", i64 0}
!166 = !{!167, !167, i64 0}
!167 = !{!"long", !168, i64 0}
!168 = !{!"omnipotent char", !169, i64 0}
!169 = !{!"Simple C/C++ TBAA"}
!170 = !{!171, !168, i64 1086}
!171 = !{!"recog_data", !168, i64 0, !168, i64 240, !168, i64 480, !168, i64 720, !168, i64 840, !168, i64 960, !168, i64 1072, !168, i64 1086, !168, i64 1087, !168, i64 1088, !168, i64 1089, !172, i64 1120}
!172 = !{!"any pointer", !168, i64 0}
!173 = !{!172, !172, i64 0}
!174 = !{!168, !168, i64 0}
!175 = !{!176, !176, i64 0}
!176 = !{!"int", !168, i64 0}
!177 = distinct !{!177, !178}
!178 = !{!"llvm.loop.mustprogress"}
!179 = distinct !{!179, !178}
!180 = !{!"function_entry_count", i64 1388200}
!181 = !{!"ira-lives.c:rhs_regno"}
!182 = !{!"function_entry_count", i64 268954}
!183 = !{!"ira-lives.c:insn_constraint_len"}
!184 = !{!"branch_weights", i32 1, i32 268955}
!185 = !{!"function_entry_count", i64 38}
!186 = !{!"function_entry_count", i64 76}
!187 = !{!"ira-lives.c:create_start_finish_chains"}
!188 = !{i8 0, i8 2}
!189 = !{!"branch_weights", i32 1, i32 153}
!190 = !{!"branch_weights", i32 153, i32 429581}
!191 = distinct !{!191, !178}
!192 = !{!"branch_weights", i32 1, i32 214866}
!193 = !{!194, !176, i64 8}
!194 = !{!"ira_allocno_live_range", !172, i64 0, !176, i64 8, !176, i64 12, !172, i64 16, !172, i64 24, !172, i64 32}
!195 = !{!194, !172, i64 24}
!196 = !{!194, !176, i64 12}
!197 = !{!194, !172, i64 32}
!198 = !{!"branch_weights", i32 214866, i32 123505}
!199 = distinct !{!199, !178}
!200 = !{!194, !172, i64 16}
!201 = distinct !{!201, !178}
!202 = !{!"ira-lives.c:print_allocno_live_ranges"}
!203 = !{!204, !176, i64 0}
!204 = !{!"ira_allocno", !176, i64 0, !176, i64 4, !176, i64 8, !176, i64 12, !172, i64 16, !172, i64 24, !172, i64 32, !176, i64 40, !176, i64 44, !176, i64 48, !176, i64 52, !176, i64 56, !176, i64 60, !176, i64 64, !176, i64 68, !172, i64 72, !172, i64 80, !172, i64 88, !172, i64 96, !172, i64 104, !172, i64 112, !176, i64 120, !176, i64 124, !172, i64 128, !176, i64 136, !176, i64 140, !167, i64 144, !167, i64 152, !176, i64 160, !176, i64 164, !176, i64 168, !176, i64 172, !176, i64 172, !176, i64 172, !176, i64 172, !176, i64 172, !176, i64 172, !176, i64 172, !176, i64 172, !176, i64 173, !176, i64 173, !176, i64 173, !176, i64 173, !172, i64 176, !172, i64 184, !172, i64 192, !172, i64 200, !172, i64 208, !176, i64 216, !176, i64 220, !172, i64 224, !172, i64 232, !176, i64 240}
!205 = !{!204, !176, i64 4}
!206 = !{!204, !172, i64 112}
!207 = !{!"ira-lives.c:print_live_ranges"}
!208 = distinct !{!208, !178}
!209 = !{!"branch_weights", i32 39, i32 1561}
!210 = !{!"function_entry_count", i64 155692}
!211 = !{!"ira-lives.c:process_bb_node_lives"}
!212 = !{!213, !172, i64 0}
!213 = !{!"ira_loop_tree_node", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !172, i64 48, !176, i64 56, !168, i64 60, !172, i64 64, !168, i64 72, !168, i64 76, !172, i64 184, !172, i64 192, !172, i64 200, !172, i64 208}
!214 = !{!"branch_weights", i32 39, i32 155655}
!215 = !{!"branch_weights", i32 155654, i32 1}
!216 = !{!"branch_weights", i32 155654, i32 155655}
!217 = distinct !{!217, !178}
!218 = !{!219, !176, i64 80}
!219 = !{!"basic_block_def", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !168, i64 32, !172, i64 48, !172, i64 56, !168, i64 64, !167, i64 72, !176, i64 80, !176, i64 84, !176, i64 88, !176, i64 92, !176, i64 96}
!220 = !{!221, !172, i64 24}
!221 = !{!"df_lr_bb_info", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24}
!222 = !{!"branch_weights", i32 8249606, i32 58}
!223 = !{!"branch_weights", i32 1, i32 231}
!224 = !{!"branch_weights", i32 1, i32 58}
!225 = !{!"branch_weights", i32 231, i32 1}
!226 = distinct !{!226, !178}
!227 = !{!"branch_weights", i32 155655, i32 8094008}
!228 = distinct !{!228, !178}
!229 = !{!"branch_weights", i32 1, i32 155654}
!230 = !{!"branch_weights", i32 1, i32 234700}
!231 = !{!"branch_weights", i32 155654, i32 79046}
!232 = distinct !{!232, !178}
!233 = !{!"branch_weights", i32 155655, i32 1}
!234 = !{!235, !172, i64 8}
!235 = !{!"function", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !172, i64 48, !172, i64 56, !172, i64 64, !172, i64 72, !172, i64 80, !172, i64 88, !172, i64 96, !176, i64 104, !176, i64 108, !176, i64 112, !176, i64 116, !176, i64 120, !176, i64 124, !172, i64 128, !176, i64 136, !176, i64 137, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139}
!236 = !{!237, !172, i64 0}
!237 = !{!"control_flow_graph", !172, i64 0, !172, i64 8, !172, i64 16, !176, i64 24, !176, i64 28, !176, i64 32, !172, i64 40, !176, i64 48, !168, i64 52, !168, i64 60, !176, i64 68, !176, i64 72}
!238 = !{!219, !167, i64 72}
!239 = !{!219, !176, i64 88}
!240 = !{!"branch_weights", i32 1, i32 24217}
!241 = !{!"branch_weights", i32 1, i32 127}
!242 = !{!243, !172, i64 0}
!243 = !{!"rtl_bb_info", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !176, i64 32}
!244 = !{!"branch_weights", i32 155655, i32 893504}
!245 = !{!"branch_weights", i32 1509179346, i32 -806652937}
!246 = !{!"branch_weights", i32 4872, i32 -1256110859}
!247 = !{!213, !172, i64 48}
!248 = !{!213, !172, i64 8}
!249 = !{!250, !176, i64 0}
!250 = !{!"loop", !176, i64 0, !176, i64 4, !172, i64 8, !172, i64 16, !251, i64 24, !176, i64 32, !176, i64 36, !172, i64 40, !172, i64 48, !172, i64 56, !172, i64 64, !172, i64 72, !252, i64 80, !252, i64 96, !168, i64 112, !168, i64 113, !176, i64 116, !172, i64 120, !172, i64 128, !168, i64 136, !172, i64 144}
!251 = !{!"lpt_decision", !176, i64 0, !176, i64 4}
!252 = !{!"", !167, i64 0, !167, i64 8}
!253 = !{!254, !172, i64 248}
!254 = !{!"df", !168, i64 0, !168, i64 64, !172, i64 128, !255, i64 136, !255, i64 176, !172, i64 216, !172, i64 224, !172, i64 232, !176, i64 240, !176, i64 244, !172, i64 248, !176, i64 256, !176, i64 260, !172, i64 264, !172, i64 272, !172, i64 280, !172, i64 288, !172, i64 296, !172, i64 304, !172, i64 312, !172, i64 320, !172, i64 328, !172, i64 336, !176, i64 344, !176, i64 348, !172, i64 352, !176, i64 360, !176, i64 364, !168, i64 365, !168, i64 366}
!255 = !{!"df_ref_info", !172, i64 0, !172, i64 8, !172, i64 16, !176, i64 24, !176, i64 28, !176, i64 32, !176, i64 36}
!256 = !{!257, !172, i64 8}
!257 = !{!"df_insn_info", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !176, i64 40}
!258 = !{!"branch_weights", i32 1, i32 623676}
!259 = !{!"branch_weights", i32 3172069, i32 326042}
!260 = !{!"branch_weights", i32 66759, i32 3105311}
!261 = !{!"branch_weights", i32 623676, i32 2874434}
!262 = distinct !{!262, !178}
!263 = !{!"branch_weights", i32 8422, i32 615256}
!264 = !{!"branch_weights", i32 8268, i32 155}
!265 = !{!257, !172, i64 16}
!266 = !{!"branch_weights", i32 1, i32 154}
!267 = !{!268, !176, i64 0}
!268 = !{!"rtvec_def", !176, i64 0, !168, i64 8}
!269 = !{!"branch_weights", i32 616, i32 1}
!270 = !{!"branch_weights", i32 1233, i32 1}
!271 = !{!"branch_weights", i32 617, i32 616}
!272 = distinct !{!272, !178}
!273 = !{!"branch_weights", i32 154, i32 463}
!274 = distinct !{!274, !178}
!275 = distinct !{!275, !178}
!276 = !{!"branch_weights", i32 68959, i32 554719}
!277 = !{!"branch_weights", i32 1, i32 68958}
!278 = !{!"branch_weights", i32 1505, i32 73855}
!279 = !{!204, !176, i64 164}
!280 = !{!204, !176, i64 168}
!281 = !{!"branch_weights", i32 75359, i32 1}
!282 = !{!"branch_weights", i32 68958, i32 6401}
!283 = distinct !{!283, !178}
!284 = !{!"branch_weights", i32 64499, i32 559178}
!285 = !{!"branch_weights", i32 559178, i32 0}
!286 = distinct !{!286, !178}
!287 = !{!"branch_weights", i32 615433, i32 8245}
!288 = !{!"branch_weights", i32 1, i32 8244}
!289 = !{!"branch_weights", i32 203, i32 8919}
!290 = !{!"branch_weights", i32 9121, i32 1}
!291 = !{!"branch_weights", i32 7994, i32 1128}
!292 = !{!"branch_weights", i32 8244, i32 877}
!293 = distinct !{!293, !178}
!294 = !{!"branch_weights", i32 127, i32 134292097}
!295 = distinct !{!295, !178}
!296 = distinct !{!296, !178}
!297 = distinct !{!297, !178}
!298 = distinct !{!298, !178}
!299 = !{!"branch_weights", i32 155654, i32 27134}
!300 = distinct !{!300, !178}
!301 = !{!"branch_weights", i32 -1266426875, i32 778275}
!302 = !{!"branch_weights", i32 120, i32 311190}
!303 = !{!"branch_weights", i32 155655, i32 155654}
!304 = distinct !{!304, !178}
!305 = !{!"ira-lives.c:remove_some_program_points_and_update_live_ranges"}
!306 = !{!"branch_weights", i32 1, i32 155}
!307 = !{!"branch_weights", i32 155, i32 429581}
!308 = distinct !{!308, !178}
!309 = !{!"branch_weights", i32 1, i32 107433}
!310 = !{!"branch_weights", i32 107433, i32 61753}
!311 = distinct !{!311, !178}
!312 = !{!"branch_weights", i32 155, i32 1315345}
!313 = distinct !{!313, !178}
!314 = distinct !{!314, !178}
!315 = distinct !{!315, !178}
!316 = !{!"function_entry_count", i64 152}
!317 = !{!"ira-lives.c:ira_allocno_iter_init"}
!318 = !{!319, !176, i64 0}
!319 = !{!"", !176, i64 0}
!320 = !{!"function_entry_count", i64 429884}
!321 = !{!"ira-lives.c:ira_allocno_iter_cond"}
!322 = !{!"branch_weights", i32 152, i32 1}
!323 = !{!"branch_weights", i32 1, i32 429733}
!324 = !{!"branch_weights", i32 152, i32 429581}
!325 = distinct !{!325, !178}
!326 = !{!"function_entry_count", i64 155654}
!327 = !{!"ira-lives.c:df_lr_get_bb_info"}
!328 = !{!329, !176, i64 16}
!329 = !{!"dataflow", !172, i64 0, !172, i64 8, !176, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !176, i64 48, !168, i64 52, !168, i64 53, !168, i64 54}
!330 = !{!329, !172, i64 8}
!331 = !{!"ira-lives.c:sparseset_clear"}
!332 = !{!333, !176, i64 16}
!333 = !{!"sparseset_def", !172, i64 0, !172, i64 8, !176, i64 16, !176, i64 20, !176, i64 24, !168, i64 28, !168, i64 29, !168, i64 32}
!334 = !{!333, !168, i64 29}
!335 = !{!"ira-lives.c:bmp_iter_set_init"}
!336 = !{!337, !172, i64 0}
!337 = !{!"bitmap_head_def", !172, i64 0, !172, i64 8, !176, i64 16, !172, i64 24}
!338 = !{!339, !172, i64 0}
!339 = !{!"", !172, i64 0, !172, i64 8, !176, i64 16, !167, i64 24}
!340 = !{!339, !172, i64 8}
!341 = !{!"branch_weights", i32 1, i32 155693}
!342 = !{!343, !176, i64 16}
!343 = !{!"bitmap_element_def", !172, i64 0, !172, i64 8, !176, i64 16, !168, i64 24}
!344 = !{!"branch_weights", i32 155693, i32 1}
!345 = !{!339, !176, i64 16}
!346 = !{!339, !167, i64 24}
!347 = !{!"function_entry_count", i64 719265}
!348 = !{!"ira-lives.c:bmp_iter_set"}
!349 = !{!"branch_weights", i32 343392, i32 375875}
!350 = !{!"branch_weights", i32 563573, i32 1}
!351 = !{!"branch_weights", i32 3876762, i32 563573}
!352 = distinct !{!352, !178}
!353 = !{!"branch_weights", i32 1, i32 331559}
!354 = !{!"branch_weights", i32 319728, i32 187700}
!355 = !{!"branch_weights", i32 331559, i32 175868}
!356 = distinct !{!356, !178}
!357 = !{!343, !172, i64 0}
!358 = !{!"branch_weights", i32 155693, i32 175868}
!359 = !{!"function_entry_count", i64 349419}
!360 = !{!"ira-lives.c:set_allocno_live"}
!361 = !{!"branch_weights", i32 349420, i32 1}
!362 = !{!204, !176, i64 48}
!363 = !{!"branch_weights", i32 1, i32 349419}
!364 = !{!204, !176, i64 8}
!365 = !{!"branch_weights", i32 349292, i32 129}
!366 = !{!"branch_weights", i32 129, i32 349164}
!367 = !{!"branch_weights", i32 325192, i32 24229}
!368 = !{!"branch_weights", i32 349419, i32 1}
!369 = distinct !{!369, !178}
!370 = !{!"function_entry_count", i64 416158}
!371 = !{!"ira-lives.c:make_regno_born"}
!372 = !{!"branch_weights", i32 66740, i32 349420}
!373 = !{!"branch_weights", i32 1, i32 66739}
!374 = !{!"branch_weights", i32 66739, i32 7088}
!375 = distinct !{!375, !178}
!376 = !{!"branch_weights", i32 1, i32 349420}
!377 = !{!"branch_weights", i32 107434, i32 241987}
!378 = !{!"branch_weights", i32 -1569044238, i32 933963950}
!379 = !{!"function_entry_count", i64 563573}
!380 = !{!"ira-lives.c:bmp_iter_next"}
!381 = !{!"function_entry_count", i64 961347}
!382 = !{!"ira-lives.c:mark_ref_live"}
!383 = !{!"branch_weights", i32 203, i32 961146}
!384 = !{!"function_entry_count", i64 1247352}
!385 = !{!"ira-lives.c:process_single_reg_class_operands"}
!386 = !{!"branch_weights", i32 1247352, i32 1}
!387 = !{!"branch_weights", i32 1314037, i32 1314037}
!388 = !{!"branch_weights", i32 963939494, i32 -159211321, i32 3880}
!389 = !{!"branch_weights", i32 516969981, i32 -2076941702}
!390 = !{!"branch_weights", i32 1313835, i32 203}
!391 = !{!"branch_weights", i32 203, i32 1}
!392 = !{!"branch_weights", i32 1, i32 203}
!393 = !{!394, !394, i64 0}
!394 = !{!"short", !168, i64 0}
!395 = !{!"branch_weights", i32 407, i32 1}
!396 = !{i32 0, i32 65536}
!397 = !{!"branch_weights", i32 202, i32 1}
!398 = !{!204, !172, i64 200}
!399 = distinct !{!399, !178}
!400 = !{!"branch_weights", i32 1, i32 202}
!401 = !{!"branch_weights", i32 203, i32 203}
!402 = !{!204, !167, i64 144}
!403 = !{!204, !167, i64 152}
!404 = !{!"branch_weights", i32 202, i32 203}
!405 = distinct !{!405, !178}
!406 = !{!"branch_weights", i32 1380721, i32 1247352}
!407 = distinct !{!407, !178}
!408 = !{!"function_entry_count", i64 401043}
!409 = !{!"ira-lives.c:mark_ref_dead"}
!410 = !{!"branch_weights", i32 -1781900266, i32 12532}
!411 = !{!"branch_weights", i32 1, i32 401044}
!412 = !{!"function_entry_count", i64 291745}
!413 = !{!"ira-lives.c:sparseset_iter_init"}
!414 = !{!333, !176, i64 24}
!415 = !{!333, !168, i64 28}
!416 = !{!"function_entry_count", i64 625400}
!417 = !{!"ira-lives.c:sparseset_iter_p"}
!418 = !{!"branch_weights", i32 1, i32 625401}
!419 = !{!"branch_weights", i32 333656, i32 291746}
!420 = !{!"function_entry_count", i64 333655}
!421 = !{!"ira-lives.c:sparseset_iter_elm"}
!422 = !{!333, !172, i64 0}
!423 = !{!"ira-lives.c:sparseset_iter_next"}
!424 = !{!"function_entry_count", i64 623676}
!425 = !{!"ira-lives.c:make_early_clobber_and_input_conflicts"}
!426 = !{!171, !168, i64 1088}
!427 = !{!"branch_weights", i32 623676, i32 1}
!428 = !{!"branch_weights", i32 3170259, i32 1}
!429 = !{!"branch_weights", i32 6366237, i32 1}
!430 = !{!431, !176, i64 8}
!431 = !{!"operand_alternative", !172, i64 0, !176, i64 8, !176, i64 12, !176, i64 16, !176, i64 20, !176, i64 24, !176, i64 24, !176, i64 24, !176, i64 24, !176, i64 24, !176, i64 24, !176, i64 24, !176, i64 24}
!432 = !{!431, !176, i64 16}
!433 = !{!"branch_weights", i32 19486, i32 6346752}
!434 = !{!"branch_weights", i32 19486, i32 1}
!435 = !{!"branch_weights", i32 3195978, i32 3170259}
!436 = distinct !{!436, !178}
!437 = !{!"branch_weights", i32 2546584, i32 623676}
!438 = distinct !{!438, !178}
!439 = !{!"function_entry_count", i64 631920}
!440 = !{!"ira-lives.c:mark_hard_reg_early_clobbers"}
!441 = !{!"branch_weights", i32 1, i32 631920}
!442 = !{!"branch_weights", i32 3498110, i32 16489}
!443 = !{!"branch_weights", i32 1, i32 16489}
!444 = !{!"branch_weights", i32 16489, i32 1}
!445 = !{!"branch_weights", i32 8245, i32 8245}
!446 = !{!"branch_weights", i32 631920, i32 2882678}
!447 = distinct !{!447, !178}
!448 = !{!"ira-lives.c:bb_has_eh_pred"}
!449 = !{i64 0, i64 4, !175, i64 8, i64 8, !173}
!450 = !{i64 0, i64 8, !173}
!451 = !{!452, !176, i64 48}
!452 = !{!"edge_def", !172, i64 0, !172, i64 8, !168, i64 16, !172, i64 24, !172, i64 32, !176, i64 40, !176, i64 44, !176, i64 48, !176, i64 52, !167, i64 56}
!453 = !{!"branch_weights", i32 306492, i32 1}
!454 = !{!"branch_weights", i32 155654, i32 150838}
!455 = distinct !{!455, !178}
!456 = !{!"ira-lives.c:bb_has_abnormal_pred"}
!457 = distinct !{!457, !178}
!458 = !{!"ira-lives.c:bb_has_abnormal_call_pred"}
!459 = distinct !{!459, !178}
!460 = !{!"function_entry_count", i64 416215}
!461 = !{!"ira-lives.c:make_regno_dead"}
!462 = !{!"branch_weights", i32 66797, i32 349420}
!463 = !{!"function_entry_count", i64 1389350}
!464 = !{!"ira-lives.c:sparseset_bit_p"}
!465 = !{!333, !176, i64 20}
!466 = !{!"branch_weights", i32 1389351, i32 1}
!467 = !{!333, !172, i64 8}
!468 = !{!"branch_weights", i32 1001496, i32 387856}
!469 = !{!"ira-lives.c:sparseset_set_bit"}
!470 = !{!"ira-lives.c:sparseset_insert_bit"}
!471 = !{!"ira-lives.c:mark_reg_live"}
!472 = !{!"branch_weights", i32 961348, i32 1}
!473 = !{!"branch_weights", i32 357249, i32 604100}
!474 = !{!"branch_weights", i32 1, i32 357249}
!475 = !{!"branch_weights", i32 114721, i32 242529}
!476 = !{!"branch_weights", i32 133500, i32 470601}
!477 = !{!"branch_weights", i32 1, i32 133499}
!478 = !{!"branch_weights", i32 66740, i32 66761}
!479 = !{!"branch_weights", i32 66740, i32 1}
!480 = !{!"branch_weights", i32 66612, i32 129}
!481 = !{!"branch_weights", i32 66548, i32 65}
!482 = !{!"branch_weights", i32 66739, i32 1}
!483 = distinct !{!483, !178}
!484 = !{!"branch_weights", i32 1, i32 66740}
!485 = distinct !{!485, !178}
!486 = distinct !{!486, !178}
!487 = !{!"function_entry_count", i64 1314036}
!488 = !{!"ira-lives.c:single_reg_operand_class"}
!489 = !{!"branch_weights", i32 -1686598719, i32 -158430150}
!490 = !{!"function_entry_count", i64 202}
!491 = !{!"ira-lives.c:ira_get_register_move_cost"}
!492 = !{!"ira-lives.c:ira_allocate_and_set_costs"}
!493 = !{!"function_entry_count", i64 813278}
!494 = !{!"ira-lives.c:single_reg_class"}
!495 = !{!"branch_weights", i32 -30420880, i32 145624289, i32 4080, i32 5491858}
!496 = !{!"branch_weights", i32 1045198, i32 1}
!497 = !{!"branch_weights", i32 241048, i32 1, i32 1, i32 255780, i32 1, i32 1144, i32 1, i32 7998, i32 1144, i32 1, i32 20, i32 1125, i32 1, i32 203, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 516795, i32 1144, i32 1, i32 270, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 11137, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 7402, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!498 = !{!"branch_weights", i32 20, i32 1}
!499 = !{!"branch_weights", i32 1, i32 2250, i32 1}
!500 = !{!"branch_weights", i32 2096581690, i32 50901958}
!501 = !{!"branch_weights", i32 604790144, i32 1308736}
!502 = !{!"branch_weights", i32 526855, i32 1346}
!503 = !{!"branch_weights", i32 7402, i32 1}
!504 = !{!"branch_weights", i32 1, i32 14805}
!505 = distinct !{!505, !178}
!506 = !{!"ira-lives.c:mark_reg_dead"}
!507 = !{!"branch_weights", i32 401044, i32 1}
!508 = !{!"branch_weights", i32 166633, i32 234412}
!509 = !{!"branch_weights", i32 1, i32 166633}
!510 = !{!"branch_weights", i32 66797, i32 167616}
!511 = !{!"branch_weights", i32 1, i32 66796}
!512 = !{!"branch_weights", i32 1, i32 66797}
!513 = !{!"branch_weights", i32 193, i32 66605}
!514 = !{!"branch_weights", i32 129, i32 65}
!515 = !{!"branch_weights", i32 66796, i32 1}
!516 = distinct !{!516, !178}
!517 = !{!"branch_weights", i32 2145393936, i32 2089712}
!518 = !{!"branch_weights", i32 1, i32 129}
!519 = !{!"branch_weights", i32 129, i32 641}
!520 = distinct !{!520, !178}
!521 = !{!"branch_weights", i32 65, i32 1}
!522 = !{!"branch_weights", i32 1, i32 65}
!523 = !{!"branch_weights", i32 129, i32 1}
!524 = distinct !{!524, !178}
!525 = distinct !{!525, !178}
!526 = !{!"function_entry_count", i64 166632}
!527 = !{!"ira-lives.c:clear_allocno_live"}
!528 = !{!"branch_weights", i32 1, i32 166632}
!529 = !{!"branch_weights", i32 257, i32 166377}
!530 = !{!"branch_weights", i32 129, i32 129}
!531 = !{!"branch_weights", i32 166632, i32 1}
!532 = distinct !{!532, !178}
!533 = !{!"branch_weights", i32 2145821160, i32 1662488}
!534 = !{!"branch_weights", i32 1, i32 128}
!535 = !{!"branch_weights", i32 128, i32 769}
!536 = distinct !{!536, !178}
!537 = !{!"branch_weights", i32 128, i32 1}
!538 = distinct !{!538, !178}
!539 = !{!"function_entry_count", i64 350699}
!540 = !{!"ira-lives.c:update_allocno_pressure_excess_length"}
!541 = !{!"branch_weights", i32 1, i32 350699}
!542 = !{!"branch_weights", i32 349292, i32 1409}
!543 = !{!204, !176, i64 68}
!544 = !{!"branch_weights", i32 350699, i32 1}
!545 = distinct !{!545, !178}
!546 = !{!"ira-lives.c:check_and_make_def_conflict"}
!547 = distinct !{!547, !178}
!548 = distinct !{!548, !178}
!549 = !{!"ira-lives.c:check_and_make_def_use_conflict"}
!550 = !{!"ira-lives.c:make_pseudo_conflict"}
!551 = !{!"function_entry_count", i64 311308}
!552 = !{!"ira-lives.c:ei_start_1"}
!553 = !{!"function_entry_count", i64 924290}
!554 = !{!"ira-lives.c:ei_cond"}
!555 = !{!"branch_weights", i32 612983, i32 311309}
!556 = !{!"function_entry_count", i64 612982}
!557 = !{!"ira-lives.c:ei_next"}
!558 = !{!"branch_weights", i32 1, i32 612983}
!559 = !{!"branch_weights", i32 612983, i32 1}
!560 = !{!561, !176, i64 0}
!561 = !{!"", !176, i64 0, !172, i64 8}
!562 = !{!"ira-lives.c:ei_end_p"}
!563 = !{!"branch_weights", i32 1, i32 924291}
!564 = !{!"ira-lives.c:ei_edge"}
!565 = !{!"function_entry_count", i64 1537272}
!566 = !{!"ira-lives.c:VEC_edge_base_length"}
!567 = !{!"branch_weights", i32 1, i32 1537273}
!568 = !{!569, !176, i64 0}
!569 = !{!"VEC_edge_base", !176, i64 0, !176, i64 4, !168, i64 8}
!570 = !{!"function_entry_count", i64 4300508}
!571 = !{!"ira-lives.c:ei_container"}
!572 = !{!"branch_weights", i32 1, i32 4300509}
!573 = !{!"ira-lives.c:VEC_edge_base_index"}
