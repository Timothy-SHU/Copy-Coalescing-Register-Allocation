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
define dso_local void @ira_implicitly_set_insn_hard_regs(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !175 {
  store i64 0, ptr %0, align 8, !tbaa !176
  %2 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !180
  %3 = icmp sgt i8 %2, 0
  br i1 %3, label %4, label %72

4:                                                ; preds = %1, %67
  %5 = phi i8 [ %68, %67 ], [ %2, %1 ]
  %6 = phi i64 [ %69, %67 ], [ 0, %1 ]
  %7 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !183
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !184
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
  %24 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !183
  %25 = zext nneg i32 %21 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !183
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %16, %23
  %30 = phi i32 [ %28, %23 ], [ %17, %16 ]
  %31 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %6
  %32 = load ptr, ptr %31, align 8, !tbaa !183
  %33 = lshr i32 %30, 16
  %34 = and i32 %33, 255
  %35 = zext nneg i32 %34 to i64
  br label %36

36:                                               ; preds = %61, %29
  %37 = phi i8 [ 0, %29 ], [ %62, %61 ]
  %38 = phi ptr [ %32, %29 ], [ %64, %61 ]
  %39 = load i8, ptr %38, align 1, !tbaa !184
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
  %52 = load i32, ptr %51, align 4, !tbaa !185
  %53 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %50, i64 %35
  %54 = load i32, ptr %53, align 4, !tbaa !185
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %50
  %58 = load i64, ptr %57, align 8, !tbaa !176
  %59 = load i64, ptr %0, align 8, !tbaa !176
  %60 = or i64 %59, %58
  store i64 %60, ptr %0, align 8, !tbaa !176
  br label %61

61:                                               ; preds = %43, %36, %41, %44, %48, %56, %40
  %62 = phi i8 [ 0, %40 ], [ 1, %41 ], [ 0, %43 ], [ 0, %56 ], [ 0, %48 ], [ 0, %44 ], [ 1, %36 ]
  %63 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %39) #18
  %64 = getelementptr inbounds i8, ptr %38, i64 %63
  br label %36, !llvm.loop !187

65:                                               ; preds = %36
  %66 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !180
  br label %67

67:                                               ; preds = %65, %16, %20
  %68 = phi i8 [ %5, %20 ], [ %5, %16 ], [ %66, %65 ]
  %69 = add nuw nsw i64 %6, 1
  %70 = sext i8 %68 to i64
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %4, label %72, !llvm.loop !189

72:                                               ; preds = %67, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !190 !PGOFuncName !191 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !184
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #4 !prof !192 !PGOFuncName !193 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !194
  ret i64 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_rebuild_start_finish_chains() local_unnamed_addr #0 !prof !195 {
  %1 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !183
  tail call void @ira_free(ptr noundef %1) #19
  %2 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !183
  tail call void @ira_free(ptr noundef %2) #19
  tail call fastcc void @create_start_finish_chains() #18
  ret void
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_start_finish_chains() unnamed_addr #0 !prof !196 !PGOFuncName !197 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %3 = load i32, ptr @ira_max_point, align 4, !tbaa !185
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #19
  store ptr %6, ptr @ira_start_point_ranges, align 8, !tbaa !183
  %7 = load i32, ptr @ira_max_point, align 4, !tbaa !185
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %9, i1 false)
  %10 = load i32, ptr @ira_max_point, align 4, !tbaa !185
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr @ira_allocate(i64 noundef %12) #19
  store ptr %13, ptr @ira_finish_point_ranges, align 8, !tbaa !183
  %14 = load i32, ptr @ira_max_point, align 4, !tbaa !185
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %16, i1 false)
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #18
  %17 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !198
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %46, label %22, !prof !199

19:                                               ; preds = %27, %22
  %20 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !198
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %46, label %22, !prof !200, !llvm.loop !201

22:                                               ; preds = %0, %19
  %23 = load ptr, ptr %1, align 8, !tbaa !183
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !183
  %26 = icmp eq ptr %25, null
  br i1 %26, label %19, label %27, !prof !202

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %44, %27 ], [ %25, %22 ]
  %29 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !183
  %30 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !203
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %29, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !183
  %35 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !205
  store ptr %28, ptr %33, align 8, !tbaa !183
  %36 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !183
  %37 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !206
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !183
  %42 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 5
  store ptr %41, ptr %42, align 8, !tbaa !207
  store ptr %28, ptr %40, align 8, !tbaa !183
  %43 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %28, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !183
  %45 = icmp eq ptr %44, null
  br i1 %45, label %19, label %27, !prof !208, !llvm.loop !209

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
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #6 !prof !210 !PGOFuncName !211 {
  store i32 0, ptr %0, align 4, !tbaa !212
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !prof !214 !PGOFuncName !215 {
  %3 = load i32, ptr %0, align 4, !tbaa !212
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !185
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !216

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !183
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !217

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !183
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !212
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !218, !llvm.loop !219

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_print_live_range_list(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !175 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %12, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !203
  %8 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !206
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !220
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !221

14:                                               ; preds = %4, %2
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_live_range_list(ptr noundef %0) local_unnamed_addr #8 !prof !175 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !183
  tail call void @ira_print_live_range_list(ptr noundef %2, ptr noundef %0) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_allocno_live_ranges(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !175 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !183
  tail call fastcc void @print_allocno_live_ranges(ptr noundef %2, ptr noundef %0) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_allocno_live_ranges(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !175 !PGOFuncName !222 {
  %3 = load i32, ptr %1, align 8, !tbaa !223
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !225
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %3, i32 noundef %5) #18
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !226
  tail call void @ira_print_live_range_list(ptr noundef %0, ptr noundef %8) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_live_ranges() local_unnamed_addr #8 !prof !175 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !183
  tail call fastcc void @print_live_ranges(ptr noundef %1) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_live_ranges(ptr nocapture noundef %0) unnamed_addr #8 !prof !175 !PGOFuncName !227 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #18
  %4 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !198
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1, %6
  %7 = load ptr, ptr %2, align 8, !tbaa !183
  tail call fastcc void @print_allocno_live_ranges(ptr noundef %0, ptr noundef %7) #18
  %8 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !198
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %6, !llvm.loop !228

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_create_allocno_live_ranges() local_unnamed_addr #0 !prof !229 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !185
  %2 = tail call ptr @sparseset_alloc(i32 noundef %1) #19
  store ptr %2, ptr @allocnos_live, align 8, !tbaa !183
  store i32 0, ptr @curr_point, align 4, !tbaa !185
  store i32 0, ptr @last_call_num, align 4, !tbaa !185
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !185
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #19
  store ptr %6, ptr @allocno_saved_at_call, align 8, !tbaa !183
  %7 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !185
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %9, i1 false)
  %10 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !183
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %10, ptr noundef null, ptr noundef nonnull @process_bb_node_lives) #19
  %11 = load i32, ptr @curr_point, align 4, !tbaa !185
  store i32 %11, ptr @ira_max_point, align 4, !tbaa !185
  tail call fastcc void @create_start_finish_chains() #18
  %12 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !185
  %13 = icmp sgt i32 %12, 2
  %14 = load ptr, ptr @ira_dump_file, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !230

17:                                               ; preds = %0
  tail call fastcc void @print_live_ranges(ptr noundef nonnull %14) #18
  br label %18

18:                                               ; preds = %17, %0
  %19 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !183
  tail call void @ira_free(ptr noundef %19) #19
  %20 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  tail call void @free(ptr noundef %20) #18
  ret void
}

; Function Attrs: optsize
declare ptr @sparseset_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @process_bb_node_lives(ptr noundef %0) #0 !prof !231 !PGOFuncName !232 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !233
  %5 = icmp eq ptr %4, null
  br i1 %5, label %444, label %6, !prof !235

6:                                                ; preds = %1
  %7 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !185
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20, !prof !236

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %13 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !185
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %15
  store i32 0, ptr %16, align 4, !tbaa !185
  %17 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %15
  store i32 -1, ptr %17, align 4, !tbaa !185
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %10
  br i1 %19, label %20, label %11, !prof !237, !llvm.loop !238

20:                                               ; preds = %11, %6
  store ptr %0, ptr @curr_bb_node, align 8, !tbaa !183
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !239
  %23 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %22) #18
  %24 = getelementptr inbounds %struct.df_lr_bb_info, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !241
  %26 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  tail call fastcc void @sparseset_clear(ptr noundef %26) #18
  store i64 0, ptr @hard_regs_live, align 8, !tbaa !176
  tail call void @reg_set_to_hard_reg_set(ptr noundef nonnull @hard_regs_live, ptr noundef %25) #19
  %27 = load i64, ptr @eliminable_regset, align 8, !tbaa !176
  %28 = load i64, ptr @hard_regs_live, align 8, !tbaa !176
  %29 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !176
  %30 = or i64 %27, %29
  %31 = xor i64 %30, -1
  %32 = and i64 %28, %31
  store i64 %32, ptr @hard_regs_live, align 8, !tbaa !176
  %33 = load ptr, ptr @curr_bb_node, align 8
  br label %34

34:                                               ; preds = %20, %67
  %35 = phi i64 [ 0, %20 ], [ %69, %67 ]
  %36 = phi i32 [ undef, %20 ], [ %68, %67 ]
  %37 = shl nuw nsw i64 1, %35
  %38 = and i64 %37, %32
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %67, label %40, !prof !243

40:                                               ; preds = %34
  %41 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %35
  %42 = load i32, ptr %41, align 4, !tbaa !185
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !185
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %46, i64 0
  %48 = load i32, ptr %47, align 4, !tbaa !185
  %49 = icmp eq i32 %48, 27
  br i1 %49, label %67, label %50, !prof !244

50:                                               ; preds = %40, %61
  %51 = phi i32 [ %65, %61 ], [ %48, %40 ]
  %52 = phi i32 [ %62, %61 ], [ 0, %40 ]
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !185
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !185
  %57 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %33, i64 0, i32 11, i64 %53
  %58 = load i32, ptr %57, align 4, !tbaa !185
  %59 = icmp sgt i32 %58, %55
  br i1 %59, label %61, label %60, !prof !245

60:                                               ; preds = %50
  store i32 %56, ptr %57, align 4, !tbaa !185
  br label %61

61:                                               ; preds = %50, %60
  %62 = add i32 %52, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %46, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !185
  %66 = icmp eq i32 %65, 27
  br i1 %66, label %67, label %50, !prof !246, !llvm.loop !247

67:                                               ; preds = %61, %40, %34
  %68 = phi i32 [ %36, %34 ], [ 0, %40 ], [ %62, %61 ]
  %69 = add nuw nsw i64 %35, 1
  %70 = icmp eq i64 %69, 53
  br i1 %70, label %71, label %34, !prof !248, !llvm.loop !249

71:                                               ; preds = %67
  store i32 %68, ptr %2, align 4, !tbaa !185
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %25, i32 noundef 53, ptr noundef nonnull %2) #18
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !198
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %89, label %74, !prof !250

74:                                               ; preds = %71
  %75 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !183
  br label %76

76:                                               ; preds = %74, %85
  %77 = phi ptr [ %75, %74 ], [ %86, %85 ]
  %78 = load i32, ptr %2, align 4, !tbaa !185
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !183
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83, !prof !251

83:                                               ; preds = %76
  tail call fastcc void @set_allocno_live(ptr noundef nonnull %81) #18
  tail call fastcc void @make_regno_born(i32 noundef %78) #18
  %84 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !183
  br label %85

85:                                               ; preds = %76, %83
  %86 = phi ptr [ %77, %76 ], [ %84, %83 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !198
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %76, !prof !252, !llvm.loop !253

89:                                               ; preds = %85, %71
  %90 = load i32, ptr @optimize_size, align 4, !tbaa !185
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %110, !prof !254

92:                                               ; preds = %89
  %93 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !185
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95, !prof !254

95:                                               ; preds = %92
  %96 = load ptr, ptr @cfun, align 8, !tbaa !183
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !255
  %99 = load ptr, ptr %98, align 8, !tbaa !257
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 8
  %101 = load i64, ptr %100, align 8, !tbaa !259
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %95, %92
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 11
  %105 = load i32, ptr %104, align 8, !tbaa !260
  %106 = add i32 %105, 9
  %107 = icmp ult i32 %106, 19
  br i1 %107, label %110, label %108, !prof !261

108:                                              ; preds = %103
  %109 = sdiv i32 %105, 10
  br label %110

110:                                              ; preds = %108, %103, %89, %95
  %111 = phi i32 [ %109, %108 ], [ 1, %103 ], [ 1000, %89 ], [ 1000, %95 ]
  %112 = load i32, ptr @last_call_num, align 4, !tbaa !185
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr @last_call_num, align 4, !tbaa !185
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8, !tbaa !184
  %116 = getelementptr inbounds %struct.rtl_bb_info, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !184
  %118 = icmp eq ptr %117, null
  br i1 %118, label %377, label %119, !prof !262

119:                                              ; preds = %110, %373
  %120 = phi ptr [ %375, %373 ], [ %117, %110 ]
  %121 = load ptr, ptr %114, align 8, !tbaa !184
  %122 = load ptr, ptr %121, align 8, !tbaa !263
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !184
  %125 = icmp eq ptr %120, %124
  br i1 %125, label %377, label %126, !prof !265

126:                                              ; preds = %119
  %127 = load i32, ptr %120, align 8
  %128 = and i32 %127, 65535
  %129 = add nsw i32 %128, -11
  %130 = icmp ult i32 %129, -3
  br i1 %130, label %373, label %131, !prof !266

131:                                              ; preds = %126
  %132 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !185
  %133 = icmp sgt i32 %132, 2
  %134 = load ptr, ptr @ira_dump_file, align 8
  %135 = icmp ne ptr %134, null
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %137, label %148, !prof !267

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %139 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !184
  %141 = load ptr, ptr %138, align 8, !tbaa !268
  %142 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !269
  %144 = load i32, ptr %143, align 8, !tbaa !270
  %145 = load i32, ptr @curr_point, align 4, !tbaa !185
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %134, ptr noundef nonnull @.str.3, i32 noundef %140, i32 noundef %144, i32 noundef %145) #18
  %147 = load i32, ptr %120, align 8
  br label %148

148:                                              ; preds = %137, %131
  %149 = phi i32 [ %147, %137 ], [ %127, %131 ]
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 10
  %152 = load ptr, ptr @df, align 8, !tbaa !183
  %153 = getelementptr inbounds %struct.df, ptr %152, i64 0, i32 10
  %154 = load ptr, ptr %153, align 8, !tbaa !274
  %155 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !184
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %154, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !183
  %160 = getelementptr inbounds %struct.df_insn_info, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !277
  %162 = load ptr, ptr %161, align 8, !tbaa !183
  %163 = icmp eq ptr %162, null
  br i1 %163, label %176, label %164, !prof !279

164:                                              ; preds = %148, %172
  %165 = phi ptr [ %174, %172 ], [ %162, %148 ]
  %166 = phi ptr [ %173, %172 ], [ %161, %148 ]
  br i1 %151, label %167, label %171, !prof !280

167:                                              ; preds = %164
  %168 = load i32, ptr %165, align 8
  %169 = and i32 %168, 4194304
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172, !prof !281

171:                                              ; preds = %167, %164
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %165) #18
  br label %172

172:                                              ; preds = %167, %171
  %173 = getelementptr inbounds ptr, ptr %166, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !183
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %164, !prof !282, !llvm.loop !283

176:                                              ; preds = %172, %148
  %177 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !184
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 15
  br i1 %181, label %182, label %233, !prof !284

182:                                              ; preds = %176
  %183 = tail call i32 @multiple_sets(ptr noundef nonnull %120) #19
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %233, label %185, !prof !285

185:                                              ; preds = %182
  %186 = load ptr, ptr @df, align 8, !tbaa !183
  %187 = getelementptr inbounds %struct.df, ptr %186, i64 0, i32 10
  %188 = load ptr, ptr %187, align 8, !tbaa !274
  %189 = load i32, ptr %155, align 8, !tbaa !184
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds ptr, ptr %188, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !183
  %193 = getelementptr inbounds %struct.df_insn_info, ptr %192, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !286
  %195 = load ptr, ptr %194, align 8, !tbaa !183
  %196 = icmp eq ptr %195, null
  br i1 %196, label %233, label %197, !prof !287

197:                                              ; preds = %185, %229
  %198 = phi ptr [ %231, %229 ], [ %195, %185 ]
  %199 = phi ptr [ %230, %229 ], [ %194, %185 ]
  %200 = getelementptr inbounds %struct.df_base_ref, ptr %198, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !184
  %202 = load ptr, ptr %177, align 8, !tbaa !184
  %203 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !184
  %205 = load i32, ptr %204, align 8, !tbaa !288
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %229, !prof !290

207:                                              ; preds = %197
  %208 = zext nneg i32 %205 to i64
  br label %209

209:                                              ; preds = %207, %227
  %210 = phi i64 [ %208, %207 ], [ %211, %227 ]
  %211 = add nsw i64 %210, -1
  %212 = load ptr, ptr %177, align 8, !tbaa !184
  %213 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !184
  %215 = getelementptr inbounds %struct.rtvec_def, ptr %214, i64 0, i32 1, i64 %211
  %216 = load ptr, ptr %215, align 8, !tbaa !183
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, 65535
  %219 = icmp eq i32 %218, 23
  br i1 %219, label %220, label %227, !prof !291

220:                                              ; preds = %209
  %221 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !184
  %223 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %201, ptr noundef %222) #19
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225, !prof !292

225:                                              ; preds = %220
  %226 = load ptr, ptr %199, align 8, !tbaa !183
  tail call fastcc void @mark_ref_live(ptr noundef %226) #18
  br label %229

227:                                              ; preds = %209, %220
  %228 = icmp ugt i64 %210, 1
  br i1 %228, label %209, label %229, !prof !293, !llvm.loop !294

229:                                              ; preds = %227, %197, %225
  %230 = getelementptr inbounds ptr, ptr %199, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !183
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %197, !prof !295, !llvm.loop !296

233:                                              ; preds = %229, %185, %182, %176
  tail call void @extract_insn(ptr noundef nonnull %120) #19
  tail call void @preprocess_constraints() #19
  tail call fastcc void @process_single_reg_class_operands(i8 noundef zeroext 0, i32 noundef %111) #18
  %234 = load ptr, ptr @df, align 8, !tbaa !183
  %235 = getelementptr inbounds %struct.df, ptr %234, i64 0, i32 10
  %236 = load ptr, ptr %235, align 8, !tbaa !274
  %237 = load i32, ptr %155, align 8, !tbaa !184
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds ptr, ptr %236, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !183
  %241 = getelementptr inbounds %struct.df_insn_info, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !277
  %243 = load ptr, ptr %242, align 8, !tbaa !183
  %244 = icmp eq ptr %243, null
  br i1 %244, label %257, label %245, !prof !279

245:                                              ; preds = %233, %253
  %246 = phi ptr [ %255, %253 ], [ %243, %233 ]
  %247 = phi ptr [ %254, %253 ], [ %242, %233 ]
  br i1 %151, label %248, label %252, !prof !280

248:                                              ; preds = %245
  %249 = load i32, ptr %246, align 8
  %250 = and i32 %249, 4194304
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253, !prof !281

252:                                              ; preds = %248, %245
  tail call fastcc void @mark_ref_dead(ptr noundef nonnull %246) #18
  br label %253

253:                                              ; preds = %248, %252
  %254 = getelementptr inbounds ptr, ptr %247, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !183
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %245, !prof !282, !llvm.loop !297

257:                                              ; preds = %253, %233
  br i1 %151, label %258, label %309, !prof !298

258:                                              ; preds = %257
  %259 = load i32, ptr @last_call_num, align 4, !tbaa !185
  %260 = add nsw i32 %259, 1
  store i32 %260, ptr @last_call_num, align 4, !tbaa !185
  %261 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  tail call fastcc void @sparseset_iter_init(ptr noundef %261) #18
  %262 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %261) #18, !range !198
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %309, label %264, !prof !299

264:                                              ; preds = %258, %305
  %265 = phi ptr [ %306, %305 ], [ %261, %258 ]
  %266 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %265) #18
  %267 = load ptr, ptr @ira_allocnos, align 8, !tbaa !183
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds ptr, ptr %267, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !183
  %271 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !183
  %272 = getelementptr inbounds i32, ptr %271, i64 %268
  %273 = load i32, ptr %272, align 4, !tbaa !185
  %274 = load i32, ptr @last_call_num, align 4, !tbaa !185
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %280, label %276, !prof !300

276:                                              ; preds = %264
  %277 = getelementptr inbounds %struct.ira_allocno, ptr %270, i64 0, i32 29
  %278 = load i32, ptr %277, align 4, !tbaa !301
  %279 = add nsw i32 %278, %111
  store i32 %279, ptr %277, align 4, !tbaa !301
  br label %280

280:                                              ; preds = %276, %264
  %281 = add nsw i32 %274, 1
  store i32 %281, ptr %272, align 4, !tbaa !185
  %282 = getelementptr inbounds %struct.ira_allocno, ptr %270, i64 0, i32 30
  %283 = load i32, ptr %282, align 8, !tbaa !302
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr %282, align 8, !tbaa !302
  %285 = load ptr, ptr @cfun, align 8, !tbaa !183
  %286 = getelementptr inbounds %struct.function, ptr %285, i64 0, i32 20
  %287 = load i32, ptr %286, align 8
  %288 = and i32 %287, 1048576
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %293, !prof !303

290:                                              ; preds = %280
  %291 = tail call ptr @find_reg_note(ptr noundef nonnull %120, i32 noundef 30, ptr noundef null) #19
  %292 = icmp eq ptr %291, null
  br i1 %292, label %295, label %293, !prof !304

293:                                              ; preds = %290, %280
  %294 = getelementptr inbounds %struct.ira_allocno, ptr %270, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %294, i8 -1, i64 16, i1 false)
  br label %295

295:                                              ; preds = %293, %290
  %296 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %120) #19
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %305, label %298, !prof !303

298:                                              ; preds = %295
  %299 = load i64, ptr @call_used_reg_set, align 8, !tbaa !176
  %300 = getelementptr inbounds %struct.ira_allocno, ptr %270, i64 0, i32 26
  %301 = load <2 x i64>, ptr %300, align 8, !tbaa !176
  %302 = insertelement <2 x i64> poison, i64 %299, i64 0
  %303 = shufflevector <2 x i64> %302, <2 x i64> poison, <2 x i32> zeroinitializer
  %304 = or <2 x i64> %301, %303
  store <2 x i64> %304, ptr %300, align 8, !tbaa !176
  br label %305

305:                                              ; preds = %298, %295
  %306 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  tail call fastcc void @sparseset_iter_next(ptr noundef %306) #18
  %307 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %306) #18, !range !198
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %264, !prof !305, !llvm.loop !306

309:                                              ; preds = %305, %258, %257
  tail call fastcc void @make_early_clobber_and_input_conflicts() #18
  %310 = load i32, ptr @curr_point, align 4, !tbaa !185
  %311 = add nsw i32 %310, 1
  store i32 %311, ptr @curr_point, align 4, !tbaa !185
  %312 = load ptr, ptr @df, align 8, !tbaa !183
  %313 = getelementptr inbounds %struct.df, ptr %312, i64 0, i32 10
  %314 = load ptr, ptr %313, align 8, !tbaa !274
  %315 = load i32, ptr %155, align 8, !tbaa !184
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds ptr, ptr %314, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !183
  %319 = getelementptr inbounds %struct.df_insn_info, ptr %318, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !286
  %321 = load ptr, ptr %320, align 8, !tbaa !183
  %322 = icmp eq ptr %321, null
  br i1 %322, label %329, label %323, !prof !279

323:                                              ; preds = %309, %323
  %324 = phi ptr [ %327, %323 ], [ %321, %309 ]
  %325 = phi ptr [ %326, %323 ], [ %320, %309 ]
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %324) #18
  %326 = getelementptr inbounds ptr, ptr %325, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !183
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %323, !prof !307, !llvm.loop !308

329:                                              ; preds = %323, %309
  tail call fastcc void @process_single_reg_class_operands(i8 noundef zeroext 1, i32 noundef %111) #18
  %330 = tail call fastcc zeroext i8 @mark_hard_reg_early_clobbers(ptr noundef nonnull %120, i8 noundef zeroext 1) #18, !range !198
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %370, label %332, !prof !309

332:                                              ; preds = %329
  %333 = tail call fastcc zeroext i8 @mark_hard_reg_early_clobbers(ptr noundef nonnull %120, i8 noundef zeroext 0) #18, !range !198
  %334 = load ptr, ptr @df, align 8, !tbaa !183
  %335 = getelementptr inbounds %struct.df, ptr %334, i64 0, i32 10
  %336 = load ptr, ptr %335, align 8, !tbaa !274
  %337 = load i32, ptr %155, align 8, !tbaa !184
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds ptr, ptr %336, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !183
  %341 = getelementptr inbounds %struct.df_insn_info, ptr %340, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !286
  %343 = load ptr, ptr %342, align 8, !tbaa !183
  %344 = icmp eq ptr %343, null
  br i1 %344, label %370, label %345, !prof !310

345:                                              ; preds = %332, %366
  %346 = phi ptr [ %368, %366 ], [ %343, %332 ]
  %347 = phi ptr [ %367, %366 ], [ %342, %332 ]
  %348 = getelementptr inbounds %struct.df_base_ref, ptr %346, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !184
  %350 = load i32, ptr %349, align 8
  %351 = and i32 %350, 65535
  %352 = icmp eq i32 %351, 39
  br i1 %352, label %353, label %357, !prof !311

353:                                              ; preds = %345
  %354 = getelementptr inbounds %struct.rtx_def, ptr %349, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !184
  %356 = load i32, ptr %355, align 8
  br label %357

357:                                              ; preds = %353, %345
  %358 = phi i32 [ %356, %353 ], [ %350, %345 ]
  %359 = phi ptr [ %355, %353 ], [ %349, %345 ]
  %360 = and i32 %358, 65535
  %361 = icmp eq i32 %360, 37
  br i1 %361, label %362, label %366, !prof !312

362:                                              ; preds = %357
  %363 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %359) #18
  %364 = icmp ugt i32 %363, 52
  br i1 %364, label %366, label %365, !prof !313

365:                                              ; preds = %362
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %346) #18
  br label %366

366:                                              ; preds = %357, %362, %365
  %367 = getelementptr inbounds ptr, ptr %347, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !183
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %345, !prof !314, !llvm.loop !315

370:                                              ; preds = %366, %332, %329
  %371 = load i32, ptr @curr_point, align 4, !tbaa !185
  %372 = add nsw i32 %371, 1
  store i32 %372, ptr @curr_point, align 4, !tbaa !185
  br label %373

373:                                              ; preds = %126, %370
  %374 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %375 = load ptr, ptr %374, align 8, !tbaa !184
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %119, !prof !316, !llvm.loop !317

377:                                              ; preds = %119, %373, %110
  %378 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef nonnull %4) #18, !range !198
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %381, label %380, !prof !254

380:                                              ; preds = %377
  tail call fastcc void @make_regno_born(i32 noundef 0) #18
  tail call fastcc void @make_regno_born(i32 noundef 1) #18
  br label %381

381:                                              ; preds = %380, %377
  %382 = tail call fastcc zeroext i8 @bb_has_abnormal_pred(ptr noundef nonnull %4) #18, !range !198
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %427, label %384, !prof !254

384:                                              ; preds = %381
  %385 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  tail call fastcc void @sparseset_iter_init(ptr noundef %385) #18
  %386 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %385) #18, !range !198
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %403, label %388

388:                                              ; preds = %384, %388
  %389 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %385) #18
  %390 = load ptr, ptr @ira_allocnos, align 8, !tbaa !183
  %391 = zext i32 %389 to i64
  %392 = getelementptr inbounds ptr, ptr %390, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !183
  %394 = getelementptr inbounds %struct.ira_allocno, ptr %393, i64 0, i32 31
  %395 = load i16, ptr %394, align 4
  %396 = or i16 %395, 16
  store i16 %396, ptr %394, align 4
  %397 = load ptr, ptr %392, align 8, !tbaa !183
  %398 = getelementptr inbounds %struct.ira_allocno, ptr %397, i64 0, i32 31
  %399 = load i16, ptr %398, align 4
  %400 = or i16 %399, 32
  store i16 %400, ptr %398, align 4
  tail call fastcc void @sparseset_iter_next(ptr noundef %385) #18
  %401 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %385) #18, !range !198
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %403, label %388, !llvm.loop !318

403:                                              ; preds = %388, %384
  br label %404

404:                                              ; preds = %403, %404
  %405 = phi i32 [ %406, %404 ], [ 8, %403 ]
  tail call fastcc void @make_regno_born(i32 noundef %405) #18
  %406 = add nuw nsw i32 %405, 1
  %407 = icmp eq i32 %406, 16
  br i1 %407, label %408, label %404, !llvm.loop !319

408:                                              ; preds = %404
  %409 = load ptr, ptr @cfun, align 8, !tbaa !183
  %410 = getelementptr inbounds %struct.function, ptr %409, i64 0, i32 20
  %411 = load i32, ptr %410, align 8
  %412 = and i32 %411, 1048576
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %427

414:                                              ; preds = %408
  %415 = tail call fastcc zeroext i8 @bb_has_abnormal_call_pred(ptr noundef nonnull %4) #18, !range !198
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %427, label %417

417:                                              ; preds = %414, %424
  %418 = phi i64 [ %425, %424 ], [ 0, %414 ]
  %419 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !184
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %417
  %423 = trunc i64 %418 to i32
  tail call fastcc void @make_regno_born(i32 noundef %423) #18
  br label %424

424:                                              ; preds = %417, %422
  %425 = add nuw nsw i64 %418, 1
  %426 = icmp eq i64 %425, 53
  br i1 %426, label %427, label %417, !llvm.loop !320

427:                                              ; preds = %424, %408, %414, %381
  %428 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  tail call fastcc void @sparseset_iter_init(ptr noundef %428) #18
  %429 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %428) #18, !range !198
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %441, label %431, !prof !250

431:                                              ; preds = %427, %431
  %432 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %428) #18
  %433 = load ptr, ptr @ira_allocnos, align 8, !tbaa !183
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds ptr, ptr %433, i64 %434
  %436 = load ptr, ptr %435, align 8, !tbaa !183
  %437 = getelementptr inbounds %struct.ira_allocno, ptr %436, i64 0, i32 1
  %438 = load i32, ptr %437, align 4, !tbaa !225
  tail call fastcc void @make_regno_dead(i32 noundef %438) #18
  tail call fastcc void @sparseset_iter_next(ptr noundef %428) #18
  %439 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %428) #18, !range !198
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %441, label %431, !prof !321, !llvm.loop !322

441:                                              ; preds = %431, %427
  %442 = load i32, ptr @curr_point, align 4, !tbaa !185
  %443 = add nsw i32 %442, 1
  store i32 %443, ptr @curr_point, align 4, !tbaa !185
  br label %444

444:                                              ; preds = %441, %1
  %445 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !183
  %446 = icmp ne ptr %445, %0
  %447 = load i32, ptr @ira_reg_class_cover_size, align 4
  %448 = icmp sgt i32 %447, 0
  %449 = select i1 %446, i1 %448, i1 false
  br i1 %449, label %450, label %471, !prof !323

450:                                              ; preds = %444
  %451 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %452 = load ptr, ptr %451, align 8, !tbaa !268
  br label %453

453:                                              ; preds = %450, %466
  %454 = phi i32 [ %447, %450 ], [ %467, %466 ]
  %455 = phi i64 [ 0, %450 ], [ %468, %466 ]
  %456 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %455
  %457 = load i32, ptr %456, align 4, !tbaa !185
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %458
  %460 = load i32, ptr %459, align 4, !tbaa !185
  %461 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %452, i64 0, i32 11, i64 %458
  %462 = load i32, ptr %461, align 4, !tbaa !185
  %463 = icmp sgt i32 %460, %462
  br i1 %463, label %464, label %466, !prof !324

464:                                              ; preds = %453
  store i32 %460, ptr %461, align 4, !tbaa !185
  %465 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !185
  br label %466

466:                                              ; preds = %464, %453
  %467 = phi i32 [ %465, %464 ], [ %454, %453 ]
  %468 = add nuw nsw i64 %455, 1
  %469 = sext i32 %467 to i64
  %470 = icmp slt i64 %468, %469
  br i1 %470, label %453, label %471, !prof !325, !llvm.loop !326

471:                                              ; preds = %466, %444
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #11 !prof !327 !PGOFuncName !328 {
  %2 = load ptr, ptr @df, align 8, !tbaa !183
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !183
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !329
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !254

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !331
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !183
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_clear(ptr nocapture noundef writeonly %0) unnamed_addr #6 !prof !327 !PGOFuncName !332 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !333
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 0, ptr %3, align 1, !tbaa !335
  ret void
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 !prof !336 !PGOFuncName !337 {
  %5 = load ptr, ptr %1, align 8, !tbaa !338
  store ptr %5, ptr %0, align 8, !tbaa !340
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !342
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9, !prof !343

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !340
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !344
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !346

14:                                               ; preds = %9
  %15 = shl i32 %12, 7
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %15, %14 ], [ %2, %9 ]
  %18 = lshr i32 %17, 6
  %19 = and i32 %18, 1
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !347
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !176
  %24 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %25 = and i32 %17, 63
  %26 = zext nneg i32 %25 to i64
  %27 = lshr i64 %23, %26
  store i64 %27, ptr %24, align 8, !tbaa !348
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add i32 %17, %29
  store i32 %30, ptr %3, align 4, !tbaa !185
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !349 !PGOFuncName !350 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !348
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !351

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !352

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !185
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !353, !llvm.loop !354

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !185
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !185
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !347
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !340
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !347
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !355

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !176
  store i64 %35, ptr %3, align 8, !tbaa !348
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !356

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !185
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !185
  %40 = load i32, ptr %23, align 8, !tbaa !347
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !347
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !357, !llvm.loop !358

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !359
  store ptr %44, ptr %0, align 8, !tbaa !340
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !360

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !344
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !185
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !348
  store i32 %16, ptr %1, align 4, !tbaa !185
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_allocno_live(ptr nocapture noundef %0) unnamed_addr #0 !prof !361 !PGOFuncName !362 {
  %2 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !183
  %3 = load i32, ptr %0, align 8, !tbaa !223
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %2, i64 %4
  store i32 0, ptr %5, align 4, !tbaa !185
  %6 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  %7 = load i32, ptr %0, align 8, !tbaa !223
  %8 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %6, i32 noundef %7) #18, !range !198
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %58, !prof !363

10:                                               ; preds = %1
  %11 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  %12 = load i32, ptr %0, align 8, !tbaa !223
  tail call fastcc void @sparseset_set_bit(ptr noundef %11, i32 noundef %12) #18
  %13 = load i64, ptr @hard_regs_live, align 8, !tbaa !176
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %15 = load <2 x i64>, ptr %14, align 8, !tbaa !176
  %16 = insertelement <2 x i64> poison, i64 %13, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  %18 = or <2 x i64> %15, %17
  store <2 x i64> %18, ptr %14, align 8, !tbaa !176
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !364
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %21, i64 0
  %23 = load i32, ptr %22, align 4, !tbaa !185
  %24 = icmp eq i32 %23, 27
  br i1 %24, label %58, label %25, !prof !365

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %27 = load i32, ptr @curr_point, align 4
  %28 = load ptr, ptr @curr_bb_node, align 8, !tbaa !183
  br label %29

29:                                               ; preds = %25, %53
  %30 = phi i64 [ 0, %25 ], [ %54, %53 ]
  %31 = phi i32 [ %23, %25 ], [ %56, %53 ]
  %32 = zext i32 %31 to i64
  %33 = load i32, ptr %26, align 8, !tbaa !366
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %32, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !185
  %37 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %32
  %38 = load i32, ptr %37, align 4, !tbaa !185
  %39 = add nsw i32 %38, %36
  store i32 %39, ptr %37, align 4, !tbaa !185
  %40 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %32
  %41 = load i32, ptr %40, align 4, !tbaa !185
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48, !prof !367

43:                                               ; preds = %29
  %44 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %32
  %45 = load i32, ptr %44, align 4, !tbaa !185
  %46 = icmp sgt i32 %39, %45
  br i1 %46, label %47, label %48, !prof !368

47:                                               ; preds = %43
  store i32 %27, ptr %40, align 4, !tbaa !185
  br label %48

48:                                               ; preds = %47, %43, %29
  %49 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 11, i64 %32
  %50 = load i32, ptr %49, align 4, !tbaa !185
  %51 = icmp slt i32 %50, %39
  br i1 %51, label %52, label %53, !prof !369

52:                                               ; preds = %48
  store i32 %39, ptr %49, align 4, !tbaa !185
  br label %53

53:                                               ; preds = %48, %52
  %54 = add nuw nsw i64 %30, 1
  %55 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %21, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !185
  %57 = icmp eq i32 %56, 27
  br i1 %57, label %58, label %29, !prof !370, !llvm.loop !371

58:                                               ; preds = %53, %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_regno_born(i32 noundef %0) unnamed_addr #0 !prof !372 !PGOFuncName !373 {
  %2 = icmp slt i32 %0, 53
  br i1 %2, label %3, label %25, !prof !374

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl nuw i64 1, %4
  %6 = load i64, ptr @hard_regs_live, align 8, !tbaa !176
  %7 = or i64 %6, %5
  store i64 %7, ptr @hard_regs_live, align 8, !tbaa !176
  %8 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  tail call fastcc void @sparseset_iter_init(ptr noundef %8) #18
  %9 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %8) #18, !range !198
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %45, label %11, !prof !375

11:                                               ; preds = %3
  %12 = insertelement <2 x i64> poison, i64 %5, i64 0
  %13 = shufflevector <2 x i64> %12, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %11, %14
  %15 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %8) #18
  %16 = load ptr, ptr @ira_allocnos, align 8, !tbaa !183
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !183
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 26
  %21 = load <2 x i64>, ptr %20, align 8, !tbaa !176
  %22 = or <2 x i64> %21, %13
  store <2 x i64> %22, ptr %20, align 8, !tbaa !176
  tail call fastcc void @sparseset_iter_next(ptr noundef %8) #18
  %23 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %8) #18, !range !198
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %45, label %14, !prof !376, !llvm.loop !377

25:                                               ; preds = %1
  %26 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !183
  %27 = zext nneg i32 %0 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !183
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31, !prof !378

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !226
  %34 = icmp eq ptr %33, null
  %35 = load i32, ptr @curr_point, align 4, !tbaa !185
  br i1 %34, label %43, label %36, !prof !379

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %33, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !206
  %39 = icmp eq i32 %38, %35
  %40 = add nsw i32 %38, 1
  %41 = icmp eq i32 %40, %35
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %45, label %43, !prof !380

43:                                               ; preds = %36, %31
  %44 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %29, i32 noundef %35, i32 noundef -1, ptr noundef %33) #19
  store ptr %44, ptr %32, align 8, !tbaa !226
  br label %45

45:                                               ; preds = %14, %3, %36, %43, %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !381 !PGOFuncName !382 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !348
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !348
  %6 = load i32, ptr %1, align 4, !tbaa !185
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !185
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_ref_live(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !383 !PGOFuncName !384 {
  %2 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10, !prof !385

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !184
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
define internal fastcc void @process_single_reg_class_operands(i8 noundef zeroext %0, i32 noundef %1) unnamed_addr #0 !prof !386 !PGOFuncName !387 {
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !180
  %4 = icmp sgt i8 %3, 0
  br i1 %4, label %5, label %150, !prof !388

5:                                                ; preds = %2
  %6 = icmp eq i8 %0, 0
  br label %7

7:                                                ; preds = %5, %145
  %8 = phi i64 [ 0, %5 ], [ %146, %145 ]
  %9 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !183
  %11 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %8
  %12 = load i32, ptr %11, align 4, !tbaa !185
  br i1 %6, label %14, label %13, !prof !389

13:                                               ; preds = %7
  switch i32 %12, label %145 [
    i32 0, label %17
    i32 2, label %17
  ], !prof !390

14:                                               ; preds = %7
  %15 = add i32 %12, -1
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %145, !prof !391

17:                                               ; preds = %13, %13, %14
  %18 = trunc i64 %8 to i32
  %19 = tail call fastcc i32 @single_reg_operand_class(i32 noundef %18) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %145, label %21, !prof !392

21:                                               ; preds = %17
  %22 = load i32, ptr %10, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 39
  br i1 %24, label %25, label %29, !prof !393

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !184
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %28, %25 ], [ %22, %21 ]
  %31 = phi ptr [ %27, %25 ], [ %10, %21 ]
  %32 = and i32 %30, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %118, !prof !394

34:                                               ; preds = %29
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %31) #18
  %36 = icmp sgt i32 %35, 52
  br i1 %36, label %37, label %118, !prof !395

37:                                               ; preds = %34
  %38 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !183
  %39 = zext nneg i32 %35 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !183
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !366
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !364
  %46 = zext i32 %19 to i64
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %46, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !185
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %118, label %51, !prof !396

51:                                               ; preds = %37
  %52 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %46
  %53 = load i32, ptr %52, align 4, !tbaa !185
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %118, label %55, !prof !396

55:                                               ; preds = %51
  %56 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %46
  %57 = load i16, ptr %56, align 2, !tbaa !397
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %47, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !397
  %61 = icmp sgt i16 %60, -1
  br i1 %61, label %62, label %118, !prof !399

62:                                               ; preds = %55
  %63 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %46
  %64 = load i32, ptr %63, align 4, !tbaa !185
  %65 = tail call i32 @reg_classes_intersect_p(i32 noundef %19, i32 noundef 13) #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75, !prof !396

67:                                               ; preds = %62
  %68 = zext i32 %43 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !184
  %71 = freeze i8 %70
  %72 = and i8 %71, -2
  %73 = icmp eq i8 %72, 10
  %74 = select i1 %73, i32 2, i32 1, !prof !400
  br label %86

75:                                               ; preds = %62
  %76 = icmp eq i32 %43, 40
  br i1 %76, label %82, label %77

77:                                               ; preds = %75
  %78 = zext i32 %43 to i64
  %79 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !184
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
  br i1 %88, label %118, label %89, !prof !396

89:                                               ; preds = %86
  br i1 %6, label %92, label %90, !prof !401

90:                                               ; preds = %89
  %91 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %43, i32 noundef %45, i32 noundef %19) #18, !range !402
  br label %94

92:                                               ; preds = %89
  %93 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %43, i32 noundef %19, i32 noundef %45) #18, !range !402
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = mul nsw i32 %95, %1
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 35
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %97, i32 noundef %45) #18
  %98 = zext i32 %43 to i64
  %99 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %47, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !185
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %118, !prof !403

102:                                              ; preds = %94
  %103 = load ptr, ptr %97, align 8, !tbaa !404
  %104 = zext nneg i32 %100 to i64
  br label %105

105:                                              ; preds = %102, %105
  %106 = phi i64 [ 0, %102 ], [ %116, %105 ]
  %107 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %46, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !397
  %109 = sext i16 %108 to i64
  %110 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %47, i64 %109
  %111 = load i16, ptr %110, align 2, !tbaa !397
  %112 = sext i16 %111 to i64
  %113 = getelementptr inbounds i32, ptr %103, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !185
  %115 = sub nsw i32 %114, %96
  store i32 %115, ptr %113, align 4, !tbaa !185
  %116 = add nuw nsw i64 %106, 1
  %117 = icmp eq i64 %116, %104
  br i1 %117, label %118, label %105, !prof !405, !llvm.loop !406

118:                                              ; preds = %105, %94, %37, %51, %55, %86, %34, %29
  %119 = phi ptr [ null, %34 ], [ null, %29 ], [ %41, %86 ], [ %41, %55 ], [ %41, %51 ], [ %41, %37 ], [ %41, %94 ], [ %41, %105 ]
  %120 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  tail call fastcc void @sparseset_iter_init(ptr noundef %120) #18
  %121 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %120) #18, !range !198
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %145, label %123, !prof !407

123:                                              ; preds = %118
  %124 = zext i32 %19 to i64
  %125 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %124
  br label %126

126:                                              ; preds = %123, %142
  %127 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %120) #18
  %128 = load ptr, ptr @ira_allocnos, align 8, !tbaa !183
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds ptr, ptr %128, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !183
  %132 = icmp eq ptr %131, %119
  br i1 %132, label %142, label %133, !prof !408

133:                                              ; preds = %126
  %134 = load i64, ptr %125, align 8, !tbaa !176
  %135 = getelementptr inbounds %struct.ira_allocno, ptr %131, i64 0, i32 26
  %136 = load i64, ptr %135, align 8, !tbaa !409
  %137 = or i64 %136, %134
  store i64 %137, ptr %135, align 8, !tbaa !409
  %138 = load i64, ptr %125, align 8, !tbaa !176
  %139 = getelementptr inbounds %struct.ira_allocno, ptr %131, i64 0, i32 27
  %140 = load i64, ptr %139, align 8, !tbaa !410
  %141 = or i64 %140, %138
  store i64 %141, ptr %139, align 8, !tbaa !410
  br label %142

142:                                              ; preds = %126, %133
  tail call fastcc void @sparseset_iter_next(ptr noundef %120) #18
  %143 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %120) #18, !range !198
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %126, !prof !411, !llvm.loop !412

145:                                              ; preds = %142, %118, %14, %13, %17
  %146 = add nuw nsw i64 %8, 1
  %147 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !180
  %148 = sext i8 %147 to i64
  %149 = icmp slt i64 %146, %148
  br i1 %149, label %7, label %150, !prof !413, !llvm.loop !414

150:                                              ; preds = %145, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_ref_dead(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !415 !PGOFuncName !416 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 1114112
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16, !prof !417

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !184
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 39
  br i1 %10, label %11, label %14, !prof !418

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi ptr [ %13, %11 ], [ %7, %5 ]
  tail call fastcc void @mark_reg_dead(ptr noundef %15) #18
  br label %16

16:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #6 !prof !419 !PGOFuncName !420 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !421
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !422
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !335
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @sparseset_iter_p(ptr nocapture noundef %0) unnamed_addr #13 !prof !423 !PGOFuncName !424 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !335
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5, !prof !425

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !421
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !333
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !426

11:                                               ; preds = %5, %1
  store i8 0, ptr %2, align 1, !tbaa !335
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sparseset_iter_elm(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !427 !PGOFuncName !428 {
  %2 = load ptr, ptr %0, align 8, !tbaa !429
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !421
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !185
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sparseset_iter_next(ptr nocapture noundef %0) unnamed_addr #13 !prof !427 !PGOFuncName !430 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !422
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !421
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !421
  store i8 1, ptr %2, align 4, !tbaa !422
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_early_clobber_and_input_conflicts() unnamed_addr #0 !prof !431 !PGOFuncName !432 {
  %1 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !433
  %2 = icmp sgt i8 %1, 0
  br i1 %2, label %3, label %61, !prof !434

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !180
  br label %5

5:                                                ; preds = %3, %55
  %6 = phi i8 [ %1, %3 ], [ %56, %55 ]
  %7 = phi i8 [ %4, %3 ], [ %57, %55 ]
  %8 = phi i64 [ 0, %3 ], [ %58, %55 ]
  %9 = icmp sgt i8 %7, 0
  br i1 %9, label %10, label %55, !prof !435

10:                                               ; preds = %5, %48
  %11 = phi i64 [ %49, %48 ], [ 0, %5 ]
  %12 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %11, i64 %8, i32 5
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16, !prof !436

16:                                               ; preds = %10
  %17 = icmp sgt i8 %13, -1
  br i1 %17, label %18, label %21, !prof !437

18:                                               ; preds = %16
  %19 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %11, i64 %8, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !438
  br label %21

21:                                               ; preds = %16, %18
  %22 = phi i32 [ %20, %18 ], [ 26, %16 ]
  %23 = trunc i64 %8 to i32
  %24 = trunc i64 %11 to i32
  tail call fastcc void @check_and_make_def_conflict(i32 noundef %23, i32 noundef %24, i32 noundef %22) #18
  br label %25

25:                                               ; preds = %21, %10
  %26 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %11, i64 %8, i32 3
  %27 = load i32, ptr %26, align 16, !tbaa !440
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %48, !prof !441

29:                                               ; preds = %25
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %30, i64 %8, i32 5
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39, !prof !442

35:                                               ; preds = %29
  %36 = load i8, ptr %12, align 8
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39, !prof !443

39:                                               ; preds = %35, %29
  %40 = icmp sgt i8 %32, -1
  br i1 %40, label %41, label %44, !prof !444

41:                                               ; preds = %39
  %42 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %30, i64 %8, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !438
  br label %44

44:                                               ; preds = %39, %41
  %45 = phi i32 [ %43, %41 ], [ 26, %39 ]
  %46 = trunc i64 %8 to i32
  %47 = trunc i64 %11 to i32
  tail call fastcc void @check_and_make_def_conflict(i32 noundef %46, i32 noundef %47, i32 noundef %45) #18
  br label %48

48:                                               ; preds = %25, %35, %44
  %49 = add nuw nsw i64 %11, 1
  %50 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !180
  %51 = sext i8 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %10, label %53, !prof !445, !llvm.loop !446

53:                                               ; preds = %48
  %54 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !433
  br label %55

55:                                               ; preds = %53, %5
  %56 = phi i8 [ %54, %53 ], [ %6, %5 ]
  %57 = phi i8 [ %50, %53 ], [ %7, %5 ]
  %58 = add nuw nsw i64 %8, 1
  %59 = sext i8 %56 to i64
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %5, label %61, !prof !447, !llvm.loop !448

61:                                               ; preds = %55, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mark_hard_reg_early_clobbers(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !449 !PGOFuncName !450 {
  %3 = load ptr, ptr @df, align 8, !tbaa !183
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !274
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !184
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !183
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !277
  %13 = load ptr, ptr %12, align 8, !tbaa !183
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15, !prof !451

15:                                               ; preds = %2, %44
  %16 = phi ptr [ %47, %44 ], [ %13, %2 ]
  %17 = phi i8 [ %45, %44 ], [ 0, %2 ]
  %18 = phi ptr [ %46, %44 ], [ %12, %2 ]
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 8388608
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22, !prof !452

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !184
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 39
  br i1 %27, label %28, label %32, !prof !453

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !184
  %31 = load i32, ptr %30, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i32 [ %31, %28 ], [ %25, %22 ]
  %34 = phi ptr [ %30, %28 ], [ %24, %22 ]
  %35 = and i32 %33, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %44, !prof !454

37:                                               ; preds = %32
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #18
  %39 = icmp ugt i32 %38, 52
  br i1 %39, label %44, label %40, !prof !455

40:                                               ; preds = %37
  %41 = icmp eq i8 %1, 0
  br i1 %41, label %43, label %42, !prof !456

42:                                               ; preds = %40
  tail call fastcc void @mark_ref_live(ptr noundef nonnull %16) #18
  br label %44

43:                                               ; preds = %40
  tail call fastcc void @mark_ref_dead(ptr noundef nonnull %16) #18
  br label %44

44:                                               ; preds = %37, %32, %43, %42, %15
  %45 = phi i8 [ %17, %15 ], [ %17, %37 ], [ %17, %32 ], [ 1, %43 ], [ 1, %42 ]
  %46 = getelementptr inbounds ptr, ptr %18, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !183
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %15, !prof !457, !llvm.loop !458

49:                                               ; preds = %44, %2
  %50 = phi i8 [ 0, %2 ], [ %45, %44 ]
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 !prof !327 !PGOFuncName !459 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !460
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !461
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !198
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !250

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !183
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !462
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !464

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !198
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !465, !llvm.loop !466

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_abnormal_pred(ptr noundef %0) unnamed_addr #0 !prof !327 !PGOFuncName !467 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !460
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !461
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !198
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !250

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !183
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !462
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !464

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !198
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !465, !llvm.loop !468

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_abnormal_call_pred(ptr noundef %0) unnamed_addr #0 !prof !175 !PGOFuncName !469 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !460
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !461
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !198
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !183
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !462
  %12 = and i32 %11, 12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !198
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !470

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @make_regno_dead(i32 noundef %0) unnamed_addr #14 !prof !471 !PGOFuncName !472 {
  %2 = icmp slt i32 %0, 53
  br i1 %2, label %3, label %9, !prof !473

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl nuw i64 1, %4
  %6 = xor i64 %5, -1
  %7 = load i64, ptr @hard_regs_live, align 8, !tbaa !176
  %8 = and i64 %7, %6
  store i64 %8, ptr @hard_regs_live, align 8, !tbaa !176
  br label %20

9:                                                ; preds = %1
  %10 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !183
  %11 = zext nneg i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !183
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !378

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !226
  %18 = load i32, ptr @curr_point, align 4, !tbaa !185
  %19 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !206
  tail call fastcc void @update_allocno_pressure_excess_length(ptr noundef nonnull %13) #18
  br label %20

20:                                               ; preds = %9, %15, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !474 !PGOFuncName !475 {
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !476
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6, !prof !477

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 85, ptr noundef nonnull @.str.5) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !478
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !185
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !333
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %23, !prof !479

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !429
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !185
  %21 = icmp eq i32 %20, %1
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %16, %7
  %24 = phi i8 [ 0, %7 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sparseset_set_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !361 !PGOFuncName !480 {
  %3 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %0, i32 noundef %1) #18, !range !198
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !363

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !333
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !333
  tail call fastcc void @sparseset_insert_bit(ptr noundef %0, i32 noundef %1, i32 noundef %7) #18
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sparseset_insert_bit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 !prof !361 !PGOFuncName !481 {
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !478
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store i32 %2, ptr %7, align 4, !tbaa !185
  %8 = load ptr, ptr %0, align 8, !tbaa !429
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %1, ptr %10, align 4, !tbaa !185
  ret void
}

; Function Attrs: optsize
declare ptr @ira_create_allocno_live_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_reg_live(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !482 !PGOFuncName !483 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %6, label %5, !prof !484

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 252, ptr noundef nonnull @.str.5) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %8 = icmp sgt i32 %7, 52
  %9 = zext nneg i32 %7 to i64
  br i1 %8, label %10, label %27, !prof !485

10:                                               ; preds = %6
  %11 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !183
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !183
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15, !prof !486

15:                                               ; preds = %10
  %16 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  %17 = load i32, ptr %13, align 8, !tbaa !223
  %18 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %16, i32 noundef %17) #18, !range !198
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20, !prof !487

20:                                               ; preds = %15
  %21 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !183
  %22 = load i32, ptr %13, align 8, !tbaa !223
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 0, ptr %24, align 4, !tbaa !185
  br label %111

25:                                               ; preds = %15
  tail call fastcc void @set_allocno_live(ptr noundef nonnull %13) #18
  br label %26

26:                                               ; preds = %25, %10
  tail call fastcc void @make_regno_born(i32 noundef %7) #18
  br label %111

27:                                               ; preds = %6
  %28 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !176
  %29 = shl nuw i64 1, %9
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %111, !prof !488

32:                                               ; preds = %27
  %33 = sext i32 %7 to i64
  %34 = load i32, ptr %0, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %33, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !184
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %111, label %41, !prof !489

41:                                               ; preds = %32
  %42 = zext i8 %39 to i32
  %43 = add nsw i32 %7, %42
  %44 = sext i32 %43 to i64
  %45 = load i64, ptr @hard_regs_live, align 8, !tbaa !176
  br label %46

46:                                               ; preds = %41, %107
  %47 = phi i64 [ %45, %41 ], [ %108, %107 ]
  %48 = phi i64 [ %33, %41 ], [ %109, %107 ]
  %49 = shl nuw i64 1, %48
  %50 = and i64 %47, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %107, !prof !490

52:                                               ; preds = %46
  %53 = load i64, ptr @eliminable_regset, align 8, !tbaa !176
  %54 = and i64 %53, %49
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %107, !prof !491

56:                                               ; preds = %52
  %57 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %48
  %58 = load i32, ptr %57, align 4, !tbaa !185
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %59, i64 0
  %61 = load i32, ptr %60, align 4, !tbaa !185
  %62 = icmp eq i32 %61, 27
  br i1 %62, label %85, label %63, !prof !375

63:                                               ; preds = %56
  %64 = load i32, ptr @curr_point, align 4
  br label %65

65:                                               ; preds = %63, %80
  %66 = phi i64 [ 0, %63 ], [ %81, %80 ]
  %67 = phi i32 [ %61, %63 ], [ %83, %80 ]
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !185
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !185
  %72 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %68
  %73 = load i32, ptr %72, align 4, !tbaa !185
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80, !prof !492

75:                                               ; preds = %65
  %76 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %68
  %77 = load i32, ptr %76, align 4, !tbaa !185
  %78 = icmp slt i32 %70, %77
  br i1 %78, label %80, label %79, !prof !493

79:                                               ; preds = %75
  store i32 %64, ptr %72, align 4, !tbaa !185
  br label %80

80:                                               ; preds = %65, %75, %79
  %81 = add nuw nsw i64 %66, 1
  %82 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %59, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !185
  %84 = icmp eq i32 %83, 27
  br i1 %84, label %85, label %65, !prof !494, !llvm.loop !495

85:                                               ; preds = %80, %56
  %86 = trunc i64 %48 to i32
  tail call fastcc void @make_regno_born(i32 noundef %86) #18
  %87 = load i32, ptr %60, align 4, !tbaa !185
  %88 = icmp eq i32 %87, 27
  %89 = load i64, ptr @hard_regs_live, align 8, !tbaa !176
  br i1 %88, label %107, label %90, !prof !375

90:                                               ; preds = %85
  %91 = load ptr, ptr @curr_bb_node, align 8, !tbaa !183
  br label %92

92:                                               ; preds = %90, %102
  %93 = phi i64 [ 0, %90 ], [ %103, %102 ]
  %94 = phi i32 [ %87, %90 ], [ %105, %102 ]
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %91, i64 0, i32 11, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !185
  %98 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %95
  %99 = load i32, ptr %98, align 4, !tbaa !185
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %102, !prof !496

101:                                              ; preds = %92
  store i32 %99, ptr %96, align 4, !tbaa !185
  br label %102

102:                                              ; preds = %92, %101
  %103 = add nuw nsw i64 %93, 1
  %104 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %59, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !185
  %106 = icmp eq i32 %105, 27
  br i1 %106, label %107, label %92, !prof !494, !llvm.loop !497

107:                                              ; preds = %102, %85, %52, %46
  %108 = phi i64 [ %89, %85 ], [ %47, %52 ], [ %47, %46 ], [ %89, %102 ]
  %109 = add nsw i64 %48, 1
  %110 = icmp slt i64 %109, %44
  br i1 %110, label %46, label %111, !prof !489, !llvm.loop !498

111:                                              ; preds = %107, %32, %27, %26, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @single_reg_operand_class(i32 noundef %0) unnamed_addr #0 !prof !499 !PGOFuncName !500 {
  %2 = icmp slt i32 %0, 0
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %13, label %6, !prof !501

6:                                                ; preds = %1
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !183
  %10 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !183
  %12 = tail call fastcc i32 @single_reg_class(ptr noundef %9, ptr noundef %11) #18
  br label %13

13:                                               ; preds = %1, %6
  %14 = phi i32 [ %12, %6 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !502 !PGOFuncName !503 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !396

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #19
  %9 = load ptr, ptr %5, align 8, !tbaa !183
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !397
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_costs(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !502 !PGOFuncName !504 {
  %3 = load ptr, ptr %0, align 8, !tbaa !183
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14, !prof !505

5:                                                ; preds = %2
  %6 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #19
  store ptr %6, ptr %0, align 8, !tbaa !183
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !185
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14, !prof !506

11:                                               ; preds = %5
  %12 = zext nneg i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %13, i1 false), !tbaa !185
  br label %14

14:                                               ; preds = %11, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @single_reg_class(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !507 !PGOFuncName !508 {
  br label %3

3:                                                ; preds = %111, %2
  %4 = phi ptr [ %0, %2 ], [ %115, %111 ]
  %5 = phi i32 [ 0, %2 ], [ %112, %111 ]
  %6 = phi i32 [ 0, %2 ], [ %113, %111 ]
  %7 = load i8, ptr %4, align 1, !tbaa !184
  %8 = sext i8 %7 to i64
  switch i8 %7, label %10 [
    i8 0, label %116
    i8 35, label %111
    i8 44, label %9
  ], !prof !509

9:                                                ; preds = %3
  br label %111

10:                                               ; preds = %3
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %12, label %111, !prof !510

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
  ], !prof !511

13:                                               ; preds = %12
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !185
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %116, label %111, !prof !512

20:                                               ; preds = %12
  %21 = load i32, ptr %1, align 8
  %22 = trunc i32 %21 to i16
  switch i16 %22, label %111 [
    i16 30, label %116
    i16 32, label %23
  ], !prof !513

23:                                               ; preds = %20
  %24 = and i32 %21, 16711680
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %116, label %111

26:                                               ; preds = %12
  %27 = load i32, ptr %1, align 8
  %28 = and i32 %27, 65535
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !185
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %111, !prof !514

33:                                               ; preds = %26
  %34 = trunc i32 %27 to i16
  switch i16 %34, label %116 [
    i16 30, label %111
    i16 32, label %35
  ]

35:                                               ; preds = %33
  %36 = and i32 %27, 16711680
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %111, label %116

38:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12
  %39 = load i32, ptr %1, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %111, !prof !515

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !184
  %45 = tail call i32 @lookup_constraint(ptr noundef nonnull %4) #19
  %46 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %44, i32 noundef %45) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %111, label %116, !prof !516

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
  %56 = load i8, ptr %55, align 1, !tbaa !184
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
  br i1 %67, label %71, label %68, !prof !517

68:                                               ; preds = %62, %58, %66
  %69 = tail call i32 @lookup_constraint(ptr noundef nonnull %4) #19
  %70 = tail call i32 @regclass_for_constraint(i32 noundef %69) #19
  br label %71

71:                                               ; preds = %66, %68
  %72 = phi i32 [ %70, %68 ], [ 13, %66 ]
  %73 = icmp eq i32 %6, 0
  %74 = icmp eq i32 %72, %6
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %76, label %116, !prof !518

76:                                               ; preds = %71
  %77 = zext i32 %72 to i64
  %78 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !185
  %80 = load i32, ptr %1, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %77, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !185
  %86 = icmp sgt i32 %79, %85
  br i1 %86, label %116, label %111, !prof !519

87:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %88 = add nuw nsw i64 %8, 4294967248
  %89 = and i64 %88, 4294967295
  %90 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !183
  %92 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %89
  %93 = load ptr, ptr %92, align 8, !tbaa !183
  %94 = tail call fastcc i32 @single_reg_class(ptr noundef %91, ptr noundef %93) #18
  %95 = icmp eq i32 %6, 0
  br i1 %95, label %98, label %96, !prof !520

96:                                               ; preds = %87
  %97 = icmp eq i32 %94, %6
  br i1 %97, label %100, label %116, !prof !521

98:                                               ; preds = %87
  %99 = icmp eq i32 %94, 0
  br i1 %99, label %116, label %100, !prof !522

100:                                              ; preds = %96, %98
  %101 = zext i32 %94 to i64
  %102 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !185
  %104 = load i32, ptr %1, align 8
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %101, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !185
  %110 = icmp sgt i32 %103, %109
  br i1 %110, label %116, label %111, !prof !523

111:                                              ; preds = %100, %76, %51, %48, %38, %42, %26, %35, %33, %23, %20, %13, %3, %10, %12, %12, %12, %12, %12, %12, %12, %12, %12, %9
  %112 = phi i32 [ 0, %9 ], [ 1, %10 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 1, %3 ], [ 0, %13 ], [ 0, %20 ], [ 0, %23 ], [ 0, %33 ], [ 0, %35 ], [ 0, %26 ], [ 0, %42 ], [ 0, %38 ], [ 0, %48 ], [ 0, %51 ], [ 0, %76 ], [ 0, %100 ]
  %113 = phi i32 [ %6, %9 ], [ %6, %10 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %3 ], [ %6, %13 ], [ %6, %20 ], [ %6, %23 ], [ %6, %33 ], [ %6, %35 ], [ %6, %26 ], [ %6, %42 ], [ %6, %38 ], [ %6, %48 ], [ %6, %51 ], [ %72, %76 ], [ %94, %100 ]
  %114 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %7) #18
  %115 = getelementptr inbounds i8, ptr %4, i64 %114
  br label %3, !llvm.loop !524

116:                                              ; preds = %71, %3, %12, %96, %98, %100, %76, %62, %51, %48, %42, %35, %33, %23, %20, %13
  %117 = phi i32 [ 0, %13 ], [ 0, %20 ], [ 0, %23 ], [ 0, %33 ], [ 0, %35 ], [ 0, %42 ], [ 0, %48 ], [ 0, %51 ], [ 0, %62 ], [ 0, %76 ], [ 0, %100 ], [ 0, %98 ], [ 0, %96 ], [ 0, %12 ], [ %6, %3 ], [ 0, %71 ]
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
define internal fastcc void @mark_reg_dead(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !525 !PGOFuncName !526 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %6, label %5, !prof !527

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 327, ptr noundef nonnull @.str.5) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %8 = icmp sgt i32 %7, 52
  %9 = zext nneg i32 %7 to i64
  br i1 %8, label %10, label %27, !prof !528

10:                                               ; preds = %6
  %11 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !183
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !183
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15, !prof !529

15:                                               ; preds = %10
  %16 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  %17 = load i32, ptr %13, align 8, !tbaa !223
  %18 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %16, i32 noundef %17) #18, !range !198
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25, !prof !529

20:                                               ; preds = %15
  %21 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !183
  %22 = load i32, ptr %13, align 8, !tbaa !223
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 0, ptr %24, align 4, !tbaa !185
  br label %124

25:                                               ; preds = %15
  tail call fastcc void @clear_allocno_live(ptr noundef nonnull %13) #18
  br label %26

26:                                               ; preds = %25, %10
  tail call fastcc void @make_regno_dead(i32 noundef %7) #18
  br label %124

27:                                               ; preds = %6
  %28 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !176
  %29 = shl nuw i64 1, %9
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %124, !prof !530

32:                                               ; preds = %27
  %33 = sext i32 %7 to i64
  %34 = load i32, ptr %0, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %33, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !184
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %124, label %41, !prof !531

41:                                               ; preds = %32
  %42 = zext i8 %39 to i32
  %43 = add nsw i32 %7, %42
  %44 = sext i32 %43 to i64
  %45 = load i64, ptr @hard_regs_live, align 8, !tbaa !176
  br label %46

46:                                               ; preds = %41, %120
  %47 = phi i64 [ %45, %41 ], [ %121, %120 ]
  %48 = phi i64 [ %33, %41 ], [ %122, %120 ]
  %49 = shl nuw i64 1, %48
  %50 = and i64 %47, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %120, label %52, !prof !532

52:                                               ; preds = %46
  %53 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %48
  %54 = load i32, ptr %53, align 4, !tbaa !185
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %55, i64 0
  %57 = load i32, ptr %56, align 4, !tbaa !185
  %58 = icmp eq i32 %57, 27
  br i1 %58, label %117, label %59, !prof !531

59:                                               ; preds = %52, %75
  %60 = phi i64 [ %77, %75 ], [ 0, %52 ]
  %61 = phi i32 [ %79, %75 ], [ %57, %52 ]
  %62 = phi i8 [ %76, %75 ], [ 0, %52 ]
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !185
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %64, align 4, !tbaa !185
  %67 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %63
  %68 = load i32, ptr %67, align 4, !tbaa !185
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %75, !prof !533

70:                                               ; preds = %59
  %71 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %63
  %72 = load i32, ptr %71, align 4, !tbaa !185
  %73 = icmp sgt i32 %66, %72
  %74 = select i1 %73, i8 %62, i8 1, !prof !534
  br label %75

75:                                               ; preds = %70, %59
  %76 = phi i8 [ %62, %59 ], [ %74, %70 ]
  %77 = add nuw nsw i64 %60, 1
  %78 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %55, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !185
  %80 = icmp eq i32 %79, 27
  br i1 %80, label %81, label %59, !prof !535, !llvm.loop !536

81:                                               ; preds = %75
  %82 = icmp eq i8 %76, 0
  br i1 %82, label %117, label %83, !prof !537

83:                                               ; preds = %81
  %84 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  tail call fastcc void @sparseset_iter_init(ptr noundef %84) #18
  %85 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %84) #18, !range !198
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %90, !prof !538

87:                                               ; preds = %90, %83
  %88 = load i32, ptr %56, align 4, !tbaa !185
  %89 = icmp eq i32 %88, 27
  br i1 %89, label %117, label %98, !prof !538

90:                                               ; preds = %83, %90
  %91 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %84) #18
  %92 = load ptr, ptr @ira_allocnos, align 8, !tbaa !183
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !183
  tail call fastcc void @update_allocno_pressure_excess_length(ptr noundef %95) #18
  tail call fastcc void @sparseset_iter_next(ptr noundef %84) #18
  %96 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %84) #18, !range !198
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %87, label %90, !prof !539, !llvm.loop !540

98:                                               ; preds = %87, %112
  %99 = phi i64 [ %113, %112 ], [ 0, %87 ]
  %100 = phi i32 [ %115, %112 ], [ %88, %87 ]
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !185
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %105, label %112, !prof !541

105:                                              ; preds = %98
  %106 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %101
  %107 = load i32, ptr %106, align 4, !tbaa !185
  %108 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %101
  %109 = load i32, ptr %108, align 4, !tbaa !185
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %112, label %111, !prof !542

111:                                              ; preds = %105
  store i32 -1, ptr %102, align 4, !tbaa !185
  br label %112

112:                                              ; preds = %98, %105, %111
  %113 = add nuw nsw i64 %99, 1
  %114 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %55, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !185
  %116 = icmp eq i32 %115, 27
  br i1 %116, label %117, label %98, !prof !543, !llvm.loop !544

117:                                              ; preds = %112, %52, %87, %81
  %118 = trunc i64 %48 to i32
  tail call fastcc void @make_regno_dead(i32 noundef %118) #18
  %119 = load i64, ptr @hard_regs_live, align 8, !tbaa !176
  br label %120

120:                                              ; preds = %117, %46
  %121 = phi i64 [ %119, %117 ], [ %47, %46 ]
  %122 = add nsw i64 %48, 1
  %123 = icmp slt i64 %122, %44
  br i1 %123, label %46, label %124, !prof !531, !llvm.loop !545

124:                                              ; preds = %120, %32, %27, %26, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_allocno_live(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !546 !PGOFuncName !547 {
  %2 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !183
  %3 = load i32, ptr %0, align 8, !tbaa !223
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %2, i64 %4
  store i32 0, ptr %5, align 4, !tbaa !185
  %6 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  %7 = load i32, ptr %0, align 8, !tbaa !223
  %8 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %6, i32 noundef %7) #18, !range !198
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12, !prof !529

10:                                               ; preds = %1
  %11 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  br label %85

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !364
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %15, i64 0
  %17 = load i32, ptr %16, align 4, !tbaa !185
  %18 = icmp eq i32 %17, 27
  br i1 %18, label %19, label %21, !prof !548

19:                                               ; preds = %12
  %20 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  br label %85

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !366
  %24 = zext i32 %23 to i64
  br label %25

25:                                               ; preds = %21, %43
  %26 = phi i64 [ 0, %21 ], [ %45, %43 ]
  %27 = phi i32 [ %17, %21 ], [ %47, %43 ]
  %28 = phi i8 [ 0, %21 ], [ %44, %43 ]
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %29, i64 %24
  %31 = load i32, ptr %30, align 4, !tbaa !185
  %32 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %29
  %33 = load i32, ptr %32, align 4, !tbaa !185
  %34 = sub nsw i32 %33, %31
  store i32 %34, ptr %32, align 4, !tbaa !185
  %35 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %29
  %36 = load i32, ptr %35, align 4, !tbaa !185
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %43, !prof !549

38:                                               ; preds = %25
  %39 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %29
  %40 = load i32, ptr %39, align 4, !tbaa !185
  %41 = icmp sgt i32 %34, %40
  %42 = select i1 %41, i8 %28, i8 1, !prof !550
  br label %43

43:                                               ; preds = %38, %25
  %44 = phi i8 [ %28, %25 ], [ %42, %38 ]
  %45 = add nuw nsw i64 %26, 1
  %46 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %15, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !185
  %48 = icmp eq i32 %47, 27
  br i1 %48, label %49, label %25, !prof !551, !llvm.loop !552

49:                                               ; preds = %43
  %50 = icmp eq i8 %44, 0
  %51 = load ptr, ptr @allocnos_live, align 8, !tbaa !183
  br i1 %50, label %85, label %52, !prof !553

52:                                               ; preds = %49
  tail call fastcc void @sparseset_iter_init(ptr noundef %51) #18
  %53 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %51) #18, !range !198
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58, !prof !554

55:                                               ; preds = %58, %52
  %56 = load i32, ptr %16, align 4, !tbaa !185
  %57 = icmp eq i32 %56, 27
  br i1 %57, label %85, label %66, !prof !554

58:                                               ; preds = %52, %58
  %59 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %51) #18
  %60 = load ptr, ptr @ira_allocnos, align 8, !tbaa !183
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !183
  tail call fastcc void @update_allocno_pressure_excess_length(ptr noundef %63) #18
  tail call fastcc void @sparseset_iter_next(ptr noundef %51) #18
  %64 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %51) #18, !range !198
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %55, label %58, !prof !555, !llvm.loop !556

66:                                               ; preds = %55, %80
  %67 = phi i64 [ %81, %80 ], [ 0, %55 ]
  %68 = phi i32 [ %83, %80 ], [ %56, %55 ]
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !185
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %80, !prof !557

73:                                               ; preds = %66
  %74 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %69
  %75 = load i32, ptr %74, align 4, !tbaa !185
  %76 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %69
  %77 = load i32, ptr %76, align 4, !tbaa !185
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %80, label %79, !prof !558

79:                                               ; preds = %73
  store i32 -1, ptr %70, align 4, !tbaa !185
  br label %80

80:                                               ; preds = %66, %73, %79
  %81 = add nuw nsw i64 %67, 1
  %82 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %15, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !185
  %84 = icmp eq i32 %83, 27
  br i1 %84, label %85, label %66, !prof !559, !llvm.loop !560

85:                                               ; preds = %80, %19, %10, %55, %49
  %86 = phi ptr [ %11, %10 ], [ %51, %55 ], [ %51, %49 ], [ %20, %19 ], [ %51, %80 ]
  %87 = load i32, ptr %0, align 8, !tbaa !223
  tail call void @sparseset_clear_bit(ptr noundef %86, i32 noundef %87) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_allocno_pressure_excess_length(ptr nocapture noundef %0) unnamed_addr #7 !prof !561 !PGOFuncName !562 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !364
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %4, i64 0
  %6 = load i32, ptr %5, align 4, !tbaa !185
  %7 = icmp eq i32 %6, 27
  br i1 %7, label %33, label %8, !prof !563

8:                                                ; preds = %1
  %9 = load i32, ptr @curr_point, align 4
  br label %10

10:                                               ; preds = %8, %28
  %11 = phi i64 [ 0, %8 ], [ %29, %28 ]
  %12 = phi i32 [ %6, %8 ], [ %31, %28 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !185
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %28, label %17, !prof !564

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 20
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 14
  %20 = load ptr, ptr %18, align 8, !tbaa !226
  %21 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !203
  %23 = tail call i32 @llvm.smax.i32(i32 %15, i32 %22)
  %24 = load i32, ptr %19, align 4, !tbaa !565
  %25 = sub i32 %9, %23
  %26 = add i32 %25, 1
  %27 = add nsw i32 %26, %24
  store i32 %27, ptr %19, align 4, !tbaa !565
  br label %28

28:                                               ; preds = %10, %17
  %29 = add nuw nsw i64 %11, 1
  %30 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %4, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !185
  %32 = icmp eq i32 %31, 27
  br i1 %32, label %33, label %10, !prof !566, !llvm.loop !567

33:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: optsize
declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_and_make_def_conflict(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !568 !PGOFuncName !569 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %121, label %8, !prof !570

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %16, !prof !570

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !184
  %15 = load i32, ptr %14, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %15, %12 ], [ %9, %8 ]
  %18 = phi ptr [ %14, %12 ], [ %6, %8 ]
  %19 = and i32 %17, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %121, !prof !571

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #18
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %121, label %24, !prof !572

24:                                               ; preds = %21
  %25 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !183
  %26 = zext i32 %22 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !183
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !364
  %31 = tail call i32 @reg_classes_intersect_p(i32 noundef %30, i32 noundef %2) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %121, label %33, !prof !572

33:                                               ; preds = %24
  %34 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !180
  %35 = icmp sgt i8 %34, 0
  br i1 %35, label %36, label %121, !prof !573

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
  br i1 %44, label %114, label %45, !prof !574

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %41
  %47 = load i32, ptr %46, align 4, !tbaa !185
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %114, label %49, !prof !575

49:                                               ; preds = %45
  %50 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 5
  %51 = load i8, ptr %50, align 8
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %53, label %56, !prof !576

53:                                               ; preds = %49
  %54 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !438
  br label %56

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %55, %53 ], [ 26, %49 ]
  %58 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !433
  %59 = icmp sgt i8 %58, 0
  br i1 %59, label %60, label %95, !prof !577

60:                                               ; preds = %56
  %61 = zext nneg i8 %58 to i64
  %62 = add nsw i64 %42, -1
  %63 = icmp slt i64 %41, %62
  %64 = icmp eq i64 %41, 0
  %65 = add nsw i64 %41, -1
  %66 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %65
  br label %67

67:                                               ; preds = %60, %92
  %68 = phi i64 [ 0, %60 ], [ %93, %92 ]
  %69 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %68, i32 3
  %70 = load i32, ptr %69, align 16, !tbaa !440
  %71 = icmp eq i32 %70, %1
  br i1 %71, label %114, label %72, !prof !578

72:                                               ; preds = %67
  br i1 %63, label %73, label %83, !prof !579

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %41
  %75 = load ptr, ptr %74, align 8, !tbaa !183
  %76 = load i8, ptr %75, align 1, !tbaa !184
  %77 = icmp eq i8 %76, 37
  br i1 %77, label %78, label %83, !prof !572

78:                                               ; preds = %73
  %79 = add nuw nsw i64 %41, 1
  %80 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %79, i64 %68, i32 3
  %81 = load i32, ptr %80, align 16, !tbaa !440
  %82 = icmp eq i32 %81, %1
  br i1 %82, label %114, label %83

83:                                               ; preds = %78, %73, %72
  br i1 %64, label %92, label %84, !prof !580

84:                                               ; preds = %83
  %85 = load ptr, ptr %66, align 8, !tbaa !183
  %86 = load i8, ptr %85, align 1, !tbaa !184
  %87 = icmp eq i8 %86, 37
  br i1 %87, label %88, label %92, !prof !580

88:                                               ; preds = %84
  %89 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %65, i64 %68, i32 3
  %90 = load i32, ptr %89, align 16, !tbaa !440
  %91 = icmp eq i32 %90, %1
  br i1 %91, label %114, label %92

92:                                               ; preds = %83, %84, %88
  %93 = add nuw nsw i64 %68, 1
  %94 = icmp eq i64 %93, %61
  br i1 %94, label %95, label %67, !prof !581, !llvm.loop !582

95:                                               ; preds = %92, %56
  %96 = trunc i64 %41 to i32
  %97 = tail call fastcc zeroext i8 @check_and_make_def_use_conflict(ptr noundef nonnull %18, i32 noundef %2, i32 noundef %96, i32 noundef %57, i8 noundef zeroext %43) #18, !range !198
  %98 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 3
  %99 = load i32, ptr %98, align 16, !tbaa !440
  %100 = icmp slt i32 %99, 0
  %101 = icmp eq i32 %99, %1
  %102 = or i1 %100, %101
  br i1 %102, label %114, label %103, !prof !583

103:                                              ; preds = %95
  %104 = zext nneg i32 %99 to i64
  %105 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %104, i64 %38, i32 5
  %106 = load i8, ptr %105, align 8
  %107 = icmp sgt i8 %106, -1
  br i1 %107, label %108, label %111, !prof !584

108:                                              ; preds = %103
  %109 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %104, i64 %38, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !438
  br label %111

111:                                              ; preds = %103, %108
  %112 = phi i32 [ %110, %108 ], [ 26, %103 ]
  %113 = tail call fastcc zeroext i8 @check_and_make_def_use_conflict(ptr noundef nonnull %18, i32 noundef %2, i32 noundef %96, i32 noundef %112, i8 noundef zeroext %97) #18, !range !198
  br label %114

114:                                              ; preds = %88, %78, %67, %95, %111, %40, %45
  %115 = phi i8 [ %43, %45 ], [ %43, %40 ], [ %113, %111 ], [ %97, %95 ], [ %43, %67 ], [ %43, %78 ], [ %43, %88 ]
  %116 = add nuw nsw i64 %41, 1
  %117 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !180
  %118 = sext i8 %117 to i64
  %119 = sext i8 %117 to i64
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %40, label %121, !prof !585, !llvm.loop !586

121:                                              ; preds = %114, %33, %24, %16, %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_and_make_def_use_conflict(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !587 !PGOFuncName !588 {
  %6 = tail call i32 @reg_classes_intersect_p(i32 noundef %1, i32 noundef %3) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8, !prof !589

8:                                                ; preds = %5
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !183
  %12 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %11, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %4) #18, !range !198
  %13 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !180
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %17, label %28, !prof !572

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !183
  %20 = load i8, ptr %19, align 1, !tbaa !184
  %21 = icmp eq i8 %20, 37
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = add nsw i32 %2, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !183
  %27 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %26, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %12) #18, !range !198
  br label %28

28:                                               ; preds = %22, %17, %8
  %29 = phi i8 [ %27, %22 ], [ %12, %17 ], [ %12, %8 ]
  %30 = icmp sgt i32 %2, 0
  br i1 %30, label %31, label %42, !prof !590

31:                                               ; preds = %28
  %32 = add nsw i32 %2, -1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !183
  %36 = load i8, ptr %35, align 1, !tbaa !184
  %37 = icmp eq i8 %36, 37
  br i1 %37, label %38, label %42, !prof !572

38:                                               ; preds = %31
  %39 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !183
  %41 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %40, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %29) #18, !range !198
  br label %42

42:                                               ; preds = %28, %31, %38, %5
  %43 = phi i8 [ %4, %5 ], [ %41, %38 ], [ %29, %31 ], [ %29, %28 ]
  ret i8 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @make_pseudo_conflict(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !591 !PGOFuncName !592 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %12, !prof !593

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ %5, %4 ]
  %14 = phi ptr [ %10, %8 ], [ %0, %4 ]
  %15 = and i32 %13, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %35, !prof !594

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #18
  %19 = icmp ult i32 %18, 53
  br i1 %19, label %35, label %20, !prof !595

20:                                               ; preds = %17
  %21 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !183
  %22 = zext i32 %18 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !183
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !364
  %27 = tail call i32 @reg_classes_intersect_p(i32 noundef %1, i32 noundef %26) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29, !prof !595

29:                                               ; preds = %20
  %30 = icmp eq i8 %3, 0
  br i1 %30, label %34, label %31, !prof !595

31:                                               ; preds = %29
  %32 = load i32, ptr @curr_point, align 4, !tbaa !185
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @curr_point, align 4, !tbaa !185
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !596 !PGOFuncName !597 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !598 !PGOFuncName !599 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !198
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !600

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !183
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !601 !PGOFuncName !602 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !603

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !604

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.5) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !605
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !605
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !598 !PGOFuncName !607 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !608

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !601 !PGOFuncName !609 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !603

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !610 !PGOFuncName !611 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !612

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !613
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !615 !PGOFuncName !616 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !617

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.5) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !183
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !601 !PGOFuncName !618 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_compress_allocno_live_ranges() local_unnamed_addr #0 !prof !619 {
  tail call fastcc void @remove_some_program_points_and_update_live_ranges() #18
  tail call void @ira_rebuild_start_finish_chains() #18
  %1 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !185
  %2 = icmp sgt i32 %1, 2
  %3 = load ptr, ptr @ira_dump_file, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %9, !prof !620

6:                                                ; preds = %0
  %7 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 30, i64 1, ptr nonnull %3)
  %8 = load ptr, ptr @ira_dump_file, align 8, !tbaa !183
  tail call fastcc void @print_live_ranges(ptr noundef %8) #18
  br label %9

9:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_some_program_points_and_update_live_ranges() unnamed_addr #0 !prof !619 !PGOFuncName !621 {
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
  %6 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !198
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %11, !prof !622

8:                                                ; preds = %16, %11
  %9 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !198
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %27, label %11, !prof !623, !llvm.loop !624

11:                                               ; preds = %0, %8
  %12 = load ptr, ptr %2, align 8, !tbaa !183
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !183
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %16, !prof !625

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %25, %16 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !203
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %19) #19
  %21 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !206
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %22) #19
  %24 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !183
  %26 = icmp eq ptr %25, null
  br i1 %26, label %8, label %16, !prof !626, !llvm.loop !627

27:                                               ; preds = %8, %0
  %28 = load i32, ptr @ira_max_point, align 4, !tbaa !185
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr @ira_allocate(i64 noundef %30) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 0, ptr noundef nonnull %1) #18
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %1) #18, !range !198
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34, !prof !622

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ 0, %27 ]
  %36 = add nuw nsw i32 %35, 1
  %37 = load i32, ptr %1, align 4, !tbaa !185
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %31, i64 %38
  store i32 %35, ptr %39, align 4, !tbaa !185
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %1) #18
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %1) #18, !range !198
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %34, !prof !628, !llvm.loop !629

42:                                               ; preds = %34, %27
  %43 = phi i32 [ 0, %27 ], [ %36, %34 ]
  tail call void @ira_free_bitmap(ptr noundef %5) #19
  %44 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !185
  %45 = icmp sgt i32 %44, 1
  %46 = load ptr, ptr @ira_dump_file, align 8
  %47 = icmp ne ptr %46, null
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %54, !prof !620

49:                                               ; preds = %42
  %50 = load i32, ptr @ira_max_point, align 4, !tbaa !185
  %51 = mul nsw i32 %43, 100
  %52 = sdiv i32 %51, %50
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.9, i32 noundef %50, i32 noundef %43, i32 noundef %52) #18
  br label %54

54:                                               ; preds = %49, %42
  store i32 %43, ptr @ira_max_point, align 4, !tbaa !185
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #18
  %55 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !198
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %80, label %60, !prof !622

57:                                               ; preds = %65, %60
  %58 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !198
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %80, label %60, !prof !623, !llvm.loop !630

60:                                               ; preds = %54, %57
  %61 = load ptr, ptr %2, align 8, !tbaa !183
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 20
  %63 = load ptr, ptr %62, align 8, !tbaa !183
  %64 = icmp eq ptr %63, null
  br i1 %64, label %57, label %65, !prof !625

65:                                               ; preds = %60, %65
  %66 = phi ptr [ %78, %65 ], [ %63, %60 ]
  %67 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !203
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %31, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !185
  store i32 %71, ptr %67, align 8, !tbaa !203
  %72 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %66, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !206
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %31, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !185
  store i32 %76, ptr %72, align 4, !tbaa !206
  %77 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %66, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !183
  %79 = icmp eq ptr %78, null
  br i1 %79, label %57, label %65, !prof !626, !llvm.loop !631

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
define dso_local void @ira_finish_allocno_live_ranges() local_unnamed_addr #0 !prof !229 {
  %1 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !183
  tail call void @ira_free(ptr noundef %1) #19
  %2 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !183
  tail call void @ira_free(ptr noundef %2) #19
  ret void
}

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!174}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!36 = !{ptr @ira_rebuild_start_finish_chains, ptr @ira_free, i64 21484}
!37 = !{ptr @ira_rebuild_start_finish_chains, ptr @create_start_finish_chains, i64 10742}
!38 = !{ptr @create_start_finish_chains, ptr @ira_allocate, i64 34788}
!39 = !{ptr @create_start_finish_chains, ptr @ira_allocno_iter_init, i64 17394}
!40 = !{ptr @create_start_finish_chains, ptr @ira_allocno_iter_cond, i64 1520514}
!41 = !{ptr @ira_create_allocno_live_ranges, ptr @sparseset_alloc, i64 6652}
!42 = !{ptr @ira_create_allocno_live_ranges, ptr @ira_allocate, i64 6652}
!43 = !{ptr @ira_create_allocno_live_ranges, ptr @ira_traverse_loop_tree, i64 6652}
!44 = !{ptr @ira_create_allocno_live_ranges, ptr @create_start_finish_chains, i64 6652}
!45 = !{ptr @ira_create_allocno_live_ranges, ptr @print_live_ranges, i64 1}
!46 = !{ptr @ira_create_allocno_live_ranges, ptr @ira_free, i64 6652}
!47 = !{ptr @ira_create_allocno_live_ranges, ptr @free, i64 6652}
!48 = !{ptr @process_bb_node_lives, ptr @df_lr_get_bb_info, i64 257173}
!49 = !{ptr @process_bb_node_lives, ptr @sparseset_clear, i64 257173}
!50 = !{ptr @process_bb_node_lives, ptr @reg_set_to_hard_reg_set, i64 257173}
!51 = !{ptr @process_bb_node_lives, ptr @bmp_iter_set_init, i64 257173}
!52 = !{ptr @process_bb_node_lives, ptr @bmp_iter_set, i64 2068557}
!53 = !{ptr @process_bb_node_lives, ptr @set_allocno_live, i64 1811383}
!54 = !{ptr @process_bb_node_lives, ptr @make_regno_born, i64 1811423}
!55 = !{ptr @process_bb_node_lives, ptr @bmp_iter_next, i64 1811384}
!56 = !{ptr @process_bb_node_lives, ptr @fprintf, i64 1}
!57 = !{ptr @process_bb_node_lives, ptr @mark_ref_live, i64 1846333}
!58 = !{ptr @process_bb_node_lives, ptr @multiple_sets, i64 74525}
!59 = !{ptr @process_bb_node_lives, ptr @reg_overlap_mentioned_p, i64 13765}
!60 = !{ptr @process_bb_node_lives, ptr @extract_insn, i64 1071359}
!61 = !{ptr @process_bb_node_lives, ptr @preprocess_constraints, i64 1071359}
!62 = !{ptr @process_bb_node_lives, ptr @process_single_reg_class_operands, i64 2142718}
!63 = !{ptr @process_bb_node_lives, ptr @mark_ref_dead, i64 677086}
!64 = !{ptr @process_bb_node_lives, ptr @sparseset_iter_init, i64 349308}
!65 = !{ptr @process_bb_node_lives, ptr @sparseset_iter_p, i64 2607840}
!66 = !{ptr @process_bb_node_lives, ptr @sparseset_iter_elm, i64 2258532}
!67 = !{ptr @process_bb_node_lives, ptr @find_reg_note, i64 512226}
!68 = !{ptr @process_bb_node_lives, ptr @can_throw_internal, i64 512227}
!69 = !{ptr @process_bb_node_lives, ptr @sparseset_iter_next, i64 2258532}
!70 = !{ptr @process_bb_node_lives, ptr @make_early_clobber_and_input_conflicts, i64 1071359}
!71 = !{ptr @process_bb_node_lives, ptr @mark_hard_reg_early_clobbers, i64 1142755}
!72 = !{ptr @process_bb_node_lives, ptr @rhs_regno, i64 91607}
!73 = !{ptr @process_bb_node_lives, ptr @bb_has_eh_pred, i64 257173}
!74 = !{ptr @process_bb_node_lives, ptr @bb_has_abnormal_pred, i64 257173}
!75 = !{ptr @process_bb_node_lives, ptr @make_regno_dead, i64 1746285}
!76 = !{ptr @set_allocno_live, ptr @sparseset_bit_p, i64 2108978}
!77 = !{ptr @set_allocno_live, ptr @sparseset_set_bit, i64 2108977}
!78 = !{ptr @make_regno_born, ptr @sparseset_iter_init, i64 88300}
!79 = !{ptr @make_regno_born, ptr @sparseset_iter_p, i64 710035}
!80 = !{ptr @make_regno_born, ptr @sparseset_iter_elm, i64 621735}
!81 = !{ptr @make_regno_born, ptr @sparseset_iter_next, i64 621735}
!82 = !{ptr @make_regno_born, ptr @ira_create_allocno_live_range, i64 528926}
!83 = !{ptr @mark_ref_live, ptr @mark_reg_live, i64 1932633}
!84 = !{ptr @process_single_reg_class_operands, ptr @single_reg_operand_class, i64 2230261}
!85 = !{ptr @process_single_reg_class_operands, ptr @rhs_regno, i64 4332}
!86 = !{ptr @process_single_reg_class_operands, ptr @reg_classes_intersect_p, i64 4323}
!87 = !{ptr @process_single_reg_class_operands, ptr @ira_get_register_move_cost, i64 4322}
!88 = !{ptr @process_single_reg_class_operands, ptr @ira_allocate_and_set_costs, i64 4322}
!89 = !{ptr @process_single_reg_class_operands, ptr @sparseset_iter_init, i64 4487}
!90 = !{ptr @process_single_reg_class_operands, ptr @sparseset_iter_p, i64 50238}
!91 = !{ptr @process_single_reg_class_operands, ptr @sparseset_iter_elm, i64 45751}
!92 = !{ptr @process_single_reg_class_operands, ptr @sparseset_iter_next, i64 45751}
!93 = !{ptr @mark_ref_dead, ptr @mark_reg_dead, i64 754338}
!94 = !{ptr @make_early_clobber_and_input_conflicts, ptr @check_and_make_def_conflict, i64 502}
!95 = !{ptr @mark_hard_reg_early_clobbers, ptr @rhs_regno, i64 144044}
!96 = !{ptr @mark_hard_reg_early_clobbers, ptr @mark_ref_live, i64 72014}
!97 = !{ptr @mark_hard_reg_early_clobbers, ptr @mark_ref_dead, i64 72014}
!98 = !{ptr @bb_has_eh_pred, ptr @ei_start_1, i64 257174}
!99 = !{ptr @bb_has_eh_pred, ptr @ei_cond, i64 670558}
!100 = !{ptr @bb_has_eh_pred, ptr @ei_next, i64 413384}
!101 = !{ptr @bb_has_abnormal_pred, ptr @ei_start_1, i64 257174}
!102 = !{ptr @bb_has_abnormal_pred, ptr @ei_cond, i64 670558}
!103 = !{ptr @bb_has_abnormal_pred, ptr @ei_next, i64 413384}
!104 = !{ptr @make_regno_dead, ptr @update_allocno_pressure_excess_length, i64 2108976}
!105 = !{ptr @sparseset_bit_p, ptr @fancy_abort, i64 1}
!106 = !{ptr @sparseset_set_bit, ptr @sparseset_bit_p, i64 2108978}
!107 = !{ptr @sparseset_set_bit, ptr @sparseset_insert_bit, i64 2108977}
!108 = !{ptr @mark_reg_live, ptr @fancy_abort, i64 1}
!109 = !{ptr @mark_reg_live, ptr @rhs_regno, i64 1933371}
!110 = !{ptr @mark_reg_live, ptr @sparseset_bit_p, i64 996131}
!111 = !{ptr @mark_reg_live, ptr @set_allocno_live, i64 297582}
!112 = !{ptr @mark_reg_live, ptr @make_regno_born, i64 385881}
!113 = !{ptr @single_reg_operand_class, ptr @single_reg_class, i64 1629885}
!114 = !{ptr @ira_get_register_move_cost, ptr @ira_init_register_move_cost, i64 1}
!115 = !{ptr @ira_allocate_and_set_costs, ptr @ira_allocate_cost_vector, i64 3648}
!116 = !{ptr @single_reg_class, ptr @lookup_constraint, i64 146260}
!117 = !{ptr @single_reg_class, ptr @insn_const_int_ok_for_constraint, i64 4620}
!118 = !{ptr @single_reg_class, ptr @constraint_satisfied_p, i64 1}
!119 = !{ptr @single_reg_class, ptr @regclass_for_constraint, i64 141639}
!120 = !{ptr @single_reg_class, ptr @single_reg_class, i64 64683}
!121 = !{ptr @single_reg_class, ptr @insn_constraint_len, i64 791952}
!122 = !{ptr @mark_reg_dead, ptr @fancy_abort, i64 1}
!123 = !{ptr @mark_reg_dead, ptr @rhs_regno, i64 755078}
!124 = !{ptr @mark_reg_dead, ptr @sparseset_bit_p, i64 362680}
!125 = !{ptr @mark_reg_dead, ptr @clear_allocno_live, i64 362679}
!126 = !{ptr @mark_reg_dead, ptr @make_regno_dead, i64 453291}
!127 = !{ptr @mark_reg_dead, ptr @sparseset_iter_init, i64 5209}
!128 = !{ptr @mark_reg_dead, ptr @sparseset_iter_p, i64 35217}
!129 = !{ptr @mark_reg_dead, ptr @sparseset_iter_elm, i64 30008}
!130 = !{ptr @mark_reg_dead, ptr @update_allocno_pressure_excess_length, i64 30008}
!131 = !{ptr @mark_reg_dead, ptr @sparseset_iter_next, i64 30008}
!132 = !{ptr @clear_allocno_live, ptr @sparseset_bit_p, i64 362681}
!133 = !{ptr @clear_allocno_live, ptr @sparseset_iter_init, i64 21441}
!134 = !{ptr @clear_allocno_live, ptr @sparseset_iter_p, i64 171478}
!135 = !{ptr @clear_allocno_live, ptr @sparseset_iter_elm, i64 150037}
!136 = !{ptr @clear_allocno_live, ptr @update_allocno_pressure_excess_length, i64 150037}
!137 = !{ptr @clear_allocno_live, ptr @sparseset_iter_next, i64 150037}
!138 = !{ptr @clear_allocno_live, ptr @sparseset_clear_bit, i64 362681}
!139 = !{ptr @check_and_make_def_conflict, ptr @rhs_regno, i64 424}
!140 = !{ptr @check_and_make_def_conflict, ptr @reg_classes_intersect_p, i64 423}
!141 = !{ptr @check_and_make_def_conflict, ptr @check_and_make_def_use_conflict, i64 1246}
!142 = !{ptr @check_and_make_def_use_conflict, ptr @reg_classes_intersect_p, i64 1262}
!143 = !{ptr @check_and_make_def_use_conflict, ptr @make_pseudo_conflict, i64 427}
!144 = !{ptr @make_pseudo_conflict, ptr @rhs_regno, i64 368}
!145 = !{ptr @make_pseudo_conflict, ptr @reg_classes_intersect_p, i64 367}
!146 = !{ptr @make_pseudo_conflict, ptr @mark_reg_live, i64 732}
!147 = !{ptr @make_pseudo_conflict, ptr @mark_reg_dead, i64 732}
!148 = !{ptr @ei_cond, ptr @ei_end_p, i64 1341120}
!149 = !{ptr @ei_cond, ptr @ei_edge, i64 826772}
!150 = !{ptr @ei_next, ptr @ei_container, i64 1653543}
!151 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 826772}
!152 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!153 = !{ptr @ei_end_p, ptr @ei_container, i64 2682239}
!154 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 1341120}
!155 = !{ptr @ei_edge, ptr @ei_container, i64 1653543}
!156 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 826772}
!157 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!158 = !{ptr @ira_compress_allocno_live_ranges, ptr @remove_some_program_points_and_update_live_ranges, i64 8127}
!159 = !{ptr @ira_compress_allocno_live_ranges, ptr @ira_rebuild_start_finish_chains, i64 8127}
!160 = !{ptr @ira_compress_allocno_live_ranges, ptr @fwrite, i64 1}
!161 = !{ptr @ira_compress_allocno_live_ranges, ptr @print_live_ranges, i64 1}
!162 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_allocate_bitmap, i64 8127}
!163 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_allocno_iter_init, i64 16254}
!164 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_allocno_iter_cond, i64 1151144}
!165 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @bitmap_set_bit, i64 2155698}
!166 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_allocate, i64 8127}
!167 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @bmp_iter_set_init, i64 8127}
!168 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @bmp_iter_set, i64 1254155}
!169 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @bmp_iter_next, i64 1246028}
!170 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_free_bitmap, i64 8127}
!171 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @fprintf, i64 1}
!172 = !{ptr @remove_some_program_points_and_update_live_ranges, ptr @ira_free, i64 8127}
!173 = !{ptr @ira_finish_allocno_live_ranges, ptr @ira_free, i64 13304}
!174 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!175 = !{!"function_entry_count", i64 0}
!176 = !{!177, !177, i64 0}
!177 = !{!"long", !178, i64 0}
!178 = !{!"omnipotent char", !179, i64 0}
!179 = !{!"Simple C/C++ TBAA"}
!180 = !{!181, !178, i64 1086}
!181 = !{!"recog_data", !178, i64 0, !178, i64 240, !178, i64 480, !178, i64 720, !178, i64 840, !178, i64 960, !178, i64 1072, !178, i64 1086, !178, i64 1087, !178, i64 1088, !178, i64 1089, !182, i64 1120}
!182 = !{!"any pointer", !178, i64 0}
!183 = !{!182, !182, i64 0}
!184 = !{!178, !178, i64 0}
!185 = !{!186, !186, i64 0}
!186 = !{!"int", !178, i64 0}
!187 = distinct !{!187, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = distinct !{!189, !188}
!190 = !{!"function_entry_count", i64 2930744}
!191 = !{!"ira-lives.c:rhs_regno"}
!192 = !{!"function_entry_count", i64 791952}
!193 = !{!"ira-lives.c:insn_constraint_len"}
!194 = !{!"branch_weights", i32 1, i32 791953}
!195 = !{!"function_entry_count", i64 10742}
!196 = !{!"function_entry_count", i64 17394}
!197 = !{!"ira-lives.c:create_start_finish_chains"}
!198 = !{i8 0, i8 2}
!199 = !{!"branch_weights", i32 1, i32 17394}
!200 = !{!"branch_weights", i32 17394, i32 1485812}
!201 = distinct !{!201, !188}
!202 = !{!"branch_weights", i32 1, i32 1503205}
!203 = !{!204, !186, i64 8}
!204 = !{!"ira_allocno_live_range", !182, i64 0, !186, i64 8, !186, i64 12, !182, i64 16, !182, i64 24, !182, i64 32}
!205 = !{!204, !182, i64 24}
!206 = !{!204, !186, i64 12}
!207 = !{!204, !182, i64 32}
!208 = !{!"branch_weights", i32 1503205, i32 747487}
!209 = distinct !{!209, !188}
!210 = !{!"function_entry_count", i64 33648}
!211 = !{!"ira-lives.c:ira_allocno_iter_init"}
!212 = !{!213, !186, i64 0}
!213 = !{!"", !186, i64 0}
!214 = !{!"function_entry_count", i64 2671881}
!215 = !{!"ira-lives.c:ira_allocno_iter_cond"}
!216 = !{!"branch_weights", i32 33648, i32 1}
!217 = !{!"branch_weights", i32 935665, i32 2638234}
!218 = !{!"branch_weights", i32 33648, i32 3540250}
!219 = distinct !{!219, !188}
!220 = !{!204, !182, i64 16}
!221 = distinct !{!221, !188}
!222 = !{!"ira-lives.c:print_allocno_live_ranges"}
!223 = !{!224, !186, i64 0}
!224 = !{!"ira_allocno", !186, i64 0, !186, i64 4, !186, i64 8, !186, i64 12, !182, i64 16, !182, i64 24, !182, i64 32, !186, i64 40, !186, i64 44, !186, i64 48, !186, i64 52, !186, i64 56, !186, i64 60, !186, i64 64, !186, i64 68, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96, !182, i64 104, !182, i64 112, !186, i64 120, !186, i64 124, !182, i64 128, !186, i64 136, !186, i64 140, !177, i64 144, !177, i64 152, !186, i64 160, !186, i64 164, !186, i64 168, !186, i64 172, !186, i64 172, !186, i64 172, !186, i64 172, !186, i64 172, !186, i64 172, !186, i64 172, !186, i64 172, !186, i64 173, !186, i64 173, !186, i64 173, !186, i64 173, !182, i64 176, !182, i64 184, !182, i64 192, !182, i64 200, !182, i64 208, !186, i64 216, !186, i64 220, !182, i64 224, !182, i64 232, !186, i64 240}
!225 = !{!224, !186, i64 4}
!226 = !{!224, !182, i64 112}
!227 = !{!"ira-lives.c:print_live_ranges"}
!228 = distinct !{!228, !188}
!229 = !{!"function_entry_count", i64 6652}
!230 = !{!"branch_weights", i32 6653, i32 44269063}
!231 = !{!"function_entry_count", i64 277832}
!232 = !{!"ira-lives.c:process_bb_node_lives"}
!233 = !{!234, !182, i64 0}
!234 = !{!"ira_loop_tree_node", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !186, i64 56, !178, i64 60, !182, i64 64, !178, i64 72, !178, i64 76, !182, i64 184, !182, i64 192, !182, i64 200, !182, i64 208}
!235 = !{!"branch_weights", i32 20659, i32 257175}
!236 = !{!"branch_weights", i32 257174, i32 1}
!237 = !{!"branch_weights", i32 257174, i32 257175}
!238 = distinct !{!238, !188}
!239 = !{!240, !186, i64 80}
!240 = !{!"basic_block_def", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !178, i64 32, !182, i64 48, !182, i64 56, !178, i64 64, !177, i64 72, !186, i64 80, !186, i64 84, !186, i64 88, !186, i64 92, !186, i64 96}
!241 = !{!242, !182, i64 24}
!242 = !{!"df_lr_bb_info", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24}
!243 = !{!"branch_weights", i32 13625496, i32 4728}
!244 = !{!"branch_weights", i32 1, i32 4727}
!245 = !{!"branch_weights", i32 1, i32 4728}
!246 = !{!"branch_weights", i32 4727, i32 1}
!247 = distinct !{!247, !188}
!248 = !{!"branch_weights", i32 257175, i32 13373048}
!249 = distinct !{!249, !188}
!250 = !{!"branch_weights", i32 1, i32 257174}
!251 = !{!"branch_weights", i32 1, i32 1811397}
!252 = !{!"branch_weights", i32 257174, i32 1554223}
!253 = distinct !{!253, !188}
!254 = !{!"branch_weights", i32 257175, i32 1}
!255 = !{!256, !182, i64 8}
!256 = !{!"function", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96, !186, i64 104, !186, i64 108, !186, i64 112, !186, i64 116, !186, i64 120, !186, i64 124, !182, i64 128, !186, i64 136, !186, i64 137, !186, i64 138, !186, i64 138, !186, i64 138, !186, i64 138, !186, i64 138, !186, i64 138, !186, i64 138, !186, i64 139, !186, i64 139, !186, i64 139, !186, i64 139, !186, i64 139, !186, i64 139, !186, i64 139}
!257 = !{!258, !182, i64 0}
!258 = !{!"control_flow_graph", !182, i64 0, !182, i64 8, !182, i64 16, !186, i64 24, !186, i64 28, !186, i64 32, !182, i64 40, !186, i64 48, !178, i64 52, !178, i64 60, !186, i64 68, !186, i64 72}
!259 = !{!240, !177, i64 72}
!260 = !{!240, !186, i64 88}
!261 = !{!"branch_weights", i32 1, i32 162392}
!262 = !{!"branch_weights", i32 1, i32 127}
!263 = !{!264, !182, i64 0}
!264 = !{!"rtl_bb_info", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !186, i64 32}
!265 = !{!"branch_weights", i32 257175, i32 1536489}
!266 = !{!"branch_weights", i32 1048097269, i32 -1816786787}
!267 = !{!"branch_weights", i32 2108, i32 -2017658551}
!268 = !{!234, !182, i64 48}
!269 = !{!234, !182, i64 8}
!270 = !{!271, !186, i64 0}
!271 = !{!"loop", !186, i64 0, !186, i64 4, !182, i64 8, !182, i64 16, !272, i64 24, !186, i64 32, !186, i64 36, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !273, i64 80, !273, i64 96, !178, i64 112, !178, i64 113, !186, i64 116, !182, i64 120, !182, i64 128, !178, i64 136, !182, i64 144}
!272 = !{!"lpt_decision", !186, i64 0, !186, i64 4}
!273 = !{!"", !177, i64 0, !177, i64 8}
!274 = !{!275, !182, i64 248}
!275 = !{!"df", !178, i64 0, !178, i64 64, !182, i64 128, !276, i64 136, !276, i64 176, !182, i64 216, !182, i64 224, !182, i64 232, !186, i64 240, !186, i64 244, !182, i64 248, !186, i64 256, !186, i64 260, !182, i64 264, !182, i64 272, !182, i64 280, !182, i64 288, !182, i64 296, !182, i64 304, !182, i64 312, !182, i64 320, !182, i64 328, !182, i64 336, !186, i64 344, !186, i64 348, !182, i64 352, !186, i64 360, !186, i64 364, !178, i64 365, !178, i64 366}
!276 = !{!"df_ref_info", !182, i64 0, !182, i64 8, !182, i64 16, !186, i64 24, !186, i64 28, !186, i64 32, !186, i64 36}
!277 = !{!278, !182, i64 8}
!278 = !{!"df_insn_info", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !186, i64 40}
!279 = !{!"branch_weights", i32 1, i32 1079805}
!280 = !{!"branch_weights", i32 4271575, i32 618150}
!281 = !{!"branch_weights", i32 64275, i32 4207301}
!282 = !{!"branch_weights", i32 1079805, i32 3809919}
!283 = distinct !{!283, !188}
!284 = !{!"branch_weights", i32 75113, i32 1004694}
!285 = !{!"branch_weights", i32 72778, i32 2336}
!286 = !{!278, !182, i64 16}
!287 = !{!"branch_weights", i32 1, i32 2335}
!288 = !{!289, !186, i64 0}
!289 = !{!"rtvec_def", !186, i64 0, !178, i64 8}
!290 = !{!"branch_weights", i32 4281, i32 1}
!291 = !{!"branch_weights", i32 12465, i32 2522}
!292 = !{!"branch_weights", i32 10097, i32 2369}
!293 = !{!"branch_weights", i32 10705, i32 4281}
!294 = distinct !{!294, !188}
!295 = !{!"branch_weights", i32 2335, i32 4315}
!296 = distinct !{!296, !188}
!297 = distinct !{!297, !188}
!298 = !{!"branch_weights", i32 92861, i32 986946}
!299 = !{!"branch_weights", i32 1, i32 92860}
!300 = !{!"branch_weights", i32 162229, i32 354038}
!301 = !{!224, !186, i64 164}
!302 = !{!224, !186, i64 168}
!303 = !{!"branch_weights", i32 516266, i32 1}
!304 = !{!"branch_weights", i32 516258, i32 9}
!305 = !{!"branch_weights", i32 92860, i32 423406}
!306 = distinct !{!306, !188}
!307 = !{!"branch_weights", i32 1079805, i32 91767}
!308 = distinct !{!308, !188}
!309 = !{!"branch_weights", i32 1007848, i32 71959}
!310 = !{!"branch_weights", i32 1, i32 71958}
!311 = !{!"branch_weights", i32 3390, i32 88941}
!312 = !{!"branch_weights", i32 92330, i32 1}
!313 = !{!"branch_weights", i32 88074, i32 4257}
!314 = !{!"branch_weights", i32 71958, i32 20372}
!315 = distinct !{!315, !188}
!316 = !{!"branch_weights", i32 127, i32 229588737}
!317 = distinct !{!317, !188}
!318 = distinct !{!318, !188}
!319 = distinct !{!319, !188}
!320 = distinct !{!320, !188}
!321 = !{!"branch_weights", i32 257174, i32 1489124}
!322 = distinct !{!322, !188}
!323 = !{!"branch_weights", i32 -1996877810, i32 56388699}
!324 = !{!"branch_weights", i32 49539, i32 492823}
!325 = !{!"branch_weights", i32 271181, i32 271180}
!326 = distinct !{!326, !188}
!327 = !{!"function_entry_count", i64 257174}
!328 = !{!"ira-lives.c:df_lr_get_bb_info"}
!329 = !{!330, !186, i64 16}
!330 = !{!"dataflow", !182, i64 0, !182, i64 8, !186, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !186, i64 48, !178, i64 52, !178, i64 53, !178, i64 54}
!331 = !{!330, !182, i64 8}
!332 = !{!"ira-lives.c:sparseset_clear"}
!333 = !{!334, !186, i64 16}
!334 = !{!"sparseset_def", !182, i64 0, !182, i64 8, !186, i64 16, !186, i64 20, !186, i64 24, !178, i64 28, !178, i64 29, !178, i64 32}
!335 = !{!334, !178, i64 29}
!336 = !{!"function_entry_count", i64 265301}
!337 = !{!"ira-lives.c:bmp_iter_set_init"}
!338 = !{!339, !182, i64 0}
!339 = !{!"bitmap_head_def", !182, i64 0, !182, i64 8, !186, i64 16, !182, i64 24}
!340 = !{!341, !182, i64 0}
!341 = !{!"", !182, i64 0, !182, i64 8, !186, i64 16, !177, i64 24}
!342 = !{!341, !182, i64 8}
!343 = !{!"branch_weights", i32 232, i32 265071}
!344 = !{!345, !186, i64 16}
!345 = !{!"bitmap_element_def", !182, i64 0, !182, i64 8, !186, i64 16, !178, i64 24}
!346 = !{!"branch_weights", i32 265302, i32 1}
!347 = !{!341, !186, i64 16}
!348 = !{!341, !177, i64 24}
!349 = !{!"function_entry_count", i64 3322877}
!350 = !{!"ira-lives.c:bmp_iter_set"}
!351 = !{!"branch_weights", i32 1059373, i32 2263506}
!352 = !{!"branch_weights", i32 3057576, i32 1}
!353 = !{!"branch_weights", i32 23379928, i32 3057576}
!354 = distinct !{!354, !188}
!355 = !{!"branch_weights", i32 1, i32 828360}
!356 = !{!"branch_weights", i32 597349, i32 794072}
!357 = !{!"branch_weights", i32 828360, i32 563060}
!358 = distinct !{!358, !188}
!359 = !{!345, !182, i64 0}
!360 = !{!"branch_weights", i32 265302, i32 563060}
!361 = !{!"function_entry_count", i64 2108978}
!362 = !{!"ira-lives.c:set_allocno_live"}
!363 = !{!"branch_weights", i32 2108979, i32 1}
!364 = !{!224, !186, i64 48}
!365 = !{!"branch_weights", i32 1, i32 2108978}
!366 = !{!224, !186, i64 8}
!367 = !{!"branch_weights", i32 1322213, i32 786767}
!368 = !{!"branch_weights", i32 112175, i32 1210039}
!369 = !{!"branch_weights", i32 1917759, i32 191221}
!370 = !{!"branch_weights", i32 2108978, i32 1}
!371 = distinct !{!371, !188}
!372 = !{!"function_entry_count", i64 2197277}
!373 = !{!"ira-lives.c:make_regno_born"}
!374 = !{!"branch_weights", i32 88300, i32 2108979}
!375 = !{!"branch_weights", i32 1, i32 88299}
!376 = !{!"branch_weights", i32 88299, i32 533437}
!377 = distinct !{!377, !188}
!378 = !{!"branch_weights", i32 1, i32 2108979}
!379 = !{!"branch_weights", i32 389814, i32 1719166}
!380 = !{!"branch_weights", i32 -1642255544, i32 233553066}
!381 = !{!"function_entry_count", i64 3057576}
!382 = !{!"ira-lives.c:bmp_iter_next"}
!383 = !{!"function_entry_count", i64 1932633}
!384 = !{!"ira-lives.c:mark_ref_live"}
!385 = !{!"branch_weights", i32 4587, i32 1928048}
!386 = !{!"function_entry_count", i64 2159610}
!387 = !{!"ira-lives.c:process_single_reg_class_operands"}
!388 = !{!"branch_weights", i32 2159610, i32 1}
!389 = !{!"branch_weights", i32 2230218, i32 2230218}
!390 = !{!"branch_weights", i32 1513577139, i32 -385577728, i32 106991}
!391 = !{!"branch_weights", i32 977374139, i32 -1770710303}
!392 = !{!"branch_weights", i32 2225775, i32 4487}
!393 = !{!"branch_weights", i32 2069, i32 2419}
!394 = !{!"branch_weights", i32 4333, i32 155}
!395 = !{!"branch_weights", i32 4328, i32 6}
!396 = !{!"branch_weights", i32 1, i32 4328}
!397 = !{!398, !398, i64 0}
!398 = !{!"short", !178, i64 0}
!399 = !{!"branch_weights", i32 4328, i32 1}
!400 = !{!"branch_weights", i32 8657, i32 1}
!401 = !{!"branch_weights", i32 1351, i32 2978}
!402 = !{i32 0, i32 65536}
!403 = !{!"branch_weights", i32 4327, i32 1}
!404 = !{!224, !182, i64 200}
!405 = !{!"branch_weights", i32 4327, i32 33}
!406 = distinct !{!406, !188}
!407 = !{!"branch_weights", i32 1, i32 4486}
!408 = !{!"branch_weights", i32 4328, i32 41424}
!409 = !{!224, !177, i64 144}
!410 = !{!224, !177, i64 152}
!411 = !{!"branch_weights", i32 4486, i32 41265}
!412 = distinct !{!412, !188}
!413 = !{!"branch_weights", i32 2300825, i32 2159610}
!414 = distinct !{!414, !188}
!415 = !{!"function_entry_count", i64 754438}
!416 = !{!"ira-lives.c:mark_ref_dead"}
!417 = !{!"branch_weights", i32 -2072192514, i32 294664}
!418 = !{!"branch_weights", i32 146, i32 754196}
!419 = !{!"function_entry_count", i64 469467}
!420 = !{!"ira-lives.c:sparseset_iter_init"}
!421 = !{!334, !186, i64 24}
!422 = !{!334, !178, i64 28}
!423 = !{!"function_entry_count", i64 3579559}
!424 = !{!"ira-lives.c:sparseset_iter_p"}
!425 = !{!"branch_weights", i32 1, i32 3579560}
!426 = !{!"branch_weights", i32 3110093, i32 469468}
!427 = !{!"function_entry_count", i64 3110092}
!428 = !{!"ira-lives.c:sparseset_iter_elm"}
!429 = !{!334, !182, i64 0}
!430 = !{!"ira-lives.c:sparseset_iter_next"}
!431 = !{!"function_entry_count", i64 1079805}
!432 = !{!"ira-lives.c:make_early_clobber_and_input_conflicts"}
!433 = !{!181, !178, i64 1088}
!434 = !{!"branch_weights", i32 1079805, i32 1}
!435 = !{!"branch_weights", i32 6805297, i32 1}
!436 = !{!"branch_weights", i32 13817606, i32 498}
!437 = !{!"branch_weights", i32 498, i32 1}
!438 = !{!439, !186, i64 8}
!439 = !{!"operand_alternative", !182, i64 0, !186, i64 8, !186, i64 12, !186, i64 16, !186, i64 20, !186, i64 24, !186, i64 24, !186, i64 24, !186, i64 24, !186, i64 24, !186, i64 24, !186, i64 24, !186, i64 24}
!440 = !{!439, !186, i64 16}
!441 = !{!"branch_weights", i32 166259, i32 13651845}
!442 = !{!"branch_weights", i32 166259, i32 1}
!443 = !{!"branch_weights", i32 166257, i32 3}
!444 = !{!"branch_weights", i32 3, i32 1}
!445 = !{!"branch_weights", i32 7012806, i32 6805297}
!446 = distinct !{!446, !188}
!447 = !{!"branch_weights", i32 5725493, i32 1079805}
!448 = distinct !{!448, !188}
!449 = !{!"function_entry_count", i64 1151763}
!450 = !{!"ira-lives.c:mark_hard_reg_early_clobbers"}
!451 = !{!"branch_weights", i32 1, i32 1151763}
!452 = !{!"branch_weights", i32 4885887, i32 144045}
!453 = !{!"branch_weights", i32 1, i32 144045}
!454 = !{!"branch_weights", i32 144045, i32 1}
!455 = !{!"branch_weights", i32 15, i32 144031}
!456 = !{!"branch_weights", i32 72016, i32 72016}
!457 = !{!"branch_weights", i32 1151763, i32 3878168}
!458 = distinct !{!458, !188}
!459 = !{!"ira-lives.c:bb_has_eh_pred"}
!460 = !{i64 0, i64 4, !185, i64 8, i64 8, !183}
!461 = !{i64 0, i64 8, !183}
!462 = !{!463, !186, i64 48}
!463 = !{!"edge_def", !182, i64 0, !182, i64 8, !178, i64 16, !182, i64 24, !182, i64 32, !186, i64 40, !186, i64 44, !186, i64 48, !186, i64 52, !177, i64 56}
!464 = !{!"branch_weights", i32 413387, i32 1}
!465 = !{!"branch_weights", i32 257174, i32 156213}
!466 = distinct !{!466, !188}
!467 = !{!"ira-lives.c:bb_has_abnormal_pred"}
!468 = distinct !{!468, !188}
!469 = !{!"ira-lives.c:bb_has_abnormal_call_pred"}
!470 = distinct !{!470, !188}
!471 = !{!"function_entry_count", i64 2199589}
!472 = !{!"ira-lives.c:make_regno_dead"}
!473 = !{!"branch_weights", i32 90612, i32 2108979}
!474 = !{!"function_entry_count", i64 5939450}
!475 = !{!"ira-lives.c:sparseset_bit_p"}
!476 = !{!334, !186, i64 20}
!477 = !{!"branch_weights", i32 5939451, i32 1}
!478 = !{!334, !182, i64 8}
!479 = !{!"branch_weights", i32 3069017, i32 2870435}
!480 = !{!"ira-lives.c:sparseset_set_bit"}
!481 = !{!"ira-lives.c:sparseset_insert_bit"}
!482 = !{!"function_entry_count", i64 1933371}
!483 = !{!"ira-lives.c:mark_reg_live"}
!484 = !{!"branch_weights", i32 1933372, i32 1}
!485 = !{!"branch_weights", i32 996133, i32 937240}
!486 = !{!"branch_weights", i32 1, i32 996133}
!487 = !{!"branch_weights", i32 297583, i32 698551}
!488 = !{!"branch_weights", i32 171309, i32 765932}
!489 = !{!"branch_weights", i32 1, i32 171308}
!490 = !{!"branch_weights", i32 88300, i32 83010}
!491 = !{!"branch_weights", i32 88300, i32 1}
!492 = !{!"branch_weights", i32 62440, i32 25861}
!493 = !{!"branch_weights", i32 57322, i32 5119}
!494 = !{!"branch_weights", i32 88299, i32 1}
!495 = distinct !{!495, !188}
!496 = !{!"branch_weights", i32 19073, i32 69228}
!497 = distinct !{!497, !188}
!498 = distinct !{!498, !188}
!499 = !{!"function_entry_count", i64 2230260}
!500 = !{!"ira-lives.c:single_reg_operand_class"}
!501 = !{!"branch_weights", i32 1307612478, i32 -745090919}
!502 = !{!"function_entry_count", i64 4327}
!503 = !{!"ira-lives.c:ira_get_register_move_cost"}
!504 = !{!"ira-lives.c:ira_allocate_and_set_costs"}
!505 = !{!"branch_weights", i32 3650, i32 679}
!506 = !{!"branch_weights", i32 3649, i32 1}
!507 = !{!"function_entry_count", i64 1694561}
!508 = !{!"ira-lives.c:single_reg_class"}
!509 = !{!"branch_weights", i32 -1071069598, i32 109292704, i32 1346, i32 16468657}
!510 = !{!"branch_weights", i32 2393161, i32 1}
!511 = !{!"branch_weights", i32 543582, i32 1, i32 1, i32 687031, i32 87, i32 7867, i32 434, i32 58003, i32 7243, i32 1, i32 3331, i32 4998, i32 380, i32 5279, i32 17, i32 1925, i32 1, i32 1429, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 865256, i32 8669, i32 1, i32 6612, i32 516, i32 1, i32 1478, i32 1, i32 1, i32 1, i32 2873, i32 120266, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 203, i32 1, i32 1, i32 251, i32 140, i32 11, i32 251, i32 1, i32 380, i32 1, i32 1, i32 1, i32 64328, i32 224, i32 126, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!512 = !{!"branch_weights", i32 1930, i32 1402}
!513 = !{!"branch_weights", i32 1225, i32 178704, i32 35}
!514 = !{!"branch_weights", i32 1, i32 380}
!515 = !{!"branch_weights", i32 4617, i32 4031}
!516 = !{!"branch_weights", i32 107, i32 4511}
!517 = !{!"branch_weights", i32 1845402693, i32 302080955}
!518 = !{!"branch_weights", i32 -444085184, i32 29691217}
!519 = !{!"branch_weights", i32 986966, i32 12225}
!520 = !{!"branch_weights", i32 64676, i32 1}
!521 = !{!"branch_weights", i32 928, i32 128426}
!522 = !{!"branch_weights", i32 63749, i32 928}
!523 = !{!"branch_weights", i32 33, i32 896}
!524 = distinct !{!524, !188}
!525 = !{!"function_entry_count", i64 755078}
!526 = !{!"ira-lives.c:mark_reg_dead"}
!527 = !{!"branch_weights", i32 755079, i32 1}
!528 = !{!"branch_weights", i32 362682, i32 392398}
!529 = !{!"branch_weights", i32 1, i32 362682}
!530 = !{!"branch_weights", i32 90612, i32 301787}
!531 = !{!"branch_weights", i32 1, i32 90611}
!532 = !{!"branch_weights", i32 1, i32 90612}
!533 = !{!"branch_weights", i32 31380, i32 59233}
!534 = !{!"branch_weights", i32 26172, i32 5209}
!535 = !{!"branch_weights", i32 90611, i32 1}
!536 = distinct !{!536, !188}
!537 = !{!"branch_weights", i32 2024031541, i32 123452107}
!538 = !{!"branch_weights", i32 1, i32 5208}
!539 = !{!"branch_weights", i32 5208, i32 24801}
!540 = distinct !{!540, !188}
!541 = !{!"branch_weights", i32 5209, i32 1}
!542 = !{!"branch_weights", i32 1, i32 5209}
!543 = !{!"branch_weights", i32 5208, i32 1}
!544 = distinct !{!544, !188}
!545 = distinct !{!545, !188}
!546 = !{!"function_entry_count", i64 362681}
!547 = !{!"ira-lives.c:clear_allocno_live"}
!548 = !{!"branch_weights", i32 1, i32 362681}
!549 = !{!"branch_weights", i32 150862, i32 211821}
!550 = !{!"branch_weights", i32 129422, i32 21441}
!551 = !{!"branch_weights", i32 362681, i32 1}
!552 = distinct !{!552, !188}
!553 = !{!"branch_weights", i32 2020528914, i32 126954734}
!554 = !{!"branch_weights", i32 1, i32 21440}
!555 = !{!"branch_weights", i32 21440, i32 128598}
!556 = distinct !{!556, !188}
!557 = !{!"branch_weights", i32 21441, i32 1}
!558 = !{!"branch_weights", i32 1, i32 21441}
!559 = !{!"branch_weights", i32 21440, i32 1}
!560 = distinct !{!560, !188}
!561 = !{!"function_entry_count", i64 2289023}
!562 = !{!"ira-lives.c:update_allocno_pressure_excess_length"}
!563 = !{!"branch_weights", i32 1, i32 2289023}
!564 = !{!"branch_weights", i32 688860, i32 1600165}
!565 = !{!224, !186, i64 68}
!566 = !{!"branch_weights", i32 2289023, i32 1}
!567 = distinct !{!567, !188}
!568 = !{!"function_entry_count", i64 499}
!569 = !{!"ira-lives.c:check_and_make_def_conflict"}
!570 = !{!"branch_weights", i32 1, i32 500}
!571 = !{!"branch_weights", i32 427, i32 74}
!572 = !{!"branch_weights", i32 1, i32 427}
!573 = !{!"branch_weights", i32 426, i32 1}
!574 = !{!"branch_weights", i32 427, i32 1271}
!575 = !{!"branch_weights", i32 419, i32 853}
!576 = !{!"branch_weights", i32 853, i32 1}
!577 = !{!"branch_weights", i32 844, i32 1}
!578 = !{!"branch_weights", i32 9, i32 861}
!579 = !{!"branch_weights", i32 427, i32 435}
!580 = !{!"branch_weights", i32 1, i32 861}
!581 = !{!"branch_weights", i32 844, i32 25}
!582 = distinct !{!582, !188}
!583 = !{!"branch_weights", i32 179759, i32 175561}
!584 = !{!"branch_weights", i32 419, i32 1}
!585 = !{!"branch_weights", i32 1271, i32 426}
!586 = distinct !{!586, !188}
!587 = !{!"function_entry_count", i64 1262}
!588 = !{!"ira-lives.c:check_and_make_def_use_conflict"}
!589 = !{!"branch_weights", i32 837, i32 427}
!590 = !{!"branch_weights", i32 427, i32 1}
!591 = !{!"function_entry_count", i64 426}
!592 = !{!"ira-lives.c:make_pseudo_conflict"}
!593 = !{!"branch_weights", i32 3, i32 425}
!594 = !{!"branch_weights", i32 370, i32 58}
!595 = !{!"branch_weights", i32 1, i32 370}
!596 = !{!"function_entry_count", i64 514348}
!597 = !{!"ira-lives.c:ei_start_1"}
!598 = !{!"function_entry_count", i64 1341120}
!599 = !{!"ira-lives.c:ei_cond"}
!600 = !{!"branch_weights", i32 826773, i32 514349}
!601 = !{!"function_entry_count", i64 826772}
!602 = !{!"ira-lives.c:ei_next"}
!603 = !{!"branch_weights", i32 1, i32 826773}
!604 = !{!"branch_weights", i32 826773, i32 1}
!605 = !{!606, !186, i64 0}
!606 = !{!"", !186, i64 0, !182, i64 8}
!607 = !{!"ira-lives.c:ei_end_p"}
!608 = !{!"branch_weights", i32 1, i32 1341121}
!609 = !{!"ira-lives.c:ei_edge"}
!610 = !{!"function_entry_count", i64 2167892}
!611 = !{!"ira-lives.c:VEC_edge_base_length"}
!612 = !{!"branch_weights", i32 1, i32 2167893}
!613 = !{!614, !186, i64 0}
!614 = !{!"VEC_edge_base", !186, i64 0, !186, i64 4, !178, i64 8}
!615 = !{!"function_entry_count", i64 5989328}
!616 = !{!"ira-lives.c:ei_container"}
!617 = !{!"branch_weights", i32 1, i32 5989329}
!618 = !{!"ira-lives.c:VEC_edge_base_index"}
!619 = !{!"function_entry_count", i64 8127}
!620 = !{!"branch_weights", i32 8128, i32 66072513}
!621 = !{!"ira-lives.c:remove_some_program_points_and_update_live_ranges"}
!622 = !{!"branch_weights", i32 1, i32 8127}
!623 = !{!"branch_weights", i32 8127, i32 559388}
!624 = distinct !{!624, !188}
!625 = !{!"branch_weights", i32 1, i32 567514}
!626 = !{!"branch_weights", i32 567514, i32 510468}
!627 = distinct !{!627, !188}
!628 = !{!"branch_weights", i32 8127, i32 1238054}
!629 = distinct !{!629, !188}
!630 = distinct !{!630, !188}
!631 = distinct !{!631, !188}
