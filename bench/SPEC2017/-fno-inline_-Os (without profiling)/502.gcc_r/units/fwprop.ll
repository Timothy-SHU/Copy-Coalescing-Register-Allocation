; ModuleID = 'fwprop.c'
source_filename = "fwprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df_md_bb_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_df_ref_base = type { i32, i32, [1 x ptr] }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.df_extract_ref = type { %struct.df_regular_ref, i32, i32, i32 }
%struct.find_occurrence_data = type { ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"fwprop1\00", align 1
@pass_rtl_fwprop = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_fwprop, ptr @fwprop, ptr null, ptr null, i32 0, i32 120, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"fwprop2\00", align 1
@pass_rtl_fwprop_addr = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_fwprop, ptr @fwprop_addr, ptr null, ptr null, i32 0, i32 120, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_forward_propagate = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@num_changes = internal unnamed_addr global i32 0, align 4
@use_def_ref = internal global ptr null, align 8
@reg_defs = internal global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@reg_defs_stack = internal global ptr null, align 8
@local_md = internal unnamed_addr global ptr null, align 8
@local_lr = internal unnamed_addr global ptr null, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"fwprop.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"\0AIn insn %d, replacing\0A \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0A with \00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Changes to insn %d not recognized\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Changes to insn %d not profitable\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Changed insn %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c" Setting REG_EQUAL note\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"\0ANumber of successful forward propagations: %d\0A\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_fwprop() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_forward_propagate, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fwprop() #1 {
  tail call fastcc void @fwprop_init() #15
  %1 = load ptr, ptr @df, align 8, !tbaa !9
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 4, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %0, %41
  %6 = phi ptr [ %42, %41 ], [ %1, %0 ]
  %7 = phi i64 [ %43, %41 ], [ 0, %0 ]
  %8 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds ptr, ptr %9, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %5
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65280
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %39, label %17

17:                                               ; preds = %13
  %18 = and i32 %14, 255
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_artificial_ref, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %35

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %26, %20
  %36 = phi ptr [ %24, %20 ], [ %33, %26 ]
  %37 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %36) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %26, %35, %20, %13
  tail call fastcc void @forward_propagate_into(ptr noundef nonnull %11) #15
  %40 = load ptr, ptr @df, align 8, !tbaa !9
  br label %41

41:                                               ; preds = %35, %39, %5
  %42 = phi ptr [ %6, %35 ], [ %40, %39 ], [ %6, %5 ]
  %43 = add nuw nsw i64 %7, 1
  %44 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 4, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !11
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %5, label %48, !llvm.loop !21

48:                                               ; preds = %41, %0
  tail call fastcc void @fwprop_done() #15
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fwprop_addr() #1 {
  tail call fastcc void @fwprop_init() #15
  %1 = load ptr, ptr @df, align 8, !tbaa !9
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 4, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %0, %41
  %6 = phi ptr [ %42, %41 ], [ %1, %0 ]
  %7 = phi i64 [ %43, %41 ], [ 0, %0 ]
  %8 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds ptr, ptr %9, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %5
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65280
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = and i32 %14, 255
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_artificial_ref, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %35

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %26, %20
  %36 = phi ptr [ %24, %20 ], [ %33, %26 ]
  %37 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %36) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  tail call fastcc void @forward_propagate_into(ptr noundef nonnull %11) #15
  %40 = load ptr, ptr @df, align 8, !tbaa !9
  br label %41

41:                                               ; preds = %26, %13, %20, %35, %39, %5
  %42 = phi ptr [ %6, %26 ], [ %6, %13 ], [ %6, %20 ], [ %6, %35 ], [ %40, %39 ], [ %6, %5 ]
  %43 = add nuw nsw i64 %7, 1
  %44 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 4, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !11
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %5, label %48, !llvm.loop !23

48:                                               ; preds = %41, %0
  tail call fastcc void @fwprop_done() #15
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fwprop_init() unnamed_addr #1 {
  store i32 0, ptr @num_changes, align 4, !tbaa !5
  tail call void @calculate_dominance_info(i32 noundef 1) #16
  tail call void @loop_optimizer_init(i32 noundef 0) #16
  tail call fastcc void @build_single_def_use_links() #15
  %1 = tail call i32 @df_set_flags(i32 noundef 32) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #15
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @forward_propagate_into(ptr noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 2097152
  %4 = icmp ne i32 %3, 0
  %5 = and i32 %2, 255
  %6 = icmp eq i32 %5, 1
  %7 = or i1 %4, %6
  br i1 %7, label %72, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @get_def_for_use(ptr noundef nonnull %0) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 2097152
  %14 = icmp ne i32 %13, 0
  %15 = and i32 %12, 255
  %16 = icmp eq i32 %15, 1
  %17 = or i1 %14, %16
  br i1 %17, label %72, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = icmp eq ptr %25, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %18
  %35 = and i32 %2, 262144
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @find_reg_note(ptr noundef nonnull %28, i32 noundef 4, ptr noundef null) #16
  br label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi ptr [ %38, %37 ], [ %41, %39 ]
  %44 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !15
  %46 = tail call i32 @reg_mentioned_p(ptr noundef %45, ptr noundef %43) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %19, align 8, !tbaa !15
  %50 = load ptr, ptr %49, align 8, !tbaa !19
  %51 = tail call i32 @multiple_sets(ptr noundef %50) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load i32, ptr %50, align 8
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -7
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !15
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 23
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = tail call ptr @single_set_2(ptr noundef nonnull %50, ptr noundef nonnull %60) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %58, %64
  %68 = phi ptr [ %65, %64 ], [ %60, %58 ]
  %69 = tail call fastcc zeroext i8 @forward_propagate_and_simplify(ptr noundef nonnull %0, ptr noundef nonnull %50, ptr noundef nonnull %68) #15, !range !28
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call fastcc void @forward_propagate_subreg(ptr noundef nonnull %0, ptr noundef nonnull %50, ptr noundef nonnull %68) #15
  br label %72

72:                                               ; preds = %53, %67, %71, %64, %48, %42, %18, %11, %8, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fwprop_done() unnamed_addr #1 {
  tail call void @loop_optimizer_finalize() #16
  tail call fastcc void @VEC_df_ref_heap_free(ptr noundef nonnull @use_def_ref) #15
  tail call void @free_dominance_info(i32 noundef 1) #16
  %1 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #16
  %2 = tail call ptr @get_insns() #16
  %3 = tail call i32 @max_reg_num() #16
  %4 = tail call i32 @delete_trivially_dead_insns(ptr noundef %2, i32 noundef %3) #16
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, ptr @num_changes, align 4, !tbaa !5
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.12, i32 noundef %8) #15
  br label %10

10:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_single_def_use_links() unnamed_addr #1 {
  %1 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #17
  %2 = tail call i32 @df_set_flags(i32 noundef 4) #16
  tail call void @df_md_add_problem() #16
  tail call void @df_note_add_problem() #16
  tail call void @df_analyze() #16
  tail call void @df_maybe_reorganize_use_refs(i32 noundef 6) #16
  %3 = load ptr, ptr @df, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 4, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = tail call fastcc ptr @VEC_df_ref_heap_alloc(i32 noundef %5) #15
  store ptr %6, ptr @use_def_ref, align 8, !tbaa !9
  %7 = load ptr, ptr @df, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 4, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !11
  tail call fastcc void @VEC_df_ref_heap_safe_grow_cleared(ptr noundef nonnull @use_def_ref, i32 noundef %9) #15
  %10 = tail call i32 @max_reg_num() #16
  %11 = tail call fastcc ptr @VEC_df_ref_heap_alloc(i32 noundef %10) #15
  store ptr %11, ptr @reg_defs, align 8, !tbaa !9
  %12 = tail call i32 @max_reg_num() #16
  tail call fastcc void @VEC_df_ref_heap_safe_grow_cleared(ptr noundef nonnull @reg_defs, i32 noundef %12) #15
  %13 = load ptr, ptr @cfun, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !29
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !31
  %18 = mul nsw i32 %17, 10
  %19 = tail call fastcc ptr @VEC_df_ref_heap_alloc(i32 noundef %18) #15
  store ptr %19, ptr @reg_defs_stack, align 8, !tbaa !9
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store ptr %20, ptr @local_md, align 8, !tbaa !9
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store ptr %21, ptr @local_lr, align 8, !tbaa !9
  store i8 1, ptr %1, align 8
  %22 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %22, align 8, !tbaa !33
  %23 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @single_def_use_enter_block, ptr %23, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @single_def_use_leave_block, ptr %24, align 8, !tbaa !36
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #16
  %25 = load ptr, ptr @cfun, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !29
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %28) #16
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #16
  %29 = load ptr, ptr @local_lr, align 8, !tbaa !9
  call void @bitmap_obstack_free(ptr noundef %29) #16
  store ptr null, ptr @local_lr, align 8, !tbaa !9
  %30 = load ptr, ptr @local_md, align 8, !tbaa !9
  call void @bitmap_obstack_free(ptr noundef %30) #16
  store ptr null, ptr @local_md, align 8, !tbaa !9
  call fastcc void @VEC_df_ref_heap_free(ptr noundef nonnull @reg_defs) #15
  call fastcc void @VEC_df_ref_heap_free(ptr noundef nonnull @reg_defs_stack) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #17
  ret void
}

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_md_add_problem() local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_maybe_reorganize_use_refs(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_df_ref_heap_alloc(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_heap_safe_grow_cleared(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = tail call fastcc i32 @VEC_df_ref_base_length(ptr noundef %3) #15
  tail call fastcc void @VEC_df_ref_heap_safe_grow(ptr noundef nonnull %0, i32 noundef %1) #15
  %5 = load ptr, ptr %0, align 8, !tbaa !9
  %6 = tail call fastcc ptr @VEC_df_ref_base_address(ptr noundef %5) #15
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = sub nsw i32 %1, %4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @single_def_use_enter_block(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !38
  %5 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %4) #15
  %6 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #15
  %7 = load ptr, ptr @local_md, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef %9) #16
  %10 = load ptr, ptr @local_lr, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.df_lr_bb_info, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #16
  tail call fastcc void @VEC_df_ref_heap_safe_push(ptr noundef nonnull @reg_defs_stack, ptr noundef null) #15
  %13 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %4) #15
  tail call fastcc void @process_uses(ptr noundef %13, i32 noundef 2) #15
  %14 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #15
  tail call fastcc void @process_defs(ptr noundef %14, i32 noundef 2) #15
  %15 = load ptr, ptr @local_lr, align 8, !tbaa !9
  tail call void @df_simulate_initialize_forwards(ptr noundef %1, ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %2, %59
  %21 = phi ptr [ %61, %59 ], [ %18, %2 ]
  %22 = load ptr, ptr %16, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %63, label %28

28:                                               ; preds = %20
  %29 = load i32, ptr %21, align 8
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -7
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !15
  %36 = load ptr, ptr @df, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.df, ptr %36, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = zext i32 %35 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.df_insn_info, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  tail call fastcc void @process_uses(ptr noundef %43, i32 noundef 0) #15
  %44 = load ptr, ptr @df, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = getelementptr inbounds ptr, ptr %46, i64 %39
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds %struct.df_insn_info, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !47
  tail call fastcc void @process_uses(ptr noundef %50, i32 noundef 0) #15
  %51 = load ptr, ptr @df, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = getelementptr inbounds ptr, ptr %53, i64 %39
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = getelementptr inbounds %struct.df_insn_info, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  tail call fastcc void @process_defs(ptr noundef %57, i32 noundef 0) #15
  %58 = load ptr, ptr @local_lr, align 8, !tbaa !9
  tail call void @df_simulate_one_insn_forwards(ptr noundef nonnull %1, ptr noundef nonnull %21, ptr noundef %58) #16
  br label %59

59:                                               ; preds = %28, %33
  %60 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %20, !llvm.loop !49

63:                                               ; preds = %20, %59, %2
  %64 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %4) #15
  tail call fastcc void @process_uses(ptr noundef %64, i32 noundef 0) #15
  %65 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #15
  tail call fastcc void @process_defs(ptr noundef %65, i32 noundef 0) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @single_def_use_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #5 {
  %3 = load ptr, ptr @reg_defs_stack, align 8
  %4 = tail call fastcc ptr @VEC_df_ref_base_pop(ptr noundef %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %17, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !15
  %10 = load ptr, ptr @reg_defs, align 8
  %11 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %10, i32 noundef %9) #15
  %12 = icmp eq ptr %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %10, i32 noundef %9, ptr noundef null) #15
  br label %15

14:                                               ; preds = %6
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %7) #15
  br label %15

15:                                               ; preds = %14, %13
  %16 = load ptr, ptr @reg_defs_stack, align 8
  %17 = tail call fastcc ptr @VEC_df_ref_base_pop(ptr noundef %16) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !50

19:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_df_ref_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_ref_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !51
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !51
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_df_ref_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !9, !nonnull !53, !noundef !53
  store i32 %1, ptr %10, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_df_ref_base_address(ptr noundef readnone %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = tail call fastcc i32 @VEC_df_ref_base_space(ptr noundef %3, i32 noundef %1) #15, !range !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %3, i32 noundef %1) #16
  store ptr %7, ptr %0, align 8, !tbaa !9
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_ref_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !55
  %7 = load i32, ptr %0, align 8, !tbaa !51
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_md_get_bb_info(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @df, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 7
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @df, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @VEC_df_ref_heap_reserve(ptr noundef %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  tail call fastcc void @VEC_df_ref_base_quick_push(ptr noundef %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_uses(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %2, %33
  %6 = phi ptr [ %34, %33 ], [ %3, %2 ]
  %7 = phi ptr [ %8, %33 ], [ %0, %2 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load i32, ptr %6, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %33

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = load ptr, ptr @reg_defs, align 8
  %17 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %16, i32 noundef %15) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @local_md, align 8, !tbaa !9
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %20, i32 noundef %15) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load ptr, ptr @local_lr, align 8, !tbaa !9
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %15) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @use_def_ref, align 8
  %29 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 7
  %30 = load i32, ptr %29, align 4, !tbaa !15
  %31 = load ptr, ptr @reg_defs, align 8
  %32 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %31, i32 noundef %15) #15
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %28, i32 noundef %30, ptr noundef %32) #15
  br label %33

33:                                               ; preds = %13, %19, %23, %27, %5
  %34 = load ptr, ptr %8, align 8, !tbaa !9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %5, !llvm.loop !59

36:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #15
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_defs(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %2, %35
  %6 = phi ptr [ %36, %35 ], [ %3, %2 ]
  %7 = phi ptr [ %8, %35 ], [ %0, %2 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !15
  %11 = load i32, ptr %6, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %35, !llvm.loop !62

15:                                               ; preds = %5
  %16 = load ptr, ptr @reg_defs, align 8
  %17 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %16, i32 noundef %10) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = and i32 %11, 5308416
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %17, %15 ], [ %6, %19 ]
  tail call fastcc void @VEC_df_ref_heap_safe_push(ptr noundef nonnull @reg_defs_stack, ptr noundef nonnull %23) #15
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, ptr %6, align 8
  %26 = and i32 %25, 5308416
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @local_md, align 8, !tbaa !9
  br i1 %27, label %32, label %29

29:                                               ; preds = %24
  %30 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %28, i32 noundef %10) #16
  %31 = load ptr, ptr @reg_defs, align 8
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %31, i32 noundef %10, ptr noundef null) #15
  br label %35

32:                                               ; preds = %24
  %33 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %28, i32 noundef %10) #16
  %34 = load ptr, ptr @reg_defs, align 8
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %34, i32 noundef %10, ptr noundef nonnull %6) #15
  br label %35

35:                                               ; preds = %29, %32, %5
  %36 = load ptr, ptr %8, align 8, !tbaa !9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %5

38:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: optsize
declare void @df_simulate_initialize_forwards(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_simulate_one_insn_forwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = tail call fastcc i32 @VEC_df_ref_base_space(ptr noundef %2, i32 noundef 1) #15, !range !54
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #16
  store ptr %6, ptr %0, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_ref_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !51
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !51
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_df_ref_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_ref_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @df, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_df_ref_base_pop(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !51
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !51
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  ret ptr %6
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_def_for_use(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr @use_def_ref, align 8
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !15
  %5 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %2, i32 noundef %4) #15
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @multiple_sets(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @forward_propagate_and_simplify(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %6, ptr noundef nonnull %13) #16
  br label %19

19:                                               ; preds = %3, %11, %17
  %20 = phi ptr [ %18, %17 ], [ null, %3 ], [ %13, %11 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !15
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = tail call i32 @asm_noperands(ptr noundef %26) #16
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %27, %24 ], [ -1, %19 ]
  %30 = icmp eq ptr %20, null
  %31 = icmp slt i32 %29, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, ptr %6, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 7
  br i1 %36, label %44, label %157

37:                                               ; preds = %28
  br i1 %30, label %44, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 16711680
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %157, label %44

44:                                               ; preds = %33, %38, %37
  %45 = phi i1 [ true, %38 ], [ false, %37 ], [ false, %33 ]
  %46 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !15
  %48 = load i32, ptr %47, align 8
  %49 = trunc i32 %48 to i16
  switch i16 %49, label %74 [
    i16 39, label %50
    i16 37, label %65
  ]

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !15
  %53 = load i32, ptr %52, align 8
  %54 = trunc i32 %53 to i16
  switch i16 %54, label %74 [
    i16 39, label %55
    i16 37, label %71
  ]

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load i32, ptr %56, align 8, !tbaa !15
  %58 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load i32, ptr %58, align 8, !tbaa !15
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %157

61:                                               ; preds = %55
  %62 = xor i32 %53, %48
  %63 = and i32 %62, 16711680
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %157

65:                                               ; preds = %44
  %66 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !15
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 39
  br i1 %70, label %157, label %74

71:                                               ; preds = %50
  %72 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !15
  br label %74

74:                                               ; preds = %50, %61, %44, %65, %71
  %75 = phi ptr [ %73, %71 ], [ %47, %65 ], [ %47, %44 ], [ %47, %61 ], [ %47, %50 ]
  %76 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !15
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !5
  %83 = icmp eq i32 %82, 9
  br i1 %83, label %89, label %84

84:                                               ; preds = %74
  %85 = tail call fastcc zeroext i8 @all_uses_available_at(ptr noundef %1, ptr noundef nonnull %6) #15
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %157, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %77, align 8
  br label %89

89:                                               ; preds = %87, %74
  %90 = phi i32 [ %88, %87 ], [ %78, %74 ]
  %91 = and i32 %90, 67174399
  %92 = icmp eq i32 %91, 67108907
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %77) #16
  %95 = icmp ne ptr %94, %77
  %96 = and i1 %45, %95
  br i1 %96, label %97, label %157

97:                                               ; preds = %93
  %98 = tail call ptr @find_reg_note(ptr noundef nonnull %6, i32 noundef 4, ptr noundef null) #16
  %99 = icmp eq ptr %98, null
  %100 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %101 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %102 = select i1 %99, ptr %101, ptr %100
  %103 = load ptr, ptr %102, align 8, !tbaa !15
  %104 = tail call ptr @simplify_replace_rtx(ptr noundef %103, ptr noundef nonnull %77, ptr noundef %94) #16
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %157, label %106

106:                                              ; preds = %97
  %107 = tail call ptr @copy_rtx(ptr noundef %104) #16
  %108 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %6, i32 noundef 4, ptr noundef %107) #16
  br label %157

109:                                              ; preds = %89
  %110 = icmp sgt i32 %29, -1
  br i1 %110, label %111, label %113

111:                                              ; preds = %109
  %112 = tail call fastcc zeroext i8 @forward_propagate_asm(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %75) #15, !range !28
  br label %157

113:                                              ; preds = %109
  %114 = load i32, ptr %0, align 8
  %115 = and i32 %114, 65280
  %116 = icmp eq i32 %115, 768
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  br label %134

119:                                              ; preds = %113
  br i1 %45, label %124, label %120

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !15
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %134

124:                                              ; preds = %119
  %125 = tail call ptr @find_reg_note(ptr noundef nonnull %6, i32 noundef 4, ptr noundef null) #16
  %126 = load i32, ptr %0, align 8
  %127 = and i32 %126, 262144
  %128 = icmp eq i32 %127, 0
  %129 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1
  %130 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %131 = select i1 %128, ptr %130, ptr %129
  %132 = icmp eq ptr %125, null
  %133 = zext i1 %132 to i8
  br label %134

134:                                              ; preds = %120, %124, %117
  %135 = phi i8 [ 0, %117 ], [ %133, %124 ], [ 0, %120 ]
  %136 = phi ptr [ %118, %117 ], [ %131, %124 ], [ %123, %120 ]
  %137 = load ptr, ptr %136, align 8, !tbaa !9
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !15
  %145 = load i32, ptr %144, align 8
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  br label %148

148:                                              ; preds = %134, %142
  %149 = phi i32 [ %147, %142 ], [ %140, %134 ]
  %150 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !15
  %152 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %151) #16
  %153 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %137, i32 noundef %149, ptr noundef %75, ptr noundef nonnull %77, i8 noundef zeroext %152) #15
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %148
  %156 = tail call fastcc zeroext i8 @try_fwprop_subst(ptr noundef nonnull %0, ptr noundef nonnull %136, ptr noundef nonnull %153, ptr noundef %1, i8 noundef zeroext %135) #15, !range !28
  br label %157

157:                                              ; preds = %148, %93, %106, %97, %84, %65, %55, %61, %38, %33, %155, %111
  %158 = phi i8 [ %112, %111 ], [ %156, %155 ], [ 0, %33 ], [ 0, %38 ], [ 0, %61 ], [ 0, %55 ], [ 0, %65 ], [ 0, %84 ], [ 0, %97 ], [ 0, %106 ], [ 0, %93 ], [ 0, %148 ]
  ret i8 %158
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @forward_propagate_subreg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = and i32 %6, 65535
  %10 = icmp eq i32 %9, 39
  br i1 %10, label %11, label %97

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %97

17:                                               ; preds = %11
  %18 = zext nneg i32 %8 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !15
  %29 = icmp ugt i8 %20, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !15
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 39
  br i1 %38, label %39, label %97

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 37
  br i1 %44, label %45, label %97

45:                                               ; preds = %39
  %46 = lshr i32 %42, 16
  %47 = and i32 %46, 255
  %48 = icmp eq i32 %47, %8
  br i1 %48, label %49, label %97

49:                                               ; preds = %45
  %50 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %35) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %97, label %52

52:                                               ; preds = %49
  %53 = tail call fastcc zeroext i8 @all_uses_available_at(ptr noundef %1, ptr noundef %33) #15
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %97, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %0, align 8
  %57 = and i32 %56, 254
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %88, label %92

59:                                               ; preds = %17
  %60 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %5) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %97, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !15
  %65 = load ptr, ptr %64, align 8, !tbaa !19
  %66 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !15
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65534
  %70 = icmp eq i32 %69, 98
  br i1 %70, label %71, label %97

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !15
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = lshr i32 %74, 16
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, %8
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = tail call fastcc zeroext i8 @all_uses_available_at(ptr noundef %1, ptr noundef %65) #15
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %0, align 8
  %86 = and i32 %85, 254
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %84, %55
  %89 = phi ptr [ %40, %55 ], [ %72, %84 ]
  %90 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !15
  br label %92

92:                                               ; preds = %88, %84, %55
  %93 = phi ptr [ %40, %55 ], [ %72, %84 ], [ %89, %88 ]
  %94 = phi ptr [ null, %55 ], [ null, %84 ], [ %91, %88 ]
  %95 = load ptr, ptr %93, align 8, !tbaa !15
  %96 = tail call fastcc zeroext i8 @try_fwprop_subst(ptr noundef nonnull %0, ptr noundef %94, ptr noundef %95, ptr noundef %1, i8 noundef zeroext 0) #15, !range !28
  br label %97

97:                                               ; preds = %92, %62, %52, %49, %45, %39, %30, %71, %77, %81, %59, %3, %11
  ret void
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @all_uses_available_at(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr @df, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 23
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %17) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2, %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 796, ptr noundef nonnull @.str.3) #16
  unreachable

25:                                               ; preds = %15, %21
  %26 = phi ptr [ %22, %21 ], [ %17, %15 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = icmp eq ptr %28, %1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br i1 %29, label %37, label %35

35:                                               ; preds = %25
  %36 = select i1 %34, ptr %31, ptr null
  br label %70

37:                                               ; preds = %25
  br i1 %34, label %38, label %70

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %47

43:                                               ; preds = %47
  %44 = getelementptr inbounds ptr, ptr %49, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47, !llvm.loop !66

47:                                               ; preds = %38, %43
  %48 = phi ptr [ %45, %43 ], [ %41, %38 ]
  %49 = phi ptr [ %44, %43 ], [ %40, %38 ]
  %50 = getelementptr inbounds %struct.df_base_ref, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !15
  %52 = tail call i32 @rtx_equal_p(ptr noundef %51, ptr noundef nonnull %31) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %43, label %115

54:                                               ; preds = %43, %38
  %55 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %115, label %63

59:                                               ; preds = %63
  %60 = getelementptr inbounds ptr, ptr %65, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %115, label %63, !llvm.loop !67

63:                                               ; preds = %54, %59
  %64 = phi ptr [ %61, %59 ], [ %57, %54 ]
  %65 = phi ptr [ %60, %59 ], [ %56, %54 ]
  %66 = getelementptr inbounds %struct.df_base_ref, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !15
  %68 = tail call i32 @rtx_equal_p(ptr noundef %67, ptr noundef nonnull %31) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %59, label %115

70:                                               ; preds = %35, %37
  %71 = phi ptr [ %36, %35 ], [ null, %37 ]
  %72 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  %74 = load ptr, ptr %73, align 8, !tbaa !9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %93, label %76

76:                                               ; preds = %70
  %77 = icmp eq ptr %71, null
  br label %82

78:                                               ; preds = %90
  %79 = getelementptr inbounds ptr, ptr %84, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %93, label %82, !llvm.loop !68

82:                                               ; preds = %76, %78
  %83 = phi ptr [ %74, %76 ], [ %80, %78 ]
  %84 = phi ptr [ %73, %76 ], [ %79, %78 ]
  br i1 %77, label %90, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.df_base_ref, ptr %83, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !15
  %88 = tail call i32 @rtx_equal_p(ptr noundef %87, ptr noundef nonnull %71) #16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %85, %82
  %91 = tail call fastcc zeroext i8 @use_killed_between(ptr noundef nonnull %83, ptr noundef nonnull %0, ptr noundef %1) #15
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %78, label %115

93:                                               ; preds = %78, %70
  %94 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !47
  %96 = load ptr, ptr %95, align 8, !tbaa !9
  %97 = icmp eq ptr %96, null
  br i1 %97, label %115, label %98

98:                                               ; preds = %93
  %99 = icmp eq ptr %71, null
  br label %104

100:                                              ; preds = %112
  %101 = getelementptr inbounds ptr, ptr %106, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %115, label %104, !llvm.loop !69

104:                                              ; preds = %98, %100
  %105 = phi ptr [ %96, %98 ], [ %102, %100 ]
  %106 = phi ptr [ %95, %98 ], [ %101, %100 ]
  br i1 %99, label %112, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %105, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !15
  %110 = tail call i32 @rtx_equal_p(ptr noundef %109, ptr noundef nonnull %71) #16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107, %104
  %113 = tail call fastcc zeroext i8 @use_killed_between(ptr noundef nonnull %105, ptr noundef nonnull %0, ptr noundef %1) #15
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %100, label %115

115:                                              ; preds = %90, %85, %100, %107, %112, %47, %59, %63, %93, %54
  %116 = phi i8 [ 1, %54 ], [ 1, %93 ], [ 1, %59 ], [ 0, %63 ], [ 0, %47 ], [ 1, %100 ], [ 0, %107 ], [ 0, %112 ], [ 0, %85 ], [ 0, %90 ]
  ret i8 %116
}

; Function Attrs: optsize
declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @forward_propagate_asm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 262144
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1152, ptr noundef nonnull @.str.3) #16
  br label %12

12:                                               ; preds = %4, %11
  %13 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = load ptr, ptr @df, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !15
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %19, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.df_insn_info, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %12
  %30 = getelementptr inbounds ptr, ptr %26, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %143

33:                                               ; preds = %29, %12
  %34 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !15
  %36 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %35) #16
  %37 = load i32, ptr %16, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %97 [
    i16 17, label %103
    i16 23, label %44
    i16 15, label %39
  ]

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  %42 = load i32, ptr %41, align 8, !tbaa !70
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %60, label %108

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !15
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 43
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = lshr i32 %47, 16
  %52 = and i32 %51, 255
  %53 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %46, i32 noundef %52, ptr noundef %3, ptr noundef %14, i8 noundef zeroext %36) #15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call zeroext i8 @validate_unshare_change(ptr noundef nonnull %7, ptr noundef nonnull %45, ptr noundef nonnull %53, i8 noundef zeroext 1) #16
  br label %57

57:                                               ; preds = %50, %55, %44
  %58 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !15
  br label %98

60:                                               ; preds = %39, %90
  %61 = phi i32 [ %91, %90 ], [ %42, %39 ]
  %62 = phi ptr [ %92, %90 ], [ %41, %39 ]
  %63 = phi i64 [ %94, %90 ], [ 0, %39 ]
  %64 = phi ptr [ %93, %90 ], [ null, %39 ]
  %65 = getelementptr inbounds %struct.rtvec_def, ptr %62, i64 0, i32 1, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !9
  %67 = load i32, ptr %66, align 8
  %68 = trunc i32 %67 to i16
  switch i16 %68, label %90 [
    i16 23, label %69
    i16 17, label %89
  ]

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !15
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 43
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = lshr i32 %72, 16
  %77 = and i32 %76, 255
  %78 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %71, i32 noundef %77, ptr noundef %3, ptr noundef %14, i8 noundef zeroext %36) #15
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = tail call zeroext i8 @validate_unshare_change(ptr noundef %7, ptr noundef nonnull %70, ptr noundef nonnull %78, i8 noundef zeroext 1) #16
  br label %82

82:                                               ; preds = %75, %80, %69
  %83 = load ptr, ptr %40, align 8, !tbaa !15
  %84 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1, i64 %63
  %85 = load ptr, ptr %84, align 8, !tbaa !9
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !15
  %88 = load i32, ptr %83, align 8, !tbaa !70
  br label %90

89:                                               ; preds = %60
  br label %90

90:                                               ; preds = %60, %82, %89
  %91 = phi i32 [ %88, %82 ], [ %61, %89 ], [ %61, %60 ]
  %92 = phi ptr [ %83, %82 ], [ %62, %89 ], [ %62, %60 ]
  %93 = phi ptr [ %87, %82 ], [ %66, %89 ], [ %64, %60 ]
  %94 = add nuw nsw i64 %63, 1
  %95 = sext i32 %91 to i64
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %60, label %98, !llvm.loop !72

97:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1198, ptr noundef nonnull @.str.3) #16
  br label %108

98:                                               ; preds = %90, %57
  %99 = phi ptr [ %59, %57 ], [ %93, %90 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %99, align 8
  br label %103

103:                                              ; preds = %101, %33
  %104 = phi i32 [ %102, %101 ], [ %37, %33 ]
  %105 = phi ptr [ %99, %101 ], [ %16, %33 ]
  %106 = and i32 %104, 65535
  %107 = icmp eq i32 %106, 17
  br i1 %107, label %110, label %108

108:                                              ; preds = %39, %97, %103, %98
  %109 = phi ptr [ null, %97 ], [ %105, %103 ], [ null, %98 ], [ null, %39 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1201, ptr noundef nonnull @.str.3) #16
  br label %110

110:                                              ; preds = %103, %108
  %111 = phi ptr [ %105, %103 ], [ %109, %108 ]
  %112 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1, i32 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !15
  %114 = load i32, ptr %113, align 8, !tbaa !70
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %110, %128
  %117 = phi i64 [ %129, %128 ], [ 0, %110 ]
  %118 = phi ptr [ %130, %128 ], [ %113, %110 ]
  %119 = getelementptr inbounds %struct.rtvec_def, ptr %118, i64 0, i32 1, i64 %117
  %120 = load ptr, ptr %119, align 8, !tbaa !9
  %121 = load i32, ptr %120, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %120, i32 noundef %123, ptr noundef %3, ptr noundef %14, i8 noundef zeroext %36) #15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %116
  %127 = tail call zeroext i8 @validate_unshare_change(ptr noundef %7, ptr noundef nonnull %119, ptr noundef nonnull %124, i8 noundef zeroext 1) #16
  br label %128

128:                                              ; preds = %116, %126
  %129 = add nuw nsw i64 %117, 1
  %130 = load ptr, ptr %112, align 8, !tbaa !15
  %131 = load i32, ptr %130, align 8, !tbaa !70
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %116, label %134, !llvm.loop !73

134:                                              ; preds = %128, %110
  %135 = tail call i32 @num_changes_pending() #16
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = tail call i32 @apply_change_group() #16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr @num_changes, align 4, !tbaa !5
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr @num_changes, align 4, !tbaa !5
  br label %143

143:                                              ; preds = %134, %137, %29, %140
  %144 = phi i8 [ 1, %140 ], [ 0, %29 ], [ 0, %137 ], [ 0, %134 ]
  ret i8 %144
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @propagate_rtx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %3, ptr %6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %8 = load i32, ptr %3, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #15
  %13 = icmp ult i32 %12, 53
  br i1 %13, label %53, label %19

14:                                               ; preds = %5
  %15 = zext nneg i32 %9 to i64
  %16 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %14
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32 [ 1, %19 ], [ 0, %14 ]
  %22 = call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @varying_mem_p, ptr noundef null) #16
  %23 = icmp eq i32 %22, 0
  %24 = or disjoint i32 %21, 2
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = icmp eq i8 %4, 0
  %27 = or disjoint i32 %25, 4
  %28 = select i1 %26, i32 %25, i32 %27
  store ptr %0, ptr %7, align 8, !tbaa !9
  %29 = load ptr, ptr %6, align 8, !tbaa !9
  %30 = call ptr @copy_rtx(ptr noundef %29) #16
  %31 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %30, i32 noundef %28) #15
  %32 = load ptr, ptr %7, align 8, !tbaa !9
  %33 = icmp ne ptr %32, %0
  %34 = icmp ne i8 %31, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %53

36:                                               ; preds = %20
  %37 = load i32, ptr %32, align 8
  %38 = and i32 %37, 16711680
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %37, 65535
  %41 = icmp eq i32 %40, 30
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = lshr i32 %37, 16
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !74
  %49 = call ptr %48(i32 noundef %1, ptr noundef nonnull %32) #16
  br label %53

50:                                               ; preds = %43
  %51 = icmp eq i32 %45, %1
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 684, ptr noundef nonnull @.str.3) #16
  br label %53

53:                                               ; preds = %47, %50, %52, %36, %20, %11
  %54 = phi ptr [ null, %11 ], [ null, %20 ], [ null, %36 ], [ %32, %52 ], [ %32, %50 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  ret ptr %54
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_fwprop_subst(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = load i32, ptr %0, align 8
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = ashr i32 %9, 16
  %13 = load i32, ptr %8, align 8
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -7
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %20) #16
  br label %47

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 23
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %31) #16
  br label %40

33:                                               ; preds = %22
  %34 = tail call ptr @single_set_2(ptr noundef nonnull %8, ptr noundef nonnull %24) #16
  %35 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %36 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !15
  %38 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %37) #16
  %39 = icmp eq ptr %34, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %28, %33
  %41 = phi i8 [ %32, %28 ], [ %38, %33 ]
  %42 = phi ptr [ %29, %28 ], [ %35, %33 ]
  %43 = phi ptr [ %24, %28 ], [ %34, %33 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !15
  %46 = tail call i32 @rtx_cost(ptr noundef %45, i32 noundef 23, i8 noundef zeroext %41) #16
  br label %47

47:                                               ; preds = %17, %40, %33
  %48 = phi i1 [ true, %40 ], [ false, %33 ], [ false, %17 ]
  %49 = phi i8 [ %41, %40 ], [ %38, %33 ], [ %21, %17 ]
  %50 = phi ptr [ %42, %40 ], [ %35, %33 ], [ %18, %17 ]
  %51 = phi ptr [ %43, %40 ], [ null, %33 ], [ null, %17 ]
  %52 = phi i32 [ %46, %40 ], [ 0, %33 ], [ 0, %17 ]
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = load i32, ptr %50, align 8, !tbaa !15
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.5, i32 noundef %56) #15
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %59 = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @print_inline_rtx(ptr noundef %58, ptr noundef %59, i32 noundef 2) #16
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %61 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %60)
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_inline_rtx(ptr noundef %62, ptr noundef %2, i32 noundef 2) #16
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %64 = tail call i32 @fputc(i32 10, ptr %63)
  br label %65

65:                                               ; preds = %55, %47
  %66 = tail call zeroext i8 @validate_unshare_change(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #16
  %67 = tail call i32 @verify_changes(i32 noundef 0) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %106, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %50, align 8, !tbaa !15
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %70, ptr noundef nonnull @.str.8, i32 noundef %73) #15
  br label %106

75:                                               ; preds = %65
  %76 = load i32, ptr %0, align 8
  %77 = and i32 %76, 65280
  %78 = icmp eq i32 %77, 256
  %79 = and i1 %48, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !15
  %83 = tail call i32 @rtx_cost(ptr noundef %82, i32 noundef 23, i8 noundef zeroext %49) #16
  %84 = icmp sgt i32 %83, %52
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %87 = icmp eq ptr %86, null
  br i1 %87, label %106, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %50, align 8, !tbaa !15
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %86, ptr noundef nonnull @.str.9, i32 noundef %89) #15
  br label %106

91:                                               ; preds = %80, %75
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %50, align 8, !tbaa !15
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %92, ptr noundef nonnull @.str.10, i32 noundef %95) #15
  br label %97

97:                                               ; preds = %94, %91
  tail call void @confirm_change_group() #16
  %98 = load i32, ptr @num_changes, align 4, !tbaa !5
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr @num_changes, align 4, !tbaa !5
  tail call void @df_ref_remove(ptr noundef nonnull %0) #16
  %100 = load i32, ptr %2, align 8
  %101 = and i32 %100, 65535
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !5
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %137, label %122

106:                                              ; preds = %72, %69, %88, %85
  tail call void @cancel_changes(i32 noundef 0) #16
  %107 = icmp eq i8 %4, 0
  br i1 %107, label %137, label %108

108:                                              ; preds = %106
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 24, i64 1, ptr nonnull %109)
  br label %113

113:                                              ; preds = %111, %108
  %114 = tail call ptr @copy_rtx(ptr noundef %2) #16
  %115 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %8, i32 noundef 4, ptr noundef %114) #16
  %116 = load i32, ptr %2, align 8
  %117 = and i32 %116, 65535
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = icmp eq i32 %120, 9
  br i1 %121, label %137, label %122

122:                                              ; preds = %113, %97
  %123 = phi i32 [ %12, %97 ], [ 4, %113 ]
  %124 = phi i8 [ 1, %97 ], [ 0, %113 ]
  %125 = load ptr, ptr @df, align 8, !tbaa !9
  %126 = getelementptr inbounds %struct.df, ptr %125, i64 0, i32 10
  %127 = load ptr, ptr %126, align 8, !tbaa !45
  %128 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !15
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %127, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !9
  %133 = getelementptr inbounds %struct.df_insn_info, ptr %132, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !46
  tail call fastcc void @update_df(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %134, i32 noundef %11, i32 noundef %123) #15
  %135 = getelementptr inbounds %struct.df_insn_info, ptr %132, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !47
  tail call fastcc void @update_df(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %136, i32 noundef %11, i32 noundef %123) #15
  br label %137

137:                                              ; preds = %122, %106, %113, %97
  %138 = phi i8 [ 0, %106 ], [ 0, %113 ], [ 1, %97 ], [ %124, %122 ]
  ret i8 %138
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @use_killed_between(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %6, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load ptr, ptr @df, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = load i32, ptr %4, align 8, !tbaa !15
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.df_insn_info, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !76
  %21 = load i32, ptr %7, align 8, !tbaa !15
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %14, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.df_insn_info, ptr %24, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !76
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %33, label %108

28:                                               ; preds = %3
  %29 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %9, ptr noundef %6) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %108, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @df, align 8, !tbaa !9
  br label %33

33:                                               ; preds = %31, %11
  %34 = phi ptr [ %32, %31 ], [ %12, %11 ]
  %35 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !15
  %37 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !77
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = load ptr, ptr %41, align 8, !tbaa !78
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %42, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !15
  %47 = icmp eq ptr %46, null
  %48 = icmp sgt i32 %36, 52
  %49 = and i1 %48, %47
  br i1 %49, label %108, label %50

50:                                               ; preds = %44, %33
  br i1 %10, label %51, label %53

51:                                               ; preds = %50
  %52 = tail call fastcc zeroext i8 @local_ref_killed_between_p(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %108

53:                                               ; preds = %50
  %54 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %9) #15, !range !28
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %108, label %56

56:                                               ; preds = %53
  %57 = tail call fastcc ptr @single_pred(ptr noundef %9) #15
  %58 = icmp eq ptr %57, %6
  br i1 %58, label %59, label %108

59:                                               ; preds = %56
  %60 = tail call ptr @df_bb_regno_last_def_find(ptr noundef %6, i32 noundef %36) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %83, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @df, align 8, !tbaa !9
  %64 = getelementptr inbounds %struct.df, ptr %63, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = getelementptr inbounds %struct.df_base_ref, ptr %60, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !15
  %68 = load ptr, ptr %67, align 8, !tbaa !19
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !15
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %65, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !9
  %74 = getelementptr inbounds %struct.df_insn_info, ptr %73, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !76
  %76 = load i32, ptr %4, align 8, !tbaa !15
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %65, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = getelementptr inbounds %struct.df_insn_info, ptr %79, i64 0, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !76
  %82 = icmp slt i32 %75, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %62, %59
  %84 = tail call ptr @df_bb_regno_first_def_find(ptr noundef %9, i32 noundef %36) #16
  %85 = icmp eq ptr %84, null
  br i1 %85, label %107, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr @df, align 8, !tbaa !9
  %88 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 10
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = getelementptr inbounds %struct.df_base_ref, ptr %84, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !15
  %92 = load ptr, ptr %91, align 8, !tbaa !19
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !15
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %89, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !9
  %98 = getelementptr inbounds %struct.df_insn_info, ptr %97, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !76
  %100 = load i32, ptr %7, align 8, !tbaa !15
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %89, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !9
  %104 = getelementptr inbounds %struct.df_insn_info, ptr %103, i64 0, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !76
  %106 = icmp slt i32 %99, %105
  br i1 %106, label %108, label %107

107:                                              ; preds = %86, %83
  br label %108

108:                                              ; preds = %53, %56, %107, %62, %86, %44, %11, %28, %51
  %109 = phi i8 [ %52, %51 ], [ 1, %28 ], [ 1, %11 ], [ 0, %44 ], [ 0, %107 ], [ 1, %62 ], [ 1, %86 ], [ 1, %56 ], [ 1, %53 ]
  ret i8 %109
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @local_ref_killed_between_p(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readnone %2) unnamed_addr #12 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %42, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @df, align 8
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %5, %38
  %10 = phi ptr [ %1, %5 ], [ %40, %38 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load ptr, ptr %7, align 8, !tbaa !45
  %17 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.df_insn_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %15
  %27 = load i32, ptr %8, align 8, !tbaa !15
  br label %32

28:                                               ; preds = %32
  %29 = getelementptr inbounds ptr, ptr %34, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32, !llvm.loop !80

32:                                               ; preds = %26, %28
  %33 = phi ptr [ %24, %26 ], [ %30, %28 ]
  %34 = phi ptr [ %23, %26 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.df_base_ref, ptr %33, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !15
  %37 = icmp eq i32 %27, %36
  br i1 %37, label %42, label %28

38:                                               ; preds = %28, %15, %9
  %39 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %42, label %9, !llvm.loop !81

42:                                               ; preds = %38, %32, %3
  %43 = phi i8 [ 0, %3 ], [ 1, %32 ], [ 0, %38 ]
  ret i8 %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !82
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @df_bb_regno_last_def_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @df_bb_regno_first_def_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !85
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #15, !range !28
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.3) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !82
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6) #15
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @num_changes_pending() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !15
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @varying_mem_p(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  %7 = lshr i32 %4, 26
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  %10 = select i1 %6, i32 %9, i32 0
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @propagate_rtx_1(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = lshr i32 %10, 16
  %13 = and i32 %12, 255
  %14 = trunc i32 %3 to i8
  %15 = and i8 %14, 1
  %16 = and i32 %3, 2
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %11, 43
  %19 = select i1 %17, i1 %18, i1 false
  %20 = and i32 %10, 67108864
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = tail call i32 @side_effects_p(ptr noundef nonnull %9) #16
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr %9, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br i1 %25, label %32, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %31 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef %28, ptr noundef %30) #16
  br label %34

32:                                               ; preds = %23
  %33 = tail call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef %28) #16
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi ptr [ %31, %29 ], [ %33, %32 ]
  store ptr %35, ptr %0, align 8, !tbaa !9
  br label %265

36:                                               ; preds = %4
  %37 = icmp eq ptr %9, %1
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store ptr %2, ptr %0, align 8, !tbaa !9
  br label %265

39:                                               ; preds = %36
  %40 = zext nneg i32 %11 to i64
  %41 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !5
  switch i32 %42, label %265 [
    i32 4, label %43
    i32 2, label %56
    i32 3, label %56
    i32 0, label %74
    i32 1, label %74
    i32 10, label %102
    i32 11, label %102
    i32 5, label %140
    i32 8, label %157
  ]

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !15
  store ptr %45, ptr %5, align 8, !tbaa !9
  %46 = load i32, ptr %45, align 8
  %47 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %48 = load ptr, ptr %5, align 8, !tbaa !9
  %49 = load ptr, ptr %44, align 8, !tbaa !15
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %265, label %51

51:                                               ; preds = %43
  %52 = and i8 %47, 1
  %53 = lshr i32 %46, 16
  %54 = and i32 %53, 255
  %55 = tail call ptr @simplify_gen_unary(i32 noundef %11, i32 noundef %13, ptr noundef %48, i32 noundef %54) #16
  br label %248

56:                                               ; preds = %39, %39
  %57 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !15
  store ptr %58, ptr %5, align 8, !tbaa !9
  %59 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !15
  store ptr %60, ptr %6, align 8, !tbaa !9
  %61 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %62 = and i8 %61, 1
  %63 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %64 = and i8 %62, %63
  %65 = load ptr, ptr %5, align 8, !tbaa !9
  %66 = load ptr, ptr %57, align 8, !tbaa !15
  %67 = icmp eq ptr %65, %66
  %68 = load ptr, ptr %6, align 8, !tbaa !9
  br i1 %67, label %69, label %72

69:                                               ; preds = %56
  %70 = load ptr, ptr %59, align 8, !tbaa !15
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %265, label %72

72:                                               ; preds = %69, %56
  %73 = tail call ptr @simplify_gen_binary(i32 noundef %11, i32 noundef %13, ptr noundef %65, ptr noundef %68) #16
  br label %248

74:                                               ; preds = %39, %39
  %75 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !15
  store ptr %76, ptr %5, align 8, !tbaa !9
  %77 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !15
  store ptr %78, ptr %6, align 8, !tbaa !9
  %79 = load i32, ptr %76, align 8
  %80 = lshr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i32, ptr %78, align 8
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  br label %87

87:                                               ; preds = %74, %83
  %88 = phi i32 [ %86, %83 ], [ %81, %74 ]
  %89 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %90 = and i8 %89, 1
  %91 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %92 = and i8 %90, %91
  %93 = load ptr, ptr %5, align 8, !tbaa !9
  %94 = load ptr, ptr %75, align 8, !tbaa !15
  %95 = icmp eq ptr %93, %94
  %96 = load ptr, ptr %6, align 8, !tbaa !9
  br i1 %95, label %97, label %100

97:                                               ; preds = %87
  %98 = load ptr, ptr %77, align 8, !tbaa !15
  %99 = icmp eq ptr %96, %98
  br i1 %99, label %265, label %100

100:                                              ; preds = %97, %87
  %101 = tail call ptr @simplify_gen_relational(i32 noundef %11, i32 noundef %13, i32 noundef %88, ptr noundef %93, ptr noundef %96) #16
  br label %248

102:                                              ; preds = %39, %39
  %103 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !15
  store ptr %104, ptr %5, align 8, !tbaa !9
  %105 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !15
  store ptr %106, ptr %6, align 8, !tbaa !9
  %107 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %108 = load ptr, ptr %107, align 8, !tbaa !15
  store ptr %108, ptr %7, align 8, !tbaa !9
  %109 = load i32, ptr %104, align 8
  %110 = lshr i32 %109, 16
  %111 = and i32 %110, 255
  %112 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %113 = and i8 %112, 1
  %114 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %115 = and i8 %113, %114
  %116 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %117 = and i8 %115, %116
  %118 = load ptr, ptr %5, align 8, !tbaa !9
  %119 = load ptr, ptr %103, align 8, !tbaa !15
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %102
  %122 = load ptr, ptr %6, align 8, !tbaa !9
  %123 = load ptr, ptr %105, align 8, !tbaa !15
  %124 = icmp eq ptr %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load ptr, ptr %7, align 8, !tbaa !9
  %127 = load ptr, ptr %107, align 8, !tbaa !15
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %265, label %129

129:                                              ; preds = %125, %121, %102
  %130 = icmp eq i32 %111, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = load i32, ptr %118, align 8
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  br label %135

135:                                              ; preds = %131, %129
  %136 = phi i32 [ %134, %131 ], [ %111, %129 ]
  %137 = load ptr, ptr %6, align 8, !tbaa !9
  %138 = load ptr, ptr %7, align 8, !tbaa !9
  %139 = tail call ptr @simplify_gen_ternary(i32 noundef %11, i32 noundef %13, i32 noundef %136, ptr noundef %118, ptr noundef %137, ptr noundef %138) #16
  br label %248

140:                                              ; preds = %39
  %141 = icmp eq i32 %11, 39
  br i1 %141, label %142, label %265

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !15
  store ptr %144, ptr %5, align 8, !tbaa !9
  %145 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %146 = load ptr, ptr %5, align 8, !tbaa !9
  %147 = load ptr, ptr %143, align 8, !tbaa !15
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %265, label %149

149:                                              ; preds = %142
  %150 = and i8 %145, 1
  %151 = load i32, ptr %147, align 8
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load i32, ptr %154, align 8, !tbaa !15
  %156 = tail call ptr @simplify_gen_subreg(i32 noundef %13, ptr noundef %146, i32 noundef %153, i32 noundef %155) #16
  br label %248

157:                                              ; preds = %39
  %158 = icmp ne i32 %11, 43
  %159 = icmp eq ptr %9, %2
  %160 = or i1 %159, %158
  br i1 %160, label %212, label %161

161:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %162 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !15
  %164 = tail call fastcc zeroext i8 @can_simplify_addr(ptr noundef %163) #15, !range !28
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %209, label %166

166:                                              ; preds = %161
  %167 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !87
  %168 = tail call ptr %167(ptr noundef %163) #16
  store ptr %168, ptr %8, align 8, !tbaa !9
  %169 = or i32 %3, 1
  %170 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, i32 noundef %169) #15
  %171 = and i8 %170, 1
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %209, label %173

173:                                              ; preds = %166
  %174 = load ptr, ptr %8, align 8, !tbaa !9
  %175 = icmp eq ptr %174, %168
  br i1 %175, label %209, label %176

176:                                              ; preds = %173
  %177 = load i32, ptr %174, align 8
  %178 = lshr i32 %177, 16
  %179 = and i32 %178, 255
  %180 = load i32, ptr %168, align 8
  %181 = lshr i32 %180, 16
  %182 = and i32 %181, 255
  %183 = icmp eq i32 %179, %182
  %184 = icmp eq i32 %179, 0
  %185 = or i1 %184, %183
  br i1 %185, label %186, label %209

186:                                              ; preds = %176
  tail call fastcc void @canonicalize_address(ptr noundef nonnull %174) #15
  %187 = load i32, ptr %1, align 8
  %188 = and i32 %187, 65535
  %189 = icmp eq i32 %188, 37
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load i32, ptr %2, align 8
  %192 = and i32 %191, 65535
  %193 = icmp eq i32 %192, 37
  br i1 %193, label %210, label %194

194:                                              ; preds = %190, %186
  %195 = load i32, ptr %9, align 8
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %199 = load ptr, ptr %198, align 8, !tbaa !15
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.mem_attrs, ptr %199, i64 0, i32 5
  %203 = load i8, ptr %202, align 8, !tbaa !99
  br label %204

204:                                              ; preds = %194, %201
  %205 = phi i8 [ %203, %201 ], [ 0, %194 ]
  %206 = and i8 %14, 4
  %207 = tail call fastcc zeroext i8 @should_replace_address(ptr noundef nonnull %168, ptr noundef nonnull %174, i32 noundef %197, i8 noundef zeroext %205, i8 noundef zeroext %206) #15, !range !28
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %161, %176, %173, %166, %204
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br label %265

210:                                              ; preds = %190, %204
  %211 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %9, ptr noundef nonnull %174) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br label %248

212:                                              ; preds = %157
  %213 = trunc i32 %10 to i16
  switch i16 %213, label %265 [
    i16 122, label %214
    i16 37, label %244
  ]

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !15
  store ptr %216, ptr %5, align 8, !tbaa !9
  %217 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !15
  store ptr %218, ptr %6, align 8, !tbaa !9
  %219 = or i32 %3, 1
  %220 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %219) #15
  %221 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %222 = load ptr, ptr %5, align 8, !tbaa !9
  %223 = load ptr, ptr %215, align 8, !tbaa !15
  %224 = icmp eq ptr %222, %223
  %225 = load ptr, ptr %6, align 8, !tbaa !9
  br i1 %224, label %226, label %229

226:                                              ; preds = %214
  %227 = load ptr, ptr %217, align 8, !tbaa !15
  %228 = icmp eq ptr %225, %227
  br i1 %228, label %265, label %229

229:                                              ; preds = %226, %214
  %230 = load i32, ptr %222, align 8
  %231 = and i32 %230, 65535
  %232 = icmp eq i32 %231, 121
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !15
  %236 = tail call i32 @rtx_equal_p(ptr noundef %235, ptr noundef %225) #16
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233, %229
  %239 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %13, ptr noundef nonnull %222, ptr noundef %225) #16
  br label %240

240:                                              ; preds = %233, %238
  %241 = phi ptr [ %239, %238 ], [ %225, %233 ]
  %242 = tail call i32 @memory_address_addr_space_p(i32 noundef %13, ptr noundef %241, i8 noundef zeroext 0) #16
  %243 = trunc i32 %242 to i8
  br label %265

244:                                              ; preds = %212
  %245 = tail call i32 @rtx_equal_p(ptr noundef nonnull %9, ptr noundef %1) #16
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %265, label %247

247:                                              ; preds = %244
  store ptr %2, ptr %0, align 8, !tbaa !9
  br label %265

248:                                              ; preds = %210, %149, %135, %100, %72, %51
  %249 = phi ptr [ %211, %210 ], [ %156, %149 ], [ %139, %135 ], [ %101, %100 ], [ %73, %72 ], [ %55, %51 ]
  %250 = phi i8 [ 1, %210 ], [ %150, %149 ], [ %117, %135 ], [ %92, %100 ], [ %64, %72 ], [ %52, %51 ]
  %251 = icmp eq ptr %249, null
  br i1 %251, label %265, label %252

252:                                              ; preds = %248
  store ptr %249, ptr %0, align 8, !tbaa !9
  %253 = icmp ne i8 %250, 0
  %254 = and i32 %3, 1
  %255 = icmp ne i32 %254, 0
  %256 = or i1 %255, %253
  br i1 %256, label %265, label %257

257:                                              ; preds = %252
  %258 = load i32, ptr %249, align 8
  %259 = and i32 %258, 65535
  %260 = zext nneg i32 %259 to i64
  %261 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !5
  %263 = icmp eq i32 %262, 9
  %264 = zext i1 %263 to i8
  br label %265

265:                                              ; preds = %212, %140, %244, %39, %209, %252, %257, %248, %226, %142, %125, %97, %69, %43, %247, %240, %38, %34
  %266 = phi i8 [ %15, %38 ], [ %243, %240 ], [ %15, %247 ], [ 0, %34 ], [ 1, %43 ], [ 1, %69 ], [ 1, %97 ], [ 1, %125 ], [ 1, %142 ], [ 1, %226 ], [ 1, %248 ], [ 1, %252 ], [ %264, %257 ], [ 1, %209 ], [ 1, %39 ], [ 1, %244 ], [ 1, %140 ], [ 1, %212 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret i8 %266
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_ternary(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_simplify_addr(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call zeroext i8 @constant_address_p(ptr noundef %0) #16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %22

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 49
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %4, %8
  %13 = phi i32 [ %11, %8 ], [ %5, %4 ]
  %14 = phi ptr [ %10, %8 ], [ %0, %4 ]
  %15 = and i32 %13, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #15
  switch i32 %18, label %19 [
    i32 20, label %22
    i32 6, label %22
  ]

19:                                               ; preds = %17
  %20 = icmp ne i32 %18, 16
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %17, %17, %12, %19, %1
  %23 = phi i8 [ 0, %1 ], [ 1, %12 ], [ 0, %17 ], [ %21, %19 ], [ 0, %17 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_address(ptr nocapture noundef %0) unnamed_addr #1 {
  br label %2

2:                                                ; preds = %40, %1
  %3 = phi ptr [ %0, %1 ], [ %42, %40 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %39 [
    i16 65, label %6
    i16 49, label %29
    i16 35, label %37
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 30
  br i1 %12, label %13, label %40

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !15
  %16 = lshr i32 %4, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = icmp ult i64 %15, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %13
  %25 = and i32 %4, -65536
  %26 = or disjoint i32 %25, 52
  store i32 %26, ptr %3, align 8
  %27 = shl nuw i64 1, %15
  %28 = tail call ptr @gen_int_mode(i64 noundef %27, i32 noundef %17) #16
  store ptr %28, ptr %8, align 8, !tbaa !15
  br label %40

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = load i32, ptr %31, align 8
  %33 = trunc i32 %32 to i16
  switch i16 %33, label %35 [
    i16 49, label %34
    i16 65, label %34
    i16 35, label %34
  ]

34:                                               ; preds = %29, %29, %29
  tail call fastcc void @canonicalize_address(ptr noundef nonnull %31) #15
  br label %35

35:                                               ; preds = %29, %34
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %40

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %40

39:                                               ; preds = %2
  ret void

40:                                               ; preds = %6, %13, %24, %37, %35
  %41 = phi ptr [ %38, %37 ], [ %36, %35 ], [ %7, %24 ], [ %7, %13 ], [ %7, %6 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !15
  br label %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @should_replace_address(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %1) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = tail call i32 @memory_address_addr_space_p(i32 noundef %2, ptr noundef %1, i8 noundef zeroext %3) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %32, label %19

19:                                               ; preds = %15, %11
  %20 = tail call i32 @address_cost(ptr noundef nonnull %0, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #16
  %21 = tail call i32 @address_cost(ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #16
  %22 = sub nsw i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = tail call i32 @rtx_cost(ptr noundef %1, i32 noundef 23, i8 noundef zeroext %4) #16
  %26 = tail call i32 @rtx_cost(ptr noundef nonnull %0, i32 noundef 23, i8 noundef zeroext %4) #16
  %27 = sub nsw i32 %25, %26
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %27, %24 ], [ %22, %19 ]
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i8
  br label %32

32:                                               ; preds = %15, %5, %8, %28
  %33 = phi i8 [ %31, %28 ], [ 0, %8 ], [ 0, %5 ], [ 1, %15 ]
  ret i8 %33
}

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @address_cost(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @verify_changes(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @confirm_change_group() local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_ref_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_df(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = load ptr, ptr %2, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %59, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  br label %10

10:                                               ; preds = %52, %8
  %11 = phi ptr [ %54, %52 ], [ %6, %8 ]
  %12 = phi ptr [ %20, %52 ], [ %2, %8 ]
  %13 = phi i1 [ false, %52 ], [ true, %8 ]
  br label %14

14:                                               ; preds = %10, %49
  %15 = phi ptr [ %50, %49 ], [ %11, %10 ]
  %16 = phi ptr [ %20, %49 ], [ %12, %10 ]
  %17 = getelementptr inbounds %struct.df_base_ref, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = tail call fastcc ptr @find_occurrence(ptr noundef %1, ptr noundef %18) #15
  %20 = getelementptr inbounds ptr, ptr %16, i64 1
  %21 = icmp eq ptr %19, null
  br i1 %21, label %49, label %22, !llvm.loop !101

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %15, i64 0, i32 1
  %24 = load i32, ptr %15, align 8
  %25 = and i32 %24, 50331648
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.df_extract_ref, ptr %15, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.df_extract_ref, ptr %15, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !15
  %32 = getelementptr inbounds %struct.df_extract_ref, ptr %15, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !15
  br label %34

34:                                               ; preds = %27, %22
  %35 = phi i32 [ %29, %27 ], [ -1, %22 ]
  %36 = phi i32 [ %31, %27 ], [ -1, %22 ]
  %37 = phi i32 [ %33, %27 ], [ 0, %22 ]
  %38 = load ptr, ptr %23, align 8, !tbaa !15
  %39 = load ptr, ptr %9, align 8, !tbaa !15
  %40 = ashr i32 %24, 16
  %41 = or i32 %40, %4
  %42 = tail call ptr @df_ref_create(ptr noundef %38, ptr noundef nonnull %19, ptr noundef %0, ptr noundef %39, i32 noundef %3, i32 noundef %41, i32 noundef %35, i32 noundef %36, i32 noundef %37) #16
  %43 = getelementptr inbounds %struct.df_base_ref, ptr %42, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !15
  %45 = load ptr, ptr @use_def_ref, align 8
  %46 = tail call fastcc i32 @VEC_df_ref_base_length(ptr noundef %45) #15
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 931, ptr noundef nonnull @.str.3) #16
  br label %52

49:                                               ; preds = %14
  %50 = load ptr, ptr %20, align 8, !tbaa !9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %14

52:                                               ; preds = %48, %34
  %53 = tail call fastcc ptr @get_def_for_use(ptr noundef nonnull %15) #15
  tail call fastcc void @VEC_df_ref_heap_safe_push(ptr noundef nonnull @use_def_ref, ptr noundef %53) #15
  %54 = load ptr, ptr %20, align 8, !tbaa !9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %10

56:                                               ; preds = %49
  br i1 %13, label %59, label %57

57:                                               ; preds = %52, %56
  %58 = tail call zeroext i8 @df_insn_rescan(ptr noundef %0) #16
  br label %59

59:                                               ; preds = %5, %57, %56
  ret void
}

; Function Attrs: optsize
declare void @cancel_changes(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_occurrence(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.find_occurrence_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %12 [
    i16 37, label %13
    i16 39, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %13, label %12

12:                                               ; preds = %2, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 883, ptr noundef nonnull @.str.3) #16
  br label %13

13:                                               ; preds = %2, %6, %12
  store ptr %1, ptr %3, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.find_occurrence_data, ptr %3, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !104
  %15 = call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @find_occurrence_callback, ptr noundef nonnull %3) #16
  %16 = load ptr, ptr %14, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @df_ref_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @find_occurrence_callback(ptr noundef %0, ptr nocapture noundef %1) #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load ptr, ptr %1, align 8, !tbaa !102
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.find_occurrence_data, ptr %1, i64 0, i32 1
  store ptr %0, ptr %7, align 8, !tbaa !104
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @delete_trivially_dead_insns(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !6, i64 204}
!12 = !{!"df", !7, i64 0, !7, i64 64, !10, i64 128, !13, i64 136, !13, i64 176, !10, i64 216, !10, i64 224, !10, i64 232, !6, i64 240, !6, i64 244, !10, i64 248, !6, i64 256, !6, i64 260, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !6, i64 344, !6, i64 348, !10, i64 352, !6, i64 360, !6, i64 364, !7, i64 365, !7, i64 366}
!13 = !{!"df_ref_info", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!14 = !{!12, !10, i64 176}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !10, i64 24}
!17 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !18, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!18 = !{!"long", !7, i64 0}
!19 = !{!20, !10, i64 0}
!20 = !{!"df_insn_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!25, !10, i64 40}
!25 = !{!"loop", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 16, !26, i64 24, !6, i64 32, !6, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !27, i64 80, !27, i64 96, !7, i64 112, !7, i64 113, !6, i64 116, !10, i64 120, !10, i64 128, !7, i64 136, !10, i64 144}
!26 = !{!"lpt_decision", !6, i64 0, !6, i64 4}
!27 = !{!"", !18, i64 0, !18, i64 8}
!28 = !{i8 0, i8 2}
!29 = !{!30, !10, i64 8}
!30 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!31 = !{!32, !6, i64 24}
!32 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!33 = !{!34, !10, i64 8}
!34 = !{!"dom_walk_data", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !18, i64 48, !10, i64 56}
!35 = !{!34, !10, i64 16}
!36 = !{!34, !10, i64 24}
!37 = !{!32, !10, i64 0}
!38 = !{!17, !6, i64 80}
!39 = !{!40, !10, i64 24}
!40 = !{!"df_md_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!41 = !{!42, !10, i64 16}
!42 = !{!"df_lr_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!43 = !{!44, !10, i64 8}
!44 = !{!"rtl_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32}
!45 = !{!12, !10, i64 248}
!46 = !{!20, !10, i64 16}
!47 = !{!20, !10, i64 24}
!48 = !{!20, !10, i64 8}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = !{!52, !6, i64 0}
!52 = !{!"VEC_df_ref_base", !6, i64 0, !6, i64 4, !7, i64 8}
!53 = !{}
!54 = !{i32 0, i32 2}
!55 = !{!52, !6, i64 4}
!56 = !{!57, !6, i64 16}
!57 = !{!"dataflow", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 53, !7, i64 54}
!58 = !{!57, !10, i64 8}
!59 = distinct !{!59, !22}
!60 = !{!61, !10, i64 8}
!61 = !{!"df_scan_bb_info", !10, i64 0, !10, i64 8}
!62 = distinct !{!62, !22}
!63 = !{!61, !10, i64 0}
!64 = !{!65, !6, i64 0}
!65 = !{!"VEC_loop_p_base", !6, i64 0, !6, i64 4, !7, i64 8}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = !{!71, !6, i64 0}
!71 = !{!"rtvec_def", !6, i64 0, !7, i64 8}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = !{!75, !10, i64 8}
!75 = !{!"rtl_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!76 = !{!20, !6, i64 40}
!77 = !{!12, !10, i64 216}
!78 = !{!79, !10, i64 0}
!79 = !{!"df_reg_info", !10, i64 0, !6, i64 8}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = !{!17, !10, i64 0}
!83 = !{!84, !10, i64 0}
!84 = !{!"edge_def", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !18, i64 56}
!85 = !{!86, !6, i64 0}
!86 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
!87 = !{!88, !10, i64 1040}
!88 = !{!"gcc_target", !89, i64 0, !91, i64 368, !92, i64 664, !6, i64 744, !10, i64 752, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824, !10, i64 832, !10, i64 840, !10, i64 848, !10, i64 856, !10, i64 864, !10, i64 872, !10, i64 880, !10, i64 888, !10, i64 896, !10, i64 904, !10, i64 912, !10, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !18, i64 1064, !18, i64 1072, !10, i64 1080, !10, i64 1088, !10, i64 1096, !10, i64 1104, !10, i64 1112, !10, i64 1120, !10, i64 1128, !10, i64 1136, !10, i64 1144, !10, i64 1152, !10, i64 1160, !10, i64 1168, !93, i64 1176, !10, i64 1232, !10, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !10, i64 1272, !10, i64 1280, !10, i64 1288, !10, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !10, i64 1352, !10, i64 1360, !10, i64 1368, !10, i64 1376, !10, i64 1384, !10, i64 1392, !10, i64 1400, !10, i64 1408, !10, i64 1416, !10, i64 1424, !10, i64 1432, !10, i64 1440, !10, i64 1448, !10, i64 1456, !18, i64 1464, !94, i64 1472, !10, i64 1664, !10, i64 1672, !10, i64 1680, !10, i64 1688, !10, i64 1696, !10, i64 1704, !10, i64 1712, !10, i64 1720, !10, i64 1728, !10, i64 1736, !10, i64 1744, !10, i64 1752, !10, i64 1760, !10, i64 1768, !10, i64 1776, !95, i64 1784, !96, i64 1792, !97, i64 1896, !98, i64 1968, !10, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!89 = !{!"asm_out", !10, i64 0, !10, i64 8, !10, i64 16, !90, i64 24, !90, i64 56, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360}
!90 = !{!"asm_int_op", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!91 = !{!"sched", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!92 = !{!"vectorize", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!93 = !{!"addr_space", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!94 = !{!"calls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184}
!95 = !{!"c", !10, i64 0}
!96 = !{!"cxx", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96}
!97 = !{!"emutls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !7, i64 65}
!98 = !{!"target_option_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!99 = !{!100, !7, i64 32}
!100 = !{!"mem_attrs", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !7, i64 32}
!101 = distinct !{!101, !22}
!102 = !{!103, !10, i64 0}
!103 = !{!"find_occurrence_data", !10, i64 0, !10, i64 8}
!104 = !{!103, !10, i64 8}
