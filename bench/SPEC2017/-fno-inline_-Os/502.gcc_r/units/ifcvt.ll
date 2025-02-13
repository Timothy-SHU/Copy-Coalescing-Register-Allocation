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
define internal zeroext i8 @gate_handle_if_conversion() #0 !prof !281 !PGOFuncName !282 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !283
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %7, !prof !287

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
define internal noundef i32 @rest_of_handle_if_conversion() #0 !prof !281 !PGOFuncName !288 {
  %1 = load i32, ptr @flag_if_conversion, align 4, !tbaa !283
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %10, label %3, !prof !289

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !287

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !283
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
define internal zeroext i8 @gate_handle_if_after_combine() #0 !prof !281 !PGOFuncName !292 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !283
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_if_conversion, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10, !prof !293

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
define internal noundef i32 @rest_of_handle_if_after_combine() #0 !prof !281 !PGOFuncName !294 {
  tail call fastcc void @if_convert() #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_if_after_reload() #0 !prof !281 !PGOFuncName !295 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !283
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_if_conversion2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10, !prof !293

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
define internal noundef i32 @rest_of_handle_if_after_reload() #0 !prof !281 !PGOFuncName !296 {
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
define internal fastcc void @if_convert() unnamed_addr #0 !prof !297 !PGOFuncName !298 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !283
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %4, !prof !299

3:                                                ; preds = %0
  tail call void @df_live_add_problem() #16
  tail call void @df_live_set_all_dirty() #16
  br label %4

4:                                                ; preds = %3, %0
  store i32 0, ptr @num_possible_if_blocks, align 4, !tbaa !283
  store i32 0, ptr @num_updated_if_blocks, align 4, !tbaa !283
  store i32 0, ptr @num_true_changes, align 4, !tbaa !283
  tail call void @loop_optimizer_init(i32 noundef 16) #16
  tail call void @mark_loop_exit_edges() #16
  tail call void @loop_optimizer_finalize() #16
  tail call void @free_dominance_info(i32 noundef 1) #16
  tail call void @calculate_dominance_info(i32 noundef 2) #16
  %5 = tail call i32 @df_set_flags(i32 noundef 1) #16
  br label %6

6:                                                ; preds = %57, %4
  %7 = phi i32 [ 0, %4 ], [ %9, %57 ]
  tail call void @df_analyze() #16
  %8 = tail call i32 @df_clear_flags(i32 noundef 1) #16
  store i1 false, ptr @cond_exec_changed_p, align 4
  %9 = add nuw nsw i32 %7, 1
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !300

12:                                               ; preds = %6
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.3, i32 noundef %9) #17
  br label %16

16:                                               ; preds = %14, %12, %6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !290
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !301
  %20 = load ptr, ptr %19, align 8, !tbaa !303
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !305
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !308
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %44, label %26, !prof !309

26:                                               ; preds = %16, %33
  %27 = phi ptr [ %34, %33 ], [ %22, %16 ]
  %28 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %27) #16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35, !prof !310

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @find_if_header(ptr noundef %27, i32 noundef %9) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !311

33:                                               ; preds = %30, %35
  %34 = phi ptr [ %31, %30 ], [ %37, %35 ]
  br label %26, !llvm.loop !312

35:                                               ; preds = %26, %30
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !305
  %38 = load ptr, ptr @cfun, align 8, !tbaa !290
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !301
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !308
  %43 = icmp eq ptr %37, %42
  br i1 %43, label %44, label %33, !prof !314

44:                                               ; preds = %35, %16
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47, !prof !300

47:                                               ; preds = %44
  %48 = load i1, ptr @cond_exec_changed_p, align 4
  br i1 %48, label %49, label %62

49:                                               ; preds = %47
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !283
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  %53 = tail call ptr @get_insns() #16
  br i1 %52, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !283
  tail call void @print_rtl_slim_with_bb(ptr noundef nonnull %45, ptr noundef %53, i32 noundef %55) #16
  br label %57

56:                                               ; preds = %49
  tail call void @print_rtl_with_bb(ptr noundef nonnull %45, ptr noundef %53) #16
  br label %57

57:                                               ; preds = %44, %56, %54
  %58 = load i1, ptr @cond_exec_changed_p, align 4
  br i1 %58, label %6, label %59, !prof !315, !llvm.loop !316

59:                                               ; preds = %57
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62, !prof !317

62:                                               ; preds = %47, %59
  %63 = phi ptr [ %60, %59 ], [ %45, %47 ]
  %64 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 29, i64 1, ptr nonnull %63)
  br label %65

65:                                               ; preds = %62, %59
  tail call void @free_dominance_info(i32 noundef 2) #16
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !318

68:                                               ; preds = %65
  %69 = tail call i32 @fflush(ptr noundef nonnull %66) #17
  br label %70

70:                                               ; preds = %68, %65
  tail call void @clear_aux_for_blocks() #16
  %71 = load i32, ptr @max_regno, align 4, !tbaa !283
  %72 = tail call i32 @max_reg_num() #16
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76, !prof !319

74:                                               ; preds = %70
  %75 = tail call i32 @max_reg_num() #16
  store i32 %75, ptr @max_regno, align 4, !tbaa !283
  br label %76

76:                                               ; preds = %74, %70
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %78 = icmp eq ptr %77, null
  br i1 %78, label %90, label %79, !prof !318

79:                                               ; preds = %76
  %80 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !283
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %77, ptr noundef nonnull @.str.5, i32 noundef %80) #17
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %85 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !283
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.6, i32 noundef %85) #17
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %88 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.7, i32 noundef %88) #17
  br label %90

90:                                               ; preds = %82, %79, %76
  %91 = load i32, ptr @optimize, align 4, !tbaa !283
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %97, !prof !299

93:                                               ; preds = %90
  %94 = load ptr, ptr @df, align 8, !tbaa !290
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 1, i64 2
  %96 = load ptr, ptr %95, align 8, !tbaa !290
  tail call void @df_remove_problem(ptr noundef %96) #16
  br label %97

97:                                               ; preds = %93, %90
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
define internal fastcc ptr @find_if_header(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !320 !PGOFuncName !321 {
  %3 = alloca %struct.ce_if_block, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !322
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #17
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %98, !prof !323

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 0) #17
  %10 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 1) #17
  %11 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !324
  %13 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %12) #16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %98, !prof !326

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !324
  %18 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %17) #16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %98, !prof !327

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !328
  %23 = and i32 %22, 14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %98, !prof !329

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !328
  %28 = and i32 %27, 14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %98, !prof !329

30:                                               ; preds = %25
  %31 = or i32 %27, %22
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %98, !prof !330

34:                                               ; preds = %30
  %35 = and i32 %22, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40, !prof !331

37:                                               ; preds = %34
  %38 = and i32 %27, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %98, label %40, !prof !332

40:                                               ; preds = %37, %34
  %41 = phi ptr [ %9, %34 ], [ %10, %37 ]
  %42 = phi ptr [ %10, %34 ], [ %9, %37 ]
  %43 = getelementptr inbounds i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %43, i8 0, i64 48, i1 false)
  store ptr %0, ptr %3, align 8, !tbaa !333
  %44 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !324
  %46 = getelementptr inbounds %struct.ce_if_block, ptr %3, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !335
  %47 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !324
  %49 = getelementptr inbounds %struct.ce_if_block, ptr %3, i64 0, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !336
  %50 = getelementptr inbounds %struct.ce_if_block, ptr %3, i64 0, i32 12
  store i32 %1, ptr %50, align 4, !tbaa !337
  %51 = load i32, ptr @reload_completed, align 4, !tbaa !283
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56, !prof !338

53:                                               ; preds = %40
  %54 = tail call fastcc i32 @noce_find_if_block(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42, i32 noundef %1) #17, !range !339
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %91, !prof !340

56:                                               ; preds = %53, %40
  %57 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !341
  %58 = tail call zeroext i8 %57() #16
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %66, label %60, !prof !353

60:                                               ; preds = %56
  %61 = load i32, ptr @reload_completed, align 4, !tbaa !283
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = call fastcc i32 @cond_exec_find_if_block(ptr noundef nonnull %3) #17, !range !339
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %63, %60, %56
  %67 = load i32, ptr @word_mode, align 4, !tbaa !283
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 118, i32 4, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !354
  %71 = icmp eq i32 %70, 2956
  br i1 %71, label %75, label %72, !prof !353

72:                                               ; preds = %66
  %73 = tail call fastcc i32 @find_cond_trap(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42) #17, !range !339
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72, %66
  %76 = tail call i32 @dom_info_state(i32 noundef 2) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %98, label %78, !prof !356

78:                                               ; preds = %75
  %79 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !341
  %80 = tail call zeroext i8 %79() #16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82, !prof !353

82:                                               ; preds = %78
  %83 = load i32, ptr @reload_completed, align 4, !tbaa !283
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %82, %78
  %86 = tail call fastcc i32 @find_if_case_1(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42) #17, !range !339
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91, !prof !357

88:                                               ; preds = %85
  %89 = tail call fastcc i32 @find_if_case_2(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42) #17, !range !339
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91, !prof !358

91:                                               ; preds = %88, %85, %72, %63, %53
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94, !prof !359

94:                                               ; preds = %91
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %92, ptr noundef nonnull @.str.8, i32 noundef %1) #17
  br label %96

96:                                               ; preds = %94, %91
  store i1 true, ptr @cond_exec_changed_p, align 4
  %97 = load ptr, ptr %3, align 8, !tbaa !333
  br label %98

98:                                               ; preds = %75, %82, %88, %37, %30, %20, %25, %15, %8, %2, %96
  %99 = phi ptr [ %97, %96 ], [ null, %2 ], [ null, %8 ], [ null, %15 ], [ null, %25 ], [ null, %20 ], [ null, %30 ], [ null, %37 ], [ null, %88 ], [ null, %82 ], [ null, %75 ]
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !360 !PGOFuncName !361 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !362

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !363
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !365 !PGOFuncName !366 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !290
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_find_if_block(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !367 !PGOFuncName !368 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.noce_if_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #18
  %7 = load i32, ptr @reload_completed, align 4, !tbaa !283
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !369

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2792, ptr noundef nonnull @.str.10) #16
  br label %10

10:                                               ; preds = %4, %9
  %11 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !324
  %13 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %12) #17, !range !370
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %35, label %15, !prof !371

15:                                               ; preds = %10
  %16 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %12) #17, !range !370
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %35, label %18, !prof !372

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !324
  %21 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %20) #17, !range !370
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23, !prof !373

23:                                               ; preds = %18
  %24 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %20) #17, !range !370
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %35, label %26, !prof !374

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @single_succ(ptr noundef %12) #17
  %28 = load ptr, ptr %19, align 8, !tbaa !324
  %29 = tail call fastcc ptr @single_succ(ptr noundef %28) #17
  %30 = icmp eq ptr %27, %29
  %31 = load ptr, ptr %11, align 8, !tbaa !324
  br i1 %30, label %32, label %35, !prof !375

32:                                               ; preds = %26
  %33 = load ptr, ptr %19, align 8, !tbaa !324
  %34 = tail call fastcc ptr @single_succ(ptr noundef %31) #17
  br label %64

35:                                               ; preds = %26, %23, %18, %15, %10
  %36 = phi ptr [ %31, %26 ], [ %12, %23 ], [ %12, %18 ], [ %12, %15 ], [ %12, %10 ]
  %37 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %36) #17, !range !370
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39, !prof !376

39:                                               ; preds = %35
  %40 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %36) #17, !range !370
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42, !prof !377

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @single_succ(ptr noundef %36) #17
  %44 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !324
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %47, label %49, !prof !378

47:                                               ; preds = %42
  %48 = load ptr, ptr %11, align 8, !tbaa !324
  br label %64

49:                                               ; preds = %42, %39, %35
  %50 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !324
  %52 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %51) #17, !range !370
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %144, label %54, !prof !379

54:                                               ; preds = %49
  %55 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %51) #17, !range !370
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %144, label %57, !prof !380

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @single_succ(ptr noundef %51) #17
  %59 = load ptr, ptr %11, align 8, !tbaa !324
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %144, !prof !381

61:                                               ; preds = %57
  %62 = load ptr, ptr %50, align 8, !tbaa !324
  %63 = tail call fastcc ptr @single_succ(ptr noundef %62) #17
  br label %64

64:                                               ; preds = %47, %61, %32
  %65 = phi ptr [ %33, %32 ], [ null, %47 ], [ null, %61 ]
  %66 = phi ptr [ %34, %32 ], [ %43, %47 ], [ %63, %61 ]
  %67 = phi i8 [ 0, %32 ], [ 0, %47 ], [ 1, %61 ]
  %68 = phi ptr [ %31, %32 ], [ %48, %47 ], [ %62, %61 ]
  %69 = tail call fastcc ptr @single_succ_edge(ptr noundef %68) #17
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !328
  %72 = and i32 %71, 14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %144, !prof !382

74:                                               ; preds = %64
  %75 = icmp eq ptr %65, null
  br i1 %75, label %82, label %76, !prof !383

76:                                               ; preds = %74
  %77 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %65) #17
  %78 = getelementptr inbounds %struct.edge_def, ptr %77, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !328
  %80 = and i32 %79, 14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %144, !prof !384

82:                                               ; preds = %76, %74
  %83 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !283
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr @num_possible_if_blocks, align 4, !tbaa !283
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %86 = icmp eq ptr %85, null
  br i1 %86, label %104, label %87, !prof !382

87:                                               ; preds = %82
  %88 = select i1 %75, ptr @.str.13, ptr @.str.12
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !385
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !385
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %85, ptr noundef nonnull @.str.11, ptr noundef nonnull %88, i32 noundef %3, i32 noundef %90, i32 noundef %92) #17
  br i1 %75, label %99, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !385
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.14, i32 noundef %97) #17
  br label %99

99:                                               ; preds = %94, %87
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !385
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.15, i32 noundef %102) #17
  br label %104

104:                                              ; preds = %99, %82
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !386
  %107 = getelementptr inbounds %struct.rtl_bb_info, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !387
  %109 = tail call i32 @onlyjump_p(ptr noundef %108) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %144, label %111, !prof !389

111:                                              ; preds = %104
  %112 = call fastcc ptr @noce_get_condition(ptr noundef %108, ptr noundef nonnull %5, i8 noundef zeroext %67) #17
  %113 = icmp eq ptr %112, null
  br i1 %113, label %144, label %114, !prof !389

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !386
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 16711680
  %119 = icmp eq i32 %118, 65536
  br i1 %119, label %144, label %120, !prof !389

120:                                              ; preds = %114
  %121 = getelementptr inbounds i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %121, i8 0, i64 48, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !390
  %122 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 1
  store ptr %68, ptr %122, align 8, !tbaa !392
  %123 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 2
  store ptr %65, ptr %123, align 8, !tbaa !393
  %124 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 3
  store ptr %66, ptr %124, align 8, !tbaa !394
  %125 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 5
  store ptr %112, ptr %125, align 8, !tbaa !395
  %126 = load ptr, ptr %5, align 8, !tbaa !290
  %127 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 6
  store ptr %126, ptr %127, align 8, !tbaa !396
  %128 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 4
  store ptr %108, ptr %128, align 8, !tbaa !397
  %129 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 12
  store i8 %67, ptr %129, align 8, !tbaa !398
  %130 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %0) #16
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %137, label %132, !prof !399

132:                                              ; preds = %120
  %133 = call zeroext i8 @predictable_edge_p(ptr noundef nonnull %1) #16
  %134 = icmp eq i8 %133, 0
  %135 = load i32, ptr @ix86_branch_cost, align 4
  %136 = select i1 %134, i32 %135, i32 0, !prof !400
  br label %137

137:                                              ; preds = %120, %132
  %138 = phi i32 [ %136, %132 ], [ 2, %120 ]
  %139 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 13
  store i32 %138, ptr %139, align 4, !tbaa !401
  %140 = call fastcc i32 @noce_process_if_block(ptr noundef nonnull %6) #17, !range !339
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144, !prof !402

142:                                              ; preds = %137
  %143 = call fastcc i32 @cond_move_process_if_block(ptr noundef nonnull %6) #17, !range !339
  br label %144

144:                                              ; preds = %142, %137, %114, %111, %104, %76, %64, %49, %54, %57
  %145 = phi i32 [ 0, %57 ], [ 0, %54 ], [ 0, %49 ], [ 0, %64 ], [ 0, %76 ], [ 0, %104 ], [ 0, %111 ], [ 0, %114 ], [ 1, %137 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret i32 %145
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_exec_find_if_block(ptr nocapture noundef %0) unnamed_addr #0 !prof !403 !PGOFuncName !404 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !333
  %5 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !335
  %7 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %9 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  store ptr %4, ptr %9, align 8, !tbaa !405
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !341
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
  %18 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %4) #17, !range !370
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %73, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @single_pred_edge(ptr noundef %4) #17
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !328
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %73

25:                                               ; preds = %20
  %26 = tail call fastcc ptr @single_pred(ptr noundef %4) #17
  %27 = load ptr, ptr @cfun, align 8, !tbaa !290
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
  store i32 %39, ptr %42, align 8, !tbaa !406
  %43 = icmp eq ptr %40, null
  %44 = icmp sgt i32 %41, %32
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %73, label %46

46:                                               ; preds = %38
  store ptr %4, ptr %9, align 8, !tbaa !405
  br label %47

47:                                               ; preds = %56, %46
  %48 = phi i32 [ %41, %46 ], [ %58, %56 ]
  %49 = phi i32 [ 0, %46 ], [ %52, %56 ]
  %50 = phi i32 [ 0, %46 ], [ %53, %56 ]
  %51 = phi ptr [ %26, %46 ], [ %57, %56 ]
  store ptr %51, ptr %0, align 8, !tbaa !333
  %52 = add nsw i32 %49, %48
  %53 = add nuw nsw i32 %50, 1
  %54 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %51) #17, !range !370
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = tail call fastcc ptr @single_pred(ptr noundef %51) #17
  %58 = tail call fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %57, ptr noundef nonnull %40) #17
  %59 = icmp slt i32 %58, 0
  %60 = add nsw i32 %58, %52
  %61 = icmp sgt i32 %60, %32
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %63, label %47, !llvm.loop !407

63:                                               ; preds = %56, %47
  %64 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  store i32 %53, ptr %64, align 8, !tbaa !408
  %65 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 8
  store i32 %52, ptr %65, align 4, !tbaa !409
  %66 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !406
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 6
  store i32 %53, ptr %70, align 4, !tbaa !410
  br label %73

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 7
  store i32 %53, ptr %72, align 8, !tbaa !411
  br label %73

73:                                               ; preds = %35, %38, %71, %69, %20, %17
  %74 = phi ptr [ %4, %20 ], [ %4, %17 ], [ %4, %38 ], [ %51, %71 ], [ %51, %69 ], [ %4, %35 ]
  %75 = load ptr, ptr %6, align 8, !tbaa !412
  %76 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %75) #17
  %77 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !411
  %79 = sub i32 %76, %78
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %317

81:                                               ; preds = %73
  %82 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %6) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !413
  %83 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %82, ptr %83, align 8, !tbaa.struct !414
  %84 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %82, ptr noundef nonnull %2) #17, !range !370
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81, %92
  %87 = load ptr, ptr %2, align 8, !tbaa !290
  %88 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !328
  %90 = and i32 %89, 14
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %317

92:                                               ; preds = %86
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %93 = load i32, ptr %3, align 8
  %94 = load ptr, ptr %83, align 8
  %95 = call fastcc zeroext i8 @ei_cond(i32 %93, ptr %94, ptr noundef nonnull %2) #17, !range !370
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %86, !llvm.loop !415

97:                                               ; preds = %92, %81
  %98 = tail call fastcc ptr @ei_start_1(ptr noundef %8) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !413
  store ptr %98, ptr %83, align 8, !tbaa.struct !414
  %99 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %98, ptr noundef nonnull %2) #17, !range !370
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %97, %107
  %102 = load ptr, ptr %2, align 8, !tbaa !290
  %103 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !328
  %105 = and i32 %104, 14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %317

107:                                              ; preds = %101
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %108 = load i32, ptr %3, align 8
  %109 = load ptr, ptr %83, align 8
  %110 = call fastcc zeroext i8 @ei_cond(i32 %108, ptr %109, ptr noundef nonnull %2) #17, !range !370
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %101, !llvm.loop !416

112:                                              ; preds = %107, %97
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !322
  %115 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %114) #17
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %112
  %118 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %6) #17, !range !370
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %317, label %120

120:                                              ; preds = %117
  %121 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %6) #17
  %122 = getelementptr inbounds %struct.edge_def, ptr %121, i64 0, i32 7
  %123 = load i32, ptr %122, align 8, !tbaa !328
  %124 = and i32 %123, 14
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %317

126:                                              ; preds = %120
  %127 = load i32, ptr @epilogue_completed, align 4, !tbaa !283
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !386
  %132 = getelementptr inbounds %struct.rtl_bb_info, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !387
  %134 = tail call zeroext i8 @tablejump_p(ptr noundef %133, ptr noundef null, ptr noundef null) #16
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %317

136:                                              ; preds = %129, %126, %112
  %137 = load ptr, ptr %113, align 8, !tbaa !322
  %138 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %137) #17
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %8) #17, !range !370
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %317, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %145 = load ptr, ptr %144, align 8, !tbaa !386
  %146 = getelementptr inbounds %struct.rtl_bb_info, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !386
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
  %154 = load ptr, ptr %145, align 8, !tbaa !417
  %155 = icmp eq ptr %150, %154
  br i1 %155, label %194, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1, i32 0, i32 0, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !386
  %159 = icmp eq ptr %158, null
  br i1 %159, label %194, label %149, !llvm.loop !418

160:                                              ; preds = %149
  %161 = tail call i32 @simplejump_p(ptr noundef nonnull %150) #16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %317, label %194

163:                                              ; preds = %136
  %164 = tail call fastcc ptr @single_succ(ptr noundef nonnull %6) #17
  %165 = icmp eq ptr %164, %8
  br i1 %165, label %194, label %166

166:                                              ; preds = %163
  %167 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %8) #17, !range !370
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %317, label %169

169:                                              ; preds = %166
  %170 = tail call fastcc ptr @single_succ(ptr noundef nonnull %6) #17
  %171 = tail call fastcc ptr @single_succ(ptr noundef %8) #17
  %172 = icmp eq ptr %170, %171
  br i1 %172, label %173, label %317

173:                                              ; preds = %169
  %174 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %8) #17, !range !370
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %317, label %176

176:                                              ; preds = %173
  %177 = tail call fastcc ptr @single_succ_edge(ptr noundef %8) #17
  %178 = getelementptr inbounds %struct.edge_def, ptr %177, i64 0, i32 7
  %179 = load i32, ptr %178, align 8, !tbaa !328
  %180 = and i32 %179, 14
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %317

182:                                              ; preds = %176
  %183 = load i32, ptr @epilogue_completed, align 4, !tbaa !283
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %187 = load ptr, ptr %186, align 8, !tbaa !386
  %188 = getelementptr inbounds %struct.rtl_bb_info, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !387
  %190 = tail call zeroext i8 @tablejump_p(ptr noundef %189, ptr noundef null, ptr noundef null) #16
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %317

192:                                              ; preds = %185, %182
  %193 = tail call fastcc ptr @single_succ(ptr noundef %8) #17
  br label %194

194:                                              ; preds = %156, %153, %149, %143, %160, %163, %192
  %195 = phi ptr [ %193, %192 ], [ %8, %163 ], [ %8, %160 ], [ %8, %143 ], [ %8, %149 ], [ %8, %153 ], [ %8, %156 ]
  %196 = phi ptr [ %8, %192 ], [ null, %163 ], [ null, %160 ], [ null, %143 ], [ null, %149 ], [ null, %153 ], [ null, %156 ]
  %197 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !283
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr @num_possible_if_blocks, align 4, !tbaa !283
  %199 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %200 = icmp eq ptr %199, null
  br i1 %200, label %284, label %201

201:                                              ; preds = %194
  %202 = icmp eq ptr %196, null
  %203 = select i1 %202, ptr @.str.13, ptr @.str.12
  %204 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 12
  %205 = load i32, ptr %204, align 4, !tbaa !337
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %207 = load i32, ptr %206, align 8, !tbaa !385
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !386
  %210 = load ptr, ptr %209, align 8, !tbaa !417
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %201
  %213 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !386
  br label %215

215:                                              ; preds = %201, %212
  %216 = phi i32 [ %214, %212 ], [ -1, %201 ]
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %218 = load i32, ptr %217, align 8, !tbaa !385
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %220 = load ptr, ptr %219, align 8, !tbaa !386
  %221 = load ptr, ptr %220, align 8, !tbaa !417
  %222 = icmp eq ptr %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !386
  br label %226

226:                                              ; preds = %215, %223
  %227 = phi i32 [ %225, %223 ], [ -1, %215 ]
  %228 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %199, ptr noundef nonnull @.str.17, ptr noundef nonnull %203, i32 noundef %205, i32 noundef %207, i32 noundef %216, i32 noundef %218, i32 noundef %227) #17
  br i1 %202, label %243, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %231 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 9
  %232 = load i32, ptr %231, align 8, !tbaa !385
  %233 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 7
  %234 = load ptr, ptr %233, align 8, !tbaa !386
  %235 = load ptr, ptr %234, align 8, !tbaa !417
  %236 = icmp eq ptr %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %229
  %238 = getelementptr inbounds %struct.rtx_def, ptr %235, i64 0, i32 1
  %239 = load i32, ptr %238, align 8, !tbaa !386
  br label %240

240:                                              ; preds = %229, %237
  %241 = phi i32 [ %239, %237 ], [ -1, %229 ]
  %242 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef nonnull @.str.18, i32 noundef %232, i32 noundef %241) #17
  br label %243

243:                                              ; preds = %240, %226
  %244 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %245 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 9
  %246 = load i32, ptr %245, align 8, !tbaa !385
  %247 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 7
  %248 = load ptr, ptr %247, align 8, !tbaa !386
  %249 = load ptr, ptr %248, align 8, !tbaa !417
  %250 = icmp eq ptr %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.rtx_def, ptr %249, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !386
  br label %254

254:                                              ; preds = %243, %251
  %255 = phi i32 [ %253, %251 ], [ -1, %243 ]
  %256 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef nonnull @.str.19, i32 noundef %246, i32 noundef %255) #17
  %257 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %258 = load i32, ptr %257, align 8, !tbaa !408
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %281

260:                                              ; preds = %254
  %261 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %262 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %263 = load i32, ptr %262, align 8, !tbaa !406
  %264 = icmp eq i32 %263, 0
  %265 = select i1 %264, ptr @.str.22, ptr @.str.21
  %266 = icmp eq i32 %258, 1
  %267 = select i1 %266, ptr @.str.13, ptr @.str.23
  %268 = load ptr, ptr %9, align 8, !tbaa !405
  %269 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 9
  %270 = load i32, ptr %269, align 8, !tbaa !385
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 7
  %272 = load ptr, ptr %271, align 8, !tbaa !386
  %273 = load ptr, ptr %272, align 8, !tbaa !417
  %274 = icmp eq ptr %273, null
  br i1 %274, label %278, label %275

275:                                              ; preds = %260
  %276 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1
  %277 = load i32, ptr %276, align 8, !tbaa !386
  br label %278

278:                                              ; preds = %260, %275
  %279 = phi i32 [ %277, %275 ], [ -1, %260 ]
  %280 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef nonnull @.str.20, i32 noundef %258, ptr noundef nonnull %265, ptr noundef nonnull %267, i32 noundef %270, i32 noundef %279) #17
  br label %281

281:                                              ; preds = %278, %254
  %282 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %283 = tail call i32 @fputc(i32 noundef 10, ptr noundef %282) #17
  br label %284

284:                                              ; preds = %281, %194
  %285 = icmp ne ptr %196, null
  br i1 %285, label %286, label %290

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %288 = load ptr, ptr %287, align 8, !tbaa !305
  %289 = icmp eq ptr %288, %196
  br i1 %289, label %290, label %317

290:                                              ; preds = %286, %284
  %291 = phi ptr [ %196, %286 ], [ %6, %284 ]
  %292 = getelementptr inbounds %struct.basic_block_def, ptr %291, i64 0, i32 6
  %293 = load ptr, ptr %292, align 8, !tbaa !305
  %294 = icmp eq ptr %293, %195
  br i1 %294, label %304, label %295

295:                                              ; preds = %290
  %296 = load ptr, ptr @cfun, align 8, !tbaa !290
  %297 = getelementptr inbounds %struct.function, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !301
  %299 = getelementptr inbounds %struct.control_flow_graph, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !308
  %301 = icmp eq ptr %195, %300
  %302 = or i1 %285, %301
  %303 = select i1 %301, ptr %195, ptr null
  br i1 %302, label %304, label %317

304:                                              ; preds = %295, %290
  %305 = phi ptr [ %303, %295 ], [ %195, %290 ]
  store ptr %196, ptr %7, align 8, !tbaa !336
  %306 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 3
  store ptr %305, ptr %306, align 8, !tbaa !419
  %307 = tail call fastcc i32 @cond_exec_process_if_block(ptr noundef nonnull %0, i32 noundef 1) #17
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %311 = load i32, ptr %310, align 8, !tbaa !408
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
define internal fastcc noundef i32 @find_cond_trap(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !403 !PGOFuncName !420 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !324
  %7 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !324
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
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !385
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !385
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %18, ptr noundef nonnull @.str.27, i32 noundef %22, i32 noundef %24) #17
  br label %26

26:                                               ; preds = %20, %14
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !386
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !387
  %31 = call fastcc ptr @noce_get_condition(ptr noundef %30, ptr noundef nonnull %4, i8 noundef zeroext 0) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %104, label %33

33:                                               ; preds = %26
  %34 = call i32 @onlyjump_p(ptr noundef %30) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %104, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !386
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
  %50 = load ptr, ptr %37, align 8, !tbaa !386
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi ptr [ %50, %49 ], [ %38, %42 ]
  %53 = phi i32 [ %47, %49 ], [ %44, %42 ]
  %54 = call ptr @copy_rtx(ptr noundef %52) #16
  %55 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !386
  %57 = call ptr @copy_rtx(ptr noundef %56) #16
  %58 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !386
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !386
  %62 = call ptr @gen_cond_trap(i32 noundef %53, ptr noundef %54, ptr noundef %57, ptr noundef %61) #16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %104, label %64

64:                                               ; preds = %51
  %65 = load ptr, ptr %4, align 8, !tbaa !290
  %66 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !386
  %68 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %62, ptr noundef %65, i32 noundef %67) #16
  %69 = select i1 %45, ptr %1, ptr %2
  call void @remove_edge(ptr noundef %69) #16
  call void @df_set_bb_dirty(ptr noundef nonnull %0) #16
  call void @df_set_bb_dirty(ptr noundef %6) #16
  call void @df_set_bb_dirty(ptr noundef %8) #16
  %70 = load ptr, ptr %16, align 8, !tbaa !412
  %71 = call fastcc i32 @VEC_edge_base_length(ptr noundef %70) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  call void @delete_basic_block(ptr noundef nonnull %16) #16
  %74 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr @num_true_changes, align 4, !tbaa !283
  br label %76

76:                                               ; preds = %73, %64
  %77 = call i32 @current_ir_type() #16
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #17
  %81 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 7
  %82 = load i32, ptr %81, align 8, !tbaa !328
  %83 = or i32 %82, 1
  store i32 %83, ptr %81, align 8, !tbaa !328
  br label %94

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !386
  %87 = call ptr @gen_jump(ptr noundef %86) #16
  %88 = call ptr @emit_jump_insn_after(ptr noundef %87, ptr noundef %30) #16
  %89 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !386
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %89, align 8, !tbaa !386
  %92 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %86, ptr %92, align 8, !tbaa !386
  %93 = call ptr @emit_barrier_after(ptr noundef %88) #16
  br label %94

94:                                               ; preds = %84, %79
  %95 = call ptr @delete_insn(ptr noundef %30) #16
  %96 = call zeroext i8 @can_merge_blocks_p(ptr noundef nonnull %0, ptr noundef %17) #16
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  call void @merge_blocks(ptr noundef nonnull %0, ptr noundef %17) #16
  %99 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr @num_true_changes, align 4, !tbaa !283
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !283
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr @num_updated_if_blocks, align 4, !tbaa !283
  br label %104

104:                                              ; preds = %51, %46, %36, %33, %26, %11, %101
  %105 = phi i32 [ 1, %101 ], [ 0, %11 ], [ 0, %26 ], [ 0, %33 ], [ 0, %36 ], [ 0, %46 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i32 %105
}

; Function Attrs: optsize
declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_if_case_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !421 !PGOFuncName !422 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !324
  %6 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !324
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !386
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !387
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !356

13:                                               ; preds = %3
  %14 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 29, ptr noundef null) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %136, !prof !353

16:                                               ; preds = %13, %3
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !386
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !387
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !356

22:                                               ; preds = %16
  %23 = tail call ptr @find_reg_note(ptr noundef nonnull %20, i32 noundef 29, ptr noundef null) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %136, !prof !353

25:                                               ; preds = %22, %16
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !386
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !387
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !356

31:                                               ; preds = %25
  %32 = tail call ptr @find_reg_note(ptr noundef nonnull %29, i32 noundef 29, ptr noundef null) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %136, !prof !353

34:                                               ; preds = %31, %25
  %35 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %5) #17, !range !370
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %136, label %37, !prof !423

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %5) #17
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !328
  %41 = and i32 %40, 15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %136, !prof !424

43:                                               ; preds = %37
  %44 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %5) #17, !range !370
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %136, label %46, !prof !425

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %5) #16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %136, !prof !426

49:                                               ; preds = %46
  %50 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !283
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr @num_possible_if_blocks, align 4, !tbaa !283
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54, !prof !427

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !385
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !385
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %52, ptr noundef nonnull @.str.28, i32 noundef %56, i32 noundef %58) #17
  br label %60

60:                                               ; preds = %54, %49
  %61 = load ptr, ptr %1, align 8, !tbaa !428
  %62 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %61) #16
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64, !prof !429

64:                                               ; preds = %60
  %65 = tail call zeroext i8 @predictable_edge_p(ptr noundef nonnull %1) #16
  %66 = icmp eq i8 %65, 0
  %67 = load i32, ptr @ix86_branch_cost, align 4
  %68 = shl nsw i32 %67, 2
  %69 = select i1 %66, i32 %68, i32 0, !prof !430
  br label %70

70:                                               ; preds = %60, %64
  %71 = phi i32 [ %69, %64 ], [ 8, %60 ]
  %72 = tail call fastcc zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef nonnull %5, i32 noundef %71) #17
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %136, label %74, !prof !431

74:                                               ; preds = %70
  %75 = tail call fastcc ptr @single_succ(ptr noundef nonnull %5) #17
  %76 = tail call fastcc i32 @dead_or_predicable(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %75, i32 noundef 1) #17, !range !339
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %136, label %78, !prof !432

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !305
  %81 = icmp eq ptr %80, %7
  br i1 %81, label %82, label %105, !prof !433

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !434
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load ptr, ptr @cfun, align 8, !tbaa !290
  %88 = getelementptr inbounds %struct.function, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !301
  %90 = getelementptr inbounds %struct.control_flow_graph, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !308
  %92 = icmp eq ptr %7, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !322
  %96 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %95, i32 noundef 0) #17
  %97 = getelementptr inbounds %struct.edge_def, ptr %96, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !328
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
  %107 = load ptr, ptr %106, align 8, !tbaa !322
  %108 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %107, i32 noundef 0) #17
  %109 = getelementptr inbounds %struct.edge_def, ptr %108, i64 0, i32 7
  %110 = load i32, ptr %109, align 8, !tbaa !328
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115, !prof !435

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
  %121 = load i32, ptr %120, align 8, !tbaa !385
  tail call void @delete_basic_block(ptr noundef nonnull %5) #16
  %122 = icmp eq ptr %119, null
  br i1 %122, label %131, label %123, !prof !433

123:                                              ; preds = %118
  tail call void @df_bb_replace(i32 noundef %121, ptr noundef nonnull %119) #16
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 13
  %125 = load i32, ptr %124, align 8, !tbaa !436
  %126 = and i32 %125, -97
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %128 = load i32, ptr %127, align 8, !tbaa !436
  %129 = and i32 %128, 96
  %130 = or disjoint i32 %129, %126
  store i32 %130, ptr %124, align 8, !tbaa !436
  br label %131

131:                                              ; preds = %123, %118
  %132 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr @num_true_changes, align 4, !tbaa !283
  %134 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !283
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr @num_updated_if_blocks, align 4, !tbaa !283
  br label %136

136:                                              ; preds = %74, %70, %46, %43, %37, %34, %13, %22, %31, %131
  %137 = phi i32 [ 1, %131 ], [ 0, %31 ], [ 0, %22 ], [ 0, %13 ], [ 0, %34 ], [ 0, %37 ], [ 0, %43 ], [ 0, %46 ], [ 0, %70 ], [ 0, %74 ]
  ret i32 %137
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_if_case_2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !437 !PGOFuncName !438 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !324
  %6 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !324
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !386
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !387
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !439

13:                                               ; preds = %3
  %14 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 29, ptr noundef null) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %106, !prof !440

16:                                               ; preds = %13, %3
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !386
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !387
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !439

22:                                               ; preds = %16
  %23 = tail call ptr @find_reg_note(ptr noundef nonnull %20, i32 noundef 29, ptr noundef null) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %106, !prof !440

25:                                               ; preds = %22, %16
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !386
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !387
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !439

31:                                               ; preds = %25
  %32 = tail call ptr @find_reg_note(ptr noundef nonnull %29, i32 noundef 29, ptr noundef null) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %106, !prof !440

34:                                               ; preds = %31, %25
  %35 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %7) #17, !range !370
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %106, label %37, !prof !441

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %7) #17
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !328
  %41 = and i32 %40, 14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %106, !prof !442

43:                                               ; preds = %37
  %44 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %7) #17, !range !370
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %106, label %46, !prof !443

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !385
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %106, label %50, !prof !444

50:                                               ; preds = %46
  %51 = load ptr, ptr %17, align 8, !tbaa !386
  %52 = getelementptr inbounds %struct.rtl_bb_info, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !387
  %54 = tail call ptr @find_reg_note(ptr noundef %53, i32 noundef 13, ptr noundef null) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56, !prof !444

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !386
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !386
  %61 = icmp sgt i64 %60, 4999
  br i1 %61, label %71, label %62, !prof !445

62:                                               ; preds = %56, %50
  %63 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !324
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !385
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %71, label %68, !prof !446

68:                                               ; preds = %62
  %69 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %64) #16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %106, label %71, !prof !447

71:                                               ; preds = %68, %62, %56
  %72 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !283
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr @num_possible_if_blocks, align 4, !tbaa !283
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !290
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76, !prof !448

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !385
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !385
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %74, ptr noundef nonnull @.str.29, i32 noundef %78, i32 noundef %80) #17
  br label %82

82:                                               ; preds = %76, %71
  %83 = load ptr, ptr %2, align 8, !tbaa !428
  %84 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %83) #16
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %92, label %86, !prof !449

86:                                               ; preds = %82
  %87 = tail call zeroext i8 @predictable_edge_p(ptr noundef nonnull %2) #16
  %88 = icmp eq i8 %87, 0
  %89 = load i32, ptr @ix86_branch_cost, align 4
  %90 = shl nsw i32 %89, 2
  %91 = select i1 %88, i32 %90, i32 0, !prof !450
  br label %92

92:                                               ; preds = %82, %86
  %93 = phi i32 [ %91, %86 ], [ 8, %82 ]
  %94 = tail call fastcc zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef nonnull %7, i32 noundef %93) #17
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %106, label %96, !prof !451

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !324
  %99 = tail call fastcc i32 @dead_or_predicable(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %98, i32 noundef 0) #17, !range !339
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101, !prof !452

101:                                              ; preds = %96
  tail call void @df_set_bb_dirty(ptr noundef nonnull %0) #16
  tail call void @df_set_bb_dirty(ptr noundef nonnull %5) #16
  tail call void @delete_basic_block(ptr noundef nonnull %7) #16
  %102 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr @num_true_changes, align 4, !tbaa !283
  %104 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !283
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr @num_updated_if_blocks, align 4, !tbaa !283
  br label %106

106:                                              ; preds = %96, %92, %68, %46, %43, %37, %34, %13, %22, %31, %101
  %107 = phi i32 [ 1, %101 ], [ 0, %31 ], [ 0, %22 ], [ 0, %13 ], [ 0, %34 ], [ 0, %37 ], [ 0, %43 ], [ 0, %46 ], [ 0, %68 ], [ 0, %92 ], [ 0, %96 ]
  ret i32 %107
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !453 !PGOFuncName !454 {
  %2 = load ptr, ptr %0, align 8, !tbaa !412
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !455 !PGOFuncName !456 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !322
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !457 !PGOFuncName !458 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !324
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !459 !PGOFuncName !460 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !370
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !461

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !322
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #17
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @noce_get_condition(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !462 !PGOFuncName !463 {
  %4 = tail call i32 @any_condjump_p(ptr noundef %0) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %58, label %6, !prof !464

6:                                                ; preds = %3
  %7 = tail call ptr @pc_set(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !386
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !386
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 44
  br i1 %14, label %15, label %22, !prof !464

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !386
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !386
  %20 = icmp eq ptr %17, %19
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %15, %6
  %23 = phi i8 [ 0, %6 ], [ %21, %15 ]
  %24 = icmp eq i8 %2, 0
  br i1 %24, label %27, label %25, !prof !465

25:                                               ; preds = %22
  %26 = xor i8 %23, 1
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i8 [ %26, %25 ], [ %23, %22 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !386
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !386
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %55, !prof !466

36:                                               ; preds = %27
  %37 = lshr i32 %33, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !386
  %42 = icmp eq i8 %41, 2
  br i1 %42, label %43, label %55, !prof !467

43:                                               ; preds = %36
  store ptr %0, ptr %1, align 8, !tbaa !290
  %44 = icmp eq i8 %28, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %43
  %46 = load i32, ptr %30, align 8
  %47 = and i32 %46, 65535
  %48 = tail call i32 @reverse_condition(i32 noundef %47) #16
  %49 = load i32, ptr %30, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !386
  %54 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %48, i32 noundef %51, ptr noundef nonnull %32, ptr noundef %53) #16
  br label %58

55:                                               ; preds = %36, %27
  %56 = zext nneg i8 %28 to i32
  %57 = tail call ptr @canonicalize_condition(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %56, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 1) #16
  br label %58

58:                                               ; preds = %43, %45, %3, %55
  %59 = phi ptr [ %57, %55 ], [ null, %3 ], [ %54, %45 ], [ %30, %43 ]
  ret ptr %59
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @predictable_edge_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_process_if_block(ptr nocapture noundef %0) unnamed_addr #0 !prof !468 !PGOFuncName !469 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !392
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !393
  %7 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !394
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !397
  %11 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !395
  %13 = tail call fastcc ptr @first_active_insn(ptr noundef %4) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %297, label %15, !prof !389

15:                                               ; preds = %1
  %16 = tail call fastcc ptr @last_active_insn(ptr noundef %4, i32 noundef 0) #17
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %18, label %297, !prof !470

18:                                               ; preds = %15
  %19 = load i32, ptr %13, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -7
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %297, !prof !471

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !386
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %32, label %29, !prof !472

29:                                               ; preds = %23
  %30 = tail call ptr @single_set_2(ptr noundef nonnull %13, ptr noundef nonnull %25) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %297, label %32

32:                                               ; preds = %23, %29
  %33 = phi ptr [ %30, %29 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !386
  %36 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !386
  %38 = icmp ne ptr %6, null
  br i1 %38, label %39, label %65, !prof !473

39:                                               ; preds = %32
  %40 = tail call fastcc ptr @first_active_insn(ptr noundef nonnull %6) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %297, label %42, !prof !474

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @last_active_insn(ptr noundef nonnull %6, i32 noundef 0) #17
  %44 = icmp eq ptr %40, %43
  br i1 %44, label %45, label %297, !prof !475

45:                                               ; preds = %42
  %46 = load i32, ptr %40, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %297, !prof !476

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !386
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 23
  br i1 %55, label %59, label %56, !prof !475

56:                                               ; preds = %50
  %57 = tail call ptr @single_set_2(ptr noundef nonnull %40, ptr noundef nonnull %52) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %297, label %59

59:                                               ; preds = %50, %56
  %60 = phi ptr [ %57, %56 ], [ %52, %50 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !386
  %63 = tail call i32 @rtx_equal_p(ptr noundef %35, ptr noundef %62) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %297, label %124, !prof !474

65:                                               ; preds = %32
  %66 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !396
  %68 = tail call ptr @prev_nonnote_insn(ptr noundef %67) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %129, label %70, !prof !477

70:                                               ; preds = %65, %75
  %71 = phi ptr [ %76, %75 ], [ %68, %65 ]
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 7
  br i1 %74, label %75, label %78, !prof !478

75:                                               ; preds = %70
  %76 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %71) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %129, label %70, !prof !479, !llvm.loop !480

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !386
  %81 = load ptr, ptr %66, align 8, !tbaa !396
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !386
  %84 = icmp eq ptr %80, %83
  %85 = icmp eq i32 %73, 8
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %129, !prof !481

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !386
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 23
  br i1 %92, label %96, label %93, !prof !482

93:                                               ; preds = %87
  %94 = tail call ptr @single_set_2(ptr noundef nonnull %71, ptr noundef nonnull %89) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %129, label %96

96:                                               ; preds = %87, %93
  %97 = phi ptr [ %94, %93 ], [ %89, %87 ]
  %98 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !386
  %100 = tail call i32 @rtx_equal_p(ptr noundef %35, ptr noundef %99) #16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %129, label %102, !prof !478

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !386
  %105 = tail call fastcc i32 @noce_operand_ok(ptr noundef %104) #17, !range !339
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %129, label %107, !prof !478

107:                                              ; preds = %102
  %108 = load ptr, ptr %103, align 8, !tbaa !386
  %109 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %35, ptr noundef %108) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %129, !prof !482

111:                                              ; preds = %107
  %112 = load ptr, ptr %103, align 8, !tbaa !386
  %113 = tail call i32 @modified_between_p(ptr noundef %112, ptr noundef nonnull %71, ptr noundef %10) #16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %129, !prof !482

115:                                              ; preds = %111
  %116 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %35, ptr noundef %12) #16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129, !prof !478

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
  br i1 %128, label %132, label %297, !prof !472

129:                                              ; preds = %75, %65, %78, %93, %96, %102, %107, %111, %115, %118, %121
  %130 = tail call i32 @side_effects_p(ptr noundef %35) #16
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %297, !prof !472

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 0, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !386
  br label %135

135:                                              ; preds = %129, %132
  %136 = phi i1 [ true, %132 ], [ false, %129 ]
  %137 = phi ptr [ %126, %132 ], [ null, %129 ]
  %138 = phi ptr [ %134, %132 ], [ %35, %129 ]
  %139 = load i32, ptr %35, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 37
  br i1 %141, label %142, label %145, !prof !472

142:                                              ; preds = %135
  %143 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #17
  %144 = icmp ult i32 %143, 53
  br i1 %144, label %148, label %174, !prof !483

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
  %155 = load ptr, ptr %154, align 8, !tbaa !386
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 30
  br i1 %158, label %159, label %297

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %161 = load ptr, ptr %160, align 8, !tbaa !386
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 30
  br i1 %164, label %169, label %297

165:                                              ; preds = %151
  %166 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !386
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
  %176 = tail call fastcc i32 @noce_operand_ok(ptr noundef %37) #17, !range !339
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %297, label %178, !prof !483

178:                                              ; preds = %174
  %179 = tail call fastcc i32 @noce_operand_ok(ptr noundef %138) #17, !range !339
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %297, label %181, !prof !483

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %183 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 8
  %184 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %185 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %186 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  br label %187

187:                                              ; preds = %181, %263
  %188 = phi i1 [ false, %263 ], [ %136, %181 ]
  %189 = phi ptr [ %35, %263 ], [ %138, %181 ]
  %190 = phi ptr [ null, %263 ], [ %137, %181 ]
  store ptr %13, ptr %182, align 8, !tbaa !484
  store ptr %190, ptr %183, align 8, !tbaa !485
  store ptr %175, ptr %184, align 8, !tbaa !486
  store ptr %37, ptr %185, align 8, !tbaa !487
  store ptr %189, ptr %186, align 8, !tbaa !488
  %191 = tail call i32 @rtx_equal_p(ptr noundef %37, ptr noundef %189) #16
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %215, label %193, !prof !472

193:                                              ; preds = %187
  %194 = icmp ne ptr %190, null
  %195 = and i1 %38, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %198 = load ptr, ptr %197, align 8, !tbaa !386
  %199 = getelementptr inbounds %struct.rtl_bb_info, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !387
  %201 = icmp eq ptr %190, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1, i32 0, i32 0, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !386
  store ptr %204, ptr %199, align 8, !tbaa !387
  br label %205

205:                                              ; preds = %202, %196
  %206 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !386
  tail call void @reorder_insns(ptr noundef nonnull %190, ptr noundef nonnull %190, ptr noundef %207) #16
  %208 = tail call ptr @find_reg_note(ptr noundef nonnull %190, i32 noundef 4, ptr noundef null) #16
  %209 = icmp eq ptr %208, null
  br i1 %209, label %278, label %210

210:                                              ; preds = %205
  tail call void @remove_note(ptr noundef nonnull %190, ptr noundef nonnull %208) #16
  br label %278

211:                                              ; preds = %193
  br i1 %194, label %212, label %277

212:                                              ; preds = %211
  %213 = tail call i32 @side_effects_p(ptr noundef nonnull %35) #16
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %277, label %297

215:                                              ; preds = %187
  br i1 %188, label %226, label %216, !prof !473

216:                                              ; preds = %215
  %217 = load i32, ptr %35, align 8
  %218 = and i32 %217, 65535
  %219 = icmp eq i32 %218, 43
  br i1 %219, label %220, label %226, !prof !478

220:                                              ; preds = %216
  %221 = tail call fastcc zeroext i8 @noce_mem_write_may_trap_or_fault_p(ptr noundef nonnull %35) #17, !range !370
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %297

223:                                              ; preds = %220
  %224 = tail call fastcc zeroext i8 @noce_can_store_speculate_p(ptr noundef %2, ptr noundef nonnull %35) #17
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %297, label %226

226:                                              ; preds = %223, %216, %215
  %227 = tail call fastcc i32 @noce_try_move(ptr noundef nonnull %0) #17, !range !339
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %266, !prof !472

229:                                              ; preds = %226
  %230 = tail call fastcc i32 @noce_try_store_flag(ptr noundef nonnull %0) #17, !range !339
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %266, !prof !472

232:                                              ; preds = %229
  %233 = tail call fastcc i32 @noce_try_bitop(ptr noundef nonnull %0) #17, !range !339
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %266, !prof !472

235:                                              ; preds = %232
  %236 = tail call fastcc i32 @noce_try_minmax(ptr noundef nonnull %0) #17, !range !339
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %266, !prof !472

238:                                              ; preds = %235
  %239 = tail call fastcc i32 @noce_try_abs(ptr noundef nonnull %0) #17, !range !339
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %266, !prof !472

241:                                              ; preds = %238
  %242 = tail call fastcc i32 @noce_try_cmove(ptr noundef nonnull %0) #17, !range !339
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %266, !prof !489

244:                                              ; preds = %241
  %245 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !341
  %246 = tail call zeroext i8 %245() #16
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %263, !prof !482

248:                                              ; preds = %244
  %249 = tail call fastcc i32 @noce_try_store_flag_constants(ptr noundef nonnull %0) #17, !range !339
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %266, !prof !482

251:                                              ; preds = %248
  %252 = tail call fastcc i32 @noce_try_addcc(ptr noundef nonnull %0) #17
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %266, !prof !482

254:                                              ; preds = %251
  %255 = tail call fastcc i32 @noce_try_store_flag_mask(ptr noundef nonnull %0) #17, !range !339
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %266, !prof !482

257:                                              ; preds = %254
  %258 = tail call fastcc i32 @noce_try_cmove_arith(ptr noundef nonnull %0) #17
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %266, !prof !482

260:                                              ; preds = %257
  %261 = tail call fastcc i32 @noce_try_sign_mask(ptr noundef nonnull %0) #17, !range !339
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %266, !prof !482

263:                                              ; preds = %260, %244
  %264 = icmp eq ptr %6, null
  %265 = and i1 %264, %188
  br i1 %265, label %187, label %297, !prof !490

266:                                              ; preds = %260, %257, %254, %251, %248, %241, %238, %235, %232, %229, %226
  %267 = icmp eq ptr %35, %175
  br i1 %267, label %277, label %268, !prof !491

268:                                              ; preds = %266
  tail call void @start_sequence() #16
  tail call fastcc void @noce_emit_move_insn(ptr noundef nonnull %35, ptr noundef %175) #17
  %269 = tail call ptr @get_insns() #16
  tail call void @set_used_flags(ptr noundef nonnull %35) #16
  tail call void @unshare_all_rtl_in_chain(ptr noundef %269) #16
  tail call void @end_sequence() #16
  %270 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !386
  %272 = getelementptr inbounds %struct.rtl_bb_info, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !387
  %274 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 2
  %275 = load i32, ptr %274, align 8, !tbaa !386
  %276 = tail call ptr @emit_insn_before_setloc(ptr noundef %269, ptr noundef %273, i32 noundef %275) #16
  br label %277

277:                                              ; preds = %212, %211, %268, %266
  br i1 %38, label %278, label %281, !prof !492

278:                                              ; preds = %205, %210, %277
  tail call void @delete_basic_block(ptr noundef nonnull %6) #16
  %279 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %280 = add nsw i32 %279, 1
  store i32 %280, ptr @num_true_changes, align 4, !tbaa !283
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
  %287 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr @num_true_changes, align 4, !tbaa !283
  %289 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %2, ptr noundef %8) #16
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %294, label %291, !prof !475

291:                                              ; preds = %283
  tail call void @merge_blocks(ptr noundef %2, ptr noundef %8) #16
  %292 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %293 = add nsw i32 %292, 1
  store i32 %293, ptr @num_true_changes, align 4, !tbaa !283
  br label %294

294:                                              ; preds = %291, %283
  %295 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !283
  %296 = add nsw i32 %295, 1
  store i32 %296, ptr @num_updated_if_blocks, align 4, !tbaa !283
  br label %297

297:                                              ; preds = %263, %223, %220, %45, %18, %148, %129, %212, %174, %178, %153, %159, %145, %124, %39, %42, %56, %59, %1, %15, %29, %294
  %298 = phi i32 [ 1, %294 ], [ 0, %29 ], [ 0, %15 ], [ 0, %1 ], [ 0, %59 ], [ 0, %56 ], [ 0, %42 ], [ 0, %39 ], [ 0, %124 ], [ 0, %145 ], [ 0, %159 ], [ 0, %153 ], [ 0, %178 ], [ 0, %174 ], [ 0, %212 ], [ 0, %129 ], [ 0, %148 ], [ 0, %18 ], [ 0, %45 ], [ 0, %220 ], [ 0, %223 ], [ 0, %263 ]
  ret i32 %298
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_move_process_if_block(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !493 !PGOFuncName !494 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !392
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !393
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !394
  %12 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !397
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !395
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !290
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
  br i1 %23, label %139, label %24, !prof !495

24:                                               ; preds = %1
  %25 = icmp eq ptr %9, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = call fastcc i32 @check_cond_move_block(ptr noundef nonnull %9, ptr noundef nonnull %21, ptr noundef nonnull %4, ptr noundef %15) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %139, label %29

29:                                               ; preds = %26, %24
  %30 = load ptr, ptr %3, align 8
  %31 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %2) #17, !range !339
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %70, %29
  %34 = phi i32 [ 0, %29 ], [ %71, %70 ]
  %35 = load ptr, ptr %4, align 8
  %36 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %2) #17, !range !339
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %88, label %75

38:                                               ; preds = %29, %70
  %39 = phi i32 [ %72, %70 ], [ 0, %29 ]
  %40 = phi i32 [ %71, %70 ], [ 0, %29 ]
  %41 = load i32, ptr %2, align 4, !tbaa !283
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %20, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !290
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds ptr, ptr %21, i64 %42
  %47 = load ptr, ptr %46, align 8, !tbaa !290
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
  %58 = load i32, ptr %57, align 4, !tbaa !283
  %59 = icmp eq i32 %58, 9
  br i1 %59, label %70, label %60

60:                                               ; preds = %53
  %61 = load i32, ptr %47, align 8
  %62 = and i32 %61, 65535
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !283
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = tail call i32 @rtx_equal_p(ptr noundef nonnull %44, ptr noundef nonnull %47) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %139, label %70

70:                                               ; preds = %51, %67, %60, %53, %49
  %71 = phi i32 [ %40, %53 ], [ %40, %60 ], [ %40, %67 ], [ %52, %51 ], [ %40, %49 ]
  %72 = add i32 %39, 1
  %73 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %30, i32 noundef %72, ptr noundef nonnull %2) #17, !range !339
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %33, label %38, !llvm.loop !496

75:                                               ; preds = %33, %75
  %76 = phi i32 [ %85, %75 ], [ 0, %33 ]
  %77 = phi i32 [ %84, %75 ], [ %34, %33 ]
  %78 = load i32, ptr %2, align 4, !tbaa !283
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %20, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !290
  %82 = icmp eq ptr %81, null
  %83 = zext i1 %82 to i32
  %84 = add nsw i32 %77, %83
  %85 = add i32 %76, 1
  %86 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %35, i32 noundef %85, ptr noundef nonnull %2) #17, !range !339
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %75, !llvm.loop !497

88:                                               ; preds = %75, %33
  %89 = phi i32 [ %34, %33 ], [ %84, %75 ]
  %90 = load ptr, ptr @cfun, align 8, !tbaa !290
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
  %118 = load i32, ptr %117, align 8, !tbaa !386
  %119 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %106, ptr noundef %13, i32 noundef %118) #16
  br i1 %25, label %123, label %120

120:                                              ; preds = %115
  tail call void @delete_basic_block(ptr noundef nonnull %9) #16
  %121 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr @num_true_changes, align 4, !tbaa !283
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
  %129 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr @num_true_changes, align 4, !tbaa !283
  %131 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %5, ptr noundef %11) #16
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  tail call void @merge_blocks(ptr noundef %5, ptr noundef %11) #16
  %134 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr @num_true_changes, align 4, !tbaa !283
  br label %136

136:                                              ; preds = %133, %125
  %137 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !283
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr @num_updated_if_blocks, align 4, !tbaa !283
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
define internal fastcc noundef ptr @first_active_insn(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !498 !PGOFuncName !499 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !386
  %4 = load ptr, ptr %3, align 8, !tbaa !417
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %15, !prof !500

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !387
  %11 = icmp eq ptr %4, %10
  br i1 %11, label %29, label %12, !prof !474

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !386
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
  ], !prof !501

22:                                               ; preds = %18, %18
  %23 = load ptr, ptr %17, align 8, !tbaa !387
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %28, label %25, !prof !502

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !386
  br label %18, !llvm.loop !503

28:                                               ; preds = %22, %18
  br label %29

29:                                               ; preds = %18, %28, %8
  %30 = phi ptr [ null, %8 ], [ null, %28 ], [ %19, %18 ]
  ret ptr %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @last_active_insn(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !498 !PGOFuncName !504 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  br label %6

6:                                                ; preds = %26, %2
  %7 = phi ptr [ %5, %2 ], [ %27, %26 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !386
  %9 = load i32, ptr %8, align 8
  %10 = freeze i32 %9
  %11 = and i32 %10, 65535
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %13 [
    i16 13, label %23
    i16 9, label %23
    i16 7, label %23
  ], !prof !505

13:                                               ; preds = %6
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %28, label %15, !prof !506

15:                                               ; preds = %13
  %16 = icmp eq i32 %11, 8
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !386
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 24
  br i1 %22, label %23, label %31, !prof !507

23:                                               ; preds = %6, %6, %6, %17
  %24 = load ptr, ptr %4, align 8, !tbaa !417
  %25 = icmp eq ptr %8, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %6, !llvm.loop !508

28:                                               ; preds = %15, %13
  %29 = icmp eq i32 %11, 12
  %30 = select i1 %29, ptr null, ptr %8, !prof !509
  br label %31

31:                                               ; preds = %17, %23, %28
  %32 = phi ptr [ %30, %28 ], [ %8, %17 ], [ null, %23 ]
  ret ptr %32
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @noce_operand_ok(ptr noundef %0) unnamed_addr #0 !prof !510 !PGOFuncName !511 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %10, !prof !512

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !386
  %8 = tail call i32 @side_effects_p(ptr noundef %7) #16
  %9 = icmp eq i32 %8, 0
  br label %16

10:                                               ; preds = %1
  %11 = tail call i32 @side_effects_p(ptr noundef nonnull %0) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !513

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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !514 !PGOFuncName !515 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !386
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
define internal fastcc noundef zeroext i8 @noce_mem_write_may_trap_or_fault_p(ptr noundef %0) unnamed_addr #0 !prof !403 !PGOFuncName !516 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !386
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !517
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
  %24 = load ptr, ptr %23, align 8, !tbaa !386
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
  %35 = load ptr, ptr %34, align 8, !tbaa !386
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
  %43 = load ptr, ptr %42, align 8, !tbaa !386
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %14, !llvm.loop !518

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %22, %41, %14, %45, %8, %37, %5, %1, %40
  %47 = phi i8 [ 0, %40 ], [ 1, %1 ], [ 1, %5 ], [ 1, %37 ], [ 0, %8 ], [ 1, %45 ], [ 0, %14 ], [ 0, %41 ], [ 0, %22 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @noce_can_store_speculate_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !403 !PGOFuncName !519 {
  %3 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %46
  %8 = phi ptr [ %3, %5 ], [ %47, %46 ]
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !386
  %11 = load ptr, ptr %10, align 8, !tbaa !386
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %17

13:                                               ; preds = %42
  %14 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !386
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17, !llvm.loop !520

17:                                               ; preds = %7, %13
  %18 = phi ptr [ %15, %13 ], [ %11, %7 ]
  %19 = load ptr, ptr %9, align 8, !tbaa !386
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !387
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !386
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
  %32 = load ptr, ptr %31, align 8, !tbaa !386
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
  %43 = load ptr, ptr %6, align 8, !tbaa !386
  %44 = tail call i32 @modified_in_p(ptr noundef %43, ptr noundef nonnull %18) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %13, label %49

46:                                               ; preds = %17, %13, %7
  %47 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef nonnull %8) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %7, !llvm.loop !521

49:                                               ; preds = %46, %42, %39, %30, %35, %2
  %50 = phi i8 [ 0, %2 ], [ 0, %35 ], [ 0, %30 ], [ 1, %39 ], [ 0, %42 ], [ 0, %46 ]
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_move(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !522 !PGOFuncName !523 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -82
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %100, label %8, !prof !524

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !486
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !386
  switch i8 %16, label %54 [
    i8 8, label %17
    i8 9, label %17
    i8 11, label %17
    i8 17, label %17
  ], !prof !525

17:                                               ; preds = %8, %8, %8, %8
  %18 = and i8 %16, -2
  %19 = icmp eq i8 %18, 8
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %22 = load i8, ptr %21, align 1, !tbaa !386
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %13, %17 ], [ %23, %20 ]
  %26 = add nsw i32 %25, -38
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !290
  %30 = getelementptr inbounds %struct.real_format, ptr %29, i64 0, i32 11
  %31 = load i8, ptr %30, align 2, !tbaa !526
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
  ], !prof !528

37:                                               ; preds = %36, %36, %36, %36
  br i1 %19, label %42, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %40 = load i8, ptr %39, align 1, !tbaa !386
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i32 [ %13, %37 ], [ %41, %38 ]
  %44 = add nsw i32 %43, -38
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !290
  %48 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 14
  %49 = load i8, ptr %48, align 1, !tbaa !529
  %50 = icmp ne i8 %49, 0
  %51 = load i32, ptr @flag_signed_zeros, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %100, label %54

54:                                               ; preds = %8, %36, %42
  %55 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !487
  %57 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !386
  %59 = tail call i32 @rtx_equal_p(ptr noundef %56, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61, !prof !530

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !488
  %64 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !386
  %66 = tail call i32 @rtx_equal_p(ptr noundef %63, ptr noundef %65) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %61, %54
  %69 = load ptr, ptr %55, align 8, !tbaa !487
  %70 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !386
  %72 = tail call i32 @rtx_equal_p(ptr noundef %69, ptr noundef %71) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %100, label %74, !prof !531

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !488
  %77 = load ptr, ptr %57, align 8, !tbaa !386
  %78 = tail call i32 @rtx_equal_p(ptr noundef %76, ptr noundef %77) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %100, label %80, !prof !532

80:                                               ; preds = %74, %61
  %81 = icmp eq i32 %5, 81
  %82 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %83 = select i1 %81, ptr %55, ptr %82
  %84 = load ptr, ptr %83, align 8, !tbaa !290
  %85 = load ptr, ptr %9, align 8, !tbaa !486
  %86 = tail call i32 @rtx_equal_p(ptr noundef %85, ptr noundef %84) #16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  tail call void @start_sequence() #16
  %89 = load ptr, ptr %9, align 8, !tbaa !486
  tail call fastcc void @noce_emit_move_insn(ptr noundef %89, ptr noundef %84) #17
  %90 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !397
  %95 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !484
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !386
  %99 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %90, ptr noundef %94, i32 noundef %98) #16
  br label %100

100:                                              ; preds = %68, %74, %80, %92, %88, %24, %42, %1
  %101 = phi i32 [ 0, %1 ], [ 0, %42 ], [ 0, %24 ], [ 0, %88 ], [ 1, %92 ], [ 1, %80 ], [ 0, %74 ], [ 0, %68 ]
  ret i32 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_store_flag(ptr nocapture noundef %0) unnamed_addr #0 !prof !522 !PGOFuncName !533 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !488
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 30
  br i1 %6, label %9, label %7, !prof !473

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !290
  br label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !386
  %12 = icmp eq i64 %11, 1
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !290
  br i1 %12, label %14, label %18, !prof !534

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !487
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %38, label %18, !prof !535

18:                                               ; preds = %7, %14, %9
  %19 = phi ptr [ %8, %7 ], [ %13, %14 ], [ %13, %9 ]
  %20 = icmp eq ptr %3, %19
  br i1 %20, label %21, label %60, !prof !536

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !487
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 30
  br i1 %26, label %27, label %60, !prof !537

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !386
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %31, label %60, !prof !538

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !395
  %34 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !397
  %36 = tail call i32 @reversed_comparison_code(ptr noundef %33, ptr noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %31, %14
  %39 = phi i32 [ 0, %14 ], [ 1, %31 ]
  tail call void @start_sequence() #16
  %40 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !486
  %42 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %0, ptr noundef %41, i32 noundef %39, i32 noundef 0) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %40, align 8, !tbaa !486
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
  %53 = load ptr, ptr %52, align 8, !tbaa !397
  %54 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !484
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !386
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
define internal fastcc noundef i32 @noce_try_bitop(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !522 !PGOFuncName !539 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !486
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !395
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !488
  %10 = tail call i32 @rtx_equal_p(ptr noundef %3, ptr noundef %9) #16
  %11 = icmp eq i32 %10, 0
  %12 = add nsw i32 %7, -82
  %13 = icmp ult i32 %12, -2
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %127, label %15, !prof !540

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !386
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !290
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %127, !prof !478

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !386
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 120
  br i1 %25, label %26, label %127

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !386
  %30 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !290
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %127

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !386
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 30
  br i1 %37, label %38, label %127

38:                                               ; preds = %32
  %39 = load ptr, ptr %27, align 8, !tbaa !386
  %40 = tail call i32 @rtx_equal_p(ptr noundef %3, ptr noundef %39) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %127, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %33, align 8, !tbaa !386
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !386
  %46 = load i32, ptr %3, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = and i64 %45, 4294967232
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %127

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !487
  %54 = load i32, ptr %53, align 8
  %55 = trunc i32 %54 to i16
  switch i16 %55, label %127 [
    i16 62, label %56
    i16 63, label %56
    i16 61, label %90
  ]

56:                                               ; preds = %51, %51
  %57 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !386
  %59 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %127, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !386
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 30
  br i1 %66, label %67, label %127

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !386
  %70 = zext nneg i32 %48 to i64
  %71 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !541
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
  %92 = load ptr, ptr %91, align 8, !tbaa !386
  %93 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef %92) #16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %127, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !386
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 30
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !386
  %104 = zext nneg i32 %48 to i64
  %105 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !541
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
  %121 = load ptr, ptr %120, align 8, !tbaa !397
  %122 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !484
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !386
  %126 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %117, ptr noundef %121, i32 noundef %125) #16
  br label %127

127:                                              ; preds = %113, %82, %83, %119, %115, %51, %90, %95, %101, %56, %61, %67, %20, %42, %26, %32, %38, %15, %1
  %128 = phi i32 [ 0, %1 ], [ 0, %15 ], [ 0, %38 ], [ 0, %32 ], [ 0, %26 ], [ 0, %42 ], [ 0, %20 ], [ 0, %67 ], [ 0, %61 ], [ 0, %56 ], [ 0, %101 ], [ 0, %95 ], [ 0, %90 ], [ 0, %51 ], [ 0, %115 ], [ 1, %119 ], [ 1, %83 ], [ 1, %82 ], [ 1, %113 ]
  ret i32 %128
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_minmax(ptr nocapture noundef %0) unnamed_addr #0 !prof !522 !PGOFuncName !542 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !486
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !386
  switch i8 %10, label %48 [
    i8 8, label %11
    i8 9, label %11
    i8 11, label %11
    i8 17, label %11
  ], !prof !543

11:                                               ; preds = %1, %1, %1, %1
  %12 = and i8 %10, -2
  %13 = icmp eq i8 %12, 8
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %16 = load i8, ptr %15, align 1, !tbaa !386
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %7, %11 ], [ %17, %14 ]
  %20 = add nsw i32 %19, -38
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !290
  %24 = getelementptr inbounds %struct.real_format, ptr %23, i64 0, i32 14
  %25 = load i8, ptr %24, align 1, !tbaa !529
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
  ], !prof !544

31:                                               ; preds = %30, %30, %30, %30
  br i1 %13, label %36, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %34 = load i8, ptr %33, align 1, !tbaa !386
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %32, %31
  %37 = phi i32 [ %7, %31 ], [ %35, %32 ]
  %38 = add nsw i32 %37, -38
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !290
  %42 = getelementptr inbounds %struct.real_format, ptr %41, i64 0, i32 11
  %43 = load i8, ptr %42, align 2, !tbaa !526
  %44 = icmp eq i8 %43, 0
  %45 = load i32, ptr @flag_finite_math_only, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %48, label %124

48:                                               ; preds = %1, %30, %36
  %49 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !487
  %51 = call fastcc ptr @noce_get_alt_condition(ptr noundef nonnull %0, ptr noundef %50, ptr noundef nonnull %2) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %124, label %53, !prof !545

53:                                               ; preds = %48
  %54 = load i32, ptr %51, align 8
  %55 = and i32 %54, 65535
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !386
  %58 = load ptr, ptr %49, align 8, !tbaa !487
  %59 = call i32 @rtx_equal_p(ptr noundef %57, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !386
  br i1 %60, label %68, label %63, !prof !532

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !488
  %66 = call i32 @rtx_equal_p(ptr noundef %62, ptr noundef %65) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %124, label %80

68:                                               ; preds = %53
  %69 = load ptr, ptr %49, align 8, !tbaa !487
  %70 = call i32 @rtx_equal_p(ptr noundef %62, ptr noundef %69) #16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %124, label %72, !prof !546

72:                                               ; preds = %68
  %73 = load ptr, ptr %56, align 8, !tbaa !386
  %74 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %75 = load ptr, ptr %74, align 8, !tbaa !488
  %76 = call i32 @rtx_equal_p(ptr noundef %73, ptr noundef %75) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %124, label %78, !prof !532

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
  %96 = load ptr, ptr %3, align 8, !tbaa !486
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = load ptr, ptr %49, align 8, !tbaa !487
  %101 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %102 = load ptr, ptr %101, align 8, !tbaa !488
  %103 = call ptr @expand_simple_binop(i32 noundef %99, i32 noundef %92, ptr noundef %100, ptr noundef %102, ptr noundef nonnull %96, i32 noundef %95, i32 noundef 2) #16
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  call void @end_sequence() #16
  br label %124

106:                                              ; preds = %89
  %107 = load ptr, ptr %3, align 8, !tbaa !486
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
  %115 = load ptr, ptr %114, align 8, !tbaa !397
  %116 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !484
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !386
  %120 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %111, ptr noundef %115, i32 noundef %119) #16
  %121 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  store ptr %51, ptr %121, align 8, !tbaa !395
  %122 = load ptr, ptr %2, align 8, !tbaa !290
  %123 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  store ptr %122, ptr %123, align 8, !tbaa !396
  br label %124

124:                                              ; preds = %84, %80, %110, %68, %72, %63, %48, %18, %36, %113, %105
  %125 = phi i32 [ 1, %113 ], [ 0, %105 ], [ 0, %36 ], [ 0, %18 ], [ 0, %48 ], [ 0, %63 ], [ 0, %72 ], [ 0, %68 ], [ 0, %80 ], [ 0, %110 ], [ 0, %84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i32 %125
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_abs(ptr nocapture noundef %0) unnamed_addr #0 !prof !522 !PGOFuncName !547 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !486
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !386
  switch i8 %10, label %30 [
    i8 8, label %11
    i8 9, label %11
    i8 11, label %11
    i8 17, label %11
  ], !prof !544

11:                                               ; preds = %1, %1, %1, %1
  %12 = and i8 %10, -2
  %13 = icmp eq i8 %12, 8
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %16 = load i8, ptr %15, align 1, !tbaa !386
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %7, %11 ], [ %17, %14 ]
  %20 = add nsw i32 %19, -38
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !290
  %24 = getelementptr inbounds %struct.real_format, ptr %23, i64 0, i32 14
  %25 = load i8, ptr %24, align 1, !tbaa !529
  %26 = icmp ne i8 %25, 0
  %27 = load i32, ptr @flag_signed_zeros, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %226, label %30

30:                                               ; preds = %1, %18
  %31 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !487
  %33 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !488
  %35 = load i32, ptr %32, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 51
  br i1 %37, label %38, label %43, !prof !483

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !386
  %41 = tail call i32 @rtx_equal_p(ptr noundef %40, ptr noundef %34) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %38, %30
  %44 = load i32, ptr %34, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 51
  br i1 %46, label %47, label %52, !prof !483

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !386
  %50 = tail call i32 @rtx_equal_p(ptr noundef %49, ptr noundef nonnull %32) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47, %43
  %53 = load i32, ptr %32, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 64
  br i1 %55, label %56, label %61, !prof !483

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !386
  %59 = tail call i32 @rtx_equal_p(ptr noundef %58, ptr noundef nonnull %34) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56, %52
  %62 = load i32, ptr %34, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 64
  br i1 %64, label %65, label %226, !prof !483

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !386
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
  %79 = load ptr, ptr %78, align 8, !tbaa !386
  %80 = call i32 @rtx_equal_p(ptr noundef %79, ptr noundef %71) #16
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %81, label %83, label %87

83:                                               ; preds = %77
  %84 = load ptr, ptr %82, align 8, !tbaa !386
  %85 = call i32 @rtx_equal_p(ptr noundef %84, ptr noundef %71) #16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %226, label %87

87:                                               ; preds = %77, %83
  %88 = phi ptr [ %78, %83 ], [ %82, %77 ]
  %89 = phi i32 [ %72, %83 ], [ %73, %77 ]
  %90 = load ptr, ptr %88, align 8, !tbaa !386
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 37
  br i1 %93, label %94, label %133

94:                                               ; preds = %87
  %95 = load ptr, ptr %2, align 8, !tbaa !290
  %96 = call ptr @prev_nonnote_insn(ptr noundef %95) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %226, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !386
  %101 = load ptr, ptr %2, align 8, !tbaa !290
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !386
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
  %112 = load ptr, ptr %111, align 8, !tbaa !386
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
  %122 = load ptr, ptr %121, align 8, !tbaa !386
  %123 = call i32 @rtx_equal_p(ptr noundef %122, ptr noundef nonnull %90) #16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %226, label %125

125:                                              ; preds = %119
  %126 = call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %96) #16
  %127 = icmp eq ptr %126, null
  %128 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %129 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = select i1 %127, ptr %129, ptr %128
  %131 = load ptr, ptr %130, align 8, !tbaa !386
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
  %140 = load ptr, ptr %139, align 8, !tbaa !386
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 67174399
  %143 = icmp eq i32 %142, 67108909
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = call ptr @get_pool_constant(ptr noundef nonnull %140) #16
  br label %146

146:                                              ; preds = %144, %138, %133
  %147 = phi ptr [ %145, %144 ], [ %135, %138 ], [ %135, %133 ]
  %148 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !290
  %149 = icmp eq ptr %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, ptr %75, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 83
  br i1 %153, label %171, label %154

154:                                              ; preds = %150, %146
  %155 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !290
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
  %167 = load ptr, ptr %166, align 8, !tbaa !290
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
  %179 = load ptr, ptr %3, align 8, !tbaa !486
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
  %196 = load ptr, ptr %3, align 8, !tbaa !486
  %197 = call ptr @expand_simple_unop(i32 noundef %195, i32 noundef 64, ptr noundef nonnull %189, ptr noundef %196, i32 noundef 0) #16
  br label %204

198:                                              ; preds = %184
  %199 = load i32, ptr %185, align 8
  %200 = lshr i32 %199, 16
  %201 = and i32 %200, 255
  %202 = load ptr, ptr %3, align 8, !tbaa !486
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
  %209 = load ptr, ptr %3, align 8, !tbaa !486
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
  %217 = load ptr, ptr %216, align 8, !tbaa !397
  %218 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %219 = load ptr, ptr %218, align 8, !tbaa !484
  %220 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1, i32 0, i32 2
  %221 = load i32, ptr %220, align 8, !tbaa !386
  %222 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %213, ptr noundef %217, i32 noundef %221) #16
  %223 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  store ptr %75, ptr %223, align 8, !tbaa !395
  %224 = load ptr, ptr %2, align 8, !tbaa !290
  %225 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  store ptr %224, ptr %225, align 8, !tbaa !396
  br label %226

226:                                              ; preds = %105, %94, %98, %116, %119, %212, %171, %161, %83, %70, %61, %65, %18, %215, %207
  %227 = phi i32 [ 1, %215 ], [ 0, %207 ], [ 0, %18 ], [ 0, %65 ], [ 0, %61 ], [ 0, %70 ], [ 0, %83 ], [ 0, %161 ], [ 0, %171 ], [ 0, %212 ], [ 0, %119 ], [ 0, %116 ], [ 0, %98 ], [ 0, %94 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i32 %227
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_cmove(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !522 !PGOFuncName !548 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !487
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !283
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %13, label %10, !prof !473

10:                                               ; preds = %1
  %11 = tail call i32 @register_operand(ptr noundef nonnull %3, i32 noundef 0) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %56, label %13, !prof !482

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !488
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !283
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %25, label %22, !prof !475

22:                                               ; preds = %13
  %23 = tail call i32 @register_operand(ptr noundef nonnull %15, i32 noundef 0) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22, %13
  tail call void @start_sequence() #16
  %26 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !395
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !486
  %32 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !386
  %34 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !386
  %36 = load ptr, ptr %2, align 8, !tbaa !487
  %37 = load ptr, ptr %14, align 8, !tbaa !488
  %38 = tail call fastcc ptr @noce_emit_cmove(ptr noundef nonnull %0, ptr noundef %31, i32 noundef %29, ptr noundef %33, ptr noundef %35, ptr noundef %36, ptr noundef %37) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40, !prof !474

40:                                               ; preds = %25
  %41 = load ptr, ptr %30, align 8, !tbaa !486
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %44, label %43, !prof !475

43:                                               ; preds = %40
  tail call fastcc void @noce_emit_move_insn(ptr noundef %41, ptr noundef nonnull %38) #17
  br label %44

44:                                               ; preds = %43, %40
  %45 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47, !prof !474

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !397
  %50 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !484
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !386
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
define internal fastcc noundef i32 @noce_try_store_flag_constants(ptr nocapture noundef %0) unnamed_addr #0 !prof !549 !PGOFuncName !550 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !487
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 30
  br i1 %6, label %7, label %129, !prof !478

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !488
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 30
  br i1 %12, label %13, label %129

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !486
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !386
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !386
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
  %37 = load ptr, ptr %36, align 8, !tbaa !395
  %38 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !397
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
  %54 = load i32, ptr %53, align 4, !tbaa !401
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %69, label %56

56:                                               ; preds = %48, %47, %52
  %57 = icmp eq i64 %20, -1
  %58 = select i1 %57, i1 %41, i1 false
  %59 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %60 = load i32, ptr %59, align 4, !tbaa !401
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
  %75 = load ptr, ptr %14, align 8, !tbaa !486
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
  %84 = load ptr, ptr %14, align 8, !tbaa !486
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
  %94 = load ptr, ptr %14, align 8, !tbaa !486
  %95 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 65, ptr noundef nonnull %76, ptr noundef %93, ptr noundef %94, i32 noundef 0, i32 noundef 2) #16
  br label %111

96:                                               ; preds = %88, %86
  %97 = icmp eq i64 %72, -1
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %73) #16
  %100 = load ptr, ptr %14, align 8, !tbaa !486
  %101 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 62, ptr noundef nonnull %76, ptr noundef %99, ptr noundef %100, i32 noundef 0, i32 noundef 2) #16
  br label %111

102:                                              ; preds = %96
  %103 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %74) #16
  %104 = load ptr, ptr %14, align 8, !tbaa !486
  %105 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 61, ptr noundef nonnull %76, ptr noundef %103, ptr noundef %104, i32 noundef 0, i32 noundef 2) #16
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %73) #16
  %109 = load ptr, ptr %14, align 8, !tbaa !486
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
  %116 = load ptr, ptr %14, align 8, !tbaa !486
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
  %123 = load ptr, ptr %38, align 8, !tbaa !397
  %124 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !484
  %126 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !386
  %128 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %120, ptr noundef %123, i32 noundef %127) #16
  br label %129

129:                                              ; preds = %61, %1, %7, %119, %63, %13, %122, %114, %78
  %130 = phi i32 [ 1, %122 ], [ 0, %114 ], [ 0, %78 ], [ 0, %13 ], [ 0, %63 ], [ 0, %119 ], [ 0, %7 ], [ 0, %1 ], [ 0, %61 ]
  ret i32 %130
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_addcc(ptr nocapture noundef %0) unnamed_addr #0 !prof !549 !PGOFuncName !551 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !487
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 49
  br i1 %6, label %7, label %124, !prof !478

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !386
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !488
  %12 = tail call i32 @rtx_equal_p(ptr noundef %9, ptr noundef %11) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %124, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !395
  %17 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !397
  %19 = tail call i32 @reversed_comparison_code(ptr noundef %16, ptr noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %124, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !395
  %23 = load ptr, ptr %17, align 8, !tbaa !397
  %24 = tail call i32 @reversed_comparison_code(ptr noundef %22, ptr noundef %23) #16
  %25 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !386
  %27 = tail call i32 @general_operand(ptr noundef %26, i32 noundef 0) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %68, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !386
  %32 = tail call i32 @general_operand(ptr noundef %31, i32 noundef 0) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %29
  tail call void @start_sequence() #16
  %35 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %36 = load ptr, ptr %35, align 8, !tbaa !486
  %37 = load ptr, ptr %25, align 8, !tbaa !386
  %38 = load ptr, ptr %30, align 8, !tbaa !386
  %39 = load ptr, ptr %10, align 8, !tbaa !488
  %40 = load ptr, ptr %2, align 8, !tbaa !487
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !386
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
  %54 = load ptr, ptr %35, align 8, !tbaa !486
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
  %61 = load ptr, ptr %17, align 8, !tbaa !397
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !484
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !386
  %66 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %58, ptr noundef %61, i32 noundef %65) #16
  br label %124

67:                                               ; preds = %49
  tail call void @end_sequence() #16
  br label %68

68:                                               ; preds = %67, %29, %21
  %69 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %70 = load i32, ptr %69, align 4, !tbaa !401
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %124

72:                                               ; preds = %68
  %73 = load ptr, ptr %2, align 8, !tbaa !487
  %74 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !386
  %76 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !290
  %77 = icmp eq ptr %75, %76
  %78 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %79 = icmp eq ptr %75, %78
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %72
  tail call void @start_sequence() #16
  %82 = load ptr, ptr %2, align 8, !tbaa !487
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !386
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !386
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
  %94 = load ptr, ptr %93, align 8, !tbaa !486
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = tail call ptr @gen_reg_rtx(i32 noundef %97) #16
  %99 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %0, ptr noundef %98, i32 noundef 1, i32 noundef %92) #17
  %100 = icmp eq ptr %99, null
  br i1 %100, label %123, label %101

101:                                              ; preds = %90
  %102 = load ptr, ptr %93, align 8, !tbaa !486
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = load ptr, ptr %10, align 8, !tbaa !488
  %107 = tail call ptr @expand_simple_binop(i32 noundef %105, i32 noundef %91, ptr noundef %106, ptr noundef nonnull %99, ptr noundef nonnull %102, i32 noundef 0, i32 noundef 2) #16
  %108 = icmp eq ptr %107, null
  br i1 %108, label %123, label %109

109:                                              ; preds = %101
  %110 = load ptr, ptr %93, align 8, !tbaa !486
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
  %117 = load ptr, ptr %17, align 8, !tbaa !397
  %118 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !484
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 2
  %121 = load i32, ptr %120, align 8, !tbaa !386
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
define internal fastcc noundef i32 @noce_try_store_flag_mask(ptr nocapture noundef %0) unnamed_addr #0 !prof !549 !PGOFuncName !552 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !401
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %68, !prof !482

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !487
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !290
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %17, !prof !478

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !488
  %13 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !486
  %15 = tail call i32 @rtx_equal_p(ptr noundef %12, ptr noundef %14) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %10, %5
  %18 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !395
  %20 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !397
  %22 = tail call i32 @reversed_comparison_code(ptr noundef %19, ptr noundef %21) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %68, label %24, !prof !478

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !488
  %27 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !290
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %68, !prof !478

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !tbaa !487
  %31 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !486
  %33 = tail call i32 @rtx_equal_p(ptr noundef %30, ptr noundef %32) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %68, label %35

35:                                               ; preds = %29, %10
  %36 = phi i32 [ 0, %10 ], [ 1, %29 ]
  tail call void @start_sequence() #16
  %37 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !486
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call ptr @gen_reg_rtx(i32 noundef %41) #16
  %43 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %0, ptr noundef %42, i32 noundef %36, i32 noundef -1) #17
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %35
  %46 = load ptr, ptr %37, align 8, !tbaa !486
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = tail call ptr @expand_simple_binop(i32 noundef %49, i32 noundef 61, ptr noundef nonnull %46, ptr noundef nonnull %43, ptr noundef nonnull %46, i32 noundef 0, i32 noundef 2) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %37, align 8, !tbaa !486
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
  %61 = load ptr, ptr %60, align 8, !tbaa !397
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !484
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !386
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
define internal fastcc noundef i32 @noce_try_cmove_arith(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !549 !PGOFuncName !553 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !487
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !488
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !486
  %8 = load i32, ptr @cse_not_expected, align 4, !tbaa !283
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %55, label %10, !prof !554

10:                                               ; preds = %1
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %14, label %55, !prof !555

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %55, !prof !556

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %20 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !386
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 5
  %25 = load i8, ptr %24, align 8, !tbaa !557
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %18, %23
  %28 = phi i32 [ %26, %23 ], [ 0, %18 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !386
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 5
  %35 = load i8, ptr %34, align 8, !tbaa !557
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %27, %33
  %38 = phi i32 [ %36, %33 ], [ 0, %27 ]
  %39 = icmp eq i32 %28, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !401
  %43 = icmp sgt i32 %42, 4
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !559
  br i1 %22, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 5
  %48 = load i8, ptr %47, align 8, !tbaa !557
  br label %49

49:                                               ; preds = %44, %46
  %50 = phi i8 [ %48, %46 ], [ 0, %44 ]
  %51 = tail call i32 %45(i8 noundef zeroext %50) #16
  %52 = load ptr, ptr %19, align 8, !tbaa !386
  %53 = load ptr, ptr %29, align 8, !tbaa !386
  %54 = tail call ptr @gen_reg_rtx(i32 noundef %51) #16
  br label %61

55:                                               ; preds = %40, %37, %14, %10, %1
  %56 = tail call i32 @may_trap_p(ptr noundef %3) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %382, !prof !478

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
  %67 = load ptr, ptr %66, align 8, !tbaa !395
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !484
  %72 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !485
  %74 = icmp eq ptr %71, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !386
  %78 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !386
  %80 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %79) #16
  %81 = tail call i32 @insn_rtx_cost(ptr noundef %77, i8 noundef zeroext %80) #16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %382, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %85 = load i32, ptr %84, align 4, !tbaa !401
  %86 = shl nsw i32 %85, 2
  %87 = icmp sgt i32 %81, %86
  br i1 %87, label %382, label %88

88:                                               ; preds = %61, %83
  %89 = phi i32 [ %81, %83 ], [ 0, %61 ]
  %90 = icmp eq ptr %73, null
  br i1 %90, label %105, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !386
  %94 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !386
  %96 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %95) #16
  %97 = tail call i32 @insn_rtx_cost(ptr noundef %93, i8 noundef zeroext %96) #16
  %98 = add nsw i32 %97, %89
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %382, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %102 = load i32, ptr %101, align 4, !tbaa !401
  %103 = shl nsw i32 %102, 2
  %104 = icmp sgt i32 %98, %103
  br i1 %104, label %382, label %105

105:                                              ; preds = %100, %88
  %106 = load ptr, ptr %66, align 8, !tbaa !395
  %107 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !397
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
  %121 = load ptr, ptr %66, align 8, !tbaa !395
  %122 = load ptr, ptr %107, align 8, !tbaa !397
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
  %151 = load ptr, ptr %150, align 8, !tbaa !386
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
  store ptr %148, ptr %159, align 8, !tbaa !386
  %160 = load ptr, ptr %150, align 8, !tbaa !386
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
  %190 = load ptr, ptr %189, align 8, !tbaa !386
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
  store ptr %187, ptr %198, align 8, !tbaa !386
  %199 = load ptr, ptr %189, align 8, !tbaa !386
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
  %221 = load ptr, ptr %66, align 8, !tbaa !395
  %222 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !386
  %224 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !386
  %226 = tail call fastcc ptr @noce_emit_cmove(ptr noundef nonnull %0, ptr noundef %63, i32 noundef %127, ptr noundef %223, ptr noundef %225, ptr noundef %168, ptr noundef %220) #17
  %227 = icmp eq ptr %226, null
  br i1 %227, label %381, label %228

228:                                              ; preds = %219
  br i1 %62, label %369, label %229

229:                                              ; preds = %228
  %230 = load ptr, ptr %6, align 8, !tbaa !486
  %231 = load i32, ptr %230, align 8
  %232 = lshr i32 %231, 16
  %233 = and i32 %232, 255
  %234 = tail call ptr @gen_rtx_MEM(i32 noundef %233, ptr noundef nonnull %226) #16
  %235 = load ptr, ptr %2, align 8, !tbaa !487
  %236 = load i32, ptr %235, align 8
  %237 = and i32 %236, 134217728
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %229
  %240 = load ptr, ptr %4, align 8, !tbaa !488
  %241 = load i32, ptr %240, align 8
  %242 = and i32 %241, 134217728
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %239, %229
  %245 = load i32, ptr %234, align 8
  %246 = or i32 %245, 134217728
  store i32 %246, ptr %234, align 8
  %247 = load ptr, ptr %2, align 8, !tbaa !487
  %248 = load i32, ptr %247, align 8
  br label %249

249:                                              ; preds = %244, %239
  %250 = phi i32 [ %248, %244 ], [ %236, %239 ]
  %251 = phi ptr [ %247, %244 ], [ %235, %239 ]
  %252 = and i32 %250, 268435456
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %249
  %255 = load ptr, ptr %4, align 8, !tbaa !488
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, 268435456
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %254
  %260 = load i32, ptr %234, align 8
  %261 = or i32 %260, 268435456
  store i32 %261, ptr %234, align 8
  %262 = load ptr, ptr %2, align 8, !tbaa !487
  %263 = load i32, ptr %262, align 8
  br label %264

264:                                              ; preds = %259, %254, %249
  %265 = phi i32 [ %263, %259 ], [ %250, %254 ], [ %250, %249 ]
  %266 = phi ptr [ %262, %259 ], [ %251, %254 ], [ %251, %249 ]
  %267 = icmp sgt i32 %265, -1
  br i1 %267, label %276, label %268

268:                                              ; preds = %264
  %269 = load ptr, ptr %4, align 8, !tbaa !488
  %270 = load i32, ptr %269, align 8
  %271 = icmp sgt i32 %270, -1
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load i32, ptr %234, align 8
  %274 = or i32 %273, -2147483648
  store i32 %274, ptr %234, align 8
  %275 = load ptr, ptr %2, align 8, !tbaa !487
  br label %276

276:                                              ; preds = %272, %268, %264
  %277 = phi ptr [ %275, %272 ], [ %266, %268 ], [ %266, %264 ]
  %278 = getelementptr inbounds %struct.rtx_def, ptr %277, i64 0, i32 1, i32 0, i32 0, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !386
  %280 = icmp eq ptr %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.mem_attrs, ptr %279, i64 0, i32 3
  %283 = load i32, ptr %282, align 8, !tbaa !560
  br label %284

284:                                              ; preds = %276, %281
  %285 = phi i32 [ %283, %281 ], [ 0, %276 ]
  %286 = load ptr, ptr %4, align 8, !tbaa !488
  %287 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1, i32 0, i32 0, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !386
  %289 = icmp eq ptr %288, null
  br i1 %289, label %293, label %290

290:                                              ; preds = %284
  %291 = getelementptr inbounds %struct.mem_attrs, ptr %288, i64 0, i32 3
  %292 = load i32, ptr %291, align 8, !tbaa !560
  br label %293

293:                                              ; preds = %284, %290
  %294 = phi i32 [ %292, %290 ], [ 0, %284 ]
  %295 = icmp eq i32 %285, %294
  br i1 %295, label %296, label %305

296:                                              ; preds = %293
  br i1 %280, label %300, label %297

297:                                              ; preds = %296
  %298 = getelementptr inbounds %struct.mem_attrs, ptr %279, i64 0, i32 3
  %299 = load i32, ptr %298, align 8, !tbaa !560
  br label %300

300:                                              ; preds = %296, %297
  %301 = phi i32 [ %299, %297 ], [ 0, %296 ]
  tail call void @set_mem_alias_set(ptr noundef %234, i32 noundef %301) #16
  %302 = load ptr, ptr %2, align 8, !tbaa !487
  %303 = getelementptr inbounds %struct.rtx_def, ptr %302, i64 0, i32 1, i32 0, i32 0, i64 1
  %304 = load ptr, ptr %303, align 8, !tbaa !386
  br label %305

305:                                              ; preds = %300, %293
  %306 = phi ptr [ %304, %300 ], [ %279, %293 ]
  %307 = icmp eq ptr %306, null
  br i1 %307, label %315, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.mem_attrs, ptr %306, i64 0, i32 4
  %310 = load i32, ptr %309, align 4, !tbaa !561
  %311 = load ptr, ptr %4, align 8, !tbaa !488
  %312 = getelementptr inbounds %struct.rtx_def, ptr %311, i64 0, i32 1, i32 0, i32 0, i64 1
  %313 = load ptr, ptr %312, align 8, !tbaa !386
  %314 = icmp eq ptr %313, null
  br i1 %314, label %320, label %326

315:                                              ; preds = %305
  %316 = load ptr, ptr %4, align 8, !tbaa !488
  %317 = getelementptr inbounds %struct.rtx_def, ptr %316, i64 0, i32 1, i32 0, i32 0, i64 1
  %318 = load ptr, ptr %317, align 8, !tbaa !386
  %319 = icmp eq ptr %318, null
  br i1 %319, label %333, label %322

320:                                              ; preds = %308
  %321 = tail call i32 @llvm.umin.i32(i32 %310, i32 8)
  br label %333

322:                                              ; preds = %315
  %323 = getelementptr inbounds %struct.mem_attrs, ptr %318, i64 0, i32 4
  %324 = load i32, ptr %323, align 4, !tbaa !561
  %325 = tail call i32 @llvm.umin.i32(i32 %324, i32 8)
  br label %333

326:                                              ; preds = %308
  %327 = getelementptr inbounds %struct.mem_attrs, ptr %313, i64 0, i32 4
  %328 = load i32, ptr %327, align 4, !tbaa !561
  %329 = icmp ult i32 %310, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.mem_attrs, ptr %306, i64 0, i32 4
  %332 = load i32, ptr %331, align 4, !tbaa !561
  br label %333

333:                                              ; preds = %322, %320, %326, %330, %315
  %334 = phi i32 [ 8, %315 ], [ %332, %330 ], [ %328, %326 ], [ %321, %320 ], [ %325, %322 ]
  tail call void @set_mem_align(ptr noundef %234, i32 noundef %334) #16
  %335 = load ptr, ptr %2, align 8, !tbaa !487
  %336 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1, i32 0, i32 0, i64 1
  %337 = load ptr, ptr %336, align 8, !tbaa !386
  %338 = icmp eq ptr %337, null
  br i1 %338, label %343, label %339

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.mem_attrs, ptr %337, i64 0, i32 5
  %341 = load i8, ptr %340, align 8, !tbaa !557
  %342 = zext i8 %341 to i32
  br label %343

343:                                              ; preds = %333, %339
  %344 = phi i32 [ %342, %339 ], [ 0, %333 ]
  %345 = load ptr, ptr %4, align 8, !tbaa !488
  %346 = getelementptr inbounds %struct.rtx_def, ptr %345, i64 0, i32 1, i32 0, i32 0, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !386
  %348 = icmp eq ptr %347, null
  br i1 %348, label %353, label %349

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.mem_attrs, ptr %347, i64 0, i32 5
  %351 = load i8, ptr %350, align 8, !tbaa !557
  %352 = zext i8 %351 to i32
  br label %353

353:                                              ; preds = %343, %349
  %354 = phi i32 [ %352, %349 ], [ 0, %343 ]
  %355 = icmp eq i32 %344, %354
  br i1 %355, label %360, label %356

356:                                              ; preds = %353
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1486, ptr noundef nonnull @.str.10) #16
  %357 = load ptr, ptr %2, align 8, !tbaa !487
  %358 = getelementptr inbounds %struct.rtx_def, ptr %357, i64 0, i32 1, i32 0, i32 0, i64 1
  %359 = load ptr, ptr %358, align 8, !tbaa !386
  br label %360

360:                                              ; preds = %353, %356
  %361 = phi ptr [ %337, %353 ], [ %359, %356 ]
  %362 = icmp eq ptr %361, null
  br i1 %362, label %366, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.mem_attrs, ptr %361, i64 0, i32 5
  %365 = load i8, ptr %364, align 8, !tbaa !557
  br label %366

366:                                              ; preds = %360, %363
  %367 = phi i8 [ %365, %363 ], [ 0, %360 ]
  tail call void @set_mem_addr_space(ptr noundef %234, i8 noundef zeroext %367) #16
  %368 = load ptr, ptr %6, align 8, !tbaa !486
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
  %376 = load ptr, ptr %107, align 8, !tbaa !397
  %377 = load ptr, ptr %70, align 8, !tbaa !484
  %378 = getelementptr inbounds %struct.rtx_def, ptr %377, i64 0, i32 1, i32 0, i32 2
  %379 = load i32, ptr %378, align 8, !tbaa !386
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
define internal fastcc noundef i32 @noce_try_sign_mask(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !549 !PGOFuncName !562 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !386
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !386
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !487
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !290
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %26, !prof !478

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
  %25 = load ptr, ptr %24, align 8, !tbaa !488
  br label %39

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !488
  %29 = icmp eq ptr %28, %12
  br i1 %29, label %30, label %95, !prof !478

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
  br i1 %41, label %95, label %42, !prof !563

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
  %55 = load ptr, ptr %54, align 8, !tbaa !488
  %56 = icmp eq ptr %40, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 8, !tbaa !390
  br label %68

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !485
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !386
  %66 = load ptr, ptr %0, align 8, !tbaa !390
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
  %75 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !290
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
  %84 = load ptr, ptr %83, align 8, !tbaa !486
  tail call fastcc void @noce_emit_move_insn(ptr noundef %84, ptr noundef nonnull %79) #17
  %85 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !397
  %90 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !484
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !386
  %94 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %85, ptr noundef %89, i32 noundef %93) #16
  br label %95

95:                                               ; preds = %26, %34, %18, %82, %68, %45, %39, %42, %87, %81
  %96 = phi i32 [ 1, %87 ], [ 0, %81 ], [ 0, %42 ], [ 0, %39 ], [ 0, %45 ], [ 0, %68 ], [ 0, %82 ], [ 0, %18 ], [ 0, %34 ], [ 0, %26 ]
  ret i32 %96
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @noce_emit_move_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !403 !PGOFuncName !564 {
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
  %12 = load i32, ptr %11, align 4, !tbaa !283
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
  %33 = load ptr, ptr %32, align 8, !tbaa !386
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !386
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !386
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !386
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !386
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
  %58 = load i32, ptr %57, align 4, !tbaa !283
  switch i32 %58, label %96 [
    i32 4, label %59
    i32 2, label %73
    i32 3, label %73
  ]

59:                                               ; preds = %53
  %60 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !290
  %62 = icmp eq ptr %61, null
  br i1 %62, label %96, label %63

63:                                               ; preds = %59
  tail call void @start_sequence() #16
  %64 = load i32, ptr %1, align 8
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !386
  %69 = tail call ptr @expand_unop(i32 noundef %66, ptr noundef nonnull %61, ptr noundef %68, ptr noundef nonnull %0, i32 noundef 0) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %94, label %71

71:                                               ; preds = %63
  %72 = icmp eq ptr %69, %0
  br i1 %72, label %92, label %89

73:                                               ; preds = %53, %53
  %74 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %56
  %75 = load ptr, ptr %74, align 8, !tbaa !290
  %76 = icmp eq ptr %75, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %73
  tail call void @start_sequence() #16
  %78 = load i32, ptr %1, align 8
  %79 = lshr i32 %78, 16
  %80 = and i32 %79, 255
  %81 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !386
  %83 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !386
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
  %101 = load ptr, ptr %100, align 8, !tbaa !386
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !386
  %104 = load i32, ptr %101, align 8
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  %107 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load i32, ptr %107, align 8, !tbaa !386
  %109 = shl i32 %108, 3
  %110 = zext nneg i32 %106 to i64
  %111 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !386
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
define internal fastcc ptr @end_ifcvt_sequence(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !565 !PGOFuncName !566 {
  %2 = tail call ptr @get_insns() #16
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !486
  tail call void @set_used_flags(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  tail call void @set_used_flags(ptr noundef %6) #16
  tail call void @unshare_all_rtl_in_chain(ptr noundef %2) #16
  tail call void @end_sequence() #16
  %7 = icmp eq ptr %2, null
  br i1 %7, label %20, label %8, !prof !567

8:                                                ; preds = %1, %16
  %9 = phi ptr [ %18, %16 ], [ %2, %1 ]
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %20, label %13, !prof !568

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %9) #17
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %20, label %16, !prof !568

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !386
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !prof !569, !llvm.loop !570

20:                                               ; preds = %13, %8, %16, %1
  %21 = phi ptr [ null, %1 ], [ %2, %16 ], [ null, %8 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !571 !PGOFuncName !572 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !386
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !573

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !386
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #16
  store i32 %8, ptr %2, align 8, !tbaa !386
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
define internal fastcc ptr @noce_emit_store_flag(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !403 !PGOFuncName !574 {
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !386
  %9 = tail call i32 @general_operand(ptr noundef %8, i32 noundef 0) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !386
  %14 = tail call i32 @general_operand(ptr noundef %13, i32 noundef 0) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %4, %11
  %17 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !397
  %19 = tail call ptr @pc_set(ptr noundef %18) #16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !386
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !386
  %24 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !386
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 44
  br i1 %28, label %29, label %39

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !386
  %32 = load ptr, ptr %17, align 8, !tbaa !397
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 1, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !386
  %35 = icmp eq ptr %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = icmp eq i32 %2, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %36, %29, %16
  %40 = phi i32 [ %38, %36 ], [ %2, %29 ], [ %2, %16 ]
  %41 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 12
  %42 = load i8, ptr %41, align 8, !tbaa !398
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
  %54 = load ptr, ptr %53, align 8, !tbaa !397
  %55 = tail call i32 @reversed_comparison_code(ptr noundef %49, ptr noundef %54) #16
  br label %59

56:                                               ; preds = %47
  %57 = load i32, ptr %49, align 8
  %58 = and i32 %57, 65535
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %55, %52 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !396
  %63 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !397
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
  %74 = load ptr, ptr %73, align 8, !tbaa !386
  %75 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !386
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
  %85 = load ptr, ptr %63, align 8, !tbaa !397
  store ptr %85, ptr %61, align 8, !tbaa !396
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
  %94 = load i8, ptr %93, align 1, !tbaa !386
  %95 = and i8 %94, -2
  %96 = icmp eq i8 %95, 2
  br i1 %96, label %97, label %108

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !386
  %100 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !386
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
define internal fastcc ptr @noce_get_alt_condition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !522 !PGOFuncName !575 {
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !395
  %6 = tail call i32 @reg_mentioned_p(ptr noundef %1, ptr noundef %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !545

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !396
  store ptr %10, ptr %2, align 8, !tbaa !290
  %11 = load ptr, ptr %4, align 8, !tbaa !395
  br label %216

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !397
  %15 = tail call ptr @pc_set(ptr noundef %14) #16
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !386
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !386
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !386
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 44
  br i1 %24, label %25, label %32, !prof !576

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !386
  %28 = load ptr, ptr %13, align 8, !tbaa !397
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !386
  %31 = icmp eq ptr %27, %30
  br label %32

32:                                               ; preds = %25, %12
  %33 = phi i1 [ false, %12 ], [ %31, %25 ]
  %34 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 12
  %35 = load i8, ptr %34, align 8, !tbaa !398
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37, !prof !577

37:                                               ; preds = %32
  %38 = xor i1 %33, true
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi i1 [ %38, %37 ], [ %33, %32 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, ptr %1, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 30
  br i1 %44, label %45, label %156, !prof !578

45:                                               ; preds = %39
  %46 = load ptr, ptr %4, align 8, !tbaa !395
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !386
  %51 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !386
  %53 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !396
  %55 = tail call ptr @prev_nonnote_insn(ptr noundef %54) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %108, label %57, !prof !579

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !386
  %60 = load ptr, ptr %53, align 8, !tbaa !396
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !386
  %63 = icmp eq ptr %59, %62
  br i1 %63, label %64, label %108, !prof !580

64:                                               ; preds = %57
  %65 = load i32, ptr %55, align 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %108, !prof !581

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !386
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 23
  br i1 %74, label %75, label %108, !prof !582

75:                                               ; preds = %69
  %76 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %55) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %82, !prof !583

78:                                               ; preds = %75
  %79 = load ptr, ptr %70, align 8, !tbaa !386
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !386
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi ptr [ %76, %75 ], [ %81, %78 ]
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 30
  br i1 %86, label %87, label %108, !prof !584

87:                                               ; preds = %82
  %88 = load ptr, ptr %70, align 8, !tbaa !386
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !386
  %91 = tail call i32 @rtx_equal_p(ptr noundef %50, ptr noundef %90) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load ptr, ptr %70, align 8, !tbaa !386
  %95 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !386
  %97 = tail call i32 @rtx_equal_p(ptr noundef %52, ptr noundef %96) #16
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, ptr %52, ptr %83
  br label %100

100:                                              ; preds = %93, %87
  %101 = phi ptr [ %83, %87 ], [ %50, %93 ]
  %102 = phi ptr [ %52, %87 ], [ %99, %93 ]
  %103 = load i32, ptr %101, align 8
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 30
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = tail call i32 @swap_condition(i32 noundef %48) #16
  br label %108

108:                                              ; preds = %64, %82, %106, %100, %69, %57, %45
  %109 = phi i32 [ %48, %69 ], [ %48, %57 ], [ %48, %45 ], [ %48, %64 ], [ %107, %106 ], [ %48, %100 ], [ %48, %82 ]
  %110 = phi ptr [ %50, %69 ], [ %50, %57 ], [ %50, %45 ], [ %50, %64 ], [ %102, %106 ], [ %101, %100 ], [ %50, %82 ]
  %111 = phi ptr [ %52, %69 ], [ %52, %57 ], [ %52, %45 ], [ %52, %64 ], [ %101, %106 ], [ %102, %100 ], [ %52, %82 ]
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 30
  br i1 %114, label %115, label %135, !prof !585

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !386
  %118 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !386
  switch i32 %109, label %135 [
    i32 85, label %120
    i32 84, label %123
    i32 83, label %126
    i32 82, label %129
  ], !prof !586

120:                                              ; preds = %115
  %121 = add nsw i64 %117, 1
  %122 = icmp eq i64 %119, %121
  br i1 %122, label %132, label %135, !prof !587

123:                                              ; preds = %115
  %124 = add nsw i64 %117, -1
  %125 = icmp eq i64 %119, %124
  br i1 %125, label %132, label %135

126:                                              ; preds = %115
  %127 = add nsw i64 %117, -1
  %128 = icmp eq i64 %119, %127
  br i1 %128, label %132, label %135

129:                                              ; preds = %115
  %130 = add nsw i64 %117, 1
  %131 = icmp eq i64 %119, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %129, %126, %123, %120
  %133 = phi i32 [ 84, %120 ], [ 85, %123 ], [ 82, %126 ], [ 83, %129 ]
  %134 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %117) #16
  br label %135

135:                                              ; preds = %132, %120, %123, %126, %129, %115, %108
  %136 = phi i32 [ %109, %108 ], [ %109, %115 ], [ 82, %129 ], [ 83, %126 ], [ 84, %123 ], [ 85, %120 ], [ %133, %132 ]
  %137 = phi ptr [ %111, %108 ], [ %111, %115 ], [ %111, %129 ], [ %111, %126 ], [ %111, %123 ], [ %111, %120 ], [ %134, %132 ]
  %138 = load ptr, ptr %4, align 8, !tbaa !395
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %136, %140
  br i1 %141, label %142, label %150, !prof !585

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !386
  %145 = icmp eq ptr %110, %144
  br i1 %145, label %146, label %150, !prof !585

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 0, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !386
  %149 = icmp eq ptr %137, %148
  br i1 %149, label %156, label %150, !prof !585

150:                                              ; preds = %135, %142, %146
  %151 = load i32, ptr %19, align 8
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %136, i32 noundef %153, ptr noundef %110, ptr noundef %137) #16
  %155 = load ptr, ptr %53, align 8, !tbaa !396
  store ptr %155, ptr %2, align 8, !tbaa !290
  br label %216

156:                                              ; preds = %146, %39
  %157 = load ptr, ptr %13, align 8, !tbaa !397
  %158 = tail call ptr @canonicalize_condition(ptr noundef %157, ptr noundef %19, i32 noundef %41, ptr noundef %2, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1) #16
  %159 = icmp eq ptr %158, null
  br i1 %159, label %216, label %160, !prof !576

160:                                              ; preds = %156
  %161 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %1, ptr noundef nonnull %158) #16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %216, label %163, !prof !577

163:                                              ; preds = %160
  %164 = load ptr, ptr %13, align 8, !tbaa !386
  %165 = load ptr, ptr %2, align 8, !tbaa !290
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %216, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  br label %174

169:                                              ; preds = %189
  %170 = load ptr, ptr %13, align 8, !tbaa !397
  %171 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %172 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %173 = icmp eq ptr %190, %170
  br i1 %173, label %216, label %194

174:                                              ; preds = %167, %189
  %175 = phi ptr [ %165, %167 ], [ %190, %189 ]
  %176 = phi ptr [ %164, %167 ], [ %192, %189 ]
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, 65535
  %179 = add nsw i32 %178, -7
  %180 = icmp ult i32 %179, 4
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = load ptr, ptr %168, align 8, !tbaa !486
  %183 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !386
  %185 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %182, ptr noundef %184) #16
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %216

187:                                              ; preds = %181
  %188 = load ptr, ptr %2, align 8, !tbaa !290
  br label %189

189:                                              ; preds = %187, %174
  %190 = phi ptr [ %188, %187 ], [ %175, %174 ]
  %191 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1, i32 0, i32 0, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !386
  %193 = icmp eq ptr %192, %190
  br i1 %193, label %169, label %174, !llvm.loop !588

194:                                              ; preds = %169, %211
  %195 = phi ptr [ %212, %211 ], [ %170, %169 ]
  %196 = phi ptr [ %214, %211 ], [ %190, %169 ]
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = add nsw i32 %198, -7
  %200 = icmp ult i32 %199, 4
  br i1 %200, label %201, label %211

201:                                              ; preds = %194
  %202 = load ptr, ptr %171, align 8, !tbaa !487
  %203 = tail call i32 @modified_in_p(ptr noundef %202, ptr noundef nonnull %196) #16
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %201
  %206 = load ptr, ptr %172, align 8, !tbaa !488
  %207 = tail call i32 @modified_in_p(ptr noundef %206, ptr noundef nonnull %196) #16
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = load ptr, ptr %13, align 8, !tbaa !397
  br label %211

211:                                              ; preds = %209, %194
  %212 = phi ptr [ %210, %209 ], [ %195, %194 ]
  %213 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1, i32 0, i32 0, i64 2
  %214 = load ptr, ptr %213, align 8, !tbaa !386
  %215 = icmp eq ptr %214, %212
  br i1 %215, label %216, label %194, !llvm.loop !589

216:                                              ; preds = %181, %205, %201, %211, %163, %169, %150, %156, %160, %8
  %217 = phi ptr [ %11, %8 ], [ %154, %150 ], [ null, %160 ], [ null, %156 ], [ %158, %169 ], [ %158, %163 ], [ null, %205 ], [ null, %201 ], [ %158, %211 ], [ null, %181 ]
  ret ptr %217
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
define internal fastcc ptr @noce_emit_cmove(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !prof !565 !PGOFuncName !590 {
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !396
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !397
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %32, !prof !474

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !395
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
  br i1 %37, label %54, label %38, !prof !474

38:                                               ; preds = %32
  %39 = load i32, ptr %4, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call i32 @general_operand(ptr noundef nonnull %4, i32 noundef %41) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44, !prof !474

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
define internal fastcc noundef i32 @check_cond_move_block(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !prof !493 !PGOFuncName !591 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !386
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !387
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %17, !prof !592

12:                                               ; preds = %4
  %13 = tail call i32 @onlyjump_p(ptr noundef nonnull %8) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %132, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 8, !tbaa !386
  br label %17

17:                                               ; preds = %15, %4
  %18 = phi ptr [ %16, %15 ], [ %6, %4 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !386
  %20 = icmp eq ptr %19, null
  br i1 %20, label %132, label %21, !prof !477

21:                                               ; preds = %17, %128
  %22 = phi ptr [ %130, %128 ], [ %19, %17 ]
  %23 = load ptr, ptr %5, align 8, !tbaa !386
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !387
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !386
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %132, label %29, !prof !593

29:                                               ; preds = %21
  %30 = load i32, ptr %22, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %128, !prof !594

34:                                               ; preds = %29
  switch i32 %31, label %132 [
    i32 7, label %128
    i32 9, label %128
    i32 8, label %35
    i32 10, label %35
  ], !prof !595

35:                                               ; preds = %34, %34
  %36 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !386
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %44, label %41, !prof !596

41:                                               ; preds = %35
  %42 = tail call ptr @single_set_2(ptr noundef nonnull %22, ptr noundef nonnull %37) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %132, label %44, !prof !597

44:                                               ; preds = %35, %41
  %45 = phi ptr [ %42, %41 ], [ %37, %35 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !386
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !386
  %50 = load i32, ptr %47, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %132, !prof !598

53:                                               ; preds = %44
  %54 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  %55 = icmp ult i32 %54, 53
  br i1 %55, label %132, label %56, !prof !599

56:                                               ; preds = %53
  %57 = load i32, ptr %49, align 8
  %58 = and i32 %57, 65535
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !283
  %62 = icmp eq i32 %61, 9
  br i1 %62, label %66, label %63, !prof !600

63:                                               ; preds = %56
  %64 = tail call i32 @register_operand(ptr noundef nonnull %49, i32 noundef 0) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %132, label %66, !prof !601

66:                                               ; preds = %63, %56
  %67 = tail call i32 @side_effects_p(ptr noundef nonnull %49) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %132, !prof !602

69:                                               ; preds = %66
  %70 = tail call i32 @side_effects_p(ptr noundef nonnull %47) #16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %132, !prof !602

72:                                               ; preds = %69
  %73 = tail call i32 @may_trap_p(ptr noundef nonnull %49) #16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %132, !prof !602

75:                                               ; preds = %72
  %76 = tail call i32 @may_trap_p(ptr noundef nonnull %47) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %132, !prof !602

78:                                               ; preds = %75
  %79 = load i32, ptr %49, align 8
  %80 = trunc i32 %79 to i16
  switch i16 %80, label %99 [
    i16 37, label %81
    i16 39, label %87
  ], !prof !603

81:                                               ; preds = %78
  %82 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %49) #17
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %1, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !290
  %86 = icmp eq ptr %85, null
  br i1 %86, label %99, label %132

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !386
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %89) #17
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %1, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !290
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %132

99:                                               ; preds = %78, %81, %93, %87
  %100 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %1, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !290
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %132, !prof !602

105:                                              ; preds = %99
  %106 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %47, ptr noundef %3) #16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %132, !prof !602

108:                                              ; preds = %105
  %109 = load i32, ptr %49, align 8
  %110 = and i32 %109, 65535
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !283
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %123, label %115, !prof !602

115:                                              ; preds = %108
  %116 = load ptr, ptr %5, align 8, !tbaa !386
  %117 = getelementptr inbounds %struct.rtl_bb_info, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !387
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 2
  %120 = load ptr, ptr %119, align 8, !tbaa !386
  %121 = tail call i32 @modified_between_p(ptr noundef nonnull %49, ptr noundef nonnull %22, ptr noundef %120) #16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %115, %108
  %124 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %1, i64 %125
  store ptr %49, ptr %126, align 8, !tbaa !290
  %127 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef %2, i32 noundef %127) #17
  br label %128

128:                                              ; preds = %123, %34, %34, %29
  %129 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %130 = load ptr, ptr %129, align 8, !tbaa !386
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %21, !prof !604, !llvm.loop !605

132:                                              ; preds = %128, %21, %41, %53, %44, %63, %69, %66, %75, %72, %93, %81, %99, %105, %115, %34, %17, %12
  %133 = phi i32 [ 0, %12 ], [ 1, %17 ], [ 1, %128 ], [ 1, %21 ], [ 0, %41 ], [ 0, %53 ], [ 0, %44 ], [ 0, %63 ], [ 0, %69 ], [ 0, %66 ], [ 0, %75 ], [ 0, %72 ], [ 0, %93 ], [ 0, %81 ], [ 0, %99 ], [ 0, %105 ], [ 0, %115 ], [ 0, %34 ]
  ret i32 %133
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !606 !PGOFuncName !607 {
  %2 = load ptr, ptr %0, align 8, !tbaa !290
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !608

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !290
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !403 !PGOFuncName !609 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !610
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !283
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !283
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cond_move_convert_if_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #0 !prof !403 !PGOFuncName !612 {
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !386
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !386
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !386
  %15 = load ptr, ptr %14, align 8, !tbaa !386
  %16 = icmp eq ptr %15, null
  br i1 %16, label %83, label %17

17:                                               ; preds = %6
  %18 = icmp eq i8 %5, 0
  br label %19

19:                                               ; preds = %17, %79
  %20 = phi ptr [ %15, %17 ], [ %81, %79 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !386
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !387
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !386
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
  %35 = load ptr, ptr %34, align 8, !tbaa !386
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
  %45 = load ptr, ptr %44, align 8, !tbaa !386
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %53, label %49

49:                                               ; preds = %32, %42, %39
  %50 = phi ptr [ %43, %42 ], [ null, %39 ], [ null, %32 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2597, ptr noundef nonnull @.str.10) #16
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !386
  br label %53

53:                                               ; preds = %42, %49
  %54 = phi ptr [ %45, %42 ], [ %52, %49 ]
  %55 = tail call fastcc i32 @rhs_regno(ptr noundef %54) #17
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %3, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !290
  %59 = getelementptr inbounds ptr, ptr %4, i64 %56
  %60 = load ptr, ptr %59, align 8, !tbaa !290
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
  %81 = load ptr, ptr %80, align 8, !tbaa !386
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %19, !llvm.loop !613

83:                                               ; preds = %79, %19, %71, %6
  %84 = phi i8 [ 1, %6 ], [ 0, %71 ], [ 1, %19 ], [ 1, %79 ]
  ret i8 %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !614 !PGOFuncName !615 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !290
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !614 !PGOFuncName !616 {
  %2 = load ptr, ptr %0, align 8, !tbaa !290
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !602

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #16
  store ptr %6, ptr %0, align 8, !tbaa !290
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !614 !PGOFuncName !617 {
  %3 = load i32, ptr %0, align 4, !tbaa !610
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !610
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !283
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !614 !PGOFuncName !618 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !602

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !619
  %6 = load i32, ptr %0, align 4, !tbaa !610
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
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !403 !PGOFuncName !620 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #17, !range !370
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 655, ptr noundef nonnull @.str.10) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !412
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #17
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !403 !PGOFuncName !621 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !403 !PGOFuncName !622 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !322
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %70, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !413
  %15 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !414
  %16 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %3) #17, !range !370
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %13, %33
  %19 = phi i32 [ %35, %33 ], [ 0, %13 ]
  %20 = phi i32 [ %34, %33 ], [ 0, %13 ]
  %21 = load ptr, ptr %3, align 8, !tbaa !290
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !328
  %24 = and i32 %23, 14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %18
  %27 = and i32 %23, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !324
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %70

33:                                               ; preds = %29, %26
  %34 = phi i32 [ %20, %26 ], [ 1, %29 ]
  %35 = phi i32 [ 1, %26 ], [ %19, %29 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %36 = load i32, ptr %4, align 8
  %37 = load ptr, ptr %15, align 8
  %38 = call fastcc zeroext i8 @ei_cond(i32 %36, ptr %37, ptr noundef nonnull %3) #17, !range !370
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %18, !llvm.loop !623

40:                                               ; preds = %33
  %41 = and i32 %35, %34
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !386
  %46 = getelementptr inbounds %struct.rtl_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !387
  %48 = load ptr, ptr %45, align 8, !tbaa !386
  %49 = icmp eq ptr %48, null
  br i1 %49, label %70, label %54

50:                                               ; preds = %67
  %51 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !386
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54, !llvm.loop !624

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
  %61 = load ptr, ptr %60, align 8, !tbaa !386
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 !prof !403 !PGOFuncName !625 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !403 !PGOFuncName !626 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !370
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !290
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !403 !PGOFuncName !627 {
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
  %16 = load i32, ptr %0, align 8, !tbaa !628
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !628
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_exec_process_if_block(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !403 !PGOFuncName !630 {
  %3 = load ptr, ptr %0, align 8, !tbaa !333
  %4 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !335
  %6 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !336
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !408
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %185

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !406
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %185, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !405
  store ptr %21, ptr %0, align 8, !tbaa !333
  store i32 0, ptr %10, align 8, !tbaa !408
  %22 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 6
  store i32 0, ptr %22, align 4, !tbaa !410
  %23 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 7
  store i32 0, ptr %23, align 8, !tbaa !411
  br label %24

24:                                               ; preds = %19, %9, %2
  %25 = phi ptr [ %3, %2 ], [ %21, %19 ], [ %3, %9 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !386
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !387
  %30 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %29) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %185, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %26, align 8, !tbaa !386
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !387
  %36 = tail call i32 @onlyjump_p(ptr noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %185, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @first_active_insn(ptr noundef %5) #17
  %40 = tail call fastcc ptr @last_active_insn(ptr noundef %5, i32 noundef 1) #17
  %41 = tail call fastcc i32 @count_bb_insns(ptr noundef %5) #17
  %42 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 10
  store i32 %41, ptr %42, align 4, !tbaa !631
  %43 = load ptr, ptr @cfun, align 8, !tbaa !290
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
  store i32 %54, ptr %55, align 8, !tbaa !632
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
  %64 = load ptr, ptr %26, align 8, !tbaa !386
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !387
  %67 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %30, ptr noundef %66) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = load i32, ptr %30, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !386
  %75 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !386
  %77 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %67, i32 noundef %72, ptr noundef %74, ptr noundef %76) #16
  br label %78

78:                                               ; preds = %63, %69
  %79 = phi ptr [ %77, %69 ], [ null, %63 ]
  %80 = load ptr, ptr %26, align 8, !tbaa !386
  %81 = getelementptr inbounds %struct.rtl_bb_info, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !387
  %83 = tail call ptr @find_reg_note(ptr noundef %82, i32 noundef 13, ptr noundef null) #16
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !386
  %88 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !386
  %90 = sub nsw i64 10000, %89
  %91 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %90) #16
  br label %92

92:                                               ; preds = %78, %85
  %93 = phi ptr [ %87, %85 ], [ null, %78 ]
  %94 = phi ptr [ %91, %85 ], [ null, %78 ]
  %95 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !408
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %156

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !405
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
  %117 = load ptr, ptr %116, align 8, !tbaa !386
  %118 = getelementptr inbounds %struct.rtl_bb_info, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !387
  %120 = tail call i32 @onlyjump_p(ptr noundef %119) #16
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %184, label %122

122:                                              ; preds = %115
  %123 = load ptr, ptr %116, align 8, !tbaa !386
  %124 = getelementptr inbounds %struct.rtl_bb_info, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !387
  %126 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %125) #17
  %127 = icmp eq ptr %126, null
  br i1 %127, label %184, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %116, align 8, !tbaa !386
  %130 = getelementptr inbounds %struct.rtl_bb_info, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !387
  %132 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %126, ptr noundef %131) #16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %184, label %134

134:                                              ; preds = %128
  %135 = load i32, ptr %126, align 8
  %136 = lshr i32 %135, 16
  %137 = and i32 %136, 255
  %138 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !386
  %140 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 0, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !386
  %142 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %132, i32 noundef %137, ptr noundef %139, ptr noundef %141) #16
  %143 = load i32, ptr %103, align 8, !tbaa !406
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
  br i1 %155, label %156, label %104, !llvm.loop !633

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
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !290
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !403 !PGOFuncName !634 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !403 !PGOFuncName !635 {
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
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !403 !PGOFuncName !636 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 687, ptr noundef nonnull @.str.10) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !290
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cond_exec_get_condition(ptr noundef %0) unnamed_addr #0 !prof !403 !PGOFuncName !637 {
  %2 = tail call i32 @any_condjump_p(ptr noundef %0) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @pc_set(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !386
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !386
  %10 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !386
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 44
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !386
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !386
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
  %29 = load ptr, ptr %28, align 8, !tbaa !386
  %30 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !386
  %32 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %22, i32 noundef %27, ptr noundef %29, ptr noundef %31) #16
  br label %33

33:                                               ; preds = %24, %21, %4, %15, %1
  %34 = phi ptr [ null, %1 ], [ %9, %15 ], [ %9, %4 ], [ %32, %24 ], [ null, %21 ]
  ret ptr %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_bb_insns(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !403 !PGOFuncName !638 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !386
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !387
  br label %6

6:                                                ; preds = %14, %1
  %7 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %8 = phi ptr [ %3, %1 ], [ %17, %14 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !386
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
define internal fastcc ptr @block_fallthru(ptr noundef %0) unnamed_addr #0 !prof !403 !PGOFuncName !639 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !413
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !414
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #17, !range !370
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1, %15
  %10 = load ptr, ptr %2, align 8, !tbaa !290
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !328
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %16 = load i32, ptr %3, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc zeroext i8 @ei_cond(i32 %16, ptr %17, ptr noundef nonnull %2) #17, !range !370
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !640

20:                                               ; preds = %15, %1
  %21 = load ptr, ptr %2, align 8, !tbaa !290
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %20
  %24 = phi ptr [ %21, %20 ], [ %10, %9 ]
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !324
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi ptr [ %26, %23 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_exec_process_insns(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !403 !PGOFuncName !641 {
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
  %19 = load i32, ptr @reload_completed, align 4, !tbaa !283
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !386
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
  %38 = load ptr, ptr %37, align 8, !tbaa !386
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
  %48 = load ptr, ptr %47, align 8, !tbaa !386
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %43
  %54 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %46, ptr noundef nonnull %39, ptr noundef nonnull %48) #16
  %55 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !386
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
  %68 = load ptr, ptr %67, align 8, !tbaa !386
  %69 = tail call ptr @alloc_EXPR_LIST(i32 noundef 13, ptr noundef nonnull %3, ptr noundef %68) #16
  %70 = tail call zeroext i8 @validate_change(ptr noundef nonnull %14, ptr noundef nonnull %67, ptr noundef %69, i8 noundef zeroext 1) #16
  br label %71

71:                                               ; preds = %12, %12, %57, %66, %27
  %72 = phi i32 [ %13, %12 ], [ %13, %27 ], [ %35, %66 ], [ %35, %57 ], [ %13, %12 ]
  %73 = icmp eq ptr %14, %1
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !386
  br label %12

77:                                               ; preds = %71, %43, %28, %30, %5
  %78 = phi i32 [ 0, %5 ], [ 1, %71 ], [ 0, %43 ], [ 0, %28 ], [ 0, %30 ]
  ret i32 %78
}

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_if_block(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !403 !PGOFuncName !642 {
  %2 = load ptr, ptr %0, align 8, !tbaa !333
  %3 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !335
  %5 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !336
  %7 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !419
  tail call void @df_set_bb_dirty(ptr noundef %2) #16
  %9 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !408
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !405
  %15 = tail call fastcc ptr @block_fallthru(ptr noundef %2) #17
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %15, %12 ], [ %18, %16 ]
  %18 = tail call fastcc ptr @block_fallthru(ptr noundef %17) #17
  tail call void @merge_blocks(ptr noundef %2, ptr noundef %17) #16
  %19 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @num_true_changes, align 4, !tbaa !283
  %21 = icmp eq ptr %17, %14
  br i1 %21, label %22, label %16, !llvm.loop !643

22:                                               ; preds = %16, %1
  %23 = icmp eq ptr %4, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  tail call void @merge_blocks(ptr noundef %2, ptr noundef nonnull %4) #16
  %25 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @num_true_changes, align 4, !tbaa !283
  br label %27

27:                                               ; preds = %24, %22
  %28 = icmp eq ptr %6, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  tail call void @merge_blocks(ptr noundef %2, ptr noundef nonnull %6) #16
  %30 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr @num_true_changes, align 4, !tbaa !283
  br label %32

32:                                               ; preds = %29, %27
  %33 = icmp eq ptr %8, null
  br i1 %33, label %34, label %88

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !386
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !387
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !322
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
  %52 = load ptr, ptr %51, align 8, !tbaa !386
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 29
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !386
  %59 = load ptr, ptr @const_true_rtx, align 8, !tbaa !290
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
  %69 = load ptr, ptr %68, align 8, !tbaa !324
  %70 = load ptr, ptr @cfun, align 8, !tbaa !290
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !301
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !308
  %75 = icmp eq ptr %69, %74
  %76 = and i32 %63, 16842751
  %77 = icmp eq i32 %76, 16777226
  %78 = and i1 %77, %75
  br i1 %78, label %118, label %79

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !328
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
  %89 = load ptr, ptr %8, align 8, !tbaa !412
  %90 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %89) #17
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load ptr, ptr @cfun, align 8, !tbaa !290
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !301
  %96 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !308
  %98 = icmp eq ptr %8, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  tail call void @merge_blocks(ptr noundef %2, ptr noundef nonnull %8) #16
  %100 = load i32, ptr @num_true_changes, align 4, !tbaa !283
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr @num_true_changes, align 4, !tbaa !283
  br label %118

102:                                              ; preds = %92, %88
  %103 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %2) #17, !range !370
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
  %110 = load ptr, ptr @cfun, align 8, !tbaa !290
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !301
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !308
  %115 = icmp eq ptr %8, %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %109
  %117 = tail call fastcc ptr @single_succ_edge(ptr noundef %2) #17
  tail call void @tidy_fallthru_edge(ptr noundef %117) #16
  br label %118

118:                                              ; preds = %66, %43, %56, %61, %62, %84, %87, %99, %116, %109
  %119 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !283
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @num_updated_if_blocks, align 4, !tbaa !283
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
define internal fastcc ptr @block_has_only_trap(ptr noundef readonly %0) unnamed_addr #7 !prof !403 !PGOFuncName !644 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !290
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !301
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !308
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !322
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @first_active_insn(ptr noundef nonnull %0) #17
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !386
  %17 = getelementptr inbounds %struct.rtl_bb_info, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !387
  %19 = icmp eq ptr %14, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !386
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 29
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !386
  %29 = load ptr, ptr @const_true_rtx, align 8, !tbaa !290
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
define internal fastcc noundef zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !645 !PGOFuncName !646 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = load ptr, ptr %4, align 8, !tbaa !417
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
  ], !prof !647

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !386
  %15 = tail call i32 @insn_rtx_cost(ptr noundef %14, i8 noundef zeroext %6) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %56, label %17, !prof !648

17:                                               ; preds = %12
  %18 = load i32, ptr %8, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %44, !prof !649

22:                                               ; preds = %17
  %23 = load ptr, ptr %13, align 8, !tbaa !386
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 23
  br i1 %26, label %30, label %27, !prof !650

27:                                               ; preds = %22
  %28 = tail call ptr @single_set_2(ptr noundef nonnull %8, ptr noundef nonnull %23) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30, !prof !651

30:                                               ; preds = %22, %27
  %31 = phi ptr [ %28, %27 ], [ %23, %22 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !386
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %44, !prof !652

37:                                               ; preds = %30
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %33) #17
  %39 = and i32 %38, -8
  %40 = icmp ne i32 %39, 8
  %41 = add nsw i32 %15, %9
  %42 = icmp slt i32 %41, %1
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %47, label %56, !prof !653

44:                                               ; preds = %17, %27, %30
  %45 = add nsw i32 %15, %9
  %46 = icmp slt i32 %45, %1
  br i1 %46, label %47, label %56

47:                                               ; preds = %37, %7, %44
  %48 = phi i32 [ %45, %44 ], [ %9, %7 ], [ %41, %37 ]
  %49 = load ptr, ptr %3, align 8, !tbaa !386
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !387
  %52 = icmp eq ptr %8, %51
  br i1 %52, label %56, label %53, !prof !654

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !386
  br label %7

56:                                               ; preds = %37, %12, %47, %7, %44
  %57 = phi i8 [ 0, %44 ], [ 0, %7 ], [ 1, %47 ], [ 0, %12 ], [ 0, %37 ]
  ret i8 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @dead_or_predicable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !655 !PGOFuncName !656 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !290
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !386
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !387
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !386
  %15 = load ptr, ptr %14, align 8, !tbaa !417
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  br label %17

17:                                               ; preds = %17, %5
  %18 = phi ptr [ %16, %5 ], [ %25, %17 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !386
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp ne i32 %21, 7
  %23 = icmp eq ptr %19, %15
  %24 = select i1 %22, i1 true, i1 %23
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %24, label %26, label %17, !prof !657, !llvm.loop !658

26:                                               ; preds = %17
  %27 = tail call zeroext i8 @tablejump_p(ptr noundef nonnull %19, ptr noundef null, ptr noundef null) #16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %399, !prof !659

29:                                               ; preds = %26
  %30 = load i32, ptr %15, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %33, label %37, !prof !660

33:                                               ; preds = %29, %41
  %34 = phi ptr [ %38, %41 ], [ %15, %29 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !386
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi ptr [ %15, %29 ], [ %36, %33 ]
  %39 = load i32, ptr %38, align 8
  %40 = trunc i32 %39 to i16
  switch i16 %40, label %54 [
    i16 7, label %41
    i16 13, label %43
  ], !prof !661

41:                                               ; preds = %37
  %42 = icmp eq ptr %38, %19
  br i1 %42, label %54, label %33, !prof !659, !llvm.loop !662

43:                                               ; preds = %37
  %44 = icmp eq ptr %38, %19
  br i1 %44, label %247, label %45, !prof !663

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %48, %45 ], [ %38, %43 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !386
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp ne i32 %50, 7
  %52 = icmp eq ptr %48, %19
  %53 = or i1 %51, %52
  br i1 %53, label %54, label %45, !prof !657, !llvm.loop !664

54:                                               ; preds = %45, %37, %41
  %55 = phi ptr [ %19, %41 ], [ %38, %37 ], [ %48, %45 ]
  %56 = load i32, ptr %19, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %70, !prof !665

59:                                               ; preds = %54
  %60 = icmp eq ptr %55, %19
  br i1 %60, label %247, label %61, !prof !666

61:                                               ; preds = %59, %61
  %62 = phi ptr [ %64, %61 ], [ %19, %59 ]
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !386
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp ne i32 %66, 7
  %68 = icmp eq ptr %64, %55
  %69 = or i1 %67, %68
  br i1 %69, label %70, label %61, !prof !667, !llvm.loop !668

70:                                               ; preds = %61, %54
  %71 = phi ptr [ %19, %54 ], [ %64, %61 ]
  %72 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !341
  %73 = tail call zeroext i8 %72() #16
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %117, label %75, !prof !659

75:                                               ; preds = %70
  %76 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %12) #17
  %77 = icmp eq ptr %76, null
  br i1 %77, label %399, label %78

78:                                               ; preds = %75
  %79 = tail call ptr @find_reg_note(ptr noundef %12, i32 noundef 13, ptr noundef null) #16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !386
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi ptr [ %83, %81 ], [ null, %78 ]
  %86 = icmp eq i32 %4, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %84
  %88 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %76, ptr noundef %12) #16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %399, label %90

90:                                               ; preds = %87
  %91 = load i32, ptr %76, align 8
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  %94 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !386
  %96 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !386
  %98 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %88, i32 noundef %93, ptr noundef %95, ptr noundef %97) #16
  %99 = icmp eq ptr %85, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !386
  %103 = sub nsw i64 10000, %102
  %104 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %103) #16
  br label %105

105:                                              ; preds = %100, %90, %84
  %106 = phi ptr [ %85, %84 ], [ null, %90 ], [ %104, %100 ]
  %107 = phi ptr [ %76, %84 ], [ %98, %90 ], [ %98, %100 ]
  %108 = tail call fastcc i32 @cond_exec_process_insns(ptr noundef nonnull %55, ptr noundef nonnull %71, ptr noundef %107, ptr noundef %106, i32 noundef 0) #17
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = tail call i32 @verify_changes(i32 noundef 0) #16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105, %110
  tail call void @cancel_changes(i32 noundef 0) #16
  store ptr %12, ptr %6, align 8, !tbaa !290
  br label %117

114:                                              ; preds = %110
  %115 = tail call i32 @num_validated_changes() #16
  store ptr %12, ptr %6, align 8, !tbaa !290
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %247, !prof !669

117:                                              ; preds = %70, %113, %114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  br label %118

118:                                              ; preds = %132, %117
  %119 = phi ptr [ %55, %117 ], [ %134, %132 ]
  %120 = load i32, ptr %119, align 8
  %121 = trunc i32 %120 to i16
  switch i16 %121, label %130 [
    i16 10, label %398
    i16 9, label %122
    i16 8, label %122
  ], !prof !670

122:                                              ; preds = %118, %118
  %123 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !386
  %125 = tail call i32 @may_trap_p(ptr noundef %124) #16
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %398, !prof !671

127:                                              ; preds = %122
  %128 = tail call i32 @for_each_rtx(ptr noundef nonnull %123, ptr noundef nonnull @find_memory, ptr noundef null) #16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %398, !prof !672

130:                                              ; preds = %118, %127
  %131 = icmp eq ptr %119, %71
  br i1 %131, label %135, label %132, !prof !673

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 2
  %134 = load ptr, ptr %133, align 8, !tbaa !386
  br label %118

135:                                              ; preds = %130
  %136 = tail call i32 @any_condjump_p(ptr noundef %12) #16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %398, label %138, !prof !674

138:                                              ; preds = %135
  %139 = call fastcc ptr @noce_get_condition(ptr noundef %12, ptr noundef nonnull %6, i8 noundef zeroext 0) #17
  %140 = icmp eq ptr %139, null
  br i1 %140, label %398, label %141, !prof !674

141:                                              ; preds = %138
  %142 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #16
  %143 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #16
  %144 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #16
  %145 = load i32, ptr @max_regno, align 4, !tbaa !283
  %146 = call i32 @max_reg_num() #16
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %150, !prof !675

148:                                              ; preds = %141
  %149 = call i32 @max_reg_num() #16
  store i32 %149, ptr @max_regno, align 4, !tbaa !283
  br label %150

150:                                              ; preds = %148, %141
  %151 = load ptr, ptr %13, align 8, !tbaa !386
  %152 = load ptr, ptr %151, align 8, !tbaa !386
  %153 = icmp eq ptr %152, null
  br i1 %153, label %193, label %154, !prof !477

154:                                              ; preds = %150, %189
  %155 = phi ptr [ %191, %189 ], [ %152, %150 ]
  %156 = load ptr, ptr %13, align 8, !tbaa !386
  %157 = getelementptr inbounds %struct.rtl_bb_info, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !387
  %159 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1, i32 0, i32 0, i64 2
  %160 = load ptr, ptr %159, align 8, !tbaa !386
  %161 = icmp eq ptr %155, %160
  br i1 %161, label %193, label %162, !prof !676

162:                                              ; preds = %154
  %163 = load i32, ptr %155, align 8
  %164 = and i32 %163, 65535
  %165 = add nsw i32 %164, -11
  %166 = icmp ult i32 %165, -3
  br i1 %166, label %189, label %167, !prof !677

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !386
  %170 = load ptr, ptr @df, align 8, !tbaa !290
  %171 = getelementptr inbounds %struct.df, ptr %170, i64 0, i32 10
  %172 = load ptr, ptr %171, align 8, !tbaa !678
  %173 = zext i32 %169 to i64
  %174 = getelementptr inbounds ptr, ptr %172, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !290
  %176 = getelementptr inbounds %struct.df_insn_info, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !681
  %178 = load ptr, ptr %177, align 8, !tbaa !290
  %179 = icmp eq ptr %178, null
  br i1 %179, label %189, label %180, !prof !683

180:                                              ; preds = %167, %180
  %181 = phi ptr [ %187, %180 ], [ %178, %167 ]
  %182 = phi ptr [ %186, %180 ], [ %177, %167 ]
  %183 = getelementptr inbounds %struct.df_base_ref, ptr %181, i64 0, i32 6
  %184 = load i32, ptr %183, align 8, !tbaa !386
  %185 = call zeroext i8 @bitmap_set_bit(ptr noundef %142, i32 noundef %184) #16
  %186 = getelementptr inbounds ptr, ptr %182, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !290
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %180, !prof !684, !llvm.loop !685

189:                                              ; preds = %180, %167, %162
  %190 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 2
  %191 = load ptr, ptr %190, align 8, !tbaa !386
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %154, !prof !686, !llvm.loop !687

193:                                              ; preds = %154, %189, %150
  %194 = load i32, ptr @reload_completed, align 4, !tbaa !283
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %217, !prof !688

196:                                              ; preds = %193
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %142, ptr noundef nonnull %7) #17
  %197 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #17, !range !370
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %217, label %199, !prof !689

199:                                              ; preds = %196, %213
  %200 = phi i32 [ %214, %213 ], [ 0, %196 ]
  %201 = load i32, ptr %7, align 4, !tbaa !283
  %202 = icmp ult i32 %201, 53
  br i1 %202, label %203, label %213, !prof !690

203:                                              ; preds = %199
  %204 = zext nneg i32 %201 to i64
  %205 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !386
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %213, !prof !691

208:                                              ; preds = %203
  %209 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %204
  %210 = load i8, ptr %209, align 1, !tbaa !386
  %211 = icmp eq i8 %210, 0
  %212 = select i1 %211, i32 1, i32 %200
  br label %213

213:                                              ; preds = %208, %199, %203
  %214 = phi i32 [ %200, %203 ], [ %200, %199 ], [ %212, %208 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  %215 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #17, !range !370
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %199, !prof !692, !llvm.loop !693

217:                                              ; preds = %213, %196, %193
  %218 = phi i32 [ 0, %193 ], [ 0, %196 ], [ %214, %213 ]
  %219 = call ptr @df_get_live_in(ptr noundef %2) #16
  call void @bitmap_copy(ptr noundef %143, ptr noundef %219) #16
  call void @df_simulate_initialize_backwards(ptr noundef %0, ptr noundef %143) #16
  br label %220

220:                                              ; preds = %230, %217
  %221 = phi ptr [ %12, %217 ], [ %232, %230 ]
  %222 = load i32, ptr %221, align 8
  %223 = and i32 %222, 65535
  %224 = add nsw i32 %223, -7
  %225 = icmp ult i32 %224, 4
  br i1 %225, label %226, label %227, !prof !694

226:                                              ; preds = %220
  call void @df_simulate_find_defs(ptr noundef nonnull %221, ptr noundef %144) #16
  call void @df_simulate_one_insn_backwards(ptr noundef %0, ptr noundef nonnull %221, ptr noundef %143) #16
  br label %227

227:                                              ; preds = %220, %226
  %228 = load ptr, ptr %6, align 8, !tbaa !290
  %229 = icmp eq ptr %221, %228
  br i1 %229, label %233, label %230, !prof !695

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !386
  br label %220

233:                                              ; preds = %227
  %234 = call zeroext i8 @bitmap_intersect_p(ptr noundef %144, ptr noundef %142) #16
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %243, !prof !696

236:                                              ; preds = %233
  %237 = call zeroext i8 @bitmap_intersect_p(ptr noundef %143, ptr noundef %142) #16
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %243, !prof !697

239:                                              ; preds = %236
  %240 = call ptr @df_get_live_in(ptr noundef %1) #16
  %241 = call zeroext i8 @bitmap_intersect_p(ptr noundef %144, ptr noundef %240) #16
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %244, label %243, !prof !698

243:                                              ; preds = %239, %236, %233
  br label %244

244:                                              ; preds = %243, %239
  %245 = phi i32 [ 1, %243 ], [ %218, %239 ]
  call void @bitmap_obstack_free(ptr noundef %142) #16
  call void @bitmap_obstack_free(ptr noundef %143) #16
  call void @bitmap_obstack_free(ptr noundef %144) #16
  %246 = icmp eq i32 %245, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br i1 %246, label %247, label %399

247:                                              ; preds = %59, %43, %114, %244
  %248 = phi i32 [ 0, %244 ], [ %115, %114 ], [ 0, %43 ], [ 0, %59 ]
  %249 = phi ptr [ %71, %244 ], [ %71, %114 ], [ null, %43 ], [ null, %59 ]
  %250 = phi ptr [ %55, %244 ], [ %55, %114 ], [ null, %43 ], [ null, %59 ]
  %251 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1, i32 0, i32 0, i64 2
  %252 = load ptr, ptr %251, align 8, !tbaa !386
  %253 = icmp eq ptr %2, %3
  br i1 %253, label %263, label %254, !prof !689

254:                                              ; preds = %247
  %255 = call ptr @block_label(ptr noundef %3) #16
  %256 = icmp eq i32 %4, 0
  br i1 %256, label %260, label %257, !prof !698

257:                                              ; preds = %254
  %258 = call i32 @invert_jump_1(ptr noundef nonnull %12, ptr noundef %255) #16
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %397, label %263, !prof !689

260:                                              ; preds = %254
  %261 = call i32 @redirect_jump_1(ptr noundef nonnull %12, ptr noundef %255) #16
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %397, label %263, !prof !689

263:                                              ; preds = %257, %260, %247
  %264 = phi ptr [ %255, %257 ], [ %255, %260 ], [ null, %247 ]
  %265 = call i32 @verify_changes(i32 noundef %248) #16
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %397, label %267, !prof !689

267:                                              ; preds = %263
  call void @confirm_change_group() #16
  br i1 %253, label %327, label %268, !prof !689

268:                                              ; preds = %267
  call void @redirect_jump_2(ptr noundef nonnull %12, ptr noundef %252, ptr noundef %264, i32 noundef 0, i32 noundef %4) #16
  %269 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !322
  %271 = call fastcc ptr @VEC_edge_base_index(ptr noundef %270, i32 noundef 0) #17
  %272 = getelementptr inbounds %struct.edge_def, ptr %271, i64 0, i32 7
  %273 = load i32, ptr %272, align 8, !tbaa !328
  %274 = and i32 %273, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276, !prof !699

276:                                              ; preds = %268
  %277 = call fastcc ptr @VEC_edge_base_index(ptr noundef %270, i32 noundef 1) #17
  br label %278

278:                                              ; preds = %268, %276
  %279 = phi ptr [ %277, %276 ], [ %271, %268 ]
  call void @redirect_edge_succ(ptr noundef %279, ptr noundef %3) #16
  %280 = icmp eq i32 %4, 0
  br i1 %280, label %327, label %281, !prof !700

281:                                              ; preds = %278
  %282 = load ptr, ptr %269, align 8, !tbaa !322
  %283 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 0) #17
  %284 = getelementptr inbounds %struct.edge_def, ptr %283, i64 0, i32 7
  %285 = load i32, ptr %284, align 8, !tbaa !328
  %286 = and i32 %285, 1
  %287 = icmp eq i32 %286, 0
  %288 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 1) #17
  %289 = select i1 %287, ptr %288, ptr %283, !prof !435
  %290 = select i1 %287, ptr %283, ptr %288, !prof !435
  %291 = getelementptr inbounds %struct.edge_def, ptr %290, i64 0, i32 9
  %292 = load i64, ptr %291, align 8, !tbaa !701
  %293 = getelementptr inbounds %struct.edge_def, ptr %289, i64 0, i32 9
  %294 = load i64, ptr %293, align 8, !tbaa !701
  store i64 %294, ptr %291, align 8, !tbaa !701
  %295 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 0) #17
  %296 = getelementptr inbounds %struct.edge_def, ptr %295, i64 0, i32 7
  %297 = load i32, ptr %296, align 8, !tbaa !328
  %298 = and i32 %297, 1
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %302, !prof !435

300:                                              ; preds = %281
  %301 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 1) #17
  br label %302

302:                                              ; preds = %281, %300
  %303 = phi ptr [ %301, %300 ], [ %295, %281 ]
  %304 = getelementptr inbounds %struct.edge_def, ptr %303, i64 0, i32 9
  store i64 %292, ptr %304, align 8, !tbaa !701
  %305 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 0) #17
  %306 = getelementptr inbounds %struct.edge_def, ptr %305, i64 0, i32 7
  %307 = load i32, ptr %306, align 8, !tbaa !328
  %308 = and i32 %307, 1
  %309 = icmp eq i32 %308, 0
  %310 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 1) #17
  %311 = select i1 %309, ptr %310, ptr %305, !prof !435
  %312 = select i1 %309, ptr %305, ptr %310, !prof !435
  %313 = getelementptr inbounds %struct.edge_def, ptr %312, i64 0, i32 8
  %314 = load i32, ptr %313, align 4, !tbaa !702
  %315 = getelementptr inbounds %struct.edge_def, ptr %311, i64 0, i32 8
  %316 = load i32, ptr %315, align 4, !tbaa !702
  store i32 %316, ptr %313, align 4, !tbaa !702
  %317 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 0) #17
  %318 = getelementptr inbounds %struct.edge_def, ptr %317, i64 0, i32 7
  %319 = load i32, ptr %318, align 8, !tbaa !328
  %320 = and i32 %319, 1
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %324, !prof !435

322:                                              ; preds = %302
  %323 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 1) #17
  br label %324

324:                                              ; preds = %302, %322
  %325 = phi ptr [ %323, %322 ], [ %317, %302 ]
  %326 = getelementptr inbounds %struct.edge_def, ptr %325, i64 0, i32 8
  store i32 %314, ptr %326, align 4, !tbaa !702
  call void @update_br_prob_note(ptr noundef nonnull %0) #16
  br label %327

327:                                              ; preds = %278, %324, %267
  %328 = icmp eq ptr %250, null
  br i1 %328, label %383, label %329, !prof !689

329:                                              ; preds = %327
  %330 = load ptr, ptr %13, align 8, !tbaa !386
  %331 = getelementptr inbounds %struct.rtl_bb_info, ptr %330, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !387
  %333 = icmp eq ptr %249, %332
  br i1 %333, label %334, label %337, !prof !700

334:                                              ; preds = %329
  %335 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1, i32 0, i32 0, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !386
  store ptr %336, ptr %331, align 8, !tbaa !387
  br label %337

337:                                              ; preds = %334, %329
  br label %338

338:                                              ; preds = %337, %375
  %339 = phi ptr [ %377, %375 ], [ %250, %337 ]
  %340 = load i32, ptr %339, align 8
  %341 = and i32 %340, 65535
  %342 = add nsw i32 %341, -7
  %343 = icmp ult i32 %342, 4
  br i1 %343, label %344, label %373, !prof !703

344:                                              ; preds = %338
  %345 = call ptr @find_reg_note(ptr noundef nonnull %339, i32 noundef 4, ptr noundef null) #16
  %346 = icmp eq ptr %345, null
  br i1 %346, label %373, label %347, !prof !700

347:                                              ; preds = %344
  %348 = load i32, ptr %339, align 8
  %349 = and i32 %348, 65535
  %350 = add nsw i32 %349, -7
  %351 = icmp ult i32 %350, 4
  br i1 %351, label %352, label %372, !prof !704

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.rtx_def, ptr %339, i64 1
  %354 = load ptr, ptr %353, align 8, !tbaa !386
  %355 = load i32, ptr %354, align 8
  %356 = and i32 %355, 65535
  %357 = icmp eq i32 %356, 23
  br i1 %357, label %361, label %358, !prof !435

358:                                              ; preds = %352
  %359 = call ptr @single_set_2(ptr noundef nonnull %339, ptr noundef nonnull %354) #16
  %360 = icmp eq ptr %359, null
  br i1 %360, label %372, label %361, !prof !705

361:                                              ; preds = %352, %358
  %362 = phi ptr [ %359, %358 ], [ %354, %352 ]
  %363 = getelementptr inbounds %struct.rtx_def, ptr %362, i64 0, i32 1, i32 0, i32 0, i64 1
  %364 = load ptr, ptr %363, align 8, !tbaa !386
  %365 = call i32 @function_invariant_p(ptr noundef %364) #16
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %372, label %367, !prof !433

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.rtx_def, ptr %345, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !386
  %370 = call i32 @function_invariant_p(ptr noundef %369) #16
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373, !prof !433

372:                                              ; preds = %347, %367, %361, %358
  call void @remove_note(ptr noundef nonnull %339, ptr noundef nonnull %345) #16
  br label %373

373:                                              ; preds = %338, %367, %372, %344
  %374 = icmp eq ptr %339, %249
  br i1 %374, label %379, label %375, !prof !698

375:                                              ; preds = %373
  %376 = getelementptr inbounds %struct.rtx_def, ptr %339, i64 0, i32 1, i32 0, i32 0, i64 2
  %377 = load ptr, ptr %376, align 8, !tbaa !386
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %338, !prof !698, !llvm.loop !706

379:                                              ; preds = %373, %375
  %380 = load ptr, ptr %6, align 8, !tbaa !290
  %381 = getelementptr inbounds %struct.rtx_def, ptr %380, i64 0, i32 1, i32 0, i32 0, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !386
  call void @reorder_insns(ptr noundef nonnull %250, ptr noundef %249, ptr noundef %382) #16
  br label %383

383:                                              ; preds = %379, %327
  br i1 %253, label %384, label %399, !prof !689

384:                                              ; preds = %383
  %385 = call ptr @delete_insn(ptr noundef %12) #16
  %386 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !322
  %388 = call fastcc ptr @VEC_edge_base_index(ptr noundef %387, i32 noundef 0) #17
  %389 = getelementptr inbounds %struct.edge_def, ptr %388, i64 0, i32 7
  %390 = load i32, ptr %389, align 8, !tbaa !328
  %391 = and i32 %390, 1
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %395, label %393

393:                                              ; preds = %384
  %394 = call fastcc ptr @VEC_edge_base_index(ptr noundef %387, i32 noundef 1) #17
  br label %395

395:                                              ; preds = %384, %393
  %396 = phi ptr [ %394, %393 ], [ %388, %384 ]
  call void @remove_edge(ptr noundef %396) #16
  br label %399

397:                                              ; preds = %263, %257, %260
  call void @cancel_changes(i32 noundef 0) #16
  br label %399

398:                                              ; preds = %118, %127, %122, %138, %135
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br label %399

399:                                              ; preds = %87, %75, %383, %395, %398, %26, %244, %397
  %400 = phi i32 [ 0, %397 ], [ 0, %244 ], [ 0, %26 ], [ 0, %398 ], [ 1, %395 ], [ 1, %383 ], [ 0, %75 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret i32 %400
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
define internal i32 @find_memory(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #6 !prof !707 !PGOFuncName !708 {
  %3 = load ptr, ptr %0, align 8, !tbaa !290
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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !709 !PGOFuncName !710 {
  %4 = load ptr, ptr %1, align 8, !tbaa !711
  store ptr %4, ptr %0, align 8, !tbaa !713
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !715
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !716

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !713
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !717
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !719

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !720
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !541
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !721
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !283
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !722 !PGOFuncName !723 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !721
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !724

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !725

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !283
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !726, !llvm.loop !727

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !283
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !283
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !720
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !713
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !720
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !689

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !541
  store i64 %35, ptr %3, align 8, !tbaa !721
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !728

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !283
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !283
  %40 = load i32, ptr %23, align 8, !tbaa !720
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !720
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !698, !llvm.loop !729

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !730
  store ptr %44, ptr %0, align 8, !tbaa !713
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !731

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !717
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !283
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !721
  store i32 %16, ptr %1, align 4, !tbaa !283
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !732 !PGOFuncName !733 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !721
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !721
  %6 = load i32, ptr %1, align 4, !tbaa !283
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !283
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!280}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!35 = !{ptr @gate_handle_if_conversion, ptr @dbg_cnt, i64 37}
!36 = !{ptr @rest_of_handle_if_conversion, ptr @dump_flow_info, i64 1}
!37 = !{ptr @rest_of_handle_if_conversion, ptr @cleanup_cfg, i64 75}
!38 = !{ptr @rest_of_handle_if_conversion, ptr @if_convert, i64 37}
!39 = !{ptr @gate_handle_if_after_combine, ptr @dbg_cnt, i64 36}
!40 = !{ptr @rest_of_handle_if_after_combine, ptr @if_convert, i64 38}
!41 = !{ptr @gate_handle_if_after_reload, ptr @dbg_cnt, i64 36}
!42 = !{ptr @rest_of_handle_if_after_reload, ptr @if_convert, i64 38}
!43 = !{ptr @if_convert, ptr @df_live_add_problem, i64 1}
!44 = !{ptr @if_convert, ptr @df_live_set_all_dirty, i64 1}
!45 = !{ptr @if_convert, ptr @loop_optimizer_init, i64 114}
!46 = !{ptr @if_convert, ptr @mark_loop_exit_edges, i64 114}
!47 = !{ptr @if_convert, ptr @loop_optimizer_finalize, i64 114}
!48 = !{ptr @if_convert, ptr @free_dominance_info, i64 228}
!49 = !{ptr @if_convert, ptr @calculate_dominance_info, i64 114}
!50 = !{ptr @if_convert, ptr @df_set_flags, i64 114}
!51 = !{ptr @if_convert, ptr @df_analyze, i64 188}
!52 = !{ptr @if_convert, ptr @df_clear_flags, i64 188}
!53 = !{ptr @if_convert, ptr @fprintf, i64 4}
!54 = !{ptr @if_convert, ptr @df_get_bb_dirty, i64 986931}
!55 = !{ptr @if_convert, ptr @find_if_header, i64 867033}
!56 = !{ptr @if_convert, ptr @get_insns, i64 1}
!57 = !{ptr @if_convert, ptr @fwrite, i64 1}
!58 = !{ptr @if_convert, ptr @fflush, i64 1}
!59 = !{ptr @if_convert, ptr @clear_aux_for_blocks, i64 114}
!60 = !{ptr @if_convert, ptr @max_reg_num, i64 119}
!61 = !{ptr @if_convert, ptr @df_remove_problem, i64 1}
!62 = !{ptr @find_if_header, ptr @VEC_edge_base_length, i64 875554}
!63 = !{ptr @find_if_header, ptr @VEC_edge_base_index, i64 1664066}
!64 = !{ptr @find_if_header, ptr @df_get_bb_dirty, i64 1663847}
!65 = !{ptr @find_if_header, ptr @noce_find_if_block, i64 681031}
!66 = !{ptr @find_if_header, ptr @cond_exec_find_if_block, i64 1}
!67 = !{ptr @find_if_header, ptr @find_cond_trap, i64 1}
!68 = !{ptr @find_if_header, ptr @dom_info_state, i64 827314}
!69 = !{ptr @find_if_header, ptr @find_if_case_1, i64 827313}
!70 = !{ptr @find_if_header, ptr @find_if_case_2, i64 827311}
!71 = !{ptr @find_if_header, ptr @fprintf, i64 1}
!72 = !{ptr @noce_find_if_block, ptr @fancy_abort, i64 1}
!73 = !{ptr @noce_find_if_block, ptr @single_pred_p, i64 2042063}
!74 = !{ptr @noce_find_if_block, ptr @single_succ_p, i64 978507}
!75 = !{ptr @noce_find_if_block, ptr @single_succ, i64 77926}
!76 = !{ptr @noce_find_if_block, ptr @single_succ_edge, i64 11681}
!77 = !{ptr @noce_find_if_block, ptr @fprintf, i64 3}
!78 = !{ptr @noce_find_if_block, ptr @onlyjump_p, i64 8674}
!79 = !{ptr @noce_find_if_block, ptr @noce_get_condition, i64 8673}
!80 = !{ptr @noce_find_if_block, ptr @optimize_bb_for_speed_p, i64 8671}
!81 = !{ptr @noce_find_if_block, ptr @predictable_edge_p, i64 2969}
!82 = !{ptr @noce_find_if_block, ptr @noce_process_if_block, i64 8671}
!83 = !{ptr @noce_find_if_block, ptr @cond_move_process_if_block, i64 6828}
!84 = !{ptr @find_if_case_1, ptr @find_reg_note, i64 2481966}
!85 = !{ptr @find_if_case_1, ptr @single_succ_p, i64 827321}
!86 = !{ptr @find_if_case_1, ptr @single_succ_edge, i64 18691}
!87 = !{ptr @find_if_case_1, ptr @single_pred_p, i64 4622}
!88 = !{ptr @find_if_case_1, ptr @forwarder_block_p, i64 4271}
!89 = !{ptr @find_if_case_1, ptr @fprintf, i64 1}
!90 = !{ptr @find_if_case_1, ptr @optimize_bb_for_speed_p, i64 2143}
!91 = !{ptr @find_if_case_1, ptr @predictable_edge_p, i64 797}
!92 = !{ptr @find_if_case_1, ptr @cheap_bb_rtx_cost_p, i64 2143}
!93 = !{ptr @find_if_case_1, ptr @single_succ, i64 11}
!94 = !{ptr @find_if_case_1, ptr @dead_or_predicable, i64 11}
!95 = !{ptr @find_if_case_1, ptr @VEC_edge_base_index, i64 7}
!96 = !{ptr @find_if_case_1, ptr @redirect_edge_and_branch_force, i64 4}
!97 = !{ptr @find_if_case_1, ptr @df_set_bb_dirty, i64 8}
!98 = !{ptr @find_if_case_1, ptr @delete_basic_block, i64 4}
!99 = !{ptr @find_if_case_1, ptr @df_bb_replace, i64 3}
!100 = !{ptr @find_if_case_2, ptr @find_reg_note, i64 2544646}
!101 = !{ptr @find_if_case_2, ptr @single_succ_p, i64 827320}
!102 = !{ptr @find_if_case_2, ptr @single_succ_edge, i64 368425}
!103 = !{ptr @find_if_case_2, ptr @single_pred_p, i64 368346}
!104 = !{ptr @find_if_case_2, ptr @dominated_by_p, i64 55711}
!105 = !{ptr @find_if_case_2, ptr @fprintf, i64 1}
!106 = !{ptr @find_if_case_2, ptr @optimize_bb_for_speed_p, i64 61934}
!107 = !{ptr @find_if_case_2, ptr @predictable_edge_p, i64 4699}
!108 = !{ptr @find_if_case_2, ptr @cheap_bb_rtx_cost_p, i64 61934}
!109 = !{ptr @find_if_case_2, ptr @dead_or_predicable, i64 61933}
!110 = !{ptr @find_if_case_2, ptr @df_set_bb_dirty, i64 120532}
!111 = !{ptr @find_if_case_2, ptr @delete_basic_block, i64 60266}
!112 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 2415029}
!113 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 3111721}
!114 = !{ptr @single_succ, ptr @single_succ_edge, i64 77928}
!115 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 478569}
!116 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!117 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 478569}
!118 = !{ptr @noce_get_condition, ptr @any_condjump_p, i64 68305}
!119 = !{ptr @noce_get_condition, ptr @pc_set, i64 68304}
!120 = !{ptr @noce_get_condition, ptr @reverse_condition, i64 1}
!121 = !{ptr @noce_get_condition, ptr @gen_rtx_fmt_ee_stat, i64 1}
!122 = !{ptr @noce_get_condition, ptr @canonicalize_condition, i64 68303}
!123 = !{ptr @noce_process_if_block, ptr @first_active_insn, i64 10519}
!124 = !{ptr @noce_process_if_block, ptr @last_active_insn, i64 10517}
!125 = !{ptr @noce_process_if_block, ptr @single_set_2, i64 3}
!126 = !{ptr @noce_process_if_block, ptr @rtx_equal_p, i64 3712}
!127 = !{ptr @noce_process_if_block, ptr @prev_nonnote_insn, i64 20}
!128 = !{ptr @noce_process_if_block, ptr @noce_operand_ok, i64 3727}
!129 = !{ptr @noce_process_if_block, ptr @reg_overlap_mentioned_p, i64 30}
!130 = !{ptr @noce_process_if_block, ptr @modified_between_p, i64 14}
!131 = !{ptr @noce_process_if_block, ptr @side_effects_p, i64 1858}
!132 = !{ptr @noce_process_if_block, ptr @rhs_regno, i64 1856}
!133 = !{ptr @noce_process_if_block, ptr @gen_reg_rtx, i64 1}
!134 = !{ptr @noce_process_if_block, ptr @noce_mem_write_may_trap_or_fault_p, i64 1}
!135 = !{ptr @noce_process_if_block, ptr @noce_can_store_speculate_p, i64 1}
!136 = !{ptr @noce_process_if_block, ptr @noce_try_move, i64 1854}
!137 = !{ptr @noce_process_if_block, ptr @noce_try_store_flag, i64 1853}
!138 = !{ptr @noce_process_if_block, ptr @noce_try_bitop, i64 1852}
!139 = !{ptr @noce_process_if_block, ptr @noce_try_minmax, i64 1851}
!140 = !{ptr @noce_process_if_block, ptr @noce_try_abs, i64 1850}
!141 = !{ptr @noce_process_if_block, ptr @noce_try_cmove, i64 1849}
!142 = !{ptr @noce_process_if_block, ptr @noce_try_store_flag_constants, i64 18}
!143 = !{ptr @noce_process_if_block, ptr @noce_try_addcc, i64 17}
!144 = !{ptr @noce_process_if_block, ptr @noce_try_store_flag_mask, i64 16}
!145 = !{ptr @noce_process_if_block, ptr @noce_try_cmove_arith, i64 15}
!146 = !{ptr @noce_process_if_block, ptr @noce_try_sign_mask, i64 15}
!147 = !{ptr @noce_process_if_block, ptr @start_sequence, i64 1}
!148 = !{ptr @noce_process_if_block, ptr @noce_emit_move_insn, i64 1}
!149 = !{ptr @noce_process_if_block, ptr @get_insns, i64 1}
!150 = !{ptr @noce_process_if_block, ptr @set_used_flags, i64 1}
!151 = !{ptr @noce_process_if_block, ptr @unshare_all_rtl_in_chain, i64 1}
!152 = !{ptr @noce_process_if_block, ptr @end_sequence, i64 1}
!153 = !{ptr @noce_process_if_block, ptr @emit_insn_before_setloc, i64 1}
!154 = !{ptr @noce_process_if_block, ptr @delete_basic_block, i64 3679}
!155 = !{ptr @noce_process_if_block, ptr @find_edge, i64 1841}
!156 = !{ptr @noce_process_if_block, ptr @remove_edge, i64 1841}
!157 = !{ptr @noce_process_if_block, ptr @single_succ_edge, i64 1840}
!158 = !{ptr @noce_process_if_block, ptr @redirect_edge_and_branch_force, i64 1840}
!159 = !{ptr @noce_process_if_block, ptr @can_merge_blocks_p, i64 1840}
!160 = !{ptr @noce_process_if_block, ptr @merge_blocks, i64 1}
!161 = !{ptr @cond_move_process_if_block, ptr @max_reg_num, i64 6832}
!162 = !{ptr @cond_move_process_if_block, ptr @check_cond_move_block, i64 6833}
!163 = !{ptr @cond_move_process_if_block, ptr @VEC_int_base_iterate, i64 29}
!164 = !{ptr @cond_move_process_if_block, ptr @rtx_equal_p, i64 2}
!165 = !{ptr @cond_move_process_if_block, ptr @optimize_function_for_speed_p, i64 1}
!166 = !{ptr @cond_move_process_if_block, ptr @VEC_int_heap_free, i64 13664}
!167 = !{ptr @noce_operand_ok, ptr @side_effects_p, i64 3742}
!168 = !{ptr @noce_operand_ok, ptr @may_trap_p, i64 3704}
!169 = !{ptr @noce_try_move, ptr @rtx_equal_p, i64 4077}
!170 = !{ptr @noce_try_move, ptr @start_sequence, i64 1}
!171 = !{ptr @noce_try_move, ptr @noce_emit_move_insn, i64 1}
!172 = !{ptr @noce_try_move, ptr @end_ifcvt_sequence, i64 1}
!173 = !{ptr @noce_try_store_flag, ptr @reversed_comparison_code, i64 1}
!174 = !{ptr @noce_try_store_flag, ptr @start_sequence, i64 2}
!175 = !{ptr @noce_try_store_flag, ptr @noce_emit_store_flag, i64 2}
!176 = !{ptr @noce_try_store_flag, ptr @noce_emit_move_insn, i64 1}
!177 = !{ptr @noce_try_store_flag, ptr @end_ifcvt_sequence, i64 1}
!178 = !{ptr @noce_try_store_flag, ptr @emit_insn_before_setloc, i64 1}
!179 = !{ptr @noce_try_store_flag, ptr @end_sequence, i64 1}
!180 = !{ptr @noce_try_bitop, ptr @rtx_equal_p, i64 1862}
!181 = !{ptr @noce_try_minmax, ptr @noce_get_alt_condition, i64 1860}
!182 = !{ptr @noce_try_minmax, ptr @rtx_equal_p, i64 1087}
!183 = !{ptr @noce_try_minmax, ptr @swap_condition, i64 1}
!184 = !{ptr @noce_try_abs, ptr @rtx_equal_p, i64 7}
!185 = !{ptr @noce_try_abs, ptr @noce_get_alt_condition, i64 2}
!186 = !{ptr @noce_try_abs, ptr @prev_nonnote_insn, i64 1}
!187 = !{ptr @noce_try_cmove, ptr @register_operand, i64 20}
!188 = !{ptr @noce_try_cmove, ptr @start_sequence, i64 1844}
!189 = !{ptr @noce_try_cmove, ptr @noce_emit_cmove, i64 1844}
!190 = !{ptr @noce_try_cmove, ptr @noce_emit_move_insn, i64 1}
!191 = !{ptr @noce_try_cmove, ptr @end_ifcvt_sequence, i64 1843}
!192 = !{ptr @noce_try_cmove, ptr @emit_insn_before_setloc, i64 1842}
!193 = !{ptr @noce_try_cmove, ptr @end_sequence, i64 1}
!194 = !{ptr @noce_try_addcc, ptr @rtx_equal_p, i64 1}
!195 = !{ptr @noce_try_addcc, ptr @reversed_comparison_code, i64 1}
!196 = !{ptr @noce_try_store_flag_mask, ptr @rtx_equal_p, i64 2}
!197 = !{ptr @noce_try_store_flag_mask, ptr @reversed_comparison_code, i64 17}
!198 = !{ptr @noce_try_store_flag_mask, ptr @start_sequence, i64 1}
!199 = !{ptr @noce_try_store_flag_mask, ptr @gen_reg_rtx, i64 1}
!200 = !{ptr @noce_try_store_flag_mask, ptr @noce_emit_store_flag, i64 1}
!201 = !{ptr @noce_try_store_flag_mask, ptr @expand_simple_binop, i64 1}
!202 = !{ptr @noce_try_store_flag_mask, ptr @end_sequence, i64 1}
!203 = !{ptr @noce_try_cmove_arith, ptr @may_trap_p, i64 19}
!204 = !{ptr @noce_try_sign_mask, ptr @side_effects_p, i64 1}
!205 = !{ptr @end_ifcvt_sequence, ptr @get_insns, i64 1844}
!206 = !{ptr @end_ifcvt_sequence, ptr @set_used_flags, i64 3688}
!207 = !{ptr @end_ifcvt_sequence, ptr @unshare_all_rtl_in_chain, i64 1844}
!208 = !{ptr @end_ifcvt_sequence, ptr @end_sequence, i64 1844}
!209 = !{ptr @end_ifcvt_sequence, ptr @recog_memoized, i64 7963}
!210 = !{ptr @recog_memoized, ptr @recog, i64 7973}
!211 = !{ptr @noce_get_alt_condition, ptr @reg_mentioned_p, i64 3356}
!212 = !{ptr @noce_get_alt_condition, ptr @pc_set, i64 1498}
!213 = !{ptr @noce_get_alt_condition, ptr @prev_nonnote_insn, i64 1479}
!214 = !{ptr @noce_get_alt_condition, ptr @find_reg_equal_equiv_note, i64 740}
!215 = !{ptr @noce_get_alt_condition, ptr @rtx_equal_p, i64 1}
!216 = !{ptr @noce_get_alt_condition, ptr @gen_rtx_CONST_INT, i64 2}
!217 = !{ptr @noce_get_alt_condition, ptr @gen_rtx_fmt_ee_stat, i64 3}
!218 = !{ptr @noce_get_alt_condition, ptr @canonicalize_condition, i64 1495}
!219 = !{ptr @noce_get_alt_condition, ptr @reg_overlap_mentioned_p, i64 7}
!220 = !{ptr @noce_get_alt_condition, ptr @modified_in_p, i64 4}
!221 = !{ptr @noce_emit_cmove, ptr @gen_rtx_fmt_ee_stat, i64 2}
!222 = !{ptr @noce_emit_cmove, ptr @gen_rtx_fmt_eee_stat, i64 1}
!223 = !{ptr @noce_emit_cmove, ptr @start_sequence, i64 1}
!224 = !{ptr @noce_emit_cmove, ptr @emit_insn, i64 2}
!225 = !{ptr @noce_emit_cmove, ptr @recog_memoized, i64 1}
!226 = !{ptr @noce_emit_cmove, ptr @get_insns, i64 1}
!227 = !{ptr @noce_emit_cmove, ptr @end_sequence, i64 1}
!228 = !{ptr @noce_emit_cmove, ptr @general_operand, i64 3685}
!229 = !{ptr @noce_emit_cmove, ptr @emit_conditional_move, i64 1841}
!230 = !{ptr @check_cond_move_block, ptr @onlyjump_p, i64 1}
!231 = !{ptr @check_cond_move_block, ptr @single_set_2, i64 1}
!232 = !{ptr @check_cond_move_block, ptr @rhs_regno, i64 2276}
!233 = !{ptr @check_cond_move_block, ptr @register_operand, i64 263}
!234 = !{ptr @check_cond_move_block, ptr @side_effects_p, i64 153}
!235 = !{ptr @check_cond_move_block, ptr @may_trap_p, i64 149}
!236 = !{ptr @check_cond_move_block, ptr @reg_overlap_mentioned_p, i64 72}
!237 = !{ptr @check_cond_move_block, ptr @modified_between_p, i64 1}
!238 = !{ptr @check_cond_move_block, ptr @VEC_int_heap_safe_push, i64 71}
!239 = !{ptr @VEC_int_heap_free, ptr @free, i64 77}
!240 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_heap_reserve, i64 76}
!241 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_base_quick_push, i64 76}
!242 = !{ptr @VEC_int_heap_reserve, ptr @VEC_int_base_space, i64 76}
!243 = !{ptr @VEC_int_heap_reserve, ptr @vec_heap_o_reserve, i64 75}
!244 = !{ptr @cheap_bb_rtx_cost_p, ptr @optimize_bb_for_speed_p, i64 64079}
!245 = !{ptr @cheap_bb_rtx_cost_p, ptr @insn_rtx_cost, i64 50051}
!246 = !{ptr @cheap_bb_rtx_cost_p, ptr @single_set_2, i64 1}
!247 = !{ptr @cheap_bb_rtx_cost_p, ptr @rhs_regno, i64 48215}
!248 = !{ptr @dead_or_predicable, ptr @tablejump_p, i64 61269}
!249 = !{ptr @dead_or_predicable, ptr @cond_exec_get_condition, i64 1}
!250 = !{ptr @dead_or_predicable, ptr @find_reg_note, i64 22360}
!251 = !{ptr @dead_or_predicable, ptr @may_trap_p, i64 61267}
!252 = !{ptr @dead_or_predicable, ptr @for_each_rtx, i64 61266}
!253 = !{ptr @dead_or_predicable, ptr @any_condjump_p, i64 59622}
!254 = !{ptr @dead_or_predicable, ptr @noce_get_condition, i64 59621}
!255 = !{ptr @dead_or_predicable, ptr @bitmap_obstack_alloc_stat, i64 178860}
!256 = !{ptr @dead_or_predicable, ptr @max_reg_num, i64 60059}
!257 = !{ptr @dead_or_predicable, ptr @bitmap_set_bit, i64 59152}
!258 = !{ptr @dead_or_predicable, ptr @bmp_iter_set_init, i64 59610}
!259 = !{ptr @dead_or_predicable, ptr @bmp_iter_set, i64 119222}
!260 = !{ptr @dead_or_predicable, ptr @bmp_iter_next, i64 59612}
!261 = !{ptr @dead_or_predicable, ptr @df_get_live_in, i64 119228}
!262 = !{ptr @dead_or_predicable, ptr @bitmap_copy, i64 59620}
!263 = !{ptr @dead_or_predicable, ptr @df_simulate_initialize_backwards, i64 59620}
!264 = !{ptr @dead_or_predicable, ptr @df_simulate_find_defs, i64 119238}
!265 = !{ptr @dead_or_predicable, ptr @df_simulate_one_insn_backwards, i64 119238}
!266 = !{ptr @dead_or_predicable, ptr @bitmap_intersect_p, i64 178845}
!267 = !{ptr @dead_or_predicable, ptr @bitmap_obstack_free, i64 178860}
!268 = !{ptr @dead_or_predicable, ptr @block_label, i64 22359}
!269 = !{ptr @dead_or_predicable, ptr @redirect_jump_1, i64 22359}
!270 = !{ptr @dead_or_predicable, ptr @verify_changes, i64 22359}
!271 = !{ptr @dead_or_predicable, ptr @confirm_change_group, i64 22359}
!272 = !{ptr @dead_or_predicable, ptr @redirect_jump_2, i64 22359}
!273 = !{ptr @dead_or_predicable, ptr @VEC_edge_base_index, i64 24095}
!274 = !{ptr @dead_or_predicable, ptr @redirect_edge_succ, i64 22359}
!275 = !{ptr @dead_or_predicable, ptr @update_br_prob_note, i64 1}
!276 = !{ptr @dead_or_predicable, ptr @function_invariant_p, i64 1}
!277 = !{ptr @dead_or_predicable, ptr @remove_note, i64 1}
!278 = !{ptr @dead_or_predicable, ptr @reorder_insns, i64 22359}
!279 = !{ptr @dead_or_predicable, ptr @cancel_changes, i64 1}
!280 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!281 = !{!"function_entry_count", i64 38}
!282 = !{!"ifcvt.c:gate_handle_if_conversion"}
!283 = !{!284, !284, i64 0}
!284 = !{!"int", !285, i64 0}
!285 = !{!"omnipotent char", !286, i64 0}
!286 = !{!"Simple C/C++ TBAA"}
!287 = !{!"branch_weights", i32 39, i32 1}
!288 = !{!"ifcvt.c:rest_of_handle_if_conversion"}
!289 = !{!"branch_weights", i32 1, i32 39}
!290 = !{!291, !291, i64 0}
!291 = !{!"any pointer", !285, i64 0}
!292 = !{!"ifcvt.c:gate_handle_if_after_combine"}
!293 = !{!"branch_weights", i32 1521, i32 79}
!294 = !{!"ifcvt.c:rest_of_handle_if_after_combine"}
!295 = !{!"ifcvt.c:gate_handle_if_after_reload"}
!296 = !{!"ifcvt.c:rest_of_handle_if_after_reload"}
!297 = !{!"function_entry_count", i64 114}
!298 = !{!"ifcvt.c:if_convert"}
!299 = !{!"branch_weights", i32 1, i32 115}
!300 = !{!"branch_weights", i32 188, i32 1}
!301 = !{!302, !291, i64 8}
!302 = !{!"function", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !291, i64 40, !291, i64 48, !291, i64 56, !291, i64 64, !291, i64 72, !291, i64 80, !291, i64 88, !291, i64 96, !284, i64 104, !284, i64 108, !284, i64 112, !284, i64 116, !284, i64 120, !284, i64 124, !291, i64 128, !284, i64 136, !284, i64 137, !284, i64 138, !284, i64 138, !284, i64 138, !284, i64 138, !284, i64 138, !284, i64 138, !284, i64 138, !284, i64 139, !284, i64 139, !284, i64 139, !284, i64 139, !284, i64 139, !284, i64 139, !284, i64 139}
!303 = !{!304, !291, i64 0}
!304 = !{!"control_flow_graph", !291, i64 0, !291, i64 8, !291, i64 16, !284, i64 24, !284, i64 28, !284, i64 32, !291, i64 40, !284, i64 48, !285, i64 52, !285, i64 60, !284, i64 68, !284, i64 72}
!305 = !{!306, !291, i64 56}
!306 = !{!"basic_block_def", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !285, i64 32, !291, i64 48, !291, i64 56, !285, i64 64, !307, i64 72, !284, i64 80, !284, i64 84, !284, i64 88, !284, i64 92, !284, i64 96}
!307 = !{!"long", !285, i64 0}
!308 = !{!304, !291, i64 8}
!309 = !{!"branch_weights", i32 1, i32 187}
!310 = !{!"branch_weights", i32 875555, i32 121077}
!311 = !{!"branch_weights", i32 935168, i32 61464}
!312 = distinct !{!312, !313}
!313 = !{!"llvm.loop.mustprogress"}
!314 = !{!"branch_weights", i32 187, i32 934981}
!315 = !{!"branch_weights", i32 843043978, i32 1304439670}
!316 = distinct !{!316, !313}
!317 = !{!"branch_weights", i32 2138267674, i32 9215974}
!318 = !{!"branch_weights", i32 115, i32 1}
!319 = !{!"branch_weights", i32 5, i32 111}
!320 = !{!"function_entry_count", i64 875554}
!321 = !{!"ifcvt.c:find_if_header"}
!322 = !{!306, !291, i64 8}
!323 = !{!"branch_weights", i32 832035, i32 43521}
!324 = !{!325, !291, i64 8}
!325 = !{!"edge_def", !291, i64 0, !291, i64 8, !285, i64 16, !291, i64 24, !291, i64 32, !284, i64 40, !284, i64 44, !284, i64 48, !284, i64 52, !307, i64 56}
!326 = !{!"branch_weights", i32 831817, i32 219}
!327 = !{!"branch_weights", i32 829169, i32 2649}
!328 = !{!325, !284, i64 48}
!329 = !{!"branch_weights", i32 829169, i32 1}
!330 = !{!"branch_weights", i32 -1609337490, i32 6477}
!331 = !{!"branch_weights", i32 472086, i32 357084}
!332 = !{!"branch_weights", i32 1, i32 472086}
!333 = !{!334, !291, i64 0}
!334 = !{!"ce_if_block", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !284, i64 40, !284, i64 44, !284, i64 48, !284, i64 52, !284, i64 56, !284, i64 60, !284, i64 64, !284, i64 68}
!335 = !{!334, !291, i64 8}
!336 = !{!334, !291, i64 16}
!337 = !{!334, !284, i64 68}
!338 = !{!"branch_weights", i32 681039, i32 148131}
!339 = !{i32 0, i32 2}
!340 = !{!"branch_weights", i32 679195, i32 1845}
!341 = !{!342, !291, i64 1000}
!342 = !{!"gcc_target", !343, i64 0, !345, i64 368, !346, i64 664, !284, i64 744, !291, i64 752, !291, i64 760, !291, i64 768, !291, i64 776, !291, i64 784, !291, i64 792, !291, i64 800, !291, i64 808, !291, i64 816, !291, i64 824, !291, i64 832, !291, i64 840, !291, i64 848, !291, i64 856, !291, i64 864, !291, i64 872, !291, i64 880, !291, i64 888, !291, i64 896, !291, i64 904, !291, i64 912, !291, i64 920, !291, i64 928, !291, i64 936, !291, i64 944, !291, i64 952, !291, i64 960, !291, i64 968, !291, i64 976, !291, i64 984, !291, i64 992, !291, i64 1000, !291, i64 1008, !291, i64 1016, !291, i64 1024, !291, i64 1032, !291, i64 1040, !291, i64 1048, !291, i64 1056, !307, i64 1064, !307, i64 1072, !291, i64 1080, !291, i64 1088, !291, i64 1096, !291, i64 1104, !291, i64 1112, !291, i64 1120, !291, i64 1128, !291, i64 1136, !291, i64 1144, !291, i64 1152, !291, i64 1160, !291, i64 1168, !347, i64 1176, !291, i64 1232, !291, i64 1240, !291, i64 1248, !291, i64 1256, !291, i64 1264, !291, i64 1272, !291, i64 1280, !291, i64 1288, !291, i64 1296, !291, i64 1304, !291, i64 1312, !291, i64 1320, !291, i64 1328, !291, i64 1336, !291, i64 1344, !291, i64 1352, !291, i64 1360, !291, i64 1368, !291, i64 1376, !291, i64 1384, !291, i64 1392, !291, i64 1400, !291, i64 1408, !291, i64 1416, !291, i64 1424, !291, i64 1432, !291, i64 1440, !291, i64 1448, !291, i64 1456, !307, i64 1464, !348, i64 1472, !291, i64 1664, !291, i64 1672, !291, i64 1680, !291, i64 1688, !291, i64 1696, !291, i64 1704, !291, i64 1712, !291, i64 1720, !291, i64 1728, !291, i64 1736, !291, i64 1744, !291, i64 1752, !291, i64 1760, !291, i64 1768, !291, i64 1776, !349, i64 1784, !350, i64 1792, !351, i64 1896, !352, i64 1968, !291, i64 2016, !285, i64 2024, !285, i64 2025, !285, i64 2026, !285, i64 2027, !285, i64 2028, !285, i64 2029, !285, i64 2030, !285, i64 2031, !285, i64 2032, !285, i64 2033, !285, i64 2034, !285, i64 2035}
!343 = !{!"asm_out", !291, i64 0, !291, i64 8, !291, i64 16, !344, i64 24, !344, i64 56, !291, i64 88, !291, i64 96, !291, i64 104, !291, i64 112, !291, i64 120, !291, i64 128, !291, i64 136, !291, i64 144, !291, i64 152, !291, i64 160, !291, i64 168, !291, i64 176, !291, i64 184, !291, i64 192, !291, i64 200, !291, i64 208, !291, i64 216, !291, i64 224, !291, i64 232, !291, i64 240, !291, i64 248, !291, i64 256, !291, i64 264, !291, i64 272, !291, i64 280, !291, i64 288, !291, i64 296, !291, i64 304, !291, i64 312, !291, i64 320, !291, i64 328, !291, i64 336, !291, i64 344, !291, i64 352, !291, i64 360}
!344 = !{!"asm_int_op", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24}
!345 = !{!"sched", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !291, i64 40, !291, i64 48, !291, i64 56, !291, i64 64, !291, i64 72, !291, i64 80, !291, i64 88, !291, i64 96, !291, i64 104, !291, i64 112, !291, i64 120, !291, i64 128, !291, i64 136, !291, i64 144, !291, i64 152, !291, i64 160, !291, i64 168, !291, i64 176, !291, i64 184, !291, i64 192, !291, i64 200, !291, i64 208, !291, i64 216, !291, i64 224, !291, i64 232, !291, i64 240, !291, i64 248, !291, i64 256, !291, i64 264, !291, i64 272, !291, i64 280, !291, i64 288}
!346 = !{!"vectorize", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !291, i64 40, !291, i64 48, !291, i64 56, !291, i64 64, !291, i64 72}
!347 = !{!"addr_space", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !291, i64 40, !291, i64 48}
!348 = !{!"calls", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !291, i64 40, !291, i64 48, !291, i64 56, !291, i64 64, !291, i64 72, !291, i64 80, !291, i64 88, !291, i64 96, !291, i64 104, !291, i64 112, !291, i64 120, !291, i64 128, !291, i64 136, !291, i64 144, !291, i64 152, !291, i64 160, !291, i64 168, !291, i64 176, !291, i64 184}
!349 = !{!"c", !291, i64 0}
!350 = !{!"cxx", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !291, i64 40, !291, i64 48, !291, i64 56, !291, i64 64, !291, i64 72, !291, i64 80, !291, i64 88, !291, i64 96}
!351 = !{!"emutls", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !291, i64 40, !291, i64 48, !291, i64 56, !285, i64 64, !285, i64 65}
!352 = !{!"target_option_hooks", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !291, i64 40}
!353 = !{!"branch_weights", i32 827325, i32 1}
!354 = !{!355, !284, i64 0}
!355 = !{!"optab_handlers", !284, i64 0}
!356 = !{!"branch_weights", i32 1, i32 827325}
!357 = !{!"branch_weights", i32 827324, i32 2}
!358 = !{!"branch_weights", i32 767706, i32 59619}
!359 = !{!"branch_weights", i32 61464, i32 1}
!360 = !{!"function_entry_count", i64 6402304}
!361 = !{!"ifcvt.c:VEC_edge_base_length"}
!362 = !{!"branch_weights", i32 1, i32 6402305}
!363 = !{!364, !284, i64 0}
!364 = !{!"VEC_edge_base", !284, i64 0, !284, i64 4, !285, i64 8}
!365 = !{!"function_entry_count", i64 2261893}
!366 = !{!"ifcvt.c:VEC_edge_base_index"}
!367 = !{!"function_entry_count", i64 681038}
!368 = !{!"ifcvt.c:noce_find_if_block"}
!369 = !{!"branch_weights", i32 681039, i32 1}
!370 = !{i8 0, i8 2}
!371 = !{!"branch_weights", i32 226446, i32 454594}
!372 = !{!"branch_weights", i32 443967, i32 10628}
!373 = !{!"branch_weights", i32 6904, i32 3725}
!374 = !{!"branch_weights", i32 581, i32 3145}
!375 = !{!"branch_weights", i32 3006, i32 140}
!376 = !{!"branch_weights", i32 226446, i32 451589}
!377 = !{!"branch_weights", i32 443967, i32 7623}
!378 = !{!"branch_weights", i32 5672, i32 1952}
!379 = !{!"branch_weights", i32 603763, i32 68601}
!380 = !{!"branch_weights", i32 7591, i32 61011}
!381 = !{!"branch_weights", i32 1, i32 61011}
!382 = !{!"branch_weights", i32 8677, i32 1}
!383 = !{!"branch_weights", i32 5672, i32 3006}
!384 = !{!"branch_weights", i32 3006, i32 1}
!385 = !{!306, !284, i64 80}
!386 = !{!285, !285, i64 0}
!387 = !{!388, !291, i64 8}
!388 = !{!"rtl_bb_info", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !284, i64 32}
!389 = !{!"branch_weights", i32 1, i32 8677}
!390 = !{!391, !291, i64 0}
!391 = !{!"noce_if_info", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !291, i64 40, !291, i64 48, !291, i64 56, !291, i64 64, !291, i64 72, !291, i64 80, !291, i64 88, !285, i64 96, !284, i64 100}
!392 = !{!391, !291, i64 8}
!393 = !{!391, !291, i64 16}
!394 = !{!391, !291, i64 24}
!395 = !{!391, !291, i64 40}
!396 = !{!391, !291, i64 48}
!397 = !{!391, !291, i64 32}
!398 = !{!391, !285, i64 96}
!399 = !{!"branch_weights", i32 5707, i32 2971}
!400 = !{!"branch_weights", i32 8664, i32 14}
!401 = !{!391, !284, i64 100}
!402 = !{!"branch_weights", i32 6833, i32 1845}
!403 = !{!"function_entry_count", i64 0}
!404 = !{!"ifcvt.c:cond_exec_find_if_block"}
!405 = !{!334, !291, i64 32}
!406 = !{!334, !284, i64 56}
!407 = distinct !{!407, !313}
!408 = !{!334, !284, i64 40}
!409 = !{!334, !284, i64 52}
!410 = !{!334, !284, i64 44}
!411 = !{!334, !284, i64 48}
!412 = !{!306, !291, i64 0}
!413 = !{i64 0, i64 4, !283, i64 8, i64 8, !290}
!414 = !{i64 0, i64 8, !290}
!415 = distinct !{!415, !313}
!416 = distinct !{!416, !313}
!417 = !{!388, !291, i64 0}
!418 = distinct !{!418, !313}
!419 = !{!334, !291, i64 24}
!420 = !{!"ifcvt.c:find_cond_trap"}
!421 = !{!"function_entry_count", i64 827324}
!422 = !{!"ifcvt.c:find_if_case_1"}
!423 = !{!"branch_weights", i32 808635, i32 18691}
!424 = !{!"branch_weights", i32 4622, i32 14070}
!425 = !{!"branch_weights", i32 351, i32 4272}
!426 = !{!"branch_weights", i32 2144, i32 2129}
!427 = !{!"branch_weights", i32 2144, i32 1}
!428 = !{!325, !291, i64 0}
!429 = !{!"branch_weights", i32 1347, i32 798}
!430 = !{!"branch_weights", i32 2124, i32 21}
!431 = !{!"branch_weights", i32 795, i32 4}
!432 = !{!"branch_weights", i32 3, i32 2}
!433 = !{!"branch_weights", i32 1, i32 2}
!434 = !{!306, !291, i64 48}
!435 = !{!"branch_weights", i32 2, i32 1}
!436 = !{!306, !284, i64 96}
!437 = !{!"function_entry_count", i64 827323}
!438 = !{!"ifcvt.c:find_if_case_2"}
!439 = !{!"branch_weights", i32 1, i32 827324}
!440 = !{!"branch_weights", i32 827324, i32 1}
!441 = !{!"branch_weights", i32 458898, i32 368427}
!442 = !{!"branch_weights", i32 368349, i32 79}
!443 = !{!"branch_weights", i32 305665, i32 62685}
!444 = !{!"branch_weights", i32 1, i32 62685}
!445 = !{!"branch_weights", i32 6972, i32 55714}
!446 = !{!"branch_weights", i32 1, i32 55714}
!447 = !{!"branch_weights", i32 749, i32 54966}
!448 = !{!"branch_weights", i32 61937, i32 1}
!449 = !{!"branch_weights", i32 57239, i32 4699}
!450 = !{!"branch_weights", i32 61835, i32 103}
!451 = !{!"branch_weights", i32 1, i32 61267}
!452 = !{!"branch_weights", i32 1649, i32 59619}
!453 = !{!"function_entry_count", i64 2415029}
!454 = !{!"ifcvt.c:single_pred_p"}
!455 = !{!"function_entry_count", i64 3111721}
!456 = !{!"ifcvt.c:single_succ_p"}
!457 = !{!"function_entry_count", i64 77928}
!458 = !{!"ifcvt.c:single_succ"}
!459 = !{!"function_entry_count", i64 478569}
!460 = !{!"ifcvt.c:single_succ_edge"}
!461 = !{!"branch_weights", i32 1, i32 478570}
!462 = !{!"function_entry_count", i64 68305}
!463 = !{!"ifcvt.c:noce_get_condition"}
!464 = !{!"branch_weights", i32 1, i32 68306}
!465 = !{!"branch_weights", i32 68306, i32 1}
!466 = !{!"branch_weights", i32 68130, i32 177}
!467 = !{!"branch_weights", i32 1, i32 68130}
!468 = !{!"function_entry_count", i64 8676}
!469 = !{!"ifcvt.c:noce_process_if_block"}
!470 = !{!"branch_weights", i32 1863, i32 6815}
!471 = !{!"branch_weights", i32 14911, i32 1}
!472 = !{!"branch_weights", i32 1863, i32 1}
!473 = !{!"branch_weights", i32 1845, i32 19}
!474 = !{!"branch_weights", i32 1, i32 1845}
!475 = !{!"branch_weights", i32 1845, i32 1}
!476 = !{!"branch_weights", i32 14767, i32 1}
!477 = !{!"branch_weights", i32 1, i32 127}
!478 = !{!"branch_weights", i32 1, i32 19}
!479 = !{!"branch_weights", i32 127, i32 2305}
!480 = distinct !{!480, !313}
!481 = !{!"branch_weights", i32 361, i32 39}
!482 = !{!"branch_weights", i32 19, i32 1}
!483 = !{!"branch_weights", i32 1, i32 1863}
!484 = !{!391, !291, i64 56}
!485 = !{!391, !291, i64 64}
!486 = !{!391, !291, i64 88}
!487 = !{!391, !291, i64 72}
!488 = !{!391, !291, i64 80}
!489 = !{!"branch_weights", i32 19, i32 1845}
!490 = !{!"branch_weights", i32 19, i32 381}
!491 = !{!"branch_weights", i32 2146319825, i32 1163823}
!492 = !{!"branch_weights", i32 2146320017, i32 1163631}
!493 = !{!"function_entry_count", i64 6832}
!494 = !{!"ifcvt.c:cond_move_process_if_block"}
!495 = !{!"branch_weights", i32 6833, i32 1}
!496 = distinct !{!496, !313}
!497 = distinct !{!497, !313}
!498 = !{!"function_entry_count", i64 10520}
!499 = !{!"ifcvt.c:first_active_insn"}
!500 = !{!"branch_weights", i32 1845, i32 8677}
!501 = !{!"branch_weights", i32 1137289698, i32 -2015629182, i32 1138911298, i32 108097}
!502 = !{!"branch_weights", i32 1, i32 10535}
!503 = distinct !{!503, !313}
!504 = !{!"ifcvt.c:last_active_insn"}
!505 = !{!"branch_weights", i32 -2020387900, i32 216235, i32 216214, i32 216194}
!506 = !{!"branch_weights", i32 10521, i32 1}
!507 = !{!"branch_weights", i32 1, i32 10521}
!508 = distinct !{!508, !313}
!509 = !{!"branch_weights", i32 1073840682, i32 1073642966}
!510 = !{!"function_entry_count", i64 3742}
!511 = !{!"ifcvt.c:noce_operand_ok"}
!512 = !{!"branch_weights", i32 37, i32 3707}
!513 = !{!"branch_weights", i32 3707, i32 1}
!514 = !{!"function_entry_count", i64 67905}
!515 = !{!"ifcvt.c:rhs_regno"}
!516 = !{!"ifcvt.c:noce_mem_write_may_trap_or_fault_p"}
!517 = !{!342, !291, i64 1040}
!518 = distinct !{!518, !313}
!519 = !{!"ifcvt.c:noce_can_store_speculate_p"}
!520 = distinct !{!520, !313}
!521 = distinct !{!521, !313}
!522 = !{!"function_entry_count", i64 1862}
!523 = !{!"ifcvt.c:noce_try_move"}
!524 = !{!"branch_weights", i32 2216, i32 1032304}
!525 = !{!"branch_weights", i32 -318899397, i32 2141119, i32 2139969, i32 2138819, i32 2137669}
!526 = !{!527, !285, i64 46}
!527 = !{!"real_format", !291, i64 0, !291, i64 8, !284, i64 16, !284, i64 20, !284, i64 24, !284, i64 28, !284, i64 32, !284, i64 36, !284, i64 40, !285, i64 44, !285, i64 45, !285, i64 46, !285, i64 47, !285, i64 48, !285, i64 49, !285, i64 50, !285, i64 51}
!528 = !{!"branch_weights", i32 -1372889132, i32 1573544, i32 1572699, i32 1571854, i32 1571009}
!529 = !{!527, !285, i64 49}
!530 = !{!"branch_weights", i32 1860, i32 1}
!531 = !{!"branch_weights", i32 1497, i32 364}
!532 = !{!"branch_weights", i32 364, i32 1}
!533 = !{!"ifcvt.c:noce_try_store_flag"}
!534 = !{!"branch_weights", i32 32, i32 1814}
!535 = !{!"branch_weights", i32 1, i32 32}
!536 = !{!"branch_weights", i32 250, i32 1614}
!537 = !{!"branch_weights", i32 250, i32 1}
!538 = !{!"branch_weights", i32 1, i32 250}
!539 = !{!"ifcvt.c:noce_try_bitop"}
!540 = !{!"branch_weights", i32 73819, i32 741}
!541 = !{!307, !307, i64 0}
!542 = !{!"ifcvt.c:noce_try_minmax"}
!543 = !{!"branch_weights", i32 -267304743, i32 2165406, i32 2164243, i32 2163082, i32 2161922}
!544 = !{!"branch_weights", i32 -1353991357, i32 1581167, i32 1580318, i32 1579470, i32 1578623}
!545 = !{!"branch_weights", i32 1500, i32 364}
!546 = !{!"branch_weights", i32 1, i32 364}
!547 = !{!"ifcvt.c:noce_try_abs"}
!548 = !{!"ifcvt.c:noce_try_cmove"}
!549 = !{!"function_entry_count", i64 18}
!550 = !{!"ifcvt.c:noce_try_store_flag_constants"}
!551 = !{!"ifcvt.c:noce_try_addcc"}
!552 = !{!"ifcvt.c:noce_try_store_flag_mask"}
!553 = !{!"ifcvt.c:noce_try_cmove_arith"}
!554 = !{!"branch_weights", i32 13, i32 7}
!555 = !{!"branch_weights", i32 7, i32 1}
!556 = !{!"branch_weights", i32 1, i32 7}
!557 = !{!558, !285, i64 32}
!558 = !{!"mem_attrs", !291, i64 0, !291, i64 8, !291, i64 16, !284, i64 24, !284, i64 28, !285, i64 32}
!559 = !{!342, !291, i64 1184}
!560 = !{!558, !284, i64 24}
!561 = !{!558, !284, i64 28}
!562 = !{!"ifcvt.c:noce_try_sign_mask"}
!563 = !{!"branch_weights", i32 679118760, i32 1468364888}
!564 = !{!"ifcvt.c:noce_emit_move_insn"}
!565 = !{!"function_entry_count", i64 1844}
!566 = !{!"ifcvt.c:end_ifcvt_sequence"}
!567 = !{!"branch_weights", i32 1, i32 1844}
!568 = !{!"branch_weights", i32 1, i32 7975}
!569 = !{!"branch_weights", i32 1844, i32 6131}
!570 = distinct !{!570, !313}
!571 = !{!"function_entry_count", i64 7974}
!572 = !{!"ifcvt.c:recog_memoized"}
!573 = !{!"branch_weights", i32 7975, i32 1}
!574 = !{!"ifcvt.c:noce_emit_store_flag"}
!575 = !{!"ifcvt.c:noce_get_alt_condition"}
!576 = !{!"branch_weights", i32 1, i32 1500}
!577 = !{!"branch_weights", i32 1500, i32 1}
!578 = !{!"branch_weights", i32 1482, i32 19}
!579 = !{!"branch_weights", i32 1, i32 1482}
!580 = !{!"branch_weights", i32 1017, i32 466}
!581 = !{!"branch_weights", i32 -45511332, i32 577525412}
!582 = !{!"branch_weights", i32 742, i32 153}
!583 = !{!"branch_weights", i32 742, i32 1}
!584 = !{!"branch_weights", i32 1, i32 742}
!585 = !{!"branch_weights", i32 1482, i32 1}
!586 = !{!"branch_weights", i32 1479, i32 4, i32 1, i32 1, i32 1}
!587 = !{!"branch_weights", i32 1, i32 4}
!588 = distinct !{!588, !313}
!589 = distinct !{!589, !313}
!590 = !{!"ifcvt.c:noce_emit_cmove"}
!591 = !{!"ifcvt.c:check_cond_move_block"}
!592 = !{!"branch_weights", i32 1, i32 6833}
!593 = !{!"branch_weights", i32 1, i32 13755}
!594 = !{!"branch_weights", i32 -61219227, i32 -102869615}
!595 = !{!"branch_weights", i32 186462, i32 373032, i32 372978, i32 -1718434895, i32 186462}
!596 = !{!"branch_weights", i32 6813, i32 1}
!597 = !{!"branch_weights", i32 1058894138, i32 1088589510}
!598 = !{!"branch_weights", i32 2079, i32 4831}
!599 = !{!"branch_weights", i32 1738, i32 342}
!600 = !{!"branch_weights", i32 77, i32 266}
!601 = !{!"branch_weights", i32 266, i32 1}
!602 = !{!"branch_weights", i32 77, i32 1}
!603 = !{!"branch_weights", i32 -1744561599, i32 33554432, i32 33285566}
!604 = !{!"branch_weights", i32 127, i32 1760513}
!605 = distinct !{!605, !313}
!606 = !{!"function_entry_count", i64 13664}
!607 = !{!"ifcvt.c:VEC_int_heap_free"}
!608 = !{!"branch_weights", i32 13589, i32 77}
!609 = !{!"ifcvt.c:VEC_int_base_iterate"}
!610 = !{!611, !284, i64 0}
!611 = !{!"VEC_int_base", !284, i64 0, !284, i64 4, !285, i64 8}
!612 = !{!"ifcvt.c:cond_move_convert_if_block"}
!613 = distinct !{!613, !313}
!614 = !{!"function_entry_count", i64 76}
!615 = !{!"ifcvt.c:VEC_int_heap_safe_push"}
!616 = !{!"ifcvt.c:VEC_int_heap_reserve"}
!617 = !{!"ifcvt.c:VEC_int_base_quick_push"}
!618 = !{!"ifcvt.c:VEC_int_base_space"}
!619 = !{!611, !284, i64 4}
!620 = !{!"ifcvt.c:single_pred_edge"}
!621 = !{!"ifcvt.c:single_pred"}
!622 = !{!"ifcvt.c:block_jumps_and_fallthru_p"}
!623 = distinct !{!623, !313}
!624 = distinct !{!624, !313}
!625 = !{!"ifcvt.c:ei_start_1"}
!626 = !{!"ifcvt.c:ei_cond"}
!627 = !{!"ifcvt.c:ei_next"}
!628 = !{!629, !284, i64 0}
!629 = !{!"", !284, i64 0, !291, i64 8}
!630 = !{!"ifcvt.c:cond_exec_process_if_block"}
!631 = !{!334, !284, i64 60}
!632 = !{!334, !284, i64 64}
!633 = distinct !{!633, !313}
!634 = !{!"ifcvt.c:ei_end_p"}
!635 = !{!"ifcvt.c:ei_edge"}
!636 = !{!"ifcvt.c:ei_container"}
!637 = !{!"ifcvt.c:cond_exec_get_condition"}
!638 = !{!"ifcvt.c:count_bb_insns"}
!639 = !{!"ifcvt.c:block_fallthru"}
!640 = distinct !{!640, !313}
!641 = !{!"ifcvt.c:cond_exec_process_insns"}
!642 = !{!"ifcvt.c:merge_if_block"}
!643 = distinct !{!643, !313}
!644 = !{!"ifcvt.c:block_has_only_trap"}
!645 = !{!"function_entry_count", i64 64079}
!646 = !{!"ifcvt.c:cheap_bb_rtx_cost_p"}
!647 = !{!"branch_weights", i32 -267415677, i32 2109707694, i32 39539570}
!648 = !{!"branch_weights", i32 1, i32 66162}
!649 = !{!"branch_weights", i32 529303, i32 1}
!650 = !{!"branch_weights", i32 65436, i32 1}
!651 = !{!"branch_weights", i32 1858386727, i32 289096921}
!652 = !{!"branch_weights", i32 63738, i32 2425}
!653 = !{!"branch_weights", i32 63738, i32 63740}
!654 = !{!"branch_weights", i32 61270, i32 129629}
!655 = !{!"function_entry_count", i64 61269}
!656 = !{!"ifcvt.c:dead_or_predicable"}
!657 = !{!"branch_weights", i32 -540831856, i32 1}
!658 = distinct !{!658, !313}
!659 = !{!"branch_weights", i32 61270, i32 1}
!660 = !{!"branch_weights", i32 61267, i32 4}
!661 = !{!"branch_weights", i32 0, i32 65536, i32 -279576576}
!662 = distinct !{!662, !313}
!663 = !{!"branch_weights", i32 1, i32 61270}
!664 = distinct !{!664, !313}
!665 = !{!"branch_weights", i32 278, i32 60993}
!666 = !{!"branch_weights", i32 1, i32 278}
!667 = !{!"branch_weights", i32 77840, i32 1}
!668 = distinct !{!668, !313}
!669 = !{!"branch_weights", i32 0, i32 -2147483648}
!670 = !{!"branch_weights", i32 149354, i32 61275, i32 34466, i32 -540586768}
!671 = !{!"branch_weights", i32 61272, i32 1}
!672 = !{!"branch_weights", i32 59632, i32 1641}
!673 = !{!"branch_weights", i32 59630, i32 5}
!674 = !{!"branch_weights", i32 1, i32 59630}
!675 = !{!"branch_weights", i32 439, i32 59192}
!676 = !{!"branch_weights", i32 59630, i32 178899}
!677 = !{!"branch_weights", i32 -1615636934, i32 1339990940}
!678 = !{!679, !291, i64 248}
!679 = !{!"df", !285, i64 0, !285, i64 64, !291, i64 128, !680, i64 136, !680, i64 176, !291, i64 216, !291, i64 224, !291, i64 232, !284, i64 240, !284, i64 244, !291, i64 248, !284, i64 256, !284, i64 260, !291, i64 264, !291, i64 272, !291, i64 280, !291, i64 288, !291, i64 296, !291, i64 304, !291, i64 312, !291, i64 320, !291, i64 328, !291, i64 336, !284, i64 344, !284, i64 348, !291, i64 352, !284, i64 360, !284, i64 364, !285, i64 365, !285, i64 366}
!680 = !{!"df_ref_info", !291, i64 0, !291, i64 8, !291, i64 16, !284, i64 24, !284, i64 28, !284, i64 32, !284, i64 36}
!681 = !{!682, !291, i64 8}
!682 = !{!"df_insn_info", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32, !284, i64 40}
!683 = !{!"branch_weights", i32 9, i32 59632}
!684 = !{!"branch_weights", i32 59632, i32 0}
!685 = distinct !{!685, !313}
!686 = !{!"branch_weights", i32 127, i32 3816209}
!687 = distinct !{!687, !313}
!688 = !{!"branch_weights", i32 59621, i32 10}
!689 = !{!"branch_weights", i32 1, i32 59620}
!690 = !{!"branch_weights", i32 3, i32 59621}
!691 = !{!"branch_weights", i32 1, i32 3}
!692 = !{!"branch_weights", i32 59620, i32 3}
!693 = distinct !{!693, !313}
!694 = !{!"branch_weights", i32 -1059627055, i32 13564}
!695 = !{!"branch_weights", i32 59630, i32 59628}
!696 = !{!"branch_weights", i32 59628, i32 3}
!697 = !{!"branch_weights", i32 59620, i32 9}
!698 = !{!"branch_weights", i32 59620, i32 1}
!699 = !{!"branch_weights", i32 55014, i32 4607}
!700 = !{!"branch_weights", i32 59619, i32 2}
!701 = !{!325, !307, i64 56}
!702 = !{!325, !284, i64 52}
!703 = !{!"branch_weights", i32 476967, i32 1}
!704 = !{!"branch_weights", i32 23, i32 1}
!705 = !{!"branch_weights", i32 1960745940, i32 186737708}
!706 = distinct !{!706, !313}
!707 = !{!"function_entry_count", i64 183820}
!708 = !{!"ifcvt.c:find_memory"}
!709 = !{!"function_entry_count", i64 59620}
!710 = !{!"ifcvt.c:bmp_iter_set_init"}
!711 = !{!712, !291, i64 0}
!712 = !{!"bitmap_head_def", !291, i64 0, !291, i64 8, !284, i64 16, !291, i64 24}
!713 = !{!714, !291, i64 0}
!714 = !{!"", !291, i64 0, !291, i64 8, !284, i64 16, !307, i64 24}
!715 = !{!714, !291, i64 8}
!716 = !{!"branch_weights", i32 1, i32 59621}
!717 = !{!718, !284, i64 16}
!718 = !{!"bitmap_element_def", !291, i64 0, !291, i64 8, !284, i64 16, !285, i64 24}
!719 = !{!"branch_weights", i32 59344, i32 278}
!720 = !{!714, !284, i64 16}
!721 = !{!714, !307, i64 24}
!722 = !{!"function_entry_count", i64 119242}
!723 = !{!"ifcvt.c:bmp_iter_set"}
!724 = !{!"branch_weights", i32 59775, i32 59469}
!725 = !{!"branch_weights", i32 59622, i32 1}
!726 = !{!"branch_weights", i32 3390948, i32 59622}
!727 = distinct !{!727, !313}
!728 = !{!"branch_weights", i32 59467, i32 155}
!729 = distinct !{!729, !313}
!730 = !{!718, !291, i64 0}
!731 = !{!"branch_weights", i32 59621, i32 1}
!732 = !{!"function_entry_count", i64 59622}
!733 = !{!"ifcvt.c:bmp_iter_next"}
