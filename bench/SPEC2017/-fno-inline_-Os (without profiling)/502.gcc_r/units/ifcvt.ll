; ModuleID = 'ifcvt.c'
source_filename = "ifcvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ce_if_block = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.noce_if_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ce1\00", align 1
@pass_rtl_ifcvt = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_if_conversion, ptr @rest_of_handle_if_conversion, ptr null, ptr null, i32 0, i32 141, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"ce2\00", align 1
@pass_if_after_combine = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_handle_if_after_combine, ptr @rest_of_handle_if_after_combine, ptr null, ptr null, i32 0, i32 141, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ce3\00", align 1
@pass_if_after_reload = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_handle_if_after_reload, ptr @rest_of_handle_if_after_reload, ptr null, ptr null, i32 0, i32 154, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_if_conversion = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@num_possible_if_blocks = internal unnamed_addr global i32 0, align 4
@num_updated_if_blocks = internal unnamed_addr global i32 0, align 4
@num_true_changes = internal unnamed_addr global i32 0, align 4
@cond_exec_changed_p = internal unnamed_addr global i1 false, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"\0A\0A========== Pass %d ==========\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"\0A\0A========== no more changes\0A\00", align 1
@max_regno = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"\0A%d possible IF blocks searched.\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%d IF blocks converted.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%d true changes made.\0A\0A\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@optab_table = external global [159 x %struct.optab_d], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Conversion succeeded on pass %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ifcvt.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"\0AIF-THEN%s-JOIN block found, pass %d, test %d, then %d\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"-ELSE\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c", else %d\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c", join %d\0A\00", align 1
@ix86_branch_cost = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@cse_not_expected = external local_unnamed_addr global i32, align 4
@code_to_optab = external local_unnamed_addr global [140 x ptr], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@epilogue_completed = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [72 x i8] c"\0AIF-THEN%s block found, pass %d, start block %d [insn %d], then %d [%d]\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c", else %d [%d]\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c", join %d [%d]\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c", %d %s block%s last test %d [%d]\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"%d insn%s converted to conditional execution.\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c" was\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"s were\00", align 1
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [41 x i8] c"\0ATRAP-IF block found, start %d, trap %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"\0AIF-CASE-1 found, start %d, then %d\0A\00", align 1
@reg_obstack = external global %struct.bitmap_obstack, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.29 = private unnamed_addr constant [37 x i8] c"\0AIF-CASE-2 found, start %d, else %d\0A\00", align 1
@flag_if_conversion2 = external local_unnamed_addr global i32, align 4
@switch.table.noce_try_minmax = private unnamed_addr constant [15 x i32] [i32 70, i32 70, i32 71, i32 71, i32 72, i32 72, i32 73, i32 73, i32 71, i32 71, i32 71, i32 70, i32 70, i32 71, i32 71], align 4
@switch.table.noce_try_minmax.30 = private unnamed_addr constant [15 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_if_conversion() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @dbg_cnt(i32 noundef 18) #16
  %5 = icmp ne i8 %4, 0
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i8 [ 0, %0 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_if_conversion() #0 {
  %1 = load i32, ptr @flag_if_conversion, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !5
  tail call void @dump_flow_info(ptr noundef nonnull %4, i32 noundef %7) #16
  br label %8

8:                                                ; preds = %6, %3
  %9 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #16
  tail call fastcc void @if_convert() #17
  br label %10

10:                                               ; preds = %8, %0
  %11 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #16
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_if_after_combine() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_if_conversion, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 19) #16
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_if_after_combine() #0 {
  tail call fastcc void @if_convert() #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_if_after_reload() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_if_conversion2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 20) #16
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_if_after_reload() #0 {
  tail call fastcc void @if_convert() #17
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @if_convert() unnamed_addr #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @df_live_add_problem() #16
  tail call void @df_live_set_all_dirty() #16
  br label %4

4:                                                ; preds = %3, %0
  store i32 0, ptr @num_possible_if_blocks, align 4, !tbaa !5
  store i32 0, ptr @num_updated_if_blocks, align 4, !tbaa !5
  store i32 0, ptr @num_true_changes, align 4, !tbaa !5
  tail call void @loop_optimizer_init(i32 noundef 16) #16
  tail call void @mark_loop_exit_edges() #16
  tail call void @loop_optimizer_finalize() #16
  tail call void @free_dominance_info(i32 noundef 1) #16
  tail call void @calculate_dominance_info(i32 noundef 2) #16
  %5 = tail call i32 @df_set_flags(i32 noundef 1) #16
  br label %6

6:                                                ; preds = %62, %4
  %7 = phi i32 [ 0, %4 ], [ %9, %62 ]
  tail call void @df_analyze() #16
  %8 = tail call i32 @df_clear_flags(i32 noundef 1) #16
  store i1 false, ptr @cond_exec_changed_p, align 4
  %9 = add nuw nsw i32 %7, 1
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %11 = icmp ne ptr %10, null
  %12 = icmp ne i32 %7, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.3, i32 noundef %9) #17
  br label %16

16:                                               ; preds = %14, %6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %16, %33
  %27 = phi ptr [ %34, %33 ], [ %22, %16 ]
  %28 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %27) #16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @find_if_header(ptr noundef %27, i32 noundef %9) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %35
  %34 = phi ptr [ %31, %30 ], [ %37, %35 ]
  br label %26, !llvm.loop !19

35:                                               ; preds = %26, %30
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !15
  %38 = load ptr, ptr @cfun, align 8, !tbaa !9
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !18
  %43 = icmp eq ptr %37, %42
  br i1 %43, label %44, label %33

44:                                               ; preds = %35, %16
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %46 = icmp ne ptr %45, null
  %47 = load i1, ptr @cond_exec_changed_p, align 4
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  %53 = tail call ptr @get_insns() #16
  br i1 %52, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !5
  tail call void @print_rtl_slim_with_bb(ptr noundef nonnull %45, ptr noundef %53, i32 noundef %55) #16
  br label %57

56:                                               ; preds = %49
  tail call void @print_rtl_with_bb(ptr noundef nonnull %45, ptr noundef %53) #16
  br label %57

57:                                               ; preds = %54, %56
  %58 = load i1, ptr @cond_exec_changed_p, align 4
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !9
  br label %63

61:                                               ; preds = %44
  br i1 %47, label %62, label %63

62:                                               ; preds = %61, %57
  br label %6, !llvm.loop !21

63:                                               ; preds = %61, %59
  %64 = phi ptr [ %60, %59 ], [ %45, %61 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 29, i64 1, ptr nonnull %64)
  br label %68

68:                                               ; preds = %66, %63
  tail call void @free_dominance_info(i32 noundef 2) #16
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @fflush(ptr noundef nonnull %69) #17
  br label %73

73:                                               ; preds = %71, %68
  tail call void @clear_aux_for_blocks() #16
  %74 = load i32, ptr @max_regno, align 4, !tbaa !5
  %75 = tail call i32 @max_reg_num() #16
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call i32 @max_reg_num() #16
  store i32 %78, ptr @max_regno, align 4, !tbaa !5
  br label %79

79:                                               ; preds = %77, %73
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %81 = icmp ne ptr %80, null
  %82 = load i32, ptr @num_possible_if_blocks, align 4
  %83 = icmp sgt i32 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %80, ptr noundef nonnull @.str.5, i32 noundef %82) #17
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %88 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !5
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.6, i32 noundef %88) #17
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %91 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.7, i32 noundef %91) #17
  br label %93

93:                                               ; preds = %85, %79
  %94 = load i32, ptr @optimize, align 4, !tbaa !5
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load ptr, ptr @df, align 8, !tbaa !9
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 1, i64 2
  %99 = load ptr, ptr %98, align 8, !tbaa !9
  tail call void @df_remove_problem(ptr noundef %99) #16
  br label %100

100:                                              ; preds = %96, %93
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @df_live_add_problem() local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_live_set_all_dirty() local_unnamed_addr #1

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_loop_exit_edges() local_unnamed_addr #1

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_get_bb_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_if_header(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ce_if_block, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #17
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %98

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 0) #17
  %10 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 1) #17
  %11 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %12) #16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %98

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %17) #16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %98

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !25
  %23 = and i32 %22, 14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %98

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !25
  %28 = and i32 %27, 14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %25
  %31 = or i32 %27, %22
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %98

34:                                               ; preds = %30
  %35 = and i32 %22, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = and i32 %27, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %98, label %40

40:                                               ; preds = %37, %34
  %41 = phi ptr [ %9, %34 ], [ %10, %37 ]
  %42 = phi ptr [ %10, %34 ], [ %9, %37 ]
  %43 = getelementptr inbounds i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %43, i8 0, i64 48, i1 false)
  store ptr %0, ptr %3, align 8, !tbaa !26
  %44 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !23
  %46 = getelementptr inbounds %struct.ce_if_block, ptr %3, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !28
  %47 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !23
  %49 = getelementptr inbounds %struct.ce_if_block, ptr %3, i64 0, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !29
  %50 = getelementptr inbounds %struct.ce_if_block, ptr %3, i64 0, i32 12
  store i32 %1, ptr %50, align 4, !tbaa !30
  %51 = load i32, ptr @reload_completed, align 4, !tbaa !5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = tail call fastcc i32 @noce_find_if_block(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42, i32 noundef %1) #17, !range !31
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %53, %40
  %57 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !32
  %58 = tail call zeroext i8 %57() #16
  %59 = icmp ne i8 %58, 0
  %60 = load i32, ptr @reload_completed, align 4
  %61 = icmp ne i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = call fastcc i32 @cond_exec_find_if_block(ptr noundef nonnull %3) #17, !range !31
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %63, %56
  %67 = load i32, ptr @word_mode, align 4, !tbaa !5
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 118, i32 4, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !44
  %71 = icmp eq i32 %70, 2956
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = tail call fastcc i32 @find_cond_trap(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42) #17, !range !31
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72, %66
  %76 = tail call i32 @dom_info_state(i32 noundef 2) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !32
  %80 = tail call zeroext i8 %79() #16
  %81 = icmp eq i8 %80, 0
  %82 = load i32, ptr @reload_completed, align 4
  %83 = icmp ne i32 %82, 0
  %84 = select i1 %81, i1 true, i1 %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = tail call fastcc i32 @find_if_case_1(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42) #17, !range !31
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = tail call fastcc i32 @find_if_case_2(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42) #17, !range !31
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88, %85, %72, %63, %53
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %92, ptr noundef nonnull @.str.8, i32 noundef %1) #17
  br label %96

96:                                               ; preds = %94, %91
  store i1 true, ptr @cond_exec_changed_p, align 4
  %97 = load ptr, ptr %3, align 8, !tbaa !26
  br label %98

98:                                               ; preds = %75, %78, %88, %37, %30, %20, %25, %15, %8, %2, %96
  %99 = phi ptr [ %97, %96 ], [ null, %2 ], [ null, %8 ], [ null, %15 ], [ null, %25 ], [ null, %20 ], [ null, %30 ], [ null, %37 ], [ null, %88 ], [ null, %78 ], [ null, %75 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #18
  ret ptr %99
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @print_rtl_slim_with_bb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_rtl_with_bb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @clear_aux_for_blocks() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_remove_problem(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !46
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_find_if_block(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.noce_if_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #18
  %7 = load i32, ptr @reload_completed, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2792, ptr noundef nonnull @.str.10) #16
  br label %10

10:                                               ; preds = %4, %9
  %11 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %12) #17, !range !48
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %12) #17, !range !48
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %20) #17, !range !48
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %20) #17, !range !48
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @single_succ(ptr noundef %12) #17
  %28 = load ptr, ptr %19, align 8, !tbaa !23
  %29 = tail call fastcc ptr @single_succ(ptr noundef %28) #17
  %30 = icmp eq ptr %27, %29
  %31 = load ptr, ptr %11, align 8, !tbaa !23
  br i1 %30, label %32, label %35

32:                                               ; preds = %26
  %33 = load ptr, ptr %19, align 8, !tbaa !23
  %34 = tail call fastcc ptr @single_succ(ptr noundef %31) #17
  br label %64

35:                                               ; preds = %26, %23, %18, %15, %10
  %36 = phi ptr [ %31, %26 ], [ %12, %23 ], [ %12, %18 ], [ %12, %15 ], [ %12, %10 ]
  %37 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %36) #17, !range !48
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %36) #17, !range !48
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @single_succ(ptr noundef %36) #17
  %44 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !23
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load ptr, ptr %11, align 8, !tbaa !23
  br label %64

49:                                               ; preds = %42, %39, %35
  %50 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !23
  %52 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %51) #17, !range !48
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %144, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %51) #17, !range !48
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %144, label %57

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @single_succ(ptr noundef %51) #17
  %59 = load ptr, ptr %11, align 8, !tbaa !23
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %144

61:                                               ; preds = %57
  %62 = load ptr, ptr %50, align 8, !tbaa !23
  %63 = tail call fastcc ptr @single_succ(ptr noundef %62) #17
  br label %64

64:                                               ; preds = %47, %61, %32
  %65 = phi ptr [ %33, %32 ], [ null, %47 ], [ null, %61 ]
  %66 = phi ptr [ %34, %32 ], [ %43, %47 ], [ %63, %61 ]
  %67 = phi i8 [ 0, %32 ], [ 0, %47 ], [ 1, %61 ]
  %68 = phi ptr [ %31, %32 ], [ %48, %47 ], [ %62, %61 ]
  %69 = tail call fastcc ptr @single_succ_edge(ptr noundef %68) #17
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !25
  %72 = and i32 %71, 14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %144

74:                                               ; preds = %64
  %75 = icmp eq ptr %65, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %74
  %77 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %65) #17
  %78 = getelementptr inbounds %struct.edge_def, ptr %77, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !25
  %80 = and i32 %79, 14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %144

82:                                               ; preds = %76, %74
  %83 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !5
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr @num_possible_if_blocks, align 4, !tbaa !5
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %104, label %87

87:                                               ; preds = %82
  %88 = select i1 %75, ptr @.str.13, ptr @.str.12
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !49
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !49
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %85, ptr noundef nonnull @.str.11, ptr noundef nonnull %88, i32 noundef %3, i32 noundef %90, i32 noundef %92) #17
  br i1 %75, label %99, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !49
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.14, i32 noundef %97) #17
  br label %99

99:                                               ; preds = %94, %87
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !49
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.15, i32 noundef %102) #17
  br label %104

104:                                              ; preds = %99, %82
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !50
  %107 = getelementptr inbounds %struct.rtl_bb_info, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !51
  %109 = tail call i32 @onlyjump_p(ptr noundef %108) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %144, label %111

111:                                              ; preds = %104
  %112 = call fastcc ptr @noce_get_condition(ptr noundef %108, ptr noundef nonnull %5, i8 noundef zeroext %67) #17
  %113 = icmp eq ptr %112, null
  br i1 %113, label %144, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !50
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 16711680
  %119 = icmp eq i32 %118, 65536
  br i1 %119, label %144, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %121, i8 0, i64 48, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !53
  %122 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 1
  store ptr %68, ptr %122, align 8, !tbaa !55
  %123 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 2
  store ptr %65, ptr %123, align 8, !tbaa !56
  %124 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 3
  store ptr %66, ptr %124, align 8, !tbaa !57
  %125 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 5
  store ptr %112, ptr %125, align 8, !tbaa !58
  %126 = load ptr, ptr %5, align 8, !tbaa !9
  %127 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 6
  store ptr %126, ptr %127, align 8, !tbaa !59
  %128 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 4
  store ptr %108, ptr %128, align 8, !tbaa !60
  %129 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 12
  store i8 %67, ptr %129, align 8, !tbaa !61
  %130 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %0) #16
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %120
  %133 = call zeroext i8 @predictable_edge_p(ptr noundef nonnull %1) #16
  %134 = icmp eq i8 %133, 0
  %135 = load i32, ptr @ix86_branch_cost, align 4
  %136 = select i1 %134, i32 %135, i32 0
  br label %137

137:                                              ; preds = %120, %132
  %138 = phi i32 [ %136, %132 ], [ 2, %120 ]
  %139 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 13
  store i32 %138, ptr %139, align 4, !tbaa !62
  %140 = call fastcc i32 @noce_process_if_block(ptr noundef nonnull %6) #17, !range !31
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call fastcc i32 @cond_move_process_if_block(ptr noundef nonnull %6) #17, !range !31
  br label %144

144:                                              ; preds = %142, %137, %114, %111, %104, %76, %64, %49, %54, %57
  %145 = phi i32 [ 0, %57 ], [ 0, %54 ], [ 0, %49 ], [ 0, %64 ], [ 0, %76 ], [ 0, %104 ], [ 0, %111 ], [ 0, %114 ], [ 1, %137 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret i32 %145
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_exec_find_if_block(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %9 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  store ptr %4, ptr %9, align 8, !tbaa !63
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !32
  %11 = tail call zeroext i8 %10() #16
  %12 = icmp ne i8 %11, 0
  %13 = load i32, ptr @reload_completed, align 4
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3188, ptr noundef nonnull @.str.10) #16
  br label %17

17:                                               ; preds = %1, %16
  %18 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %4) #17, !range !48
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %73, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @single_pred_edge(ptr noundef %4) #17
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !25
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %73

25:                                               ; preds = %20
  %26 = tail call fastcc ptr @single_pred(ptr noundef %4) #17
  %27 = load ptr, ptr @cfun, align 8, !tbaa !9
  %28 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %27) #16
  %29 = icmp eq i8 %28, 0
  %30 = load i32, ptr @ix86_branch_cost, align 4
  %31 = add nsw i32 %30, 1
  %32 = select i1 %29, i32 3, i32 %31
  %33 = tail call fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %26, ptr noundef %8) #17
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = tail call fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %26, ptr noundef %6) #17
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %73

38:                                               ; preds = %35, %25
  %39 = phi i32 [ 1, %25 ], [ 0, %35 ]
  %40 = phi ptr [ %8, %25 ], [ %6, %35 ]
  %41 = phi i32 [ %33, %25 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  store i32 %39, ptr %42, align 8, !tbaa !64
  %43 = icmp eq ptr %40, null
  %44 = icmp sgt i32 %41, %32
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %73, label %46

46:                                               ; preds = %38
  store ptr %4, ptr %9, align 8, !tbaa !63
  br label %47

47:                                               ; preds = %56, %46
  %48 = phi i32 [ %41, %46 ], [ %58, %56 ]
  %49 = phi i32 [ 0, %46 ], [ %52, %56 ]
  %50 = phi i32 [ 0, %46 ], [ %53, %56 ]
  %51 = phi ptr [ %26, %46 ], [ %57, %56 ]
  store ptr %51, ptr %0, align 8, !tbaa !26
  %52 = add nsw i32 %49, %48
  %53 = add nuw nsw i32 %50, 1
  %54 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %51) #17, !range !48
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = tail call fastcc ptr @single_pred(ptr noundef %51) #17
  %58 = tail call fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %57, ptr noundef nonnull %40) #17
  %59 = icmp slt i32 %58, 0
  %60 = add nsw i32 %58, %52
  %61 = icmp sgt i32 %60, %32
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %63, label %47, !llvm.loop !65

63:                                               ; preds = %56, %47
  %64 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  store i32 %53, ptr %64, align 8, !tbaa !66
  %65 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 8
  store i32 %52, ptr %65, align 4, !tbaa !67
  %66 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 6
  store i32 %53, ptr %70, align 4, !tbaa !68
  br label %73

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 7
  store i32 %53, ptr %72, align 8, !tbaa !69
  br label %73

73:                                               ; preds = %35, %38, %71, %69, %20, %17
  %74 = phi ptr [ %4, %20 ], [ %4, %17 ], [ %4, %38 ], [ %51, %71 ], [ %51, %69 ], [ %4, %35 ]
  %75 = load ptr, ptr %6, align 8, !tbaa !70
  %76 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %75) #17
  %77 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !69
  %79 = sub i32 %76, %78
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %317

81:                                               ; preds = %73
  %82 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %6) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !71
  %83 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %82, ptr %83, align 8, !tbaa.struct !72
  %84 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %82, ptr noundef nonnull %2) #17, !range !48
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81, %92
  %87 = load ptr, ptr %2, align 8, !tbaa !9
  %88 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !25
  %90 = and i32 %89, 14
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %317

92:                                               ; preds = %86
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %93 = load i32, ptr %3, align 8
  %94 = load ptr, ptr %83, align 8
  %95 = call fastcc zeroext i8 @ei_cond(i32 %93, ptr %94, ptr noundef nonnull %2) #17, !range !48
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %86, !llvm.loop !73

97:                                               ; preds = %92, %81
  %98 = tail call fastcc ptr @ei_start_1(ptr noundef %8) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !71
  store ptr %98, ptr %83, align 8, !tbaa.struct !72
  %99 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %98, ptr noundef nonnull %2) #17, !range !48
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %97, %107
  %102 = load ptr, ptr %2, align 8, !tbaa !9
  %103 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !25
  %105 = and i32 %104, 14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %317

107:                                              ; preds = %101
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %108 = load i32, ptr %3, align 8
  %109 = load ptr, ptr %83, align 8
  %110 = call fastcc zeroext i8 @ei_cond(i32 %108, ptr %109, ptr noundef nonnull %2) #17, !range !48
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %101, !llvm.loop !74

112:                                              ; preds = %107, %97
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !22
  %115 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %114) #17
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %112
  %118 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %6) #17, !range !48
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %317, label %120

120:                                              ; preds = %117
  %121 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %6) #17
  %122 = getelementptr inbounds %struct.edge_def, ptr %121, i64 0, i32 7
  %123 = load i32, ptr %122, align 8, !tbaa !25
  %124 = and i32 %123, 14
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %317

126:                                              ; preds = %120
  %127 = load i32, ptr @epilogue_completed, align 4, !tbaa !5
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !50
  %132 = getelementptr inbounds %struct.rtl_bb_info, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !51
  %134 = tail call zeroext i8 @tablejump_p(ptr noundef %133, ptr noundef null, ptr noundef null) #16
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %317

136:                                              ; preds = %129, %126, %112
  %137 = load ptr, ptr %113, align 8, !tbaa !22
  %138 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %137) #17
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %8) #17, !range !48
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %317, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %145 = load ptr, ptr %144, align 8, !tbaa !50
  %146 = getelementptr inbounds %struct.rtl_bb_info, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !50
  %148 = icmp eq ptr %147, null
  br i1 %148, label %194, label %149

149:                                              ; preds = %143, %156
  %150 = phi ptr [ %158, %156 ], [ %147, %143 ]
  %151 = load i32, ptr %150, align 8
  %152 = trunc i32 %151 to i16
  switch i16 %152, label %194 [
    i16 13, label %153
    i16 9, label %160
  ]

153:                                              ; preds = %149
  %154 = load ptr, ptr %145, align 8, !tbaa !75
  %155 = icmp eq ptr %150, %154
  br i1 %155, label %194, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1, i32 0, i32 0, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !50
  %159 = icmp eq ptr %158, null
  br i1 %159, label %194, label %149, !llvm.loop !76

160:                                              ; preds = %149
  %161 = tail call i32 @simplejump_p(ptr noundef nonnull %150) #16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %317, label %194

163:                                              ; preds = %136
  %164 = tail call fastcc ptr @single_succ(ptr noundef nonnull %6) #17
  %165 = icmp eq ptr %164, %8
  br i1 %165, label %194, label %166

166:                                              ; preds = %163
  %167 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %8) #17, !range !48
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %317, label %169

169:                                              ; preds = %166
  %170 = tail call fastcc ptr @single_succ(ptr noundef nonnull %6) #17
  %171 = tail call fastcc ptr @single_succ(ptr noundef %8) #17
  %172 = icmp eq ptr %170, %171
  br i1 %172, label %173, label %317

173:                                              ; preds = %169
  %174 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %8) #17, !range !48
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %317, label %176

176:                                              ; preds = %173
  %177 = tail call fastcc ptr @single_succ_edge(ptr noundef %8) #17
  %178 = getelementptr inbounds %struct.edge_def, ptr %177, i64 0, i32 7
  %179 = load i32, ptr %178, align 8, !tbaa !25
  %180 = and i32 %179, 14
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %317

182:                                              ; preds = %176
  %183 = load i32, ptr @epilogue_completed, align 4, !tbaa !5
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %187 = load ptr, ptr %186, align 8, !tbaa !50
  %188 = getelementptr inbounds %struct.rtl_bb_info, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !51
  %190 = tail call zeroext i8 @tablejump_p(ptr noundef %189, ptr noundef null, ptr noundef null) #16
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %317

192:                                              ; preds = %185, %182
  %193 = tail call fastcc ptr @single_succ(ptr noundef %8) #17
  br label %194

194:                                              ; preds = %156, %153, %149, %143, %160, %163, %192
  %195 = phi ptr [ %193, %192 ], [ %8, %163 ], [ %8, %160 ], [ %8, %143 ], [ %8, %149 ], [ %8, %153 ], [ %8, %156 ]
  %196 = phi ptr [ %8, %192 ], [ null, %163 ], [ null, %160 ], [ null, %143 ], [ null, %149 ], [ null, %153 ], [ null, %156 ]
  %197 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !5
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr @num_possible_if_blocks, align 4, !tbaa !5
  %199 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %200 = icmp eq ptr %199, null
  br i1 %200, label %284, label %201

201:                                              ; preds = %194
  %202 = icmp eq ptr %196, null
  %203 = select i1 %202, ptr @.str.13, ptr @.str.12
  %204 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 12
  %205 = load i32, ptr %204, align 4, !tbaa !30
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %207 = load i32, ptr %206, align 8, !tbaa !49
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !50
  %210 = load ptr, ptr %209, align 8, !tbaa !75
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %201
  %213 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !50
  br label %215

215:                                              ; preds = %201, %212
  %216 = phi i32 [ %214, %212 ], [ -1, %201 ]
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %218 = load i32, ptr %217, align 8, !tbaa !49
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %220 = load ptr, ptr %219, align 8, !tbaa !50
  %221 = load ptr, ptr %220, align 8, !tbaa !75
  %222 = icmp eq ptr %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !50
  br label %226

226:                                              ; preds = %215, %223
  %227 = phi i32 [ %225, %223 ], [ -1, %215 ]
  %228 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %199, ptr noundef nonnull @.str.17, ptr noundef nonnull %203, i32 noundef %205, i32 noundef %207, i32 noundef %216, i32 noundef %218, i32 noundef %227) #17
  br i1 %202, label %243, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %231 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 9
  %232 = load i32, ptr %231, align 8, !tbaa !49
  %233 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 7
  %234 = load ptr, ptr %233, align 8, !tbaa !50
  %235 = load ptr, ptr %234, align 8, !tbaa !75
  %236 = icmp eq ptr %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %229
  %238 = getelementptr inbounds %struct.rtx_def, ptr %235, i64 0, i32 1
  %239 = load i32, ptr %238, align 8, !tbaa !50
  br label %240

240:                                              ; preds = %229, %237
  %241 = phi i32 [ %239, %237 ], [ -1, %229 ]
  %242 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef nonnull @.str.18, i32 noundef %232, i32 noundef %241) #17
  br label %243

243:                                              ; preds = %240, %226
  %244 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %245 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 9
  %246 = load i32, ptr %245, align 8, !tbaa !49
  %247 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 7
  %248 = load ptr, ptr %247, align 8, !tbaa !50
  %249 = load ptr, ptr %248, align 8, !tbaa !75
  %250 = icmp eq ptr %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.rtx_def, ptr %249, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !50
  br label %254

254:                                              ; preds = %243, %251
  %255 = phi i32 [ %253, %251 ], [ -1, %243 ]
  %256 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef nonnull @.str.19, i32 noundef %246, i32 noundef %255) #17
  %257 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %258 = load i32, ptr %257, align 8, !tbaa !66
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %281

260:                                              ; preds = %254
  %261 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %262 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %263 = load i32, ptr %262, align 8, !tbaa !64
  %264 = icmp eq i32 %263, 0
  %265 = select i1 %264, ptr @.str.22, ptr @.str.21
  %266 = icmp eq i32 %258, 1
  %267 = select i1 %266, ptr @.str.13, ptr @.str.23
  %268 = load ptr, ptr %9, align 8, !tbaa !63
  %269 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 9
  %270 = load i32, ptr %269, align 8, !tbaa !49
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 7
  %272 = load ptr, ptr %271, align 8, !tbaa !50
  %273 = load ptr, ptr %272, align 8, !tbaa !75
  %274 = icmp eq ptr %273, null
  br i1 %274, label %278, label %275

275:                                              ; preds = %260
  %276 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1
  %277 = load i32, ptr %276, align 8, !tbaa !50
  br label %278

278:                                              ; preds = %260, %275
  %279 = phi i32 [ %277, %275 ], [ -1, %260 ]
  %280 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef nonnull @.str.20, i32 noundef %258, ptr noundef nonnull %265, ptr noundef nonnull %267, i32 noundef %270, i32 noundef %279) #17
  br label %281

281:                                              ; preds = %278, %254
  %282 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %283 = tail call i32 @fputc(i32 noundef 10, ptr noundef %282) #17
  br label %284

284:                                              ; preds = %281, %194
  %285 = icmp ne ptr %196, null
  br i1 %285, label %286, label %290

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %288 = load ptr, ptr %287, align 8, !tbaa !15
  %289 = icmp eq ptr %288, %196
  br i1 %289, label %290, label %317

290:                                              ; preds = %286, %284
  %291 = phi ptr [ %196, %286 ], [ %6, %284 ]
  %292 = getelementptr inbounds %struct.basic_block_def, ptr %291, i64 0, i32 6
  %293 = load ptr, ptr %292, align 8, !tbaa !15
  %294 = icmp eq ptr %293, %195
  br i1 %294, label %304, label %295

295:                                              ; preds = %290
  %296 = load ptr, ptr @cfun, align 8, !tbaa !9
  %297 = getelementptr inbounds %struct.function, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !11
  %299 = getelementptr inbounds %struct.control_flow_graph, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !18
  %301 = icmp eq ptr %195, %300
  %302 = or i1 %285, %301
  %303 = select i1 %301, ptr %195, ptr null
  br i1 %302, label %304, label %317

304:                                              ; preds = %295, %290
  %305 = phi ptr [ %303, %295 ], [ %195, %290 ]
  store ptr %196, ptr %7, align 8, !tbaa !29
  %306 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 3
  store ptr %305, ptr %306, align 8, !tbaa !77
  %307 = tail call fastcc i32 @cond_exec_process_if_block(ptr noundef nonnull %0, i32 noundef 1) #17
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %311 = load i32, ptr %310, align 8, !tbaa !66
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %309
  tail call void @cancel_changes(i32 noundef 0) #16
  %314 = tail call fastcc i32 @cond_exec_process_if_block(ptr noundef nonnull %0, i32 noundef 0) #17
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313, %309
  br label %317

317:                                              ; preds = %86, %101, %160, %295, %313, %304, %286, %166, %169, %173, %176, %185, %140, %117, %120, %129, %73, %316
  %318 = phi i32 [ 0, %316 ], [ 0, %73 ], [ 0, %129 ], [ 0, %120 ], [ 0, %117 ], [ 0, %140 ], [ 0, %185 ], [ 0, %176 ], [ 0, %173 ], [ 0, %169 ], [ 0, %166 ], [ 0, %286 ], [ 1, %304 ], [ 1, %313 ], [ 0, %295 ], [ 0, %160 ], [ 0, %101 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i32 %318
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_cond_trap(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %9 = tail call fastcc ptr @block_has_only_trap(ptr noundef %6) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = tail call fastcc ptr @block_has_only_trap(ptr noundef %8) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %104, label %14

14:                                               ; preds = %11, %3
  %15 = phi ptr [ %9, %3 ], [ %12, %11 ]
  %16 = phi ptr [ %6, %3 ], [ %8, %11 ]
  %17 = phi ptr [ %8, %3 ], [ %6, %11 ]
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !49
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %18, ptr noundef nonnull @.str.27, i32 noundef %22, i32 noundef %24) #17
  br label %26

26:                                               ; preds = %20, %14
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !51
  %31 = call fastcc ptr @noce_get_condition(ptr noundef %30, ptr noundef nonnull %4, i8 noundef zeroext 0) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %104, label %33

33:                                               ; preds = %26
  %34 = call i32 @onlyjump_p(ptr noundef %30) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %104, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !50
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 16711680
  %41 = icmp eq i32 %40, 65536
  br i1 %41, label %104, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %31, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq ptr %6, %16
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call i32 @reversed_comparison_code(ptr noundef nonnull %31, ptr noundef %30) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %104, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %37, align 8, !tbaa !50
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi ptr [ %50, %49 ], [ %38, %42 ]
  %53 = phi i32 [ %47, %49 ], [ %44, %42 ]
  %54 = call ptr @copy_rtx(ptr noundef %52) #16
  %55 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  %57 = call ptr @copy_rtx(ptr noundef %56) #16
  %58 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = call ptr @gen_cond_trap(i32 noundef %53, ptr noundef %54, ptr noundef %57, ptr noundef %61) #16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %104, label %64

64:                                               ; preds = %51
  %65 = load ptr, ptr %4, align 8, !tbaa !9
  %66 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !50
  %68 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %62, ptr noundef %65, i32 noundef %67) #16
  %69 = select i1 %45, ptr %1, ptr %2
  call void @remove_edge(ptr noundef %69) #16
  call void @df_set_bb_dirty(ptr noundef nonnull %0) #16
  call void @df_set_bb_dirty(ptr noundef %6) #16
  call void @df_set_bb_dirty(ptr noundef %8) #16
  %70 = load ptr, ptr %16, align 8, !tbaa !70
  %71 = call fastcc i32 @VEC_edge_base_length(ptr noundef %70) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  call void @delete_basic_block(ptr noundef nonnull %16) #16
  %74 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr @num_true_changes, align 4, !tbaa !5
  br label %76

76:                                               ; preds = %73, %64
  %77 = call i32 @current_ir_type() #16
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #17
  %81 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 7
  %82 = load i32, ptr %81, align 8, !tbaa !25
  %83 = or i32 %82, 1
  store i32 %83, ptr %81, align 8, !tbaa !25
  br label %94

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !50
  %87 = call ptr @gen_jump(ptr noundef %86) #16
  %88 = call ptr @emit_jump_insn_after(ptr noundef %87, ptr noundef %30) #16
  %89 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !50
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %89, align 8, !tbaa !50
  %92 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %86, ptr %92, align 8, !tbaa !50
  %93 = call ptr @emit_barrier_after(ptr noundef %88) #16
  br label %94

94:                                               ; preds = %84, %79
  %95 = call ptr @delete_insn(ptr noundef %30) #16
  %96 = call zeroext i8 @can_merge_blocks_p(ptr noundef nonnull %0, ptr noundef %17) #16
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  call void @merge_blocks(ptr noundef nonnull %0, ptr noundef %17) #16
  %99 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr @num_true_changes, align 4, !tbaa !5
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !5
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr @num_updated_if_blocks, align 4, !tbaa !5
  br label %104

104:                                              ; preds = %51, %46, %36, %33, %26, %11, %101
  %105 = phi i32 [ 1, %101 ], [ 0, %11 ], [ 0, %26 ], [ 0, %33 ], [ 0, %36 ], [ 0, %46 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i32 %105
}

; Function Attrs: optsize
declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_if_case_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 29, ptr noundef null) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %136

16:                                               ; preds = %13, %3
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call ptr @find_reg_note(ptr noundef nonnull %20, i32 noundef 29, ptr noundef null) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %136

25:                                               ; preds = %22, %16
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = tail call ptr @find_reg_note(ptr noundef nonnull %29, i32 noundef 29, ptr noundef null) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %136

34:                                               ; preds = %31, %25
  %35 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %5) #17, !range !48
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %136, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %5) #17
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !25
  %41 = and i32 %40, 15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %136

43:                                               ; preds = %37
  %44 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %5) #17, !range !48
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %136, label %46

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %5) #16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %136

49:                                               ; preds = %46
  %50 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !5
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr @num_possible_if_blocks, align 4, !tbaa !5
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !49
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !49
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %52, ptr noundef nonnull @.str.28, i32 noundef %56, i32 noundef %58) #17
  br label %60

60:                                               ; preds = %54, %49
  %61 = load ptr, ptr %1, align 8, !tbaa !78
  %62 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %61) #16
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = tail call zeroext i8 @predictable_edge_p(ptr noundef nonnull %1) #16
  %66 = icmp eq i8 %65, 0
  %67 = load i32, ptr @ix86_branch_cost, align 4
  %68 = shl nsw i32 %67, 2
  %69 = select i1 %66, i32 %68, i32 0
  br label %70

70:                                               ; preds = %60, %64
  %71 = phi i32 [ %69, %64 ], [ 8, %60 ]
  %72 = tail call fastcc zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef nonnull %5, i32 noundef %71) #17
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %136, label %74

74:                                               ; preds = %70
  %75 = tail call fastcc ptr @single_succ(ptr noundef nonnull %5) #17
  %76 = tail call fastcc i32 @dead_or_predicable(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %75, i32 noundef 1) #17, !range !31
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %136, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !15
  %81 = icmp eq ptr %80, %7
  br i1 %81, label %82, label %105

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !79
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load ptr, ptr @cfun, align 8, !tbaa !9
  %88 = getelementptr inbounds %struct.function, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !11
  %90 = getelementptr inbounds %struct.control_flow_graph, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !18
  %92 = icmp eq ptr %7, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !22
  %96 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %95, i32 noundef 0) #17
  %97 = getelementptr inbounds %struct.edge_def, ptr %96, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !25
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %95, i32 noundef 1) #17
  br label %103

103:                                              ; preds = %93, %101
  %104 = phi ptr [ %102, %101 ], [ %96, %93 ]
  tail call void @redirect_edge_succ(ptr noundef %104, ptr noundef nonnull %7) #16
  br label %118

105:                                              ; preds = %86, %82, %78
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !22
  %108 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %107, i32 noundef 0) #17
  %109 = getelementptr inbounds %struct.edge_def, ptr %108, i64 0, i32 7
  %110 = load i32, ptr %109, align 8, !tbaa !25
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %107, i32 noundef 1) #17
  br label %115

115:                                              ; preds = %105, %113
  %116 = phi ptr [ %114, %113 ], [ %108, %105 ]
  %117 = tail call ptr @redirect_edge_and_branch_force(ptr noundef %116, ptr noundef nonnull %7) #16
  br label %118

118:                                              ; preds = %115, %103
  %119 = phi ptr [ null, %103 ], [ %117, %115 ]
  tail call void @df_set_bb_dirty(ptr noundef nonnull %0) #16
  tail call void @df_set_bb_dirty(ptr noundef nonnull %7) #16
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %121 = load i32, ptr %120, align 8, !tbaa !49
  tail call void @delete_basic_block(ptr noundef nonnull %5) #16
  %122 = icmp eq ptr %119, null
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  tail call void @df_bb_replace(i32 noundef %121, ptr noundef nonnull %119) #16
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 13
  %125 = load i32, ptr %124, align 8, !tbaa !80
  %126 = and i32 %125, -97
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %128 = load i32, ptr %127, align 8, !tbaa !80
  %129 = and i32 %128, 96
  %130 = or disjoint i32 %129, %126
  store i32 %130, ptr %124, align 8, !tbaa !80
  br label %131

131:                                              ; preds = %123, %118
  %132 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr @num_true_changes, align 4, !tbaa !5
  %134 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !5
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr @num_updated_if_blocks, align 4, !tbaa !5
  br label %136

136:                                              ; preds = %74, %70, %46, %43, %37, %34, %13, %22, %31, %131
  %137 = phi i32 [ 1, %131 ], [ 0, %31 ], [ 0, %22 ], [ 0, %13 ], [ 0, %34 ], [ 0, %37 ], [ 0, %43 ], [ 0, %46 ], [ 0, %70 ], [ 0, %74 ]
  ret i32 %137
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_if_case_2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 29, ptr noundef null) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %106

16:                                               ; preds = %13, %3
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call ptr @find_reg_note(ptr noundef nonnull %20, i32 noundef 29, ptr noundef null) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %106

25:                                               ; preds = %22, %16
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = tail call ptr @find_reg_note(ptr noundef nonnull %29, i32 noundef 29, ptr noundef null) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %106

34:                                               ; preds = %31, %25
  %35 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %7) #17, !range !48
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %106, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %7) #17
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !25
  %41 = and i32 %40, 14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %106

43:                                               ; preds = %37
  %44 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %7) #17, !range !48
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %106, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !49
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %106, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %17, align 8, !tbaa !50
  %52 = getelementptr inbounds %struct.rtl_bb_info, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  %54 = tail call ptr @find_reg_note(ptr noundef %53, i32 noundef 13, ptr noundef null) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !50
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !50
  %61 = icmp sgt i64 %60, 4999
  br i1 %61, label %71, label %62

62:                                               ; preds = %56, %50
  %63 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !23
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !49
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %64) #16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %106, label %71

71:                                               ; preds = %68, %62, %56
  %72 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !5
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr @num_possible_if_blocks, align 4, !tbaa !5
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !49
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !49
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %74, ptr noundef nonnull @.str.29, i32 noundef %78, i32 noundef %80) #17
  br label %82

82:                                               ; preds = %76, %71
  %83 = load ptr, ptr %2, align 8, !tbaa !78
  %84 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %83) #16
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = tail call zeroext i8 @predictable_edge_p(ptr noundef nonnull %2) #16
  %88 = icmp eq i8 %87, 0
  %89 = load i32, ptr @ix86_branch_cost, align 4
  %90 = shl nsw i32 %89, 2
  %91 = select i1 %88, i32 %90, i32 0
  br label %92

92:                                               ; preds = %82, %86
  %93 = phi i32 [ %91, %86 ], [ 8, %82 ]
  %94 = tail call fastcc zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef nonnull %7, i32 noundef %93) #17
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !23
  %99 = tail call fastcc i32 @dead_or_predicable(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %98, i32 noundef 0) #17, !range !31
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  tail call void @df_set_bb_dirty(ptr noundef nonnull %0) #16
  tail call void @df_set_bb_dirty(ptr noundef nonnull %5) #16
  tail call void @delete_basic_block(ptr noundef nonnull %7) #16
  %102 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr @num_true_changes, align 4, !tbaa !5
  %104 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !5
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr @num_updated_if_blocks, align 4, !tbaa !5
  br label %106

106:                                              ; preds = %96, %92, %68, %46, %43, %37, %34, %13, %22, %31, %101
  %107 = phi i32 [ 1, %101 ], [ 0, %31 ], [ 0, %22 ], [ 0, %13 ], [ 0, %34 ], [ 0, %37 ], [ 0, %43 ], [ 0, %46 ], [ 0, %68 ], [ 0, %92 ], [ 0, %96 ]
  ret i32 %107
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !48
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #17
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @noce_get_condition(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call i32 @any_condjump_p(ptr noundef %0) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @pc_set(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 44
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %17, %19
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %15, %6
  %23 = phi i8 [ 0, %6 ], [ %21, %15 ]
  %24 = icmp ne i8 %2, 0
  %25 = zext i1 %24 to i8
  %26 = xor i8 %23, %25
  %27 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %53

34:                                               ; preds = %22
  %35 = lshr i32 %31, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !50
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  store ptr %0, ptr %1, align 8, !tbaa !9
  %42 = icmp eq i8 %26, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %28, align 8
  %45 = and i32 %44, 65535
  %46 = tail call i32 @reverse_condition(i32 noundef %45) #16
  %47 = load i32, ptr %28, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !50
  %52 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %46, i32 noundef %49, ptr noundef nonnull %30, ptr noundef %51) #16
  br label %56

53:                                               ; preds = %34, %22
  %54 = zext nneg i8 %26 to i32
  %55 = tail call ptr @canonicalize_condition(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %54, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 1) #16
  br label %56

56:                                               ; preds = %41, %43, %3, %53
  %57 = phi ptr [ %55, %53 ], [ null, %3 ], [ %52, %43 ], [ %28, %41 ]
  ret ptr %57
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @predictable_edge_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_process_if_block(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = tail call fastcc ptr @first_active_insn(ptr noundef %4) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %297, label %15

15:                                               ; preds = %1
  %16 = tail call fastcc ptr @last_active_insn(ptr noundef %4, i32 noundef 0) #17
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %18, label %297

18:                                               ; preds = %15
  %19 = load i32, ptr %13, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -7
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %297

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @single_set_2(ptr noundef nonnull %13, ptr noundef nonnull %25) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %297, label %32

32:                                               ; preds = %23, %29
  %33 = phi ptr [ %30, %29 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = icmp ne ptr %6, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %32
  %40 = tail call fastcc ptr @first_active_insn(ptr noundef nonnull %6) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %297, label %42

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @last_active_insn(ptr noundef nonnull %6, i32 noundef 0) #17
  %44 = icmp eq ptr %40, %43
  br i1 %44, label %45, label %297

45:                                               ; preds = %42
  %46 = load i32, ptr %40, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %297

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 23
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = tail call ptr @single_set_2(ptr noundef nonnull %40, ptr noundef nonnull %52) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %297, label %59

59:                                               ; preds = %50, %56
  %60 = phi ptr [ %57, %56 ], [ %52, %50 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !50
  %63 = tail call i32 @rtx_equal_p(ptr noundef %35, ptr noundef %62) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %297, label %124

65:                                               ; preds = %32
  %66 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !59
  %68 = tail call ptr @prev_nonnote_insn(ptr noundef %67) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %129, label %70

70:                                               ; preds = %65, %75
  %71 = phi ptr [ %76, %75 ], [ %68, %65 ]
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 7
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %71) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %129, label %70, !llvm.loop !81

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !50
  %81 = load ptr, ptr %66, align 8, !tbaa !59
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !50
  %84 = icmp eq ptr %80, %83
  %85 = icmp eq i32 %73, 8
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %129

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !50
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 23
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = tail call ptr @single_set_2(ptr noundef nonnull %71, ptr noundef nonnull %89) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %129, label %96

96:                                               ; preds = %87, %93
  %97 = phi ptr [ %94, %93 ], [ %89, %87 ]
  %98 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !50
  %100 = tail call i32 @rtx_equal_p(ptr noundef %35, ptr noundef %99) #16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %129, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !50
  %105 = tail call fastcc i32 @noce_operand_ok(ptr noundef %104) #17, !range !31
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %102
  %108 = load ptr, ptr %103, align 8, !tbaa !50
  %109 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %35, ptr noundef %108) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %107
  %112 = load ptr, ptr %103, align 8, !tbaa !50
  %113 = tail call i32 @modified_between_p(ptr noundef %112, ptr noundef nonnull %71, ptr noundef %10) #16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %35, ptr noundef %12) #16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %35, ptr noundef %37) #16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = tail call i32 @modified_between_p(ptr noundef %35, ptr noundef nonnull %71, ptr noundef %10) #16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121, %59
  %125 = phi ptr [ %60, %59 ], [ %97, %121 ]
  %126 = phi ptr [ %40, %59 ], [ %71, %121 ]
  %127 = tail call i32 @side_effects_p(ptr noundef %35) #16
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %297

129:                                              ; preds = %75, %65, %78, %93, %96, %102, %107, %111, %115, %118, %121
  %130 = tail call i32 @side_effects_p(ptr noundef %35) #16
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %297

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 0, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !50
  br label %135

135:                                              ; preds = %129, %132
  %136 = phi i1 [ true, %132 ], [ false, %129 ]
  %137 = phi ptr [ %126, %132 ], [ null, %129 ]
  %138 = phi ptr [ %134, %132 ], [ %35, %129 ]
  %139 = load i32, ptr %35, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 37
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #17
  %144 = icmp ult i32 %143, 53
  br i1 %144, label %148, label %174

145:                                              ; preds = %135
  %146 = and i32 %139, 16711680
  %147 = icmp eq i32 %146, 65536
  br i1 %147, label %297, label %151

148:                                              ; preds = %142
  %149 = and i32 %139, 16711680
  %150 = icmp eq i32 %149, 65536
  br i1 %150, label %297, label %169

151:                                              ; preds = %145
  %152 = trunc i32 %139 to i16
  switch i16 %152, label %169 [
    i16 120, label %153
    i16 40, label %165
  ]

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !50
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 30
  br i1 %158, label %159, label %297

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %161 = load ptr, ptr %160, align 8, !tbaa !50
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 30
  br i1 %164, label %169, label %297

165:                                              ; preds = %151
  %166 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !50
  %168 = load i32, ptr %167, align 8
  br label %169

169:                                              ; preds = %151, %148, %159, %165
  %170 = phi i32 [ %168, %165 ], [ %139, %159 ], [ %139, %148 ], [ %139, %151 ]
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  %173 = tail call ptr @gen_reg_rtx(i32 noundef %172) #16
  br label %174

174:                                              ; preds = %169, %142
  %175 = phi ptr [ %173, %169 ], [ %35, %142 ]
  %176 = tail call fastcc i32 @noce_operand_ok(ptr noundef %37) #17, !range !31
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %297, label %178

178:                                              ; preds = %174
  %179 = tail call fastcc i32 @noce_operand_ok(ptr noundef %138) #17, !range !31
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %297, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %183 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 8
  %184 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %185 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %186 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %187 = icmp eq ptr %6, null
  br label %188

188:                                              ; preds = %181, %264
  %189 = phi i1 [ false, %264 ], [ %136, %181 ]
  %190 = phi ptr [ %35, %264 ], [ %138, %181 ]
  %191 = phi ptr [ null, %264 ], [ %137, %181 ]
  store ptr %13, ptr %182, align 8, !tbaa !82
  store ptr %191, ptr %183, align 8, !tbaa !83
  store ptr %175, ptr %184, align 8, !tbaa !84
  store ptr %37, ptr %185, align 8, !tbaa !85
  store ptr %190, ptr %186, align 8, !tbaa !86
  %192 = tail call i32 @rtx_equal_p(ptr noundef %37, ptr noundef %190) #16
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %216, label %194

194:                                              ; preds = %188
  %195 = icmp ne ptr %191, null
  %196 = and i1 %38, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %199 = load ptr, ptr %198, align 8, !tbaa !50
  %200 = getelementptr inbounds %struct.rtl_bb_info, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !51
  %202 = icmp eq ptr %191, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !50
  store ptr %205, ptr %200, align 8, !tbaa !51
  br label %206

206:                                              ; preds = %203, %197
  %207 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !50
  tail call void @reorder_insns(ptr noundef nonnull %191, ptr noundef nonnull %191, ptr noundef %208) #16
  %209 = tail call ptr @find_reg_note(ptr noundef nonnull %191, i32 noundef 4, ptr noundef null) #16
  %210 = icmp eq ptr %209, null
  br i1 %210, label %278, label %211

211:                                              ; preds = %206
  tail call void @remove_note(ptr noundef nonnull %191, ptr noundef nonnull %209) #16
  br label %278

212:                                              ; preds = %194
  br i1 %195, label %213, label %277

213:                                              ; preds = %212
  %214 = tail call i32 @side_effects_p(ptr noundef nonnull %35) #16
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %277, label %297

216:                                              ; preds = %188
  br i1 %189, label %227, label %217

217:                                              ; preds = %216
  %218 = load i32, ptr %35, align 8
  %219 = and i32 %218, 65535
  %220 = icmp eq i32 %219, 43
  br i1 %220, label %221, label %227

221:                                              ; preds = %217
  %222 = tail call fastcc zeroext i8 @noce_mem_write_may_trap_or_fault_p(ptr noundef nonnull %35) #17, !range !48
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %297

224:                                              ; preds = %221
  %225 = tail call fastcc zeroext i8 @noce_can_store_speculate_p(ptr noundef %2, ptr noundef nonnull %35) #17
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %297, label %227

227:                                              ; preds = %224, %217, %216
  %228 = tail call fastcc i32 @noce_try_move(ptr noundef nonnull %0) #17, !range !31
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %266

230:                                              ; preds = %227
  %231 = tail call fastcc i32 @noce_try_store_flag(ptr noundef nonnull %0) #17, !range !31
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %266

233:                                              ; preds = %230
  %234 = tail call fastcc i32 @noce_try_bitop(ptr noundef nonnull %0) #17, !range !31
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %266

236:                                              ; preds = %233
  %237 = tail call fastcc i32 @noce_try_minmax(ptr noundef nonnull %0) #17, !range !31
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %266

239:                                              ; preds = %236
  %240 = tail call fastcc i32 @noce_try_abs(ptr noundef nonnull %0) #17, !range !31
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %266

242:                                              ; preds = %239
  %243 = tail call fastcc i32 @noce_try_cmove(ptr noundef nonnull %0) #17, !range !31
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %266

245:                                              ; preds = %242
  %246 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !32
  %247 = tail call zeroext i8 %246() #16
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %264

249:                                              ; preds = %245
  %250 = tail call fastcc i32 @noce_try_store_flag_constants(ptr noundef nonnull %0) #17, !range !31
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %249
  %253 = tail call fastcc i32 @noce_try_addcc(ptr noundef nonnull %0) #17
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = tail call fastcc i32 @noce_try_store_flag_mask(ptr noundef nonnull %0) #17, !range !31
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %255
  %259 = tail call fastcc i32 @noce_try_cmove_arith(ptr noundef nonnull %0) #17
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = tail call fastcc i32 @noce_try_sign_mask(ptr noundef nonnull %0) #17, !range !31
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %261, %245
  %265 = and i1 %187, %189
  br i1 %265, label %188, label %297

266:                                              ; preds = %261, %258, %255, %252, %249, %242, %239, %236, %233, %230, %227
  %267 = icmp eq ptr %35, %175
  br i1 %267, label %277, label %268

268:                                              ; preds = %266
  tail call void @start_sequence() #16
  tail call fastcc void @noce_emit_move_insn(ptr noundef nonnull %35, ptr noundef %175) #17
  %269 = tail call ptr @get_insns() #16
  tail call void @set_used_flags(ptr noundef nonnull %35) #16
  tail call void @unshare_all_rtl_in_chain(ptr noundef %269) #16
  tail call void @end_sequence() #16
  %270 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !50
  %272 = getelementptr inbounds %struct.rtl_bb_info, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !51
  %274 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 2
  %275 = load i32, ptr %274, align 8, !tbaa !50
  %276 = tail call ptr @emit_insn_before_setloc(ptr noundef %269, ptr noundef %273, i32 noundef %275) #16
  br label %277

277:                                              ; preds = %213, %212, %268, %266
  br i1 %38, label %278, label %281

278:                                              ; preds = %206, %211, %277
  tail call void @delete_basic_block(ptr noundef nonnull %6) #16
  %279 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %280 = add nsw i32 %279, 1
  store i32 %280, ptr @num_true_changes, align 4, !tbaa !5
  br label %283

281:                                              ; preds = %277
  %282 = tail call ptr @find_edge(ptr noundef %2, ptr noundef %8) #16
  tail call void @remove_edge(ptr noundef %282) #16
  br label %283

283:                                              ; preds = %281, %278
  %284 = tail call ptr @find_edge(ptr noundef %4, ptr noundef %8) #16
  tail call void @remove_edge(ptr noundef %284) #16
  %285 = tail call fastcc ptr @single_succ_edge(ptr noundef %2) #17
  %286 = tail call ptr @redirect_edge_and_branch_force(ptr noundef %285, ptr noundef %8) #16
  tail call void @delete_basic_block(ptr noundef %4) #16
  %287 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr @num_true_changes, align 4, !tbaa !5
  %289 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %2, ptr noundef %8) #16
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %283
  tail call void @merge_blocks(ptr noundef %2, ptr noundef %8) #16
  %292 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %293 = add nsw i32 %292, 1
  store i32 %293, ptr @num_true_changes, align 4, !tbaa !5
  br label %294

294:                                              ; preds = %291, %283
  %295 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !5
  %296 = add nsw i32 %295, 1
  store i32 %296, ptr @num_updated_if_blocks, align 4, !tbaa !5
  br label %297

297:                                              ; preds = %264, %224, %221, %45, %18, %148, %129, %213, %174, %178, %153, %159, %145, %124, %39, %42, %56, %59, %1, %15, %29, %294
  %298 = phi i32 [ 1, %294 ], [ 0, %29 ], [ 0, %15 ], [ 0, %1 ], [ 0, %59 ], [ 0, %56 ], [ 0, %42 ], [ 0, %39 ], [ 0, %124 ], [ 0, %145 ], [ 0, %159 ], [ 0, %153 ], [ 0, %178 ], [ 0, %174 ], [ 0, %213 ], [ 0, %129 ], [ 0, %148 ], [ 0, %18 ], [ 0, %45 ], [ 0, %221 ], [ 0, %224 ], [ 0, %264 ]
  ret i32 %298
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_move_process_if_block(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !9
  %16 = tail call i32 @max_reg_num() #16
  %17 = shl i32 %16, 3
  %18 = add i32 %17, 8
  %19 = sext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  %21 = alloca i8, i64 %19, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %20, i8 0, i64 %19, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %21, i8 0, i64 %19, i1 false)
  %22 = call fastcc i32 @check_cond_move_block(ptr noundef %7, ptr noundef nonnull %20, ptr noundef nonnull %3, ptr noundef %15) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %139, label %24

24:                                               ; preds = %1
  %25 = icmp eq ptr %9, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = call fastcc i32 @check_cond_move_block(ptr noundef nonnull %9, ptr noundef nonnull %21, ptr noundef nonnull %4, ptr noundef %15) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %139, label %29

29:                                               ; preds = %26, %24
  %30 = load ptr, ptr %3, align 8
  %31 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %2) #17, !range !31
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %70, %29
  %34 = phi i32 [ 0, %29 ], [ %71, %70 ]
  %35 = load ptr, ptr %4, align 8
  %36 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %2) #17, !range !31
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %88, label %75

38:                                               ; preds = %29, %70
  %39 = phi i32 [ %72, %70 ], [ 0, %29 ]
  %40 = phi i32 [ %71, %70 ], [ 0, %29 ]
  %41 = load i32, ptr %2, align 4, !tbaa !5
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %20, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds ptr, ptr %21, i64 %42
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = icmp eq ptr %47, null
  br i1 %45, label %49, label %50

49:                                               ; preds = %38
  br i1 %48, label %70, label %53

50:                                               ; preds = %38
  br i1 %48, label %51, label %53

51:                                               ; preds = %50
  %52 = add nsw i32 %40, 1
  br label %70

53:                                               ; preds = %49, %50
  %54 = load i32, ptr %44, align 8
  %55 = and i32 %54, 65535
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !5
  %59 = icmp eq i32 %58, 9
  br i1 %59, label %70, label %60

60:                                               ; preds = %53
  %61 = load i32, ptr %47, align 8
  %62 = and i32 %61, 65535
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !5
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = tail call i32 @rtx_equal_p(ptr noundef nonnull %44, ptr noundef nonnull %47) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %139, label %70

70:                                               ; preds = %51, %67, %60, %53, %49
  %71 = phi i32 [ %40, %53 ], [ %40, %60 ], [ %40, %67 ], [ %52, %51 ], [ %40, %49 ]
  %72 = add i32 %39, 1
  %73 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %30, i32 noundef %72, ptr noundef nonnull %2) #17, !range !31
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %33, label %38, !llvm.loop !87

75:                                               ; preds = %33, %75
  %76 = phi i32 [ %85, %75 ], [ 0, %33 ]
  %77 = phi i32 [ %84, %75 ], [ %34, %33 ]
  %78 = load i32, ptr %2, align 4, !tbaa !5
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %20, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !9
  %82 = icmp eq ptr %81, null
  %83 = zext i1 %82 to i32
  %84 = add nsw i32 %77, %83
  %85 = add i32 %76, 1
  %86 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %35, i32 noundef %85, ptr noundef nonnull %2) #17, !range !31
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %75, !llvm.loop !88

88:                                               ; preds = %75, %33
  %89 = phi i32 [ %34, %33 ], [ %84, %75 ]
  %90 = load ptr, ptr @cfun, align 8, !tbaa !9
  %91 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %90) #16
  %92 = icmp eq i8 %91, 0
  %93 = load i32, ptr @ix86_branch_cost, align 4
  %94 = add nsw i32 %93, 1
  %95 = select i1 %92, i32 3, i32 %94
  %96 = icmp sgt i32 %89, %95
  br i1 %96, label %139, label %97

97:                                               ; preds = %88
  tail call void @start_sequence() #16
  %98 = call fastcc zeroext i8 @cond_move_convert_if_block(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %15, ptr noundef nonnull %20, ptr noundef nonnull %21, i8 noundef zeroext 0) #17
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  br i1 %25, label %105, label %101

101:                                              ; preds = %100
  %102 = call fastcc zeroext i8 @cond_move_convert_if_block(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef %15, ptr noundef nonnull %20, ptr noundef nonnull %21, i8 noundef zeroext 1) #17
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %97
  tail call void @end_sequence() #16
  br label %139

105:                                              ; preds = %101, %100
  %106 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %107 = icmp eq ptr %106, null
  br i1 %107, label %139, label %108

108:                                              ; preds = %105
  %109 = tail call fastcc ptr @first_active_insn(ptr noundef %7) #17
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = tail call fastcc ptr @first_active_insn(ptr noundef %9) #17
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2741, ptr noundef nonnull @.str.10) #16
  unreachable

115:                                              ; preds = %111, %108
  %116 = phi ptr [ %109, %108 ], [ %112, %111 ]
  %117 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !50
  %119 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %106, ptr noundef %13, i32 noundef %118) #16
  br i1 %25, label %123, label %120

120:                                              ; preds = %115
  tail call void @delete_basic_block(ptr noundef nonnull %9) #16
  %121 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr @num_true_changes, align 4, !tbaa !5
  br label %125

123:                                              ; preds = %115
  %124 = tail call ptr @find_edge(ptr noundef %5, ptr noundef %11) #16
  tail call void @remove_edge(ptr noundef %124) #16
  br label %125

125:                                              ; preds = %123, %120
  %126 = tail call ptr @find_edge(ptr noundef %7, ptr noundef %11) #16
  tail call void @remove_edge(ptr noundef %126) #16
  %127 = tail call fastcc ptr @single_succ_edge(ptr noundef %5) #17
  %128 = tail call ptr @redirect_edge_and_branch_force(ptr noundef %127, ptr noundef %11) #16
  tail call void @delete_basic_block(ptr noundef %7) #16
  %129 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr @num_true_changes, align 4, !tbaa !5
  %131 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %5, ptr noundef %11) #16
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  tail call void @merge_blocks(ptr noundef %5, ptr noundef %11) #16
  %134 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr @num_true_changes, align 4, !tbaa !5
  br label %136

136:                                              ; preds = %133, %125
  %137 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !5
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr @num_updated_if_blocks, align 4, !tbaa !5
  br label %139

139:                                              ; preds = %67, %105, %88, %1, %26, %136, %104
  %140 = phi i32 [ 1, %136 ], [ 0, %104 ], [ 0, %26 ], [ 0, %1 ], [ 0, %88 ], [ 0, %105 ], [ 0, %67 ]
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %3) #17
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret i32 %140
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @reverse_condition(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @canonicalize_condition(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @first_active_insn(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp eq ptr %4, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi ptr [ %14, %12 ], [ %4, %1 ]
  %17 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  br label %18

18:                                               ; preds = %25, %15
  %19 = phi ptr [ %16, %15 ], [ %27, %25 ]
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i16
  switch i16 %21, label %29 [
    i16 13, label %22
    i16 7, label %22
    i16 9, label %28
  ]

22:                                               ; preds = %18, %18
  %23 = load ptr, ptr %17, align 8, !tbaa !51
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  br label %18, !llvm.loop !89

28:                                               ; preds = %22, %18
  br label %29

29:                                               ; preds = %18, %28, %8
  %30 = phi ptr [ null, %8 ], [ null, %28 ], [ %19, %18 ]
  ret ptr %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @last_active_insn(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %4, align 8, !tbaa !75
  %7 = icmp ne i32 %1, 0
  br label %8

8:                                                ; preds = %26, %2
  %9 = phi ptr [ %5, %2 ], [ %27, %26 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = load i32, ptr %10, align 8
  %12 = freeze i32 %11
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %14 [
    i16 13, label %24
    i16 9, label %24
    i16 7, label %24
  ]

14:                                               ; preds = %8
  %15 = and i32 %12, 65535
  %16 = icmp eq i32 %15, 8
  %17 = and i1 %7, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %24, label %31

24:                                               ; preds = %8, %8, %8, %18
  %25 = icmp eq ptr %10, %6
  br i1 %25, label %31, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %8, !llvm.loop !90

28:                                               ; preds = %14
  %29 = icmp eq i32 %15, 12
  %30 = select i1 %29, ptr null, ptr %10
  br label %31

31:                                               ; preds = %18, %24, %28
  %32 = phi ptr [ %30, %28 ], [ %10, %18 ], [ null, %24 ]
  ret ptr %32
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @noce_operand_ok(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call i32 @side_effects_p(ptr noundef %7) #16
  %9 = icmp eq i32 %8, 0
  br label %16

10:                                               ; preds = %1
  %11 = tail call i32 @side_effects_p(ptr noundef nonnull %0) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #16
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %10, %13, %5
  %17 = phi i1 [ %9, %5 ], [ %15, %13 ], [ false, %10 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @modified_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !50
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @noce_mem_write_may_trap_or_fault_p(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 67108864
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %46

5:                                                ; preds = %1
  %6 = tail call i32 @may_trap_or_fault_p(ptr noundef nonnull %0) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !91
  %12 = tail call ptr %11(ptr noundef %10) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %8, %41
  %15 = phi ptr [ %43, %41 ], [ %12, %8 ]
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %46 [
    i16 35, label %18
    i16 74, label %18
    i16 75, label %18
    i16 76, label %18
    i16 77, label %18
    i16 79, label %18
    i16 122, label %20
    i16 78, label %20
    i16 49, label %22
    i16 44, label %45
    i16 45, label %30
  ]

18:                                               ; preds = %14, %14, %14, %14, %14, %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %41

20:                                               ; preds = %14, %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %41

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %41

30:                                               ; preds = %14
  %31 = and i32 %16, 67108864
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call zeroext i8 @decl_readonly_section(ptr noundef nonnull %35, i32 noundef 0) #16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30, %37, %33
  br label %46

41:                                               ; preds = %28, %20, %18
  %42 = phi ptr [ %29, %28 ], [ %21, %20 ], [ %19, %18 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %14, !llvm.loop !92

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %22, %41, %14, %45, %8, %37, %5, %1, %40
  %47 = phi i8 [ 0, %40 ], [ 1, %1 ], [ 1, %5 ], [ 1, %37 ], [ 0, %8 ], [ 1, %45 ], [ 0, %14 ], [ 0, %41 ], [ 0, %22 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @noce_can_store_speculate_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %46
  %8 = phi ptr [ %3, %5 ], [ %47, %46 ]
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %17

13:                                               ; preds = %42
  %14 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17, !llvm.loop !93

17:                                               ; preds = %7, %13
  %18 = phi ptr [ %15, %13 ], [ %11, %7 ]
  %19 = load ptr, ptr %9, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %46, label %25

25:                                               ; preds = %17
  %26 = load i32, ptr %18, align 8
  %27 = and i32 %26, 65535
  %28 = add nsw i32 %27, -7
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = tail call i32 @volatile_insn_p(ptr noundef %32) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i32, ptr %18, align 8
  %37 = and i32 %36, 67174399
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %49, label %39

39:                                               ; preds = %25, %35
  %40 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef %1, ptr noundef nonnull %18) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load ptr, ptr %6, align 8, !tbaa !50
  %44 = tail call i32 @modified_in_p(ptr noundef %43, ptr noundef nonnull %18) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %13, label %49

46:                                               ; preds = %17, %13, %7
  %47 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef nonnull %8) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %7, !llvm.loop !94

49:                                               ; preds = %46, %42, %39, %30, %35, %2
  %50 = phi i8 [ 0, %2 ], [ 0, %35 ], [ 0, %30 ], [ 1, %39 ], [ 0, %42 ], [ 0, %46 ]
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_move(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -82
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %100, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !50
  switch i8 %16, label %54 [
    i8 8, label %17
    i8 9, label %17
    i8 11, label %17
    i8 17, label %17
  ]

17:                                               ; preds = %8, %8, %8, %8
  %18 = and i8 %16, -2
  %19 = icmp eq i8 %18, 8
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %22 = load i8, ptr %21, align 1, !tbaa !50
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %13, %17 ], [ %23, %20 ]
  %26 = add nsw i32 %25, -38
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.real_format, ptr %29, i64 0, i32 11
  %31 = load i8, ptr %30, align 2, !tbaa !95
  %32 = icmp eq i8 %31, 0
  %33 = load i32, ptr @flag_finite_math_only, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %24
  switch i8 %16, label %54 [
    i8 8, label %37
    i8 9, label %37
    i8 11, label %37
    i8 17, label %37
  ]

37:                                               ; preds = %36, %36, %36, %36
  br i1 %19, label %42, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %40 = load i8, ptr %39, align 1, !tbaa !50
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i32 [ %13, %37 ], [ %41, %38 ]
  %44 = add nsw i32 %43, -38
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 14
  %49 = load i8, ptr %48, align 1, !tbaa !97
  %50 = icmp ne i8 %49, 0
  %51 = load i32, ptr @flag_signed_zeros, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %100, label %54

54:                                               ; preds = %8, %36, %42
  %55 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !85
  %57 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !50
  %59 = tail call i32 @rtx_equal_p(ptr noundef %56, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !50
  %66 = tail call i32 @rtx_equal_p(ptr noundef %63, ptr noundef %65) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %61, %54
  %69 = load ptr, ptr %55, align 8, !tbaa !85
  %70 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !50
  %72 = tail call i32 @rtx_equal_p(ptr noundef %69, ptr noundef %71) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %100, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !86
  %77 = load ptr, ptr %57, align 8, !tbaa !50
  %78 = tail call i32 @rtx_equal_p(ptr noundef %76, ptr noundef %77) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %74, %61
  %81 = icmp eq i32 %5, 81
  %82 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %83 = select i1 %81, ptr %55, ptr %82
  %84 = load ptr, ptr %83, align 8, !tbaa !9
  %85 = load ptr, ptr %9, align 8, !tbaa !84
  %86 = tail call i32 @rtx_equal_p(ptr noundef %85, ptr noundef %84) #16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  tail call void @start_sequence() #16
  %89 = load ptr, ptr %9, align 8, !tbaa !84
  tail call fastcc void @noce_emit_move_insn(ptr noundef %89, ptr noundef %84) #17
  %90 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !60
  %95 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !82
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !50
  %99 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %90, ptr noundef %94, i32 noundef %98) #16
  br label %100

100:                                              ; preds = %68, %74, %80, %92, %88, %24, %42, %1
  %101 = phi i32 [ 0, %1 ], [ 0, %42 ], [ 0, %24 ], [ 0, %88 ], [ 1, %92 ], [ 1, %80 ], [ 0, %74 ], [ 0, %68 ]
  ret i32 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_store_flag(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 30
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  br label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !50
  %12 = icmp eq i64 %11, 1
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  br i1 %12, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %38, label %18

18:                                               ; preds = %7, %14, %9
  %19 = phi ptr [ %8, %7 ], [ %13, %14 ], [ %13, %9 ]
  %20 = icmp eq ptr %3, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 30
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !50
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = tail call i32 @reversed_comparison_code(ptr noundef %33, ptr noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %31, %14
  %39 = phi i32 [ 0, %14 ], [ 1, %31 ]
  tail call void @start_sequence() #16
  %40 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !84
  %42 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %0, ptr noundef %41, i32 noundef %39, i32 noundef 0) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %40, align 8, !tbaa !84
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call fastcc void @noce_emit_move_insn(ptr noundef %45, ptr noundef nonnull %42) #17
  br label %48

48:                                               ; preds = %47, %44
  %49 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !82
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !50
  %58 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %49, ptr noundef %53, i32 noundef %57) #16
  br label %60

59:                                               ; preds = %38
  tail call void @end_sequence() #16
  br label %60

60:                                               ; preds = %48, %18, %21, %27, %31, %59, %51
  %61 = phi i32 [ 1, %51 ], [ 0, %59 ], [ 0, %31 ], [ 0, %27 ], [ 0, %21 ], [ 0, %18 ], [ 0, %48 ]
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_bitop(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call i32 @rtx_equal_p(ptr noundef %3, ptr noundef %9) #16
  %11 = icmp eq i32 %10, 0
  %12 = add nsw i32 %7, -82
  %13 = icmp ult i32 %12, -2
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %127, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %127

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 120
  br i1 %25, label %26, label %127

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !9
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %127

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 30
  br i1 %37, label %38, label %127

38:                                               ; preds = %32
  %39 = load ptr, ptr %27, align 8, !tbaa !50
  %40 = tail call i32 @rtx_equal_p(ptr noundef %3, ptr noundef %39) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %127, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %33, align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !50
  %46 = load i32, ptr %3, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = and i64 %45, 4294967232
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %127

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !85
  %54 = load i32, ptr %53, align 8
  %55 = trunc i32 %54 to i16
  switch i16 %55, label %127 [
    i16 62, label %56
    i16 63, label %56
    i16 61, label %90
  ]

56:                                               ; preds = %51, %51
  %57 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !50
  %59 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %127, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !50
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 30
  br i1 %66, label %67, label %127

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !50
  %70 = zext nneg i32 %48 to i64
  %71 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !98
  %73 = and i64 %72, %69
  %74 = and i64 %45, 63
  %75 = shl nuw i64 1, %74
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %77, label %127

77:                                               ; preds = %67
  %78 = load i32, ptr %53, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 62
  %81 = icmp ne i32 %7, 80
  br i1 %80, label %82, label %83

82:                                               ; preds = %77
  br i1 %81, label %127, label %115

83:                                               ; preds = %77
  %84 = sext i1 %81 to i64
  %85 = xor i64 %75, %84
  %86 = select i1 %81, i32 61, i32 62
  %87 = tail call ptr @gen_int_mode(i64 noundef %85, i32 noundef %48) #16
  %88 = tail call ptr @simplify_gen_binary(i32 noundef %86, i32 noundef %48, ptr noundef nonnull %3, ptr noundef %87) #16
  %89 = icmp eq ptr %88, null
  br i1 %89, label %127, label %115

90:                                               ; preds = %51
  %91 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !50
  %93 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef %92) #16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %127, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !50
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 30
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !50
  %104 = zext nneg i32 %48 to i64
  %105 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !98
  %107 = and i64 %45, 63
  %108 = shl nuw i64 1, %107
  %109 = xor i64 %108, %103
  %110 = xor i64 %109, -1
  %111 = and i64 %106, %110
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %101
  %114 = icmp eq i32 %7, 81
  br i1 %114, label %115, label %127

115:                                              ; preds = %113, %82, %83
  %116 = phi ptr [ %88, %83 ], [ %53, %82 ], [ %53, %113 ]
  tail call void @start_sequence() #16
  tail call fastcc void @noce_emit_move_insn(ptr noundef nonnull %3, ptr noundef nonnull %116) #17
  %117 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !60
  %122 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !82
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !50
  %126 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %117, ptr noundef %121, i32 noundef %125) #16
  br label %127

127:                                              ; preds = %113, %82, %83, %119, %115, %51, %90, %95, %101, %56, %61, %67, %20, %42, %26, %32, %38, %15, %1
  %128 = phi i32 [ 0, %1 ], [ 0, %15 ], [ 0, %38 ], [ 0, %32 ], [ 0, %26 ], [ 0, %42 ], [ 0, %20 ], [ 0, %67 ], [ 0, %61 ], [ 0, %56 ], [ 0, %101 ], [ 0, %95 ], [ 0, %90 ], [ 0, %51 ], [ 0, %115 ], [ 1, %119 ], [ 1, %83 ], [ 1, %82 ], [ 1, %113 ]
  ret i32 %128
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_minmax(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !50
  switch i8 %10, label %48 [
    i8 8, label %11
    i8 9, label %11
    i8 11, label %11
    i8 17, label %11
  ]

11:                                               ; preds = %1, %1, %1, %1
  %12 = and i8 %10, -2
  %13 = icmp eq i8 %12, 8
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %16 = load i8, ptr %15, align 1, !tbaa !50
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %7, %11 ], [ %17, %14 ]
  %20 = add nsw i32 %19, -38
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.real_format, ptr %23, i64 0, i32 14
  %25 = load i8, ptr %24, align 1, !tbaa !97
  %26 = icmp ne i8 %25, 0
  %27 = load i32, ptr @flag_signed_zeros, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %124, label %30

30:                                               ; preds = %18
  switch i8 %10, label %48 [
    i8 8, label %31
    i8 9, label %31
    i8 11, label %31
    i8 17, label %31
  ]

31:                                               ; preds = %30, %30, %30, %30
  br i1 %13, label %36, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %34 = load i8, ptr %33, align 1, !tbaa !50
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %32, %31
  %37 = phi i32 [ %7, %31 ], [ %35, %32 ]
  %38 = add nsw i32 %37, -38
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.real_format, ptr %41, i64 0, i32 11
  %43 = load i8, ptr %42, align 2, !tbaa !95
  %44 = icmp eq i8 %43, 0
  %45 = load i32, ptr @flag_finite_math_only, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %48, label %124

48:                                               ; preds = %1, %30, %36
  %49 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !85
  %51 = call fastcc ptr @noce_get_alt_condition(ptr noundef nonnull %0, ptr noundef %50, ptr noundef nonnull %2) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %124, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %51, align 8
  %55 = and i32 %54, 65535
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !50
  %58 = load ptr, ptr %49, align 8, !tbaa !85
  %59 = call i32 @rtx_equal_p(ptr noundef %57, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !50
  br i1 %60, label %68, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !86
  %66 = call i32 @rtx_equal_p(ptr noundef %62, ptr noundef %65) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %124, label %80

68:                                               ; preds = %53
  %69 = load ptr, ptr %49, align 8, !tbaa !85
  %70 = call i32 @rtx_equal_p(ptr noundef %62, ptr noundef %69) #16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %124, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %56, align 8, !tbaa !50
  %74 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %75 = load ptr, ptr %74, align 8, !tbaa !86
  %76 = call i32 @rtx_equal_p(ptr noundef %73, ptr noundef %75) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %124, label %78

78:                                               ; preds = %72
  %79 = call i32 @swap_condition(i32 noundef %55) #16
  br label %80

80:                                               ; preds = %63, %78
  %81 = phi i32 [ %55, %63 ], [ %79, %78 ]
  %82 = add i32 %81, -82
  %83 = icmp ult i32 %82, 15
  br i1 %83, label %84, label %124

84:                                               ; preds = %80
  %85 = trunc i32 %82 to i16
  %86 = lshr i16 30975, %85
  %87 = and i16 %86, 1
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %124, label %89

89:                                               ; preds = %84
  %90 = zext nneg i32 %82 to i64
  %91 = getelementptr inbounds [15 x i32], ptr @switch.table.noce_try_minmax, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4
  %93 = zext nneg i32 %82 to i64
  %94 = getelementptr inbounds [15 x i32], ptr @switch.table.noce_try_minmax.30, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4
  call void @start_sequence() #16
  %96 = load ptr, ptr %3, align 8, !tbaa !84
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = load ptr, ptr %49, align 8, !tbaa !85
  %101 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %102 = load ptr, ptr %101, align 8, !tbaa !86
  %103 = call ptr @expand_simple_binop(i32 noundef %99, i32 noundef %92, ptr noundef %100, ptr noundef %102, ptr noundef nonnull %96, i32 noundef %95, i32 noundef 2) #16
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  call void @end_sequence() #16
  br label %124

106:                                              ; preds = %89
  %107 = load ptr, ptr %3, align 8, !tbaa !84
  %108 = icmp eq ptr %103, %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  call fastcc void @noce_emit_move_insn(ptr noundef %107, ptr noundef nonnull %103) #17
  br label %110

110:                                              ; preds = %109, %106
  %111 = call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %112 = icmp eq ptr %111, null
  br i1 %112, label %124, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !60
  %116 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !82
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !50
  %120 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %111, ptr noundef %115, i32 noundef %119) #16
  %121 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  store ptr %51, ptr %121, align 8, !tbaa !58
  %122 = load ptr, ptr %2, align 8, !tbaa !9
  %123 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  store ptr %122, ptr %123, align 8, !tbaa !59
  br label %124

124:                                              ; preds = %84, %80, %110, %68, %72, %63, %48, %18, %36, %113, %105
  %125 = phi i32 [ 1, %113 ], [ 0, %105 ], [ 0, %36 ], [ 0, %18 ], [ 0, %48 ], [ 0, %63 ], [ 0, %72 ], [ 0, %68 ], [ 0, %80 ], [ 0, %110 ], [ 0, %84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i32 %125
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_abs(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !50
  switch i8 %10, label %30 [
    i8 8, label %11
    i8 9, label %11
    i8 11, label %11
    i8 17, label %11
  ]

11:                                               ; preds = %1, %1, %1, %1
  %12 = and i8 %10, -2
  %13 = icmp eq i8 %12, 8
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %16 = load i8, ptr %15, align 1, !tbaa !50
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %7, %11 ], [ %17, %14 ]
  %20 = add nsw i32 %19, -38
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.real_format, ptr %23, i64 0, i32 14
  %25 = load i8, ptr %24, align 1, !tbaa !97
  %26 = icmp ne i8 %25, 0
  %27 = load i32, ptr @flag_signed_zeros, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %226, label %30

30:                                               ; preds = %1, %18
  %31 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = load i32, ptr %32, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 51
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = tail call i32 @rtx_equal_p(ptr noundef %40, ptr noundef %34) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %38, %30
  %44 = load i32, ptr %34, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 51
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !50
  %50 = tail call i32 @rtx_equal_p(ptr noundef %49, ptr noundef nonnull %32) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47, %43
  %53 = load i32, ptr %32, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 64
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !50
  %59 = tail call i32 @rtx_equal_p(ptr noundef %58, ptr noundef nonnull %34) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56, %52
  %62 = load i32, ptr %34, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 64
  br i1 %64, label %65, label %226

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  %68 = tail call i32 @rtx_equal_p(ptr noundef %67, ptr noundef nonnull %32) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %226, label %70

70:                                               ; preds = %65, %56, %47, %38
  %71 = phi ptr [ %34, %38 ], [ %32, %47 ], [ %34, %56 ], [ %32, %65 ]
  %72 = phi i32 [ 1, %38 ], [ 0, %47 ], [ 1, %56 ], [ 0, %65 ]
  %73 = phi i32 [ 0, %38 ], [ 1, %47 ], [ 0, %56 ], [ 1, %65 ]
  %74 = phi i1 [ true, %38 ], [ true, %47 ], [ false, %56 ], [ false, %65 ]
  %75 = call fastcc ptr @noce_get_alt_condition(ptr noundef nonnull %0, ptr noundef %71, ptr noundef nonnull %2) #17
  %76 = icmp eq ptr %75, null
  br i1 %76, label %226, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !50
  %80 = call i32 @rtx_equal_p(ptr noundef %79, ptr noundef %71) #16
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %81, label %83, label %87

83:                                               ; preds = %77
  %84 = load ptr, ptr %82, align 8, !tbaa !50
  %85 = call i32 @rtx_equal_p(ptr noundef %84, ptr noundef %71) #16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %226, label %87

87:                                               ; preds = %77, %83
  %88 = phi ptr [ %78, %83 ], [ %82, %77 ]
  %89 = phi i32 [ %72, %83 ], [ %73, %77 ]
  %90 = load ptr, ptr %88, align 8, !tbaa !50
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 37
  br i1 %93, label %94, label %133

94:                                               ; preds = %87
  %95 = load ptr, ptr %2, align 8, !tbaa !9
  %96 = call ptr @prev_nonnote_insn(ptr noundef %95) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %226, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !50
  %101 = load ptr, ptr %2, align 8, !tbaa !9
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !50
  %104 = icmp eq ptr %100, %103
  br i1 %104, label %105, label %226

105:                                              ; preds = %98
  %106 = load i32, ptr %96, align 8
  %107 = and i32 %106, 65535
  %108 = add nsw i32 %107, -7
  %109 = icmp ult i32 %108, 4
  br i1 %109, label %110, label %226

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !50
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 23
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = call ptr @single_set_2(ptr noundef nonnull %96, ptr noundef nonnull %112) #16
  %118 = icmp eq ptr %117, null
  br i1 %118, label %226, label %119

119:                                              ; preds = %110, %116
  %120 = phi ptr [ %117, %116 ], [ %112, %110 ]
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !50
  %123 = call i32 @rtx_equal_p(ptr noundef %122, ptr noundef nonnull %90) #16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %226, label %125

125:                                              ; preds = %119
  %126 = call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %96) #16
  %127 = icmp eq ptr %126, null
  %128 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %129 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = select i1 %127, ptr %129, ptr %128
  %131 = load ptr, ptr %130, align 8, !tbaa !50
  %132 = load i32, ptr %131, align 8
  br label %133

133:                                              ; preds = %125, %87
  %134 = phi i32 [ %132, %125 ], [ %91, %87 ]
  %135 = phi ptr [ %131, %125 ], [ %90, %87 ]
  %136 = and i32 %134, 65535
  %137 = icmp eq i32 %136, 43
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !50
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 67174399
  %143 = icmp eq i32 %142, 67108909
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = call ptr @get_pool_constant(ptr noundef nonnull %140) #16
  br label %146

146:                                              ; preds = %144, %138, %133
  %147 = phi ptr [ %145, %144 ], [ %135, %138 ], [ %135, %133 ]
  %148 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !9
  %149 = icmp eq ptr %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, ptr %75, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 83
  br i1 %153, label %171, label %154

154:                                              ; preds = %150, %146
  %155 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !9
  %156 = icmp eq ptr %147, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, ptr %75, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 85
  br i1 %160, label %171, label %161

161:                                              ; preds = %157, %154
  %162 = load i32, ptr %71, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !9
  %168 = icmp eq ptr %147, %167
  br i1 %168, label %169, label %226

169:                                              ; preds = %161
  %170 = load i32, ptr %75, align 8
  br label %171

171:                                              ; preds = %169, %157, %150
  %172 = phi i32 [ %170, %169 ], [ %158, %157 ], [ %151, %150 ]
  %173 = trunc i32 %172 to i16
  switch i16 %173, label %226 [
    i16 85, label %174
    i16 84, label %174
    i16 96, label %174
    i16 95, label %174
    i16 83, label %177
    i16 82, label %177
    i16 94, label %177
    i16 93, label %177
  ]

174:                                              ; preds = %171, %171, %171, %171
  %175 = icmp eq i32 %89, 0
  %176 = zext i1 %175 to i32
  br label %177

177:                                              ; preds = %171, %171, %171, %171, %174
  %178 = phi i32 [ %89, %171 ], [ %89, %171 ], [ %89, %171 ], [ %89, %171 ], [ %176, %174 ]
  call void @start_sequence() #16
  %179 = load ptr, ptr %3, align 8, !tbaa !84
  %180 = load i32, ptr %179, align 8
  %181 = lshr i32 %180, 16
  %182 = and i32 %181, 255
  %183 = icmp ne i32 %178, 0
  br i1 %74, label %184, label %188

184:                                              ; preds = %177
  %185 = call ptr @expand_abs_nojump(i32 noundef %182, ptr noundef %71, ptr noundef nonnull %179, i32 noundef 1) #16
  %186 = icmp ne ptr %185, null
  %187 = and i1 %183, %186
  br i1 %187, label %198, label %204

188:                                              ; preds = %177
  %189 = call ptr @expand_one_cmpl_abs_nojump(i32 noundef %182, ptr noundef %71, ptr noundef nonnull %179) #16
  %190 = icmp ne ptr %189, null
  %191 = and i1 %183, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load i32, ptr %189, align 8
  %194 = lshr i32 %193, 16
  %195 = and i32 %194, 255
  %196 = load ptr, ptr %3, align 8, !tbaa !84
  %197 = call ptr @expand_simple_unop(i32 noundef %195, i32 noundef 64, ptr noundef nonnull %189, ptr noundef %196, i32 noundef 0) #16
  br label %204

198:                                              ; preds = %184
  %199 = load i32, ptr %185, align 8
  %200 = lshr i32 %199, 16
  %201 = and i32 %200, 255
  %202 = load ptr, ptr %3, align 8, !tbaa !84
  %203 = call ptr @expand_simple_unop(i32 noundef %201, i32 noundef 51, ptr noundef nonnull %185, ptr noundef %202, i32 noundef 0) #16
  br label %204

204:                                              ; preds = %188, %192, %198, %184
  %205 = phi ptr [ %197, %192 ], [ %203, %198 ], [ %185, %184 ], [ %189, %188 ]
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  call void @end_sequence() #16
  br label %226

208:                                              ; preds = %204
  %209 = load ptr, ptr %3, align 8, !tbaa !84
  %210 = icmp eq ptr %205, %209
  br i1 %210, label %212, label %211

211:                                              ; preds = %208
  call fastcc void @noce_emit_move_insn(ptr noundef %209, ptr noundef nonnull %205) #17
  br label %212

212:                                              ; preds = %211, %208
  %213 = call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %214 = icmp eq ptr %213, null
  br i1 %214, label %226, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %217 = load ptr, ptr %216, align 8, !tbaa !60
  %218 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %219 = load ptr, ptr %218, align 8, !tbaa !82
  %220 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1, i32 0, i32 2
  %221 = load i32, ptr %220, align 8, !tbaa !50
  %222 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %213, ptr noundef %217, i32 noundef %221) #16
  %223 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  store ptr %75, ptr %223, align 8, !tbaa !58
  %224 = load ptr, ptr %2, align 8, !tbaa !9
  %225 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  store ptr %224, ptr %225, align 8, !tbaa !59
  br label %226

226:                                              ; preds = %105, %94, %98, %116, %119, %212, %171, %161, %83, %70, %61, %65, %18, %215, %207
  %227 = phi i32 [ 1, %215 ], [ 0, %207 ], [ 0, %18 ], [ 0, %65 ], [ 0, %61 ], [ 0, %70 ], [ 0, %83 ], [ 0, %161 ], [ 0, %171 ], [ 0, %212 ], [ 0, %119 ], [ 0, %116 ], [ 0, %98 ], [ 0, %94 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i32 %227
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_cmove(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @register_operand(ptr noundef nonnull %3, i32 noundef 0) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = tail call i32 @register_operand(ptr noundef nonnull %15, i32 noundef 0) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22, %13
  tail call void @start_sequence() #16
  %26 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !84
  %32 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = load ptr, ptr %2, align 8, !tbaa !85
  %37 = load ptr, ptr %14, align 8, !tbaa !86
  %38 = tail call fastcc ptr @noce_emit_cmove(ptr noundef nonnull %0, ptr noundef %31, i32 noundef %29, ptr noundef %33, ptr noundef %35, ptr noundef %36, ptr noundef %37) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %25
  %41 = load ptr, ptr %30, align 8, !tbaa !84
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call fastcc void @noce_emit_move_insn(ptr noundef %41, ptr noundef nonnull %38) #17
  br label %44

44:                                               ; preds = %43, %40
  %45 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !82
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !50
  %54 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %45, ptr noundef %49, i32 noundef %53) #16
  br label %56

55:                                               ; preds = %25
  tail call void @end_sequence() #16
  br label %56

56:                                               ; preds = %10, %22, %44, %55, %47
  %57 = phi i32 [ 1, %47 ], [ 0, %55 ], [ 0, %44 ], [ 0, %22 ], [ 0, %10 ]
  ret i32 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_store_flag_constants(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 30
  br i1 %6, label %7, label %129

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 30
  br i1 %12, label %13, label %129

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !50
  %23 = sub nsw i64 %22, %20
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = lshr i64 %20, 63
  %27 = lshr i64 %22, 63
  %28 = icmp eq i64 %26, %27
  %29 = trunc i64 %26 to i32
  %30 = icmp slt i64 %20, %22
  %31 = zext i1 %30 to i32
  %32 = select i1 %28, i32 %31, i32 %29
  %33 = icmp eq i32 %32, %25
  br i1 %33, label %34, label %129

34:                                               ; preds = %13
  %35 = tail call i64 @trunc_int_for_mode(i64 noundef %23, i32 noundef %18) #16
  %36 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = tail call i32 @reversed_comparison_code(ptr noundef %37, ptr noundef %39) #16
  %41 = icmp ne i32 %40, 0
  switch i64 %35, label %42 [
    i64 -1, label %69
    i64 1, label %69
  ]

42:                                               ; preds = %34
  %43 = icmp eq i64 %20, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = tail call i32 @exact_log2(i64 noundef %22) #16
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %69, label %47

47:                                               ; preds = %44, %42
  switch i64 %22, label %56 [
    i64 0, label %48
    i64 -1, label %52
  ]

48:                                               ; preds = %47
  %49 = tail call i32 @exact_log2(i64 noundef %20) #16
  %50 = icmp sgt i32 %49, -1
  %51 = select i1 %50, i1 %41, i1 false
  br i1 %51, label %65, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %54 = load i32, ptr %53, align 4, !tbaa !62
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %69, label %56

56:                                               ; preds = %48, %47, %52
  %57 = icmp eq i64 %20, -1
  %58 = select i1 %57, i1 %41, i1 false
  %59 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %60 = load i32, ptr %59, align 4, !tbaa !62
  br i1 %58, label %61, label %63

61:                                               ; preds = %56
  %62 = icmp sgt i32 %60, 1
  br i1 %62, label %65, label %129

63:                                               ; preds = %56
  %64 = icmp sgt i32 %60, 2
  br i1 %64, label %69, label %129

65:                                               ; preds = %48, %61
  %66 = phi i32 [ 1, %48 ], [ -1, %61 ]
  %67 = sub nsw i64 0, %35
  %68 = tail call i64 @trunc_int_for_mode(i64 noundef %67, i32 noundef %18) #16
  br label %69

69:                                               ; preds = %63, %52, %44, %34, %34, %65
  %70 = phi i32 [ %66, %65 ], [ -1, %63 ], [ -1, %52 ], [ 1, %44 ], [ 0, %34 ], [ 0, %34 ]
  %71 = phi i32 [ 1, %65 ], [ 0, %63 ], [ 0, %52 ], [ 0, %44 ], [ 0, %34 ], [ 0, %34 ]
  %72 = phi i64 [ %20, %65 ], [ %22, %63 ], [ -1, %52 ], [ %22, %44 ], [ %22, %34 ], [ %22, %34 ]
  %73 = phi i64 [ %22, %65 ], [ %20, %63 ], [ %20, %52 ], [ 0, %44 ], [ %20, %34 ], [ %20, %34 ]
  %74 = phi i64 [ %68, %65 ], [ %35, %63 ], [ %35, %52 ], [ %35, %44 ], [ %35, %34 ], [ %35, %34 ]
  tail call void @start_sequence() #16
  %75 = load ptr, ptr %14, align 8, !tbaa !84
  %76 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %0, ptr noundef %75, i32 noundef %71, i32 noundef %70) #17
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  tail call void @end_sequence() #16
  br label %129

79:                                               ; preds = %69
  switch i64 %74, label %86 [
    i64 -1, label %80
    i64 1, label %80
  ]

80:                                               ; preds = %79, %79
  %81 = icmp eq i64 %74, 1
  %82 = select i1 %81, i32 49, i32 50
  %83 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %73) #16
  %84 = load ptr, ptr %14, align 8, !tbaa !84
  %85 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef %82, ptr noundef %83, ptr noundef nonnull %76, ptr noundef %84, i32 noundef 0, i32 noundef 2) #16
  br label %111

86:                                               ; preds = %79
  %87 = icmp eq i64 %73, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %86
  %89 = tail call i32 @exact_log2(i64 noundef %72) #16
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = zext nneg i32 %89 to i64
  %93 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %92) #16
  %94 = load ptr, ptr %14, align 8, !tbaa !84
  %95 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 65, ptr noundef nonnull %76, ptr noundef %93, ptr noundef %94, i32 noundef 0, i32 noundef 2) #16
  br label %111

96:                                               ; preds = %88, %86
  %97 = icmp eq i64 %72, -1
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %73) #16
  %100 = load ptr, ptr %14, align 8, !tbaa !84
  %101 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 62, ptr noundef nonnull %76, ptr noundef %99, ptr noundef %100, i32 noundef 0, i32 noundef 2) #16
  br label %111

102:                                              ; preds = %96
  %103 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %74) #16
  %104 = load ptr, ptr %14, align 8, !tbaa !84
  %105 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 61, ptr noundef nonnull %76, ptr noundef %103, ptr noundef %104, i32 noundef 0, i32 noundef 2) #16
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %73) #16
  %109 = load ptr, ptr %14, align 8, !tbaa !84
  %110 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 49, ptr noundef nonnull %105, ptr noundef %108, ptr noundef %109, i32 noundef 0, i32 noundef 2) #16
  br label %111

111:                                              ; preds = %91, %107, %98, %80
  %112 = phi ptr [ %85, %80 ], [ %95, %91 ], [ %101, %98 ], [ %110, %107 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %102, %111
  tail call void @end_sequence() #16
  br label %129

115:                                              ; preds = %111
  %116 = load ptr, ptr %14, align 8, !tbaa !84
  %117 = icmp eq ptr %112, %116
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call fastcc void @noce_emit_move_insn(ptr noundef %116, ptr noundef nonnull %112) #17
  br label %119

119:                                              ; preds = %118, %115
  %120 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %121 = icmp eq ptr %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %38, align 8, !tbaa !60
  %124 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !82
  %126 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !50
  %128 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %120, ptr noundef %123, i32 noundef %127) #16
  br label %129

129:                                              ; preds = %61, %1, %7, %119, %63, %13, %122, %114, %78
  %130 = phi i32 [ 1, %122 ], [ 0, %114 ], [ 0, %78 ], [ 0, %13 ], [ 0, %63 ], [ 0, %119 ], [ 0, %7 ], [ 0, %1 ], [ 0, %61 ]
  ret i32 %130
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_addcc(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 49
  br i1 %6, label %7, label %124

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = tail call i32 @rtx_equal_p(ptr noundef %9, ptr noundef %11) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %124, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = tail call i32 @reversed_comparison_code(ptr noundef %16, ptr noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %124, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !58
  %23 = load ptr, ptr %17, align 8, !tbaa !60
  %24 = tail call i32 @reversed_comparison_code(ptr noundef %22, ptr noundef %23) #16
  %25 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = tail call i32 @general_operand(ptr noundef %26, i32 noundef 0) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %68, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = tail call i32 @general_operand(ptr noundef %31, i32 noundef 0) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %29
  tail call void @start_sequence() #16
  %35 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %36 = load ptr, ptr %35, align 8, !tbaa !84
  %37 = load ptr, ptr %25, align 8, !tbaa !50
  %38 = load ptr, ptr %30, align 8, !tbaa !50
  %39 = load ptr, ptr %10, align 8, !tbaa !86
  %40 = load ptr, ptr %2, align 8, !tbaa !85
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !50
  %43 = load i32, ptr %36, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  switch i32 %24, label %46 [
    i32 89, label %49
    i32 88, label %49
    i32 86, label %49
  ]

46:                                               ; preds = %34
  %47 = icmp eq i32 %24, 87
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %34, %34, %34, %46
  %50 = phi i32 [ 1, %34 ], [ %48, %46 ], [ 1, %34 ], [ 1, %34 ]
  %51 = tail call ptr @emit_conditional_add(ptr noundef nonnull %36, i32 noundef %24, ptr noundef %37, ptr noundef %38, i32 noundef 0, ptr noundef %39, ptr noundef %42, i32 noundef %45, i32 noundef %50) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %35, align 8, !tbaa !84
  %55 = icmp eq ptr %51, %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call fastcc void @noce_emit_move_insn(ptr noundef %54, ptr noundef nonnull %51) #17
  br label %57

57:                                               ; preds = %56, %53
  %58 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %59 = icmp eq ptr %58, null
  br i1 %59, label %124, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %17, align 8, !tbaa !60
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !82
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !50
  %66 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %58, ptr noundef %61, i32 noundef %65) #16
  br label %124

67:                                               ; preds = %49
  tail call void @end_sequence() #16
  br label %68

68:                                               ; preds = %67, %29, %21
  %69 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %70 = load i32, ptr %69, align 4, !tbaa !62
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %124

72:                                               ; preds = %68
  %73 = load ptr, ptr %2, align 8, !tbaa !85
  %74 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !50
  %76 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !9
  %77 = icmp eq ptr %75, %76
  %78 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %79 = icmp eq ptr %75, %78
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %72
  tail call void @start_sequence() #16
  %82 = load ptr, ptr %2, align 8, !tbaa !85
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !50
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !50
  switch i64 %86, label %88 [
    i64 1, label %90
    i64 -1, label %87
  ]

87:                                               ; preds = %81
  br label %90

88:                                               ; preds = %81
  %89 = trunc i64 %86 to i32
  br label %90

90:                                               ; preds = %81, %87, %88
  %91 = phi i32 [ 50, %87 ], [ 49, %88 ], [ 49, %81 ]
  %92 = phi i32 [ 0, %87 ], [ %89, %88 ], [ 0, %81 ]
  %93 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %94 = load ptr, ptr %93, align 8, !tbaa !84
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = tail call ptr @gen_reg_rtx(i32 noundef %97) #16
  %99 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %0, ptr noundef %98, i32 noundef 1, i32 noundef %92) #17
  %100 = icmp eq ptr %99, null
  br i1 %100, label %123, label %101

101:                                              ; preds = %90
  %102 = load ptr, ptr %93, align 8, !tbaa !84
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = load ptr, ptr %10, align 8, !tbaa !86
  %107 = tail call ptr @expand_simple_binop(i32 noundef %105, i32 noundef %91, ptr noundef %106, ptr noundef nonnull %99, ptr noundef nonnull %102, i32 noundef 0, i32 noundef 2) #16
  %108 = icmp eq ptr %107, null
  br i1 %108, label %123, label %109

109:                                              ; preds = %101
  %110 = load ptr, ptr %93, align 8, !tbaa !84
  %111 = icmp eq ptr %107, %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call fastcc void @noce_emit_move_insn(ptr noundef %110, ptr noundef nonnull %107) #17
  br label %113

113:                                              ; preds = %112, %109
  %114 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %115 = icmp eq ptr %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %17, align 8, !tbaa !60
  %118 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !82
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 2
  %121 = load i32, ptr %120, align 8, !tbaa !50
  %122 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %114, ptr noundef %117, i32 noundef %121) #16
  br label %124

123:                                              ; preds = %90, %101
  tail call void @end_sequence() #16
  br label %124

124:                                              ; preds = %113, %57, %116, %60, %1, %7, %14, %68, %123, %72
  %125 = phi i32 [ 0, %72 ], [ 0, %123 ], [ 0, %68 ], [ 0, %14 ], [ 0, %7 ], [ 0, %1 ], [ 0, %113 ], [ 0, %57 ], [ 1, %116 ], [ 1, %60 ]
  ret i32 %125
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_store_flag_mask(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %68

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = tail call i32 @rtx_equal_p(ptr noundef %12, ptr noundef %14) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %10, %5
  %18 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = tail call i32 @reversed_comparison_code(ptr noundef %19, ptr noundef %21) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  %33 = tail call i32 @rtx_equal_p(ptr noundef %30, ptr noundef %32) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %68, label %35

35:                                               ; preds = %29, %10
  %36 = phi i32 [ 0, %10 ], [ 1, %29 ]
  tail call void @start_sequence() #16
  %37 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call ptr @gen_reg_rtx(i32 noundef %41) #16
  %43 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %0, ptr noundef %42, i32 noundef %36, i32 noundef -1) #17
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %35
  %46 = load ptr, ptr %37, align 8, !tbaa !84
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = tail call ptr @expand_simple_binop(i32 noundef %49, i32 noundef 61, ptr noundef nonnull %46, ptr noundef nonnull %43, ptr noundef nonnull %46, i32 noundef 0, i32 noundef 2) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %37, align 8, !tbaa !84
  %54 = icmp eq ptr %50, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call fastcc void @noce_emit_move_insn(ptr noundef %53, ptr noundef nonnull %50) #17
  br label %56

56:                                               ; preds = %55, %52
  %57 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !60
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !82
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !50
  %66 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %57, ptr noundef %61, i32 noundef %65) #16
  br label %68

67:                                               ; preds = %35, %45
  tail call void @end_sequence() #16
  br label %68

68:                                               ; preds = %1, %17, %24, %29, %67, %56, %59
  %69 = phi i32 [ 1, %59 ], [ 0, %56 ], [ 0, %67 ], [ 0, %29 ], [ 0, %24 ], [ 0, %17 ], [ 0, %1 ]
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_cmove_arith(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = load i32, ptr @cse_not_expected, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %14, label %55

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %20 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 5
  %25 = load i8, ptr %24, align 8, !tbaa !99
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %18, %23
  %28 = phi i32 [ %26, %23 ], [ 0, %18 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 5
  %35 = load i8, ptr %34, align 8, !tbaa !99
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %27, %33
  %38 = phi i32 [ %36, %33 ], [ 0, %27 ]
  %39 = icmp eq i32 %28, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !62
  %43 = icmp sgt i32 %42, 4
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !101
  br i1 %22, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 5
  %48 = load i8, ptr %47, align 8, !tbaa !99
  br label %49

49:                                               ; preds = %44, %46
  %50 = phi i8 [ %48, %46 ], [ 0, %44 ]
  %51 = tail call i32 %45(i8 noundef zeroext %50) #16
  %52 = load ptr, ptr %19, align 8, !tbaa !50
  %53 = load ptr, ptr %29, align 8, !tbaa !50
  %54 = tail call ptr @gen_reg_rtx(i32 noundef %51) #16
  br label %61

55:                                               ; preds = %40, %37, %14, %10, %1
  %56 = tail call i32 @may_trap_p(ptr noundef %3) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %382

58:                                               ; preds = %55
  %59 = tail call i32 @may_trap_p(ptr noundef %5) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %382

61:                                               ; preds = %58, %49
  %62 = phi i1 [ false, %49 ], [ true, %58 ]
  %63 = phi ptr [ %54, %49 ], [ %7, %58 ]
  %64 = phi ptr [ %53, %49 ], [ %5, %58 ]
  %65 = phi ptr [ %52, %49 ], [ %3, %58 ]
  %66 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !58
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !82
  %72 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !83
  %74 = icmp eq ptr %71, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !50
  %80 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %79) #16
  %81 = tail call i32 @insn_rtx_cost(ptr noundef %77, i8 noundef zeroext %80) #16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %382, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %85 = load i32, ptr %84, align 4, !tbaa !62
  %86 = shl nsw i32 %85, 2
  %87 = icmp sgt i32 %81, %86
  br i1 %87, label %382, label %88

88:                                               ; preds = %61, %83
  %89 = phi i32 [ %81, %83 ], [ 0, %61 ]
  %90 = icmp eq ptr %73, null
  br i1 %90, label %105, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !50
  %94 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !50
  %96 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %95) #16
  %97 = tail call i32 @insn_rtx_cost(ptr noundef %93, i8 noundef zeroext %96) #16
  %98 = add nsw i32 %97, %89
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %382, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %102 = load i32, ptr %101, align 4, !tbaa !62
  %103 = shl nsw i32 %102, 2
  %104 = icmp sgt i32 %98, %103
  br i1 %104, label %382, label %105

105:                                              ; preds = %100, %88
  %106 = load ptr, ptr %66, align 8, !tbaa !58
  %107 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !60
  %109 = tail call i32 @reversed_comparison_code(ptr noundef %106, ptr noundef %108) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %105
  %112 = tail call i32 @rtx_equal_p(ptr noundef %64, ptr noundef %63) #16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, ptr %64, align 8
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = tail call i32 @general_operand(ptr noundef nonnull %64, i32 noundef %117) #16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %111, %114
  %121 = load ptr, ptr %66, align 8, !tbaa !58
  %122 = load ptr, ptr %107, align 8, !tbaa !60
  %123 = tail call i32 @reversed_comparison_code(ptr noundef %121, ptr noundef %122) #16
  br label %124

124:                                              ; preds = %114, %120, %105
  %125 = phi ptr [ %73, %105 ], [ %71, %120 ], [ %73, %114 ]
  %126 = phi ptr [ %71, %105 ], [ %73, %120 ], [ %71, %114 ]
  %127 = phi i32 [ %69, %105 ], [ %123, %120 ], [ %69, %114 ]
  %128 = phi ptr [ %64, %105 ], [ %65, %120 ], [ %64, %114 ]
  %129 = phi ptr [ %65, %105 ], [ %64, %120 ], [ %65, %114 ]
  tail call void @start_sequence() #16
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 255
  %133 = tail call i32 @general_operand(ptr noundef nonnull %129, i32 noundef %132) #16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %124
  br i1 %62, label %142, label %136

136:                                              ; preds = %135
  %137 = load i32, ptr %129, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = tail call ptr @gen_reg_rtx(i32 noundef %139) #16
  %141 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %140, ptr noundef nonnull %129) #16
  br label %161

142:                                              ; preds = %135
  %143 = icmp eq ptr %126, null
  br i1 %143, label %381, label %144

144:                                              ; preds = %142
  %145 = load i32, ptr %129, align 8
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = tail call ptr @gen_reg_rtx(i32 noundef %147) #16
  %149 = tail call ptr @copy_rtx(ptr noundef nonnull %126) #16
  %150 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !50
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 23
  br i1 %154, label %157, label %155

155:                                              ; preds = %144
  %156 = tail call ptr @single_set_2(ptr noundef nonnull %149, ptr noundef nonnull %151) #16
  br label %157

157:                                              ; preds = %144, %155
  %158 = phi ptr [ %156, %155 ], [ %151, %144 ]
  %159 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1
  store ptr %148, ptr %159, align 8, !tbaa !50
  %160 = load ptr, ptr %150, align 8, !tbaa !50
  br label %161

161:                                              ; preds = %157, %136
  %162 = phi ptr [ %160, %157 ], [ %141, %136 ]
  %163 = phi ptr [ %148, %157 ], [ %129, %136 ]
  %164 = tail call ptr @emit_insn(ptr noundef %162) #16
  %165 = tail call fastcc i32 @recog_memoized(ptr noundef %164) #17
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %381, label %167

167:                                              ; preds = %161, %124
  %168 = phi ptr [ %129, %124 ], [ %163, %161 ]
  %169 = load i32, ptr %128, align 8
  %170 = lshr i32 %169, 16
  %171 = and i32 %170, 255
  %172 = tail call i32 @general_operand(ptr noundef nonnull %128, i32 noundef %171) #16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %219

174:                                              ; preds = %167
  br i1 %62, label %181, label %175

175:                                              ; preds = %174
  %176 = load i32, ptr %128, align 8
  %177 = lshr i32 %176, 16
  %178 = and i32 %177, 255
  %179 = tail call ptr @gen_reg_rtx(i32 noundef %178) #16
  %180 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %179, ptr noundef nonnull %128) #16
  br label %200

181:                                              ; preds = %174
  %182 = icmp eq ptr %125, null
  br i1 %182, label %381, label %183

183:                                              ; preds = %181
  %184 = load i32, ptr %128, align 8
  %185 = lshr i32 %184, 16
  %186 = and i32 %185, 255
  %187 = tail call ptr @gen_reg_rtx(i32 noundef %186) #16
  %188 = tail call ptr @copy_rtx(ptr noundef nonnull %125) #16
  %189 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !50
  %191 = load i32, ptr %190, align 8
  %192 = and i32 %191, 65535
  %193 = icmp eq i32 %192, 23
  br i1 %193, label %196, label %194

194:                                              ; preds = %183
  %195 = tail call ptr @single_set_2(ptr noundef nonnull %188, ptr noundef nonnull %190) #16
  br label %196

196:                                              ; preds = %183, %194
  %197 = phi ptr [ %195, %194 ], [ %190, %183 ]
  %198 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1
  store ptr %187, ptr %198, align 8, !tbaa !50
  %199 = load ptr, ptr %189, align 8, !tbaa !50
  br label %200

200:                                              ; preds = %196, %175
  %201 = phi ptr [ %180, %175 ], [ %199, %196 ]
  %202 = phi ptr [ %128, %175 ], [ %187, %196 ]
  %203 = tail call ptr @get_last_insn() #16
  %204 = icmp eq ptr %203, null
  br i1 %204, label %213, label %205

205:                                              ; preds = %200
  %206 = tail call i32 @modified_in_p(ptr noundef nonnull %128, ptr noundef nonnull %203) #16
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %205
  %209 = tail call ptr @get_insns() #16
  %210 = tail call ptr @emit_insn_before(ptr noundef %201, ptr noundef %209) #16
  %211 = tail call i32 @modified_in_p(ptr noundef nonnull %129, ptr noundef %210) #16
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %381

213:                                              ; preds = %205, %200
  %214 = tail call ptr @emit_insn(ptr noundef %201) #16
  br label %215

215:                                              ; preds = %208, %213
  %216 = phi ptr [ %210, %208 ], [ %214, %213 ]
  %217 = tail call fastcc i32 @recog_memoized(ptr noundef %216) #17
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %381, label %219

219:                                              ; preds = %215, %167
  %220 = phi ptr [ %128, %167 ], [ %202, %215 ]
  %221 = load ptr, ptr %66, align 8, !tbaa !58
  %222 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !50
  %224 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !50
  %226 = tail call fastcc ptr @noce_emit_cmove(ptr noundef nonnull %0, ptr noundef %63, i32 noundef %127, ptr noundef %223, ptr noundef %225, ptr noundef %168, ptr noundef %220) #17
  %227 = icmp eq ptr %226, null
  br i1 %227, label %381, label %228

228:                                              ; preds = %219
  br i1 %62, label %369, label %229

229:                                              ; preds = %228
  %230 = load ptr, ptr %6, align 8, !tbaa !84
  %231 = load i32, ptr %230, align 8
  %232 = lshr i32 %231, 16
  %233 = and i32 %232, 255
  %234 = tail call ptr @gen_rtx_MEM(i32 noundef %233, ptr noundef nonnull %226) #16
  %235 = load ptr, ptr %2, align 8, !tbaa !85
  %236 = load i32, ptr %235, align 8
  %237 = and i32 %236, 134217728
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %229
  %240 = load ptr, ptr %4, align 8, !tbaa !86
  %241 = load i32, ptr %240, align 8
  %242 = and i32 %241, 134217728
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %239, %229
  %245 = load i32, ptr %234, align 8
  %246 = or i32 %245, 134217728
  store i32 %246, ptr %234, align 8
  %247 = load ptr, ptr %2, align 8, !tbaa !85
  %248 = load i32, ptr %247, align 8
  br label %249

249:                                              ; preds = %244, %239
  %250 = phi i32 [ %248, %244 ], [ %236, %239 ]
  %251 = phi ptr [ %247, %244 ], [ %235, %239 ]
  %252 = and i32 %250, 268435456
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %249
  %255 = load ptr, ptr %4, align 8, !tbaa !86
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, 268435456
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %254
  %260 = load i32, ptr %234, align 8
  %261 = or i32 %260, 268435456
  store i32 %261, ptr %234, align 8
  %262 = load ptr, ptr %2, align 8, !tbaa !85
  %263 = load i32, ptr %262, align 8
  br label %264

264:                                              ; preds = %259, %254, %249
  %265 = phi i32 [ %263, %259 ], [ %250, %254 ], [ %250, %249 ]
  %266 = phi ptr [ %262, %259 ], [ %251, %254 ], [ %251, %249 ]
  %267 = icmp sgt i32 %265, -1
  br i1 %267, label %276, label %268

268:                                              ; preds = %264
  %269 = load ptr, ptr %4, align 8, !tbaa !86
  %270 = load i32, ptr %269, align 8
  %271 = icmp sgt i32 %270, -1
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load i32, ptr %234, align 8
  %274 = or i32 %273, -2147483648
  store i32 %274, ptr %234, align 8
  %275 = load ptr, ptr %2, align 8, !tbaa !85
  br label %276

276:                                              ; preds = %272, %268, %264
  %277 = phi ptr [ %275, %272 ], [ %266, %268 ], [ %266, %264 ]
  %278 = getelementptr inbounds %struct.rtx_def, ptr %277, i64 0, i32 1, i32 0, i32 0, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !50
  %280 = icmp eq ptr %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.mem_attrs, ptr %279, i64 0, i32 3
  %283 = load i32, ptr %282, align 8, !tbaa !102
  br label %284

284:                                              ; preds = %276, %281
  %285 = phi i32 [ %283, %281 ], [ 0, %276 ]
  %286 = load ptr, ptr %4, align 8, !tbaa !86
  %287 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1, i32 0, i32 0, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !50
  %289 = icmp eq ptr %288, null
  br i1 %289, label %293, label %290

290:                                              ; preds = %284
  %291 = getelementptr inbounds %struct.mem_attrs, ptr %288, i64 0, i32 3
  %292 = load i32, ptr %291, align 8, !tbaa !102
  br label %293

293:                                              ; preds = %284, %290
  %294 = phi i32 [ %292, %290 ], [ 0, %284 ]
  %295 = icmp eq i32 %285, %294
  br i1 %295, label %296, label %305

296:                                              ; preds = %293
  br i1 %280, label %300, label %297

297:                                              ; preds = %296
  %298 = getelementptr inbounds %struct.mem_attrs, ptr %279, i64 0, i32 3
  %299 = load i32, ptr %298, align 8, !tbaa !102
  br label %300

300:                                              ; preds = %296, %297
  %301 = phi i32 [ %299, %297 ], [ 0, %296 ]
  tail call void @set_mem_alias_set(ptr noundef %234, i32 noundef %301) #16
  %302 = load ptr, ptr %2, align 8, !tbaa !85
  %303 = getelementptr inbounds %struct.rtx_def, ptr %302, i64 0, i32 1, i32 0, i32 0, i64 1
  %304 = load ptr, ptr %303, align 8, !tbaa !50
  br label %305

305:                                              ; preds = %300, %293
  %306 = phi ptr [ %304, %300 ], [ %279, %293 ]
  %307 = icmp eq ptr %306, null
  br i1 %307, label %315, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.mem_attrs, ptr %306, i64 0, i32 4
  %310 = load i32, ptr %309, align 4, !tbaa !103
  %311 = load ptr, ptr %4, align 8, !tbaa !86
  %312 = getelementptr inbounds %struct.rtx_def, ptr %311, i64 0, i32 1, i32 0, i32 0, i64 1
  %313 = load ptr, ptr %312, align 8, !tbaa !50
  %314 = icmp eq ptr %313, null
  br i1 %314, label %320, label %326

315:                                              ; preds = %305
  %316 = load ptr, ptr %4, align 8, !tbaa !86
  %317 = getelementptr inbounds %struct.rtx_def, ptr %316, i64 0, i32 1, i32 0, i32 0, i64 1
  %318 = load ptr, ptr %317, align 8, !tbaa !50
  %319 = icmp eq ptr %318, null
  br i1 %319, label %333, label %322

320:                                              ; preds = %308
  %321 = tail call i32 @llvm.umin.i32(i32 %310, i32 8)
  br label %333

322:                                              ; preds = %315
  %323 = getelementptr inbounds %struct.mem_attrs, ptr %318, i64 0, i32 4
  %324 = load i32, ptr %323, align 4, !tbaa !103
  %325 = tail call i32 @llvm.umin.i32(i32 %324, i32 8)
  br label %333

326:                                              ; preds = %308
  %327 = getelementptr inbounds %struct.mem_attrs, ptr %313, i64 0, i32 4
  %328 = load i32, ptr %327, align 4, !tbaa !103
  %329 = icmp ult i32 %310, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.mem_attrs, ptr %306, i64 0, i32 4
  %332 = load i32, ptr %331, align 4, !tbaa !103
  br label %333

333:                                              ; preds = %322, %320, %326, %330, %315
  %334 = phi i32 [ 8, %315 ], [ %332, %330 ], [ %328, %326 ], [ %321, %320 ], [ %325, %322 ]
  tail call void @set_mem_align(ptr noundef %234, i32 noundef %334) #16
  %335 = load ptr, ptr %2, align 8, !tbaa !85
  %336 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1, i32 0, i32 0, i64 1
  %337 = load ptr, ptr %336, align 8, !tbaa !50
  %338 = icmp eq ptr %337, null
  br i1 %338, label %343, label %339

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.mem_attrs, ptr %337, i64 0, i32 5
  %341 = load i8, ptr %340, align 8, !tbaa !99
  %342 = zext i8 %341 to i32
  br label %343

343:                                              ; preds = %333, %339
  %344 = phi i32 [ %342, %339 ], [ 0, %333 ]
  %345 = load ptr, ptr %4, align 8, !tbaa !86
  %346 = getelementptr inbounds %struct.rtx_def, ptr %345, i64 0, i32 1, i32 0, i32 0, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !50
  %348 = icmp eq ptr %347, null
  br i1 %348, label %353, label %349

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.mem_attrs, ptr %347, i64 0, i32 5
  %351 = load i8, ptr %350, align 8, !tbaa !99
  %352 = zext i8 %351 to i32
  br label %353

353:                                              ; preds = %343, %349
  %354 = phi i32 [ %352, %349 ], [ 0, %343 ]
  %355 = icmp eq i32 %344, %354
  br i1 %355, label %360, label %356

356:                                              ; preds = %353
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1486, ptr noundef nonnull @.str.10) #16
  %357 = load ptr, ptr %2, align 8, !tbaa !85
  %358 = getelementptr inbounds %struct.rtx_def, ptr %357, i64 0, i32 1, i32 0, i32 0, i64 1
  %359 = load ptr, ptr %358, align 8, !tbaa !50
  br label %360

360:                                              ; preds = %353, %356
  %361 = phi ptr [ %337, %353 ], [ %359, %356 ]
  %362 = icmp eq ptr %361, null
  br i1 %362, label %366, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.mem_attrs, ptr %361, i64 0, i32 5
  %365 = load i8, ptr %364, align 8, !tbaa !99
  br label %366

366:                                              ; preds = %360, %363
  %367 = phi i8 [ %365, %363 ], [ 0, %360 ]
  tail call void @set_mem_addr_space(ptr noundef %234, i8 noundef zeroext %367) #16
  %368 = load ptr, ptr %6, align 8, !tbaa !84
  tail call fastcc void @noce_emit_move_insn(ptr noundef %368, ptr noundef %234) #17
  br label %372

369:                                              ; preds = %228
  %370 = icmp eq ptr %226, %63
  br i1 %370, label %372, label %371

371:                                              ; preds = %369
  tail call fastcc void @noce_emit_move_insn(ptr noundef %63, ptr noundef nonnull %226) #17
  br label %372

372:                                              ; preds = %369, %371, %366
  %373 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %374 = icmp eq ptr %373, null
  br i1 %374, label %382, label %375

375:                                              ; preds = %372
  %376 = load ptr, ptr %107, align 8, !tbaa !60
  %377 = load ptr, ptr %70, align 8, !tbaa !82
  %378 = getelementptr inbounds %struct.rtx_def, ptr %377, i64 0, i32 1, i32 0, i32 2
  %379 = load i32, ptr %378, align 8, !tbaa !50
  %380 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %373, ptr noundef %376, i32 noundef %379) #16
  br label %382

381:                                              ; preds = %215, %208, %181, %161, %142, %219
  tail call void @end_sequence() #16
  br label %382

382:                                              ; preds = %372, %91, %100, %75, %83, %55, %58, %381, %375
  %383 = phi i32 [ 1, %375 ], [ 0, %381 ], [ 0, %58 ], [ 0, %55 ], [ 0, %83 ], [ 0, %75 ], [ 0, %100 ], [ 0, %91 ], [ 0, %372 ]
  ret i32 %383
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_sign_mask(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = icmp eq i32 %5, 85
  %16 = icmp eq ptr %9, %11
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %5, 84
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %21 = icmp eq ptr %9, %20
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %95

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  br label %39

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = icmp eq ptr %28, %12
  br i1 %29, label %30, label %95

30:                                               ; preds = %26
  %31 = icmp eq i32 %5, 82
  %32 = icmp eq ptr %9, %12
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = icmp eq i32 %5, 83
  %36 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %37 = icmp eq ptr %9, %36
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %95

39:                                               ; preds = %30, %34, %23
  %40 = phi ptr [ %25, %23 ], [ %11, %34 ], [ %11, %30 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %95, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @side_effects_p(ptr noundef nonnull %40) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %42
  %46 = load i32, ptr %40, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = load i32, ptr %7, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, %48
  br i1 %52, label %53, label %95

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !86
  %56 = icmp eq ptr %40, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 8, !tbaa !53
  br label %68

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !83
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !50
  %66 = load ptr, ptr %0, align 8, !tbaa !53
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %57, %63
  %69 = phi ptr [ %58, %57 ], [ %66, %63 ]
  %70 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %69) #16
  %71 = tail call i32 @rtx_cost(ptr noundef nonnull %40, i32 noundef 23, i8 noundef zeroext %70) #16
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %95

73:                                               ; preds = %59, %68, %63
  tail call void @start_sequence() #16
  %74 = tail call ptr @gen_reg_rtx(i32 noundef %48) #16
  %75 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %76 = tail call ptr @emit_store_flag(ptr noundef %74, i32 noundef 85, ptr noundef nonnull %7, ptr noundef %75, i32 noundef %48, i32 noundef 0, i32 noundef -1) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = tail call ptr @expand_binop(i32 noundef %48, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %76, ptr noundef nonnull %40, ptr noundef null, i32 noundef 0, i32 noundef 0) #16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %73, %78
  tail call void @end_sequence() #16
  br label %95

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %84 = load ptr, ptr %83, align 8, !tbaa !84
  tail call fastcc void @noce_emit_move_insn(ptr noundef %84, ptr noundef nonnull %79) #17
  %85 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !60
  %90 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !82
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !50
  %94 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %85, ptr noundef %89, i32 noundef %93) #16
  br label %95

95:                                               ; preds = %26, %34, %18, %82, %68, %45, %39, %42, %87, %81
  %96 = phi i32 [ 1, %87 ], [ 0, %81 ], [ 0, %42 ], [ 0, %39 ], [ 0, %45 ], [ 0, %68 ], [ 0, %82 ], [ 0, %18 ], [ 0, %34 ], [ 0, %26 ]
  ret i32 %96
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @noce_emit_move_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 40
  br i1 %5, label %99, label %6

6:                                                ; preds = %2
  tail call void @start_sequence() #16
  %7 = load i32, ptr %1, align 8
  %8 = freeze i32 %7
  %9 = and i32 %8, 65535
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = icmp eq i32 %9, 39
  %14 = and i32 %12, -2
  %15 = icmp eq i32 %14, 8
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %1) #16
  br label %22

19:                                               ; preds = %6
  %20 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %1) #16
  %21 = tail call ptr @emit_insn(ptr noundef %20) #16
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %18, %17 ], [ %21, %19 ]
  %24 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %25 = tail call fastcc i32 @recog_memoized(ptr noundef %23) #17
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %96

27:                                               ; preds = %22
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 120
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !50
  %42 = load i32, ptr %33, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 43
  %45 = select i1 %44, i64 8, i64 32
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 763, ptr noundef nonnull @.str.10) #16
  %48 = load i32, ptr %0, align 8
  br label %49

49:                                               ; preds = %31, %47
  %50 = phi i32 [ %28, %31 ], [ %48, %47 ]
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  tail call void @store_bit_field(ptr noundef nonnull %33, i64 noundef %37, i64 noundef %41, i32 noundef %52, ptr noundef nonnull %1) #16
  br label %116

53:                                               ; preds = %27
  %54 = load i32, ptr %1, align 8
  %55 = and i32 %54, 65535
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !5
  switch i32 %58, label %96 [
    i32 4, label %59
    i32 2, label %73
    i32 3, label %73
  ]

59:                                               ; preds = %53
  %60 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %96, label %63

63:                                               ; preds = %59
  tail call void @start_sequence() #16
  %64 = load i32, ptr %1, align 8
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !50
  %69 = tail call ptr @expand_unop(i32 noundef %66, ptr noundef nonnull %61, ptr noundef %68, ptr noundef nonnull %0, i32 noundef 0) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %94, label %71

71:                                               ; preds = %63
  %72 = icmp eq ptr %69, %0
  br i1 %72, label %92, label %89

73:                                               ; preds = %53, %53
  %74 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %56
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %73
  tail call void @start_sequence() #16
  %78 = load i32, ptr %1, align 8
  %79 = lshr i32 %78, 16
  %80 = and i32 %79, 255
  %81 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !50
  %83 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !50
  %85 = tail call ptr @expand_binop(i32 noundef %80, ptr noundef nonnull %75, ptr noundef %82, ptr noundef %84, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #16
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %77
  %88 = icmp eq ptr %85, %0
  br i1 %88, label %92, label %89

89:                                               ; preds = %87, %71
  %90 = phi ptr [ %69, %71 ], [ %85, %87 ]
  %91 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %90) #16
  br label %92

92:                                               ; preds = %89, %87, %71
  %93 = tail call ptr @get_insns() #16
  br label %94

94:                                               ; preds = %92, %77, %63
  %95 = phi ptr [ %24, %63 ], [ %24, %77 ], [ %93, %92 ]
  tail call void @end_sequence() #16
  br label %96

96:                                               ; preds = %94, %59, %73, %53, %22
  %97 = phi ptr [ %24, %53 ], [ %24, %73 ], [ %24, %59 ], [ %24, %22 ], [ %95, %94 ]
  %98 = tail call ptr @emit_insn(ptr noundef %97) #16
  br label %116

99:                                               ; preds = %2
  %100 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !50
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !50
  %104 = load i32, ptr %101, align 8
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  %107 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load i32, ptr %107, align 8, !tbaa !50
  %109 = shl i32 %108, 3
  %110 = zext nneg i32 %106 to i64
  %111 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !50
  %113 = zext i8 %112 to i64
  %114 = shl nuw nsw i64 %113, 3
  %115 = sext i32 %109 to i64
  tail call void @store_bit_field(ptr noundef %103, i64 noundef %114, i64 noundef %115, i32 noundef %106, ptr noundef %1) #16
  br label %116

116:                                              ; preds = %49, %96, %99
  ret void
}

; Function Attrs: optsize
declare void @set_used_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unshare_all_rtl_in_chain(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_insn_before_setloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @may_trap_or_fault_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @decl_readonly_section(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @volatile_insn_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @memory_modified_in_insn_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @end_ifcvt_sequence(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call ptr @get_insns() #16
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  tail call void @set_used_flags(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  tail call void @set_used_flags(ptr noundef %6) #16
  tail call void @unshare_all_rtl_in_chain(ptr noundef %2) #16
  tail call void @end_sequence() #16
  %7 = icmp eq ptr %2, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1, %16
  %9 = phi ptr [ %18, %16 ], [ %2, %1 ]
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %9) #17
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !104

20:                                               ; preds = %13, %8, %16, %1
  %21 = phi ptr [ null, %1 ], [ %2, %16 ], [ null, %8 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #16
  store i32 %8, ptr %2, align 8, !tbaa !50
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @noce_emit_store_flag(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @general_operand(ptr noundef %8, i32 noundef 0) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = tail call i32 @general_operand(ptr noundef %13, i32 noundef 0) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %4, %11
  %17 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = tail call ptr @pc_set(ptr noundef %18) #16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 44
  br i1 %28, label %29, label %39

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = load ptr, ptr %17, align 8, !tbaa !60
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 1, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = icmp eq ptr %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = icmp eq i32 %2, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %36, %29, %16
  %40 = phi i32 [ %38, %36 ], [ %2, %29 ], [ %2, %16 ]
  %41 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 12
  %42 = load i8, ptr %41, align 8, !tbaa !61
  %43 = icmp eq i8 %42, 0
  %44 = icmp eq i32 %40, 0
  %45 = zext i1 %44 to i32
  %46 = select i1 %43, i32 %40, i32 %45
  br label %47

47:                                               ; preds = %39, %11
  %48 = phi i1 [ true, %39 ], [ false, %11 ]
  %49 = phi ptr [ %23, %39 ], [ %6, %11 ]
  %50 = phi i32 [ %46, %39 ], [ %2, %11 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !60
  %55 = tail call i32 @reversed_comparison_code(ptr noundef %49, ptr noundef %54) #16
  br label %59

56:                                               ; preds = %47
  %57 = load i32, ptr %49, align 8
  %58 = and i32 %57, 65535
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %55, %52 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !60
  %65 = icmp eq ptr %62, %64
  %66 = or i1 %48, %65
  %67 = icmp ult i32 %3, 2
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %87

69:                                               ; preds = %59
  %70 = load i32, ptr %1, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !50
  %75 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  %77 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %60, i32 noundef %72, ptr noundef %74, ptr noundef %76) #16
  %78 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %1, ptr noundef %77) #16
  tail call void @start_sequence() #16
  %79 = tail call ptr @emit_insn(ptr noundef %78) #16
  %80 = tail call fastcc i32 @recog_memoized(ptr noundef %79) #17
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %84 = tail call ptr @emit_insn(ptr noundef %83) #16
  %85 = load ptr, ptr %63, align 8, !tbaa !60
  store ptr %85, ptr %61, align 8, !tbaa !59
  br label %108

86:                                               ; preds = %69
  tail call void @end_sequence() #16
  br i1 %48, label %108, label %88

87:                                               ; preds = %59
  br i1 %48, label %108, label %88

88:                                               ; preds = %86, %87
  %89 = load i32, ptr %1, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !50
  %95 = and i8 %94, -2
  %96 = icmp eq i8 %95, 2
  br i1 %96, label %97, label %108

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !50
  %100 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !50
  switch i32 %60, label %102 [
    i32 89, label %105
    i32 88, label %105
    i32 86, label %105
  ]

102:                                              ; preds = %97
  %103 = icmp eq i32 %60, 87
  %104 = zext i1 %103 to i32
  br label %105

105:                                              ; preds = %97, %97, %97, %102
  %106 = phi i32 [ 1, %97 ], [ %104, %102 ], [ 1, %97 ], [ 1, %97 ]
  %107 = tail call ptr @emit_store_flag(ptr noundef nonnull %1, i32 noundef %60, ptr noundef %99, ptr noundef %101, i32 noundef 0, i32 noundef %106, i32 noundef %3) #16
  br label %108

108:                                              ; preds = %82, %88, %86, %87, %105
  %109 = phi ptr [ %107, %105 ], [ null, %86 ], [ null, %88 ], [ null, %87 ], [ %1, %82 ]
  ret ptr %109
}

; Function Attrs: optsize
declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_store_flag(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @noce_get_alt_condition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = tail call i32 @reg_mentioned_p(ptr noundef %1, ptr noundef %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  store ptr %10, ptr %2, align 8, !tbaa !9
  %11 = load ptr, ptr %4, align 8, !tbaa !58
  br label %213

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = tail call ptr @pc_set(ptr noundef %14) #16
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 44
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = load ptr, ptr %13, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  %31 = icmp eq ptr %27, %30
  br label %32

32:                                               ; preds = %25, %12
  %33 = phi i1 [ false, %12 ], [ %31, %25 ]
  %34 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 12
  %35 = load i8, ptr %34, align 8, !tbaa !61
  %36 = icmp ne i8 %35, 0
  %37 = xor i1 %33, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, ptr %1, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %153

42:                                               ; preds = %32
  %43 = load ptr, ptr %4, align 8, !tbaa !58
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !50
  %50 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !59
  %52 = tail call ptr @prev_nonnote_insn(ptr noundef %51) #16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %105, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  %57 = load ptr, ptr %50, align 8, !tbaa !59
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = icmp eq ptr %56, %59
  br i1 %60, label %61, label %105

61:                                               ; preds = %54
  %62 = load i32, ptr %52, align 8
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -7
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %66, label %105

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !50
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 23
  br i1 %71, label %72, label %105

72:                                               ; preds = %66
  %73 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %52) #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load ptr, ptr %67, align 8, !tbaa !50
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !50
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi ptr [ %73, %72 ], [ %78, %75 ]
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 30
  br i1 %83, label %84, label %105

84:                                               ; preds = %79
  %85 = load ptr, ptr %67, align 8, !tbaa !50
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !50
  %88 = tail call i32 @rtx_equal_p(ptr noundef %47, ptr noundef %87) #16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load ptr, ptr %67, align 8, !tbaa !50
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !50
  %94 = tail call i32 @rtx_equal_p(ptr noundef %49, ptr noundef %93) #16
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, ptr %49, ptr %80
  br label %97

97:                                               ; preds = %90, %84
  %98 = phi ptr [ %80, %84 ], [ %47, %90 ]
  %99 = phi ptr [ %49, %84 ], [ %96, %90 ]
  %100 = load i32, ptr %98, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 30
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = tail call i32 @swap_condition(i32 noundef %45) #16
  br label %105

105:                                              ; preds = %61, %79, %103, %97, %66, %54, %42
  %106 = phi i32 [ %45, %66 ], [ %45, %54 ], [ %45, %42 ], [ %45, %61 ], [ %104, %103 ], [ %45, %97 ], [ %45, %79 ]
  %107 = phi ptr [ %47, %66 ], [ %47, %54 ], [ %47, %42 ], [ %47, %61 ], [ %99, %103 ], [ %98, %97 ], [ %47, %79 ]
  %108 = phi ptr [ %49, %66 ], [ %49, %54 ], [ %49, %42 ], [ %49, %61 ], [ %98, %103 ], [ %99, %97 ], [ %49, %79 ]
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 30
  br i1 %111, label %112, label %132

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !50
  %115 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !50
  switch i32 %106, label %132 [
    i32 85, label %117
    i32 84, label %120
    i32 83, label %123
    i32 82, label %126
  ]

117:                                              ; preds = %112
  %118 = add nsw i64 %114, 1
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %129, label %132

120:                                              ; preds = %112
  %121 = add nsw i64 %114, -1
  %122 = icmp eq i64 %116, %121
  br i1 %122, label %129, label %132

123:                                              ; preds = %112
  %124 = add nsw i64 %114, -1
  %125 = icmp eq i64 %116, %124
  br i1 %125, label %129, label %132

126:                                              ; preds = %112
  %127 = add nsw i64 %114, 1
  %128 = icmp eq i64 %116, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %126, %123, %120, %117
  %130 = phi i32 [ 84, %117 ], [ 85, %120 ], [ 82, %123 ], [ 83, %126 ]
  %131 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %114) #16
  br label %132

132:                                              ; preds = %129, %117, %120, %123, %126, %112, %105
  %133 = phi i32 [ %106, %105 ], [ %106, %112 ], [ 82, %126 ], [ 83, %123 ], [ 84, %120 ], [ 85, %117 ], [ %130, %129 ]
  %134 = phi ptr [ %108, %105 ], [ %108, %112 ], [ %108, %126 ], [ %108, %123 ], [ %108, %120 ], [ %108, %117 ], [ %131, %129 ]
  %135 = load ptr, ptr %4, align 8, !tbaa !58
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %133, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !50
  %142 = icmp eq ptr %107, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1, i32 0, i32 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !50
  %146 = icmp eq ptr %134, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %132, %139, %143
  %148 = load i32, ptr %19, align 8
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  %151 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %133, i32 noundef %150, ptr noundef %107, ptr noundef %134) #16
  %152 = load ptr, ptr %50, align 8, !tbaa !59
  store ptr %152, ptr %2, align 8, !tbaa !9
  br label %213

153:                                              ; preds = %143, %32
  %154 = load ptr, ptr %13, align 8, !tbaa !60
  %155 = tail call ptr @canonicalize_condition(ptr noundef %154, ptr noundef %19, i32 noundef %38, ptr noundef %2, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1) #16
  %156 = icmp eq ptr %155, null
  br i1 %156, label %213, label %157

157:                                              ; preds = %153
  %158 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %1, ptr noundef nonnull %155) #16
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %213, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %13, align 8, !tbaa !50
  %162 = load ptr, ptr %2, align 8, !tbaa !9
  %163 = icmp eq ptr %161, %162
  br i1 %163, label %213, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  br label %171

166:                                              ; preds = %186
  %167 = load ptr, ptr %13, align 8, !tbaa !60
  %168 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %169 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %170 = icmp eq ptr %187, %167
  br i1 %170, label %213, label %191

171:                                              ; preds = %164, %186
  %172 = phi ptr [ %162, %164 ], [ %187, %186 ]
  %173 = phi ptr [ %161, %164 ], [ %189, %186 ]
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 65535
  %176 = add nsw i32 %175, -7
  %177 = icmp ult i32 %176, 4
  br i1 %177, label %178, label %186

178:                                              ; preds = %171
  %179 = load ptr, ptr %165, align 8, !tbaa !84
  %180 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !50
  %182 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %179, ptr noundef %181) #16
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %213

184:                                              ; preds = %178
  %185 = load ptr, ptr %2, align 8, !tbaa !9
  br label %186

186:                                              ; preds = %184, %171
  %187 = phi ptr [ %185, %184 ], [ %172, %171 ]
  %188 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1, i32 0, i32 0, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !50
  %190 = icmp eq ptr %189, %187
  br i1 %190, label %166, label %171, !llvm.loop !105

191:                                              ; preds = %166, %208
  %192 = phi ptr [ %209, %208 ], [ %167, %166 ]
  %193 = phi ptr [ %211, %208 ], [ %187, %166 ]
  %194 = load i32, ptr %193, align 8
  %195 = and i32 %194, 65535
  %196 = add nsw i32 %195, -7
  %197 = icmp ult i32 %196, 4
  br i1 %197, label %198, label %208

198:                                              ; preds = %191
  %199 = load ptr, ptr %168, align 8, !tbaa !85
  %200 = tail call i32 @modified_in_p(ptr noundef %199, ptr noundef nonnull %193) #16
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %198
  %203 = load ptr, ptr %169, align 8, !tbaa !86
  %204 = tail call i32 @modified_in_p(ptr noundef %203, ptr noundef nonnull %193) #16
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %202
  %207 = load ptr, ptr %13, align 8, !tbaa !60
  br label %208

208:                                              ; preds = %206, %191
  %209 = phi ptr [ %207, %206 ], [ %192, %191 ]
  %210 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 2
  %211 = load ptr, ptr %210, align 8, !tbaa !50
  %212 = icmp eq ptr %211, %209
  br i1 %212, label %213, label %191, !llvm.loop !106

213:                                              ; preds = %178, %202, %198, %208, %160, %166, %147, %153, %157, %8
  %214 = phi ptr [ %11, %8 ], [ %151, %147 ], [ null, %157 ], [ null, %153 ], [ %155, %166 ], [ %155, %160 ], [ null, %202 ], [ null, %198 ], [ %155, %208 ], [ null, %178 ]
  ret ptr %214
}

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expand_one_cmpl_abs_nojump(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expand_abs_nojump(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expand_simple_unop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @register_operand(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @noce_emit_cmove(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef %18, ptr noundef %3, ptr noundef %4) #16
  %20 = load i32, ptr %1, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %22, ptr noundef %19, ptr noundef %6, ptr noundef %5) #16
  %24 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %1, ptr noundef %23) #16
  tail call void @start_sequence() #16
  %25 = tail call ptr @emit_insn(ptr noundef %24) #16
  %26 = tail call fastcc i32 @recog_memoized(ptr noundef %25) #17
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %29, label %28

28:                                               ; preds = %13
  tail call void @end_sequence() #16
  br label %32

29:                                               ; preds = %13
  %30 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %31 = tail call ptr @emit_insn(ptr noundef %30) #16
  br label %54

32:                                               ; preds = %28, %7
  %33 = load i32, ptr %3, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = tail call i32 @general_operand(ptr noundef nonnull %3, i32 noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %4, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call i32 @general_operand(ptr noundef nonnull %4, i32 noundef %41) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %1, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  switch i32 %2, label %48 [
    i32 89, label %51
    i32 88, label %51
    i32 86, label %51
  ]

48:                                               ; preds = %44
  %49 = icmp eq i32 %2, 87
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %44, %44, %44, %48
  %52 = phi i32 [ 1, %44 ], [ %50, %48 ], [ 1, %44 ], [ 1, %44 ]
  %53 = tail call ptr @emit_conditional_move(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0, ptr noundef %6, ptr noundef %5, i32 noundef %47, i32 noundef %52) #16
  br label %54

54:                                               ; preds = %29, %32, %38, %51
  %55 = phi ptr [ %1, %29 ], [ %53, %51 ], [ null, %38 ], [ null, %32 ]
  ret ptr %55
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_eee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_conditional_move(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_conditional_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @insn_rtx_cost(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_mem_addr_space(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @store_bit_field(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expand_unop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @check_cond_move_block(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = tail call i32 @onlyjump_p(ptr noundef nonnull %8) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %132, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 8, !tbaa !50
  br label %17

17:                                               ; preds = %15, %4
  %18 = phi ptr [ %16, %15 ], [ %6, %4 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %132, label %21

21:                                               ; preds = %17, %128
  %22 = phi ptr [ %130, %128 ], [ %19, %17 ]
  %23 = load ptr, ptr %5, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %132, label %29

29:                                               ; preds = %21
  %30 = load i32, ptr %22, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %128

34:                                               ; preds = %29
  switch i32 %31, label %132 [
    i32 7, label %128
    i32 9, label %128
    i32 8, label %35
    i32 10, label %35
  ]

35:                                               ; preds = %34, %34
  %36 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = tail call ptr @single_set_2(ptr noundef nonnull %22, ptr noundef nonnull %37) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %132, label %44

44:                                               ; preds = %35, %41
  %45 = phi ptr [ %42, %41 ], [ %37, %35 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !50
  %50 = load i32, ptr %47, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %132

53:                                               ; preds = %44
  %54 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  %55 = icmp ult i32 %54, 53
  br i1 %55, label %132, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %49, align 8
  %58 = and i32 %57, 65535
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !5
  %62 = icmp eq i32 %61, 9
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = tail call i32 @register_operand(ptr noundef nonnull %49, i32 noundef 0) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %132, label %66

66:                                               ; preds = %63, %56
  %67 = tail call i32 @side_effects_p(ptr noundef nonnull %49) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %132

69:                                               ; preds = %66
  %70 = tail call i32 @side_effects_p(ptr noundef nonnull %47) #16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %132

72:                                               ; preds = %69
  %73 = tail call i32 @may_trap_p(ptr noundef nonnull %49) #16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %132

75:                                               ; preds = %72
  %76 = tail call i32 @may_trap_p(ptr noundef nonnull %47) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %132

78:                                               ; preds = %75
  %79 = load i32, ptr %49, align 8
  %80 = trunc i32 %79 to i16
  switch i16 %80, label %99 [
    i16 37, label %81
    i16 39, label %87
  ]

81:                                               ; preds = %78
  %82 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %49) #17
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %1, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %99, label %132

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !50
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %89) #17
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %1, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !9
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %132

99:                                               ; preds = %78, %81, %93, %87
  %100 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %1, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !9
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %132

105:                                              ; preds = %99
  %106 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %47, ptr noundef %3) #16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %105
  %109 = load i32, ptr %49, align 8
  %110 = and i32 %109, 65535
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !5
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %123, label %115

115:                                              ; preds = %108
  %116 = load ptr, ptr %5, align 8, !tbaa !50
  %117 = getelementptr inbounds %struct.rtl_bb_info, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !51
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 2
  %120 = load ptr, ptr %119, align 8, !tbaa !50
  %121 = tail call i32 @modified_between_p(ptr noundef nonnull %49, ptr noundef nonnull %22, ptr noundef %120) #16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %115, %108
  %124 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %1, i64 %125
  store ptr %49, ptr %126, align 8, !tbaa !9
  %127 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef %2, i32 noundef %127) #17
  br label %128

128:                                              ; preds = %123, %34, %34, %29
  %129 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %130 = load ptr, ptr %129, align 8, !tbaa !50
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %21, !llvm.loop !107

132:                                              ; preds = %128, %21, %41, %53, %44, %63, %69, %66, %75, %72, %93, %81, %99, %105, %115, %34, %17, %12
  %133 = phi i32 [ 0, %12 ], [ 1, %17 ], [ 1, %128 ], [ 1, %21 ], [ 0, %41 ], [ 0, %53 ], [ 0, %44 ], [ 0, %63 ], [ 0, %69 ], [ 0, %66 ], [ 0, %75 ], [ 0, %72 ], [ 0, %93 ], [ 0, %81 ], [ 0, %99 ], [ 0, %105 ], [ 0, %115 ], [ 0, %34 ]
  ret i32 %133
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !108
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !5
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cond_move_convert_if_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = icmp eq ptr %15, null
  br i1 %16, label %83, label %17

17:                                               ; preds = %6
  %18 = icmp eq i8 %5, 0
  br label %19

19:                                               ; preds = %17, %79
  %20 = phi ptr [ %15, %17 ], [ %81, %79 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %83, label %27

27:                                               ; preds = %19
  %28 = load i32, ptr %20, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -7
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %79

32:                                               ; preds = %27
  switch i32 %29, label %49 [
    i32 7, label %79
    i32 9, label %79
    i32 8, label %33
    i32 10, label %33
  ]

33:                                               ; preds = %32, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @single_set_2(ptr noundef nonnull %20, ptr noundef nonnull %35) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %33, %39
  %43 = phi ptr [ %40, %39 ], [ %35, %33 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %53, label %49

49:                                               ; preds = %32, %42, %39
  %50 = phi ptr [ %43, %42 ], [ null, %39 ], [ null, %32 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2597, ptr noundef nonnull @.str.10) #16
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  br label %53

53:                                               ; preds = %42, %49
  %54 = phi ptr [ %45, %42 ], [ %52, %49 ]
  %55 = tail call fastcc i32 @rhs_regno(ptr noundef %54) #17
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %3, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !9
  %59 = getelementptr inbounds ptr, ptr %4, i64 %56
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  %61 = icmp eq ptr %58, null
  br i1 %18, label %66, label %62

62:                                               ; preds = %53
  br i1 %61, label %63, label %79

63:                                               ; preds = %62
  %64 = icmp eq ptr %60, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2612, ptr noundef nonnull @.str.10) #16
  br label %71

66:                                               ; preds = %53
  br i1 %61, label %67, label %68

67:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2616, ptr noundef nonnull @.str.10) #16
  br label %68

68:                                               ; preds = %66, %67
  %69 = icmp eq ptr %60, null
  %70 = select i1 %69, ptr %54, ptr %60
  br label %71

71:                                               ; preds = %68, %65, %63
  %72 = phi ptr [ %54, %63 ], [ %54, %65 ], [ %58, %68 ]
  %73 = phi ptr [ %60, %63 ], [ null, %65 ], [ %70, %68 ]
  %74 = tail call fastcc ptr @noce_emit_cmove(ptr noundef %0, ptr noundef %54, i32 noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef %72, ptr noundef %73) #17
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = icmp eq ptr %74, %54
  br i1 %77, label %79, label %78

78:                                               ; preds = %76
  tail call fastcc void @noce_emit_move_insn(ptr noundef %54, ptr noundef nonnull %74) #17
  br label %79

79:                                               ; preds = %32, %32, %27, %62, %78, %76
  %80 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !50
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %19, !llvm.loop !110

83:                                               ; preds = %79, %19, %71, %6
  %84 = phi i8 [ 1, %6 ], [ 0, %71 ], [ 1, %19 ], [ 1, %79 ]
  ret i8 %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #16
  store ptr %6, ptr %0, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 4, !tbaa !108
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !108
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !111
  %6 = load i32, ptr %0, align 4, !tbaa !108
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #17, !range !48
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 655, ptr noundef nonnull @.str.10) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !70
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #17
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %70

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %70, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !71
  %15 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !72
  %16 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %3) #17, !range !48
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %13, %33
  %19 = phi i32 [ %35, %33 ], [ 0, %13 ]
  %20 = phi i32 [ %34, %33 ], [ 0, %13 ]
  %21 = load ptr, ptr %3, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !25
  %24 = and i32 %23, 14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %18
  %27 = and i32 %23, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %70

33:                                               ; preds = %29, %26
  %34 = phi i32 [ %20, %26 ], [ 1, %29 ]
  %35 = phi i32 [ 1, %26 ], [ %19, %29 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %36 = load i32, ptr %4, align 8
  %37 = load ptr, ptr %15, align 8
  %38 = call fastcc zeroext i8 @ei_cond(i32 %36, ptr %37, ptr noundef nonnull %3) #17, !range !48
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %18, !llvm.loop !112

40:                                               ; preds = %33
  %41 = and i32 %35, %34
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.rtl_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  %48 = load ptr, ptr %45, align 8, !tbaa !50
  %49 = icmp eq ptr %48, null
  br i1 %49, label %70, label %54

50:                                               ; preds = %67
  %51 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54, !llvm.loop !113

54:                                               ; preds = %43, %50
  %55 = phi ptr [ %52, %50 ], [ %48, %43 ]
  %56 = phi i32 [ %68, %50 ], [ 0, %43 ]
  %57 = load i32, ptr %55, align 8
  %58 = trunc i32 %57 to i16
  switch i16 %58, label %67 [
    i16 10, label %70
    i16 8, label %59
  ]

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65534
  %64 = icmp ne i32 %63, 24
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %56, %65
  br label %67

67:                                               ; preds = %54, %59
  %68 = phi i32 [ %66, %59 ], [ %56, %54 ]
  %69 = icmp eq ptr %55, %47
  br i1 %69, label %70, label %50

70:                                               ; preds = %29, %18, %67, %50, %54, %13, %43, %40, %8, %2
  %71 = phi i32 [ -1, %2 ], [ 0, %8 ], [ -1, %40 ], [ 0, %43 ], [ -1, %13 ], [ %68, %67 ], [ %68, %50 ], [ -1, %54 ], [ -1, %18 ], [ -1, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %71
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !48
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !9
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.10) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !114
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !114
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_exec_process_if_block(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !26
  %4 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %185

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %185, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  store ptr %21, ptr %0, align 8, !tbaa !26
  store i32 0, ptr %10, align 8, !tbaa !66
  %22 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 6
  store i32 0, ptr %22, align 4, !tbaa !68
  %23 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 7
  store i32 0, ptr %23, align 8, !tbaa !69
  br label %24

24:                                               ; preds = %19, %9, %2
  %25 = phi ptr [ %3, %2 ], [ %21, %19 ], [ %3, %9 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %29) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %185, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %26, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = tail call i32 @onlyjump_p(ptr noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %185, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @first_active_insn(ptr noundef %5) #17
  %40 = tail call fastcc ptr @last_active_insn(ptr noundef %5, i32 noundef 1) #17
  %41 = tail call fastcc i32 @count_bb_insns(ptr noundef %5) #17
  %42 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 10
  store i32 %41, ptr %42, align 4, !tbaa !116
  %43 = load ptr, ptr @cfun, align 8, !tbaa !9
  %44 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %43) #16
  %45 = icmp eq i8 %44, 0
  %46 = load i32, ptr @ix86_branch_cost, align 4
  %47 = add nsw i32 %46, 1
  %48 = select i1 %45, i32 3, i32 %47
  %49 = icmp ne ptr %7, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = shl nsw i32 %48, 1
  %52 = tail call fastcc ptr @first_active_insn(ptr noundef nonnull %7) #17
  %53 = tail call fastcc ptr @last_active_insn(ptr noundef nonnull %7, i32 noundef 1) #17
  %54 = tail call fastcc i32 @count_bb_insns(ptr noundef nonnull %7) #17
  %55 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 11
  store i32 %54, ptr %55, align 8, !tbaa !117
  %56 = add nsw i32 %54, %41
  br label %57

57:                                               ; preds = %50, %38
  %58 = phi i32 [ %56, %50 ], [ %41, %38 ]
  %59 = phi i32 [ %51, %50 ], [ %48, %38 ]
  %60 = phi ptr [ %53, %50 ], [ null, %38 ]
  %61 = phi ptr [ %52, %50 ], [ null, %38 ]
  %62 = icmp sgt i32 %58, %59
  br i1 %62, label %185, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %26, align 8, !tbaa !50
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !51
  %67 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %30, ptr noundef %66) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = load i32, ptr %30, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !50
  %75 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  %77 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %67, i32 noundef %72, ptr noundef %74, ptr noundef %76) #16
  br label %78

78:                                               ; preds = %63, %69
  %79 = phi ptr [ %77, %69 ], [ null, %63 ]
  %80 = load ptr, ptr %26, align 8, !tbaa !50
  %81 = getelementptr inbounds %struct.rtl_bb_info, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !51
  %83 = tail call ptr @find_reg_note(ptr noundef %82, i32 noundef 13, ptr noundef null) #16
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !50
  %88 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !50
  %90 = sub nsw i64 10000, %89
  %91 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %90) #16
  br label %92

92:                                               ; preds = %78, %85
  %93 = phi ptr [ %87, %85 ], [ null, %78 ]
  %94 = phi ptr [ %91, %85 ], [ null, %78 ]
  %95 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !66
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %156

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !63
  %101 = icmp eq ptr %79, null
  br i1 %101, label %184, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  br label %104

104:                                              ; preds = %102, %134
  %105 = phi ptr [ %150, %134 ], [ %30, %102 ]
  %106 = phi ptr [ %154, %134 ], [ %79, %102 ]
  %107 = phi ptr [ %108, %134 ], [ %25, %102 ]
  %108 = tail call fastcc ptr @block_fallthru(ptr noundef nonnull %107) #17
  %109 = tail call fastcc ptr @first_active_insn(ptr noundef %108) #17
  %110 = tail call fastcc ptr @last_active_insn(ptr noundef %108, i32 noundef 1) #17
  %111 = icmp eq ptr %109, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %104
  %113 = tail call fastcc i32 @cond_exec_process_insns(ptr noundef nonnull %109, ptr noundef %110, ptr noundef %106, ptr noundef %94, i32 noundef 0) #17
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %184, label %115

115:                                              ; preds = %112, %104
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !50
  %118 = getelementptr inbounds %struct.rtl_bb_info, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !51
  %120 = tail call i32 @onlyjump_p(ptr noundef %119) #16
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %184, label %122

122:                                              ; preds = %115
  %123 = load ptr, ptr %116, align 8, !tbaa !50
  %124 = getelementptr inbounds %struct.rtl_bb_info, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !51
  %126 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %125) #17
  %127 = icmp eq ptr %126, null
  br i1 %127, label %184, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %116, align 8, !tbaa !50
  %130 = getelementptr inbounds %struct.rtl_bb_info, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !51
  %132 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %126, ptr noundef %131) #16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %184, label %134

134:                                              ; preds = %128
  %135 = load i32, ptr %126, align 8
  %136 = lshr i32 %135, 16
  %137 = and i32 %136, 255
  %138 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !50
  %140 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 0, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !50
  %142 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %132, i32 noundef %137, ptr noundef %139, ptr noundef %141) #16
  %143 = load i32, ptr %103, align 8, !tbaa !64
  %144 = icmp eq i32 %143, 0
  %145 = load i32, ptr %126, align 8
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = select i1 %144, i32 62, i32 61
  %149 = select i1 %144, i32 61, i32 62
  %150 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %148, i32 noundef %147, ptr noundef nonnull %105, ptr noundef nonnull %126) #16
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %149, i32 noundef %153, ptr noundef %106, ptr noundef %142) #16
  %155 = icmp eq ptr %108, %100
  br i1 %155, label %156, label %104, !llvm.loop !118

156:                                              ; preds = %134, %92
  %157 = phi ptr [ %30, %92 ], [ %150, %134 ]
  %158 = phi ptr [ %79, %92 ], [ %154, %134 ]
  %159 = icmp eq ptr %7, null
  %160 = zext i1 %159 to i32
  %161 = icmp eq ptr %40, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %156
  %163 = icmp eq ptr %158, null
  br i1 %163, label %184, label %164

164:                                              ; preds = %162
  %165 = tail call fastcc i32 @cond_exec_process_insns(ptr noundef %39, ptr noundef nonnull %40, ptr noundef nonnull %158, ptr noundef %94, i32 noundef %160) #17
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %184, label %167

167:                                              ; preds = %164, %156
  %168 = icmp ne ptr %60, null
  %169 = and i1 %49, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = tail call fastcc i32 @cond_exec_process_insns(ptr noundef %61, ptr noundef nonnull %60, ptr noundef nonnull %157, ptr noundef %93, i32 noundef 1) #17
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %170, %167
  %174 = tail call i32 @apply_change_group() #16
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %178 = icmp eq ptr %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = icmp eq i32 %58, 1
  %181 = select i1 %180, ptr @.str.25, ptr @.str.26
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %177, ptr noundef nonnull @.str.24, i32 noundef %58, ptr noundef nonnull %181) #17
  br label %183

183:                                              ; preds = %179, %176
  tail call fastcc void @merge_if_block(ptr noundef nonnull %0) #17
  store i1 true, ptr @cond_exec_changed_p, align 4
  br label %185

184:                                              ; preds = %128, %122, %115, %112, %98, %170, %162, %164
  tail call void @cancel_changes(i32 noundef 0) #16
  br label %185

185:                                              ; preds = %173, %57, %32, %24, %13, %15, %184, %183
  %186 = phi i32 [ 0, %184 ], [ 1, %183 ], [ 0, %15 ], [ 0, %13 ], [ 0, %24 ], [ 0, %32 ], [ 0, %57 ], [ 0, %173 ]
  ret i32 %186
}

; Function Attrs: optsize
declare void @cancel_changes(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 687, ptr noundef nonnull @.str.10) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cond_exec_get_condition(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @any_condjump_p(ptr noundef %0) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @pc_set(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 44
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = tail call i32 @reversed_comparison_code(ptr noundef %9, ptr noundef nonnull %0) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %22, i32 noundef %27, ptr noundef %29, ptr noundef %31) #16
  br label %33

33:                                               ; preds = %24, %21, %4, %15, %1
  %34 = phi ptr [ null, %1 ], [ %9, %15 ], [ %9, %4 ], [ %32, %24 ], [ null, %21 ]
  ret ptr %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_bb_insns(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  br label %6

6:                                                ; preds = %14, %1
  %7 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %8 = phi ptr [ %3, %1 ], [ %17, %14 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = load i32, ptr %9, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %14 [
    i16 10, label %12
    i16 8, label %12
  ]

12:                                               ; preds = %6, %6
  %13 = add nsw i32 %7, 1
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ %7, %6 ]
  %16 = icmp eq ptr %9, %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %16, label %18, label %6

18:                                               ; preds = %14
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @block_fallthru(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !71
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !72
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #17, !range !48
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1, %15
  %10 = load ptr, ptr %2, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !25
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %16 = load i32, ptr %3, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc zeroext i8 @ei_cond(i32 %16, ptr %17, ptr noundef nonnull %2) #17, !range !48
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !119

20:                                               ; preds = %15, %1
  %21 = load ptr, ptr %2, align 8, !tbaa !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %20
  %24 = phi ptr [ %21, %20 ], [ %10, %9 ]
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !23
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi ptr [ %26, %23 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_exec_process_insns(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %77

9:                                                ; preds = %5
  %10 = icmp ne i32 %4, 0
  %11 = icmp ne ptr %3, null
  br label %12

12:                                               ; preds = %9, %74
  %13 = phi i32 [ %72, %74 ], [ 0, %9 ]
  %14 = phi ptr [ %76, %74 ], [ %0, %9 ]
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %17 [
    i16 13, label %71
    i16 7, label %71
    i16 8, label %18
    i16 10, label %18
  ]

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 273, ptr noundef nonnull @.str.10) #16
  br label %18

18:                                               ; preds = %12, %12, %17
  %19 = load i32, ptr @reload_completed, align 4, !tbaa !5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 24
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @set_insn_deleted(ptr noundef nonnull %14) #16
  br label %71

28:                                               ; preds = %21, %18
  %29 = icmp eq i32 %13, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %28
  %31 = tail call i32 @modified_in_p(ptr noundef %2, ptr noundef nonnull %14) #16
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %32, %10
  %34 = xor i1 %32, true
  %35 = zext i1 %34 to i32
  br i1 %33, label %36, label %77

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !50
  %39 = tail call ptr @copy_rtx(ptr noundef %2) #16
  %40 = load i32, ptr %38, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 14
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load i32, ptr %39, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %43
  %54 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %46, ptr noundef nonnull %39, ptr noundef nonnull %48) #16
  %55 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  br label %57

57:                                               ; preds = %53, %36
  %58 = phi ptr [ %54, %53 ], [ %39, %36 ]
  %59 = phi ptr [ %56, %53 ], [ %38, %36 ]
  %60 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 14, i32 noundef 0, ptr noundef %58, ptr noundef %59) #16
  %61 = tail call zeroext i8 @validate_change(ptr noundef nonnull %14, ptr noundef nonnull %37, ptr noundef %60, i8 noundef zeroext 1) #16
  %62 = load i32, ptr %14, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 10
  %65 = and i1 %11, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !50
  %69 = tail call ptr @alloc_EXPR_LIST(i32 noundef 13, ptr noundef nonnull %3, ptr noundef %68) #16
  %70 = tail call zeroext i8 @validate_change(ptr noundef nonnull %14, ptr noundef nonnull %67, ptr noundef %69, i8 noundef zeroext 1) #16
  br label %71

71:                                               ; preds = %12, %12, %57, %66, %27
  %72 = phi i32 [ %13, %12 ], [ %13, %27 ], [ %35, %66 ], [ %35, %57 ], [ %13, %12 ]
  %73 = icmp eq ptr %14, %1
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  br label %12

77:                                               ; preds = %71, %43, %28, %30, %5
  %78 = phi i32 [ 0, %5 ], [ 1, %71 ], [ 0, %43 ], [ 0, %28 ], [ 0, %30 ]
  ret i32 %78
}

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_if_block(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  tail call void @df_set_bb_dirty(ptr noundef %2) #16
  %9 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = tail call fastcc ptr @block_fallthru(ptr noundef %2) #17
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %15, %12 ], [ %18, %16 ]
  %18 = tail call fastcc ptr @block_fallthru(ptr noundef %17) #17
  tail call void @merge_blocks(ptr noundef %2, ptr noundef %17) #16
  %19 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @num_true_changes, align 4, !tbaa !5
  %21 = icmp eq ptr %17, %14
  br i1 %21, label %22, label %16, !llvm.loop !120

22:                                               ; preds = %16, %1
  %23 = icmp eq ptr %4, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  tail call void @merge_blocks(ptr noundef %2, ptr noundef nonnull %4) #16
  %25 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @num_true_changes, align 4, !tbaa !5
  br label %27

27:                                               ; preds = %24, %22
  %28 = icmp eq ptr %6, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  tail call void @merge_blocks(ptr noundef %2, ptr noundef nonnull %6) #16
  %30 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr @num_true_changes, align 4, !tbaa !5
  br label %32

32:                                               ; preds = %29, %27
  %33 = icmp eq ptr %8, null
  br i1 %33, label %34, label %88

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %34
  %44 = tail call ptr @find_reg_note(ptr noundef %38, i32 noundef 27, ptr noundef null) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %118

46:                                               ; preds = %43
  %47 = load i32, ptr %38, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 29
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !50
  %59 = load ptr, ptr @const_true_rtx, align 8, !tbaa !9
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %118, label %61

61:                                               ; preds = %56, %50, %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2966, ptr noundef nonnull @.str.10) #16
  br label %118

62:                                               ; preds = %34
  %63 = load i32, ptr %38, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 9
  br i1 %65, label %118, label %66

66:                                               ; preds = %62
  %67 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef 0) #17
  %68 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !23
  %70 = load ptr, ptr @cfun, align 8, !tbaa !9
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !11
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !18
  %75 = icmp eq ptr %69, %74
  %76 = and i32 %63, 16842751
  %77 = icmp eq i32 %76, 16777226
  %78 = and i1 %77, %75
  br i1 %78, label %118, label %79

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !25
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %38) #16
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %84, %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2976, ptr noundef nonnull @.str.10) #16
  br label %118

88:                                               ; preds = %32
  %89 = load ptr, ptr %8, align 8, !tbaa !70
  %90 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %89) #17
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load ptr, ptr @cfun, align 8, !tbaa !9
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !11
  %96 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !18
  %98 = icmp eq ptr %8, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  tail call void @merge_blocks(ptr noundef %2, ptr noundef nonnull %8) #16
  %100 = load i32, ptr @num_true_changes, align 4, !tbaa !5
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr @num_true_changes, align 4, !tbaa !5
  br label %118

102:                                              ; preds = %92, %88
  %103 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %2) #17, !range !48
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = tail call fastcc ptr @single_succ(ptr noundef %2) #17
  %107 = icmp eq ptr %106, %8
  br i1 %107, label %109, label %108

108:                                              ; preds = %105, %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3000, ptr noundef nonnull @.str.10) #16
  br label %109

109:                                              ; preds = %105, %108
  %110 = load ptr, ptr @cfun, align 8, !tbaa !9
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !11
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !18
  %115 = icmp eq ptr %8, %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %109
  %117 = tail call fastcc ptr @single_succ_edge(ptr noundef %2) #17
  tail call void @tidy_fallthru_edge(ptr noundef %117) #16
  br label %118

118:                                              ; preds = %66, %43, %56, %61, %62, %84, %87, %99, %116, %109
  %119 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !5
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @num_updated_if_blocks, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @set_insn_deleted(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tidy_fallthru_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @block_has_only_trap(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @first_active_insn(ptr noundef nonnull %0) #17
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.rtl_bb_info, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %14, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 29
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = load ptr, ptr @const_true_rtx, align 8, !tbaa !9
  %30 = icmp eq ptr %28, %29
  %31 = select i1 %30, ptr %14, ptr null
  br label %32

32:                                               ; preds = %26, %13, %20, %8, %1
  %33 = phi ptr [ null, %1 ], [ null, %8 ], [ null, %20 ], [ null, %13 ], [ %31, %26 ]
  ret ptr %33
}

; Function Attrs: optsize
declare ptr @gen_cond_trap(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @forwarder_block_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %53, %2
  %8 = phi ptr [ %5, %2 ], [ %55, %53 ]
  %9 = phi i32 [ 0, %2 ], [ %48, %53 ]
  %10 = load i32, ptr %8, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %47 [
    i16 8, label %12
    i16 10, label %56
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = tail call i32 @insn_rtx_cost(ptr noundef %14, i8 noundef zeroext %6) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %56, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %8, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load ptr, ptr %13, align 8, !tbaa !50
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 23
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @single_set_2(ptr noundef nonnull %8, ptr noundef nonnull %23) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %22, %27
  %31 = phi ptr [ %28, %27 ], [ %23, %22 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %33) #17
  %39 = and i32 %38, -8
  %40 = icmp ne i32 %39, 8
  %41 = add nsw i32 %15, %9
  %42 = icmp slt i32 %41, %1
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %47, label %56

44:                                               ; preds = %17, %27, %30
  %45 = add nsw i32 %15, %9
  %46 = icmp slt i32 %45, %1
  br i1 %46, label %47, label %56

47:                                               ; preds = %37, %7, %44
  %48 = phi i32 [ %45, %44 ], [ %9, %7 ], [ %41, %37 ]
  %49 = load ptr, ptr %3, align 8, !tbaa !50
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !51
  %52 = icmp eq ptr %8, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  br label %7

56:                                               ; preds = %37, %12, %47, %7, %44
  %57 = phi i8 [ 0, %44 ], [ 0, %7 ], [ 1, %47 ], [ 0, %12 ], [ 0, %37 ]
  ret i8 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @dead_or_predicable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  br label %17

17:                                               ; preds = %17, %5
  %18 = phi ptr [ %16, %5 ], [ %25, %17 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 7
  %23 = icmp ne ptr %19, %15
  %24 = select i1 %22, i1 %23, i1 false
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %24, label %17, label %26, !llvm.loop !121

26:                                               ; preds = %17
  %27 = tail call zeroext i8 @tablejump_p(ptr noundef nonnull %19, ptr noundef null, ptr noundef null) #16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %413

29:                                               ; preds = %26
  %30 = load i32, ptr %15, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = load i32, ptr %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %36, %33 ], [ %30, %29 ]
  %39 = phi ptr [ %35, %33 ], [ %15, %29 ]
  %40 = and i32 %38, 65535
  %41 = icmp eq i32 %40, 7
  %42 = icmp ne ptr %39, %19
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %53

44:                                               ; preds = %37, %44
  %45 = phi ptr [ %47, %44 ], [ %39, %37 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 7
  %51 = icmp ne ptr %47, %19
  %52 = and i1 %51, %50
  br i1 %52, label %44, label %53, !llvm.loop !122

53:                                               ; preds = %44, %37
  %54 = phi ptr [ %39, %37 ], [ %47, %44 ]
  %55 = phi i32 [ %40, %37 ], [ %49, %44 ]
  %56 = icmp eq i32 %55, 13
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = icmp eq ptr %54, %19
  br i1 %58, label %261, label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %62, %59 ], [ %54, %57 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !50
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 7
  %66 = icmp ne ptr %62, %19
  %67 = and i1 %66, %65
  br i1 %67, label %59, label %68, !llvm.loop !123

68:                                               ; preds = %59, %53
  %69 = phi ptr [ %54, %53 ], [ %62, %59 ]
  %70 = load i32, ptr %19, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = icmp eq ptr %69, %19
  br i1 %74, label %261, label %75

75:                                               ; preds = %73, %75
  %76 = phi ptr [ %78, %75 ], [ %19, %73 ]
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !50
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 7
  %82 = icmp ne ptr %78, %69
  %83 = and i1 %82, %81
  br i1 %83, label %75, label %84, !llvm.loop !124

84:                                               ; preds = %75, %68
  %85 = phi ptr [ %19, %68 ], [ %78, %75 ]
  %86 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !32
  %87 = tail call zeroext i8 %86() #16
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %131, label %89

89:                                               ; preds = %84
  %90 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %12) #17
  %91 = icmp eq ptr %90, null
  br i1 %91, label %413, label %92

92:                                               ; preds = %89
  %93 = tail call ptr @find_reg_note(ptr noundef %12, i32 noundef 13, ptr noundef null) #16
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !50
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi ptr [ %97, %95 ], [ null, %92 ]
  %100 = icmp eq i32 %4, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %98
  %102 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %90, ptr noundef %12) #16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %413, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %90, align 8
  %106 = lshr i32 %105, 16
  %107 = and i32 %106, 255
  %108 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !50
  %110 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !50
  %112 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %102, i32 noundef %107, ptr noundef %109, ptr noundef %111) #16
  %113 = icmp eq ptr %99, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !50
  %117 = sub nsw i64 10000, %116
  %118 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %117) #16
  br label %119

119:                                              ; preds = %114, %104, %98
  %120 = phi ptr [ %99, %98 ], [ null, %104 ], [ %118, %114 ]
  %121 = phi ptr [ %90, %98 ], [ %112, %104 ], [ %112, %114 ]
  %122 = tail call fastcc i32 @cond_exec_process_insns(ptr noundef nonnull %69, ptr noundef nonnull %85, ptr noundef %121, ptr noundef %120, i32 noundef 0) #17
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = tail call i32 @verify_changes(i32 noundef 0) #16
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119, %124
  tail call void @cancel_changes(i32 noundef 0) #16
  store ptr %12, ptr %6, align 8, !tbaa !9
  br label %131

128:                                              ; preds = %124
  %129 = tail call i32 @num_validated_changes() #16
  store ptr %12, ptr %6, align 8, !tbaa !9
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %261

131:                                              ; preds = %84, %127, %128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  br label %132

132:                                              ; preds = %146, %131
  %133 = phi ptr [ %69, %131 ], [ %148, %146 ]
  %134 = load i32, ptr %133, align 8
  %135 = trunc i32 %134 to i16
  switch i16 %135, label %144 [
    i16 10, label %412
    i16 9, label %136
    i16 8, label %136
  ]

136:                                              ; preds = %132, %132
  %137 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !50
  %139 = tail call i32 @may_trap_p(ptr noundef %138) #16
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %412

141:                                              ; preds = %136
  %142 = tail call i32 @for_each_rtx(ptr noundef nonnull %137, ptr noundef nonnull @find_memory, ptr noundef null) #16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %412

144:                                              ; preds = %132, %141
  %145 = icmp eq ptr %133, %85
  br i1 %145, label %149, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 2
  %148 = load ptr, ptr %147, align 8, !tbaa !50
  br label %132

149:                                              ; preds = %144
  %150 = tail call i32 @any_condjump_p(ptr noundef %12) #16
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %412, label %152

152:                                              ; preds = %149
  %153 = call fastcc ptr @noce_get_condition(ptr noundef %12, ptr noundef nonnull %6, i8 noundef zeroext 0) #17
  %154 = icmp eq ptr %153, null
  br i1 %154, label %412, label %155

155:                                              ; preds = %152
  %156 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #16
  %157 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #16
  %158 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #16
  %159 = load i32, ptr @max_regno, align 4, !tbaa !5
  %160 = call i32 @max_reg_num() #16
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = call i32 @max_reg_num() #16
  store i32 %163, ptr @max_regno, align 4, !tbaa !5
  br label %164

164:                                              ; preds = %162, %155
  %165 = load ptr, ptr %13, align 8, !tbaa !50
  %166 = load ptr, ptr %165, align 8, !tbaa !50
  %167 = icmp eq ptr %166, null
  br i1 %167, label %207, label %168

168:                                              ; preds = %164, %203
  %169 = phi ptr [ %205, %203 ], [ %166, %164 ]
  %170 = load ptr, ptr %13, align 8, !tbaa !50
  %171 = getelementptr inbounds %struct.rtl_bb_info, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !51
  %173 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !50
  %175 = icmp eq ptr %169, %174
  br i1 %175, label %207, label %176

176:                                              ; preds = %168
  %177 = load i32, ptr %169, align 8
  %178 = and i32 %177, 65535
  %179 = add nsw i32 %178, -11
  %180 = icmp ult i32 %179, -3
  br i1 %180, label %203, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %183 = load i32, ptr %182, align 8, !tbaa !50
  %184 = load ptr, ptr @df, align 8, !tbaa !9
  %185 = getelementptr inbounds %struct.df, ptr %184, i64 0, i32 10
  %186 = load ptr, ptr %185, align 8, !tbaa !125
  %187 = zext i32 %183 to i64
  %188 = getelementptr inbounds ptr, ptr %186, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !9
  %190 = getelementptr inbounds %struct.df_insn_info, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !128
  %192 = load ptr, ptr %191, align 8, !tbaa !9
  %193 = icmp eq ptr %192, null
  br i1 %193, label %203, label %194

194:                                              ; preds = %181, %194
  %195 = phi ptr [ %201, %194 ], [ %192, %181 ]
  %196 = phi ptr [ %200, %194 ], [ %191, %181 ]
  %197 = getelementptr inbounds %struct.df_base_ref, ptr %195, i64 0, i32 6
  %198 = load i32, ptr %197, align 8, !tbaa !50
  %199 = call zeroext i8 @bitmap_set_bit(ptr noundef %156, i32 noundef %198) #16
  %200 = getelementptr inbounds ptr, ptr %196, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !9
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %194, !llvm.loop !130

203:                                              ; preds = %194, %181, %176
  %204 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 2
  %205 = load ptr, ptr %204, align 8, !tbaa !50
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %168, !llvm.loop !131

207:                                              ; preds = %168, %203, %164
  %208 = load i32, ptr @reload_completed, align 4, !tbaa !5
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %231

210:                                              ; preds = %207
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %156, ptr noundef nonnull %7) #17
  %211 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #17, !range !48
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %231, label %213

213:                                              ; preds = %210, %227
  %214 = phi i32 [ %228, %227 ], [ 0, %210 ]
  %215 = load i32, ptr %7, align 4, !tbaa !5
  %216 = icmp ult i32 %215, 53
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = zext nneg i32 %215 to i64
  %219 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !50
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %218
  %224 = load i8, ptr %223, align 1, !tbaa !50
  %225 = icmp eq i8 %224, 0
  %226 = select i1 %225, i32 1, i32 %214
  br label %227

227:                                              ; preds = %222, %213, %217
  %228 = phi i32 [ %214, %217 ], [ %214, %213 ], [ %226, %222 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  %229 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #17, !range !48
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %213, !llvm.loop !132

231:                                              ; preds = %227, %210, %207
  %232 = phi i32 [ 0, %207 ], [ 0, %210 ], [ %228, %227 ]
  %233 = call ptr @df_get_live_in(ptr noundef %2) #16
  call void @bitmap_copy(ptr noundef %157, ptr noundef %233) #16
  call void @df_simulate_initialize_backwards(ptr noundef %0, ptr noundef %157) #16
  br label %234

234:                                              ; preds = %244, %231
  %235 = phi ptr [ %12, %231 ], [ %246, %244 ]
  %236 = load i32, ptr %235, align 8
  %237 = and i32 %236, 65535
  %238 = add nsw i32 %237, -7
  %239 = icmp ult i32 %238, 4
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  call void @df_simulate_find_defs(ptr noundef nonnull %235, ptr noundef %158) #16
  call void @df_simulate_one_insn_backwards(ptr noundef %0, ptr noundef nonnull %235, ptr noundef %157) #16
  br label %241

241:                                              ; preds = %234, %240
  %242 = load ptr, ptr %6, align 8, !tbaa !9
  %243 = icmp eq ptr %235, %242
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.rtx_def, ptr %235, i64 0, i32 1, i32 0, i32 0, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !50
  br label %234

247:                                              ; preds = %241
  %248 = call zeroext i8 @bitmap_intersect_p(ptr noundef %158, ptr noundef %156) #16
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = call zeroext i8 @bitmap_intersect_p(ptr noundef %157, ptr noundef %156) #16
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = call ptr @df_get_live_in(ptr noundef %1) #16
  %255 = call zeroext i8 @bitmap_intersect_p(ptr noundef %158, ptr noundef %254) #16
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %253, %250, %247
  br label %258

258:                                              ; preds = %257, %253
  %259 = phi i32 [ 1, %257 ], [ %232, %253 ]
  call void @bitmap_obstack_free(ptr noundef %156) #16
  call void @bitmap_obstack_free(ptr noundef %157) #16
  call void @bitmap_obstack_free(ptr noundef %158) #16
  %260 = icmp eq i32 %259, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br i1 %260, label %261, label %413

261:                                              ; preds = %73, %57, %128, %258
  %262 = phi i32 [ 0, %258 ], [ %129, %128 ], [ 0, %57 ], [ 0, %73 ]
  %263 = phi ptr [ %85, %258 ], [ %85, %128 ], [ null, %57 ], [ null, %73 ]
  %264 = phi ptr [ %69, %258 ], [ %69, %128 ], [ null, %57 ], [ null, %73 ]
  %265 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1, i32 0, i32 0, i64 2
  %266 = load ptr, ptr %265, align 8, !tbaa !50
  %267 = icmp eq ptr %2, %3
  br i1 %267, label %277, label %268

268:                                              ; preds = %261
  %269 = call ptr @block_label(ptr noundef %3) #16
  %270 = icmp eq i32 %4, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = call i32 @invert_jump_1(ptr noundef nonnull %12, ptr noundef %269) #16
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %411, label %277

274:                                              ; preds = %268
  %275 = call i32 @redirect_jump_1(ptr noundef nonnull %12, ptr noundef %269) #16
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %411, label %277

277:                                              ; preds = %271, %274, %261
  %278 = phi ptr [ %269, %271 ], [ %269, %274 ], [ null, %261 ]
  %279 = call i32 @verify_changes(i32 noundef %262) #16
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %411, label %281

281:                                              ; preds = %277
  call void @confirm_change_group() #16
  br i1 %267, label %341, label %282

282:                                              ; preds = %281
  call void @redirect_jump_2(ptr noundef nonnull %12, ptr noundef %266, ptr noundef %278, i32 noundef 0, i32 noundef %4) #16
  %283 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !22
  %285 = call fastcc ptr @VEC_edge_base_index(ptr noundef %284, i32 noundef 0) #17
  %286 = getelementptr inbounds %struct.edge_def, ptr %285, i64 0, i32 7
  %287 = load i32, ptr %286, align 8, !tbaa !25
  %288 = and i32 %287, 1
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %282
  %291 = call fastcc ptr @VEC_edge_base_index(ptr noundef %284, i32 noundef 1) #17
  br label %292

292:                                              ; preds = %282, %290
  %293 = phi ptr [ %291, %290 ], [ %285, %282 ]
  call void @redirect_edge_succ(ptr noundef %293, ptr noundef %3) #16
  %294 = icmp eq i32 %4, 0
  br i1 %294, label %341, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr %283, align 8, !tbaa !22
  %297 = call fastcc ptr @VEC_edge_base_index(ptr noundef %296, i32 noundef 0) #17
  %298 = getelementptr inbounds %struct.edge_def, ptr %297, i64 0, i32 7
  %299 = load i32, ptr %298, align 8, !tbaa !25
  %300 = and i32 %299, 1
  %301 = icmp eq i32 %300, 0
  %302 = call fastcc ptr @VEC_edge_base_index(ptr noundef %296, i32 noundef 1) #17
  %303 = select i1 %301, ptr %302, ptr %297
  %304 = select i1 %301, ptr %297, ptr %302
  %305 = getelementptr inbounds %struct.edge_def, ptr %304, i64 0, i32 9
  %306 = load i64, ptr %305, align 8, !tbaa !133
  %307 = getelementptr inbounds %struct.edge_def, ptr %303, i64 0, i32 9
  %308 = load i64, ptr %307, align 8, !tbaa !133
  store i64 %308, ptr %305, align 8, !tbaa !133
  %309 = call fastcc ptr @VEC_edge_base_index(ptr noundef %296, i32 noundef 0) #17
  %310 = getelementptr inbounds %struct.edge_def, ptr %309, i64 0, i32 7
  %311 = load i32, ptr %310, align 8, !tbaa !25
  %312 = and i32 %311, 1
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %295
  %315 = call fastcc ptr @VEC_edge_base_index(ptr noundef %296, i32 noundef 1) #17
  br label %316

316:                                              ; preds = %295, %314
  %317 = phi ptr [ %315, %314 ], [ %309, %295 ]
  %318 = getelementptr inbounds %struct.edge_def, ptr %317, i64 0, i32 9
  store i64 %306, ptr %318, align 8, !tbaa !133
  %319 = call fastcc ptr @VEC_edge_base_index(ptr noundef %296, i32 noundef 0) #17
  %320 = getelementptr inbounds %struct.edge_def, ptr %319, i64 0, i32 7
  %321 = load i32, ptr %320, align 8, !tbaa !25
  %322 = and i32 %321, 1
  %323 = icmp eq i32 %322, 0
  %324 = call fastcc ptr @VEC_edge_base_index(ptr noundef %296, i32 noundef 1) #17
  %325 = select i1 %323, ptr %324, ptr %319
  %326 = select i1 %323, ptr %319, ptr %324
  %327 = getelementptr inbounds %struct.edge_def, ptr %326, i64 0, i32 8
  %328 = load i32, ptr %327, align 4, !tbaa !134
  %329 = getelementptr inbounds %struct.edge_def, ptr %325, i64 0, i32 8
  %330 = load i32, ptr %329, align 4, !tbaa !134
  store i32 %330, ptr %327, align 4, !tbaa !134
  %331 = call fastcc ptr @VEC_edge_base_index(ptr noundef %296, i32 noundef 0) #17
  %332 = getelementptr inbounds %struct.edge_def, ptr %331, i64 0, i32 7
  %333 = load i32, ptr %332, align 8, !tbaa !25
  %334 = and i32 %333, 1
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %316
  %337 = call fastcc ptr @VEC_edge_base_index(ptr noundef %296, i32 noundef 1) #17
  br label %338

338:                                              ; preds = %316, %336
  %339 = phi ptr [ %337, %336 ], [ %331, %316 ]
  %340 = getelementptr inbounds %struct.edge_def, ptr %339, i64 0, i32 8
  store i32 %328, ptr %340, align 4, !tbaa !134
  call void @update_br_prob_note(ptr noundef nonnull %0) #16
  br label %341

341:                                              ; preds = %292, %338, %281
  %342 = icmp eq ptr %264, null
  br i1 %342, label %397, label %343

343:                                              ; preds = %341
  %344 = load ptr, ptr %13, align 8, !tbaa !50
  %345 = getelementptr inbounds %struct.rtl_bb_info, ptr %344, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !51
  %347 = icmp eq ptr %263, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.rtx_def, ptr %264, i64 0, i32 1, i32 0, i32 0, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !50
  store ptr %350, ptr %345, align 8, !tbaa !51
  br label %351

351:                                              ; preds = %348, %343
  br label %352

352:                                              ; preds = %351, %389
  %353 = phi ptr [ %391, %389 ], [ %264, %351 ]
  %354 = load i32, ptr %353, align 8
  %355 = and i32 %354, 65535
  %356 = add nsw i32 %355, -7
  %357 = icmp ult i32 %356, 4
  br i1 %357, label %358, label %387

358:                                              ; preds = %352
  %359 = call ptr @find_reg_note(ptr noundef nonnull %353, i32 noundef 4, ptr noundef null) #16
  %360 = icmp eq ptr %359, null
  br i1 %360, label %387, label %361

361:                                              ; preds = %358
  %362 = load i32, ptr %353, align 8
  %363 = and i32 %362, 65535
  %364 = add nsw i32 %363, -7
  %365 = icmp ult i32 %364, 4
  br i1 %365, label %366, label %386

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.rtx_def, ptr %353, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !50
  %369 = load i32, ptr %368, align 8
  %370 = and i32 %369, 65535
  %371 = icmp eq i32 %370, 23
  br i1 %371, label %375, label %372

372:                                              ; preds = %366
  %373 = call ptr @single_set_2(ptr noundef nonnull %353, ptr noundef nonnull %368) #16
  %374 = icmp eq ptr %373, null
  br i1 %374, label %386, label %375

375:                                              ; preds = %366, %372
  %376 = phi ptr [ %373, %372 ], [ %368, %366 ]
  %377 = getelementptr inbounds %struct.rtx_def, ptr %376, i64 0, i32 1, i32 0, i32 0, i64 1
  %378 = load ptr, ptr %377, align 8, !tbaa !50
  %379 = call i32 @function_invariant_p(ptr noundef %378) #16
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %386, label %381

381:                                              ; preds = %375
  %382 = getelementptr inbounds %struct.rtx_def, ptr %359, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !50
  %384 = call i32 @function_invariant_p(ptr noundef %383) #16
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %361, %381, %375, %372
  call void @remove_note(ptr noundef nonnull %353, ptr noundef nonnull %359) #16
  br label %387

387:                                              ; preds = %352, %381, %386, %358
  %388 = icmp eq ptr %353, %263
  br i1 %388, label %393, label %389

389:                                              ; preds = %387
  %390 = getelementptr inbounds %struct.rtx_def, ptr %353, i64 0, i32 1, i32 0, i32 0, i64 2
  %391 = load ptr, ptr %390, align 8, !tbaa !50
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %352, !llvm.loop !135

393:                                              ; preds = %387, %389
  %394 = load ptr, ptr %6, align 8, !tbaa !9
  %395 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1, i32 0, i32 0, i64 1
  %396 = load ptr, ptr %395, align 8, !tbaa !50
  call void @reorder_insns(ptr noundef nonnull %264, ptr noundef %263, ptr noundef %396) #16
  br label %397

397:                                              ; preds = %393, %341
  br i1 %267, label %398, label %413

398:                                              ; preds = %397
  %399 = call ptr @delete_insn(ptr noundef %12) #16
  %400 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !22
  %402 = call fastcc ptr @VEC_edge_base_index(ptr noundef %401, i32 noundef 0) #17
  %403 = getelementptr inbounds %struct.edge_def, ptr %402, i64 0, i32 7
  %404 = load i32, ptr %403, align 8, !tbaa !25
  %405 = and i32 %404, 1
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %398
  %408 = call fastcc ptr @VEC_edge_base_index(ptr noundef %401, i32 noundef 1) #17
  br label %409

409:                                              ; preds = %398, %407
  %410 = phi ptr [ %408, %407 ], [ %402, %398 ]
  call void @remove_edge(ptr noundef %410) #16
  br label %413

411:                                              ; preds = %277, %271, %274
  call void @cancel_changes(i32 noundef 0) #16
  br label %413

412:                                              ; preds = %132, %141, %136, %152, %149
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br label %413

413:                                              ; preds = %101, %89, %397, %409, %412, %26, %258, %411
  %414 = phi i32 [ 0, %411 ], [ 0, %258 ], [ 0, %26 ], [ 0, %412 ], [ 1, %409 ], [ 1, %397 ], [ 0, %89 ], [ 0, %101 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret i32 %414
}

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_bb_replace(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @verify_changes(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @num_validated_changes() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @find_memory(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 {
  %4 = load ptr, ptr %1, align 8, !tbaa !136
  store ptr %4, ptr %0, align 8, !tbaa !138
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !140
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !138
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !141
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !143
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !144
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !144
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !145

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !5
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !5
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !143
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !138
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !143
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !98
  store i64 %35, ptr %3, align 8, !tbaa !144
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !5
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !5
  %40 = load i32, ptr %23, align 8, !tbaa !143
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !143
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !146

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !147
  store ptr %44, ptr %0, align 8, !tbaa !138
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !141
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !5
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !144
  store i32 %16, ptr %1, align 4, !tbaa !5
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !144
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !144
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_simulate_initialize_backwards(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_simulate_find_defs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_simulate_one_insn_backwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @block_label(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @invert_jump_1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @redirect_jump_1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @confirm_change_group() local_unnamed_addr #1

; Function Attrs: optsize
declare void @redirect_jump_2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_br_prob_note(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @function_invariant_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }

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
!11 = !{!12, !10, i64 8}
!12 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!13 = !{!14, !10, i64 0}
!14 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!15 = !{!16, !10, i64 56}
!16 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !17, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!17 = !{!"long", !7, i64 0}
!18 = !{!14, !10, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = !{!16, !10, i64 8}
!23 = !{!24, !10, i64 8}
!24 = !{!"edge_def", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !17, i64 56}
!25 = !{!24, !6, i64 48}
!26 = !{!27, !10, i64 0}
!27 = !{!"ce_if_block", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68}
!28 = !{!27, !10, i64 8}
!29 = !{!27, !10, i64 16}
!30 = !{!27, !6, i64 68}
!31 = !{i32 0, i32 2}
!32 = !{!33, !10, i64 1000}
!33 = !{!"gcc_target", !34, i64 0, !36, i64 368, !37, i64 664, !6, i64 744, !10, i64 752, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824, !10, i64 832, !10, i64 840, !10, i64 848, !10, i64 856, !10, i64 864, !10, i64 872, !10, i64 880, !10, i64 888, !10, i64 896, !10, i64 904, !10, i64 912, !10, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !17, i64 1064, !17, i64 1072, !10, i64 1080, !10, i64 1088, !10, i64 1096, !10, i64 1104, !10, i64 1112, !10, i64 1120, !10, i64 1128, !10, i64 1136, !10, i64 1144, !10, i64 1152, !10, i64 1160, !10, i64 1168, !38, i64 1176, !10, i64 1232, !10, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !10, i64 1272, !10, i64 1280, !10, i64 1288, !10, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !10, i64 1352, !10, i64 1360, !10, i64 1368, !10, i64 1376, !10, i64 1384, !10, i64 1392, !10, i64 1400, !10, i64 1408, !10, i64 1416, !10, i64 1424, !10, i64 1432, !10, i64 1440, !10, i64 1448, !10, i64 1456, !17, i64 1464, !39, i64 1472, !10, i64 1664, !10, i64 1672, !10, i64 1680, !10, i64 1688, !10, i64 1696, !10, i64 1704, !10, i64 1712, !10, i64 1720, !10, i64 1728, !10, i64 1736, !10, i64 1744, !10, i64 1752, !10, i64 1760, !10, i64 1768, !10, i64 1776, !40, i64 1784, !41, i64 1792, !42, i64 1896, !43, i64 1968, !10, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!34 = !{!"asm_out", !10, i64 0, !10, i64 8, !10, i64 16, !35, i64 24, !35, i64 56, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360}
!35 = !{!"asm_int_op", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!36 = !{!"sched", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!37 = !{!"vectorize", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!38 = !{!"addr_space", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!39 = !{!"calls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184}
!40 = !{!"c", !10, i64 0}
!41 = !{!"cxx", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96}
!42 = !{!"emutls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !7, i64 65}
!43 = !{!"target_option_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!44 = !{!45, !6, i64 0}
!45 = !{!"optab_handlers", !6, i64 0}
!46 = !{!47, !6, i64 0}
!47 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
!48 = !{i8 0, i8 2}
!49 = !{!16, !6, i64 80}
!50 = !{!7, !7, i64 0}
!51 = !{!52, !10, i64 8}
!52 = !{!"rtl_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32}
!53 = !{!54, !10, i64 0}
!54 = !{!"noce_if_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !7, i64 96, !6, i64 100}
!55 = !{!54, !10, i64 8}
!56 = !{!54, !10, i64 16}
!57 = !{!54, !10, i64 24}
!58 = !{!54, !10, i64 40}
!59 = !{!54, !10, i64 48}
!60 = !{!54, !10, i64 32}
!61 = !{!54, !7, i64 96}
!62 = !{!54, !6, i64 100}
!63 = !{!27, !10, i64 32}
!64 = !{!27, !6, i64 56}
!65 = distinct !{!65, !20}
!66 = !{!27, !6, i64 40}
!67 = !{!27, !6, i64 52}
!68 = !{!27, !6, i64 44}
!69 = !{!27, !6, i64 48}
!70 = !{!16, !10, i64 0}
!71 = !{i64 0, i64 4, !5, i64 8, i64 8, !9}
!72 = !{i64 0, i64 8, !9}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, !20}
!75 = !{!52, !10, i64 0}
!76 = distinct !{!76, !20}
!77 = !{!27, !10, i64 24}
!78 = !{!24, !10, i64 0}
!79 = !{!16, !10, i64 48}
!80 = !{!16, !6, i64 96}
!81 = distinct !{!81, !20}
!82 = !{!54, !10, i64 56}
!83 = !{!54, !10, i64 64}
!84 = !{!54, !10, i64 88}
!85 = !{!54, !10, i64 72}
!86 = !{!54, !10, i64 80}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = !{!33, !10, i64 1040}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = !{!96, !7, i64 46}
!96 = !{!"real_format", !10, i64 0, !10, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !7, i64 44, !7, i64 45, !7, i64 46, !7, i64 47, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51}
!97 = !{!96, !7, i64 49}
!98 = !{!17, !17, i64 0}
!99 = !{!100, !7, i64 32}
!100 = !{!"mem_attrs", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !7, i64 32}
!101 = !{!33, !10, i64 1184}
!102 = !{!100, !6, i64 24}
!103 = !{!100, !6, i64 28}
!104 = distinct !{!104, !20}
!105 = distinct !{!105, !20}
!106 = distinct !{!106, !20}
!107 = distinct !{!107, !20}
!108 = !{!109, !6, i64 0}
!109 = !{!"VEC_int_base", !6, i64 0, !6, i64 4, !7, i64 8}
!110 = distinct !{!110, !20}
!111 = !{!109, !6, i64 4}
!112 = distinct !{!112, !20}
!113 = distinct !{!113, !20}
!114 = !{!115, !6, i64 0}
!115 = !{!"", !6, i64 0, !10, i64 8}
!116 = !{!27, !6, i64 60}
!117 = !{!27, !6, i64 64}
!118 = distinct !{!118, !20}
!119 = distinct !{!119, !20}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !20}
!122 = distinct !{!122, !20}
!123 = distinct !{!123, !20}
!124 = distinct !{!124, !20}
!125 = !{!126, !10, i64 248}
!126 = !{!"df", !7, i64 0, !7, i64 64, !10, i64 128, !127, i64 136, !127, i64 176, !10, i64 216, !10, i64 224, !10, i64 232, !6, i64 240, !6, i64 244, !10, i64 248, !6, i64 256, !6, i64 260, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !6, i64 344, !6, i64 348, !10, i64 352, !6, i64 360, !6, i64 364, !7, i64 365, !7, i64 366}
!127 = !{!"df_ref_info", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!128 = !{!129, !10, i64 8}
!129 = !{!"df_insn_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40}
!130 = distinct !{!130, !20}
!131 = distinct !{!131, !20}
!132 = distinct !{!132, !20}
!133 = !{!24, !17, i64 56}
!134 = !{!24, !6, i64 52}
!135 = distinct !{!135, !20}
!136 = !{!137, !10, i64 0}
!137 = !{!"bitmap_head_def", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24}
!138 = !{!139, !10, i64 0}
!139 = !{!"", !10, i64 0, !10, i64 8, !6, i64 16, !17, i64 24}
!140 = !{!139, !10, i64 8}
!141 = !{!142, !6, i64 16}
!142 = !{!"bitmap_element_def", !10, i64 0, !10, i64 8, !6, i64 16, !7, i64 24}
!143 = !{!139, !6, i64 16}
!144 = !{!139, !17, i64 24}
!145 = distinct !{!145, !20}
!146 = distinct !{!146, !20}
!147 = !{!142, !10, i64 0}
