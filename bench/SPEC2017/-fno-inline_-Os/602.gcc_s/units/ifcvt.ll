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

@pass_rtl_ifcvt = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_if_conversion, ptr @rest_of_handle_if_conversion, ptr null, ptr null, i32 0, i32 141, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str = private unnamed_addr constant [4 x i8] c"ce1\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_if_conversion = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@num_possible_if_blocks = internal unnamed_addr global i32 0, align 4
@num_updated_if_blocks = internal unnamed_addr global i32 0, align 4
@num_true_changes = internal unnamed_addr global i32 0, align 4
@cond_exec_changed_p = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\0A\0A========== Pass %d ==========\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"\0A\0A========== no more changes\0A\00", align 1
@max_regno = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"\0A%d possible IF blocks searched.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%d IF blocks converted.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%d true changes made.\0A\0A\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@optab_table = external global [159 x %struct.optab_d], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Conversion succeeded on pass %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ifcvt.c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"\0AIF-THEN%s-JOIN block found, pass %d, test %d, then %d\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"-ELSE\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c", else %d\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c", join %d\0A\00", align 1
@ix86_branch_cost = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
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
@.str.15 = private unnamed_addr constant [72 x i8] c"\0AIF-THEN%s block found, pass %d, start block %d [insn %d], then %d [%d]\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c", else %d [%d]\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c", join %d [%d]\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c", %d %s block%s last test %d [%d]\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"%d insn%s converted to conditional execution.\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" was\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"s were\00", align 1
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [41 x i8] c"\0ATRAP-IF block found, start %d, trap %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"\0AIF-CASE-1 found, start %d, then %d\0A\00", align 1
@reg_obstack = external global %struct.bitmap_obstack, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.27 = private unnamed_addr constant [37 x i8] c"\0AIF-CASE-2 found, start %d, else %d\0A\00", align 1
@pass_if_after_combine = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.28, ptr @gate_handle_if_after_combine, ptr @rest_of_handle_if_after_combine, ptr null, ptr null, i32 0, i32 141, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c"ce2\00", align 1
@pass_if_after_reload = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.29, ptr @gate_handle_if_after_reload, ptr @rest_of_handle_if_after_reload, ptr null, ptr null, i32 0, i32 154, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str.29 = private unnamed_addr constant [4 x i8] c"ce3\00", align 1
@flag_if_conversion2 = external local_unnamed_addr global i32, align 4
@switch.table.noce_try_minmax = private unnamed_addr constant [15 x i32] [i32 70, i32 70, i32 71, i32 71, i32 72, i32 72, i32 73, i32 73, i32 71, i32 71, i32 71, i32 70, i32 70, i32 71, i32 71], align 4
@switch.table.noce_try_minmax.30 = private unnamed_addr constant [15 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_if_conversion() #0 !prof !379 !PGOFuncName !380 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !381
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %7, !prof !385

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
define internal noundef i32 @rest_of_handle_if_conversion() #0 !prof !379 !PGOFuncName !386 {
  %1 = load i32, ptr @flag_if_conversion, align 4, !tbaa !381
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %10, label %3, !prof !387

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !385

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !381
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

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @if_convert() unnamed_addr #0 !prof !390 !PGOFuncName !391 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !381
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %4, !prof !392

3:                                                ; preds = %0
  tail call void @df_live_add_problem() #16
  tail call void @df_live_set_all_dirty() #16
  br label %4

4:                                                ; preds = %3, %0
  store i32 0, ptr @num_possible_if_blocks, align 4, !tbaa !381
  store i32 0, ptr @num_updated_if_blocks, align 4, !tbaa !381
  store i32 0, ptr @num_true_changes, align 4, !tbaa !381
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
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !393

12:                                               ; preds = %6
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.1, i32 noundef %9) #17
  br label %16

16:                                               ; preds = %14, %12, %6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !388
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !394
  %20 = load ptr, ptr %19, align 8, !tbaa !396
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !398
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !401
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %44, label %26, !prof !402

26:                                               ; preds = %16, %33
  %27 = phi ptr [ %34, %33 ], [ %22, %16 ]
  %28 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %27) #16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35, !prof !403

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @find_if_header(ptr noundef %27, i32 noundef %9) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !404

33:                                               ; preds = %30, %35
  %34 = phi ptr [ %31, %30 ], [ %37, %35 ]
  br label %26, !llvm.loop !405

35:                                               ; preds = %26, %30
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !398
  %38 = load ptr, ptr @cfun, align 8, !tbaa !388
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !394
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !401
  %43 = icmp eq ptr %37, %42
  br i1 %43, label %44, label %33, !prof !407

44:                                               ; preds = %35, %16
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47, !prof !393

47:                                               ; preds = %44
  %48 = load i1, ptr @cond_exec_changed_p, align 4
  br i1 %48, label %49, label %62

49:                                               ; preds = %47
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !381
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  %53 = tail call ptr @get_insns() #16
  br i1 %52, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !381
  tail call void @print_rtl_slim_with_bb(ptr noundef nonnull %45, ptr noundef %53, i32 noundef %55) #16
  br label %57

56:                                               ; preds = %49
  tail call void @print_rtl_with_bb(ptr noundef nonnull %45, ptr noundef %53) #16
  br label %57

57:                                               ; preds = %44, %56, %54
  %58 = load i1, ptr @cond_exec_changed_p, align 4
  br i1 %58, label %6, label %59, !prof !408, !llvm.loop !409

59:                                               ; preds = %57
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62, !prof !410

62:                                               ; preds = %47, %59
  %63 = phi ptr [ %60, %59 ], [ %45, %47 ]
  %64 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 29, i64 1, ptr nonnull %63)
  br label %65

65:                                               ; preds = %62, %59
  tail call void @free_dominance_info(i32 noundef 2) #16
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !411

68:                                               ; preds = %65
  %69 = tail call i32 @fflush(ptr noundef nonnull %66) #17
  br label %70

70:                                               ; preds = %68, %65
  tail call void @clear_aux_for_blocks() #16
  %71 = load i32, ptr @max_regno, align 4, !tbaa !381
  %72 = tail call i32 @max_reg_num() #16
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76, !prof !412

74:                                               ; preds = %70
  %75 = tail call i32 @max_reg_num() #16
  store i32 %75, ptr @max_regno, align 4, !tbaa !381
  br label %76

76:                                               ; preds = %74, %70
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %78 = icmp eq ptr %77, null
  br i1 %78, label %90, label %79, !prof !411

79:                                               ; preds = %76
  %80 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !381
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %77, ptr noundef nonnull @.str.3, i32 noundef %80) #17
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %85 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !381
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.4, i32 noundef %85) #17
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %88 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.5, i32 noundef %88) #17
  br label %90

90:                                               ; preds = %82, %79, %76
  %91 = load i32, ptr @optimize, align 4, !tbaa !381
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %97, !prof !392

93:                                               ; preds = %90
  %94 = load ptr, ptr @df, align 8, !tbaa !388
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 1, i64 2
  %96 = load ptr, ptr %95, align 8, !tbaa !388
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
define internal fastcc ptr @find_if_header(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !413 !PGOFuncName !414 {
  %3 = alloca %struct.ce_if_block, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !415
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #17
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %98, !prof !416

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 0) #17
  %10 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 1) #17
  %11 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !417
  %13 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %12) #16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %98, !prof !419

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !417
  %18 = tail call zeroext i8 @df_get_bb_dirty(ptr noundef %17) #16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %98, !prof !420

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !421
  %23 = and i32 %22, 14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %98, !prof !422

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !421
  %28 = and i32 %27, 14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %98, !prof !422

30:                                               ; preds = %25
  %31 = or i32 %27, %22
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %98, !prof !423

34:                                               ; preds = %30
  %35 = and i32 %22, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40, !prof !424

37:                                               ; preds = %34
  %38 = and i32 %27, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %98, label %40, !prof !425

40:                                               ; preds = %37, %34
  %41 = phi ptr [ %9, %34 ], [ %10, %37 ]
  %42 = phi ptr [ %10, %34 ], [ %9, %37 ]
  %43 = getelementptr inbounds i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %43, i8 0, i64 48, i1 false)
  store ptr %0, ptr %3, align 8, !tbaa !426
  %44 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !417
  %46 = getelementptr inbounds %struct.ce_if_block, ptr %3, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !428
  %47 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !417
  %49 = getelementptr inbounds %struct.ce_if_block, ptr %3, i64 0, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !429
  %50 = getelementptr inbounds %struct.ce_if_block, ptr %3, i64 0, i32 12
  store i32 %1, ptr %50, align 4, !tbaa !430
  %51 = load i32, ptr @reload_completed, align 4, !tbaa !381
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56, !prof !431

53:                                               ; preds = %40
  %54 = tail call fastcc i32 @noce_find_if_block(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42, i32 noundef %1) #17, !range !432
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %91, !prof !433

56:                                               ; preds = %53, %40
  %57 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !434
  %58 = tail call zeroext i8 %57() #16
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %66, label %60, !prof !446

60:                                               ; preds = %56
  %61 = load i32, ptr @reload_completed, align 4, !tbaa !381
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = call fastcc i32 @cond_exec_find_if_block(ptr noundef nonnull %3) #17, !range !432
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %63, %60, %56
  %67 = load i32, ptr @word_mode, align 4, !tbaa !381
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 118, i32 4, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !447
  %71 = icmp eq i32 %70, 2956
  br i1 %71, label %75, label %72, !prof !446

72:                                               ; preds = %66
  %73 = tail call fastcc i32 @find_cond_trap(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42) #17, !range !432
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72, %66
  %76 = tail call i32 @dom_info_state(i32 noundef 2) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %98, label %78, !prof !449

78:                                               ; preds = %75
  %79 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !434
  %80 = tail call zeroext i8 %79() #16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82, !prof !446

82:                                               ; preds = %78
  %83 = load i32, ptr @reload_completed, align 4, !tbaa !381
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %82, %78
  %86 = tail call fastcc i32 @find_if_case_1(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42) #17, !range !432
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91, !prof !450

88:                                               ; preds = %85
  %89 = tail call fastcc i32 @find_if_case_2(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42) #17, !range !432
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91, !prof !451

91:                                               ; preds = %88, %85, %72, %63, %53
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94, !prof !452

94:                                               ; preds = %91
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %92, ptr noundef nonnull @.str.6, i32 noundef %1) #17
  br label %96

96:                                               ; preds = %94, %91
  store i1 true, ptr @cond_exec_changed_p, align 4
  %97 = load ptr, ptr %3, align 8, !tbaa !426
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !453 !PGOFuncName !454 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !455

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !456
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !458 !PGOFuncName !459 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !388
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_find_if_block(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !460 !PGOFuncName !461 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.noce_if_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #18
  %7 = load i32, ptr @reload_completed, align 4, !tbaa !381
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !462

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2792, ptr noundef nonnull @.str.8) #16
  br label %10

10:                                               ; preds = %4, %9
  %11 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !417
  %13 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %12) #17, !range !463
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %35, label %15, !prof !464

15:                                               ; preds = %10
  %16 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %12) #17, !range !463
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %35, label %18, !prof !465

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !417
  %21 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %20) #17, !range !463
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23, !prof !466

23:                                               ; preds = %18
  %24 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %20) #17, !range !463
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %35, label %26, !prof !467

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @single_succ(ptr noundef %12) #17
  %28 = load ptr, ptr %19, align 8, !tbaa !417
  %29 = tail call fastcc ptr @single_succ(ptr noundef %28) #17
  %30 = icmp eq ptr %27, %29
  %31 = load ptr, ptr %11, align 8, !tbaa !417
  br i1 %30, label %32, label %35, !prof !468

32:                                               ; preds = %26
  %33 = load ptr, ptr %19, align 8, !tbaa !417
  %34 = tail call fastcc ptr @single_succ(ptr noundef %31) #17
  br label %64

35:                                               ; preds = %26, %23, %18, %15, %10
  %36 = phi ptr [ %31, %26 ], [ %12, %23 ], [ %12, %18 ], [ %12, %15 ], [ %12, %10 ]
  %37 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %36) #17, !range !463
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39, !prof !469

39:                                               ; preds = %35
  %40 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %36) #17, !range !463
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42, !prof !470

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @single_succ(ptr noundef %36) #17
  %44 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !417
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %47, label %49, !prof !471

47:                                               ; preds = %42
  %48 = load ptr, ptr %11, align 8, !tbaa !417
  br label %64

49:                                               ; preds = %42, %39, %35
  %50 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !417
  %52 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %51) #17, !range !463
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %144, label %54, !prof !472

54:                                               ; preds = %49
  %55 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %51) #17, !range !463
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %144, label %57, !prof !473

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @single_succ(ptr noundef %51) #17
  %59 = load ptr, ptr %11, align 8, !tbaa !417
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %144, !prof !474

61:                                               ; preds = %57
  %62 = load ptr, ptr %50, align 8, !tbaa !417
  %63 = tail call fastcc ptr @single_succ(ptr noundef %62) #17
  br label %64

64:                                               ; preds = %47, %61, %32
  %65 = phi ptr [ %33, %32 ], [ null, %47 ], [ null, %61 ]
  %66 = phi ptr [ %34, %32 ], [ %43, %47 ], [ %63, %61 ]
  %67 = phi i8 [ 0, %32 ], [ 0, %47 ], [ 1, %61 ]
  %68 = phi ptr [ %31, %32 ], [ %48, %47 ], [ %62, %61 ]
  %69 = tail call fastcc ptr @single_succ_edge(ptr noundef %68) #17
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !421
  %72 = and i32 %71, 14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %144, !prof !475

74:                                               ; preds = %64
  %75 = icmp eq ptr %65, null
  br i1 %75, label %82, label %76, !prof !476

76:                                               ; preds = %74
  %77 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %65) #17
  %78 = getelementptr inbounds %struct.edge_def, ptr %77, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !421
  %80 = and i32 %79, 14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %144, !prof !477

82:                                               ; preds = %76, %74
  %83 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !381
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr @num_possible_if_blocks, align 4, !tbaa !381
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %86 = icmp eq ptr %85, null
  br i1 %86, label %104, label %87, !prof !478

87:                                               ; preds = %82
  %88 = select i1 %75, ptr @.str.11, ptr @.str.10
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !479
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !479
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %85, ptr noundef nonnull @.str.9, ptr noundef nonnull %88, i32 noundef %3, i32 noundef %90, i32 noundef %92) #17
  br i1 %75, label %99, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !479
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.12, i32 noundef %97) #17
  br label %99

99:                                               ; preds = %94, %87
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !479
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.13, i32 noundef %102) #17
  br label %104

104:                                              ; preds = %99, %82
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !480
  %107 = getelementptr inbounds %struct.rtl_bb_info, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !481
  %109 = tail call i32 @onlyjump_p(ptr noundef %108) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %144, label %111, !prof !483

111:                                              ; preds = %104
  %112 = call fastcc ptr @noce_get_condition(ptr noundef %108, ptr noundef nonnull %5, i8 noundef zeroext %67) #17
  %113 = icmp eq ptr %112, null
  br i1 %113, label %144, label %114, !prof !484

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !480
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 16711680
  %119 = icmp eq i32 %118, 65536
  br i1 %119, label %144, label %120, !prof !485

120:                                              ; preds = %114
  %121 = getelementptr inbounds i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %121, i8 0, i64 48, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !486
  %122 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 1
  store ptr %68, ptr %122, align 8, !tbaa !488
  %123 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 2
  store ptr %65, ptr %123, align 8, !tbaa !489
  %124 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 3
  store ptr %66, ptr %124, align 8, !tbaa !490
  %125 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 5
  store ptr %112, ptr %125, align 8, !tbaa !491
  %126 = load ptr, ptr %5, align 8, !tbaa !388
  %127 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 6
  store ptr %126, ptr %127, align 8, !tbaa !492
  %128 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 4
  store ptr %108, ptr %128, align 8, !tbaa !493
  %129 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 12
  store i8 %67, ptr %129, align 8, !tbaa !494
  %130 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %0) #16
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %137, label %132, !prof !495

132:                                              ; preds = %120
  %133 = call zeroext i8 @predictable_edge_p(ptr noundef nonnull %1) #16
  %134 = icmp eq i8 %133, 0
  %135 = load i32, ptr @ix86_branch_cost, align 4
  %136 = select i1 %134, i32 %135, i32 0, !prof !496
  br label %137

137:                                              ; preds = %120, %132
  %138 = phi i32 [ %136, %132 ], [ 2, %120 ]
  %139 = getelementptr inbounds %struct.noce_if_info, ptr %6, i64 0, i32 13
  store i32 %138, ptr %139, align 4, !tbaa !497
  %140 = call fastcc i32 @noce_process_if_block(ptr noundef nonnull %6) #17, !range !432
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144, !prof !498

142:                                              ; preds = %137
  %143 = call fastcc i32 @cond_move_process_if_block(ptr noundef nonnull %6) #17, !range !432
  br label %144

144:                                              ; preds = %142, %137, %114, %111, %104, %76, %64, %49, %54, %57
  %145 = phi i32 [ 0, %57 ], [ 0, %54 ], [ 0, %49 ], [ 0, %64 ], [ 0, %76 ], [ 0, %104 ], [ 0, %111 ], [ 0, %114 ], [ 1, %137 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret i32 %145
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_exec_find_if_block(ptr nocapture noundef %0) unnamed_addr #0 !prof !499 !PGOFuncName !500 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  %7 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !429
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %9 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  store ptr %4, ptr %9, align 8, !tbaa !501
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !434
  %11 = tail call zeroext i8 %10() #16
  %12 = icmp ne i8 %11, 0
  %13 = load i32, ptr @reload_completed, align 4
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3188, ptr noundef nonnull @.str.8) #16
  br label %17

17:                                               ; preds = %1, %16
  %18 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %4) #17, !range !463
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %73, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @single_pred_edge(ptr noundef %4) #17
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !421
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %73

25:                                               ; preds = %20
  %26 = tail call fastcc ptr @single_pred(ptr noundef %4) #17
  %27 = load ptr, ptr @cfun, align 8, !tbaa !388
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
  store i32 %39, ptr %42, align 8, !tbaa !502
  %43 = icmp eq ptr %40, null
  %44 = icmp sgt i32 %41, %32
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %73, label %46

46:                                               ; preds = %38
  store ptr %4, ptr %9, align 8, !tbaa !501
  br label %47

47:                                               ; preds = %56, %46
  %48 = phi i32 [ %41, %46 ], [ %58, %56 ]
  %49 = phi i32 [ 0, %46 ], [ %52, %56 ]
  %50 = phi i32 [ 0, %46 ], [ %53, %56 ]
  %51 = phi ptr [ %26, %46 ], [ %57, %56 ]
  store ptr %51, ptr %0, align 8, !tbaa !426
  %52 = add nsw i32 %49, %48
  %53 = add nuw nsw i32 %50, 1
  %54 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %51) #17, !range !463
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = tail call fastcc ptr @single_pred(ptr noundef %51) #17
  %58 = tail call fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %57, ptr noundef nonnull %40) #17
  %59 = icmp slt i32 %58, 0
  %60 = add nsw i32 %58, %52
  %61 = icmp sgt i32 %60, %32
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %63, label %47, !llvm.loop !503

63:                                               ; preds = %56, %47
  %64 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  store i32 %53, ptr %64, align 8, !tbaa !504
  %65 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 8
  store i32 %52, ptr %65, align 4, !tbaa !505
  %66 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !502
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 6
  store i32 %53, ptr %70, align 4, !tbaa !506
  br label %73

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 7
  store i32 %53, ptr %72, align 8, !tbaa !507
  br label %73

73:                                               ; preds = %35, %38, %71, %69, %20, %17
  %74 = phi ptr [ %4, %20 ], [ %4, %17 ], [ %4, %38 ], [ %51, %71 ], [ %51, %69 ], [ %4, %35 ]
  %75 = load ptr, ptr %6, align 8, !tbaa !508
  %76 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %75) #17
  %77 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !507
  %79 = sub i32 %76, %78
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %317

81:                                               ; preds = %73
  %82 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %6) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !509
  %83 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %82, ptr %83, align 8, !tbaa.struct !510
  %84 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %82, ptr noundef nonnull %2) #17, !range !463
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81, %92
  %87 = load ptr, ptr %2, align 8, !tbaa !388
  %88 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !421
  %90 = and i32 %89, 14
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %317

92:                                               ; preds = %86
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %93 = load i32, ptr %3, align 8
  %94 = load ptr, ptr %83, align 8
  %95 = call fastcc zeroext i8 @ei_cond(i32 %93, ptr %94, ptr noundef nonnull %2) #17, !range !463
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %86, !llvm.loop !511

97:                                               ; preds = %92, %81
  %98 = tail call fastcc ptr @ei_start_1(ptr noundef %8) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !509
  store ptr %98, ptr %83, align 8, !tbaa.struct !510
  %99 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %98, ptr noundef nonnull %2) #17, !range !463
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %97, %107
  %102 = load ptr, ptr %2, align 8, !tbaa !388
  %103 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !421
  %105 = and i32 %104, 14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %317

107:                                              ; preds = %101
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %108 = load i32, ptr %3, align 8
  %109 = load ptr, ptr %83, align 8
  %110 = call fastcc zeroext i8 @ei_cond(i32 %108, ptr %109, ptr noundef nonnull %2) #17, !range !463
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %101, !llvm.loop !512

112:                                              ; preds = %107, %97
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !415
  %115 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %114) #17
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %112
  %118 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %6) #17, !range !463
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %317, label %120

120:                                              ; preds = %117
  %121 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %6) #17
  %122 = getelementptr inbounds %struct.edge_def, ptr %121, i64 0, i32 7
  %123 = load i32, ptr %122, align 8, !tbaa !421
  %124 = and i32 %123, 14
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %317

126:                                              ; preds = %120
  %127 = load i32, ptr @epilogue_completed, align 4, !tbaa !381
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !480
  %132 = getelementptr inbounds %struct.rtl_bb_info, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !481
  %134 = tail call zeroext i8 @tablejump_p(ptr noundef %133, ptr noundef null, ptr noundef null) #16
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %317

136:                                              ; preds = %129, %126, %112
  %137 = load ptr, ptr %113, align 8, !tbaa !415
  %138 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %137) #17
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %8) #17, !range !463
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %317, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %145 = load ptr, ptr %144, align 8, !tbaa !480
  %146 = getelementptr inbounds %struct.rtl_bb_info, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !480
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
  %154 = load ptr, ptr %145, align 8, !tbaa !513
  %155 = icmp eq ptr %150, %154
  br i1 %155, label %194, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1, i32 0, i32 0, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !480
  %159 = icmp eq ptr %158, null
  br i1 %159, label %194, label %149, !llvm.loop !514

160:                                              ; preds = %149
  %161 = tail call i32 @simplejump_p(ptr noundef nonnull %150) #16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %317, label %194

163:                                              ; preds = %136
  %164 = tail call fastcc ptr @single_succ(ptr noundef nonnull %6) #17
  %165 = icmp eq ptr %164, %8
  br i1 %165, label %194, label %166

166:                                              ; preds = %163
  %167 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %8) #17, !range !463
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %317, label %169

169:                                              ; preds = %166
  %170 = tail call fastcc ptr @single_succ(ptr noundef nonnull %6) #17
  %171 = tail call fastcc ptr @single_succ(ptr noundef %8) #17
  %172 = icmp eq ptr %170, %171
  br i1 %172, label %173, label %317

173:                                              ; preds = %169
  %174 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %8) #17, !range !463
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %317, label %176

176:                                              ; preds = %173
  %177 = tail call fastcc ptr @single_succ_edge(ptr noundef %8) #17
  %178 = getelementptr inbounds %struct.edge_def, ptr %177, i64 0, i32 7
  %179 = load i32, ptr %178, align 8, !tbaa !421
  %180 = and i32 %179, 14
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %317

182:                                              ; preds = %176
  %183 = load i32, ptr @epilogue_completed, align 4, !tbaa !381
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %187 = load ptr, ptr %186, align 8, !tbaa !480
  %188 = getelementptr inbounds %struct.rtl_bb_info, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !481
  %190 = tail call zeroext i8 @tablejump_p(ptr noundef %189, ptr noundef null, ptr noundef null) #16
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %317

192:                                              ; preds = %185, %182
  %193 = tail call fastcc ptr @single_succ(ptr noundef %8) #17
  br label %194

194:                                              ; preds = %156, %153, %149, %143, %160, %163, %192
  %195 = phi ptr [ %193, %192 ], [ %8, %163 ], [ %8, %160 ], [ %8, %143 ], [ %8, %149 ], [ %8, %153 ], [ %8, %156 ]
  %196 = phi ptr [ %8, %192 ], [ null, %163 ], [ null, %160 ], [ null, %143 ], [ null, %149 ], [ null, %153 ], [ null, %156 ]
  %197 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !381
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr @num_possible_if_blocks, align 4, !tbaa !381
  %199 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %200 = icmp eq ptr %199, null
  br i1 %200, label %284, label %201

201:                                              ; preds = %194
  %202 = icmp eq ptr %196, null
  %203 = select i1 %202, ptr @.str.11, ptr @.str.10
  %204 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 12
  %205 = load i32, ptr %204, align 4, !tbaa !430
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %207 = load i32, ptr %206, align 8, !tbaa !479
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !480
  %210 = load ptr, ptr %209, align 8, !tbaa !513
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %201
  %213 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !480
  br label %215

215:                                              ; preds = %201, %212
  %216 = phi i32 [ %214, %212 ], [ -1, %201 ]
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %218 = load i32, ptr %217, align 8, !tbaa !479
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %220 = load ptr, ptr %219, align 8, !tbaa !480
  %221 = load ptr, ptr %220, align 8, !tbaa !513
  %222 = icmp eq ptr %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !480
  br label %226

226:                                              ; preds = %215, %223
  %227 = phi i32 [ %225, %223 ], [ -1, %215 ]
  %228 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %199, ptr noundef nonnull @.str.15, ptr noundef nonnull %203, i32 noundef %205, i32 noundef %207, i32 noundef %216, i32 noundef %218, i32 noundef %227) #17
  br i1 %202, label %243, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %231 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 9
  %232 = load i32, ptr %231, align 8, !tbaa !479
  %233 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 7
  %234 = load ptr, ptr %233, align 8, !tbaa !480
  %235 = load ptr, ptr %234, align 8, !tbaa !513
  %236 = icmp eq ptr %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %229
  %238 = getelementptr inbounds %struct.rtx_def, ptr %235, i64 0, i32 1
  %239 = load i32, ptr %238, align 8, !tbaa !480
  br label %240

240:                                              ; preds = %229, %237
  %241 = phi i32 [ %239, %237 ], [ -1, %229 ]
  %242 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef nonnull @.str.16, i32 noundef %232, i32 noundef %241) #17
  br label %243

243:                                              ; preds = %240, %226
  %244 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %245 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 9
  %246 = load i32, ptr %245, align 8, !tbaa !479
  %247 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 7
  %248 = load ptr, ptr %247, align 8, !tbaa !480
  %249 = load ptr, ptr %248, align 8, !tbaa !513
  %250 = icmp eq ptr %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.rtx_def, ptr %249, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !480
  br label %254

254:                                              ; preds = %243, %251
  %255 = phi i32 [ %253, %251 ], [ -1, %243 ]
  %256 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef nonnull @.str.17, i32 noundef %246, i32 noundef %255) #17
  %257 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %258 = load i32, ptr %257, align 8, !tbaa !504
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %281

260:                                              ; preds = %254
  %261 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %262 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %263 = load i32, ptr %262, align 8, !tbaa !502
  %264 = icmp eq i32 %263, 0
  %265 = select i1 %264, ptr @.str.20, ptr @.str.19
  %266 = icmp eq i32 %258, 1
  %267 = select i1 %266, ptr @.str.11, ptr @.str.21
  %268 = load ptr, ptr %9, align 8, !tbaa !501
  %269 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 9
  %270 = load i32, ptr %269, align 8, !tbaa !479
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 7
  %272 = load ptr, ptr %271, align 8, !tbaa !480
  %273 = load ptr, ptr %272, align 8, !tbaa !513
  %274 = icmp eq ptr %273, null
  br i1 %274, label %278, label %275

275:                                              ; preds = %260
  %276 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1
  %277 = load i32, ptr %276, align 8, !tbaa !480
  br label %278

278:                                              ; preds = %260, %275
  %279 = phi i32 [ %277, %275 ], [ -1, %260 ]
  %280 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef nonnull @.str.18, i32 noundef %258, ptr noundef nonnull %265, ptr noundef nonnull %267, i32 noundef %270, i32 noundef %279) #17
  br label %281

281:                                              ; preds = %278, %254
  %282 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %283 = tail call i32 @fputc(i32 noundef 10, ptr noundef %282) #17
  br label %284

284:                                              ; preds = %281, %194
  %285 = icmp ne ptr %196, null
  br i1 %285, label %286, label %290

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %288 = load ptr, ptr %287, align 8, !tbaa !398
  %289 = icmp eq ptr %288, %196
  br i1 %289, label %290, label %317

290:                                              ; preds = %286, %284
  %291 = phi ptr [ %196, %286 ], [ %6, %284 ]
  %292 = getelementptr inbounds %struct.basic_block_def, ptr %291, i64 0, i32 6
  %293 = load ptr, ptr %292, align 8, !tbaa !398
  %294 = icmp eq ptr %293, %195
  br i1 %294, label %304, label %295

295:                                              ; preds = %290
  %296 = load ptr, ptr @cfun, align 8, !tbaa !388
  %297 = getelementptr inbounds %struct.function, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !394
  %299 = getelementptr inbounds %struct.control_flow_graph, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !401
  %301 = icmp eq ptr %195, %300
  %302 = or i1 %285, %301
  %303 = select i1 %301, ptr %195, ptr null
  br i1 %302, label %304, label %317

304:                                              ; preds = %295, %290
  %305 = phi ptr [ %303, %295 ], [ %195, %290 ]
  store ptr %196, ptr %7, align 8, !tbaa !429
  %306 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 3
  store ptr %305, ptr %306, align 8, !tbaa !515
  %307 = tail call fastcc i32 @cond_exec_process_if_block(ptr noundef nonnull %0, i32 noundef 1) #17
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %311 = load i32, ptr %310, align 8, !tbaa !504
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
define internal fastcc noundef i32 @find_cond_trap(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !499 !PGOFuncName !516 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !417
  %7 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !417
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
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !479
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !479
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %18, ptr noundef nonnull @.str.25, i32 noundef %22, i32 noundef %24) #17
  br label %26

26:                                               ; preds = %20, %14
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !480
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !481
  %31 = call fastcc ptr @noce_get_condition(ptr noundef %30, ptr noundef nonnull %4, i8 noundef zeroext 0) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %104, label %33

33:                                               ; preds = %26
  %34 = call i32 @onlyjump_p(ptr noundef %30) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %104, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !480
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
  %50 = load ptr, ptr %37, align 8, !tbaa !480
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi ptr [ %50, %49 ], [ %38, %42 ]
  %53 = phi i32 [ %47, %49 ], [ %44, %42 ]
  %54 = call ptr @copy_rtx(ptr noundef %52) #16
  %55 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !480
  %57 = call ptr @copy_rtx(ptr noundef %56) #16
  %58 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !480
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !480
  %62 = call ptr @gen_cond_trap(i32 noundef %53, ptr noundef %54, ptr noundef %57, ptr noundef %61) #16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %104, label %64

64:                                               ; preds = %51
  %65 = load ptr, ptr %4, align 8, !tbaa !388
  %66 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !480
  %68 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %62, ptr noundef %65, i32 noundef %67) #16
  %69 = select i1 %45, ptr %1, ptr %2
  call void @remove_edge(ptr noundef %69) #16
  call void @df_set_bb_dirty(ptr noundef nonnull %0) #16
  call void @df_set_bb_dirty(ptr noundef %6) #16
  call void @df_set_bb_dirty(ptr noundef %8) #16
  %70 = load ptr, ptr %16, align 8, !tbaa !508
  %71 = call fastcc i32 @VEC_edge_base_length(ptr noundef %70) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  call void @delete_basic_block(ptr noundef nonnull %16) #16
  %74 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr @num_true_changes, align 4, !tbaa !381
  br label %76

76:                                               ; preds = %73, %64
  %77 = call i32 @current_ir_type() #16
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #17
  %81 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 7
  %82 = load i32, ptr %81, align 8, !tbaa !421
  %83 = or i32 %82, 1
  store i32 %83, ptr %81, align 8, !tbaa !421
  br label %94

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !480
  %87 = call ptr @gen_jump(ptr noundef %86) #16
  %88 = call ptr @emit_jump_insn_after(ptr noundef %87, ptr noundef %30) #16
  %89 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !480
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %89, align 8, !tbaa !480
  %92 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %86, ptr %92, align 8, !tbaa !480
  %93 = call ptr @emit_barrier_after(ptr noundef %88) #16
  br label %94

94:                                               ; preds = %84, %79
  %95 = call ptr @delete_insn(ptr noundef %30) #16
  %96 = call zeroext i8 @can_merge_blocks_p(ptr noundef nonnull %0, ptr noundef %17) #16
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  call void @merge_blocks(ptr noundef nonnull %0, ptr noundef %17) #16
  %99 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr @num_true_changes, align 4, !tbaa !381
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !381
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr @num_updated_if_blocks, align 4, !tbaa !381
  br label %104

104:                                              ; preds = %51, %46, %36, %33, %26, %11, %101
  %105 = phi i32 [ 1, %101 ], [ 0, %11 ], [ 0, %26 ], [ 0, %33 ], [ 0, %36 ], [ 0, %46 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i32 %105
}

; Function Attrs: optsize
declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_if_case_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !517 !PGOFuncName !518 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !417
  %6 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !417
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !481
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !449

13:                                               ; preds = %3
  %14 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 29, ptr noundef null) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %136, !prof !446

16:                                               ; preds = %13, %3
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !480
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !481
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !449

22:                                               ; preds = %16
  %23 = tail call ptr @find_reg_note(ptr noundef nonnull %20, i32 noundef 29, ptr noundef null) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %136, !prof !446

25:                                               ; preds = %22, %16
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !480
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !481
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !449

31:                                               ; preds = %25
  %32 = tail call ptr @find_reg_note(ptr noundef nonnull %29, i32 noundef 29, ptr noundef null) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %136, !prof !446

34:                                               ; preds = %31, %25
  %35 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %5) #17, !range !463
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %136, label %37, !prof !519

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %5) #17
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !421
  %41 = and i32 %40, 15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %136, !prof !520

43:                                               ; preds = %37
  %44 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %5) #17, !range !463
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %136, label %46, !prof !521

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %5) #16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %136, !prof !522

49:                                               ; preds = %46
  %50 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !381
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr @num_possible_if_blocks, align 4, !tbaa !381
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54, !prof !523

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !479
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !479
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %52, ptr noundef nonnull @.str.26, i32 noundef %56, i32 noundef %58) #17
  br label %60

60:                                               ; preds = %54, %49
  %61 = load ptr, ptr %1, align 8, !tbaa !524
  %62 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %61) #16
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64, !prof !525

64:                                               ; preds = %60
  %65 = tail call zeroext i8 @predictable_edge_p(ptr noundef nonnull %1) #16
  %66 = icmp eq i8 %65, 0
  %67 = load i32, ptr @ix86_branch_cost, align 4
  %68 = shl nsw i32 %67, 2
  %69 = select i1 %66, i32 %68, i32 0, !prof !526
  br label %70

70:                                               ; preds = %60, %64
  %71 = phi i32 [ %69, %64 ], [ 8, %60 ]
  %72 = tail call fastcc zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef nonnull %5, i32 noundef %71) #17
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %136, label %74, !prof !527

74:                                               ; preds = %70
  %75 = tail call fastcc ptr @single_succ(ptr noundef nonnull %5) #17
  %76 = tail call fastcc i32 @dead_or_predicable(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %75, i32 noundef 1) #17, !range !432
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %136, label %78, !prof !528

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !398
  %81 = icmp eq ptr %80, %7
  br i1 %81, label %82, label %105, !prof !529

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !530
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %86, label %105, !prof !531

86:                                               ; preds = %82
  %87 = load ptr, ptr @cfun, align 8, !tbaa !388
  %88 = getelementptr inbounds %struct.function, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !394
  %90 = getelementptr inbounds %struct.control_flow_graph, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !401
  %92 = icmp eq ptr %7, %91
  br i1 %92, label %105, label %93, !prof !532

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !415
  %96 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %95, i32 noundef 0) #17
  %97 = getelementptr inbounds %struct.edge_def, ptr %96, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !421
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103, !prof !533

101:                                              ; preds = %93
  %102 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %95, i32 noundef 1) #17
  br label %103

103:                                              ; preds = %93, %101
  %104 = phi ptr [ %102, %101 ], [ %96, %93 ]
  tail call void @redirect_edge_succ(ptr noundef %104, ptr noundef nonnull %7) #16
  br label %118

105:                                              ; preds = %86, %82, %78
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !415
  %108 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %107, i32 noundef 0) #17
  %109 = getelementptr inbounds %struct.edge_def, ptr %108, i64 0, i32 7
  %110 = load i32, ptr %109, align 8, !tbaa !421
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115, !prof !534

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
  %121 = load i32, ptr %120, align 8, !tbaa !479
  tail call void @delete_basic_block(ptr noundef nonnull %5) #16
  %122 = icmp eq ptr %119, null
  br i1 %122, label %131, label %123, !prof !529

123:                                              ; preds = %118
  tail call void @df_bb_replace(i32 noundef %121, ptr noundef nonnull %119) #16
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 13
  %125 = load i32, ptr %124, align 8, !tbaa !535
  %126 = and i32 %125, -97
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %128 = load i32, ptr %127, align 8, !tbaa !535
  %129 = and i32 %128, 96
  %130 = or disjoint i32 %129, %126
  store i32 %130, ptr %124, align 8, !tbaa !535
  br label %131

131:                                              ; preds = %123, %118
  %132 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr @num_true_changes, align 4, !tbaa !381
  %134 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !381
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr @num_updated_if_blocks, align 4, !tbaa !381
  br label %136

136:                                              ; preds = %74, %70, %46, %43, %37, %34, %13, %22, %31, %131
  %137 = phi i32 [ 1, %131 ], [ 0, %31 ], [ 0, %22 ], [ 0, %13 ], [ 0, %34 ], [ 0, %37 ], [ 0, %43 ], [ 0, %46 ], [ 0, %70 ], [ 0, %74 ]
  ret i32 %137
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_if_case_2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !536 !PGOFuncName !537 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !417
  %6 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !417
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !481
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !538

13:                                               ; preds = %3
  %14 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 29, ptr noundef null) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %106, !prof !539

16:                                               ; preds = %13, %3
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !480
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !481
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !538

22:                                               ; preds = %16
  %23 = tail call ptr @find_reg_note(ptr noundef nonnull %20, i32 noundef 29, ptr noundef null) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %106, !prof !539

25:                                               ; preds = %22, %16
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !480
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !481
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !538

31:                                               ; preds = %25
  %32 = tail call ptr @find_reg_note(ptr noundef nonnull %29, i32 noundef 29, ptr noundef null) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %106, !prof !539

34:                                               ; preds = %31, %25
  %35 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %7) #17, !range !463
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %106, label %37, !prof !540

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %7) #17
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !421
  %41 = and i32 %40, 14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %106, !prof !541

43:                                               ; preds = %37
  %44 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %7) #17, !range !463
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %106, label %46, !prof !542

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !479
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %106, label %50, !prof !543

50:                                               ; preds = %46
  %51 = load ptr, ptr %17, align 8, !tbaa !480
  %52 = getelementptr inbounds %struct.rtl_bb_info, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !481
  %54 = tail call ptr @find_reg_note(ptr noundef %53, i32 noundef 13, ptr noundef null) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56, !prof !543

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !480
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !480
  %61 = icmp sgt i64 %60, 4999
  br i1 %61, label %71, label %62, !prof !544

62:                                               ; preds = %56, %50
  %63 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !417
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !479
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %71, label %68, !prof !545

68:                                               ; preds = %62
  %69 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %64) #16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %106, label %71, !prof !546

71:                                               ; preds = %68, %62, %56
  %72 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !381
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr @num_possible_if_blocks, align 4, !tbaa !381
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76, !prof !547

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !479
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !479
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %74, ptr noundef nonnull @.str.27, i32 noundef %78, i32 noundef %80) #17
  br label %82

82:                                               ; preds = %76, %71
  %83 = load ptr, ptr %2, align 8, !tbaa !524
  %84 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %83) #16
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %92, label %86, !prof !548

86:                                               ; preds = %82
  %87 = tail call zeroext i8 @predictable_edge_p(ptr noundef nonnull %2) #16
  %88 = icmp eq i8 %87, 0
  %89 = load i32, ptr @ix86_branch_cost, align 4
  %90 = shl nsw i32 %89, 2
  %91 = select i1 %88, i32 %90, i32 0, !prof !549
  br label %92

92:                                               ; preds = %82, %86
  %93 = phi i32 [ %91, %86 ], [ 8, %82 ]
  %94 = tail call fastcc zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef nonnull %7, i32 noundef %93) #17
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %106, label %96, !prof !550

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !417
  %99 = tail call fastcc i32 @dead_or_predicable(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %98, i32 noundef 0) #17, !range !432
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101, !prof !551

101:                                              ; preds = %96
  tail call void @df_set_bb_dirty(ptr noundef nonnull %0) #16
  tail call void @df_set_bb_dirty(ptr noundef nonnull %5) #16
  tail call void @delete_basic_block(ptr noundef nonnull %7) #16
  %102 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr @num_true_changes, align 4, !tbaa !381
  %104 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !381
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr @num_updated_if_blocks, align 4, !tbaa !381
  br label %106

106:                                              ; preds = %96, %92, %68, %46, %43, %37, %34, %13, %22, %31, %101
  %107 = phi i32 [ 1, %101 ], [ 0, %31 ], [ 0, %22 ], [ 0, %13 ], [ 0, %34 ], [ 0, %37 ], [ 0, %43 ], [ 0, %46 ], [ 0, %68 ], [ 0, %92 ], [ 0, %96 ]
  ret i32 %107
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !552 !PGOFuncName !553 {
  %2 = load ptr, ptr %0, align 8, !tbaa !508
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !554 !PGOFuncName !555 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !415
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !556 !PGOFuncName !557 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !417
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !558 !PGOFuncName !559 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !463
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !560

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 645, ptr noundef nonnull @.str.8) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !415
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #17
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @noce_get_condition(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !561 !PGOFuncName !562 {
  %4 = tail call i32 @any_condjump_p(ptr noundef %0) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %56, label %6, !prof !563

6:                                                ; preds = %3
  %7 = tail call ptr @pc_set(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !480
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 44
  br i1 %14, label %15, label %22, !prof !563

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !480
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !480
  %20 = icmp eq ptr %17, %19
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %15, %6
  %23 = phi i8 [ 0, %6 ], [ %21, %15 ]
  %24 = icmp ne i8 %2, 0
  %25 = zext i1 %24 to i8
  %26 = xor i8 %23, %25
  %27 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !480
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !480
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %53, !prof !564

34:                                               ; preds = %22
  %35 = lshr i32 %31, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !480
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %41, label %53, !prof !565

41:                                               ; preds = %34
  store ptr %0, ptr %1, align 8, !tbaa !388
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
  %51 = load ptr, ptr %50, align 8, !tbaa !480
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
define internal fastcc noundef i32 @noce_process_if_block(ptr nocapture noundef %0) unnamed_addr #0 !prof !566 !PGOFuncName !567 {
  %2 = load ptr, ptr %0, align 8, !tbaa !486
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !488
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !489
  %7 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !490
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !493
  %11 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !491
  %13 = tail call fastcc ptr @first_active_insn(ptr noundef %4) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %297, label %15, !prof !568

15:                                               ; preds = %1
  %16 = tail call fastcc ptr @last_active_insn(ptr noundef %4, i32 noundef 0) #17
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %18, label %297, !prof !569

18:                                               ; preds = %15
  %19 = load i32, ptr %13, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -7
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %297, !prof !570

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !480
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %32, label %29, !prof !571

29:                                               ; preds = %23
  %30 = tail call ptr @single_set_2(ptr noundef nonnull %13, ptr noundef nonnull %25) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %297, label %32, !prof !572

32:                                               ; preds = %23, %29
  %33 = phi ptr [ %30, %29 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !480
  %36 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !480
  %38 = icmp ne ptr %6, null
  br i1 %38, label %39, label %65, !prof !573

39:                                               ; preds = %32
  %40 = tail call fastcc ptr @first_active_insn(ptr noundef nonnull %6) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %297, label %42, !prof !574

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @last_active_insn(ptr noundef nonnull %6, i32 noundef 0) #17
  %44 = icmp eq ptr %40, %43
  br i1 %44, label %45, label %297, !prof !575

45:                                               ; preds = %42
  %46 = load i32, ptr %40, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %297, !prof !576

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !480
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 23
  br i1 %55, label %59, label %56, !prof !577

56:                                               ; preds = %50
  %57 = tail call ptr @single_set_2(ptr noundef nonnull %40, ptr noundef nonnull %52) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %297, label %59

59:                                               ; preds = %50, %56
  %60 = phi ptr [ %57, %56 ], [ %52, %50 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !480
  %63 = tail call i32 @rtx_equal_p(ptr noundef %35, ptr noundef %62) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %297, label %124, !prof !578

65:                                               ; preds = %32
  %66 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !492
  %68 = tail call ptr @prev_nonnote_insn(ptr noundef %67) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %129, label %70, !prof !579

70:                                               ; preds = %65, %75
  %71 = phi ptr [ %76, %75 ], [ %68, %65 ]
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 7
  br i1 %74, label %75, label %78, !prof !580

75:                                               ; preds = %70
  %76 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %71) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %129, label %70, !prof !581, !llvm.loop !582

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !480
  %81 = load ptr, ptr %66, align 8, !tbaa !492
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !480
  %84 = icmp eq ptr %80, %83
  %85 = icmp eq i32 %73, 8
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %129, !prof !583

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !480
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 23
  br i1 %92, label %96, label %93, !prof !584

93:                                               ; preds = %87
  %94 = tail call ptr @single_set_2(ptr noundef nonnull %71, ptr noundef nonnull %89) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %129, label %96

96:                                               ; preds = %87, %93
  %97 = phi ptr [ %94, %93 ], [ %89, %87 ]
  %98 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !480
  %100 = tail call i32 @rtx_equal_p(ptr noundef %35, ptr noundef %99) #16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %129, label %102, !prof !585

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !480
  %105 = tail call fastcc i32 @noce_operand_ok(ptr noundef %104) #17, !range !432
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %129, label %107, !prof !586

107:                                              ; preds = %102
  %108 = load ptr, ptr %103, align 8, !tbaa !480
  %109 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %35, ptr noundef %108) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %129, !prof !587

111:                                              ; preds = %107
  %112 = load ptr, ptr %103, align 8, !tbaa !480
  %113 = tail call i32 @modified_between_p(ptr noundef %112, ptr noundef nonnull %71, ptr noundef %10) #16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %129, !prof !588

115:                                              ; preds = %111
  %116 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %35, ptr noundef %12) #16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129, !prof !589

118:                                              ; preds = %115
  %119 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %35, ptr noundef %37) #16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %129, !prof !590

121:                                              ; preds = %118
  %122 = tail call i32 @modified_between_p(ptr noundef %35, ptr noundef nonnull %71, ptr noundef %10) #16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129, !prof !591

124:                                              ; preds = %121, %59
  %125 = phi ptr [ %60, %59 ], [ %97, %121 ]
  %126 = phi ptr [ %40, %59 ], [ %71, %121 ]
  %127 = tail call i32 @side_effects_p(ptr noundef %35) #16
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %297, !prof !592

129:                                              ; preds = %75, %65, %78, %93, %96, %102, %107, %111, %115, %118, %121
  %130 = tail call i32 @side_effects_p(ptr noundef %35) #16
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %297, !prof !592

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 0, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !480
  br label %135

135:                                              ; preds = %129, %132
  %136 = phi i1 [ true, %132 ], [ false, %129 ]
  %137 = phi ptr [ %126, %132 ], [ null, %129 ]
  %138 = phi ptr [ %134, %132 ], [ %35, %129 ]
  %139 = load i32, ptr %35, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 37
  br i1 %141, label %142, label %145, !prof !593

142:                                              ; preds = %135
  %143 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #17
  %144 = icmp ult i32 %143, 53
  br i1 %144, label %148, label %174, !prof !594

145:                                              ; preds = %135
  %146 = and i32 %139, 16711680
  %147 = icmp eq i32 %146, 65536
  br i1 %147, label %297, label %151, !prof !595

148:                                              ; preds = %142
  %149 = and i32 %139, 16711680
  %150 = icmp eq i32 %149, 65536
  br i1 %150, label %297, label %169, !prof !595

151:                                              ; preds = %145
  %152 = trunc i32 %139 to i16
  switch i16 %152, label %169 [
    i16 120, label %153
    i16 40, label %165
  ], !prof !596

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !480
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 30
  br i1 %158, label %159, label %297

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %161 = load ptr, ptr %160, align 8, !tbaa !480
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 30
  br i1 %164, label %169, label %297

165:                                              ; preds = %151
  %166 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !480
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
  %176 = tail call fastcc i32 @noce_operand_ok(ptr noundef %37) #17, !range !432
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %297, label %178, !prof !597

178:                                              ; preds = %174
  %179 = tail call fastcc i32 @noce_operand_ok(ptr noundef %138) #17, !range !432
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %297, label %181, !prof !598

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
  store ptr %13, ptr %182, align 8, !tbaa !599
  store ptr %190, ptr %183, align 8, !tbaa !600
  store ptr %175, ptr %184, align 8, !tbaa !601
  store ptr %37, ptr %185, align 8, !tbaa !602
  store ptr %189, ptr %186, align 8, !tbaa !603
  %191 = tail call i32 @rtx_equal_p(ptr noundef %37, ptr noundef %189) #16
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %215, label %193, !prof !604

193:                                              ; preds = %187
  %194 = icmp ne ptr %190, null
  %195 = and i1 %38, %194
  br i1 %195, label %196, label %211, !prof !605

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %198 = load ptr, ptr %197, align 8, !tbaa !480
  %199 = getelementptr inbounds %struct.rtl_bb_info, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !481
  %201 = icmp eq ptr %190, %200
  br i1 %201, label %202, label %205, !prof !606

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1, i32 0, i32 0, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !480
  store ptr %204, ptr %199, align 8, !tbaa !481
  br label %205

205:                                              ; preds = %202, %196
  %206 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !480
  tail call void @reorder_insns(ptr noundef nonnull %190, ptr noundef nonnull %190, ptr noundef %207) #16
  %208 = tail call ptr @find_reg_note(ptr noundef nonnull %190, i32 noundef 4, ptr noundef null) #16
  %209 = icmp eq ptr %208, null
  br i1 %209, label %278, label %210, !prof !606

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
  br i1 %188, label %226, label %216, !prof !607

216:                                              ; preds = %215
  %217 = load i32, ptr %35, align 8
  %218 = and i32 %217, 65535
  %219 = icmp eq i32 %218, 43
  br i1 %219, label %220, label %226, !prof !608

220:                                              ; preds = %216
  %221 = tail call fastcc zeroext i8 @noce_mem_write_may_trap_or_fault_p(ptr noundef nonnull %35) #17, !range !463
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %297, !prof !609

223:                                              ; preds = %220
  %224 = tail call fastcc zeroext i8 @noce_can_store_speculate_p(ptr noundef %2, ptr noundef nonnull %35) #17
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %297, label %226, !prof !610

226:                                              ; preds = %223, %216, %215
  %227 = tail call fastcc i32 @noce_try_move(ptr noundef nonnull %0) #17, !range !432
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %266, !prof !611

229:                                              ; preds = %226
  %230 = tail call fastcc i32 @noce_try_store_flag(ptr noundef nonnull %0) #17, !range !432
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %266, !prof !612

232:                                              ; preds = %229
  %233 = tail call fastcc i32 @noce_try_bitop(ptr noundef nonnull %0) #17, !range !432
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %266, !prof !613

235:                                              ; preds = %232
  %236 = tail call fastcc i32 @noce_try_minmax(ptr noundef nonnull %0) #17, !range !432
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %266, !prof !613

238:                                              ; preds = %235
  %239 = tail call fastcc i32 @noce_try_abs(ptr noundef nonnull %0) #17, !range !432
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %266, !prof !613

241:                                              ; preds = %238
  %242 = tail call fastcc i32 @noce_try_cmove(ptr noundef nonnull %0) #17, !range !432
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %266, !prof !614

244:                                              ; preds = %241
  %245 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !434
  %246 = tail call zeroext i8 %245() #16
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %263, !prof !615

248:                                              ; preds = %244
  %249 = tail call fastcc i32 @noce_try_store_flag_constants(ptr noundef nonnull %0) #17, !range !432
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %266, !prof !615

251:                                              ; preds = %248
  %252 = tail call fastcc i32 @noce_try_addcc(ptr noundef nonnull %0) #17
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %266, !prof !616

254:                                              ; preds = %251
  %255 = tail call fastcc i32 @noce_try_store_flag_mask(ptr noundef nonnull %0) #17, !range !432
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %266, !prof !617

257:                                              ; preds = %254
  %258 = tail call fastcc i32 @noce_try_cmove_arith(ptr noundef nonnull %0) #17
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %266, !prof !618

260:                                              ; preds = %257
  %261 = tail call fastcc i32 @noce_try_sign_mask(ptr noundef nonnull %0) #17, !range !432
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %266, !prof !619

263:                                              ; preds = %260, %244
  %264 = icmp eq ptr %6, null
  %265 = and i1 %264, %188
  br i1 %265, label %187, label %297, !prof !620

266:                                              ; preds = %260, %257, %254, %251, %248, %241, %238, %235, %232, %229, %226
  %267 = icmp eq ptr %35, %175
  br i1 %267, label %277, label %268, !prof !621

268:                                              ; preds = %266
  tail call void @start_sequence() #16
  tail call fastcc void @noce_emit_move_insn(ptr noundef nonnull %35, ptr noundef %175) #17
  %269 = tail call ptr @get_insns() #16
  tail call void @set_used_flags(ptr noundef nonnull %35) #16
  tail call void @unshare_all_rtl_in_chain(ptr noundef %269) #16
  tail call void @end_sequence() #16
  %270 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !480
  %272 = getelementptr inbounds %struct.rtl_bb_info, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !481
  %274 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 2
  %275 = load i32, ptr %274, align 8, !tbaa !480
  %276 = tail call ptr @emit_insn_before_setloc(ptr noundef %269, ptr noundef %273, i32 noundef %275) #16
  br label %277

277:                                              ; preds = %212, %211, %268, %266
  br i1 %38, label %278, label %281, !prof !622

278:                                              ; preds = %205, %210, %277
  tail call void @delete_basic_block(ptr noundef nonnull %6) #16
  %279 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %280 = add nsw i32 %279, 1
  store i32 %280, ptr @num_true_changes, align 4, !tbaa !381
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
  %287 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr @num_true_changes, align 4, !tbaa !381
  %289 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %2, ptr noundef %8) #16
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %294, label %291, !prof !623

291:                                              ; preds = %283
  tail call void @merge_blocks(ptr noundef %2, ptr noundef %8) #16
  %292 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %293 = add nsw i32 %292, 1
  store i32 %293, ptr @num_true_changes, align 4, !tbaa !381
  br label %294

294:                                              ; preds = %291, %283
  %295 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !381
  %296 = add nsw i32 %295, 1
  store i32 %296, ptr @num_updated_if_blocks, align 4, !tbaa !381
  br label %297

297:                                              ; preds = %263, %223, %220, %45, %18, %148, %129, %212, %174, %178, %153, %159, %145, %124, %39, %42, %56, %59, %1, %15, %29, %294
  %298 = phi i32 [ 1, %294 ], [ 0, %29 ], [ 0, %15 ], [ 0, %1 ], [ 0, %59 ], [ 0, %56 ], [ 0, %42 ], [ 0, %39 ], [ 0, %124 ], [ 0, %145 ], [ 0, %159 ], [ 0, %153 ], [ 0, %178 ], [ 0, %174 ], [ 0, %212 ], [ 0, %129 ], [ 0, %148 ], [ 0, %18 ], [ 0, %45 ], [ 0, %220 ], [ 0, %223 ], [ 0, %263 ]
  ret i32 %298
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_move_process_if_block(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !624 !PGOFuncName !625 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !486
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !488
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !489
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !490
  %12 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !493
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !491
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !388
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
  br i1 %23, label %139, label %24, !prof !626

24:                                               ; preds = %1
  %25 = icmp eq ptr %9, null
  br i1 %25, label %29, label %26, !prof !627

26:                                               ; preds = %24
  %27 = call fastcc i32 @check_cond_move_block(ptr noundef nonnull %9, ptr noundef nonnull %21, ptr noundef nonnull %4, ptr noundef %15) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %139, label %29, !prof !628

29:                                               ; preds = %26, %24
  %30 = load ptr, ptr %3, align 8
  %31 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %2) #17, !range !432
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38, !prof !629

33:                                               ; preds = %70, %29
  %34 = phi i32 [ 0, %29 ], [ %71, %70 ]
  %35 = load ptr, ptr %4, align 8
  %36 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %2) #17, !range !432
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %88, label %75, !prof !630

38:                                               ; preds = %29, %70
  %39 = phi i32 [ %72, %70 ], [ 0, %29 ]
  %40 = phi i32 [ %71, %70 ], [ 0, %29 ]
  %41 = load i32, ptr %2, align 4, !tbaa !381
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %20, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !388
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds ptr, ptr %21, i64 %42
  %47 = load ptr, ptr %46, align 8, !tbaa !388
  %48 = icmp eq ptr %47, null
  br i1 %45, label %49, label %50, !prof !631

49:                                               ; preds = %38
  br i1 %48, label %70, label %53

50:                                               ; preds = %38
  br i1 %48, label %51, label %53, !prof !632

51:                                               ; preds = %50
  %52 = add nsw i32 %40, 1
  br label %70

53:                                               ; preds = %49, %50
  %54 = load i32, ptr %44, align 8
  %55 = and i32 %54, 65535
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !381
  %59 = icmp eq i32 %58, 9
  br i1 %59, label %70, label %60, !prof !633

60:                                               ; preds = %53
  %61 = load i32, ptr %47, align 8
  %62 = and i32 %61, 65535
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !381
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %70, label %67, !prof !634

67:                                               ; preds = %60
  %68 = tail call i32 @rtx_equal_p(ptr noundef nonnull %44, ptr noundef nonnull %47) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %139, label %70, !prof !635

70:                                               ; preds = %51, %67, %60, %53, %49
  %71 = phi i32 [ %40, %53 ], [ %40, %60 ], [ %40, %67 ], [ %52, %51 ], [ %40, %49 ]
  %72 = add i32 %39, 1
  %73 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %30, i32 noundef %72, ptr noundef nonnull %2) #17, !range !432
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %33, label %38, !prof !636, !llvm.loop !637

75:                                               ; preds = %33, %75
  %76 = phi i32 [ %85, %75 ], [ 0, %33 ]
  %77 = phi i32 [ %84, %75 ], [ %34, %33 ]
  %78 = load i32, ptr %2, align 4, !tbaa !381
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %20, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !388
  %82 = icmp eq ptr %81, null
  %83 = zext i1 %82 to i32
  %84 = add nsw i32 %77, %83
  %85 = add i32 %76, 1
  %86 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %35, i32 noundef %85, ptr noundef nonnull %2) #17, !range !432
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %75, !prof !638, !llvm.loop !639

88:                                               ; preds = %75, %33
  %89 = phi i32 [ %34, %33 ], [ %84, %75 ]
  %90 = load ptr, ptr @cfun, align 8, !tbaa !388
  %91 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %90) #16
  %92 = icmp eq i8 %91, 0
  %93 = load i32, ptr @ix86_branch_cost, align 4
  %94 = add nsw i32 %93, 1
  %95 = select i1 %92, i32 3, i32 %94, !prof !640
  %96 = icmp sgt i32 %89, %95
  br i1 %96, label %139, label %97, !prof !640

97:                                               ; preds = %88
  tail call void @start_sequence() #16
  %98 = call fastcc zeroext i8 @cond_move_convert_if_block(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %15, ptr noundef nonnull %20, ptr noundef nonnull %21, i8 noundef zeroext 0) #17
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %104, label %100, !prof !641

100:                                              ; preds = %97
  br i1 %25, label %105, label %101, !prof !642

101:                                              ; preds = %100
  %102 = call fastcc zeroext i8 @cond_move_convert_if_block(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef %15, ptr noundef nonnull %20, ptr noundef nonnull %21, i8 noundef zeroext 1) #17
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %105, !prof !643

104:                                              ; preds = %101, %97
  tail call void @end_sequence() #16
  br label %139

105:                                              ; preds = %101, %100
  %106 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %107 = icmp eq ptr %106, null
  br i1 %107, label %139, label %108, !prof !644

108:                                              ; preds = %105
  %109 = tail call fastcc ptr @first_active_insn(ptr noundef %7) #17
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %115, !prof !645

111:                                              ; preds = %108
  %112 = tail call fastcc ptr @first_active_insn(ptr noundef %9) #17
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2741, ptr noundef nonnull @.str.8) #16
  unreachable

115:                                              ; preds = %111, %108
  %116 = phi ptr [ %109, %108 ], [ %112, %111 ]
  %117 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !480
  %119 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %106, ptr noundef %13, i32 noundef %118) #16
  br i1 %25, label %123, label %120, !prof !646

120:                                              ; preds = %115
  tail call void @delete_basic_block(ptr noundef nonnull %9) #16
  %121 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr @num_true_changes, align 4, !tbaa !381
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
  %129 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr @num_true_changes, align 4, !tbaa !381
  %131 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %5, ptr noundef %11) #16
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %136, label %133, !prof !647

133:                                              ; preds = %125
  tail call void @merge_blocks(ptr noundef %5, ptr noundef %11) #16
  %134 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr @num_true_changes, align 4, !tbaa !381
  br label %136

136:                                              ; preds = %133, %125
  %137 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !381
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr @num_updated_if_blocks, align 4, !tbaa !381
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
define internal fastcc noundef ptr @first_active_insn(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !648 !PGOFuncName !649 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !480
  %4 = load ptr, ptr %3, align 8, !tbaa !513
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %15, !prof !650

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !481
  %11 = icmp eq ptr %4, %10
  br i1 %11, label %29, label %12, !prof !651

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !480
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
  ], !prof !652

22:                                               ; preds = %18, %18
  %23 = load ptr, ptr %17, align 8, !tbaa !481
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %28, label %25, !prof !653

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !480
  br label %18, !llvm.loop !654

28:                                               ; preds = %22, %18
  br label %29

29:                                               ; preds = %18, %28, %8
  %30 = phi ptr [ null, %8 ], [ null, %28 ], [ %19, %18 ]
  ret ptr %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @last_active_insn(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !655 !PGOFuncName !656 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !480
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  br label %6

6:                                                ; preds = %26, %2
  %7 = phi ptr [ %5, %2 ], [ %27, %26 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !480
  %9 = load i32, ptr %8, align 8
  %10 = freeze i32 %9
  %11 = and i32 %10, 65535
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %13 [
    i16 13, label %23
    i16 9, label %23
    i16 7, label %23
  ], !prof !657

13:                                               ; preds = %6
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %28, label %15, !prof !658

15:                                               ; preds = %13
  %16 = icmp eq i32 %11, 8
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !480
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 24
  br i1 %22, label %23, label %31, !prof !659

23:                                               ; preds = %6, %6, %6, %17
  %24 = load ptr, ptr %4, align 8, !tbaa !513
  %25 = icmp eq ptr %8, %24
  br i1 %25, label %31, label %26, !prof !660

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %6, !llvm.loop !661

28:                                               ; preds = %15, %13
  %29 = icmp eq i32 %11, 12
  %30 = select i1 %29, ptr null, ptr %8, !prof !662
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
define internal fastcc i32 @noce_operand_ok(ptr noundef %0) unnamed_addr #0 !prof !663 !PGOFuncName !664 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %10, !prof !665

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !480
  %8 = tail call i32 @side_effects_p(ptr noundef %7) #16
  %9 = icmp eq i32 %8, 0
  br label %16

10:                                               ; preds = %1
  %11 = tail call i32 @side_effects_p(ptr noundef nonnull %0) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !666

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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !667 !PGOFuncName !668 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !480
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
define internal fastcc noundef zeroext i8 @noce_mem_write_may_trap_or_fault_p(ptr noundef %0) unnamed_addr #0 !prof !669 !PGOFuncName !670 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 67108864
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %46, !prof !671

5:                                                ; preds = %1
  %6 = tail call i32 @may_trap_or_fault_p(ptr noundef nonnull %0) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46, !prof !609

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !480
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !672
  %12 = tail call ptr %11(ptr noundef %10) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14, !prof !673

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
  ], !prof !674

18:                                               ; preds = %14, %14, %14, %14, %14, %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %41

20:                                               ; preds = %14, %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %41

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !480
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %28, label %46, !prof !675

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %41

30:                                               ; preds = %14
  %31 = and i32 %16, 67108864
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40, !prof !676

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !480
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37, !prof !677

37:                                               ; preds = %33
  %38 = tail call zeroext i8 @decl_readonly_section(ptr noundef nonnull %35, i32 noundef 0) #16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46, !prof !676

40:                                               ; preds = %30, %37, %33
  br label %46

41:                                               ; preds = %28, %20, %18
  %42 = phi ptr [ %29, %28 ], [ %21, %20 ], [ %19, %18 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !480
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %14, !prof !678, !llvm.loop !679

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %22, %41, %14, %45, %8, %37, %5, %1, %40
  %47 = phi i8 [ 0, %40 ], [ 1, %1 ], [ 1, %5 ], [ 1, %37 ], [ 0, %8 ], [ 1, %45 ], [ 0, %14 ], [ 0, %41 ], [ 0, %22 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @noce_can_store_speculate_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !680 !PGOFuncName !681 {
  %3 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5, !prof !682

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %46
  %8 = phi ptr [ %3, %5 ], [ %47, %46 ]
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !480
  %11 = load ptr, ptr %10, align 8, !tbaa !480
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %17, !prof !683

13:                                               ; preds = %42
  %14 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !480
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17, !prof !684, !llvm.loop !685

17:                                               ; preds = %7, %13
  %18 = phi ptr [ %15, %13 ], [ %11, %7 ]
  %19 = load ptr, ptr %9, align 8, !tbaa !480
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !481
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !480
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %46, label %25, !prof !686

25:                                               ; preds = %17
  %26 = load i32, ptr %18, align 8
  %27 = and i32 %26, 65535
  %28 = add nsw i32 %27, -7
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %30, label %39, !prof !687

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !480
  %33 = tail call i32 @volatile_insn_p(ptr noundef %32) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49, !prof !688

35:                                               ; preds = %30
  %36 = load i32, ptr %18, align 8
  %37 = and i32 %36, 67174399
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %49, label %39, !prof !689

39:                                               ; preds = %25, %35
  %40 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef %1, ptr noundef nonnull %18) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %49, !prof !690

42:                                               ; preds = %39
  %43 = load ptr, ptr %6, align 8, !tbaa !480
  %44 = tail call i32 @modified_in_p(ptr noundef %43, ptr noundef nonnull %18) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %13, label %49, !prof !691

46:                                               ; preds = %17, %13, %7
  %47 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef nonnull %8) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %7, !prof !692, !llvm.loop !693

49:                                               ; preds = %46, %42, %39, %30, %35, %2
  %50 = phi i8 [ 0, %2 ], [ 0, %35 ], [ 0, %30 ], [ 1, %39 ], [ 0, %42 ], [ 0, %46 ]
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_move(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !694 !PGOFuncName !695 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !491
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -82
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %100, label %8, !prof !696

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !601
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !480
  switch i8 %16, label %54 [
    i8 8, label %17
    i8 9, label %17
    i8 11, label %17
    i8 17, label %17
  ], !prof !697

17:                                               ; preds = %8, %8, %8, %8
  %18 = and i8 %16, -2
  %19 = icmp eq i8 %18, 8
  br i1 %19, label %24, label %20, !prof !698

20:                                               ; preds = %17
  %21 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %22 = load i8, ptr %21, align 1, !tbaa !480
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %13, %17 ], [ %23, %20 ]
  %26 = add nsw i32 %25, -38
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !388
  %30 = getelementptr inbounds %struct.real_format, ptr %29, i64 0, i32 11
  %31 = load i8, ptr %30, align 2, !tbaa !699
  %32 = icmp eq i8 %31, 0
  %33 = load i32, ptr @flag_finite_math_only, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %100, !prof !701

36:                                               ; preds = %24
  switch i8 %16, label %54 [
    i8 8, label %37
    i8 9, label %37
    i8 11, label %37
    i8 17, label %37
  ], !prof !702

37:                                               ; preds = %36, %36, %36, %36
  br i1 %19, label %42, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %40 = load i8, ptr %39, align 1, !tbaa !480
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i32 [ %13, %37 ], [ %41, %38 ]
  %44 = add nsw i32 %43, -38
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !388
  %48 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 14
  %49 = load i8, ptr %48, align 1, !tbaa !703
  %50 = icmp ne i8 %49, 0
  %51 = load i32, ptr @flag_signed_zeros, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %100, label %54

54:                                               ; preds = %8, %36, %42
  %55 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !602
  %57 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !480
  %59 = tail call i32 @rtx_equal_p(ptr noundef %56, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61, !prof !704

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !603
  %64 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !480
  %66 = tail call i32 @rtx_equal_p(ptr noundef %63, ptr noundef %65) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80, !prof !705

68:                                               ; preds = %61, %54
  %69 = load ptr, ptr %55, align 8, !tbaa !602
  %70 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !480
  %72 = tail call i32 @rtx_equal_p(ptr noundef %69, ptr noundef %71) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %100, label %74, !prof !706

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !603
  %77 = load ptr, ptr %57, align 8, !tbaa !480
  %78 = tail call i32 @rtx_equal_p(ptr noundef %76, ptr noundef %77) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %100, label %80, !prof !707

80:                                               ; preds = %74, %61
  %81 = icmp eq i32 %5, 81
  %82 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %83 = select i1 %81, ptr %55, ptr %82
  %84 = load ptr, ptr %83, align 8, !tbaa !388
  %85 = load ptr, ptr %9, align 8, !tbaa !601
  %86 = tail call i32 @rtx_equal_p(ptr noundef %85, ptr noundef %84) #16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  tail call void @start_sequence() #16
  %89 = load ptr, ptr %9, align 8, !tbaa !601
  tail call fastcc void @noce_emit_move_insn(ptr noundef %89, ptr noundef %84) #17
  %90 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !493
  %95 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !599
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !480
  %99 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %90, ptr noundef %94, i32 noundef %98) #16
  br label %100

100:                                              ; preds = %68, %74, %80, %92, %88, %24, %42, %1
  %101 = phi i32 [ 0, %1 ], [ 0, %42 ], [ 0, %24 ], [ 0, %88 ], [ 1, %92 ], [ 1, %80 ], [ 0, %74 ], [ 0, %68 ]
  ret i32 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_store_flag(ptr nocapture noundef %0) unnamed_addr #0 !prof !694 !PGOFuncName !708 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !603
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 30
  br i1 %6, label %9, label %7, !prof !709

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !388
  br label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !480
  %12 = icmp eq i64 %11, 1
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !388
  br i1 %12, label %14, label %18, !prof !710

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !602
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %38, label %18, !prof !711

18:                                               ; preds = %7, %14, %9
  %19 = phi ptr [ %8, %7 ], [ %13, %14 ], [ %13, %9 ]
  %20 = icmp eq ptr %3, %19
  br i1 %20, label %21, label %60, !prof !712

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !602
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 30
  br i1 %26, label %27, label %60, !prof !713

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !480
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %31, label %60, !prof !714

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !491
  %34 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !493
  %36 = tail call i32 @reversed_comparison_code(ptr noundef %33, ptr noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %60, label %38, !prof !715

38:                                               ; preds = %31, %14
  %39 = phi i32 [ 0, %14 ], [ 1, %31 ]
  tail call void @start_sequence() #16
  %40 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !601
  %42 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %0, ptr noundef %41, i32 noundef %39, i32 noundef 0) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44, !prof !716

44:                                               ; preds = %38
  %45 = load ptr, ptr %40, align 8, !tbaa !601
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %48, label %47, !prof !717

47:                                               ; preds = %44
  tail call fastcc void @noce_emit_move_insn(ptr noundef %45, ptr noundef nonnull %42) #17
  br label %48

48:                                               ; preds = %47, %44
  %49 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51, !prof !716

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !493
  %54 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !599
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !480
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
define internal fastcc noundef i32 @noce_try_bitop(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !718 !PGOFuncName !719 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !601
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !491
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !603
  %10 = tail call i32 @rtx_equal_p(ptr noundef %3, ptr noundef %9) #16
  %11 = icmp eq i32 %10, 0
  %12 = add nsw i32 %7, -82
  %13 = icmp ult i32 %12, -2
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %127, label %15, !prof !720

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !480
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !388
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %127, !prof !721

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !480
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 120
  br i1 %25, label %26, label %127, !prof !722

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !480
  %30 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !388
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %127, !prof !723

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !480
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 30
  br i1 %37, label %38, label %127, !prof !724

38:                                               ; preds = %32
  %39 = load ptr, ptr %27, align 8, !tbaa !480
  %40 = tail call i32 @rtx_equal_p(ptr noundef %3, ptr noundef %39) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %127, label %42, !prof !725

42:                                               ; preds = %38
  %43 = load ptr, ptr %33, align 8, !tbaa !480
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !480
  %46 = load i32, ptr %3, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = and i64 %45, 4294967232
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %127, !prof !726

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !602
  %54 = load i32, ptr %53, align 8
  %55 = trunc i32 %54 to i16
  switch i16 %55, label %127 [
    i16 62, label %56
    i16 63, label %56
    i16 61, label %90
  ], !prof !727

56:                                               ; preds = %51, %51
  %57 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !480
  %59 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %127, label %61, !prof !728

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !480
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 30
  br i1 %66, label %67, label %127, !prof !729

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !480
  %70 = zext nneg i32 %48 to i64
  %71 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !730
  %73 = and i64 %72, %69
  %74 = and i64 %45, 63
  %75 = shl nuw i64 1, %74
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %77, label %127, !prof !728

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
  %92 = load ptr, ptr %91, align 8, !tbaa !480
  %93 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef %92) #16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %127, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !480
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 30
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !480
  %104 = zext nneg i32 %48 to i64
  %105 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !730
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
  %121 = load ptr, ptr %120, align 8, !tbaa !493
  %122 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !599
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !480
  %126 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %117, ptr noundef %121, i32 noundef %125) #16
  br label %127

127:                                              ; preds = %113, %82, %83, %119, %115, %51, %90, %95, %101, %56, %61, %67, %20, %42, %26, %32, %38, %15, %1
  %128 = phi i32 [ 0, %1 ], [ 0, %15 ], [ 0, %38 ], [ 0, %32 ], [ 0, %26 ], [ 0, %42 ], [ 0, %20 ], [ 0, %67 ], [ 0, %61 ], [ 0, %56 ], [ 0, %101 ], [ 0, %95 ], [ 0, %90 ], [ 0, %51 ], [ 0, %115 ], [ 1, %119 ], [ 1, %83 ], [ 1, %82 ], [ 1, %113 ]
  ret i32 %128
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_minmax(ptr nocapture noundef %0) unnamed_addr #0 !prof !718 !PGOFuncName !731 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !601
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !480
  switch i8 %10, label %48 [
    i8 8, label %11
    i8 9, label %11
    i8 11, label %11
    i8 17, label %11
  ], !prof !732

11:                                               ; preds = %1, %1, %1, %1
  %12 = and i8 %10, -2
  %13 = icmp eq i8 %12, 8
  br i1 %13, label %18, label %14, !prof !733

14:                                               ; preds = %11
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %16 = load i8, ptr %15, align 1, !tbaa !480
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %7, %11 ], [ %17, %14 ]
  %20 = add nsw i32 %19, -38
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !388
  %24 = getelementptr inbounds %struct.real_format, ptr %23, i64 0, i32 14
  %25 = load i8, ptr %24, align 1, !tbaa !703
  %26 = icmp ne i8 %25, 0
  %27 = load i32, ptr @flag_signed_zeros, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %124, label %30, !prof !734

30:                                               ; preds = %18
  switch i8 %10, label %48 [
    i8 8, label %31
    i8 9, label %31
    i8 11, label %31
    i8 17, label %31
  ], !prof !735

31:                                               ; preds = %30, %30, %30, %30
  br i1 %13, label %36, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %34 = load i8, ptr %33, align 1, !tbaa !480
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %32, %31
  %37 = phi i32 [ %7, %31 ], [ %35, %32 ]
  %38 = add nsw i32 %37, -38
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !388
  %42 = getelementptr inbounds %struct.real_format, ptr %41, i64 0, i32 11
  %43 = load i8, ptr %42, align 2, !tbaa !699
  %44 = icmp eq i8 %43, 0
  %45 = load i32, ptr @flag_finite_math_only, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %48, label %124

48:                                               ; preds = %1, %30, %36
  %49 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !602
  %51 = call fastcc ptr @noce_get_alt_condition(ptr noundef nonnull %0, ptr noundef %50, ptr noundef nonnull %2) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %124, label %53, !prof !736

53:                                               ; preds = %48
  %54 = load i32, ptr %51, align 8
  %55 = and i32 %54, 65535
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !480
  %58 = load ptr, ptr %49, align 8, !tbaa !602
  %59 = call i32 @rtx_equal_p(ptr noundef %57, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !480
  br i1 %60, label %68, label %63, !prof !737

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !603
  %66 = call i32 @rtx_equal_p(ptr noundef %62, ptr noundef %65) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %124, label %80, !prof !738

68:                                               ; preds = %53
  %69 = load ptr, ptr %49, align 8, !tbaa !602
  %70 = call i32 @rtx_equal_p(ptr noundef %62, ptr noundef %69) #16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %124, label %72, !prof !739

72:                                               ; preds = %68
  %73 = load ptr, ptr %56, align 8, !tbaa !480
  %74 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %75 = load ptr, ptr %74, align 8, !tbaa !603
  %76 = call i32 @rtx_equal_p(ptr noundef %73, ptr noundef %75) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %124, label %78, !prof !740

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
  %96 = load ptr, ptr %3, align 8, !tbaa !601
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = load ptr, ptr %49, align 8, !tbaa !602
  %101 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %102 = load ptr, ptr %101, align 8, !tbaa !603
  %103 = call ptr @expand_simple_binop(i32 noundef %99, i32 noundef %92, ptr noundef %100, ptr noundef %102, ptr noundef nonnull %96, i32 noundef %95, i32 noundef 2) #16
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106, !prof !741

105:                                              ; preds = %89
  call void @end_sequence() #16
  br label %124

106:                                              ; preds = %89
  %107 = load ptr, ptr %3, align 8, !tbaa !601
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
  %115 = load ptr, ptr %114, align 8, !tbaa !493
  %116 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !599
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !480
  %120 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %111, ptr noundef %115, i32 noundef %119) #16
  %121 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  store ptr %51, ptr %121, align 8, !tbaa !491
  %122 = load ptr, ptr %2, align 8, !tbaa !388
  %123 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  store ptr %122, ptr %123, align 8, !tbaa !492
  br label %124

124:                                              ; preds = %84, %80, %110, %68, %72, %63, %48, %18, %36, %113, %105
  %125 = phi i32 [ 1, %113 ], [ 0, %105 ], [ 0, %36 ], [ 0, %18 ], [ 0, %48 ], [ 0, %63 ], [ 0, %72 ], [ 0, %68 ], [ 0, %80 ], [ 0, %110 ], [ 0, %84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i32 %125
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_abs(ptr nocapture noundef %0) unnamed_addr #0 !prof !718 !PGOFuncName !742 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !601
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !480
  switch i8 %10, label %30 [
    i8 8, label %11
    i8 9, label %11
    i8 11, label %11
    i8 17, label %11
  ], !prof !743

11:                                               ; preds = %1, %1, %1, %1
  %12 = and i8 %10, -2
  %13 = icmp eq i8 %12, 8
  br i1 %13, label %18, label %14, !prof !733

14:                                               ; preds = %11
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %16 = load i8, ptr %15, align 1, !tbaa !480
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %7, %11 ], [ %17, %14 ]
  %20 = add nsw i32 %19, -38
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !388
  %24 = getelementptr inbounds %struct.real_format, ptr %23, i64 0, i32 14
  %25 = load i8, ptr %24, align 1, !tbaa !703
  %26 = icmp ne i8 %25, 0
  %27 = load i32, ptr @flag_signed_zeros, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %226, label %30, !prof !734

30:                                               ; preds = %1, %18
  %31 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !602
  %33 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !603
  %35 = load i32, ptr %32, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 51
  br i1 %37, label %38, label %43, !prof !744

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !480
  %41 = tail call i32 @rtx_equal_p(ptr noundef %40, ptr noundef %34) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %70, !prof !745

43:                                               ; preds = %38, %30
  %44 = load i32, ptr %34, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 51
  br i1 %46, label %47, label %52, !prof !746

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !480
  %50 = tail call i32 @rtx_equal_p(ptr noundef %49, ptr noundef nonnull %32) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47, %43
  %53 = load i32, ptr %32, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 64
  br i1 %55, label %56, label %61, !prof !747

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !480
  %59 = tail call i32 @rtx_equal_p(ptr noundef %58, ptr noundef nonnull %34) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70, !prof !748

61:                                               ; preds = %56, %52
  %62 = load i32, ptr %34, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 64
  br i1 %64, label %65, label %226, !prof !749

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !480
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
  br i1 %76, label %226, label %77, !prof !750

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !480
  %80 = call i32 @rtx_equal_p(ptr noundef %79, ptr noundef %71) #16
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %81, label %83, label %87, !prof !751

83:                                               ; preds = %77
  %84 = load ptr, ptr %82, align 8, !tbaa !480
  %85 = call i32 @rtx_equal_p(ptr noundef %84, ptr noundef %71) #16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %226, label %87

87:                                               ; preds = %77, %83
  %88 = phi ptr [ %78, %83 ], [ %82, %77 ]
  %89 = phi i32 [ %72, %83 ], [ %73, %77 ]
  %90 = load ptr, ptr %88, align 8, !tbaa !480
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 37
  br i1 %93, label %94, label %133, !prof !751

94:                                               ; preds = %87
  %95 = load ptr, ptr %2, align 8, !tbaa !388
  %96 = call ptr @prev_nonnote_insn(ptr noundef %95) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %226, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !480
  %101 = load ptr, ptr %2, align 8, !tbaa !388
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !480
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
  %112 = load ptr, ptr %111, align 8, !tbaa !480
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
  %122 = load ptr, ptr %121, align 8, !tbaa !480
  %123 = call i32 @rtx_equal_p(ptr noundef %122, ptr noundef nonnull %90) #16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %226, label %125

125:                                              ; preds = %119
  %126 = call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %96) #16
  %127 = icmp eq ptr %126, null
  %128 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %129 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = select i1 %127, ptr %129, ptr %128
  %131 = load ptr, ptr %130, align 8, !tbaa !480
  %132 = load i32, ptr %131, align 8
  br label %133

133:                                              ; preds = %125, %87
  %134 = phi i32 [ %132, %125 ], [ %91, %87 ]
  %135 = phi ptr [ %131, %125 ], [ %90, %87 ]
  %136 = and i32 %134, 65535
  %137 = icmp eq i32 %136, 43
  br i1 %137, label %138, label %146, !prof !751

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !480
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 67174399
  %143 = icmp eq i32 %142, 67108909
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = call ptr @get_pool_constant(ptr noundef nonnull %140) #16
  br label %146

146:                                              ; preds = %144, %138, %133
  %147 = phi ptr [ %145, %144 ], [ %135, %138 ], [ %135, %133 ]
  %148 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !388
  %149 = icmp eq ptr %147, %148
  br i1 %149, label %150, label %154, !prof !751

150:                                              ; preds = %146
  %151 = load i32, ptr %75, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 83
  br i1 %153, label %171, label %154

154:                                              ; preds = %150, %146
  %155 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !388
  %156 = icmp eq ptr %147, %155
  br i1 %156, label %157, label %161, !prof !751

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
  %167 = load ptr, ptr %166, align 8, !tbaa !388
  %168 = icmp eq ptr %147, %167
  br i1 %168, label %169, label %226, !prof !752

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
  ], !prof !753

174:                                              ; preds = %171, %171, %171, %171
  %175 = icmp eq i32 %89, 0
  %176 = zext i1 %175 to i32
  br label %177

177:                                              ; preds = %171, %171, %171, %171, %174
  %178 = phi i32 [ %89, %171 ], [ %89, %171 ], [ %89, %171 ], [ %89, %171 ], [ %176, %174 ]
  call void @start_sequence() #16
  %179 = load ptr, ptr %3, align 8, !tbaa !601
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
  %196 = load ptr, ptr %3, align 8, !tbaa !601
  %197 = call ptr @expand_simple_unop(i32 noundef %195, i32 noundef 64, ptr noundef nonnull %189, ptr noundef %196, i32 noundef 0) #16
  br label %204

198:                                              ; preds = %184
  %199 = load i32, ptr %185, align 8
  %200 = lshr i32 %199, 16
  %201 = and i32 %200, 255
  %202 = load ptr, ptr %3, align 8, !tbaa !601
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
  %209 = load ptr, ptr %3, align 8, !tbaa !601
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
  %217 = load ptr, ptr %216, align 8, !tbaa !493
  %218 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %219 = load ptr, ptr %218, align 8, !tbaa !599
  %220 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1, i32 0, i32 2
  %221 = load i32, ptr %220, align 8, !tbaa !480
  %222 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %213, ptr noundef %217, i32 noundef %221) #16
  %223 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  store ptr %75, ptr %223, align 8, !tbaa !491
  %224 = load ptr, ptr %2, align 8, !tbaa !388
  %225 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  store ptr %224, ptr %225, align 8, !tbaa !492
  br label %226

226:                                              ; preds = %105, %94, %98, %116, %119, %212, %171, %161, %83, %70, %61, %65, %18, %215, %207
  %227 = phi i32 [ 1, %215 ], [ 0, %207 ], [ 0, %18 ], [ 0, %65 ], [ 0, %61 ], [ 0, %70 ], [ 0, %83 ], [ 0, %161 ], [ 0, %171 ], [ 0, %212 ], [ 0, %119 ], [ 0, %116 ], [ 0, %98 ], [ 0, %94 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i32 %227
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_cmove(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !718 !PGOFuncName !754 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !602
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !381
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %13, label %10, !prof !755

10:                                               ; preds = %1
  %11 = tail call i32 @register_operand(ptr noundef nonnull %3, i32 noundef 0) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %56, label %13, !prof !756

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !603
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !381
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %25, label %22, !prof !757

22:                                               ; preds = %13
  %23 = tail call i32 @register_operand(ptr noundef nonnull %15, i32 noundef 0) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %56, label %25, !prof !758

25:                                               ; preds = %22, %13
  tail call void @start_sequence() #16
  %26 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !491
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !601
  %32 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !480
  %34 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !480
  %36 = load ptr, ptr %2, align 8, !tbaa !602
  %37 = load ptr, ptr %14, align 8, !tbaa !603
  %38 = tail call fastcc ptr @noce_emit_cmove(ptr noundef nonnull %0, ptr noundef %31, i32 noundef %29, ptr noundef %33, ptr noundef %35, ptr noundef %36, ptr noundef %37) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40, !prof !759

40:                                               ; preds = %25
  %41 = load ptr, ptr %30, align 8, !tbaa !601
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %44, label %43, !prof !760

43:                                               ; preds = %40
  tail call fastcc void @noce_emit_move_insn(ptr noundef %41, ptr noundef nonnull %38) #17
  br label %44

44:                                               ; preds = %43, %40
  %45 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47, !prof !761

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !493
  %50 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !599
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !480
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
define internal fastcc noundef i32 @noce_try_store_flag_constants(ptr nocapture noundef %0) unnamed_addr #0 !prof !762 !PGOFuncName !763 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !602
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 30
  br i1 %6, label %7, label %129, !prof !764

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !603
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 30
  br i1 %12, label %13, label %129, !prof !765

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !601
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !480
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !480
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
  %37 = load ptr, ptr %36, align 8, !tbaa !491
  %38 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !493
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
  %54 = load i32, ptr %53, align 4, !tbaa !497
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %69, label %56

56:                                               ; preds = %48, %47, %52
  %57 = icmp eq i64 %20, -1
  %58 = select i1 %57, i1 %41, i1 false
  %59 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %60 = load i32, ptr %59, align 4, !tbaa !497
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
  %75 = load ptr, ptr %14, align 8, !tbaa !601
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
  %84 = load ptr, ptr %14, align 8, !tbaa !601
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
  %94 = load ptr, ptr %14, align 8, !tbaa !601
  %95 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 65, ptr noundef nonnull %76, ptr noundef %93, ptr noundef %94, i32 noundef 0, i32 noundef 2) #16
  br label %111

96:                                               ; preds = %88, %86
  %97 = icmp eq i64 %72, -1
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %73) #16
  %100 = load ptr, ptr %14, align 8, !tbaa !601
  %101 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 62, ptr noundef nonnull %76, ptr noundef %99, ptr noundef %100, i32 noundef 0, i32 noundef 2) #16
  br label %111

102:                                              ; preds = %96
  %103 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %74) #16
  %104 = load ptr, ptr %14, align 8, !tbaa !601
  %105 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 61, ptr noundef nonnull %76, ptr noundef %103, ptr noundef %104, i32 noundef 0, i32 noundef 2) #16
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %73) #16
  %109 = load ptr, ptr %14, align 8, !tbaa !601
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
  %116 = load ptr, ptr %14, align 8, !tbaa !601
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
  %123 = load ptr, ptr %38, align 8, !tbaa !493
  %124 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !599
  %126 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !480
  %128 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %120, ptr noundef %123, i32 noundef %127) #16
  br label %129

129:                                              ; preds = %61, %1, %7, %119, %63, %13, %122, %114, %78
  %130 = phi i32 [ 1, %122 ], [ 0, %114 ], [ 0, %78 ], [ 0, %13 ], [ 0, %63 ], [ 0, %119 ], [ 0, %7 ], [ 0, %1 ], [ 0, %61 ]
  ret i32 %130
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @noce_try_addcc(ptr nocapture noundef %0) unnamed_addr #0 !prof !762 !PGOFuncName !766 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !602
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 49
  br i1 %6, label %7, label %124, !prof !767

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !603
  %12 = tail call i32 @rtx_equal_p(ptr noundef %9, ptr noundef %11) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %124, label %14, !prof !768

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !491
  %17 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !493
  %19 = tail call i32 @reversed_comparison_code(ptr noundef %16, ptr noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %124, label %21, !prof !769

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !491
  %23 = load ptr, ptr %17, align 8, !tbaa !493
  %24 = tail call i32 @reversed_comparison_code(ptr noundef %22, ptr noundef %23) #16
  %25 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !480
  %27 = tail call i32 @general_operand(ptr noundef %26, i32 noundef 0) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %68, label %29, !prof !770

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !480
  %32 = tail call i32 @general_operand(ptr noundef %31, i32 noundef 0) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %68, label %34, !prof !771

34:                                               ; preds = %29
  tail call void @start_sequence() #16
  %35 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %36 = load ptr, ptr %35, align 8, !tbaa !601
  %37 = load ptr, ptr %25, align 8, !tbaa !480
  %38 = load ptr, ptr %30, align 8, !tbaa !480
  %39 = load ptr, ptr %10, align 8, !tbaa !603
  %40 = load ptr, ptr %2, align 8, !tbaa !602
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !480
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
  br i1 %52, label %67, label %53, !prof !772

53:                                               ; preds = %49
  %54 = load ptr, ptr %35, align 8, !tbaa !601
  %55 = icmp eq ptr %51, %54
  br i1 %55, label %57, label %56, !prof !773

56:                                               ; preds = %53
  tail call fastcc void @noce_emit_move_insn(ptr noundef %54, ptr noundef nonnull %51) #17
  br label %57

57:                                               ; preds = %56, %53
  %58 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %59 = icmp eq ptr %58, null
  br i1 %59, label %124, label %60, !prof !774

60:                                               ; preds = %57
  %61 = load ptr, ptr %17, align 8, !tbaa !493
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !599
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !480
  %66 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %58, ptr noundef %61, i32 noundef %65) #16
  br label %124

67:                                               ; preds = %49
  tail call void @end_sequence() #16
  br label %68

68:                                               ; preds = %67, %29, %21
  %69 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %70 = load i32, ptr %69, align 4, !tbaa !497
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %124, !prof !775

72:                                               ; preds = %68
  %73 = load ptr, ptr %2, align 8, !tbaa !602
  %74 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !480
  %76 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !388
  %77 = icmp eq ptr %75, %76
  %78 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %79 = icmp eq ptr %75, %78
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %81, label %124, !prof !776

81:                                               ; preds = %72
  tail call void @start_sequence() #16
  %82 = load ptr, ptr %2, align 8, !tbaa !602
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !480
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !480
  switch i64 %86, label %88 [
    i64 1, label %90
    i64 -1, label %87
  ], !prof !777

87:                                               ; preds = %81
  br label %90

88:                                               ; preds = %81
  %89 = trunc i64 %86 to i32
  br label %90

90:                                               ; preds = %81, %87, %88
  %91 = phi i32 [ 50, %87 ], [ 49, %88 ], [ 49, %81 ]
  %92 = phi i32 [ 0, %87 ], [ %89, %88 ], [ 0, %81 ]
  %93 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %94 = load ptr, ptr %93, align 8, !tbaa !601
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = tail call ptr @gen_reg_rtx(i32 noundef %97) #16
  %99 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %0, ptr noundef %98, i32 noundef 1, i32 noundef %92) #17
  %100 = icmp eq ptr %99, null
  br i1 %100, label %123, label %101, !prof !778

101:                                              ; preds = %90
  %102 = load ptr, ptr %93, align 8, !tbaa !601
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = load ptr, ptr %10, align 8, !tbaa !603
  %107 = tail call ptr @expand_simple_binop(i32 noundef %105, i32 noundef %91, ptr noundef %106, ptr noundef nonnull %99, ptr noundef nonnull %102, i32 noundef 0, i32 noundef 2) #16
  %108 = icmp eq ptr %107, null
  br i1 %108, label %123, label %109, !prof !779

109:                                              ; preds = %101
  %110 = load ptr, ptr %93, align 8, !tbaa !601
  %111 = icmp eq ptr %107, %110
  br i1 %111, label %113, label %112, !prof !780

112:                                              ; preds = %109
  tail call fastcc void @noce_emit_move_insn(ptr noundef %110, ptr noundef nonnull %107) #17
  br label %113

113:                                              ; preds = %112, %109
  %114 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %115 = icmp eq ptr %114, null
  br i1 %115, label %124, label %116, !prof !778

116:                                              ; preds = %113
  %117 = load ptr, ptr %17, align 8, !tbaa !493
  %118 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !599
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 2
  %121 = load i32, ptr %120, align 8, !tbaa !480
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
define internal fastcc noundef i32 @noce_try_store_flag_mask(ptr nocapture noundef %0) unnamed_addr #0 !prof !781 !PGOFuncName !782 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !497
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %68, !prof !783

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !602
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !388
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %17, !prof !784

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !603
  %13 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !601
  %15 = tail call i32 @rtx_equal_p(ptr noundef %12, ptr noundef %14) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35, !prof !785

17:                                               ; preds = %10, %5
  %18 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !491
  %20 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !493
  %22 = tail call i32 @reversed_comparison_code(ptr noundef %19, ptr noundef %21) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %68, label %24, !prof !786

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !603
  %27 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !388
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %68, !prof !787

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !tbaa !602
  %31 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !601
  %33 = tail call i32 @rtx_equal_p(ptr noundef %30, ptr noundef %32) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %68, label %35, !prof !788

35:                                               ; preds = %29, %10
  %36 = phi i32 [ 0, %10 ], [ 1, %29 ]
  tail call void @start_sequence() #16
  %37 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !601
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call ptr @gen_reg_rtx(i32 noundef %41) #16
  %43 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %0, ptr noundef %42, i32 noundef %36, i32 noundef -1) #17
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %35
  %46 = load ptr, ptr %37, align 8, !tbaa !601
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = tail call ptr @expand_simple_binop(i32 noundef %49, i32 noundef 61, ptr noundef nonnull %46, ptr noundef nonnull %43, ptr noundef nonnull %46, i32 noundef 0, i32 noundef 2) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %37, align 8, !tbaa !601
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
  %61 = load ptr, ptr %60, align 8, !tbaa !493
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !599
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !480
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
define internal fastcc noundef i32 @noce_try_cmove_arith(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !781 !PGOFuncName !789 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !602
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !603
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !601
  %8 = load i32, ptr @cse_not_expected, align 4, !tbaa !381
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %55, label %10, !prof !790

10:                                               ; preds = %1
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %14, label %55, !prof !791

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %55, !prof !792

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %20 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !480
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !793

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 5
  %25 = load i8, ptr %24, align 8, !tbaa !794
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %18, %23
  %28 = phi i32 [ %26, %23 ], [ 0, %18 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !480
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33, !prof !793

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 5
  %35 = load i8, ptr %34, align 8, !tbaa !794
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %27, %33
  %38 = phi i32 [ %36, %33 ], [ 0, %27 ]
  %39 = icmp eq i32 %28, %38
  br i1 %39, label %40, label %55, !prof !796

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !497
  %43 = icmp sgt i32 %42, 4
  br i1 %43, label %44, label %55, !prof !793

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !797
  br i1 %22, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 5
  %48 = load i8, ptr %47, align 8, !tbaa !794
  br label %49

49:                                               ; preds = %44, %46
  %50 = phi i8 [ %48, %46 ], [ 0, %44 ]
  %51 = tail call i32 %45(i8 noundef zeroext %50) #16
  %52 = load ptr, ptr %19, align 8, !tbaa !480
  %53 = load ptr, ptr %29, align 8, !tbaa !480
  %54 = tail call ptr @gen_reg_rtx(i32 noundef %51) #16
  br label %61

55:                                               ; preds = %40, %37, %14, %10, %1
  %56 = tail call i32 @may_trap_p(ptr noundef %3) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %382, !prof !798

58:                                               ; preds = %55
  %59 = tail call i32 @may_trap_p(ptr noundef %5) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %382, !prof !799

61:                                               ; preds = %58, %49
  %62 = phi i1 [ false, %49 ], [ true, %58 ]
  %63 = phi ptr [ %54, %49 ], [ %7, %58 ]
  %64 = phi ptr [ %53, %49 ], [ %5, %58 ]
  %65 = phi ptr [ %52, %49 ], [ %3, %58 ]
  %66 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !491
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !599
  %72 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !600
  %74 = icmp eq ptr %71, null
  br i1 %74, label %88, label %75, !prof !800

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !480
  %78 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !480
  %80 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %79) #16
  %81 = tail call i32 @insn_rtx_cost(ptr noundef %77, i8 noundef zeroext %80) #16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %382, label %83, !prof !800

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %85 = load i32, ptr %84, align 4, !tbaa !497
  %86 = shl nsw i32 %85, 2
  %87 = icmp sgt i32 %81, %86
  br i1 %87, label %382, label %88, !prof !801

88:                                               ; preds = %61, %83
  %89 = phi i32 [ %81, %83 ], [ 0, %61 ]
  %90 = icmp eq ptr %73, null
  br i1 %90, label %105, label %91, !prof !802

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !480
  %94 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !480
  %96 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %95) #16
  %97 = tail call i32 @insn_rtx_cost(ptr noundef %93, i8 noundef zeroext %96) #16
  %98 = add nsw i32 %97, %89
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %382, label %100, !prof !803

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %102 = load i32, ptr %101, align 4, !tbaa !497
  %103 = shl nsw i32 %102, 2
  %104 = icmp sgt i32 %98, %103
  br i1 %104, label %382, label %105, !prof !804

105:                                              ; preds = %100, %88
  %106 = load ptr, ptr %66, align 8, !tbaa !491
  %107 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !493
  %109 = tail call i32 @reversed_comparison_code(ptr noundef %106, ptr noundef %108) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %124, label %111, !prof !805

111:                                              ; preds = %105
  %112 = tail call i32 @rtx_equal_p(ptr noundef %64, ptr noundef %63) #16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120, !prof !806

114:                                              ; preds = %111
  %115 = load i32, ptr %64, align 8
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = tail call i32 @general_operand(ptr noundef nonnull %64, i32 noundef %117) #16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120, !prof !807

120:                                              ; preds = %111, %114
  %121 = load ptr, ptr %66, align 8, !tbaa !491
  %122 = load ptr, ptr %107, align 8, !tbaa !493
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
  br i1 %134, label %135, label %167, !prof !808

135:                                              ; preds = %124
  br i1 %62, label %142, label %136, !prof !809

136:                                              ; preds = %135
  %137 = load i32, ptr %129, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = tail call ptr @gen_reg_rtx(i32 noundef %139) #16
  %141 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %140, ptr noundef nonnull %129) #16
  br label %161

142:                                              ; preds = %135
  %143 = icmp eq ptr %126, null
  br i1 %143, label %381, label %144, !prof !810

144:                                              ; preds = %142
  %145 = load i32, ptr %129, align 8
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = tail call ptr @gen_reg_rtx(i32 noundef %147) #16
  %149 = tail call ptr @copy_rtx(ptr noundef nonnull %126) #16
  %150 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !480
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
  store ptr %148, ptr %159, align 8, !tbaa !480
  %160 = load ptr, ptr %150, align 8, !tbaa !480
  br label %161

161:                                              ; preds = %157, %136
  %162 = phi ptr [ %160, %157 ], [ %141, %136 ]
  %163 = phi ptr [ %148, %157 ], [ %129, %136 ]
  %164 = tail call ptr @emit_insn(ptr noundef %162) #16
  %165 = tail call fastcc i32 @recog_memoized(ptr noundef %164) #17
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %381, label %167, !prof !810

167:                                              ; preds = %161, %124
  %168 = phi ptr [ %129, %124 ], [ %163, %161 ]
  %169 = load i32, ptr %128, align 8
  %170 = lshr i32 %169, 16
  %171 = and i32 %170, 255
  %172 = tail call i32 @general_operand(ptr noundef nonnull %128, i32 noundef %171) #16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %219, !prof !811

174:                                              ; preds = %167
  br i1 %62, label %181, label %175, !prof !812

175:                                              ; preds = %174
  %176 = load i32, ptr %128, align 8
  %177 = lshr i32 %176, 16
  %178 = and i32 %177, 255
  %179 = tail call ptr @gen_reg_rtx(i32 noundef %178) #16
  %180 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %179, ptr noundef nonnull %128) #16
  br label %200

181:                                              ; preds = %174
  %182 = icmp eq ptr %125, null
  br i1 %182, label %381, label %183, !prof !813

183:                                              ; preds = %181
  %184 = load i32, ptr %128, align 8
  %185 = lshr i32 %184, 16
  %186 = and i32 %185, 255
  %187 = tail call ptr @gen_reg_rtx(i32 noundef %186) #16
  %188 = tail call ptr @copy_rtx(ptr noundef nonnull %125) #16
  %189 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !480
  %191 = load i32, ptr %190, align 8
  %192 = and i32 %191, 65535
  %193 = icmp eq i32 %192, 23
  br i1 %193, label %196, label %194, !prof !814

194:                                              ; preds = %183
  %195 = tail call ptr @single_set_2(ptr noundef nonnull %188, ptr noundef nonnull %190) #16
  br label %196

196:                                              ; preds = %183, %194
  %197 = phi ptr [ %195, %194 ], [ %190, %183 ]
  %198 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1
  store ptr %187, ptr %198, align 8, !tbaa !480
  %199 = load ptr, ptr %189, align 8, !tbaa !480
  br label %200

200:                                              ; preds = %196, %175
  %201 = phi ptr [ %180, %175 ], [ %199, %196 ]
  %202 = phi ptr [ %128, %175 ], [ %187, %196 ]
  %203 = tail call ptr @get_last_insn() #16
  %204 = icmp eq ptr %203, null
  br i1 %204, label %213, label %205, !prof !815

205:                                              ; preds = %200
  %206 = tail call i32 @modified_in_p(ptr noundef nonnull %128, ptr noundef nonnull %203) #16
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %213, label %208, !prof !816

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
  br i1 %218, label %381, label %219, !prof !817

219:                                              ; preds = %215, %167
  %220 = phi ptr [ %128, %167 ], [ %202, %215 ]
  %221 = load ptr, ptr %66, align 8, !tbaa !491
  %222 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !480
  %224 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !480
  %226 = tail call fastcc ptr @noce_emit_cmove(ptr noundef nonnull %0, ptr noundef %63, i32 noundef %127, ptr noundef %223, ptr noundef %225, ptr noundef %168, ptr noundef %220) #17
  %227 = icmp eq ptr %226, null
  br i1 %227, label %381, label %228, !prof !818

228:                                              ; preds = %219
  br i1 %62, label %369, label %229, !prof !819

229:                                              ; preds = %228
  %230 = load ptr, ptr %6, align 8, !tbaa !601
  %231 = load i32, ptr %230, align 8
  %232 = lshr i32 %231, 16
  %233 = and i32 %232, 255
  %234 = tail call ptr @gen_rtx_MEM(i32 noundef %233, ptr noundef nonnull %226) #16
  %235 = load ptr, ptr %2, align 8, !tbaa !602
  %236 = load i32, ptr %235, align 8
  %237 = and i32 %236, 134217728
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %229
  %240 = load ptr, ptr %4, align 8, !tbaa !603
  %241 = load i32, ptr %240, align 8
  %242 = and i32 %241, 134217728
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %239, %229
  %245 = load i32, ptr %234, align 8
  %246 = or i32 %245, 134217728
  store i32 %246, ptr %234, align 8
  %247 = load ptr, ptr %2, align 8, !tbaa !602
  %248 = load i32, ptr %247, align 8
  br label %249

249:                                              ; preds = %244, %239
  %250 = phi i32 [ %248, %244 ], [ %236, %239 ]
  %251 = phi ptr [ %247, %244 ], [ %235, %239 ]
  %252 = and i32 %250, 268435456
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %249
  %255 = load ptr, ptr %4, align 8, !tbaa !603
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, 268435456
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %254
  %260 = load i32, ptr %234, align 8
  %261 = or i32 %260, 268435456
  store i32 %261, ptr %234, align 8
  %262 = load ptr, ptr %2, align 8, !tbaa !602
  %263 = load i32, ptr %262, align 8
  br label %264

264:                                              ; preds = %259, %254, %249
  %265 = phi i32 [ %263, %259 ], [ %250, %254 ], [ %250, %249 ]
  %266 = phi ptr [ %262, %259 ], [ %251, %254 ], [ %251, %249 ]
  %267 = icmp sgt i32 %265, -1
  br i1 %267, label %276, label %268

268:                                              ; preds = %264
  %269 = load ptr, ptr %4, align 8, !tbaa !603
  %270 = load i32, ptr %269, align 8
  %271 = icmp sgt i32 %270, -1
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load i32, ptr %234, align 8
  %274 = or i32 %273, -2147483648
  store i32 %274, ptr %234, align 8
  %275 = load ptr, ptr %2, align 8, !tbaa !602
  br label %276

276:                                              ; preds = %272, %268, %264
  %277 = phi ptr [ %275, %272 ], [ %266, %268 ], [ %266, %264 ]
  %278 = getelementptr inbounds %struct.rtx_def, ptr %277, i64 0, i32 1, i32 0, i32 0, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !480
  %280 = icmp eq ptr %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.mem_attrs, ptr %279, i64 0, i32 3
  %283 = load i32, ptr %282, align 8, !tbaa !820
  br label %284

284:                                              ; preds = %276, %281
  %285 = phi i32 [ %283, %281 ], [ 0, %276 ]
  %286 = load ptr, ptr %4, align 8, !tbaa !603
  %287 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1, i32 0, i32 0, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !480
  %289 = icmp eq ptr %288, null
  br i1 %289, label %293, label %290

290:                                              ; preds = %284
  %291 = getelementptr inbounds %struct.mem_attrs, ptr %288, i64 0, i32 3
  %292 = load i32, ptr %291, align 8, !tbaa !820
  br label %293

293:                                              ; preds = %284, %290
  %294 = phi i32 [ %292, %290 ], [ 0, %284 ]
  %295 = icmp eq i32 %285, %294
  br i1 %295, label %296, label %305

296:                                              ; preds = %293
  br i1 %280, label %300, label %297

297:                                              ; preds = %296
  %298 = getelementptr inbounds %struct.mem_attrs, ptr %279, i64 0, i32 3
  %299 = load i32, ptr %298, align 8, !tbaa !820
  br label %300

300:                                              ; preds = %296, %297
  %301 = phi i32 [ %299, %297 ], [ 0, %296 ]
  tail call void @set_mem_alias_set(ptr noundef %234, i32 noundef %301) #16
  %302 = load ptr, ptr %2, align 8, !tbaa !602
  %303 = getelementptr inbounds %struct.rtx_def, ptr %302, i64 0, i32 1, i32 0, i32 0, i64 1
  %304 = load ptr, ptr %303, align 8, !tbaa !480
  br label %305

305:                                              ; preds = %300, %293
  %306 = phi ptr [ %304, %300 ], [ %279, %293 ]
  %307 = icmp eq ptr %306, null
  br i1 %307, label %315, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.mem_attrs, ptr %306, i64 0, i32 4
  %310 = load i32, ptr %309, align 4, !tbaa !821
  %311 = load ptr, ptr %4, align 8, !tbaa !603
  %312 = getelementptr inbounds %struct.rtx_def, ptr %311, i64 0, i32 1, i32 0, i32 0, i64 1
  %313 = load ptr, ptr %312, align 8, !tbaa !480
  %314 = icmp eq ptr %313, null
  br i1 %314, label %320, label %326

315:                                              ; preds = %305
  %316 = load ptr, ptr %4, align 8, !tbaa !603
  %317 = getelementptr inbounds %struct.rtx_def, ptr %316, i64 0, i32 1, i32 0, i32 0, i64 1
  %318 = load ptr, ptr %317, align 8, !tbaa !480
  %319 = icmp eq ptr %318, null
  br i1 %319, label %333, label %322

320:                                              ; preds = %308
  %321 = tail call i32 @llvm.umin.i32(i32 %310, i32 8)
  br label %333

322:                                              ; preds = %315
  %323 = getelementptr inbounds %struct.mem_attrs, ptr %318, i64 0, i32 4
  %324 = load i32, ptr %323, align 4, !tbaa !821
  %325 = tail call i32 @llvm.umin.i32(i32 %324, i32 8)
  br label %333

326:                                              ; preds = %308
  %327 = getelementptr inbounds %struct.mem_attrs, ptr %313, i64 0, i32 4
  %328 = load i32, ptr %327, align 4, !tbaa !821
  %329 = icmp ult i32 %310, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.mem_attrs, ptr %306, i64 0, i32 4
  %332 = load i32, ptr %331, align 4, !tbaa !821
  br label %333

333:                                              ; preds = %322, %320, %326, %330, %315
  %334 = phi i32 [ 8, %315 ], [ %332, %330 ], [ %328, %326 ], [ %321, %320 ], [ %325, %322 ]
  tail call void @set_mem_align(ptr noundef %234, i32 noundef %334) #16
  %335 = load ptr, ptr %2, align 8, !tbaa !602
  %336 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1, i32 0, i32 0, i64 1
  %337 = load ptr, ptr %336, align 8, !tbaa !480
  %338 = icmp eq ptr %337, null
  br i1 %338, label %343, label %339

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.mem_attrs, ptr %337, i64 0, i32 5
  %341 = load i8, ptr %340, align 8, !tbaa !794
  %342 = zext i8 %341 to i32
  br label %343

343:                                              ; preds = %333, %339
  %344 = phi i32 [ %342, %339 ], [ 0, %333 ]
  %345 = load ptr, ptr %4, align 8, !tbaa !603
  %346 = getelementptr inbounds %struct.rtx_def, ptr %345, i64 0, i32 1, i32 0, i32 0, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !480
  %348 = icmp eq ptr %347, null
  br i1 %348, label %353, label %349

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.mem_attrs, ptr %347, i64 0, i32 5
  %351 = load i8, ptr %350, align 8, !tbaa !794
  %352 = zext i8 %351 to i32
  br label %353

353:                                              ; preds = %343, %349
  %354 = phi i32 [ %352, %349 ], [ 0, %343 ]
  %355 = icmp eq i32 %344, %354
  br i1 %355, label %360, label %356

356:                                              ; preds = %353
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1486, ptr noundef nonnull @.str.8) #16
  %357 = load ptr, ptr %2, align 8, !tbaa !602
  %358 = getelementptr inbounds %struct.rtx_def, ptr %357, i64 0, i32 1, i32 0, i32 0, i64 1
  %359 = load ptr, ptr %358, align 8, !tbaa !480
  br label %360

360:                                              ; preds = %353, %356
  %361 = phi ptr [ %337, %353 ], [ %359, %356 ]
  %362 = icmp eq ptr %361, null
  br i1 %362, label %366, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.mem_attrs, ptr %361, i64 0, i32 5
  %365 = load i8, ptr %364, align 8, !tbaa !794
  br label %366

366:                                              ; preds = %360, %363
  %367 = phi i8 [ %365, %363 ], [ 0, %360 ]
  tail call void @set_mem_addr_space(ptr noundef %234, i8 noundef zeroext %367) #16
  %368 = load ptr, ptr %6, align 8, !tbaa !601
  tail call fastcc void @noce_emit_move_insn(ptr noundef %368, ptr noundef %234) #17
  br label %372

369:                                              ; preds = %228
  %370 = icmp eq ptr %226, %63
  br i1 %370, label %372, label %371, !prof !819

371:                                              ; preds = %369
  tail call fastcc void @noce_emit_move_insn(ptr noundef %63, ptr noundef nonnull %226) #17
  br label %372

372:                                              ; preds = %369, %371, %366
  %373 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %374 = icmp eq ptr %373, null
  br i1 %374, label %382, label %375, !prof !822

375:                                              ; preds = %372
  %376 = load ptr, ptr %107, align 8, !tbaa !493
  %377 = load ptr, ptr %70, align 8, !tbaa !599
  %378 = getelementptr inbounds %struct.rtx_def, ptr %377, i64 0, i32 1, i32 0, i32 2
  %379 = load i32, ptr %378, align 8, !tbaa !480
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
define internal fastcc noundef i32 @noce_try_sign_mask(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !823 !PGOFuncName !824 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !491
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !480
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !602
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !388
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %26, !prof !825

14:                                               ; preds = %1
  %15 = icmp eq i32 %5, 85
  %16 = icmp eq ptr %9, %11
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %23, label %18, !prof !826

18:                                               ; preds = %14
  %19 = icmp eq i32 %5, 84
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %21 = icmp eq ptr %9, %20
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %93, !prof !826

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !603
  br label %37

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !603
  %29 = icmp eq ptr %28, %12
  br i1 %29, label %30, label %93, !prof !827

30:                                               ; preds = %26
  %31 = trunc i32 %4 to i16
  switch i16 %31, label %93 [
    i16 82, label %32
    i16 83, label %34
  ], !prof !828

32:                                               ; preds = %30
  %33 = icmp eq ptr %9, %12
  br i1 %33, label %37, label %93, !prof !751

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !388
  %36 = icmp eq ptr %9, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %32, %34, %23
  %38 = phi ptr [ %25, %23 ], [ %11, %34 ], [ %11, %32 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %93, label %40, !prof !829

40:                                               ; preds = %37
  %41 = tail call i32 @side_effects_p(ptr noundef nonnull %38) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %93

43:                                               ; preds = %40
  %44 = load i32, ptr %38, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = load i32, ptr %7, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, %46
  br i1 %50, label %51, label %93

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !603
  %54 = icmp eq ptr %38, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %0, align 8, !tbaa !486
  br label %66

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !600
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !480
  %64 = load ptr, ptr %0, align 8, !tbaa !486
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %55, %61
  %67 = phi ptr [ %56, %55 ], [ %64, %61 ]
  %68 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %67) #16
  %69 = tail call i32 @rtx_cost(ptr noundef nonnull %38, i32 noundef 23, i8 noundef zeroext %68) #16
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %93

71:                                               ; preds = %57, %66, %61
  tail call void @start_sequence() #16
  %72 = tail call ptr @gen_reg_rtx(i32 noundef %46) #16
  %73 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !388
  %74 = tail call ptr @emit_store_flag(ptr noundef %72, i32 noundef 85, ptr noundef nonnull %7, ptr noundef %73, i32 noundef %46, i32 noundef 0, i32 noundef -1) #16
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = tail call ptr @expand_binop(i32 noundef %46, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %74, ptr noundef nonnull %38, ptr noundef null, i32 noundef 0, i32 noundef 0) #16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %71, %76
  tail call void @end_sequence() #16
  br label %93

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !601
  tail call fastcc void @noce_emit_move_insn(ptr noundef %82, ptr noundef nonnull %77) #17
  %83 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0) #17
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !493
  %88 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !599
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !480
  %92 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %83, ptr noundef %87, i32 noundef %91) #16
  br label %93

93:                                               ; preds = %32, %30, %26, %34, %18, %80, %66, %43, %37, %40, %85, %79
  %94 = phi i32 [ 1, %85 ], [ 0, %79 ], [ 0, %40 ], [ 0, %37 ], [ 0, %43 ], [ 0, %66 ], [ 0, %80 ], [ 0, %18 ], [ 0, %34 ], [ 0, %26 ], [ 0, %30 ], [ 0, %32 ]
  ret i32 %94
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @noce_emit_move_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !830 !PGOFuncName !831 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 40
  br i1 %5, label %99, label %6, !prof !832

6:                                                ; preds = %2
  tail call void @start_sequence() #16
  %7 = load i32, ptr %1, align 8
  %8 = freeze i32 %7
  %9 = and i32 %8, 65535
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !381
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
  br i1 %26, label %27, label %96, !prof !832

27:                                               ; preds = %22
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 120
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !480
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !480
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !480
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !480
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !480
  %42 = load i32, ptr %33, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 43
  %45 = select i1 %44, i64 8, i64 32
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 763, ptr noundef nonnull @.str.8) #16
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
  %58 = load i32, ptr %57, align 4, !tbaa !381
  switch i32 %58, label %96 [
    i32 4, label %59
    i32 2, label %73
    i32 3, label %73
  ]

59:                                               ; preds = %53
  %60 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !388
  %62 = icmp eq ptr %61, null
  br i1 %62, label %96, label %63

63:                                               ; preds = %59
  tail call void @start_sequence() #16
  %64 = load i32, ptr %1, align 8
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !480
  %69 = tail call ptr @expand_unop(i32 noundef %66, ptr noundef nonnull %61, ptr noundef %68, ptr noundef nonnull %0, i32 noundef 0) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %94, label %71

71:                                               ; preds = %63
  %72 = icmp eq ptr %69, %0
  br i1 %72, label %92, label %89

73:                                               ; preds = %53, %53
  %74 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %56
  %75 = load ptr, ptr %74, align 8, !tbaa !388
  %76 = icmp eq ptr %75, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %73
  tail call void @start_sequence() #16
  %78 = load i32, ptr %1, align 8
  %79 = lshr i32 %78, 16
  %80 = and i32 %79, 255
  %81 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !480
  %83 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !480
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
  %101 = load ptr, ptr %100, align 8, !tbaa !480
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !480
  %104 = load i32, ptr %101, align 8
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  %107 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load i32, ptr %107, align 8, !tbaa !480
  %109 = shl i32 %108, 3
  %110 = zext nneg i32 %106 to i64
  %111 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !480
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
define internal fastcc ptr @end_ifcvt_sequence(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !833 !PGOFuncName !834 {
  %2 = tail call ptr @get_insns() #16
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !601
  tail call void @set_used_flags(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !491
  tail call void @set_used_flags(ptr noundef %6) #16
  tail call void @unshare_all_rtl_in_chain(ptr noundef %2) #16
  tail call void @end_sequence() #16
  %7 = icmp eq ptr %2, null
  br i1 %7, label %20, label %8, !prof !835

8:                                                ; preds = %1, %16
  %9 = phi ptr [ %18, %16 ], [ %2, %1 ]
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %20, label %13, !prof !836

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %9) #17
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %20, label %16, !prof !836

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !480
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !prof !837, !llvm.loop !838

20:                                               ; preds = %13, %8, %16, %1
  %21 = phi ptr [ null, %1 ], [ %2, %16 ], [ null, %8 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !839 !PGOFuncName !840 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !480
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !841

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !480
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #16
  store i32 %8, ptr %2, align 8, !tbaa !480
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
define internal fastcc ptr @noce_emit_store_flag(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !842 !PGOFuncName !843 {
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !491
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !480
  %9 = tail call i32 @general_operand(ptr noundef %8, i32 noundef 0) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !844

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !480
  %14 = tail call i32 @general_operand(ptr noundef %13, i32 noundef 0) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47, !prof !779

16:                                               ; preds = %4, %11
  %17 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !493
  %19 = tail call ptr @pc_set(ptr noundef %18) #16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !480
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !480
  %24 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !480
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 44
  br i1 %28, label %29, label %39

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !480
  %32 = load ptr, ptr %17, align 8, !tbaa !493
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 1, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !480
  %35 = icmp eq ptr %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = icmp eq i32 %2, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %36, %29, %16
  %40 = phi i32 [ %38, %36 ], [ %2, %29 ], [ %2, %16 ]
  %41 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 12
  %42 = load i8, ptr %41, align 8, !tbaa !494
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
  br i1 %51, label %56, label %52, !prof !845

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !493
  %55 = tail call i32 @reversed_comparison_code(ptr noundef %49, ptr noundef %54) #16
  br label %59

56:                                               ; preds = %47
  %57 = load i32, ptr %49, align 8
  %58 = and i32 %57, 65535
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %55, %52 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !492
  %63 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !493
  %65 = icmp eq ptr %62, %64
  %66 = or i1 %48, %65
  %67 = icmp ult i32 %3, 2
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %87, !prof !846

69:                                               ; preds = %59
  %70 = load i32, ptr %1, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !480
  %75 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !480
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
  %85 = load ptr, ptr %63, align 8, !tbaa !493
  store ptr %85, ptr %61, align 8, !tbaa !492
  br label %108

86:                                               ; preds = %69
  tail call void @end_sequence() #16
  br i1 %48, label %108, label %88, !prof !779

87:                                               ; preds = %59
  br i1 %48, label %108, label %88, !prof !844

88:                                               ; preds = %86, %87
  %89 = load i32, ptr %1, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !480
  %95 = and i8 %94, -2
  %96 = icmp eq i8 %95, 2
  br i1 %96, label %97, label %108, !prof !847

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !480
  %100 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !480
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
define internal fastcc ptr @noce_get_alt_condition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !848 !PGOFuncName !849 {
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !491
  %6 = tail call i32 @reg_mentioned_p(ptr noundef %1, ptr noundef %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !850

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !492
  store ptr %10, ptr %2, align 8, !tbaa !388
  %11 = load ptr, ptr %4, align 8, !tbaa !491
  br label %213

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !493
  %15 = tail call ptr @pc_set(ptr noundef %14) #16
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !480
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !480
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !480
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 44
  br i1 %24, label %25, label %32, !prof !851

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !480
  %28 = load ptr, ptr %13, align 8, !tbaa !493
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !480
  %31 = icmp eq ptr %27, %30
  br label %32

32:                                               ; preds = %25, %12
  %33 = phi i1 [ false, %12 ], [ %31, %25 ]
  %34 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 12
  %35 = load i8, ptr %34, align 8, !tbaa !494
  %36 = icmp ne i8 %35, 0
  %37 = xor i1 %33, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, ptr %1, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %153, !prof !852

42:                                               ; preds = %32
  %43 = load ptr, ptr %4, align 8, !tbaa !491
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !480
  %48 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !480
  %50 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !492
  %52 = tail call ptr @prev_nonnote_insn(ptr noundef %51) #16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %105, label %54, !prof !853

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !480
  %57 = load ptr, ptr %50, align 8, !tbaa !492
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !480
  %60 = icmp eq ptr %56, %59
  br i1 %60, label %61, label %105, !prof !854

61:                                               ; preds = %54
  %62 = load i32, ptr %52, align 8
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -7
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %66, label %105, !prof !855

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !480
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 23
  br i1 %71, label %72, label %105, !prof !856

72:                                               ; preds = %66
  %73 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %52) #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %79, !prof !857

75:                                               ; preds = %72
  %76 = load ptr, ptr %67, align 8, !tbaa !480
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !480
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi ptr [ %73, %72 ], [ %78, %75 ]
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 30
  br i1 %83, label %84, label %105, !prof !858

84:                                               ; preds = %79
  %85 = load ptr, ptr %67, align 8, !tbaa !480
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !480
  %88 = tail call i32 @rtx_equal_p(ptr noundef %47, ptr noundef %87) #16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97, !prof !859

90:                                               ; preds = %84
  %91 = load ptr, ptr %67, align 8, !tbaa !480
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !480
  %94 = tail call i32 @rtx_equal_p(ptr noundef %49, ptr noundef %93) #16
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, ptr %49, ptr %80, !prof !859
  br label %97

97:                                               ; preds = %90, %84
  %98 = phi ptr [ %80, %84 ], [ %47, %90 ]
  %99 = phi ptr [ %49, %84 ], [ %96, %90 ]
  %100 = load i32, ptr %98, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 30
  br i1 %102, label %103, label %105, !prof !860

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
  br i1 %111, label %112, label %132, !prof !861

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !480
  %115 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !480
  switch i32 %106, label %132 [
    i32 85, label %117
    i32 84, label %120
    i32 83, label %123
    i32 82, label %126
  ], !prof !862

117:                                              ; preds = %112
  %118 = add nsw i64 %114, 1
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %129, label %132, !prof !863

120:                                              ; preds = %112
  %121 = add nsw i64 %114, -1
  %122 = icmp eq i64 %116, %121
  br i1 %122, label %129, label %132

123:                                              ; preds = %112
  %124 = add nsw i64 %114, -1
  %125 = icmp eq i64 %116, %124
  br i1 %125, label %129, label %132, !prof !864

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
  %135 = load ptr, ptr %4, align 8, !tbaa !491
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %133, %137
  br i1 %138, label %139, label %147, !prof !865

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !480
  %142 = icmp eq ptr %107, %141
  br i1 %142, label %143, label %147, !prof !866

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1, i32 0, i32 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !480
  %146 = icmp eq ptr %134, %145
  br i1 %146, label %153, label %147, !prof !866

147:                                              ; preds = %132, %139, %143
  %148 = load i32, ptr %19, align 8
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  %151 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %133, i32 noundef %150, ptr noundef %107, ptr noundef %134) #16
  %152 = load ptr, ptr %50, align 8, !tbaa !492
  store ptr %152, ptr %2, align 8, !tbaa !388
  br label %213

153:                                              ; preds = %143, %32
  %154 = load ptr, ptr %13, align 8, !tbaa !493
  %155 = tail call ptr @canonicalize_condition(ptr noundef %154, ptr noundef %19, i32 noundef %38, ptr noundef %2, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1) #16
  %156 = icmp eq ptr %155, null
  br i1 %156, label %213, label %157, !prof !867

157:                                              ; preds = %153
  %158 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %1, ptr noundef nonnull %155) #16
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %213, label %160, !prof !868

160:                                              ; preds = %157
  %161 = load ptr, ptr %13, align 8, !tbaa !480
  %162 = load ptr, ptr %2, align 8, !tbaa !388
  %163 = icmp eq ptr %161, %162
  br i1 %163, label %213, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  br label %171

166:                                              ; preds = %186
  %167 = load ptr, ptr %13, align 8, !tbaa !493
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
  %179 = load ptr, ptr %165, align 8, !tbaa !601
  %180 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !480
  %182 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %179, ptr noundef %181) #16
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %213

184:                                              ; preds = %178
  %185 = load ptr, ptr %2, align 8, !tbaa !388
  br label %186

186:                                              ; preds = %184, %171
  %187 = phi ptr [ %185, %184 ], [ %172, %171 ]
  %188 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1, i32 0, i32 0, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !480
  %190 = icmp eq ptr %189, %187
  br i1 %190, label %166, label %171, !llvm.loop !869

191:                                              ; preds = %166, %208
  %192 = phi ptr [ %209, %208 ], [ %167, %166 ]
  %193 = phi ptr [ %211, %208 ], [ %187, %166 ]
  %194 = load i32, ptr %193, align 8
  %195 = and i32 %194, 65535
  %196 = add nsw i32 %195, -7
  %197 = icmp ult i32 %196, 4
  br i1 %197, label %198, label %208

198:                                              ; preds = %191
  %199 = load ptr, ptr %168, align 8, !tbaa !602
  %200 = tail call i32 @modified_in_p(ptr noundef %199, ptr noundef nonnull %193) #16
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %198
  %203 = load ptr, ptr %169, align 8, !tbaa !603
  %204 = tail call i32 @modified_in_p(ptr noundef %203, ptr noundef nonnull %193) #16
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %202
  %207 = load ptr, ptr %13, align 8, !tbaa !493
  br label %208

208:                                              ; preds = %206, %191
  %209 = phi ptr [ %207, %206 ], [ %192, %191 ]
  %210 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 2
  %211 = load ptr, ptr %210, align 8, !tbaa !480
  %212 = icmp eq ptr %211, %209
  br i1 %212, label %213, label %191, !llvm.loop !870

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
define internal fastcc ptr @noce_emit_cmove(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !prof !871 !PGOFuncName !872 {
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !492
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !493
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %32, !prof !873

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !491
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
  br i1 %27, label %29, label %28, !prof !874

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
  br i1 %37, label %54, label %38, !prof !875

38:                                               ; preds = %32
  %39 = load i32, ptr %4, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call i32 @general_operand(ptr noundef nonnull %4, i32 noundef %41) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44, !prof !876

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
define internal fastcc noundef i32 @check_cond_move_block(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !prof !877 !PGOFuncName !878 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !480
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !481
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %17, !prof !879

12:                                               ; preds = %4
  %13 = tail call i32 @onlyjump_p(ptr noundef nonnull %8) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %132, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 8, !tbaa !480
  br label %17

17:                                               ; preds = %15, %4
  %18 = phi ptr [ %16, %15 ], [ %6, %4 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !480
  %20 = icmp eq ptr %19, null
  br i1 %20, label %132, label %21, !prof !880

21:                                               ; preds = %17, %128
  %22 = phi ptr [ %130, %128 ], [ %19, %17 ]
  %23 = load ptr, ptr %5, align 8, !tbaa !480
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !481
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !480
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %132, label %29, !prof !881

29:                                               ; preds = %21
  %30 = load i32, ptr %22, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %128, !prof !882

34:                                               ; preds = %29
  switch i32 %31, label %132 [
    i32 7, label %128
    i32 9, label %128
    i32 8, label %35
    i32 10, label %35
  ], !prof !883

35:                                               ; preds = %34, %34
  %36 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !480
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %44, label %41, !prof !884

41:                                               ; preds = %35
  %42 = tail call ptr @single_set_2(ptr noundef nonnull %22, ptr noundef nonnull %37) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %132, label %44, !prof !572

44:                                               ; preds = %35, %41
  %45 = phi ptr [ %42, %41 ], [ %37, %35 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !480
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !480
  %50 = load i32, ptr %47, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %132, !prof !885

53:                                               ; preds = %44
  %54 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  %55 = icmp ult i32 %54, 53
  br i1 %55, label %132, label %56, !prof !886

56:                                               ; preds = %53
  %57 = load i32, ptr %49, align 8
  %58 = and i32 %57, 65535
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !381
  %62 = icmp eq i32 %61, 9
  br i1 %62, label %66, label %63, !prof !887

63:                                               ; preds = %56
  %64 = tail call i32 @register_operand(ptr noundef nonnull %49, i32 noundef 0) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %132, label %66, !prof !888

66:                                               ; preds = %63, %56
  %67 = tail call i32 @side_effects_p(ptr noundef nonnull %49) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %132, !prof !889

69:                                               ; preds = %66
  %70 = tail call i32 @side_effects_p(ptr noundef nonnull %47) #16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %132, !prof !889

72:                                               ; preds = %69
  %73 = tail call i32 @may_trap_p(ptr noundef nonnull %49) #16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %132, !prof !889

75:                                               ; preds = %72
  %76 = tail call i32 @may_trap_p(ptr noundef nonnull %47) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %132, !prof !889

78:                                               ; preds = %75
  %79 = load i32, ptr %49, align 8
  %80 = trunc i32 %79 to i16
  switch i16 %80, label %99 [
    i16 37, label %81
    i16 39, label %87
  ], !prof !890

81:                                               ; preds = %78
  %82 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %49) #17
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %1, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !388
  %86 = icmp eq ptr %85, null
  br i1 %86, label %99, label %132, !prof !891

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !480
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %99, !prof !892

93:                                               ; preds = %87
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %89) #17
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %1, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !388
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %132, !prof !892

99:                                               ; preds = %78, %81, %93, %87
  %100 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %1, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !388
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %132, !prof !893

105:                                              ; preds = %99
  %106 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %47, ptr noundef %3) #16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %132, !prof !894

108:                                              ; preds = %105
  %109 = load i32, ptr %49, align 8
  %110 = and i32 %109, 65535
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !381
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %123, label %115, !prof !895

115:                                              ; preds = %108
  %116 = load ptr, ptr %5, align 8, !tbaa !480
  %117 = getelementptr inbounds %struct.rtl_bb_info, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !481
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 2
  %120 = load ptr, ptr %119, align 8, !tbaa !480
  %121 = tail call i32 @modified_between_p(ptr noundef nonnull %49, ptr noundef nonnull %22, ptr noundef %120) #16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %132, !prof !896

123:                                              ; preds = %115, %108
  %124 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %1, i64 %125
  store ptr %49, ptr %126, align 8, !tbaa !388
  %127 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #17
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef %2, i32 noundef %127) #17
  br label %128

128:                                              ; preds = %123, %34, %34, %29
  %129 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %130 = load ptr, ptr %129, align 8, !tbaa !480
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %21, !prof !897, !llvm.loop !898

132:                                              ; preds = %128, %21, %41, %53, %44, %63, %69, %66, %75, %72, %93, %81, %99, %105, %115, %34, %17, %12
  %133 = phi i32 [ 0, %12 ], [ 1, %17 ], [ 1, %128 ], [ 1, %21 ], [ 0, %41 ], [ 0, %53 ], [ 0, %44 ], [ 0, %63 ], [ 0, %69 ], [ 0, %66 ], [ 0, %75 ], [ 0, %72 ], [ 0, %93 ], [ 0, %81 ], [ 0, %99 ], [ 0, %105 ], [ 0, %115 ], [ 0, %34 ]
  ret i32 %133
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !899 !PGOFuncName !900 {
  %2 = load ptr, ptr %0, align 8, !tbaa !388
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !901

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !902 !PGOFuncName !903 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !904

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !905
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !907

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !381
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !381
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cond_move_convert_if_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #0 !prof !908 !PGOFuncName !909 {
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !480
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !480
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !480
  %15 = load ptr, ptr %14, align 8, !tbaa !480
  %16 = icmp eq ptr %15, null
  br i1 %16, label %83, label %17, !prof !579

17:                                               ; preds = %6
  %18 = icmp eq i8 %5, 0
  br label %19

19:                                               ; preds = %17, %79
  %20 = phi ptr [ %15, %17 ], [ %81, %79 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !480
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !481
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !480
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %83, label %27, !prof !910

27:                                               ; preds = %19
  %28 = load i32, ptr %20, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -7
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %79, !prof !911

32:                                               ; preds = %27
  switch i32 %29, label %49 [
    i32 7, label %79
    i32 9, label %79
    i32 8, label %33
    i32 10, label %33
  ], !prof !912

33:                                               ; preds = %32, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !480
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %42, label %39, !prof !913

39:                                               ; preds = %33
  %40 = tail call ptr @single_set_2(ptr noundef nonnull %20, ptr noundef nonnull %35) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42, !prof !914

42:                                               ; preds = %33, %39
  %43 = phi ptr [ %40, %39 ], [ %35, %33 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !480
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %53, label %49, !prof !913

49:                                               ; preds = %32, %42, %39
  %50 = phi ptr [ %43, %42 ], [ null, %39 ], [ null, %32 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2597, ptr noundef nonnull @.str.8) #16
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !480
  br label %53

53:                                               ; preds = %42, %49
  %54 = phi ptr [ %45, %42 ], [ %52, %49 ]
  %55 = tail call fastcc i32 @rhs_regno(ptr noundef %54) #17
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %3, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !388
  %59 = getelementptr inbounds ptr, ptr %4, i64 %56
  %60 = load ptr, ptr %59, align 8, !tbaa !388
  %61 = icmp eq ptr %58, null
  br i1 %18, label %66, label %62, !prof !915

62:                                               ; preds = %53
  br i1 %61, label %63, label %79, !prof !916

63:                                               ; preds = %62
  %64 = icmp eq ptr %60, null
  br i1 %64, label %65, label %71, !prof !917

65:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2612, ptr noundef nonnull @.str.8) #16
  br label %71

66:                                               ; preds = %53
  br i1 %61, label %67, label %68, !prof !918

67:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2616, ptr noundef nonnull @.str.8) #16
  br label %68

68:                                               ; preds = %66, %67
  %69 = icmp eq ptr %60, null
  %70 = select i1 %69, ptr %54, ptr %60, !prof !919
  br label %71

71:                                               ; preds = %68, %65, %63
  %72 = phi ptr [ %54, %63 ], [ %54, %65 ], [ %58, %68 ]
  %73 = phi ptr [ %60, %63 ], [ null, %65 ], [ %70, %68 ]
  %74 = tail call fastcc ptr @noce_emit_cmove(ptr noundef %0, ptr noundef %54, i32 noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef %72, ptr noundef %73) #17
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76, !prof !920

76:                                               ; preds = %71
  %77 = icmp eq ptr %74, %54
  br i1 %77, label %79, label %78, !prof !921

78:                                               ; preds = %76
  tail call fastcc void @noce_emit_move_insn(ptr noundef %54, ptr noundef nonnull %74) #17
  br label %79

79:                                               ; preds = %32, %32, %27, %62, %78, %76
  %80 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !480
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %19, !prof !922, !llvm.loop !923

83:                                               ; preds = %79, %19, %71, %6
  %84 = phi i8 [ 1, %6 ], [ 0, %71 ], [ 1, %19 ], [ 1, %79 ]
  ret i8 %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !924 !PGOFuncName !925 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !388
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !924 !PGOFuncName !926 {
  %2 = load ptr, ptr %0, align 8, !tbaa !388
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !927

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #16
  store ptr %6, ptr %0, align 8, !tbaa !388
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !924 !PGOFuncName !928 {
  %3 = load i32, ptr %0, align 4, !tbaa !905
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !905
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !381
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !924 !PGOFuncName !929 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !930

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !931
  %6 = load i32, ptr %0, align 4, !tbaa !905
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
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !499 !PGOFuncName !932 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #17, !range !463
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 655, ptr noundef nonnull @.str.8) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !508
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #17
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !499 !PGOFuncName !933 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !524
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !499 !PGOFuncName !934 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !415
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %70, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !509
  %15 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !510
  %16 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %3) #17, !range !463
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %13, %33
  %19 = phi i32 [ %35, %33 ], [ 0, %13 ]
  %20 = phi i32 [ %34, %33 ], [ 0, %13 ]
  %21 = load ptr, ptr %3, align 8, !tbaa !388
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !421
  %24 = and i32 %23, 14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %18
  %27 = and i32 %23, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !417
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %70

33:                                               ; preds = %29, %26
  %34 = phi i32 [ %20, %26 ], [ 1, %29 ]
  %35 = phi i32 [ 1, %26 ], [ %19, %29 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %36 = load i32, ptr %4, align 8
  %37 = load ptr, ptr %15, align 8
  %38 = call fastcc zeroext i8 @ei_cond(i32 %36, ptr %37, ptr noundef nonnull %3) #17, !range !463
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %18, !llvm.loop !935

40:                                               ; preds = %33
  %41 = and i32 %35, %34
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !480
  %46 = getelementptr inbounds %struct.rtl_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !481
  %48 = load ptr, ptr %45, align 8, !tbaa !480
  %49 = icmp eq ptr %48, null
  br i1 %49, label %70, label %54

50:                                               ; preds = %67
  %51 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !480
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54, !llvm.loop !936

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
  %61 = load ptr, ptr %60, align 8, !tbaa !480
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 !prof !499 !PGOFuncName !937 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !499 !PGOFuncName !938 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !463
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !388
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !499 !PGOFuncName !939 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.8) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !940
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !940
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_exec_process_if_block(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !499 !PGOFuncName !942 {
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  %4 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !428
  %6 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !429
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !504
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %185

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !502
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %185, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !501
  store ptr %21, ptr %0, align 8, !tbaa !426
  store i32 0, ptr %10, align 8, !tbaa !504
  %22 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 6
  store i32 0, ptr %22, align 4, !tbaa !506
  %23 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 7
  store i32 0, ptr %23, align 8, !tbaa !507
  br label %24

24:                                               ; preds = %19, %9, %2
  %25 = phi ptr [ %3, %2 ], [ %21, %19 ], [ %3, %9 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !480
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !481
  %30 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %29) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %185, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %26, align 8, !tbaa !480
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !481
  %36 = tail call i32 @onlyjump_p(ptr noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %185, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @first_active_insn(ptr noundef %5) #17
  %40 = tail call fastcc ptr @last_active_insn(ptr noundef %5, i32 noundef 1) #17
  %41 = tail call fastcc i32 @count_bb_insns(ptr noundef %5) #17
  %42 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 10
  store i32 %41, ptr %42, align 4, !tbaa !943
  %43 = load ptr, ptr @cfun, align 8, !tbaa !388
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
  store i32 %54, ptr %55, align 8, !tbaa !944
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
  %64 = load ptr, ptr %26, align 8, !tbaa !480
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !481
  %67 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %30, ptr noundef %66) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = load i32, ptr %30, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !480
  %75 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !480
  %77 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %67, i32 noundef %72, ptr noundef %74, ptr noundef %76) #16
  br label %78

78:                                               ; preds = %63, %69
  %79 = phi ptr [ %77, %69 ], [ null, %63 ]
  %80 = load ptr, ptr %26, align 8, !tbaa !480
  %81 = getelementptr inbounds %struct.rtl_bb_info, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !481
  %83 = tail call ptr @find_reg_note(ptr noundef %82, i32 noundef 13, ptr noundef null) #16
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !480
  %88 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !480
  %90 = sub nsw i64 10000, %89
  %91 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %90) #16
  br label %92

92:                                               ; preds = %78, %85
  %93 = phi ptr [ %87, %85 ], [ null, %78 ]
  %94 = phi ptr [ %91, %85 ], [ null, %78 ]
  %95 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !504
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %156

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !501
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
  %117 = load ptr, ptr %116, align 8, !tbaa !480
  %118 = getelementptr inbounds %struct.rtl_bb_info, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !481
  %120 = tail call i32 @onlyjump_p(ptr noundef %119) #16
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %184, label %122

122:                                              ; preds = %115
  %123 = load ptr, ptr %116, align 8, !tbaa !480
  %124 = getelementptr inbounds %struct.rtl_bb_info, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !481
  %126 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %125) #17
  %127 = icmp eq ptr %126, null
  br i1 %127, label %184, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %116, align 8, !tbaa !480
  %130 = getelementptr inbounds %struct.rtl_bb_info, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !481
  %132 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %126, ptr noundef %131) #16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %184, label %134

134:                                              ; preds = %128
  %135 = load i32, ptr %126, align 8
  %136 = lshr i32 %135, 16
  %137 = and i32 %136, 255
  %138 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !480
  %140 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 0, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !480
  %142 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %132, i32 noundef %137, ptr noundef %139, ptr noundef %141) #16
  %143 = load i32, ptr %103, align 8, !tbaa !502
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
  br i1 %155, label %156, label %104, !llvm.loop !945

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
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !388
  %178 = icmp eq ptr %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = icmp eq i32 %58, 1
  %181 = select i1 %180, ptr @.str.23, ptr @.str.24
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %177, ptr noundef nonnull @.str.22, i32 noundef %58, ptr noundef nonnull %181) #17
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !499 !PGOFuncName !946 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !499 !PGOFuncName !947 {
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
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !499 !PGOFuncName !948 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.8) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !388
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cond_exec_get_condition(ptr noundef %0) unnamed_addr #0 !prof !499 !PGOFuncName !949 {
  %2 = tail call i32 @any_condjump_p(ptr noundef %0) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @pc_set(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !480
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !480
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 44
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !480
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !480
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
  %29 = load ptr, ptr %28, align 8, !tbaa !480
  %30 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !480
  %32 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %22, i32 noundef %27, ptr noundef %29, ptr noundef %31) #16
  br label %33

33:                                               ; preds = %24, %21, %4, %15, %1
  %34 = phi ptr [ null, %1 ], [ %9, %15 ], [ %9, %4 ], [ %32, %24 ], [ null, %21 ]
  ret ptr %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_bb_insns(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !499 !PGOFuncName !950 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !480
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !481
  br label %6

6:                                                ; preds = %14, %1
  %7 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %8 = phi ptr [ %3, %1 ], [ %17, %14 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !480
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
define internal fastcc ptr @block_fallthru(ptr noundef %0) unnamed_addr #0 !prof !499 !PGOFuncName !951 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !509
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !510
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #17, !range !463
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1, %15
  %10 = load ptr, ptr %2, align 8, !tbaa !388
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !421
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %16 = load i32, ptr %3, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc zeroext i8 @ei_cond(i32 %16, ptr %17, ptr noundef nonnull %2) #17, !range !463
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !952

20:                                               ; preds = %15, %1
  %21 = load ptr, ptr %2, align 8, !tbaa !388
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %20
  %24 = phi ptr [ %21, %20 ], [ %10, %9 ]
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !417
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi ptr [ %26, %23 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cond_exec_process_insns(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !499 !PGOFuncName !953 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 273, ptr noundef nonnull @.str.8) #16
  br label %18

18:                                               ; preds = %12, %12, %17
  %19 = load i32, ptr @reload_completed, align 4, !tbaa !381
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !480
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
  %38 = load ptr, ptr %37, align 8, !tbaa !480
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
  %48 = load ptr, ptr %47, align 8, !tbaa !480
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %43
  %54 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %46, ptr noundef nonnull %39, ptr noundef nonnull %48) #16
  %55 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !480
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
  %68 = load ptr, ptr %67, align 8, !tbaa !480
  %69 = tail call ptr @alloc_EXPR_LIST(i32 noundef 13, ptr noundef nonnull %3, ptr noundef %68) #16
  %70 = tail call zeroext i8 @validate_change(ptr noundef nonnull %14, ptr noundef nonnull %67, ptr noundef %69, i8 noundef zeroext 1) #16
  br label %71

71:                                               ; preds = %12, %12, %57, %66, %27
  %72 = phi i32 [ %13, %12 ], [ %13, %27 ], [ %35, %66 ], [ %35, %57 ], [ %13, %12 ]
  %73 = icmp eq ptr %14, %1
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !480
  br label %12

77:                                               ; preds = %71, %43, %28, %30, %5
  %78 = phi i32 [ 0, %5 ], [ 1, %71 ], [ 0, %43 ], [ 0, %28 ], [ 0, %30 ]
  ret i32 %78
}

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_if_block(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !499 !PGOFuncName !954 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !429
  %7 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !515
  tail call void @df_set_bb_dirty(ptr noundef %2) #16
  %9 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !504
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !501
  %15 = tail call fastcc ptr @block_fallthru(ptr noundef %2) #17
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %15, %12 ], [ %18, %16 ]
  %18 = tail call fastcc ptr @block_fallthru(ptr noundef %17) #17
  tail call void @merge_blocks(ptr noundef %2, ptr noundef %17) #16
  %19 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @num_true_changes, align 4, !tbaa !381
  %21 = icmp eq ptr %17, %14
  br i1 %21, label %22, label %16, !llvm.loop !955

22:                                               ; preds = %16, %1
  %23 = icmp eq ptr %4, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  tail call void @merge_blocks(ptr noundef %2, ptr noundef nonnull %4) #16
  %25 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @num_true_changes, align 4, !tbaa !381
  br label %27

27:                                               ; preds = %24, %22
  %28 = icmp eq ptr %6, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  tail call void @merge_blocks(ptr noundef %2, ptr noundef nonnull %6) #16
  %30 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr @num_true_changes, align 4, !tbaa !381
  br label %32

32:                                               ; preds = %29, %27
  %33 = icmp eq ptr %8, null
  br i1 %33, label %34, label %88

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !480
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !481
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !415
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
  %52 = load ptr, ptr %51, align 8, !tbaa !480
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 29
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !480
  %59 = load ptr, ptr @const_true_rtx, align 8, !tbaa !388
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %118, label %61

61:                                               ; preds = %56, %50, %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2966, ptr noundef nonnull @.str.8) #16
  br label %118

62:                                               ; preds = %34
  %63 = load i32, ptr %38, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 9
  br i1 %65, label %118, label %66

66:                                               ; preds = %62
  %67 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef 0) #17
  %68 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !417
  %70 = load ptr, ptr @cfun, align 8, !tbaa !388
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !394
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !401
  %75 = icmp eq ptr %69, %74
  %76 = and i32 %63, 16842751
  %77 = icmp eq i32 %76, 16777226
  %78 = and i1 %77, %75
  br i1 %78, label %118, label %79

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !421
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %38) #16
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %84, %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2976, ptr noundef nonnull @.str.8) #16
  br label %118

88:                                               ; preds = %32
  %89 = load ptr, ptr %8, align 8, !tbaa !508
  %90 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %89) #17
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load ptr, ptr @cfun, align 8, !tbaa !388
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !394
  %96 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !401
  %98 = icmp eq ptr %8, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  tail call void @merge_blocks(ptr noundef %2, ptr noundef nonnull %8) #16
  %100 = load i32, ptr @num_true_changes, align 4, !tbaa !381
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr @num_true_changes, align 4, !tbaa !381
  br label %118

102:                                              ; preds = %92, %88
  %103 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %2) #17, !range !463
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = tail call fastcc ptr @single_succ(ptr noundef %2) #17
  %107 = icmp eq ptr %106, %8
  br i1 %107, label %109, label %108

108:                                              ; preds = %105, %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3000, ptr noundef nonnull @.str.8) #16
  br label %109

109:                                              ; preds = %105, %108
  %110 = load ptr, ptr @cfun, align 8, !tbaa !388
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !394
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !401
  %115 = icmp eq ptr %8, %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %109
  %117 = tail call fastcc ptr @single_succ_edge(ptr noundef %2) #17
  tail call void @tidy_fallthru_edge(ptr noundef %117) #16
  br label %118

118:                                              ; preds = %66, %43, %56, %61, %62, %84, %87, %99, %116, %109
  %119 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !381
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @num_updated_if_blocks, align 4, !tbaa !381
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
define internal fastcc ptr @block_has_only_trap(ptr noundef readonly %0) unnamed_addr #7 !prof !499 !PGOFuncName !956 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !388
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !394
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !401
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !415
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @first_active_insn(ptr noundef nonnull %0) #17
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !480
  %17 = getelementptr inbounds %struct.rtl_bb_info, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !481
  %19 = icmp eq ptr %14, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !480
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 29
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !480
  %29 = load ptr, ptr @const_true_rtx, align 8, !tbaa !388
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
define internal fastcc noundef zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !957 !PGOFuncName !958 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !480
  %5 = load ptr, ptr %4, align 8, !tbaa !513
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
  ], !prof !959

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !480
  %15 = tail call i32 @insn_rtx_cost(ptr noundef %14, i8 noundef zeroext %6) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %56, label %17, !prof !960

17:                                               ; preds = %12
  %18 = load i32, ptr %8, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %44, !prof !961

22:                                               ; preds = %17
  %23 = load ptr, ptr %13, align 8, !tbaa !480
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 23
  br i1 %26, label %30, label %27, !prof !962

27:                                               ; preds = %22
  %28 = tail call ptr @single_set_2(ptr noundef nonnull %8, ptr noundef nonnull %23) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30, !prof !963

30:                                               ; preds = %22, %27
  %31 = phi ptr [ %28, %27 ], [ %23, %22 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !480
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %44, !prof !964

37:                                               ; preds = %30
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %33) #17
  %39 = and i32 %38, -8
  %40 = icmp ne i32 %39, 8
  %41 = add nsw i32 %15, %9
  %42 = icmp slt i32 %41, %1
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %47, label %56, !prof !965

44:                                               ; preds = %17, %27, %30
  %45 = add nsw i32 %15, %9
  %46 = icmp slt i32 %45, %1
  br i1 %46, label %47, label %56

47:                                               ; preds = %37, %7, %44
  %48 = phi i32 [ %45, %44 ], [ %9, %7 ], [ %41, %37 ]
  %49 = load ptr, ptr %3, align 8, !tbaa !480
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !481
  %52 = icmp eq ptr %8, %51
  br i1 %52, label %56, label %53, !prof !966

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !480
  br label %7

56:                                               ; preds = %37, %12, %47, %7, %44
  %57 = phi i8 [ 0, %44 ], [ 0, %7 ], [ 1, %47 ], [ 0, %12 ], [ 0, %37 ]
  ret i8 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @dead_or_predicable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !967 !PGOFuncName !968 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !388
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !480
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !481
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !480
  %15 = load ptr, ptr %14, align 8, !tbaa !513
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  br label %17

17:                                               ; preds = %17, %5
  %18 = phi ptr [ %16, %5 ], [ %25, %17 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !480
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp ne i32 %21, 7
  %23 = icmp eq ptr %19, %15
  %24 = select i1 %22, i1 true, i1 %23
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %24, label %26, label %17, !prof !969, !llvm.loop !970

26:                                               ; preds = %17
  %27 = tail call zeroext i8 @tablejump_p(ptr noundef nonnull %19, ptr noundef null, ptr noundef null) #16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %399, !prof !971

29:                                               ; preds = %26
  %30 = load i32, ptr %15, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %33, label %37, !prof !972

33:                                               ; preds = %29, %41
  %34 = phi ptr [ %38, %41 ], [ %15, %29 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !480
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi ptr [ %15, %29 ], [ %36, %33 ]
  %39 = load i32, ptr %38, align 8
  %40 = trunc i32 %39 to i16
  switch i16 %40, label %54 [
    i16 7, label %41
    i16 13, label %43
  ], !prof !973

41:                                               ; preds = %37
  %42 = icmp eq ptr %38, %19
  br i1 %42, label %54, label %33, !prof !971, !llvm.loop !974

43:                                               ; preds = %37
  %44 = icmp eq ptr %38, %19
  br i1 %44, label %247, label %45, !prof !975

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %48, %45 ], [ %38, %43 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !480
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp ne i32 %50, 7
  %52 = icmp eq ptr %48, %19
  %53 = or i1 %51, %52
  br i1 %53, label %54, label %45, !prof !976, !llvm.loop !977

54:                                               ; preds = %45, %37, %41
  %55 = phi ptr [ %19, %41 ], [ %38, %37 ], [ %48, %45 ]
  %56 = load i32, ptr %19, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %70, !prof !978

59:                                               ; preds = %54
  %60 = icmp eq ptr %55, %19
  br i1 %60, label %247, label %61, !prof !979

61:                                               ; preds = %59, %61
  %62 = phi ptr [ %64, %61 ], [ %19, %59 ]
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !480
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp ne i32 %66, 7
  %68 = icmp eq ptr %64, %55
  %69 = or i1 %67, %68
  br i1 %69, label %70, label %61, !prof !980, !llvm.loop !981

70:                                               ; preds = %61, %54
  %71 = phi ptr [ %19, %54 ], [ %64, %61 ]
  %72 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !434
  %73 = tail call zeroext i8 %72() #16
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %117, label %75, !prof !982

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
  %83 = load ptr, ptr %82, align 8, !tbaa !480
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
  %95 = load ptr, ptr %94, align 8, !tbaa !480
  %96 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !480
  %98 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %88, i32 noundef %93, ptr noundef %95, ptr noundef %97) #16
  %99 = icmp eq ptr %85, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !480
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
  store ptr %12, ptr %6, align 8, !tbaa !388
  br label %117

114:                                              ; preds = %110
  %115 = tail call i32 @num_validated_changes() #16
  store ptr %12, ptr %6, align 8, !tbaa !388
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %247, !prof !779

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
  ], !prof !983

122:                                              ; preds = %118, %118
  %123 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !480
  %125 = tail call i32 @may_trap_p(ptr noundef %124) #16
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %398, !prof !984

127:                                              ; preds = %122
  %128 = tail call i32 @for_each_rtx(ptr noundef nonnull %123, ptr noundef nonnull @find_memory, ptr noundef null) #16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %398, !prof !985

130:                                              ; preds = %118, %127
  %131 = icmp eq ptr %119, %71
  br i1 %131, label %135, label %132, !prof !986

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 2
  %134 = load ptr, ptr %133, align 8, !tbaa !480
  br label %118

135:                                              ; preds = %130
  %136 = tail call i32 @any_condjump_p(ptr noundef %12) #16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %398, label %138, !prof !987

138:                                              ; preds = %135
  %139 = call fastcc ptr @noce_get_condition(ptr noundef %12, ptr noundef nonnull %6, i8 noundef zeroext 0) #17
  %140 = icmp eq ptr %139, null
  br i1 %140, label %398, label %141, !prof !988

141:                                              ; preds = %138
  %142 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #16
  %143 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #16
  %144 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #16
  %145 = load i32, ptr @max_regno, align 4, !tbaa !381
  %146 = call i32 @max_reg_num() #16
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %150, !prof !989

148:                                              ; preds = %141
  %149 = call i32 @max_reg_num() #16
  store i32 %149, ptr @max_regno, align 4, !tbaa !381
  br label %150

150:                                              ; preds = %148, %141
  %151 = load ptr, ptr %13, align 8, !tbaa !480
  %152 = load ptr, ptr %151, align 8, !tbaa !480
  %153 = icmp eq ptr %152, null
  br i1 %153, label %193, label %154, !prof !990

154:                                              ; preds = %150, %189
  %155 = phi ptr [ %191, %189 ], [ %152, %150 ]
  %156 = load ptr, ptr %13, align 8, !tbaa !480
  %157 = getelementptr inbounds %struct.rtl_bb_info, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !481
  %159 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1, i32 0, i32 0, i64 2
  %160 = load ptr, ptr %159, align 8, !tbaa !480
  %161 = icmp eq ptr %155, %160
  br i1 %161, label %193, label %162, !prof !991

162:                                              ; preds = %154
  %163 = load i32, ptr %155, align 8
  %164 = and i32 %163, 65535
  %165 = add nsw i32 %164, -11
  %166 = icmp ult i32 %165, -3
  br i1 %166, label %189, label %167, !prof !992

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !480
  %170 = load ptr, ptr @df, align 8, !tbaa !388
  %171 = getelementptr inbounds %struct.df, ptr %170, i64 0, i32 10
  %172 = load ptr, ptr %171, align 8, !tbaa !993
  %173 = zext i32 %169 to i64
  %174 = getelementptr inbounds ptr, ptr %172, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !388
  %176 = getelementptr inbounds %struct.df_insn_info, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !996
  %178 = load ptr, ptr %177, align 8, !tbaa !388
  %179 = icmp eq ptr %178, null
  br i1 %179, label %189, label %180, !prof !998

180:                                              ; preds = %167, %180
  %181 = phi ptr [ %187, %180 ], [ %178, %167 ]
  %182 = phi ptr [ %186, %180 ], [ %177, %167 ]
  %183 = getelementptr inbounds %struct.df_base_ref, ptr %181, i64 0, i32 6
  %184 = load i32, ptr %183, align 8, !tbaa !480
  %185 = call zeroext i8 @bitmap_set_bit(ptr noundef %142, i32 noundef %184) #16
  %186 = getelementptr inbounds ptr, ptr %182, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !388
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %180, !prof !999, !llvm.loop !1000

189:                                              ; preds = %180, %167, %162
  %190 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 2
  %191 = load ptr, ptr %190, align 8, !tbaa !480
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %154, !prof !1001, !llvm.loop !1002

193:                                              ; preds = %154, %189, %150
  %194 = load i32, ptr @reload_completed, align 4, !tbaa !381
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %217, !prof !1003

196:                                              ; preds = %193
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %142, ptr noundef nonnull %7) #17
  %197 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #17, !range !463
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %217, label %199, !prof !1004

199:                                              ; preds = %196, %213
  %200 = phi i32 [ %214, %213 ], [ 0, %196 ]
  %201 = load i32, ptr %7, align 4, !tbaa !381
  %202 = icmp ult i32 %201, 53
  br i1 %202, label %203, label %213, !prof !1005

203:                                              ; preds = %199
  %204 = zext nneg i32 %201 to i64
  %205 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !480
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %213, !prof !1006

208:                                              ; preds = %203
  %209 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %204
  %210 = load i8, ptr %209, align 1, !tbaa !480
  %211 = icmp eq i8 %210, 0
  %212 = select i1 %211, i32 1, i32 %200
  br label %213

213:                                              ; preds = %208, %199, %203
  %214 = phi i32 [ %200, %203 ], [ %200, %199 ], [ %212, %208 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  %215 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #17, !range !463
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %199, !prof !1007, !llvm.loop !1008

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
  br i1 %225, label %226, label %227, !prof !1009

226:                                              ; preds = %220
  call void @df_simulate_find_defs(ptr noundef nonnull %221, ptr noundef %144) #16
  call void @df_simulate_one_insn_backwards(ptr noundef %0, ptr noundef nonnull %221, ptr noundef %143) #16
  br label %227

227:                                              ; preds = %220, %226
  %228 = load ptr, ptr %6, align 8, !tbaa !388
  %229 = icmp eq ptr %221, %228
  br i1 %229, label %233, label %230, !prof !1010

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !480
  br label %220

233:                                              ; preds = %227
  %234 = call zeroext i8 @bitmap_intersect_p(ptr noundef %144, ptr noundef %142) #16
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %243, !prof !1011

236:                                              ; preds = %233
  %237 = call zeroext i8 @bitmap_intersect_p(ptr noundef %143, ptr noundef %142) #16
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %243, !prof !1012

239:                                              ; preds = %236
  %240 = call ptr @df_get_live_in(ptr noundef %1) #16
  %241 = call zeroext i8 @bitmap_intersect_p(ptr noundef %144, ptr noundef %240) #16
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %244, label %243, !prof !1013

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
  %252 = load ptr, ptr %251, align 8, !tbaa !480
  %253 = icmp eq ptr %2, %3
  br i1 %253, label %263, label %254, !prof !1014

254:                                              ; preds = %247
  %255 = call ptr @block_label(ptr noundef %3) #16
  %256 = icmp eq i32 %4, 0
  br i1 %256, label %260, label %257, !prof !1015

257:                                              ; preds = %254
  %258 = call i32 @invert_jump_1(ptr noundef nonnull %12, ptr noundef %255) #16
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %397, label %263, !prof !1014

260:                                              ; preds = %254
  %261 = call i32 @redirect_jump_1(ptr noundef nonnull %12, ptr noundef %255) #16
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %397, label %263, !prof !1014

263:                                              ; preds = %257, %260, %247
  %264 = phi ptr [ %255, %257 ], [ %255, %260 ], [ null, %247 ]
  %265 = call i32 @verify_changes(i32 noundef %248) #16
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %397, label %267, !prof !1016

267:                                              ; preds = %263
  call void @confirm_change_group() #16
  br i1 %253, label %327, label %268, !prof !1017

268:                                              ; preds = %267
  call void @redirect_jump_2(ptr noundef nonnull %12, ptr noundef %252, ptr noundef %264, i32 noundef 0, i32 noundef %4) #16
  %269 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !415
  %271 = call fastcc ptr @VEC_edge_base_index(ptr noundef %270, i32 noundef 0) #17
  %272 = getelementptr inbounds %struct.edge_def, ptr %271, i64 0, i32 7
  %273 = load i32, ptr %272, align 8, !tbaa !421
  %274 = and i32 %273, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276, !prof !1018

276:                                              ; preds = %268
  %277 = call fastcc ptr @VEC_edge_base_index(ptr noundef %270, i32 noundef 1) #17
  br label %278

278:                                              ; preds = %268, %276
  %279 = phi ptr [ %277, %276 ], [ %271, %268 ]
  call void @redirect_edge_succ(ptr noundef %279, ptr noundef %3) #16
  %280 = icmp eq i32 %4, 0
  br i1 %280, label %327, label %281, !prof !1019

281:                                              ; preds = %278
  %282 = load ptr, ptr %269, align 8, !tbaa !415
  %283 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 0) #17
  %284 = getelementptr inbounds %struct.edge_def, ptr %283, i64 0, i32 7
  %285 = load i32, ptr %284, align 8, !tbaa !421
  %286 = and i32 %285, 1
  %287 = icmp eq i32 %286, 0
  %288 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 1) #17
  %289 = select i1 %287, ptr %288, ptr %283, !prof !1020
  %290 = select i1 %287, ptr %283, ptr %288, !prof !1020
  %291 = getelementptr inbounds %struct.edge_def, ptr %290, i64 0, i32 9
  %292 = load i64, ptr %291, align 8, !tbaa !1021
  %293 = getelementptr inbounds %struct.edge_def, ptr %289, i64 0, i32 9
  %294 = load i64, ptr %293, align 8, !tbaa !1021
  store i64 %294, ptr %291, align 8, !tbaa !1021
  %295 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 0) #17
  %296 = getelementptr inbounds %struct.edge_def, ptr %295, i64 0, i32 7
  %297 = load i32, ptr %296, align 8, !tbaa !421
  %298 = and i32 %297, 1
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %302, !prof !1020

300:                                              ; preds = %281
  %301 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 1) #17
  br label %302

302:                                              ; preds = %281, %300
  %303 = phi ptr [ %301, %300 ], [ %295, %281 ]
  %304 = getelementptr inbounds %struct.edge_def, ptr %303, i64 0, i32 9
  store i64 %292, ptr %304, align 8, !tbaa !1021
  %305 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 0) #17
  %306 = getelementptr inbounds %struct.edge_def, ptr %305, i64 0, i32 7
  %307 = load i32, ptr %306, align 8, !tbaa !421
  %308 = and i32 %307, 1
  %309 = icmp eq i32 %308, 0
  %310 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 1) #17
  %311 = select i1 %309, ptr %310, ptr %305, !prof !1020
  %312 = select i1 %309, ptr %305, ptr %310, !prof !1020
  %313 = getelementptr inbounds %struct.edge_def, ptr %312, i64 0, i32 8
  %314 = load i32, ptr %313, align 4, !tbaa !1022
  %315 = getelementptr inbounds %struct.edge_def, ptr %311, i64 0, i32 8
  %316 = load i32, ptr %315, align 4, !tbaa !1022
  store i32 %316, ptr %313, align 4, !tbaa !1022
  %317 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 0) #17
  %318 = getelementptr inbounds %struct.edge_def, ptr %317, i64 0, i32 7
  %319 = load i32, ptr %318, align 8, !tbaa !421
  %320 = and i32 %319, 1
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %324, !prof !1020

322:                                              ; preds = %302
  %323 = call fastcc ptr @VEC_edge_base_index(ptr noundef %282, i32 noundef 1) #17
  br label %324

324:                                              ; preds = %302, %322
  %325 = phi ptr [ %323, %322 ], [ %317, %302 ]
  %326 = getelementptr inbounds %struct.edge_def, ptr %325, i64 0, i32 8
  store i32 %314, ptr %326, align 4, !tbaa !1022
  call void @update_br_prob_note(ptr noundef nonnull %0) #16
  br label %327

327:                                              ; preds = %278, %324, %267
  %328 = icmp eq ptr %250, null
  br i1 %328, label %383, label %329, !prof !1023

329:                                              ; preds = %327
  %330 = load ptr, ptr %13, align 8, !tbaa !480
  %331 = getelementptr inbounds %struct.rtl_bb_info, ptr %330, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !481
  %333 = icmp eq ptr %249, %332
  br i1 %333, label %334, label %337, !prof !1024

334:                                              ; preds = %329
  %335 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1, i32 0, i32 0, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !480
  store ptr %336, ptr %331, align 8, !tbaa !481
  br label %337

337:                                              ; preds = %334, %329
  br label %338

338:                                              ; preds = %337, %375
  %339 = phi ptr [ %377, %375 ], [ %250, %337 ]
  %340 = load i32, ptr %339, align 8
  %341 = and i32 %340, 65535
  %342 = add nsw i32 %341, -7
  %343 = icmp ult i32 %342, 4
  br i1 %343, label %344, label %373, !prof !1025

344:                                              ; preds = %338
  %345 = call ptr @find_reg_note(ptr noundef nonnull %339, i32 noundef 4, ptr noundef null) #16
  %346 = icmp eq ptr %345, null
  br i1 %346, label %373, label %347, !prof !1026

347:                                              ; preds = %344
  %348 = load i32, ptr %339, align 8
  %349 = and i32 %348, 65535
  %350 = add nsw i32 %349, -7
  %351 = icmp ult i32 %350, 4
  br i1 %351, label %352, label %372, !prof !1027

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.rtx_def, ptr %339, i64 1
  %354 = load ptr, ptr %353, align 8, !tbaa !480
  %355 = load i32, ptr %354, align 8
  %356 = and i32 %355, 65535
  %357 = icmp eq i32 %356, 23
  br i1 %357, label %361, label %358, !prof !1028

358:                                              ; preds = %352
  %359 = call ptr @single_set_2(ptr noundef nonnull %339, ptr noundef nonnull %354) #16
  %360 = icmp eq ptr %359, null
  br i1 %360, label %372, label %361, !prof !1029

361:                                              ; preds = %352, %358
  %362 = phi ptr [ %359, %358 ], [ %354, %352 ]
  %363 = getelementptr inbounds %struct.rtx_def, ptr %362, i64 0, i32 1, i32 0, i32 0, i64 1
  %364 = load ptr, ptr %363, align 8, !tbaa !480
  %365 = call i32 @function_invariant_p(ptr noundef %364) #16
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %372, label %367, !prof !1030

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.rtx_def, ptr %345, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !480
  %370 = call i32 @function_invariant_p(ptr noundef %369) #16
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373, !prof !1031

372:                                              ; preds = %347, %367, %361, %358
  call void @remove_note(ptr noundef nonnull %339, ptr noundef nonnull %345) #16
  br label %373

373:                                              ; preds = %338, %367, %372, %344
  %374 = icmp eq ptr %339, %249
  br i1 %374, label %379, label %375, !prof !1032

375:                                              ; preds = %373
  %376 = getelementptr inbounds %struct.rtx_def, ptr %339, i64 0, i32 1, i32 0, i32 0, i64 2
  %377 = load ptr, ptr %376, align 8, !tbaa !480
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %338, !prof !1032, !llvm.loop !1033

379:                                              ; preds = %373, %375
  %380 = load ptr, ptr %6, align 8, !tbaa !388
  %381 = getelementptr inbounds %struct.rtx_def, ptr %380, i64 0, i32 1, i32 0, i32 0, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !480
  call void @reorder_insns(ptr noundef nonnull %250, ptr noundef %249, ptr noundef %382) #16
  br label %383

383:                                              ; preds = %379, %327
  br i1 %253, label %384, label %399, !prof !1017

384:                                              ; preds = %383
  %385 = call ptr @delete_insn(ptr noundef %12) #16
  %386 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !415
  %388 = call fastcc ptr @VEC_edge_base_index(ptr noundef %387, i32 noundef 0) #17
  %389 = getelementptr inbounds %struct.edge_def, ptr %388, i64 0, i32 7
  %390 = load i32, ptr %389, align 8, !tbaa !421
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
define internal i32 @find_memory(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #6 !prof !1034 !PGOFuncName !1035 {
  %3 = load ptr, ptr %0, align 8, !tbaa !388
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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !1036 !PGOFuncName !1037 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1038
  store ptr %4, ptr %0, align 8, !tbaa !1040
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !1042
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !1043

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1040
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !1044
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !1046
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !730
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !1047
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !381
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !1048 !PGOFuncName !1049 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1047
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1050

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !1051

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !381
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !1052, !llvm.loop !1053

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !381
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !381
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1046
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !1040
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !1046
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !1054

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !730
  store i64 %35, ptr %3, align 8, !tbaa !1047
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !1055

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !381
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !381
  %40 = load i32, ptr %23, align 8, !tbaa !1046
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !1046
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !1056, !llvm.loop !1057

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !1058
  store ptr %44, ptr %0, align 8, !tbaa !1040
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !1059

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1044
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !381
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1047
  store i32 %16, ptr %1, align 4, !tbaa !381
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !1060 !PGOFuncName !1061 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1047
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !1047
  %6 = load i32, ptr %1, align 4, !tbaa !381
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !381
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

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_if_after_combine() #0 !prof !379 !PGOFuncName !1062 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !381
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_if_conversion, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10, !prof !1063

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
define internal noundef i32 @rest_of_handle_if_after_combine() #0 !prof !379 !PGOFuncName !1064 {
  tail call fastcc void @if_convert() #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_if_after_reload() #0 !prof !379 !PGOFuncName !1065 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !381
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_if_conversion2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10, !prof !1063

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
define internal noundef i32 @rest_of_handle_if_after_reload() #0 !prof !379 !PGOFuncName !1066 {
  tail call fastcc void @if_convert() #17
  ret i32 0
}

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!378}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377}
!36 = !{ptr @gate_handle_if_conversion, ptr @dbg_cnt, i64 6651}
!37 = !{ptr @rest_of_handle_if_conversion, ptr @dump_flow_info, i64 1}
!38 = !{ptr @rest_of_handle_if_conversion, ptr @cleanup_cfg, i64 13303}
!39 = !{ptr @rest_of_handle_if_conversion, ptr @if_convert, i64 6651}
!40 = !{ptr @if_convert, ptr @df_live_add_problem, i64 1}
!41 = !{ptr @if_convert, ptr @df_live_set_all_dirty, i64 1}
!42 = !{ptr @if_convert, ptr @loop_optimizer_init, i64 19956}
!43 = !{ptr @if_convert, ptr @mark_loop_exit_edges, i64 19956}
!44 = !{ptr @if_convert, ptr @loop_optimizer_finalize, i64 19956}
!45 = !{ptr @if_convert, ptr @free_dominance_info, i64 39912}
!46 = !{ptr @if_convert, ptr @calculate_dominance_info, i64 19956}
!47 = !{ptr @if_convert, ptr @df_set_flags, i64 19956}
!48 = !{ptr @if_convert, ptr @df_analyze, i64 24019}
!49 = !{ptr @if_convert, ptr @df_clear_flags, i64 24019}
!50 = !{ptr @if_convert, ptr @fprintf, i64 4}
!51 = !{ptr @if_convert, ptr @df_get_bb_dirty, i64 1700477}
!52 = !{ptr @if_convert, ptr @find_if_header, i64 1654197}
!53 = !{ptr @if_convert, ptr @get_insns, i64 1}
!54 = !{ptr @if_convert, ptr @fwrite, i64 1}
!55 = !{ptr @if_convert, ptr @fflush, i64 1}
!56 = !{ptr @if_convert, ptr @clear_aux_for_blocks, i64 19956}
!57 = !{ptr @if_convert, ptr @max_reg_num, i64 22151}
!58 = !{ptr @if_convert, ptr @df_remove_problem, i64 1}
!59 = !{ptr @find_if_header, ptr @VEC_edge_base_length, i64 1654849}
!60 = !{ptr @find_if_header, ptr @VEC_edge_base_index, i64 2160322}
!61 = !{ptr @find_if_header, ptr @df_get_bb_dirty, i64 2159365}
!62 = !{ptr @find_if_header, ptr @noce_find_if_block, i64 782271}
!63 = !{ptr @find_if_header, ptr @cond_exec_find_if_block, i64 1}
!64 = !{ptr @find_if_header, ptr @find_cond_trap, i64 1}
!65 = !{ptr @find_if_header, ptr @dom_info_state, i64 954199}
!66 = !{ptr @find_if_header, ptr @find_if_case_1, i64 954198}
!67 = !{ptr @find_if_header, ptr @find_if_case_2, i64 953837}
!68 = !{ptr @find_if_header, ptr @fprintf, i64 1}
!69 = !{ptr @noce_find_if_block, ptr @fancy_abort, i64 1}
!70 = !{ptr @noce_find_if_block, ptr @single_pred_p, i64 2432726}
!71 = !{ptr @noce_find_if_block, ptr @single_succ_p, i64 1606256}
!72 = !{ptr @noce_find_if_block, ptr @single_succ, i64 357698}
!73 = !{ptr @noce_find_if_block, ptr @single_succ_edge, i64 110708}
!74 = !{ptr @noce_find_if_block, ptr @fprintf, i64 3}
!75 = !{ptr @noce_find_if_block, ptr @onlyjump_p, i64 87505}
!76 = !{ptr @noce_find_if_block, ptr @noce_get_condition, i64 87504}
!77 = !{ptr @noce_find_if_block, ptr @optimize_bb_for_speed_p, i64 87310}
!78 = !{ptr @noce_find_if_block, ptr @predictable_edge_p, i64 57740}
!79 = !{ptr @noce_find_if_block, ptr @noce_process_if_block, i64 87310}
!80 = !{ptr @noce_find_if_block, ptr @cond_move_process_if_block, i64 85493}
!81 = !{ptr @find_if_case_1, ptr @find_reg_note, i64 2862618}
!82 = !{ptr @find_if_case_1, ptr @single_succ_p, i64 954205}
!83 = !{ptr @find_if_case_1, ptr @single_succ_edge, i64 297523}
!84 = !{ptr @find_if_case_1, ptr @single_pred_p, i64 35466}
!85 = !{ptr @find_if_case_1, ptr @forwarder_block_p, i64 32495}
!86 = !{ptr @find_if_case_1, ptr @fprintf, i64 1}
!87 = !{ptr @find_if_case_1, ptr @optimize_bb_for_speed_p, i64 18298}
!88 = !{ptr @find_if_case_1, ptr @predictable_edge_p, i64 11285}
!89 = !{ptr @find_if_case_1, ptr @cheap_bb_rtx_cost_p, i64 18298}
!90 = !{ptr @find_if_case_1, ptr @single_succ, i64 7076}
!91 = !{ptr @find_if_case_1, ptr @dead_or_predicable, i64 7076}
!92 = !{ptr @find_if_case_1, ptr @VEC_edge_base_index, i64 904}
!93 = !{ptr @find_if_case_1, ptr @redirect_edge_succ, i64 116}
!94 = !{ptr @find_if_case_1, ptr @redirect_edge_and_branch_force, i64 469}
!95 = !{ptr @find_if_case_1, ptr @df_set_bb_dirty, i64 1170}
!96 = !{ptr @find_if_case_1, ptr @delete_basic_block, i64 585}
!97 = !{ptr @find_if_case_1, ptr @df_bb_replace, i64 465}
!98 = !{ptr @find_if_case_2, ptr @find_reg_note, i64 2994136}
!99 = !{ptr @find_if_case_2, ptr @single_succ_p, i64 953845}
!100 = !{ptr @find_if_case_2, ptr @single_succ_edge, i64 458958}
!101 = !{ptr @find_if_case_2, ptr @single_pred_p, i64 456402}
!102 = !{ptr @find_if_case_2, ptr @dominated_by_p, i64 45358}
!103 = !{ptr @find_if_case_2, ptr @fprintf, i64 1}
!104 = !{ptr @find_if_case_2, ptr @optimize_bb_for_speed_p, i64 116956}
!105 = !{ptr @find_if_case_2, ptr @predictable_edge_p, i64 46466}
!106 = !{ptr @find_if_case_2, ptr @cheap_bb_rtx_cost_p, i64 116956}
!107 = !{ptr @find_if_case_2, ptr @dead_or_predicable, i64 100958}
!108 = !{ptr @find_if_case_2, ptr @df_set_bb_dirty, i64 109468}
!109 = !{ptr @find_if_case_2, ptr @delete_basic_block, i64 54734}
!110 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 2924595}
!111 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 4745515}
!112 = !{ptr @single_succ, ptr @single_succ_edge, i64 362061}
!113 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 1231202}
!114 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!115 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 1231202}
!116 = !{ptr @noce_get_condition, ptr @any_condjump_p, i64 118044}
!117 = !{ptr @noce_get_condition, ptr @pc_set, i64 118043}
!118 = !{ptr @noce_get_condition, ptr @reverse_condition, i64 1}
!119 = !{ptr @noce_get_condition, ptr @gen_rtx_fmt_ee_stat, i64 1}
!120 = !{ptr @noce_get_condition, ptr @canonicalize_condition, i64 118042}
!121 = !{ptr @noce_process_if_block, ptr @first_active_insn, i64 94238}
!122 = !{ptr @noce_process_if_block, ptr @last_active_insn, i64 94234}
!123 = !{ptr @noce_process_if_block, ptr @single_set_2, i64 3}
!124 = !{ptr @noce_process_if_block, ptr @rtx_equal_p, i64 43141}
!125 = !{ptr @noce_process_if_block, ptr @prev_nonnote_insn, i64 18151}
!126 = !{ptr @noce_process_if_block, ptr @noce_operand_ok, i64 48533}
!127 = !{ptr @noce_process_if_block, ptr @reg_overlap_mentioned_p, i64 14474}
!128 = !{ptr @noce_process_if_block, ptr @modified_between_p, i64 9060}
!129 = !{ptr @noce_process_if_block, ptr @side_effects_p, i64 22007}
!130 = !{ptr @noce_process_if_block, ptr @rhs_regno, i64 13894}
!131 = !{ptr @noce_process_if_block, ptr @gen_reg_rtx, i64 8118}
!132 = !{ptr @noce_process_if_block, ptr @reorder_insns, i64 9}
!133 = !{ptr @noce_process_if_block, ptr @find_reg_note, i64 9}
!134 = !{ptr @noce_process_if_block, ptr @remove_note, i64 1}
!135 = !{ptr @noce_process_if_block, ptr @noce_mem_write_may_trap_or_fault_p, i64 7338}
!136 = !{ptr @noce_process_if_block, ptr @noce_can_store_speculate_p, i64 4239}
!137 = !{ptr @noce_process_if_block, ptr @noce_try_move, i64 17458}
!138 = !{ptr @noce_process_if_block, ptr @noce_try_store_flag, i64 17457}
!139 = !{ptr @noce_process_if_block, ptr @noce_try_bitop, i64 17413}
!140 = !{ptr @noce_process_if_block, ptr @noce_try_minmax, i64 17412}
!141 = !{ptr @noce_process_if_block, ptr @noce_try_abs, i64 17411}
!142 = !{ptr @noce_process_if_block, ptr @noce_try_cmove, i64 17410}
!143 = !{ptr @noce_process_if_block, ptr @noce_try_store_flag_constants, i64 15851}
!144 = !{ptr @noce_process_if_block, ptr @noce_try_addcc, i64 15850}
!145 = !{ptr @noce_process_if_block, ptr @noce_try_store_flag_mask, i64 15711}
!146 = !{ptr @noce_process_if_block, ptr @noce_try_cmove_arith, i64 15710}
!147 = !{ptr @noce_process_if_block, ptr @noce_try_sign_mask, i64 15622}
!148 = !{ptr @noce_process_if_block, ptr @start_sequence, i64 30}
!149 = !{ptr @noce_process_if_block, ptr @noce_emit_move_insn, i64 30}
!150 = !{ptr @noce_process_if_block, ptr @get_insns, i64 30}
!151 = !{ptr @noce_process_if_block, ptr @set_used_flags, i64 30}
!152 = !{ptr @noce_process_if_block, ptr @unshare_all_rtl_in_chain, i64 30}
!153 = !{ptr @noce_process_if_block, ptr @end_sequence, i64 30}
!154 = !{ptr @noce_process_if_block, ptr @emit_insn_before_setloc, i64 30}
!155 = !{ptr @noce_process_if_block, ptr @delete_basic_block, i64 3360}
!156 = !{ptr @noce_process_if_block, ptr @find_edge, i64 2178}
!157 = !{ptr @noce_process_if_block, ptr @remove_edge, i64 2178}
!158 = !{ptr @noce_process_if_block, ptr @single_succ_edge, i64 1846}
!159 = !{ptr @noce_process_if_block, ptr @redirect_edge_and_branch_force, i64 1846}
!160 = !{ptr @noce_process_if_block, ptr @can_merge_blocks_p, i64 1846}
!161 = !{ptr @noce_process_if_block, ptr @merge_blocks, i64 643}
!162 = !{ptr @cond_move_process_if_block, ptr @max_reg_num, i64 85498}
!163 = !{ptr @cond_move_process_if_block, ptr @check_cond_move_block, i64 87066}
!164 = !{ptr @cond_move_process_if_block, ptr @VEC_int_base_iterate, i64 16356}
!165 = !{ptr @cond_move_process_if_block, ptr @rtx_equal_p, i64 178}
!166 = !{ptr @cond_move_process_if_block, ptr @optimize_function_for_speed_p, i64 4732}
!167 = !{ptr @cond_move_process_if_block, ptr @start_sequence, i64 4731}
!168 = !{ptr @cond_move_process_if_block, ptr @cond_move_convert_if_block, i64 5001}
!169 = !{ptr @cond_move_process_if_block, ptr @end_sequence, i64 4592}
!170 = !{ptr @cond_move_process_if_block, ptr @end_ifcvt_sequence, i64 139}
!171 = !{ptr @cond_move_process_if_block, ptr @first_active_insn, i64 137}
!172 = !{ptr @cond_move_process_if_block, ptr @emit_insn_before_setloc, i64 136}
!173 = !{ptr @cond_move_process_if_block, ptr @delete_basic_block, i64 265}
!174 = !{ptr @cond_move_process_if_block, ptr @find_edge, i64 143}
!175 = !{ptr @cond_move_process_if_block, ptr @remove_edge, i64 143}
!176 = !{ptr @cond_move_process_if_block, ptr @single_succ_edge, i64 136}
!177 = !{ptr @cond_move_process_if_block, ptr @redirect_edge_and_branch_force, i64 136}
!178 = !{ptr @cond_move_process_if_block, ptr @can_merge_blocks_p, i64 136}
!179 = !{ptr @cond_move_process_if_block, ptr @merge_blocks, i64 34}
!180 = !{ptr @cond_move_process_if_block, ptr @VEC_int_heap_free, i64 170996}
!181 = !{ptr @noce_operand_ok, ptr @side_effects_p, i64 48039}
!182 = !{ptr @noce_operand_ok, ptr @may_trap_p, i64 35554}
!183 = !{ptr @noce_mem_write_may_trap_or_fault_p, ptr @may_trap_or_fault_p, i64 7259}
!184 = !{ptr @noce_mem_write_may_trap_or_fault_p, ptr @decl_readonly_section, i64 4069}
!185 = !{ptr @noce_can_store_speculate_p, ptr @get_immediate_dominator, i64 14856}
!186 = !{ptr @noce_can_store_speculate_p, ptr @volatile_insn_p, i64 24154}
!187 = !{ptr @noce_can_store_speculate_p, ptr @memory_modified_in_insn_p, i64 40913}
!188 = !{ptr @noce_can_store_speculate_p, ptr @modified_in_p, i64 40801}
!189 = !{ptr @noce_try_move, ptr @rtx_equal_p, i64 26368}
!190 = !{ptr @noce_try_move, ptr @start_sequence, i64 1}
!191 = !{ptr @noce_try_move, ptr @noce_emit_move_insn, i64 1}
!192 = !{ptr @noce_try_move, ptr @end_ifcvt_sequence, i64 1}
!193 = !{ptr @noce_try_store_flag, ptr @reversed_comparison_code, i64 20}
!194 = !{ptr @noce_try_store_flag, ptr @start_sequence, i64 43}
!195 = !{ptr @noce_try_store_flag, ptr @noce_emit_store_flag, i64 43}
!196 = !{ptr @noce_try_store_flag, ptr @noce_emit_move_insn, i64 16}
!197 = !{ptr @noce_try_store_flag, ptr @end_ifcvt_sequence, i64 42}
!198 = !{ptr @noce_try_store_flag, ptr @emit_insn_before_setloc, i64 41}
!199 = !{ptr @noce_try_store_flag, ptr @end_sequence, i64 1}
!200 = !{ptr @noce_try_bitop, ptr @rtx_equal_p, i64 17426}
!201 = !{ptr @noce_try_minmax, ptr @noce_get_alt_condition, i64 17184}
!202 = !{ptr @noce_try_minmax, ptr @rtx_equal_p, i64 8768}
!203 = !{ptr @noce_try_minmax, ptr @swap_condition, i64 1668}
!204 = !{ptr @noce_try_minmax, ptr @start_sequence, i64 467}
!205 = !{ptr @noce_try_minmax, ptr @expand_simple_binop, i64 467}
!206 = !{ptr @noce_try_minmax, ptr @end_sequence, i64 467}
!207 = !{ptr @noce_try_abs, ptr @rtx_equal_p, i64 52}
!208 = !{ptr @noce_try_abs, ptr @noce_get_alt_condition, i64 43}
!209 = !{ptr @noce_try_abs, ptr @prev_nonnote_insn, i64 1}
!210 = !{ptr @noce_try_abs, ptr @start_sequence, i64 2}
!211 = !{ptr @noce_try_abs, ptr @expand_abs_nojump, i64 1}
!212 = !{ptr @noce_try_abs, ptr @expand_one_cmpl_abs_nojump, i64 1}
!213 = !{ptr @noce_try_abs, ptr @expand_simple_unop, i64 2}
!214 = !{ptr @noce_try_abs, ptr @end_sequence, i64 1}
!215 = !{ptr @noce_try_abs, ptr @noce_emit_move_insn, i64 1}
!216 = !{ptr @noce_try_abs, ptr @end_ifcvt_sequence, i64 1}
!217 = !{ptr @noce_try_abs, ptr @emit_insn_before_setloc, i64 1}
!218 = !{ptr @noce_try_cmove, ptr @register_operand, i64 18195}
!219 = !{ptr @noce_try_cmove, ptr @start_sequence, i64 10323}
!220 = !{ptr @noce_try_cmove, ptr @noce_emit_cmove, i64 10323}
!221 = !{ptr @noce_try_cmove, ptr @noce_emit_move_insn, i64 1}
!222 = !{ptr @noce_try_cmove, ptr @end_ifcvt_sequence, i64 1542}
!223 = !{ptr @noce_try_cmove, ptr @emit_insn_before_setloc, i64 1541}
!224 = !{ptr @noce_try_cmove, ptr @end_sequence, i64 8782}
!225 = !{ptr @noce_try_addcc, ptr @rtx_equal_p, i64 736}
!226 = !{ptr @noce_try_addcc, ptr @reversed_comparison_code, i64 916}
!227 = !{ptr @noce_try_addcc, ptr @general_operand, i64 908}
!228 = !{ptr @noce_try_addcc, ptr @start_sequence, i64 491}
!229 = !{ptr @noce_try_addcc, ptr @emit_conditional_add, i64 450}
!230 = !{ptr @noce_try_addcc, ptr @noce_emit_move_insn, i64 2}
!231 = !{ptr @noce_try_addcc, ptr @end_ifcvt_sequence, i64 138}
!232 = !{ptr @noce_try_addcc, ptr @emit_insn_before_setloc, i64 136}
!233 = !{ptr @noce_try_addcc, ptr @end_sequence, i64 353}
!234 = !{ptr @noce_try_addcc, ptr @gen_reg_rtx, i64 41}
!235 = !{ptr @noce_try_addcc, ptr @noce_emit_store_flag, i64 41}
!236 = !{ptr @noce_try_addcc, ptr @expand_simple_binop, i64 40}
!237 = !{ptr @noce_try_store_flag_mask, ptr @rtx_equal_p, i64 1135}
!238 = !{ptr @noce_try_store_flag_mask, ptr @reversed_comparison_code, i64 15459}
!239 = !{ptr @noce_try_store_flag_mask, ptr @start_sequence, i64 2}
!240 = !{ptr @noce_try_store_flag_mask, ptr @gen_reg_rtx, i64 2}
!241 = !{ptr @noce_try_store_flag_mask, ptr @noce_emit_store_flag, i64 2}
!242 = !{ptr @noce_try_store_flag_mask, ptr @expand_simple_binop, i64 1}
!243 = !{ptr @noce_try_store_flag_mask, ptr @end_ifcvt_sequence, i64 1}
!244 = !{ptr @noce_try_store_flag_mask, ptr @end_sequence, i64 1}
!245 = !{ptr @noce_try_cmove_arith, ptr @gen_reg_rtx, i64 1480}
!246 = !{ptr @noce_try_cmove_arith, ptr @may_trap_p, i64 26647}
!247 = !{ptr @noce_try_cmove_arith, ptr @optimize_bb_for_speed_p, i64 14913}
!248 = !{ptr @noce_try_cmove_arith, ptr @insn_rtx_cost, i64 14913}
!249 = !{ptr @noce_try_cmove_arith, ptr @reversed_comparison_code, i64 21807}
!250 = !{ptr @noce_try_cmove_arith, ptr @rtx_equal_p, i64 10902}
!251 = !{ptr @noce_try_cmove_arith, ptr @general_operand, i64 25803}
!252 = !{ptr @noce_try_cmove_arith, ptr @start_sequence, i64 10941}
!253 = !{ptr @noce_try_cmove_arith, ptr @gen_rtx_fmt_ee_stat, i64 2}
!254 = !{ptr @noce_try_cmove_arith, ptr @copy_rtx, i64 1477}
!255 = !{ptr @noce_try_cmove_arith, ptr @single_set_2, i64 51}
!256 = !{ptr @noce_try_cmove_arith, ptr @emit_insn, i64 1478}
!257 = !{ptr @noce_try_cmove_arith, ptr @recog_memoized, i64 1478}
!258 = !{ptr @noce_try_cmove_arith, ptr @get_last_insn, i64 1416}
!259 = !{ptr @noce_try_cmove_arith, ptr @modified_in_p, i64 64}
!260 = !{ptr @noce_try_cmove_arith, ptr @get_insns, i64 1}
!261 = !{ptr @noce_try_cmove_arith, ptr @emit_insn_before, i64 1}
!262 = !{ptr @noce_try_cmove_arith, ptr @noce_emit_cmove, i64 10888}
!263 = !{ptr @noce_try_cmove_arith, ptr @gen_rtx_MEM, i64 1}
!264 = !{ptr @noce_try_cmove_arith, ptr @set_mem_align, i64 1}
!265 = !{ptr @noce_try_cmove_arith, ptr @set_mem_addr_space, i64 1}
!266 = !{ptr @noce_try_cmove_arith, ptr @noce_emit_move_insn, i64 2}
!267 = !{ptr @noce_try_cmove_arith, ptr @end_ifcvt_sequence, i64 87}
!268 = !{ptr @noce_try_cmove_arith, ptr @emit_insn_before_setloc, i64 86}
!269 = !{ptr @noce_try_cmove_arith, ptr @end_sequence, i64 10854}
!270 = !{ptr @noce_try_sign_mask, ptr @side_effects_p, i64 1}
!271 = !{ptr @noce_emit_move_insn, ptr @start_sequence, i64 44}
!272 = !{ptr @noce_emit_move_insn, ptr @emit_move_insn, i64 22}
!273 = !{ptr @noce_emit_move_insn, ptr @gen_rtx_fmt_ee_stat, i64 22}
!274 = !{ptr @noce_emit_move_insn, ptr @emit_insn, i64 66}
!275 = !{ptr @noce_emit_move_insn, ptr @get_insns, i64 44}
!276 = !{ptr @noce_emit_move_insn, ptr @end_sequence, i64 44}
!277 = !{ptr @noce_emit_move_insn, ptr @recog_memoized, i64 44}
!278 = !{ptr @noce_emit_move_insn, ptr @store_bit_field, i64 1}
!279 = !{ptr @end_ifcvt_sequence, ptr @get_insns, i64 1944}
!280 = !{ptr @end_ifcvt_sequence, ptr @set_used_flags, i64 3888}
!281 = !{ptr @end_ifcvt_sequence, ptr @unshare_all_rtl_in_chain, i64 1944}
!282 = !{ptr @end_ifcvt_sequence, ptr @end_sequence, i64 1944}
!283 = !{ptr @end_ifcvt_sequence, ptr @recog_memoized, i64 8443}
!284 = !{ptr @recog_memoized, ptr @recog, i64 9977}
!285 = !{ptr @noce_emit_store_flag, ptr @general_operand, i64 161}
!286 = !{ptr @noce_emit_store_flag, ptr @pc_set, i64 1}
!287 = !{ptr @noce_emit_store_flag, ptr @reversed_comparison_code, i64 58}
!288 = !{ptr @noce_emit_store_flag, ptr @gen_rtx_fmt_ee_stat, i64 2}
!289 = !{ptr @noce_emit_store_flag, ptr @start_sequence, i64 1}
!290 = !{ptr @noce_emit_store_flag, ptr @emit_insn, i64 2}
!291 = !{ptr @noce_emit_store_flag, ptr @recog_memoized, i64 1}
!292 = !{ptr @noce_emit_store_flag, ptr @get_insns, i64 1}
!293 = !{ptr @noce_emit_store_flag, ptr @end_sequence, i64 1}
!294 = !{ptr @noce_emit_store_flag, ptr @emit_store_flag, i64 79}
!295 = !{ptr @noce_get_alt_condition, ptr @reg_mentioned_p, i64 31262}
!296 = !{ptr @noce_get_alt_condition, ptr @pc_set, i64 14502}
!297 = !{ptr @noce_get_alt_condition, ptr @prev_nonnote_insn, i64 2954}
!298 = !{ptr @noce_get_alt_condition, ptr @find_reg_equal_equiv_note, i64 1231}
!299 = !{ptr @noce_get_alt_condition, ptr @rtx_equal_p, i64 31}
!300 = !{ptr @noce_get_alt_condition, ptr @swap_condition, i64 1}
!301 = !{ptr @noce_get_alt_condition, ptr @gen_rtx_CONST_INT, i64 465}
!302 = !{ptr @noce_get_alt_condition, ptr @gen_rtx_fmt_ee_stat, i64 468}
!303 = !{ptr @noce_get_alt_condition, ptr @canonicalize_condition, i64 14035}
!304 = !{ptr @noce_get_alt_condition, ptr @reg_overlap_mentioned_p, i64 7}
!305 = !{ptr @noce_get_alt_condition, ptr @modified_in_p, i64 4}
!306 = !{ptr @noce_emit_cmove, ptr @gen_rtx_fmt_ee_stat, i64 136}
!307 = !{ptr @noce_emit_cmove, ptr @gen_rtx_fmt_eee_stat, i64 68}
!308 = !{ptr @noce_emit_cmove, ptr @start_sequence, i64 68}
!309 = !{ptr @noce_emit_cmove, ptr @emit_insn, i64 69}
!310 = !{ptr @noce_emit_cmove, ptr @recog_memoized, i64 68}
!311 = !{ptr @noce_emit_cmove, ptr @end_sequence, i64 68}
!312 = !{ptr @noce_emit_cmove, ptr @get_insns, i64 1}
!313 = !{ptr @noce_emit_cmove, ptr @general_operand, i64 52134}
!314 = !{ptr @noce_emit_cmove, ptr @emit_conditional_move, i64 25783}
!315 = !{ptr @check_cond_move_block, ptr @onlyjump_p, i64 1}
!316 = !{ptr @check_cond_move_block, ptr @single_set_2, i64 1}
!317 = !{ptr @check_cond_move_block, ptr @rhs_regno, i64 80659}
!318 = !{ptr @check_cond_move_block, ptr @register_operand, i64 36106}
!319 = !{ptr @check_cond_move_block, ptr @side_effects_p, i64 22205}
!320 = !{ptr @check_cond_move_block, ptr @may_trap_p, i64 22201}
!321 = !{ptr @check_cond_move_block, ptr @reg_overlap_mentioned_p, i64 11092}
!322 = !{ptr @check_cond_move_block, ptr @modified_between_p, i64 3191}
!323 = !{ptr @check_cond_move_block, ptr @VEC_int_heap_safe_push, i64 8493}
!324 = !{ptr @VEC_int_heap_free, ptr @free, i64 7367}
!325 = !{ptr @cond_move_convert_if_block, ptr @single_set_2, i64 1}
!326 = !{ptr @cond_move_convert_if_block, ptr @fancy_abort, i64 4}
!327 = !{ptr @cond_move_convert_if_block, ptr @rhs_regno, i64 5534}
!328 = !{ptr @cond_move_convert_if_block, ptr @noce_emit_cmove, i64 5092}
!329 = !{ptr @cond_move_convert_if_block, ptr @noce_emit_move_insn, i64 1}
!330 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_heap_reserve, i64 8480}
!331 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_base_quick_push, i64 8480}
!332 = !{ptr @VEC_int_heap_reserve, ptr @VEC_int_base_space, i64 8480}
!333 = !{ptr @VEC_int_heap_reserve, ptr @vec_heap_o_reserve, i64 7398}
!334 = !{ptr @cheap_bb_rtx_cost_p, ptr @optimize_bb_for_speed_p, i64 135255}
!335 = !{ptr @cheap_bb_rtx_cost_p, ptr @insn_rtx_cost, i64 189230}
!336 = !{ptr @cheap_bb_rtx_cost_p, ptr @single_set_2, i64 1}
!337 = !{ptr @cheap_bb_rtx_cost_p, ptr @rhs_regno, i64 151498}
!338 = !{ptr @dead_or_predicable, ptr @tablejump_p, i64 44475}
!339 = !{ptr @dead_or_predicable, ptr @cond_exec_get_condition, i64 1}
!340 = !{ptr @dead_or_predicable, ptr @find_reg_note, i64 11586}
!341 = !{ptr @dead_or_predicable, ptr @may_trap_p, i64 46333}
!342 = !{ptr @dead_or_predicable, ptr @for_each_rtx, i64 38524}
!343 = !{ptr @dead_or_predicable, ptr @any_condjump_p, i64 30533}
!344 = !{ptr @dead_or_predicable, ptr @noce_get_condition, i64 30532}
!345 = !{ptr @dead_or_predicable, ptr @bitmap_obstack_alloc_stat, i64 91242}
!346 = !{ptr @dead_or_predicable, ptr @max_reg_num, i64 33576}
!347 = !{ptr @dead_or_predicable, ptr @bitmap_set_bit, i64 33581}
!348 = !{ptr @dead_or_predicable, ptr @bmp_iter_set_init, i64 28600}
!349 = !{ptr @dead_or_predicable, ptr @bmp_iter_set, i64 59700}
!350 = !{ptr @dead_or_predicable, ptr @bmp_iter_next, i64 31100}
!351 = !{ptr @dead_or_predicable, ptr @df_get_live_in, i64 52505}
!352 = !{ptr @dead_or_predicable, ptr @bitmap_copy, i64 30414}
!353 = !{ptr @dead_or_predicable, ptr @df_simulate_initialize_backwards, i64 30414}
!354 = !{ptr @dead_or_predicable, ptr @df_simulate_find_defs, i64 60844}
!355 = !{ptr @dead_or_predicable, ptr @df_simulate_one_insn_backwards, i64 60844}
!356 = !{ptr @dead_or_predicable, ptr @bitmap_intersect_p, i64 81479}
!357 = !{ptr @dead_or_predicable, ptr @bitmap_obstack_free, i64 91242}
!358 = !{ptr @dead_or_predicable, ptr @block_label, i64 11784}
!359 = !{ptr @dead_or_predicable, ptr @invert_jump_1, i64 1}
!360 = !{ptr @dead_or_predicable, ptr @redirect_jump_1, i64 11783}
!361 = !{ptr @dead_or_predicable, ptr @verify_changes, i64 11784}
!362 = !{ptr @dead_or_predicable, ptr @confirm_change_group, i64 11599}
!363 = !{ptr @dead_or_predicable, ptr @redirect_jump_2, i64 11599}
!364 = !{ptr @dead_or_predicable, ptr @VEC_edge_base_index, i64 16848}
!365 = !{ptr @dead_or_predicable, ptr @redirect_edge_succ, i64 11599}
!366 = !{ptr @dead_or_predicable, ptr @update_br_prob_note, i64 189}
!367 = !{ptr @dead_or_predicable, ptr @single_set_2, i64 1}
!368 = !{ptr @dead_or_predicable, ptr @function_invariant_p, i64 94}
!369 = !{ptr @dead_or_predicable, ptr @remove_note, i64 24}
!370 = !{ptr @dead_or_predicable, ptr @reorder_insns, i64 11585}
!371 = !{ptr @dead_or_predicable, ptr @delete_insn, i64 1}
!372 = !{ptr @dead_or_predicable, ptr @remove_edge, i64 1}
!373 = !{ptr @dead_or_predicable, ptr @cancel_changes, i64 185}
!374 = !{ptr @gate_handle_if_after_combine, ptr @dbg_cnt, i64 6650}
!375 = !{ptr @rest_of_handle_if_after_combine, ptr @if_convert, i64 6652}
!376 = !{ptr @gate_handle_if_after_reload, ptr @dbg_cnt, i64 6650}
!377 = !{ptr @rest_of_handle_if_after_reload, ptr @if_convert, i64 6652}
!378 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!379 = !{!"function_entry_count", i64 6652}
!380 = !{!"ifcvt.c:gate_handle_if_conversion"}
!381 = !{!382, !382, i64 0}
!382 = !{!"int", !383, i64 0}
!383 = !{!"omnipotent char", !384, i64 0}
!384 = !{!"Simple C/C++ TBAA"}
!385 = !{!"branch_weights", i32 6653, i32 1}
!386 = !{!"ifcvt.c:rest_of_handle_if_conversion"}
!387 = !{!"branch_weights", i32 1, i32 6653}
!388 = !{!389, !389, i64 0}
!389 = !{!"any pointer", !383, i64 0}
!390 = !{!"function_entry_count", i64 19956}
!391 = !{!"ifcvt.c:if_convert"}
!392 = !{!"branch_weights", i32 1, i32 19957}
!393 = !{!"branch_weights", i32 24019, i32 1}
!394 = !{!395, !389, i64 8}
!395 = !{!"function", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !389, i64 40, !389, i64 48, !389, i64 56, !389, i64 64, !389, i64 72, !389, i64 80, !389, i64 88, !389, i64 96, !382, i64 104, !382, i64 108, !382, i64 112, !382, i64 116, !382, i64 120, !382, i64 124, !389, i64 128, !382, i64 136, !382, i64 137, !382, i64 138, !382, i64 138, !382, i64 138, !382, i64 138, !382, i64 138, !382, i64 138, !382, i64 138, !382, i64 139, !382, i64 139, !382, i64 139, !382, i64 139, !382, i64 139, !382, i64 139, !382, i64 139}
!396 = !{!397, !389, i64 0}
!397 = !{!"control_flow_graph", !389, i64 0, !389, i64 8, !389, i64 16, !382, i64 24, !382, i64 28, !382, i64 32, !389, i64 40, !382, i64 48, !383, i64 52, !383, i64 60, !382, i64 68, !382, i64 72}
!398 = !{!399, !389, i64 56}
!399 = !{!"basic_block_def", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !383, i64 32, !389, i64 48, !389, i64 56, !383, i64 64, !400, i64 72, !382, i64 80, !382, i64 84, !382, i64 88, !382, i64 92, !382, i64 96}
!400 = !{!"long", !383, i64 0}
!401 = !{!397, !389, i64 8}
!402 = !{!"branch_weights", i32 1, i32 24018}
!403 = !{!"branch_weights", i32 1654850, i32 46299}
!404 = !{!"branch_weights", i32 1677090, i32 24059}
!405 = distinct !{!405, !406}
!406 = !{!"llvm.loop.mustprogress"}
!407 = !{!"branch_weights", i32 24018, i32 1653072}
!408 = !{!"branch_weights", i32 363255941, i32 1784227707}
!409 = distinct !{!409, !406}
!410 = !{!"branch_weights", i32 2147429849, i32 53799}
!411 = !{!"branch_weights", i32 19957, i32 1}
!412 = !{!"branch_weights", i32 2195, i32 17763}
!413 = !{!"function_entry_count", i64 1654849}
!414 = !{!"ifcvt.c:find_if_header"}
!415 = !{!399, !389, i64 8}
!416 = !{!"branch_weights", i32 1080162, i32 574689}
!417 = !{!418, !389, i64 8}
!418 = !{!"edge_def", !389, i64 0, !389, i64 8, !383, i64 16, !389, i64 24, !389, i64 32, !382, i64 40, !382, i64 44, !382, i64 48, !382, i64 52, !400, i64 56}
!419 = !{!"branch_weights", i32 1079206, i32 957}
!420 = !{!"branch_weights", i32 1060587, i32 18620}
!421 = !{!418, !382, i64 48}
!422 = !{!"branch_weights", i32 1060587, i32 1}
!423 = !{!"branch_weights", i32 -465724777, i32 417894555}
!424 = !{!"branch_weights", i32 388362, i32 567872}
!425 = !{!"branch_weights", i32 73, i32 388290}
!426 = !{!427, !389, i64 0}
!427 = !{!"ce_if_block", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !382, i64 40, !382, i64 44, !382, i64 48, !382, i64 52, !382, i64 56, !382, i64 60, !382, i64 64, !382, i64 68}
!428 = !{!427, !389, i64 8}
!429 = !{!427, !389, i64 16}
!430 = !{!427, !382, i64 68}
!431 = !{!"branch_weights", i32 782278, i32 173884}
!432 = !{i32 0, i32 2}
!433 = !{!"branch_weights", i32 780326, i32 1953}
!434 = !{!435, !389, i64 1000}
!435 = !{!"gcc_target", !436, i64 0, !438, i64 368, !439, i64 664, !382, i64 744, !389, i64 752, !389, i64 760, !389, i64 768, !389, i64 776, !389, i64 784, !389, i64 792, !389, i64 800, !389, i64 808, !389, i64 816, !389, i64 824, !389, i64 832, !389, i64 840, !389, i64 848, !389, i64 856, !389, i64 864, !389, i64 872, !389, i64 880, !389, i64 888, !389, i64 896, !389, i64 904, !389, i64 912, !389, i64 920, !389, i64 928, !389, i64 936, !389, i64 944, !389, i64 952, !389, i64 960, !389, i64 968, !389, i64 976, !389, i64 984, !389, i64 992, !389, i64 1000, !389, i64 1008, !389, i64 1016, !389, i64 1024, !389, i64 1032, !389, i64 1040, !389, i64 1048, !389, i64 1056, !400, i64 1064, !400, i64 1072, !389, i64 1080, !389, i64 1088, !389, i64 1096, !389, i64 1104, !389, i64 1112, !389, i64 1120, !389, i64 1128, !389, i64 1136, !389, i64 1144, !389, i64 1152, !389, i64 1160, !389, i64 1168, !440, i64 1176, !389, i64 1232, !389, i64 1240, !389, i64 1248, !389, i64 1256, !389, i64 1264, !389, i64 1272, !389, i64 1280, !389, i64 1288, !389, i64 1296, !389, i64 1304, !389, i64 1312, !389, i64 1320, !389, i64 1328, !389, i64 1336, !389, i64 1344, !389, i64 1352, !389, i64 1360, !389, i64 1368, !389, i64 1376, !389, i64 1384, !389, i64 1392, !389, i64 1400, !389, i64 1408, !389, i64 1416, !389, i64 1424, !389, i64 1432, !389, i64 1440, !389, i64 1448, !389, i64 1456, !400, i64 1464, !441, i64 1472, !389, i64 1664, !389, i64 1672, !389, i64 1680, !389, i64 1688, !389, i64 1696, !389, i64 1704, !389, i64 1712, !389, i64 1720, !389, i64 1728, !389, i64 1736, !389, i64 1744, !389, i64 1752, !389, i64 1760, !389, i64 1768, !389, i64 1776, !442, i64 1784, !443, i64 1792, !444, i64 1896, !445, i64 1968, !389, i64 2016, !383, i64 2024, !383, i64 2025, !383, i64 2026, !383, i64 2027, !383, i64 2028, !383, i64 2029, !383, i64 2030, !383, i64 2031, !383, i64 2032, !383, i64 2033, !383, i64 2034, !383, i64 2035}
!436 = !{!"asm_out", !389, i64 0, !389, i64 8, !389, i64 16, !437, i64 24, !437, i64 56, !389, i64 88, !389, i64 96, !389, i64 104, !389, i64 112, !389, i64 120, !389, i64 128, !389, i64 136, !389, i64 144, !389, i64 152, !389, i64 160, !389, i64 168, !389, i64 176, !389, i64 184, !389, i64 192, !389, i64 200, !389, i64 208, !389, i64 216, !389, i64 224, !389, i64 232, !389, i64 240, !389, i64 248, !389, i64 256, !389, i64 264, !389, i64 272, !389, i64 280, !389, i64 288, !389, i64 296, !389, i64 304, !389, i64 312, !389, i64 320, !389, i64 328, !389, i64 336, !389, i64 344, !389, i64 352, !389, i64 360}
!437 = !{!"asm_int_op", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24}
!438 = !{!"sched", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !389, i64 40, !389, i64 48, !389, i64 56, !389, i64 64, !389, i64 72, !389, i64 80, !389, i64 88, !389, i64 96, !389, i64 104, !389, i64 112, !389, i64 120, !389, i64 128, !389, i64 136, !389, i64 144, !389, i64 152, !389, i64 160, !389, i64 168, !389, i64 176, !389, i64 184, !389, i64 192, !389, i64 200, !389, i64 208, !389, i64 216, !389, i64 224, !389, i64 232, !389, i64 240, !389, i64 248, !389, i64 256, !389, i64 264, !389, i64 272, !389, i64 280, !389, i64 288}
!439 = !{!"vectorize", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !389, i64 40, !389, i64 48, !389, i64 56, !389, i64 64, !389, i64 72}
!440 = !{!"addr_space", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !389, i64 40, !389, i64 48}
!441 = !{!"calls", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !389, i64 40, !389, i64 48, !389, i64 56, !389, i64 64, !389, i64 72, !389, i64 80, !389, i64 88, !389, i64 96, !389, i64 104, !389, i64 112, !389, i64 120, !389, i64 128, !389, i64 136, !389, i64 144, !389, i64 152, !389, i64 160, !389, i64 168, !389, i64 176, !389, i64 184}
!442 = !{!"c", !389, i64 0}
!443 = !{!"cxx", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !389, i64 40, !389, i64 48, !389, i64 56, !389, i64 64, !389, i64 72, !389, i64 80, !389, i64 88, !389, i64 96}
!444 = !{!"emutls", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !389, i64 40, !389, i64 48, !389, i64 56, !383, i64 64, !383, i64 65}
!445 = !{!"target_option_hooks", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !389, i64 40}
!446 = !{!"branch_weights", i32 954209, i32 1}
!447 = !{!448, !382, i64 0}
!448 = !{!"optab_handlers", !382, i64 0}
!449 = !{!"branch_weights", i32 1, i32 954209}
!450 = !{!"branch_weights", i32 953849, i32 361}
!451 = !{!"branch_weights", i32 932103, i32 21747}
!452 = !{!"branch_weights", i32 24059, i32 1}
!453 = !{!"function_entry_count", i64 9324959}
!454 = !{!"ifcvt.c:VEC_edge_base_length"}
!455 = !{!"branch_weights", i32 1, i32 9324960}
!456 = !{!457, !382, i64 0}
!457 = !{!"VEC_edge_base", !382, i64 0, !382, i64 4, !383, i64 8}
!458 = !{!"function_entry_count", i64 3442216}
!459 = !{!"ifcvt.c:VEC_edge_base_index"}
!460 = !{!"function_entry_count", i64 782277}
!461 = !{!"ifcvt.c:noce_find_if_block"}
!462 = !{!"branch_weights", i32 782278, i32 1}
!463 = !{i8 0, i8 2}
!464 = !{!"branch_weights", i32 123002, i32 659277}
!465 = !{!"branch_weights", i32 465343, i32 193935}
!466 = !{!"branch_weights", i32 107192, i32 86744}
!467 = !{!"branch_weights", i32 56068, i32 30677}
!468 = !{!"branch_weights", i32 23188, i32 7490}
!469 = !{!"branch_weights", i32 123002, i32 636090}
!470 = !{!"branch_weights", i32 465343, i32 170748}
!471 = !{!"branch_weights", i32 61666, i32 109083}
!472 = !{!"branch_weights", i32 473277, i32 224150}
!473 = !{!"branch_weights", i32 124810, i32 99341}
!474 = !{!"branch_weights", i32 3072, i32 96270}
!475 = !{!"branch_weights", i32 87520, i32 405}
!476 = !{!"branch_weights", i32 64737, i32 22784}
!477 = !{!"branch_weights", i32 22771, i32 14}
!478 = !{!"branch_weights", i32 87507, i32 1}
!479 = !{!399, !382, i64 80}
!480 = !{!383, !383, i64 0}
!481 = !{!482, !389, i64 8}
!482 = !{!"rtl_bb_info", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !382, i64 32}
!483 = !{!"branch_weights", i32 1, i32 87507}
!484 = !{!"branch_weights", i32 193, i32 87315}
!485 = !{!"branch_weights", i32 1, i32 87315}
!486 = !{!487, !389, i64 0}
!487 = !{!"noce_if_info", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !389, i64 40, !389, i64 48, !389, i64 56, !389, i64 64, !389, i64 72, !389, i64 80, !389, i64 88, !383, i64 96, !382, i64 100}
!488 = !{!487, !389, i64 8}
!489 = !{!487, !389, i64 16}
!490 = !{!487, !389, i64 24}
!491 = !{!487, !389, i64 40}
!492 = !{!487, !389, i64 48}
!493 = !{!487, !389, i64 32}
!494 = !{!487, !383, i64 96}
!495 = !{!"branch_weights", i32 29572, i32 57744}
!496 = !{!"branch_weights", i32 86666, i32 650}
!497 = !{!487, !382, i64 100}
!498 = !{!"branch_weights", i32 85499, i32 1817}
!499 = !{!"function_entry_count", i64 0}
!500 = !{!"ifcvt.c:cond_exec_find_if_block"}
!501 = !{!427, !389, i64 32}
!502 = !{!427, !382, i64 56}
!503 = distinct !{!503, !406}
!504 = !{!427, !382, i64 40}
!505 = !{!427, !382, i64 52}
!506 = !{!427, !382, i64 44}
!507 = !{!427, !382, i64 48}
!508 = !{!399, !389, i64 0}
!509 = !{i64 0, i64 4, !381, i64 8, i64 8, !388}
!510 = !{i64 0, i64 8, !388}
!511 = distinct !{!511, !406}
!512 = distinct !{!512, !406}
!513 = !{!482, !389, i64 0}
!514 = distinct !{!514, !406}
!515 = !{!427, !389, i64 24}
!516 = !{!"ifcvt.c:find_cond_trap"}
!517 = !{!"function_entry_count", i64 954208}
!518 = !{!"ifcvt.c:find_if_case_1"}
!519 = !{!"branch_weights", i32 656685, i32 297525}
!520 = !{!"branch_weights", i32 35466, i32 262060}
!521 = !{!"branch_weights", i32 2971, i32 32496}
!522 = !{!"branch_weights", i32 18299, i32 14198}
!523 = !{!"branch_weights", i32 18299, i32 1}
!524 = !{!418, !389, i64 0}
!525 = !{!"branch_weights", i32 7014, i32 11286}
!526 = !{!"branch_weights", i32 17961, i32 339}
!527 = !{!"branch_weights", i32 6922, i32 4365}
!528 = !{!"branch_weights", i32 4005, i32 361}
!529 = !{!"branch_weights", i32 74, i32 288}
!530 = !{!399, !389, i64 48}
!531 = !{!"branch_weights", i32 74, i32 1}
!532 = !{!"branch_weights", i32 1, i32 74}
!533 = !{!"branch_weights", i32 51, i32 24}
!534 = !{!"branch_weights", i32 148, i32 141}
!535 = !{!399, !382, i64 96}
!536 = !{!"function_entry_count", i64 953848}
!537 = !{!"ifcvt.c:find_if_case_2"}
!538 = !{!"branch_weights", i32 1, i32 953849}
!539 = !{!"branch_weights", i32 953849, i32 1}
!540 = !{!"branch_weights", i32 494890, i32 458960}
!541 = !{!"branch_weights", i32 456405, i32 2556}
!542 = !{!"branch_weights", i32 323806, i32 132600}
!543 = !{!"branch_weights", i32 1, i32 132600}
!544 = !{!"branch_weights", i32 87028, i32 45573}
!545 = !{!"branch_weights", i32 215, i32 45359}
!546 = !{!"branch_weights", i32 15643, i32 29717}
!547 = !{!"branch_weights", i32 116958, i32 1}
!548 = !{!"branch_weights", i32 70492, i32 46467}
!549 = !{!"branch_weights", i32 114002, i32 2957}
!550 = !{!"branch_weights", i32 6356, i32 40112}
!551 = !{!"branch_weights", i32 18366, i32 21747}
!552 = !{!"function_entry_count", i64 2924595}
!553 = !{!"ifcvt.c:single_pred_p"}
!554 = !{!"function_entry_count", i64 4745515}
!555 = !{!"ifcvt.c:single_succ_p"}
!556 = !{!"function_entry_count", i64 362061}
!557 = !{!"ifcvt.c:single_succ"}
!558 = !{!"function_entry_count", i64 1231202}
!559 = !{!"ifcvt.c:single_succ_edge"}
!560 = !{!"branch_weights", i32 1, i32 1231203}
!561 = !{!"function_entry_count", i64 118044}
!562 = !{!"ifcvt.c:noce_get_condition"}
!563 = !{!"branch_weights", i32 1, i32 118045}
!564 = !{!"branch_weights", i32 117835, i32 211}
!565 = !{!"branch_weights", i32 1, i32 117835}
!566 = !{!"function_entry_count", i64 87314}
!567 = !{!"ifcvt.c:noce_process_if_block"}
!568 = !{!"branch_weights", i32 3, i32 87313}
!569 = !{!"branch_weights", i32 25077, i32 62237}
!570 = !{!"branch_weights", i32 -1905892280, i32 94287}
!571 = !{!"branch_weights", i32 22214, i32 1}
!572 = !{!"branch_weights", i32 -2147483648, i32 0}
!573 = !{!"branch_weights", i32 6848, i32 17950}
!574 = !{!"branch_weights", i32 1, i32 6848}
!575 = !{!"branch_weights", i32 4263, i32 2586}
!576 = !{!"branch_weights", i32 34111, i32 1}
!577 = !{!"branch_weights", i32 3979, i32 1}
!578 = !{!"branch_weights", i32 448, i32 3816}
!579 = !{!"branch_weights", i32 1, i32 159}
!580 = !{!"branch_weights", i32 1, i32 17950}
!581 = !{!"branch_weights", i32 159, i32 574113}
!582 = distinct !{!582, !406}
!583 = !{!"branch_weights", i32 234297362, i32 64663764}
!584 = !{!"branch_weights", i32 12278, i32 1}
!585 = !{!"branch_weights", i32 8622, i32 5445}
!586 = !{!"branch_weights", i32 88, i32 5358}
!587 = !{!"branch_weights", i32 5288, i32 71}
!588 = !{!"branch_weights", i32 5288, i32 1}
!589 = !{!"branch_weights", i32 3766, i32 1523}
!590 = !{!"branch_weights", i32 3734, i32 33}
!591 = !{!"branch_weights", i32 3734, i32 1}
!592 = !{!"branch_weights", i32 21765, i32 1}
!593 = !{!"branch_weights", i32 13743, i32 8023}
!594 = !{!"branch_weights", i32 9, i32 13735}
!595 = !{!"branch_weights", i32 1, i32 8031}
!596 = !{!"branch_weights", i32 -1070614, i32 535332, i32 535281}
!597 = !{!"branch_weights", i32 934, i32 20832}
!598 = !{!"branch_weights", i32 41, i32 20792}
!599 = !{!487, !389, i64 56}
!600 = !{!487, !389, i64 64}
!601 = !{!487, !389, i64 88}
!602 = !{!487, !389, i64 72}
!603 = !{!487, !389, i64 80}
!604 = !{!"branch_weights", i32 24424, i32 11}
!605 = !{!"branch_weights", i32 121, i32 23}
!606 = !{!"branch_weights", i32 11, i32 1}
!607 = !{!"branch_weights", i32 7244, i32 17181}
!608 = !{!"branch_weights", i32 7261, i32 9921}
!609 = !{!"branch_weights", i32 4195, i32 3067}
!610 = !{!"branch_weights", i32 4087, i32 109}
!611 = !{!"branch_weights", i32 17272, i32 1}
!612 = !{!"branch_weights", i32 17230, i32 43}
!613 = !{!"branch_weights", i32 17230, i32 1}
!614 = !{!"branch_weights", i32 15689, i32 1542}
!615 = !{!"branch_weights", i32 15689, i32 1}
!616 = !{!"branch_weights", i32 15552, i32 138}
!617 = !{!"branch_weights", i32 15552, i32 1}
!618 = !{!"branch_weights", i32 15466, i32 87}
!619 = !{!"branch_weights", i32 15466, i32 1}
!620 = !{!"branch_weights", i32 48666837, i32 157972283}
!621 = !{!"branch_weights", i32 2111845409, i32 35638239}
!622 = !{!"branch_weights", i32 1759255673, i32 388227975}
!623 = !{!"branch_weights", i32 1185, i32 633}
!624 = !{!"function_entry_count", i64 85498}
!625 = !{!"ifcvt.c:cond_move_process_if_block"}
!626 = !{!"branch_weights", i32 80198, i32 5302}
!627 = !{!"branch_weights", i32 3735, i32 1568}
!628 = !{!"branch_weights", i32 434, i32 1135}
!629 = !{!"branch_weights", i32 1, i32 4735}
!630 = !{!"branch_weights", i32 3293, i32 1443}
!631 = !{!"branch_weights", i32 1, i32 5318}
!632 = !{!"branch_weights", i32 1600202649, i32 547280999}
!633 = !{!"branch_weights", i32 1089, i32 268}
!634 = !{!"branch_weights", i32 94, i32 175}
!635 = !{!"branch_weights", i32 134, i32 42}
!636 = !{!"branch_weights", i32 4735, i32 583}
!637 = distinct !{!637, !406}
!638 = !{!"branch_weights", i32 1443, i32 0}
!639 = distinct !{!639, !406}
!640 = !{!"branch_weights", i32 1, i32 4736}
!641 = !{!"branch_weights", i32 4458, i32 279}
!642 = !{!"branch_weights", i32 9, i32 271}
!643 = !{!"branch_weights", i32 141, i32 131}
!644 = !{!"branch_weights", i32 3, i32 137}
!645 = !{!"branch_weights", i32 1, i32 137}
!646 = !{!"branch_weights", i32 7, i32 131}
!647 = !{!"branch_weights", i32 103, i32 35}
!648 = !{!"function_entry_count", i64 94297}
!649 = !{!"ifcvt.c:first_active_insn"}
!650 = !{!"branch_weights", i32 9885, i32 84414}
!651 = !{!"branch_weights", i32 1, i32 9885}
!652 = !{!"branch_weights", i32 1599226191, i32 -977265726, i32 1638657772, i32 16959}
!653 = !{!"branch_weights", i32 3, i32 96618}
!654 = distinct !{!654, !406}
!655 = !{!"function_entry_count", i64 94159}
!656 = !{!"ifcvt.c:last_active_insn"}
!657 = !{!"branch_weights", i32 -1110334029, i32 4396888, i32 33821, i32 33821}
!658 = !{!"branch_weights", i32 94160, i32 1}
!659 = !{!"branch_weights", i32 130, i32 94160}
!660 = !{!"branch_weights", i32 1, i32 130}
!661 = distinct !{!661, !406}
!662 = !{!"branch_weights", i32 1073752856, i32 1073730792}
!663 = !{!"function_entry_count", i64 48039}
!664 = !{!"ifcvt.c:noce_operand_ok"}
!665 = !{!"branch_weights", i32 12477, i32 35564}
!666 = !{!"branch_weights", i32 35556, i32 9}
!667 = !{!"function_entry_count", i64 239514}
!668 = !{!"ifcvt.c:rhs_regno"}
!669 = !{!"function_entry_count", i64 7260}
!670 = !{!"ifcvt.c:noce_mem_write_may_trap_or_fault_p"}
!671 = !{!"branch_weights", i32 7261, i32 1}
!672 = !{!435, !389, i64 1040}
!673 = !{!"branch_weights", i32 1, i32 127}
!674 = !{!"branch_weights", i32 88, i32 3651, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3738, i32 1, i32 4108}
!675 = !{!"branch_weights", i32 3738, i32 1}
!676 = !{!"branch_weights", i32 4108, i32 1}
!677 = !{!"branch_weights", i32 1, i32 4108}
!678 = !{!"branch_weights", i32 127, i32 1482369}
!679 = distinct !{!679, !406}
!680 = !{!"function_entry_count", i64 4194}
!681 = !{!"ifcvt.c:noce_can_store_speculate_p"}
!682 = !{!"branch_weights", i32 1, i32 1911}
!683 = !{!"branch_weights", i32 1, i32 2000}
!684 = !{!"branch_weights", i32 2000, i32 46799}
!685 = distinct !{!685, !406}
!686 = !{!"branch_weights", i32 8754, i32 42046}
!687 = !{!"branch_weights", i32 -2055151605, i32 1761203585}
!688 = !{!"branch_weights", i32 23536, i32 1}
!689 = !{!"branch_weights", i32 4778496, i32 46932293}
!690 = !{!"branch_weights", i32 39763, i32 109}
!691 = !{!"branch_weights", i32 39763, i32 1}
!692 = !{!"branch_weights", i32 1911, i32 9126}
!693 = distinct !{!693, !406}
!694 = !{!"function_entry_count", i64 17271}
!695 = !{!"ifcvt.c:noce_try_move"}
!696 = !{!"branch_weights", i32 47448312, i32 142813783}
!697 = !{!"branch_weights", i32 -1663292285, i32 1421867, i32 203107, i32 203092, i32 203076}
!698 = !{!"branch_weights", i32 15, i32 1}
!699 = !{!700, !383, i64 46}
!700 = !{!"real_format", !389, i64 0, !389, i64 8, !382, i64 16, !382, i64 20, !382, i64 24, !382, i64 28, !382, i64 32, !382, i64 36, !382, i64 40, !383, i64 44, !383, i64 45, !383, i64 46, !383, i64 47, !383, i64 48, !383, i64 49, !383, i64 50, !383, i64 51}
!701 = !{!"branch_weights", i32 15, i32 49}
!702 = !{!"branch_weights", i32 -932980070, i32 259492, i32 259472, i32 259452, i32 259432}
!703 = !{!700, !383, i64 49}
!704 = !{!"branch_weights", i32 12703, i32 257}
!705 = !{!"branch_weights", i32 257, i32 1}
!706 = !{!"branch_weights", i32 12762, i32 198}
!707 = !{!"branch_weights", i32 198, i32 1}
!708 = !{!"ifcvt.c:noce_try_store_flag"}
!709 = !{!"branch_weights", i32 3141, i32 14132}
!710 = !{!"branch_weights", i32 219, i32 2923}
!711 = !{!"branch_weights", i32 24, i32 196}
!712 = !{!"branch_weights", i32 1352, i32 15898}
!713 = !{!"branch_weights", i32 232, i32 1121}
!714 = !{!"branch_weights", i32 20, i32 213}
!715 = !{!"branch_weights", i32 1, i32 20}
!716 = !{!"branch_weights", i32 1, i32 43}
!717 = !{!"branch_weights", i32 27, i32 17}
!718 = !{!"function_entry_count", i64 17229}
!719 = !{!"ifcvt.c:noce_try_bitop"}
!720 = !{!"branch_weights", i32 -1916643338, i32 1654736843}
!721 = !{!"branch_weights", i32 4254, i32 2817}
!722 = !{!"branch_weights", i32 215, i32 4040}
!723 = !{!"branch_weights", i32 207, i32 9}
!724 = !{!"branch_weights", i32 192, i32 16}
!725 = !{!"branch_weights", i32 184, i32 9}
!726 = !{!"branch_weights", i32 81, i32 19}
!727 = !{!"branch_weights", i32 1, i32 36, i32 2, i32 1}
!728 = !{!"branch_weights", i32 1, i32 9}
!729 = !{!"branch_weights", i32 9, i32 1}
!730 = !{!400, !400, i64 0}
!731 = !{!"ifcvt.c:noce_try_minmax"}
!732 = !{!"branch_weights", i32 -1145979578, i32 8063049, i32 183239, i32 183227, i32 183217}
!733 = !{!"branch_weights", i32 89, i32 1}
!734 = !{!"branch_weights", i32 1936, i32 89}
!735 = !{!"branch_weights", i32 -1694505869, i32 151329, i32 151321, i32 151311, i32 151303}
!736 = !{!"branch_weights", i32 14001, i32 3187}
!737 = !{!"branch_weights", i32 2549, i32 639}
!738 = !{!"branch_weights", i32 440, i32 200}
!739 = !{!"branch_weights", i32 153, i32 2397}
!740 = !{!"branch_weights", i32 728, i32 1670}
!741 = !{!"branch_weights", i32 1869, i32 1}
!742 = !{!"ifcvt.c:noce_try_abs"}
!743 = !{!"branch_weights", i32 -1694505869, i32 6658536, i32 151321, i32 151311, i32 151303}
!744 = !{!"branch_weights", i32 37, i32 17151}
!745 = !{!"branch_weights", i32 1, i32 37}
!746 = !{!"branch_weights", i32 1, i32 17151}
!747 = !{!"branch_weights", i32 7, i32 17145}
!748 = !{!"branch_weights", i32 1, i32 7}
!749 = !{!"branch_weights", i32 1, i32 17145}
!750 = !{!"branch_weights", i32 39, i32 5}
!751 = !{!"branch_weights", i32 1, i32 5}
!752 = !{!"branch_weights", i32 5, i32 1}
!753 = !{!"branch_weights", i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!754 = !{!"ifcvt.c:noce_try_cmove"}
!755 = !{!"branch_weights", i32 6213, i32 11018}
!756 = !{!"branch_weights", i32 6793, i32 4226}
!757 = !{!"branch_weights", i32 3260, i32 7179}
!758 = !{!"branch_weights", i32 114, i32 7066}
!759 = !{!"branch_weights", i32 8784, i32 1542}
!760 = !{!"branch_weights", i32 1542, i32 1}
!761 = !{!"branch_weights", i32 1, i32 1542}
!762 = !{!"function_entry_count", i64 15688}
!763 = !{!"ifcvt.c:noce_try_store_flag_constants"}
!764 = !{!"branch_weights", i32 1659, i32 14031}
!765 = !{!"branch_weights", i32 1, i32 1659}
!766 = !{!"ifcvt.c:noce_try_addcc"}
!767 = !{!"branch_weights", i32 736, i32 14954}
!768 = !{!"branch_weights", i32 277, i32 460}
!769 = !{!"branch_weights", i32 2, i32 459}
!770 = !{!"branch_weights", i32 6, i32 454}
!771 = !{!"branch_weights", i32 1, i32 454}
!772 = !{!"branch_weights", i32 356, i32 99}
!773 = !{!"branch_weights", i32 99, i32 1}
!774 = !{!"branch_weights", i32 1, i32 99}
!775 = !{!"branch_weights", i32 358, i32 4}
!776 = !{!"branch_weights", i32 13479, i32 104632}
!777 = !{!"branch_weights", i32 10, i32 341, i32 100}
!778 = !{!"branch_weights", i32 1, i32 40}
!779 = !{!"branch_weights", i32 0, i32 -2147483648}
!780 = !{!"branch_weights", i32 40, i32 1}
!781 = !{!"function_entry_count", i64 15551}
!782 = !{!"ifcvt.c:noce_try_store_flag_mask"}
!783 = !{!"branch_weights", i32 15462, i32 91}
!784 = !{!"branch_weights", i32 54, i32 15409}
!785 = !{!"branch_weights", i32 54, i32 1}
!786 = !{!"branch_weights", i32 39, i32 15424}
!787 = !{!"branch_weights", i32 1081, i32 14344}
!788 = !{!"branch_weights", i32 1081, i32 1}
!789 = !{!"ifcvt.c:noce_try_cmove_arith"}
!790 = !{!"branch_weights", i32 10496, i32 5057}
!791 = !{!"branch_weights", i32 1747, i32 3311}
!792 = !{!"branch_weights", i32 157, i32 1591}
!793 = !{!"branch_weights", i32 1, i32 157}
!794 = !{!795, !383, i64 32}
!795 = !{!"mem_attrs", !389, i64 0, !389, i64 8, !389, i64 16, !382, i64 24, !382, i64 28, !383, i64 32}
!796 = !{!"branch_weights", i32 157, i32 1}
!797 = !{!435, !389, i64 1184}
!798 = !{!"branch_weights", i32 11099, i32 4454}
!799 = !{!"branch_weights", i32 11053, i32 47}
!800 = !{!"branch_weights", i32 1, i32 11053}
!801 = !{!"branch_weights", i32 61, i32 10993}
!802 = !{!"branch_weights", i32 7129, i32 3865}
!803 = !{!"branch_weights", i32 1, i32 3865}
!804 = !{!"branch_weights", i32 47, i32 3819}
!805 = !{!"branch_weights", i32 39, i32 10909}
!806 = !{!"branch_weights", i32 3926, i32 6984}
!807 = !{!"branch_weights", i32 101, i32 10809}
!808 = !{!"branch_weights", i32 64, i32 10884}
!809 = !{!"branch_weights", i32 64, i32 1}
!810 = !{!"branch_weights", i32 1, i32 64}
!811 = !{!"branch_weights", i32 1418, i32 9530}
!812 = !{!"branch_weights", i32 1418, i32 1}
!813 = !{!"branch_weights", i32 1, i32 1418}
!814 = !{!"branch_weights", i32 71, i32 1}
!815 = !{!"branch_weights", i32 1356, i32 63}
!816 = !{!"branch_weights", i32 63, i32 1}
!817 = !{!"branch_weights", i32 50, i32 1369}
!818 = !{!"branch_weights", i32 10812, i32 87}
!819 = !{!"branch_weights", i32 87, i32 1}
!820 = !{!795, !382, i64 24}
!821 = !{!795, !382, i64 28}
!822 = !{!"branch_weights", i32 1, i32 87}
!823 = !{!"function_entry_count", i64 15465}
!824 = !{!"ifcvt.c:noce_try_sign_mask"}
!825 = !{!"branch_weights", i32 45, i32 15422}
!826 = !{!"branch_weights", i32 1, i32 91}
!827 = !{!"branch_weights", i32 1038, i32 14385}
!828 = !{!"branch_weights", i32 1073292, i32 5195, i32 1034}
!829 = !{!"branch_weights", i32 1161600113, i32 985883535}
!830 = !{!"function_entry_count", i64 45}
!831 = !{!"ifcvt.c:noce_emit_move_insn"}
!832 = !{!"branch_weights", i32 1, i32 46}
!833 = !{!"function_entry_count", i64 1944}
!834 = !{!"ifcvt.c:end_ifcvt_sequence"}
!835 = !{!"branch_weights", i32 1, i32 1944}
!836 = !{!"branch_weights", i32 1, i32 8455}
!837 = !{!"branch_weights", i32 1944, i32 6511}
!838 = distinct !{!838, !406}
!839 = !{!"function_entry_count", i64 10046}
!840 = !{!"ifcvt.c:recog_memoized"}
!841 = !{!"branch_weights", i32 9979, i32 69}
!842 = !{!"function_entry_count", i64 81}
!843 = !{!"ifcvt.c:noce_emit_store_flag"}
!844 = !{!"branch_weights", i32 1, i32 82}
!845 = !{!"branch_weights", i32 24, i32 59}
!846 = !{!"branch_weights", i32 165, i32 13613}
!847 = !{!"branch_weights", i32 165, i32 1}
!848 = !{!"function_entry_count", i64 17228}
!849 = !{!"ifcvt.c:noce_get_alt_condition"}
!850 = !{!"branch_weights", i32 14504, i32 2726}
!851 = !{!"branch_weights", i32 1, i32 14504}
!852 = !{!"branch_weights", i32 2955, i32 11550}
!853 = !{!"branch_weights", i32 2, i32 2954}
!854 = !{!"branch_weights", i32 2276, i32 679}
!855 = !{!"branch_weights", i32 -1869870941, i32 483290981}
!856 = !{!"branch_weights", i32 1232, i32 665}
!857 = !{!"branch_weights", i32 1209, i32 24}
!858 = !{!"branch_weights", i32 16, i32 1217}
!859 = !{!"branch_weights", i32 16, i32 1}
!860 = !{!"branch_weights", i32 1, i32 16}
!861 = !{!"branch_weights", i32 2750, i32 206}
!862 = !{!"branch_weights", i32 2214, i32 228, i32 1, i32 310, i32 1}
!863 = !{!"branch_weights", i32 214, i32 15}
!864 = !{!"branch_weights", i32 253, i32 58}
!865 = !{!"branch_weights", i32 2490, i32 466}
!866 = !{!"branch_weights", i32 2490, i32 1}
!867 = !{!"branch_weights", i32 1, i32 14039}
!868 = !{!"branch_weights", i32 14039, i32 1}
!869 = distinct !{!869, !406}
!870 = distinct !{!870, !406}
!871 = !{!"function_entry_count", i64 26351}
!872 = !{!"ifcvt.c:noce_emit_cmove"}
!873 = !{!"branch_weights", i32 68, i32 26285}
!874 = !{!"branch_weights", i32 1, i32 68}
!875 = !{!"branch_weights", i32 566, i32 25787}
!876 = !{!"branch_weights", i32 1, i32 25787}
!877 = !{!"function_entry_count", i64 87065}
!878 = !{!"ifcvt.c:check_cond_move_block"}
!879 = !{!"branch_weights", i32 1, i32 87066}
!880 = !{!"branch_weights", i32 1, i32 207}
!881 = !{!"branch_weights", i32 6436, i32 182953}
!882 = !{!"branch_weights", i32 -2090081647, i32 -1973148087}
!883 = !{!"branch_weights", i32 26298, i32 26328, i32 26327, i32 -1972259464, i32 23379018}
!884 = !{!"branch_weights", i32 79818, i32 1}
!885 = !{!"branch_weights", i32 47636, i32 40884}
!886 = !{!"branch_weights", i32 5361, i32 42276}
!887 = !{!"branch_weights", i32 6249, i32 36028}
!888 = !{!"branch_weights", i32 31199, i32 4830}
!889 = !{!"branch_weights", i32 11078, i32 1}
!890 = !{!"branch_weights", i32 -1019214217, i32 -1780482048, i32 18348424}
!891 = !{!"branch_weights", i32 4792, i32 5}
!892 = !{!"branch_weights", i32 35, i32 1}
!893 = !{!"branch_weights", i32 11074, i32 1}
!894 = !{!"branch_weights", i32 8740, i32 2335}
!895 = !{!"branch_weights", i32 5554, i32 3187}
!896 = !{!"branch_weights", i32 2928, i32 260}
!897 = !{!"branch_weights", i32 207, i32 1514697}
!898 = distinct !{!898, !406}
!899 = !{!"function_entry_count", i64 170996}
!900 = !{!"ifcvt.c:VEC_int_heap_free"}
!901 = !{!"branch_weights", i32 163631, i32 7367}
!902 = !{!"function_entry_count", i64 16229}
!903 = !{!"ifcvt.c:VEC_int_base_iterate"}
!904 = !{!"branch_weights", i32 3737, i32 12494}
!905 = !{!906, !382, i64 0}
!906 = !{!"VEC_int_base", !382, i64 0, !382, i64 4, !383, i64 8}
!907 = !{!"branch_weights", i32 6760, i32 5735}
!908 = !{!"function_entry_count", i64 5005}
!909 = !{!"ifcvt.c:cond_move_convert_if_block"}
!910 = !{!"branch_weights", i32 409, i32 11901}
!911 = !{!"branch_weights", i32 -1599836336, i32 -1240420151}
!912 = !{!"branch_weights", i32 242904, i32 485983, i32 485896, i32 -1586096312, i32 242904}
!913 = !{!"branch_weights", i32 5576, i32 1}
!914 = !{!"branch_weights", i32 1073839421, i32 1073644227}
!915 = !{!"branch_weights", i32 4985, i32 592}
!916 = !{!"branch_weights", i32 147, i32 446}
!917 = !{!"branch_weights", i32 1, i32 147}
!918 = !{!"branch_weights", i32 1, i32 4985}
!919 = !{!"branch_weights", i32 3812, i32 1174}
!920 = !{!"branch_weights", i32 4598, i32 534}
!921 = !{!"branch_weights", i32 534, i32 1}
!922 = !{!"branch_weights", i32 159, i32 196641}
!923 = distinct !{!923, !406}
!924 = !{!"function_entry_count", i64 8480}
!925 = !{!"ifcvt.c:VEC_int_heap_safe_push"}
!926 = !{!"ifcvt.c:VEC_int_heap_reserve"}
!927 = !{!"branch_weights", i32 7400, i32 1082}
!928 = !{!"ifcvt.c:VEC_int_base_quick_push"}
!929 = !{!"ifcvt.c:VEC_int_base_space"}
!930 = !{!"branch_weights", i32 7367, i32 1115}
!931 = !{!906, !382, i64 4}
!932 = !{!"ifcvt.c:single_pred_edge"}
!933 = !{!"ifcvt.c:single_pred"}
!934 = !{!"ifcvt.c:block_jumps_and_fallthru_p"}
!935 = distinct !{!935, !406}
!936 = distinct !{!936, !406}
!937 = !{!"ifcvt.c:ei_start_1"}
!938 = !{!"ifcvt.c:ei_cond"}
!939 = !{!"ifcvt.c:ei_next"}
!940 = !{!941, !382, i64 0}
!941 = !{!"", !382, i64 0, !389, i64 8}
!942 = !{!"ifcvt.c:cond_exec_process_if_block"}
!943 = !{!427, !382, i64 60}
!944 = !{!427, !382, i64 64}
!945 = distinct !{!945, !406}
!946 = !{!"ifcvt.c:ei_end_p"}
!947 = !{!"ifcvt.c:ei_edge"}
!948 = !{!"ifcvt.c:ei_container"}
!949 = !{!"ifcvt.c:cond_exec_get_condition"}
!950 = !{!"ifcvt.c:count_bb_insns"}
!951 = !{!"ifcvt.c:block_fallthru"}
!952 = distinct !{!952, !406}
!953 = !{!"ifcvt.c:cond_exec_process_insns"}
!954 = !{!"ifcvt.c:merge_if_block"}
!955 = distinct !{!955, !406}
!956 = !{!"ifcvt.c:block_has_only_trap"}
!957 = !{!"function_entry_count", i64 135255}
!958 = !{!"ifcvt.c:cheap_bb_rtx_cost_p"}
!959 = !{!"branch_weights", i32 -2124380189, i32 1457695262, i32 62629235}
!960 = !{!"branch_weights", i32 274, i32 174219}
!961 = !{!"branch_weights", i32 1393759, i32 1}
!962 = !{!"branch_weights", i32 164570, i32 1}
!963 = !{!"branch_weights", i32 1774895483, i32 372588165}
!964 = !{!"branch_weights", i32 139701, i32 34519}
!965 = !{!"branch_weights", i32 139668, i32 139736}
!966 = !{!"branch_weights", i32 44476, i32 306561}
!967 = !{!"function_entry_count", i64 44475}
!968 = !{!"ifcvt.c:dead_or_predicable"}
!969 = !{!"branch_weights", i32 1978203528, i32 1}
!970 = distinct !{!970, !406}
!971 = !{!"branch_weights", i32 44476, i32 1}
!972 = !{!"branch_weights", i32 40112, i32 4365}
!973 = !{!"branch_weights", i32 1, i32 65536, i32 -1380188162}
!974 = distinct !{!974, !406}
!975 = !{!"branch_weights", i32 377, i32 44100}
!976 = !{!"branch_weights", i32 1944898200, i32 1}
!977 = distinct !{!977, !406}
!978 = !{!"branch_weights", i32 4904, i32 39197}
!979 = !{!"branch_weights", i32 2, i32 4903}
!980 = !{!"branch_weights", i32 24049215, i32 1}
!981 = distinct !{!981, !406}
!982 = !{!"branch_weights", i32 44099, i32 1}
!983 = !{!"branch_weights", i32 10912623, i32 55674, i32 55112, i32 -1715154954}
!984 = !{!"branch_weights", i32 38529, i32 7810}
!985 = !{!"branch_weights", i32 32778, i32 5752}
!986 = !{!"branch_weights", i32 30539, i32 2436}
!987 = !{!"branch_weights", i32 1, i32 30539}
!988 = !{!"branch_weights", i32 118, i32 30422}
!989 = !{!"branch_weights", i32 3163, i32 27260}
!990 = !{!"branch_weights", i32 1, i32 239}
!991 = !{!"branch_weights", i32 30422, i32 93472}
!992 = !{!"branch_weights", i32 -1104399771, i32 1793667748}
!993 = !{!994, !389, i64 248}
!994 = !{!"df", !383, i64 0, !383, i64 64, !389, i64 128, !995, i64 136, !995, i64 176, !389, i64 216, !389, i64 224, !389, i64 232, !382, i64 240, !382, i64 244, !389, i64 248, !382, i64 256, !382, i64 260, !389, i64 264, !389, i64 272, !389, i64 280, !389, i64 288, !389, i64 296, !389, i64 304, !389, i64 312, !389, i64 320, !389, i64 328, !389, i64 336, !382, i64 344, !382, i64 348, !389, i64 352, !382, i64 360, !382, i64 364, !383, i64 365, !383, i64 366}
!995 = !{!"df_ref_info", !389, i64 0, !389, i64 8, !389, i64 16, !382, i64 24, !382, i64 28, !382, i64 32, !382, i64 36}
!996 = !{!997, !389, i64 8}
!997 = !{!"df_insn_info", !389, i64 0, !389, i64 8, !389, i64 16, !389, i64 24, !389, i64 32, !382, i64 40}
!998 = !{!"branch_weights", i32 1, i32 33635}
!999 = !{!"branch_weights", i32 33635, i32 143}
!1000 = distinct !{!1000, !406}
!1001 = !{!"branch_weights", i32 239, i32 495097}
!1002 = distinct !{!1002, !406}
!1003 = !{!"branch_weights", i32 28608, i32 1815}
!1004 = !{!"branch_weights", i32 1, i32 28607}
!1005 = !{!"branch_weights", i32 876, i32 30234}
!1006 = !{!"branch_weights", i32 1, i32 876}
!1007 = !{!"branch_weights", i32 28607, i32 2502}
!1008 = distinct !{!1008, !406}
!1009 = !{!"branch_weights", i32 -856914705, i32 28243}
!1010 = !{!"branch_weights", i32 30422, i32 30438}
!1011 = !{!"branch_weights", i32 28982, i32 1441}
!1012 = !{!"branch_weights", i32 22098, i32 6885}
!1013 = !{!"branch_weights", i32 22081, i32 18}
!1014 = !{!"branch_weights", i32 1, i32 22458}
!1015 = !{!"branch_weights", i32 22458, i32 1}
!1016 = !{!"branch_weights", i32 352, i32 22107}
!1017 = !{!"branch_weights", i32 1, i32 22107}
!1018 = !{!"branch_weights", i32 14662, i32 7446}
!1019 = !{!"branch_weights", i32 21747, i32 361}
!1020 = !{!"branch_weights", i32 198, i32 164}
!1021 = !{!418, !400, i64 56}
!1022 = !{!418, !382, i64 52}
!1023 = !{!"branch_weights", i32 27, i32 22081}
!1024 = !{!"branch_weights", i32 21709, i32 373}
!1025 = !{!"branch_weights", i32 355355724, i32 331776}
!1026 = !{!"branch_weights", i32 22626, i32 115}
!1027 = !{!"branch_weights", i32 927, i32 1}
!1028 = !{!"branch_weights", i32 115, i32 1}
!1029 = !{!"branch_weights", i32 1881075147, i32 266408501}
!1030 = !{!"branch_weights", i32 45, i32 71}
!1031 = !{!"branch_weights", i32 2, i32 70}
!1032 = !{!"branch_weights", i32 22081, i32 683}
!1033 = distinct !{!1033, !406}
!1034 = !{!"function_entry_count", i64 121826}
!1035 = !{!"ifcvt.c:find_memory"}
!1036 = !{!"function_entry_count", i64 28607}
!1037 = !{!"ifcvt.c:bmp_iter_set_init"}
!1038 = !{!1039, !389, i64 0}
!1039 = !{!"bitmap_head_def", !389, i64 0, !389, i64 8, !382, i64 16, !389, i64 24}
!1040 = !{!1041, !389, i64 0}
!1041 = !{!"", !389, i64 0, !389, i64 8, !382, i64 16, !400, i64 24}
!1042 = !{!1041, !389, i64 8}
!1043 = !{!"branch_weights", i32 1, i32 28608}
!1044 = !{!1045, !382, i64 16}
!1045 = !{!"bitmap_element_def", !389, i64 0, !389, i64 8, !382, i64 16, !383, i64 24}
!1046 = !{!1041, !382, i64 16}
!1047 = !{!1041, !400, i64 24}
!1048 = !{!"function_entry_count", i64 59715}
!1049 = !{!"ifcvt.c:bmp_iter_set"}
!1050 = !{!"branch_weights", i32 37954, i32 21763}
!1051 = !{!"branch_weights", i32 31108, i32 1}
!1052 = !{!"branch_weights", i32 1290147, i32 31108}
!1053 = distinct !{!1053, !406}
!1054 = !{!"branch_weights", i32 1, i32 29785}
!1055 = !{!"branch_weights", i32 21618, i32 9347}
!1056 = !{!"branch_weights", i32 29785, i32 1179}
!1057 = distinct !{!1057, !406}
!1058 = !{!1045, !389, i64 0}
!1059 = !{!"branch_weights", i32 28608, i32 1179}
!1060 = !{!"function_entry_count", i64 31108}
!1061 = !{!"ifcvt.c:bmp_iter_next"}
!1062 = !{!"ifcvt.c:gate_handle_if_after_combine"}
!1063 = !{!"branch_weights", i32 44262409, i32 13307}
!1064 = !{!"ifcvt.c:rest_of_handle_if_after_combine"}
!1065 = !{!"ifcvt.c:gate_handle_if_after_reload"}
!1066 = !{!"ifcvt.c:rest_of_handle_if_after_reload"}
