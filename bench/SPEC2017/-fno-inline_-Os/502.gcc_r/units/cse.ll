; ModuleID = 'cse.c'
source_filename = "cse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.table_elt = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8 }
%struct.cse_reg_info = type { i32, i32, i32, i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.cse_basic_block_data = type { i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.branch_path = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.check_dependence_data = type { i32, ptr, ptr }
%struct.set = type { ptr, ptr, ptr, i32, i32, ptr, i8, i8, i8, ptr, i32, ptr, ptr }
%struct.qty_table_elem = type { ptr, ptr, ptr, i32, i32, i32, i24 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.reg_eqv_elem = type { i32, i32 }
%struct.change_cc_mode_args = type { ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Equivalence chain for \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c": \0A\00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"cse.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@cse_cfg_altered = internal unnamed_addr global i8 0, align 1
@cse_jumps_altered = internal unnamed_addr global i1 false, align 1
@recorded_label_ref = internal unnamed_addr global i1 false, align 1
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@cse_rtl_hooks = internal unnamed_addr constant %struct.rtl_hooks { ptr @gen_lowpart_if_possible, ptr @gen_lowpart_no_emit_general, ptr @reg_nonzero_bits_general, ptr @reg_num_sign_bit_copies_general, ptr @reg_truncated_to_mode_general }, align 8
@reg_eqv_table = internal unnamed_addr global ptr null, align 8
@cse_visited_basic_blocks = internal unnamed_addr global ptr null, align 8
@flag_cse_follow_jumps = external local_unnamed_addr global i32, align 4
@max_qty = internal unnamed_addr global i32 0, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@general_rtl_hooks = external local_unnamed_addr constant %struct.rtl_hooks, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Deleted %i trivially dead insns\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cse1\00", align 1
@pass_cse = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.6, ptr @gate_handle_cse, ptr @rest_of_handle_cse, ptr null, ptr null, i32 0, i32 121, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"cse2\00", align 1
@pass_cse2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.7, ptr @gate_handle_cse2, ptr @rest_of_handle_cse2, ptr null, ptr null, i32 0, i32 137, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"cse_local\00", align 1
@pass_cse_after_global_opts = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.8, ptr @gate_handle_cse_after_global_opts, ptr @rest_of_handle_cse_after_global_opts, ptr null, ptr null, i32 0, i32 121, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@cse_reg_info_table = internal unnamed_addr global ptr null, align 8
@cse_reg_info_timestamp = internal unnamed_addr global i32 0, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@cse_reg_info_table_size = internal unnamed_addr global i32 0, align 4
@cse_reg_info_table_first_uninitialized = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c";; Following path with %d sets: \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@qty_table = internal unnamed_addr global ptr null, align 8
@cse_ebb_live_in = internal unnamed_addr global ptr null, align 8
@cse_ebb_live_out = internal unnamed_addr global ptr null, align 8
@optimize_this_for_speed_p = internal unnamed_addr global i8 0, align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@next_qty = internal unnamed_addr global i32 0, align 4
@hard_regs_in_table = internal unnamed_addr global i64 0, align 8
@table = internal unnamed_addr global [32 x ptr] zeroinitializer, align 16
@free_element_chain = internal unnamed_addr global ptr null, align 8
@df = external local_unnamed_addr global ptr, align 8
@do_not_record = internal global i32 0, align 4
@hash_arg_in_memory = internal global i32 0, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@this_insn = internal unnamed_addr global ptr null, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_float_store = external local_unnamed_addr global i32, align 4
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@optimize = external local_unnamed_addr global i32, align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_rerun_cse_after_loop = external local_unnamed_addr global i32, align 4
@flag_gcse = external local_unnamed_addr global i32, align 4
@cse_not_expected = external local_unnamed_addr global i32, align 4
@flag_rerun_cse_after_global_opts = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_class(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !403 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !404
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %2) #22
  %4 = load ptr, ptr @stderr, align 8, !tbaa !404
  %5 = load ptr, ptr %0, align 8, !tbaa !408
  tail call void @print_rtl(ptr noundef %4, ptr noundef %5) #23
  %6 = load ptr, ptr @stderr, align 8, !tbaa !404
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 3, i64 1, ptr %6) #22
  %8 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %18, %11 ], [ %9, %1 ]
  %13 = load ptr, ptr @stderr, align 8, !tbaa !404
  %14 = load ptr, ptr %12, align 8, !tbaa !408
  tail call void @print_rtl(ptr noundef %13, ptr noundef %14) #23
  %15 = load ptr, ptr @stderr, align 8, !tbaa !404
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  %17 = getelementptr inbounds %struct.table_elt, ptr %12, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !404
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11, !llvm.loop !411

20:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @hash_rtx_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 !prof !413 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  %9 = icmp eq ptr %0, null
  br i1 %9, label %336, label %10, !prof !414

10:                                               ; preds = %6
  %11 = icmp eq ptr %5, null
  %12 = icmp eq ptr %2, null
  br label %13

13:                                               ; preds = %263, %10
  %14 = phi ptr [ %0, %10 ], [ %274, %263 ]
  %15 = phi i32 [ %1, %10 ], [ %277, %263 ]
  %16 = phi i32 [ 0, %10 ], [ %272, %263 ]
  br label %17

17:                                               ; preds = %13, %188
  %18 = phi ptr [ %14, %13 ], [ %191, %188 ]
  %19 = phi i32 [ %16, %13 ], [ %189, %188 ]
  br i1 %11, label %28, label %20, !prof !415

20:                                               ; preds = %17
  %21 = call i32 %5(ptr noundef nonnull %18, i32 noundef %15, ptr noundef nonnull %8, ptr noundef nonnull %7) #23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %8, align 8, !tbaa !404
  %25 = load i32, ptr %7, align 4, !tbaa !416
  %26 = call i32 @hash_rtx_cb(ptr noundef %24, i32 noundef %25, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef nonnull %5) #25
  %27 = add i32 %26, %19
  br label %336

28:                                               ; preds = %20, %17
  %29 = load i32, ptr %18, align 8
  %30 = and i32 %29, 65535
  %31 = trunc i32 %29 to i16
  switch i16 %31, label %278 [
    i16 37, label %32
    i16 39, label %77
    i16 30, label %91
    i16 32, label %98
    i16 31, label %117
    i16 33, label %125
    i16 44, label %145
    i16 45, label %152
    i16 43, label %171
    i16 24, label %193
    i16 74, label %208
    i16 75, label %208
    i16 76, label %208
    i16 77, label %208
    i16 78, label %208
    i16 79, label %208
    i16 36, label %208
    i16 46, label %208
    i16 26, label %208
    i16 19, label %208
    i16 17, label %210
  ], !prof !417

32:                                               ; preds = %28
  %33 = call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #25
  %34 = load i32, ptr @reload_completed, align 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %12, i1 true, i1 %35
  %37 = icmp ugt i32 %33, 52
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %67, label %39, !prof !418

39:                                               ; preds = %32
  %40 = load <4 x ptr>, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %41 = insertelement <4 x ptr> poison, ptr %18, i64 0
  %42 = shufflevector <4 x ptr> %41, <4 x ptr> poison, <4 x i32> zeroinitializer
  %43 = icmp eq <4 x ptr> %42, %40
  %44 = load ptr, ptr @pic_offset_table_rtx, align 8
  %45 = icmp eq ptr %18, %44
  %46 = freeze <4 x i1> %43
  %47 = bitcast <4 x i1> %46 to i4
  %48 = icmp ne i4 %47, 0
  %49 = select i1 %48, i1 true, i1 %45
  br i1 %49, label %67, label %50, !prof !419

50:                                               ; preds = %39
  %51 = zext nneg i32 %33 to i64
  %52 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !420
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %66, !prof !421

55:                                               ; preds = %50
  %56 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %51
  %57 = load i8, ptr %56, align 1, !tbaa !420
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %67, !prof !422

59:                                               ; preds = %55
  %60 = lshr i32 %29, 16
  %61 = and i32 %60, 255
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !420
  %65 = icmp eq i8 %64, 1
  br i1 %65, label %67, label %66, !prof !423

66:                                               ; preds = %50, %59
  store i32 1, ptr %2, align 4, !tbaa !416
  br label %336

67:                                               ; preds = %39, %55, %59, %32
  %68 = add i32 %19, 4736
  %69 = icmp eq i8 %4, 0
  br i1 %69, label %74, label %70, !prof !424

70:                                               ; preds = %67
  %71 = call fastcc ptr @get_cse_reg_info(i32 noundef %33) #25
  %72 = getelementptr inbounds %struct.cse_reg_info, ptr %71, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !425
  br label %74

74:                                               ; preds = %67, %70
  %75 = phi i32 [ %73, %70 ], [ %33, %67 ]
  %76 = add i32 %68, %75
  br label %336

77:                                               ; preds = %28
  %78 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !420
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %278, !prof !427

83:                                               ; preds = %77
  %84 = call fastcc i32 @rhs_regno(ptr noundef nonnull %79) #25
  %85 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load i32, ptr %85, align 8, !tbaa !420
  %87 = lshr i32 %86, 2
  %88 = add i32 %19, 4992
  %89 = add i32 %88, %84
  %90 = add i32 %89, %87
  br label %336

91:                                               ; preds = %28
  %92 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !420
  %94 = trunc i64 %93 to i32
  %95 = add i32 %19, 3840
  %96 = add i32 %95, %15
  %97 = add i32 %96, %94
  br label %336

98:                                               ; preds = %28
  %99 = lshr i32 %29, 16
  %100 = and i32 %99, 255
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  br i1 %101, label %105, label %103

103:                                              ; preds = %98
  %104 = call i32 @real_hash(ptr noundef nonnull %102) #23
  br label %112

105:                                              ; preds = %98
  %106 = load i64, ptr %102, align 8, !tbaa !420
  %107 = trunc i64 %106 to i32
  %108 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load i64, ptr %108, align 8, !tbaa !420
  %110 = trunc i64 %109 to i32
  %111 = add i32 %110, %107
  br label %112

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %104, %103 ], [ %111, %105 ]
  %114 = add i32 %19, 32
  %115 = add i32 %114, %100
  %116 = add i32 %115, %113
  br label %336

117:                                              ; preds = %28
  %118 = lshr i32 %29, 16
  %119 = and i32 %118, 255
  %120 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %121 = call i32 @fixed_hash(ptr noundef nonnull %120) #23
  %122 = add i32 %19, 31
  %123 = add i32 %122, %119
  %124 = add i32 %123, %121
  br label %336

125:                                              ; preds = %28
  %126 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !420
  %128 = load i32, ptr %127, align 8, !tbaa !428
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %336

130:                                              ; preds = %125
  %131 = zext nneg i32 %128 to i64
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi i64 [ 0, %130 ], [ %143, %132 ]
  %134 = phi i32 [ %19, %130 ], [ %142, %132 ]
  %135 = load ptr, ptr %126, align 8, !tbaa !420
  %136 = getelementptr inbounds %struct.rtvec_def, ptr %135, i64 0, i32 1, i64 %133
  %137 = load ptr, ptr %136, align 8, !tbaa !404
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = call i32 @hash_rtx_cb(ptr noundef nonnull %137, i32 noundef %140, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #25
  %142 = add i32 %141, %134
  %143 = add nuw nsw i64 %133, 1
  %144 = icmp eq i64 %143, %131
  br i1 %144, label %336, label %132, !llvm.loop !430

145:                                              ; preds = %28
  %146 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !420
  %148 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 1, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !420
  %150 = add i32 %19, 5632
  %151 = add i32 %150, %149
  br label %336

152:                                              ; preds = %28
  %153 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !420
  %155 = load i8, ptr %154, align 1, !tbaa !420
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %167, label %157, !prof !431

157:                                              ; preds = %152, %157
  %158 = phi i8 [ %165, %157 ], [ %155, %152 ]
  %159 = phi ptr [ %161, %157 ], [ %154, %152 ]
  %160 = phi i32 [ %164, %157 ], [ 0, %152 ]
  %161 = getelementptr inbounds i8, ptr %159, i64 1
  %162 = zext i8 %158 to i32
  %163 = mul i32 %160, 129
  %164 = add i32 %163, %162
  %165 = load i8, ptr %161, align 1, !tbaa !420
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %157, !prof !432, !llvm.loop !433

167:                                              ; preds = %157, %152
  %168 = phi i32 [ 0, %152 ], [ %164, %157 ]
  %169 = add i32 %19, 5760
  %170 = add i32 %169, %168
  br label %336

171:                                              ; preds = %28
  br i1 %12, label %179, label %172, !prof !434

172:                                              ; preds = %171
  %173 = and i32 %29, 134217728
  %174 = icmp ne i32 %173, 0
  %175 = and i32 %29, 16711680
  %176 = icmp eq i32 %175, 65536
  %177 = or i1 %174, %176
  br i1 %177, label %178, label %179, !prof !435

178:                                              ; preds = %172
  store i32 1, ptr %2, align 4, !tbaa !416
  br label %336

179:                                              ; preds = %172, %171
  %180 = icmp ne ptr %3, null
  %181 = and i32 %29, 67108864
  %182 = icmp eq i32 %181, 0
  %183 = and i1 %180, %182
  br i1 %183, label %184, label %185, !prof !436

184:                                              ; preds = %179
  store i32 1, ptr %3, align 4, !tbaa !416
  br label %185

185:                                              ; preds = %184, %179
  %186 = add i32 %19, 43
  %187 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  br label %188

188:                                              ; preds = %303, %185, %205
  %189 = phi i32 [ %206, %205 ], [ %186, %185 ], [ %294, %303 ]
  %190 = phi ptr [ %207, %205 ], [ %187, %185 ], [ %290, %303 ]
  %191 = load ptr, ptr %190, align 8, !tbaa !420
  %192 = icmp eq ptr %191, null
  br i1 %192, label %336, label %17, !prof !437

193:                                              ; preds = %28
  %194 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !420
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 134283263
  %198 = icmp eq i32 %197, 43
  br i1 %198, label %199, label %278, !prof !438

199:                                              ; preds = %193
  %200 = icmp ne ptr %3, null
  %201 = and i32 %196, 67108864
  %202 = icmp eq i32 %201, 0
  %203 = and i1 %200, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  store i32 1, ptr %3, align 4, !tbaa !416
  br label %205

205:                                              ; preds = %204, %199
  %206 = add i32 %19, 67
  %207 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  br label %188

208:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  br i1 %12, label %336, label %209, !prof !439

209:                                              ; preds = %208
  store i32 1, ptr %2, align 4, !tbaa !416
  br label %336

210:                                              ; preds = %28
  %211 = and i32 %29, 134217728
  %212 = icmp eq i32 %211, 0
  %213 = or i1 %12, %212
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  store i32 1, ptr %2, align 4, !tbaa !416
  br label %336

215:                                              ; preds = %210
  %216 = lshr i32 %29, 16
  %217 = and i32 %216, 255
  %218 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !420
  %220 = call fastcc i32 @hash_rtx_string(ptr noundef %219) #25
  %221 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !420
  %223 = call fastcc i32 @hash_rtx_string(ptr noundef %222) #25
  %224 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %225 = load i32, ptr %224, align 8, !tbaa !420
  %226 = add i32 %19, 17
  %227 = add i32 %226, %217
  %228 = add i32 %227, %220
  %229 = add i32 %228, %223
  %230 = add i32 %229, %225
  %231 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !420
  %233 = load i32, ptr %232, align 8, !tbaa !428
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %336, label %235

235:                                              ; preds = %215
  %236 = icmp sgt i32 %233, 1
  %237 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 2
  br i1 %236, label %240, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %237, align 8, !tbaa !420
  br label %263

240:                                              ; preds = %235, %240
  %241 = phi i64 [ %258, %240 ], [ 1, %235 ]
  %242 = phi ptr [ %259, %240 ], [ %232, %235 ]
  %243 = phi i32 [ %257, %240 ], [ %230, %235 ]
  %244 = getelementptr inbounds %struct.rtvec_def, ptr %242, i64 0, i32 1, i64 %241
  %245 = load ptr, ptr %244, align 8, !tbaa !404
  %246 = load i32, ptr %245, align 8
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = call i32 @hash_rtx_cb(ptr noundef nonnull %245, i32 noundef %248, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #25
  %250 = load ptr, ptr %237, align 8, !tbaa !420
  %251 = getelementptr inbounds %struct.rtvec_def, ptr %250, i64 0, i32 1, i64 %241
  %252 = load ptr, ptr %251, align 8, !tbaa !404
  %253 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !420
  %255 = call fastcc i32 @hash_rtx_string(ptr noundef %254) #25
  %256 = add i32 %249, %243
  %257 = add i32 %256, %255
  %258 = add nuw nsw i64 %241, 1
  %259 = load ptr, ptr %231, align 8, !tbaa !420
  %260 = load i32, ptr %259, align 8, !tbaa !428
  %261 = sext i32 %260 to i64
  %262 = icmp slt i64 %258, %261
  br i1 %262, label %240, label %263, !llvm.loop !440

263:                                              ; preds = %240, %238
  %264 = phi ptr [ %239, %238 ], [ %250, %240 ]
  %265 = phi i32 [ %230, %238 ], [ %257, %240 ]
  %266 = phi ptr [ %232, %238 ], [ %259, %240 ]
  %267 = getelementptr inbounds %struct.rtvec_def, ptr %264, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !404
  %269 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !420
  %271 = call fastcc i32 @hash_rtx_string(ptr noundef %270) #25
  %272 = add i32 %271, %265
  %273 = getelementptr inbounds %struct.rtvec_def, ptr %266, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !404
  %275 = load i32, ptr %274, align 8
  %276 = lshr i32 %275, 16
  %277 = and i32 %276, 255
  br label %13

278:                                              ; preds = %28, %193, %77
  %279 = zext nneg i32 %30 to i64
  %280 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !420
  %282 = lshr i32 %29, 16
  %283 = and i32 %282, 255
  %284 = add i32 %30, %19
  %285 = add i32 %284, %283
  %286 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %279
  %287 = load ptr, ptr %286, align 8, !tbaa !404
  %288 = icmp eq i8 %281, 0
  br i1 %288, label %336, label %289, !prof !441

289:                                              ; preds = %278
  %290 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %291 = zext i8 %281 to i64
  br label %292

292:                                              ; preds = %289, %333
  %293 = phi i64 [ %291, %289 ], [ %295, %333 ]
  %294 = phi i32 [ %285, %289 ], [ %334, %333 ]
  %295 = add nsw i64 %293, -1
  %296 = getelementptr inbounds i8, ptr %287, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !420
  switch i8 %297, label %332 [
    i8 101, label %303
    i8 69, label %298
    i8 115, label %323
    i8 105, label %328
    i8 48, label %333
    i8 116, label %333
  ], !prof !442

298:                                              ; preds = %292
  %299 = getelementptr inbounds [1 x %union.rtunion_def], ptr %290, i64 0, i64 %295
  %300 = load ptr, ptr %299, align 8, !tbaa !420
  %301 = load i32, ptr %300, align 8, !tbaa !428
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %310, label %333, !prof !443

303:                                              ; preds = %292
  %304 = icmp eq i64 %295, 0
  br i1 %304, label %188, label %305, !prof !444

305:                                              ; preds = %303
  %306 = getelementptr inbounds [1 x %union.rtunion_def], ptr %290, i64 0, i64 %295
  %307 = load ptr, ptr %306, align 8, !tbaa !420
  %308 = call i32 @hash_rtx_cb(ptr noundef %307, i32 noundef 0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #25
  %309 = add i32 %308, %294
  br label %333

310:                                              ; preds = %298, %310
  %311 = phi i64 [ %318, %310 ], [ 0, %298 ]
  %312 = phi ptr [ %319, %310 ], [ %300, %298 ]
  %313 = phi i32 [ %317, %310 ], [ %294, %298 ]
  %314 = getelementptr inbounds %struct.rtvec_def, ptr %312, i64 0, i32 1, i64 %311
  %315 = load ptr, ptr %314, align 8, !tbaa !404
  %316 = call i32 @hash_rtx_cb(ptr noundef %315, i32 noundef 0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #25
  %317 = add i32 %316, %313
  %318 = add nuw nsw i64 %311, 1
  %319 = load ptr, ptr %299, align 8, !tbaa !420
  %320 = load i32, ptr %319, align 8, !tbaa !428
  %321 = sext i32 %320 to i64
  %322 = icmp slt i64 %318, %321
  br i1 %322, label %310, label %333, !prof !445, !llvm.loop !446

323:                                              ; preds = %292
  %324 = getelementptr inbounds [1 x %union.rtunion_def], ptr %290, i64 0, i64 %295
  %325 = load ptr, ptr %324, align 8, !tbaa !420
  %326 = call fastcc i32 @hash_rtx_string(ptr noundef %325) #25
  %327 = add i32 %326, %294
  br label %333

328:                                              ; preds = %292
  %329 = getelementptr inbounds [1 x %union.rtunion_def], ptr %290, i64 0, i64 %295
  %330 = load i32, ptr %329, align 8, !tbaa !420
  %331 = add i32 %330, %294
  br label %333

332:                                              ; preds = %292
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2545, ptr noundef nonnull @.str.4) #23
  br label %333

333:                                              ; preds = %310, %298, %305, %323, %328, %332, %292, %292
  %334 = phi i32 [ %294, %332 ], [ %294, %292 ], [ %294, %292 ], [ %331, %328 ], [ %327, %323 ], [ %309, %305 ], [ %294, %298 ], [ %317, %310 ]
  %335 = icmp sgt i64 %293, 1
  br i1 %335, label %292, label %336, !prof !447, !llvm.loop !448

336:                                              ; preds = %215, %188, %278, %333, %132, %6, %125, %66, %208, %74, %214, %209, %178, %167, %145, %117, %112, %91, %83, %23
  %337 = phi i32 [ %27, %23 ], [ 0, %214 ], [ 0, %209 ], [ 0, %178 ], [ %170, %167 ], [ %151, %145 ], [ %124, %117 ], [ %116, %112 ], [ %97, %91 ], [ %90, %83 ], [ %76, %74 ], [ 0, %66 ], [ %19, %208 ], [ %19, %125 ], [ 0, %6 ], [ %142, %132 ], [ %334, %333 ], [ %285, %278 ], [ %189, %188 ], [ %230, %215 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  ret i32 %337
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !449 !PGOFuncName !450 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !420
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @get_cse_reg_info(i32 noundef %0) unnamed_addr #5 !prof !451 !PGOFuncName !452 {
  %2 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !404
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds %struct.cse_reg_info, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !453
  %6 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !416
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %9, label %8, !prof !454

8:                                                ; preds = %1
  tail call fastcc void @get_cse_reg_info_1(i32 noundef %0) #25
  br label %9

9:                                                ; preds = %8, %1
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @real_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @fixed_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @hash_rtx_string(ptr noundef readonly %0) unnamed_addr #6 !prof !403 !PGOFuncName !455 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !420
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %6
  %7 = phi i8 [ %13, %6 ], [ %4, %3 ]
  %8 = phi ptr [ %10, %6 ], [ %0, %3 ]
  %9 = phi i32 [ %12, %6 ], [ 0, %3 ]
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = zext i8 %7 to i32
  %12 = add i32 %9, %11
  %13 = load i8, ptr %10, align 1, !tbaa !420
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !456

15:                                               ; preds = %6, %3, %1
  %16 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %12, %6 ]
  ret i32 %16
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !prof !457 {
  %6 = tail call i32 @hash_rtx_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef null) #25
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @exp_equiv_p(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !458 {
  %5 = icmp ne i32 %2, 0
  %6 = icmp ne ptr %0, %1
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %278, !prof !459

8:                                                ; preds = %4, %136
  %9 = phi ptr [ %139, %136 ], [ %1, %4 ]
  %10 = phi ptr [ %138, %136 ], [ %0, %4 ]
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %9, null
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %16, !prof !460

14:                                               ; preds = %8
  %15 = icmp eq ptr %10, %9
  br label %278

16:                                               ; preds = %8
  %17 = load i32, ptr %10, align 8
  %18 = and i32 %17, 65535
  %19 = load i32, ptr %9, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %278, !prof !461

22:                                               ; preds = %16
  %23 = xor i32 %19, %17
  %24 = and i32 %23, 16711680
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %278, !prof !462

26:                                               ; preds = %22
  %27 = icmp eq i32 %18, 43
  br i1 %27, label %28, label %48, !prof !463

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !420
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32, !prof !464

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %30, i64 0, i32 5
  %34 = load i8, ptr %33, align 8, !tbaa !465
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %28, %32
  %37 = phi i32 [ %35, %32 ], [ 0, %28 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !420
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41, !prof !467

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %39, i64 0, i32 5
  %43 = load i8, ptr %42, align 8, !tbaa !465
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %36, %41
  %46 = phi i32 [ %44, %41 ], [ 0, %36 ]
  %47 = icmp eq i32 %37, %46
  br i1 %47, label %48, label %278, !prof !468

48:                                               ; preds = %45, %26
  %49 = trunc i32 %17 to i16
  switch i16 %49, label %207 [
    i16 36, label %50
    i16 46, label %50
    i16 30, label %50
    i16 32, label %50
    i16 31, label %50
    i16 44, label %52
    i16 45, label %58
    i16 37, label %64
    i16 43, label %104
    i16 49, label %116
    i16 52, label %116
    i16 61, label %116
    i16 62, label %116
    i16 63, label %116
    i16 80, label %116
    i16 81, label %116
    i16 17, label %142
  ], !prof !469

50:                                               ; preds = %48, %48, %48, %48, %48
  %51 = icmp eq ptr %10, %9
  br label %278

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !420
  %55 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !420
  %57 = icmp eq ptr %54, %56
  br label %278

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !420
  %61 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !420
  %63 = icmp eq ptr %60, %62
  br label %278

64:                                               ; preds = %48
  %65 = icmp eq i8 %3, 0
  br i1 %65, label %70, label %66, !prof !470

66:                                               ; preds = %64
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #25
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %69 = icmp eq i32 %67, %68
  br label %278

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %72 = icmp ult i32 %71, 53
  br i1 %72, label %73, label %77, !prof !471

73:                                               ; preds = %70
  %74 = lshr i32 %19, 16
  %75 = and i32 %74, 255
  %76 = tail call fastcc i32 @end_hard_regno(i32 noundef %75, i32 noundef %71) #25
  br label %79

77:                                               ; preds = %70
  %78 = add i32 %71, 1
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i32 [ %76, %73 ], [ %78, %77 ]
  %81 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #25
  %82 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %81) #25
  %83 = getelementptr inbounds %struct.cse_reg_info, ptr %82, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !425
  %85 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %71) #25
  %86 = getelementptr inbounds %struct.cse_reg_info, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !425
  %88 = icmp eq i32 %84, %87
  %89 = and i1 %5, %88
  br i1 %89, label %90, label %278, !prof !472

90:                                               ; preds = %79
  %91 = icmp ult i32 %71, %80
  br i1 %91, label %92, label %278, !prof !473

92:                                               ; preds = %90, %92
  %93 = phi i32 [ %101, %92 ], [ %71, %90 ]
  %94 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %93) #25
  %95 = getelementptr inbounds %struct.cse_reg_info, ptr %94, i64 0, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !474
  %97 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %93) #25
  %98 = getelementptr inbounds %struct.cse_reg_info, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !475
  %100 = icmp eq i32 %96, %99
  %101 = add i32 %93, 1
  %102 = icmp ne i32 %101, %80
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %92, label %278, !prof !476, !llvm.loop !477

104:                                              ; preds = %48
  %105 = icmp eq i8 %3, 0
  br i1 %105, label %207, label %106, !prof !478

106:                                              ; preds = %104
  %107 = or i32 %19, %17
  %108 = and i32 %107, 134217728
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %278, !prof !479

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !420
  %113 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !420
  %115 = icmp eq ptr %112, %114
  br i1 %115, label %207, label %278, !prof !480

116:                                              ; preds = %48, %48, %48, %48, %48, %48, %48
  %117 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !420
  %119 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !420
  %121 = tail call i32 @exp_equiv_p(ptr noundef %118, ptr noundef %120, i32 noundef %2, i8 noundef zeroext %3) #25, !range !481
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123, !prof !482

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !420
  %126 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !420
  %128 = tail call i32 @exp_equiv_p(ptr noundef %125, ptr noundef %127, i32 noundef %2, i8 noundef zeroext %3) #25, !range !481
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %278, !prof !483

130:                                              ; preds = %123, %116
  %131 = load ptr, ptr %117, align 8, !tbaa !420
  %132 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !420
  %134 = tail call i32 @exp_equiv_p(ptr noundef %131, ptr noundef %133, i32 noundef %2, i8 noundef zeroext %3) #25, !range !481
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %278, label %136, !prof !484

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !420
  %139 = load ptr, ptr %119, align 8, !tbaa !420
  %140 = icmp ne ptr %138, %139
  %141 = or i1 %5, %140
  br i1 %141, label %8, label %278, !prof !485

142:                                              ; preds = %48
  %143 = or i32 %19, %17
  %144 = and i32 %143, 134217728
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %278

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !420
  %149 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !420
  %151 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %148, ptr noundef nonnull dereferenceable(1) %150) #25
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %278

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !420
  %156 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !420
  %158 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(1) %157) #25
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %278

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %162 = load i32, ptr %161, align 8, !tbaa !420
  %163 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %164 = load i32, ptr %163, align 8, !tbaa !420
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %278

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !420
  %169 = load i32, ptr %168, align 8, !tbaa !428
  %170 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !420
  %172 = load i32, ptr %171, align 8, !tbaa !428
  %173 = icmp eq i32 %169, %172
  br i1 %173, label %174, label %278

174:                                              ; preds = %166
  %175 = icmp eq i32 %169, 0
  br i1 %175, label %278, label %176

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 2
  %178 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 2
  %179 = zext i32 %169 to i64
  br label %180

180:                                              ; preds = %176, %194
  %181 = phi i64 [ %179, %176 ], [ %182, %194 ]
  %182 = add nsw i64 %181, -1
  %183 = trunc i64 %181 to i32
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %278, label %185

185:                                              ; preds = %180
  %186 = load ptr, ptr %167, align 8, !tbaa !420
  %187 = getelementptr inbounds %struct.rtvec_def, ptr %186, i64 0, i32 1, i64 %182
  %188 = load ptr, ptr %187, align 8, !tbaa !404
  %189 = load ptr, ptr %170, align 8, !tbaa !420
  %190 = getelementptr inbounds %struct.rtvec_def, ptr %189, i64 0, i32 1, i64 %182
  %191 = load ptr, ptr %190, align 8, !tbaa !404
  %192 = tail call i32 @exp_equiv_p(ptr noundef %188, ptr noundef %191, i32 noundef %2, i8 noundef zeroext %3) #25, !range !481
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %278, label %194

194:                                              ; preds = %185
  %195 = load ptr, ptr %177, align 8, !tbaa !420
  %196 = getelementptr inbounds %struct.rtvec_def, ptr %195, i64 0, i32 1, i64 %182
  %197 = load ptr, ptr %196, align 8, !tbaa !404
  %198 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !420
  %200 = load ptr, ptr %178, align 8, !tbaa !420
  %201 = getelementptr inbounds %struct.rtvec_def, ptr %200, i64 0, i32 1, i64 %182
  %202 = load ptr, ptr %201, align 8, !tbaa !404
  %203 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !420
  %205 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %199, ptr noundef nonnull dereferenceable(1) %204) #25
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %180, label %278, !llvm.loop !486

207:                                              ; preds = %48, %104, %110
  %208 = zext nneg i32 %18 to i64
  %209 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !404
  %211 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %208
  %212 = load i8, ptr %211, align 1, !tbaa !420
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %278, label %214, !prof !487

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %216 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %217 = zext i8 %212 to i64
  br label %218

218:                                              ; preds = %214, %276
  %219 = phi i64 [ %217, %214 ], [ %220, %276 ]
  %220 = add nsw i64 %219, -1
  %221 = getelementptr inbounds i8, ptr %210, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !420
  switch i8 %222, label %275 [
    i8 101, label %223
    i8 69, label %230
    i8 115, label %256
    i8 105, label %263
    i8 119, label %269
    i8 48, label %276
    i8 116, label %276
  ], !prof !488

223:                                              ; preds = %218
  %224 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %225 = load ptr, ptr %224, align 8, !tbaa !420
  %226 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %227 = load ptr, ptr %226, align 8, !tbaa !420
  %228 = tail call i32 @exp_equiv_p(ptr noundef %225, ptr noundef %227, i32 noundef %2, i8 noundef zeroext %3) #25, !range !481
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %278, label %276, !prof !489

230:                                              ; preds = %218
  %231 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %232 = load ptr, ptr %231, align 8, !tbaa !420
  %233 = load i32, ptr %232, align 8, !tbaa !428
  %234 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %235 = load ptr, ptr %234, align 8, !tbaa !420
  %236 = load i32, ptr %235, align 8, !tbaa !428
  %237 = icmp eq i32 %233, %236
  br i1 %237, label %238, label %278

238:                                              ; preds = %230
  %239 = icmp sgt i32 %233, 0
  br i1 %239, label %246, label %276

240:                                              ; preds = %246
  %241 = add nuw nsw i64 %247, 1
  %242 = load ptr, ptr %231, align 8, !tbaa !420
  %243 = load i32, ptr %242, align 8, !tbaa !428
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %241, %244
  br i1 %245, label %246, label %276, !llvm.loop !490

246:                                              ; preds = %238, %240
  %247 = phi i64 [ %241, %240 ], [ 0, %238 ]
  %248 = phi ptr [ %242, %240 ], [ %232, %238 ]
  %249 = getelementptr inbounds %struct.rtvec_def, ptr %248, i64 0, i32 1, i64 %247
  %250 = load ptr, ptr %249, align 8, !tbaa !404
  %251 = load ptr, ptr %234, align 8, !tbaa !420
  %252 = getelementptr inbounds %struct.rtvec_def, ptr %251, i64 0, i32 1, i64 %247
  %253 = load ptr, ptr %252, align 8, !tbaa !404
  %254 = tail call i32 @exp_equiv_p(ptr noundef %250, ptr noundef %253, i32 noundef %2, i8 noundef zeroext %3) #25, !range !481
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %278, label %240

256:                                              ; preds = %218
  %257 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %258 = load ptr, ptr %257, align 8, !tbaa !420
  %259 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %260 = load ptr, ptr %259, align 8, !tbaa !420
  %261 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %258, ptr noundef nonnull dereferenceable(1) %260) #25
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %276, label %278

263:                                              ; preds = %218
  %264 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %265 = load i32, ptr %264, align 8, !tbaa !420
  %266 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %267 = load i32, ptr %266, align 8, !tbaa !420
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %276, label %278, !prof !491

269:                                              ; preds = %218
  %270 = getelementptr inbounds [1 x i64], ptr %215, i64 0, i64 %220
  %271 = load i64, ptr %270, align 8, !tbaa !420
  %272 = getelementptr inbounds [1 x i64], ptr %216, i64 0, i64 %220
  %273 = load i64, ptr %272, align 8, !tbaa !420
  %274 = icmp eq i64 %271, %273
  br i1 %274, label %276, label %278

275:                                              ; preds = %218
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2790, ptr noundef nonnull @.str.4) #23
  br label %276

276:                                              ; preds = %240, %238, %275, %223, %256, %263, %269, %218, %218
  %277 = icmp sgt i64 %219, 1
  br i1 %277, label %218, label %278, !prof !492, !llvm.loop !493

278:                                              ; preds = %136, %16, %22, %45, %130, %123, %180, %185, %194, %92, %223, %230, %256, %263, %269, %276, %246, %4, %90, %207, %79, %174, %146, %153, %160, %166, %142, %110, %106, %66, %58, %52, %50, %14
  %279 = phi i1 [ %15, %14 ], [ %69, %66 ], [ %63, %58 ], [ %57, %52 ], [ %51, %50 ], [ %88, %79 ], [ false, %106 ], [ false, %110 ], [ false, %142 ], [ false, %166 ], [ false, %160 ], [ false, %153 ], [ false, %146 ], [ true, %174 ], [ true, %207 ], [ true, %90 ], [ true, %4 ], [ false, %246 ], [ false, %223 ], [ false, %230 ], [ false, %256 ], [ false, %263 ], [ false, %269 ], [ true, %276 ], [ %100, %92 ], [ %184, %194 ], [ %184, %185 ], [ %184, %180 ], [ true, %136 ], [ false, %16 ], [ false, %22 ], [ false, %45 ], [ false, %130 ], [ true, %123 ]
  %280 = zext i1 %279 to i32
  ret i32 %280
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !prof !494 !PGOFuncName !495 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !420
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cse_main(ptr nocapture readnone %0, i32 noundef %1) local_unnamed_addr #0 !prof !496 {
  %3 = alloca %struct.cse_basic_block_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = load ptr, ptr @cfun, align 8, !tbaa !404
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !497
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !499
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #23
  %12 = tail call i32 @df_set_flags(i32 noundef 1) #23
  tail call void @df_analyze() #23
  %13 = tail call i32 @df_set_flags(i32 noundef 32) #23
  %14 = tail call ptr @get_insns() #23
  %15 = tail call i32 @max_reg_num() #23
  tail call void @reg_scan(ptr noundef %14, i32 noundef %15) #23
  tail call fastcc void @init_cse_reg_info(i32 noundef %1) #25
  %16 = load ptr, ptr @compiler_params, align 8, !tbaa !404
  %17 = getelementptr inbounds %struct.param_info, ptr %16, i64 57, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !501
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  %21 = tail call ptr @xmalloc(i64 noundef %20) #23
  %22 = getelementptr inbounds %struct.cse_basic_block_data, ptr %3, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !503
  store i8 0, ptr @cse_cfg_altered, align 1, !tbaa !420
  store i1 false, ptr @cse_jumps_altered, align 1
  store i1 false, ptr @recorded_label_ref, align 1
  %23 = getelementptr inbounds %struct.cse_basic_block_data, ptr %3, i64 0, i32 1
  store i32 0, ptr %23, align 4, !tbaa !505
  store i32 0, ptr %3, align 8, !tbaa !506
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @rtl_hooks, ptr noundef nonnull align 8 dereferenceable(40) @cse_rtl_hooks, i64 40, i1 false), !tbaa.struct !507
  tail call void @init_recog() #23
  tail call void @init_alias_analysis() #23
  %24 = sext i32 %1 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call ptr @xmalloc(i64 noundef %25) #23
  store ptr %26, ptr @reg_eqv_table, align 8, !tbaa !404
  %27 = load ptr, ptr @cfun, align 8, !tbaa !404
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !497
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !499
  %32 = tail call ptr @sbitmap_alloc(i32 noundef %31) #23
  store ptr %32, ptr @cse_visited_basic_blocks, align 8, !tbaa !404
  tail call void @sbitmap_zero(ptr noundef %32) #23
  %33 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %11, i8 noundef zeroext 0) #23
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %88, !prof !508

35:                                               ; preds = %2
  %36 = zext nneg i32 %33 to i64
  br label %39

37:                                               ; preds = %82, %68
  %38 = icmp sgt i32 %33, %69
  br i1 %38, label %39, label %86, !prof !509, !llvm.loop !510

39:                                               ; preds = %35, %37
  %40 = phi i64 [ %51, %37 ], [ 0, %35 ]
  %41 = load ptr, ptr @cfun, align 8, !tbaa !404
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !497
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !511
  %46 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !404
  %47 = shl i64 %40, 32
  %48 = ashr exact i64 %47, 32
  br label %49

49:                                               ; preds = %39, %49
  %50 = phi i64 [ %48, %39 ], [ %51, %49 ]
  %51 = add nsw i64 %50, 1
  %52 = getelementptr inbounds i32, ptr %11, i64 %50
  %53 = load i32, ptr %52, align 4, !tbaa !416
  %54 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %45, i32 noundef %53) #25
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !512
  %57 = lshr i32 %56, 6
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds %struct.simple_bitmap_def, ptr %46, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !515
  %61 = and i32 %56, 63
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw i64 1, %62
  %64 = and i64 %63, %60
  %65 = icmp ne i64 %64, 0
  %66 = icmp slt i64 %51, %36
  %67 = select i1 %65, i1 %66, i1 false, !prof !516
  br i1 %67, label %49, label %68, !prof !517, !llvm.loop !518

68:                                               ; preds = %49
  %69 = trunc i64 %51 to i32
  %70 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !416
  %71 = call fastcc zeroext i8 @cse_find_path(ptr noundef nonnull %54, ptr noundef nonnull %3, i32 noundef %70) #25, !range !519
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %37, label %73, !prof !520

73:                                               ; preds = %68, %82
  call fastcc void @cse_prescan_path(ptr noundef nonnull %3) #25
  %74 = load i32, ptr %3, align 8, !tbaa !506
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76, !prof !521

76:                                               ; preds = %73
  %77 = mul nsw i32 %74, 30
  store i32 %77, ptr @max_qty, align 4, !tbaa !416
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !404
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80, !prof !522

80:                                               ; preds = %76
  call fastcc void @cse_dump_path(ptr noundef nonnull %3, i32 noundef %74, ptr noundef nonnull %78) #25
  br label %81

81:                                               ; preds = %80, %76
  call fastcc void @cse_extended_basic_block(ptr noundef nonnull %3) #25
  br label %82

82:                                               ; preds = %81, %73
  %83 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !416
  %84 = call fastcc zeroext i8 @cse_find_path(ptr noundef %54, ptr noundef nonnull %3, i32 noundef %83) #25, !range !519
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %37, label %73, !prof !523, !llvm.loop !524

86:                                               ; preds = %37
  %87 = load ptr, ptr %22, align 8, !tbaa !503
  br label %88

88:                                               ; preds = %86, %2
  %89 = phi ptr [ %87, %86 ], [ %21, %2 ]
  tail call void @end_alias_analysis() #23
  %90 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !404
  tail call void @free(ptr noundef %90) #25
  tail call void @free(ptr noundef %89) #25
  %91 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !404
  %92 = load ptr, ptr %91, align 8, !tbaa !525
  tail call void @free(ptr noundef %92) #25
  tail call void @free(ptr noundef %91) #25
  tail call void @free(ptr noundef %11) #25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @rtl_hooks, ptr noundef nonnull align 8 dereferenceable(40) @general_rtl_hooks, i64 40, i1 false), !tbaa.struct !507
  %93 = load i1, ptr @cse_jumps_altered, align 1
  %94 = load i1, ptr @recorded_label_ref, align 1
  %95 = select i1 %93, i1 true, i1 %94
  %96 = load i8, ptr @cse_cfg_altered, align 1
  %97 = icmp ne i8 %96, 0
  %98 = zext i1 %97 to i32
  %99 = select i1 %95, i32 2, i32 %98, !prof !527
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret i32 %99
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: optsize
declare void @reg_scan(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_cse_reg_info(i32 noundef %0) unnamed_addr #0 !prof !496 !PGOFuncName !528 {
  %2 = load i32, ptr @cse_reg_info_table_size, align 4
  %3 = icmp ult i32 %2, %0
  br i1 %3, label %6, label %4, !prof !529

4:                                                ; preds = %1
  %5 = load i32, ptr @cse_reg_info_table_first_uninitialized, align 4, !tbaa !416
  br label %24

6:                                                ; preds = %1
  %7 = icmp ult i32 %2, 2048
  br i1 %7, label %8, label %15, !prof !530

8:                                                ; preds = %6
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 64, i32 %2, !prof !531
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %10, %8 ], [ %14, %11 ]
  %13 = icmp ult i32 %12, %0
  %14 = shl i32 %12, 1
  br i1 %13, label %11, label %15, !prof !532, !llvm.loop !533

15:                                               ; preds = %11, %6
  %16 = phi i32 [ %0, %6 ], [ %12, %11 ]
  %17 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !404
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !534

19:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %17) #25
  br label %20

20:                                               ; preds = %19, %15
  %21 = zext i32 %16 to i64
  %22 = mul nuw nsw i64 %21, 20
  %23 = tail call ptr @xmalloc(i64 noundef %22) #23
  store ptr %23, ptr @cse_reg_info_table, align 8, !tbaa !404
  store i32 %16, ptr @cse_reg_info_table_size, align 4, !tbaa !416
  store i32 0, ptr @cse_reg_info_table_first_uninitialized, align 4, !tbaa !416
  br label %24

24:                                               ; preds = %4, %20
  %25 = phi i32 [ %5, %4 ], [ 0, %20 ]
  %26 = icmp ult i32 %25, %0
  br i1 %26, label %27, label %39, !prof !535

27:                                               ; preds = %24
  %28 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !416
  %29 = add i32 %28, -1
  %30 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !404
  %31 = zext i32 %25 to i64
  %32 = zext i32 %0 to i64
  br label %33

33:                                               ; preds = %27, %33
  %34 = phi i64 [ %31, %27 ], [ %36, %33 ]
  %35 = getelementptr inbounds %struct.cse_reg_info, ptr %30, i64 %34
  store i32 %29, ptr %35, align 4, !tbaa !453
  %36 = add nuw nsw i64 %34, 1
  %37 = icmp eq i64 %36, %32
  br i1 %37, label %38, label %33, !prof !536, !llvm.loop !537

38:                                               ; preds = %33
  store i32 %0, ptr @cse_reg_info_table_first_uninitialized, align 4, !tbaa !416
  br label %39

39:                                               ; preds = %38, %24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @init_recog() local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !538 !PGOFuncName !539 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !404
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cse_find_path(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !prof !540 !PGOFuncName !541 {
  %4 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !404
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !512
  tail call fastcc void @SET_BIT(ptr noundef %4, i32 noundef %6) #25
  %7 = getelementptr inbounds %struct.cse_basic_block_data, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !505
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.cse_basic_block_data, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !503
  br i1 %9, label %23, label %12, !prof !542

12:                                               ; preds = %3
  %13 = load ptr, ptr %11, align 8, !tbaa !543
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %16, label %15, !prof !545

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6107, ptr noundef nonnull @.str.4) #23
  br label %16

16:                                               ; preds = %15, %12
  %17 = icmp eq i32 %8, 1
  br i1 %17, label %192, label %18, !prof !546

18:                                               ; preds = %16
  %19 = icmp sgt i32 %8, 1
  br i1 %19, label %20, label %98, !prof !547

20:                                               ; preds = %18
  %21 = zext nneg i32 %8 to i64
  %22 = load ptr, ptr %10, align 8, !tbaa !503
  br label %24

23:                                               ; preds = %3
  store ptr %0, ptr %11, align 8, !tbaa !543
  br label %98

24:                                               ; preds = %20, %91
  %25 = phi ptr [ %22, %20 ], [ %92, %91 ]
  %26 = phi i64 [ %21, %20 ], [ %27, %91 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds %struct.branch_path, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !543
  %30 = getelementptr %struct.branch_path, ptr %25, i64 %26
  %31 = getelementptr %struct.branch_path, ptr %30, i64 -2
  %32 = load ptr, ptr %31, align 8, !tbaa !543
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !548
  %35 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %34) #25
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %91, !prof !549

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !420
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !550
  %42 = tail call i32 @any_condjump_p(ptr noundef %41) #23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %91, label %44, !prof !552

44:                                               ; preds = %37
  %45 = tail call ptr @find_edge(ptr noundef nonnull %32, ptr noundef %29) #23
  %46 = icmp eq ptr %45, null
  br i1 %46, label %91, label %47, !prof !552

47:                                               ; preds = %44
  %48 = load ptr, ptr %33, align 8, !tbaa !548
  %49 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 0) #25
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !553
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56, !prof !555

54:                                               ; preds = %47
  %55 = icmp eq ptr %45, %49
  br i1 %55, label %59, label %91, !prof !556

56:                                               ; preds = %47
  %57 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 1) #25
  %58 = icmp eq ptr %45, %57
  br i1 %58, label %61, label %91, !prof !556

59:                                               ; preds = %54
  %60 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 1) #25
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi ptr [ %60, %59 ], [ %49, %56 ]
  %63 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !557
  %65 = load ptr, ptr @cfun, align 8, !tbaa !404
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !497
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !558
  %70 = icmp eq ptr %64, %69
  br i1 %70, label %91, label %71, !prof !559

71:                                               ; preds = %61
  %72 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %64) #25, !range !519
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %91, label %74, !prof !560

74:                                               ; preds = %71
  %75 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !404
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !512
  %78 = lshr i32 %77, 6
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds %struct.simple_bitmap_def, ptr %75, i64 0, i32 3, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !515
  %82 = and i32 %77, 63
  %83 = zext nneg i32 %82 to i64
  %84 = shl nuw i64 1, %83
  %85 = and i64 %84, %81
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91, !prof !561

87:                                               ; preds = %74
  %88 = trunc i64 %26 to i32
  tail call fastcc void @SET_BIT(ptr noundef nonnull %75, i32 noundef %77) #25
  %89 = load ptr, ptr %10, align 8, !tbaa !503
  %90 = getelementptr inbounds %struct.branch_path, ptr %89, i64 %27
  store ptr %64, ptr %90, align 8, !tbaa !543
  br label %98

91:                                               ; preds = %24, %37, %44, %54, %74, %71, %61, %56
  %92 = load ptr, ptr %10, align 8, !tbaa !503
  %93 = getelementptr inbounds %struct.branch_path, ptr %92, i64 %27
  store ptr null, ptr %93, align 8, !tbaa !543
  %94 = icmp ugt i64 %26, 2
  br i1 %94, label %24, label %95, !prof !562

95:                                               ; preds = %91
  %96 = trunc i64 %27 to i32
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %192, label %98, !prof !563

98:                                               ; preds = %18, %87, %95, %23
  %99 = phi i32 [ 1, %23 ], [ %96, %95 ], [ %88, %87 ], [ %8, %18 ]
  %100 = icmp eq i32 %2, 0
  br i1 %100, label %192, label %101, !prof !564

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.cse_basic_block_data, ptr %1, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !503
  %104 = sext i32 %99 to i64
  %105 = getelementptr %struct.branch_path, ptr %103, i64 %104
  %106 = getelementptr %struct.branch_path, ptr %105, i64 -1
  %107 = load ptr, ptr %106, align 8, !tbaa !543
  %108 = icmp eq ptr %107, null
  br i1 %108, label %192, label %109, !prof !565

109:                                              ; preds = %101
  %110 = load ptr, ptr @compiler_params, align 8, !tbaa !404
  %111 = getelementptr inbounds %struct.param_info, ptr %110, i64 57, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !501
  %113 = icmp slt i32 %99, %112
  br i1 %113, label %114, label %192, !prof !566

114:                                              ; preds = %109, %183
  %115 = phi i32 [ %185, %183 ], [ %99, %109 ]
  %116 = phi ptr [ %160, %183 ], [ %107, %109 ]
  %117 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %116) #25, !range !519
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119, !prof !567

119:                                              ; preds = %114
  %120 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %116) #25
  br label %154

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !548
  %124 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %123) #25
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %192, !prof !568

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !420
  %129 = getelementptr inbounds %struct.rtl_bb_info, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !550
  %131 = tail call i32 @any_condjump_p(ptr noundef %130) #23
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %192, label %133, !prof !569

133:                                              ; preds = %126
  %134 = load ptr, ptr %122, align 8, !tbaa !548
  %135 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %134, i32 noundef 0) #25
  %136 = getelementptr inbounds %struct.edge_def, ptr %135, i64 0, i32 7
  %137 = load i32, ptr %136, align 8, !tbaa !553
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %145, !prof !570

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.edge_def, ptr %135, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !557
  %143 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %142) #25, !range !519
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %152, label %157, !prof !571

145:                                              ; preds = %133
  %146 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %134, i32 noundef 1) #25
  %147 = getelementptr inbounds %struct.edge_def, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !557
  %149 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %148) #25, !range !519
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, ptr %135, ptr %146, !prof !571
  br label %157

152:                                              ; preds = %140
  %153 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %134, i32 noundef 1) #25
  br label %154

154:                                              ; preds = %152, %119
  %155 = phi ptr [ %120, %119 ], [ %153, %152 ]
  %156 = icmp eq ptr %155, null
  br i1 %156, label %192, label %157, !prof !572

157:                                              ; preds = %145, %140, %154
  %158 = phi ptr [ %155, %154 ], [ %135, %140 ], [ %151, %145 ]
  %159 = getelementptr inbounds %struct.edge_def, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !557
  %161 = load ptr, ptr @cfun, align 8, !tbaa !404
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !497
  %164 = getelementptr inbounds %struct.control_flow_graph, ptr %163, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !558
  %166 = icmp eq ptr %160, %165
  br i1 %166, label %192, label %167, !prof !573

167:                                              ; preds = %157
  %168 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %160) #25, !range !519
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %192, label %170, !prof !574

170:                                              ; preds = %167
  %171 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !404
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 9
  %173 = load i32, ptr %172, align 8, !tbaa !512
  %174 = lshr i32 %173, 6
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds %struct.simple_bitmap_def, ptr %171, i64 0, i32 3, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !515
  %178 = and i32 %173, 63
  %179 = zext nneg i32 %178 to i64
  %180 = shl nuw i64 1, %179
  %181 = and i64 %180, %177
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %192, !prof !575

183:                                              ; preds = %170
  tail call fastcc void @SET_BIT(ptr noundef nonnull %171, i32 noundef %173) #25
  %184 = load ptr, ptr %102, align 8, !tbaa !503
  %185 = add nsw i32 %115, 1
  %186 = sext i32 %115 to i64
  %187 = getelementptr inbounds %struct.branch_path, ptr %184, i64 %186
  store ptr %160, ptr %187, align 8, !tbaa !543
  %188 = load ptr, ptr @compiler_params, align 8, !tbaa !404
  %189 = getelementptr inbounds %struct.param_info, ptr %188, i64 57, i32 1
  %190 = load i32, ptr %189, align 8, !tbaa !501
  %191 = icmp slt i32 %185, %190
  br i1 %191, label %114, label %192, !prof !576, !llvm.loop !577

192:                                              ; preds = %183, %170, %167, %157, %154, %126, %121, %109, %101, %16, %95, %98
  %193 = phi i32 [ %99, %98 ], [ 0, %16 ], [ 0, %95 ], [ %99, %101 ], [ %99, %109 ], [ %115, %121 ], [ %115, %126 ], [ %115, %154 ], [ %115, %157 ], [ %115, %167 ], [ %115, %170 ], [ %185, %183 ]
  store i32 %193, ptr %7, align 4, !tbaa !505
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i8
  ret i8 %195
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cse_prescan_path(ptr nocapture noundef %0) unnamed_addr #10 !prof !578 !PGOFuncName !579 {
  %2 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !505
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %54, !prof !580

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !503
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %50
  %10 = phi i64 [ 0, %5 ], [ %52, %50 ]
  %11 = phi i32 [ 0, %5 ], [ %51, %50 ]
  %12 = getelementptr inbounds %struct.branch_path, ptr %7, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !543
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !420
  %16 = load ptr, ptr %15, align 8, !tbaa !420
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18, !prof !581

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !550
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !420
  br label %23

23:                                               ; preds = %18, %45
  %24 = phi ptr [ %16, %18 ], [ %48, %45 ]
  %25 = phi i32 [ %11, %18 ], [ %46, %45 ]
  %26 = icmp eq ptr %24, %22
  br i1 %26, label %50, label %27, !prof !582

27:                                               ; preds = %23
  %28 = load i32, ptr %24, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -7
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %45, !prof !583

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !420
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %43, !prof !584

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !420
  %41 = load i32, ptr %40, align 8, !tbaa !428
  %42 = add nsw i32 %41, %25
  br label %45

43:                                               ; preds = %32
  %44 = add nsw i32 %25, 1
  br label %45

45:                                               ; preds = %27, %38, %43
  %46 = phi i32 [ %42, %38 ], [ %44, %43 ], [ %25, %27 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !420
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %23, !prof !585, !llvm.loop !586

50:                                               ; preds = %23, %45, %9
  %51 = phi i32 [ %11, %9 ], [ %46, %45 ], [ %25, %23 ]
  %52 = add nuw nsw i64 %10, 1
  %53 = icmp eq i64 %52, %8
  br i1 %53, label %54, label %9, !prof !587, !llvm.loop !588

54:                                               ; preds = %50, %1
  %55 = phi i32 [ 0, %1 ], [ %51, %50 ]
  store i32 %55, ptr %0, align 8, !tbaa !506
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @cse_dump_path(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #11 !prof !403 !PGOFuncName !589 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %1) #25
  %5 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !505
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %18, %10 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !503
  %13 = getelementptr inbounds %struct.branch_path, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !543
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !512
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %16) #25
  %18 = add nuw nsw i64 %11, 1
  %19 = load i32, ptr %5, align 4, !tbaa !505
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %10, label %22, !llvm.loop !590

22:                                               ; preds = %10, %3
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !404
  %24 = tail call i32 @fputc(i32 noundef 10, ptr noundef %23) #25
  %25 = tail call i32 @fflush(ptr noundef %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_extended_basic_block(ptr nocapture noundef %0) unnamed_addr #0 !prof !591 !PGOFuncName !592 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !505
  %5 = load i32, ptr @max_qty, align 4, !tbaa !416
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 40
  %8 = tail call ptr @xmalloc(i64 noundef %7) #23
  store ptr %8, ptr @qty_table, align 8, !tbaa !404
  tail call fastcc void @new_basic_block() #25
  %9 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !503
  %11 = load ptr, ptr %10, align 8, !tbaa !543
  %12 = tail call ptr @df_get_live_in(ptr noundef %11) #23
  store ptr %12, ptr @cse_ebb_live_in, align 8, !tbaa !404
  %13 = load ptr, ptr %9, align 8, !tbaa !503
  %14 = sext i32 %4 to i64
  %15 = getelementptr %struct.branch_path, ptr %13, i64 %14
  %16 = getelementptr %struct.branch_path, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !tbaa !543
  %18 = tail call ptr @df_get_live_out(ptr noundef %17) #23
  store ptr %18, ptr @cse_ebb_live_out, align 8, !tbaa !404
  %19 = icmp sgt i32 %4, 0
  br i1 %19, label %20, label %206, !prof !593

20:                                               ; preds = %1, %202
  %21 = phi i64 [ %203, %202 ], [ 0, %1 ]
  %22 = phi i32 [ %161, %202 ], [ %4, %1 ]
  %23 = phi i32 [ %116, %202 ], [ 0, %1 ]
  %24 = load ptr, ptr %9, align 8, !tbaa !503
  %25 = getelementptr inbounds %struct.branch_path, ptr %24, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !543
  %27 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %26) #25, !range !519
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %51, label %29, !prof !594

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !512
  %32 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %31) #25
  %33 = load ptr, ptr %32, align 8, !tbaa !404
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %29, %47
  %36 = phi ptr [ %49, %47 ], [ %33, %29 ]
  %37 = phi ptr [ %48, %47 ], [ %32, %29 ]
  %38 = load i32, ptr %36, align 8
  %39 = and i32 %38, 131072
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.df_base_ref, ptr %36, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !420
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  tail call fastcc void @invalidate(ptr noundef nonnull %43, i32 noundef %46) #25
  br label %47

47:                                               ; preds = %41, %35
  %48 = getelementptr inbounds ptr, ptr %37, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !404
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %35, !llvm.loop !595

51:                                               ; preds = %47, %29, %20
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !420
  %54 = load ptr, ptr %53, align 8, !tbaa !420
  %55 = icmp eq ptr %54, null
  br i1 %55, label %115, label %56, !prof !581

56:                                               ; preds = %51, %111
  %57 = phi ptr [ %113, %111 ], [ %54, %51 ]
  %58 = phi i32 [ %82, %111 ], [ %23, %51 ]
  %59 = load ptr, ptr %52, align 8, !tbaa !420
  %60 = getelementptr inbounds %struct.rtl_bb_info, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !550
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !420
  %64 = icmp eq ptr %57, %63
  br i1 %64, label %115, label %65, !prof !596

65:                                               ; preds = %56
  %66 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %26) #23
  store i8 %66, ptr @optimize_this_for_speed_p, align 1, !tbaa !420
  %67 = load i32, ptr %57, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -11
  %70 = icmp ult i32 %69, -3
  br i1 %70, label %80, label %71, !prof !597

71:                                               ; preds = %65
  %72 = add nsw i32 %58, 1
  %73 = load ptr, ptr @compiler_params, align 8, !tbaa !404
  %74 = getelementptr inbounds %struct.param_info, ptr %73, i64 58, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !501
  %76 = icmp sgt i32 %58, %75
  br i1 %76, label %77, label %80, !prof !598

77:                                               ; preds = %71
  tail call fastcc void @flush_hash_table() #25
  %78 = load i32, ptr %57, align 8
  %79 = and i32 %78, 65535
  br label %80

80:                                               ; preds = %65, %77, %71
  %81 = phi i32 [ %68, %65 ], [ %79, %77 ], [ %68, %71 ]
  %82 = phi i32 [ %58, %65 ], [ 0, %77 ], [ %72, %71 ]
  %83 = add nsw i32 %81, -7
  %84 = icmp ult i32 %83, 4
  br i1 %84, label %85, label %111, !prof !599

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 1, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !420
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89, !prof !600

89:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #24
  store i8 0, ptr %2, align 1, !tbaa !420
  %90 = call fastcc ptr @cse_process_notes(ptr noundef nonnull %87, ptr noundef null, ptr noundef nonnull %2) #25
  store ptr %90, ptr %86, align 8, !tbaa !420
  %91 = load i8, ptr %2, align 1, !tbaa !420
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93, !prof !601

93:                                               ; preds = %89
  tail call void @df_notes_rescan(ptr noundef nonnull %57) #23
  br label %94

94:                                               ; preds = %93, %89
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #24
  br label %95

95:                                               ; preds = %94, %85
  tail call fastcc void @cse_insn(ptr noundef nonnull %57) #25
  %96 = load i32, ptr %57, align 8
  %97 = and i32 %96, 65535
  %98 = add nsw i32 %97, -7
  %99 = icmp ult i32 %98, 3
  br i1 %99, label %104, label %100, !prof !602

100:                                              ; preds = %95
  %101 = icmp ne i32 %97, 10
  %102 = load i1, ptr @recorded_label_ref, align 1
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %111, label %106, !prof !603

104:                                              ; preds = %95
  %105 = load i1, ptr @recorded_label_ref, align 1
  br i1 %105, label %111, label %106, !prof !604

106:                                              ; preds = %100, %104
  %107 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 1
  %108 = tail call i32 @for_each_rtx(ptr noundef nonnull %107, ptr noundef nonnull @check_for_label_ref, ptr noundef nonnull %57) #23
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110, !prof !605

110:                                              ; preds = %106
  store i1 true, ptr @recorded_label_ref, align 1
  br label %111

111:                                              ; preds = %80, %110, %106, %104, %100
  %112 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !420
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %56, !prof !606, !llvm.loop !607

115:                                              ; preds = %56, %111, %51
  %116 = phi i32 [ %23, %51 ], [ %82, %111 ], [ %58, %56 ]
  %117 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !416
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %126, label %119, !prof !594

119:                                              ; preds = %115
  %120 = tail call fastcc zeroext i8 @have_eh_succ_edges(ptr noundef nonnull %26) #25, !range !519
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = tail call zeroext i8 @purge_dead_edges(ptr noundef nonnull %26) #23
  %124 = load i8, ptr @cse_cfg_altered, align 1, !tbaa !420
  %125 = or i8 %124, %123
  store i8 %125, ptr @cse_cfg_altered, align 1, !tbaa !420
  br label %126

126:                                              ; preds = %122, %119, %115
  %127 = add nsw i32 %22, -1
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %21, %128
  br i1 %129, label %130, label %159, !prof !608

130:                                              ; preds = %126
  %131 = load ptr, ptr %9, align 8, !tbaa !503
  %132 = getelementptr %struct.branch_path, ptr %131, i64 %21
  %133 = getelementptr %struct.branch_path, ptr %132, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !543
  %135 = tail call ptr @find_edge(ptr noundef nonnull %26, ptr noundef %134) #23
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %159, !prof !609

137:                                              ; preds = %130
  %138 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !404
  %139 = sext i32 %22 to i64
  %140 = load ptr, ptr %9, align 8, !tbaa !503
  br label %141

141:                                              ; preds = %137, %141
  %142 = phi ptr [ %140, %137 ], [ %149, %141 ]
  %143 = phi i64 [ %139, %137 ], [ %144, %141 ]
  %144 = add nsw i64 %143, -1
  %145 = getelementptr inbounds %struct.branch_path, ptr %142, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !543
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 9
  %148 = load i32, ptr %147, align 8, !tbaa !512
  tail call fastcc void @RESET_BIT(ptr noundef %138, i32 noundef %148) #25
  %149 = load ptr, ptr %9, align 8, !tbaa !503
  %150 = getelementptr inbounds %struct.branch_path, ptr %149, i64 %144
  store ptr null, ptr %150, align 8, !tbaa !543
  %151 = add i64 %143, 4294967294
  %152 = and i64 %151, 4294967295
  %153 = icmp eq i64 %152, %21
  br i1 %153, label %154, label %141, !llvm.loop !610

154:                                              ; preds = %141
  %155 = trunc i64 %144 to i32
  store i32 %155, ptr %3, align 4, !tbaa !505
  %156 = shl i64 %143, 32
  %157 = add i64 %156, -8589934592
  %158 = ashr exact i64 %157, 32
  br label %159

159:                                              ; preds = %130, %154, %126
  %160 = phi i64 [ %128, %130 ], [ %158, %154 ], [ %128, %126 ]
  %161 = phi i32 [ %22, %130 ], [ %155, %154 ], [ %22, %126 ]
  %162 = load ptr, ptr %52, align 8, !tbaa !420
  %163 = getelementptr inbounds %struct.rtl_bb_info, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !550
  %165 = icmp slt i64 %21, %160
  br i1 %165, label %166, label %202, !prof !608

166:                                              ; preds = %159
  %167 = load i32, ptr %164, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 9
  br i1 %169, label %170, label %202, !prof !611

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !420
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 65535
  %175 = icmp eq i32 %174, 23
  br i1 %175, label %179, label %176

176:                                              ; preds = %170
  %177 = tail call ptr @single_set_2(ptr noundef nonnull %164, ptr noundef nonnull %172) #23
  %178 = icmp eq ptr %177, null
  br i1 %178, label %202, label %179

179:                                              ; preds = %170, %176
  %180 = tail call i32 @any_condjump_p(ptr noundef nonnull %164) #23
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %202, label %182, !prof !609

182:                                              ; preds = %179
  %183 = load ptr, ptr %9, align 8, !tbaa !503
  %184 = getelementptr %struct.branch_path, ptr %183, i64 %21
  %185 = getelementptr %struct.branch_path, ptr %184, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !543
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !548
  %189 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %188, i32 noundef 0) #25
  %190 = getelementptr inbounds %struct.edge_def, ptr %189, i64 0, i32 7
  %191 = load i32, ptr %190, align 8, !tbaa !553
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194, !prof !612

194:                                              ; preds = %182
  %195 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %188, i32 noundef 1) #25
  br label %196

196:                                              ; preds = %182, %194
  %197 = phi ptr [ %195, %194 ], [ %189, %182 ]
  %198 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !557
  %200 = icmp eq ptr %186, %199
  %201 = zext i1 %200 to i8
  tail call fastcc void @record_jump_equiv(ptr noundef nonnull %164, i8 noundef zeroext %201) #25
  br label %202

202:                                              ; preds = %196, %179, %176, %166, %159
  %203 = add nuw nsw i64 %21, 1
  %204 = sext i32 %161 to i64
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %20, label %206, !prof !613, !llvm.loop !614

206:                                              ; preds = %202, %1
  %207 = load i32, ptr @next_qty, align 4, !tbaa !416
  %208 = load i32, ptr @max_qty, align 4, !tbaa !416
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %211, !prof !615

210:                                              ; preds = %206
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6442, ptr noundef nonnull @.str.4) #23
  br label %211

211:                                              ; preds = %206, %210
  %212 = load ptr, ptr @qty_table, align 8, !tbaa !404
  tail call void @free(ptr noundef %212) #25
  ret void
}

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @delete_trivially_dead_insns(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !616 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !420
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !617

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 25) #23
  br label %6

6:                                                ; preds = %5, %2
  %7 = sext i32 %1 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 4) #23
  %9 = icmp eq ptr %0, null
  br i1 %9, label %21, label %10, !prof !618

10:                                               ; preds = %6, %17
  %11 = phi ptr [ %19, %17 ], [ %0, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %17, !prof !619

16:                                               ; preds = %10
  tail call fastcc void @count_reg_usage(ptr noundef nonnull %11, ptr noundef %8, ptr noundef null, i32 noundef 1) #25
  br label %17

17:                                               ; preds = %10, %16
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !420
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !prof !620, !llvm.loop !621

21:                                               ; preds = %17, %6
  %22 = tail call ptr @get_last_insn() #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24, !prof !618

24:                                               ; preds = %21, %42
  %25 = phi i32 [ %43, %42 ], [ 0, %21 ]
  %26 = phi ptr [ %28, %42 ], [ %22, %21 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !420
  %29 = load i32, ptr %26, align 8
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -7
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %33, label %42, !prof !619

33:                                               ; preds = %24
  %34 = tail call fastcc zeroext i8 @insn_live_p(ptr noundef nonnull %26, ptr noundef %8) #25
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %42, !prof !622

36:                                               ; preds = %33
  %37 = tail call zeroext i8 @dbg_cnt(i32 noundef 8) #23
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39, !prof !623

39:                                               ; preds = %36
  tail call fastcc void @count_reg_usage(ptr noundef nonnull %26, ptr noundef %8, ptr noundef null, i32 noundef -1) #25
  %40 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %26) #23
  %41 = add nsw i32 %25, 1
  br label %42

42:                                               ; preds = %24, %33, %36, %39
  %43 = phi i32 [ %25, %24 ], [ %25, %33 ], [ %41, %39 ], [ %25, %36 ]
  %44 = icmp eq ptr %28, null
  br i1 %44, label %45, label %24, !prof !620, !llvm.loop !624

45:                                               ; preds = %42
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !404
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48, !prof !617

48:                                               ; preds = %45
  %49 = icmp eq i32 %43, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.5, i32 noundef %43) #25
  br label %52

52:                                               ; preds = %21, %50, %48, %45
  %53 = phi i32 [ %43, %50 ], [ 0, %48 ], [ %43, %45 ], [ 0, %21 ]
  tail call void @free(ptr noundef %8) #25
  %54 = load i8, ptr @timevar_enable, align 1, !tbaa !420
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56, !prof !617

56:                                               ; preds = %52
  tail call void @timevar_pop_1(i32 noundef 25) #23
  br label %57

57:                                               ; preds = %56, %52
  ret i32 %53
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @count_reg_usage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !625 !PGOFuncName !626 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %148, label %6, !prof !627

6:                                                ; preds = %4, %29
  %7 = phi ptr [ %31, %29 ], [ %2, %4 ]
  %8 = phi ptr [ %30, %29 ], [ %0, %4 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = trunc i32 %9 to i16
  switch i16 %11, label %114 [
    i16 37, label %12
    i16 36, label %148
    i16 46, label %148
    i16 35, label %148
    i16 30, label %148
    i16 32, label %148
    i16 31, label %148
    i16 33, label %148
    i16 45, label %148
    i16 44, label %148
    i16 25, label %20
    i16 23, label %33
    i16 7, label %148
    i16 10, label %46
    i16 8, label %46
    i16 9, label %46
    i16 3, label %77
    i16 17, label %96
    i16 4, label %113
  ], !prof !628

12:                                               ; preds = %6
  %13 = icmp eq ptr %8, %7
  br i1 %13, label %148, label %14, !prof !629

14:                                               ; preds = %12
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #25
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !416
  %19 = add nsw i32 %18, %3
  store i32 %19, ptr %17, align 4, !tbaa !416
  br label %148

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !420
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 43
  br i1 %25, label %26, label %148, !prof !630

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !420
  br label %29

29:                                               ; preds = %44, %40, %26, %93, %60
  %30 = phi ptr [ %28, %26 ], [ %95, %93 ], [ %62, %60 ], [ %42, %40 ], [ %42, %44 ]
  %31 = phi ptr [ null, %26 ], [ null, %93 ], [ %50, %60 ], [ %7, %40 ], [ %45, %44 ]
  %32 = icmp eq ptr %30, null
  br i1 %32, label %148, label %6, !prof !631

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !420
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 37
  br i1 %38, label %40, label %39, !prof !632

39:                                               ; preds = %33
  tail call fastcc void @count_reg_usage(ptr noundef nonnull %35, ptr noundef %1, ptr noundef null, i32 noundef %3) #25
  br label %40

40:                                               ; preds = %39, %33
  %41 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !420
  %43 = icmp eq ptr %7, null
  br i1 %43, label %44, label %29, !prof !633

44:                                               ; preds = %40
  %45 = load ptr, ptr %34, align 8, !tbaa !420
  br label %29

46:                                               ; preds = %6, %6, %6
  %47 = tail call zeroext i8 @insn_could_throw_p(ptr noundef nonnull %8) #23
  %48 = icmp eq i8 %47, 0
  %49 = load ptr, ptr @global_rtl, align 16
  %50 = select i1 %48, ptr %7, ptr %49, !prof !634
  %51 = icmp eq i32 %10, 10
  br i1 %51, label %52, label %55, !prof !635

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !420
  tail call fastcc void @count_reg_usage(ptr noundef %54, ptr noundef %1, ptr noundef %50, i32 noundef %3) #25
  br label %55

55:                                               ; preds = %52, %46
  %56 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !420
  tail call fastcc void @count_reg_usage(ptr noundef %57, ptr noundef %1, ptr noundef %50, i32 noundef %3) #25
  %58 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %8) #23
  %59 = icmp eq ptr %58, null
  br i1 %59, label %148, label %60, !prof !636

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !420
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %29, !prof !637

66:                                               ; preds = %60, %73
  %67 = phi ptr [ %71, %73 ], [ %62, %60 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !420
  tail call fastcc void @count_reg_usage(ptr noundef %69, ptr noundef %1, ptr noundef %50, i32 noundef %3) #25
  %70 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !420
  %72 = icmp eq ptr %71, null
  br i1 %72, label %148, label %73

73:                                               ; preds = %66
  %74 = load i32, ptr %71, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %66, label %148, !llvm.loop !638

77:                                               ; preds = %6
  %78 = lshr i32 %9, 16
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !420
  switch i8 %79, label %85 [
    i8 4, label %92
    i8 5, label %82
  ]

82:                                               ; preds = %77
  %83 = load i32, ptr %81, align 8
  %84 = and i32 %83, 65535
  br label %89

85:                                               ; preds = %77
  %86 = load i32, ptr %81, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 24
  br i1 %88, label %92, label %89

89:                                               ; preds = %82, %85
  %90 = phi i32 [ %84, %82 ], [ %87, %85 ]
  %91 = icmp eq i32 %90, 25
  br i1 %91, label %92, label %93

92:                                               ; preds = %77, %89, %85
  tail call fastcc void @count_reg_usage(ptr noundef %81, ptr noundef %1, ptr noundef null, i32 noundef %3) #25
  br label %93

93:                                               ; preds = %92, %89
  %94 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !420
  br label %29

96:                                               ; preds = %6
  %97 = and i32 %9, 134217728
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, ptr %7, ptr null
  %100 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !420
  %102 = load i32, ptr %101, align 8, !tbaa !428
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %148

104:                                              ; preds = %96
  %105 = zext nneg i32 %102 to i64
  br label %106

106:                                              ; preds = %104, %106
  %107 = phi i64 [ %105, %104 ], [ %108, %106 ]
  %108 = add nsw i64 %107, -1
  %109 = load ptr, ptr %100, align 8, !tbaa !420
  %110 = getelementptr inbounds %struct.rtvec_def, ptr %109, i64 0, i32 1, i64 %108
  %111 = load ptr, ptr %110, align 8, !tbaa !404
  tail call fastcc void @count_reg_usage(ptr noundef %111, ptr noundef %1, ptr noundef %99, i32 noundef %3) #25
  %112 = icmp ugt i64 %107, 1
  br i1 %112, label %106, label %148, !llvm.loop !639

113:                                              ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6682, ptr noundef nonnull @.str.4) #23
  br label %114

114:                                              ; preds = %6, %113
  %115 = zext nneg i32 %10 to i64
  %116 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !404
  %118 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %115
  %119 = load i8, ptr %118, align 1, !tbaa !420
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %148, label %121, !prof !640

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %123 = zext i8 %119 to i64
  br label %124

124:                                              ; preds = %121, %146
  %125 = phi i64 [ %123, %121 ], [ %126, %146 ]
  %126 = add nsw i64 %125, -1
  %127 = getelementptr inbounds i8, ptr %117, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !420
  switch i8 %128, label %146 [
    i8 101, label %129
    i8 69, label %132
  ], !prof !641

129:                                              ; preds = %124
  %130 = getelementptr inbounds [1 x %union.rtunion_def], ptr %122, i64 0, i64 %126
  %131 = load ptr, ptr %130, align 8, !tbaa !420
  tail call fastcc void @count_reg_usage(ptr noundef %131, ptr noundef %1, ptr noundef %7, i32 noundef %3) #25
  br label %146

132:                                              ; preds = %124
  %133 = getelementptr inbounds [1 x %union.rtunion_def], ptr %122, i64 0, i64 %126
  %134 = load ptr, ptr %133, align 8, !tbaa !420
  %135 = load i32, ptr %134, align 8, !tbaa !428
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %146, !prof !642

137:                                              ; preds = %132
  %138 = zext nneg i32 %135 to i64
  br label %139

139:                                              ; preds = %137, %139
  %140 = phi i64 [ %138, %137 ], [ %141, %139 ]
  %141 = add nsw i64 %140, -1
  %142 = load ptr, ptr %133, align 8, !tbaa !420
  %143 = getelementptr inbounds %struct.rtvec_def, ptr %142, i64 0, i32 1, i64 %141
  %144 = load ptr, ptr %143, align 8, !tbaa !404
  tail call fastcc void @count_reg_usage(ptr noundef %144, ptr noundef %1, ptr noundef %7, i32 noundef %3) #25
  %145 = icmp ugt i64 %140, 1
  br i1 %145, label %139, label %146, !prof !643, !llvm.loop !644

146:                                              ; preds = %139, %132, %124, %129
  %147 = icmp sgt i64 %125, 1
  br i1 %147, label %124, label %148, !prof !645, !llvm.loop !646

148:                                              ; preds = %29, %20, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %55, %106, %66, %73, %146, %4, %96, %114, %12, %14
  ret void
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @insn_live_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !647 !PGOFuncName !648 {
  %3 = tail call zeroext i8 @insn_could_throw_p(ptr noundef %0) #23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %69, !prof !649

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !420
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %34 [
    i16 23, label %10
    i16 15, label %12
  ], !prof !650

10:                                               ; preds = %5
  %11 = tail call fastcc zeroext i8 @set_live_p(ptr noundef nonnull %7, ptr noundef %1) #25
  br label %69

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !420
  %15 = load i32, ptr %14, align 8, !tbaa !428
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %69, !prof !651

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %32
  %20 = phi i64 [ %18, %17 ], [ %21, %32 ]
  %21 = add nsw i64 %20, -1
  %22 = load ptr, ptr %6, align 8, !tbaa !420
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !420
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !404
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %69 [
    i16 23, label %29
    i16 25, label %32
    i16 24, label %32
  ], !prof !652

29:                                               ; preds = %19
  %30 = tail call fastcc zeroext i8 @set_live_p(ptr noundef nonnull %26, ptr noundef %1) #25
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %69, !prof !653

32:                                               ; preds = %19, %19, %29
  %33 = icmp ugt i64 %20, 1
  br i1 %33, label %19, label %69, !prof !654, !llvm.loop !655

34:                                               ; preds = %5
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 7
  br i1 %37, label %38, label %69, !prof !656

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !420
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  br label %44

44:                                               ; preds = %42, %55
  %45 = phi ptr [ %40, %42 ], [ %57, %55 ]
  %46 = load i32, ptr %45, align 8
  %47 = trunc i32 %46 to i16
  switch i16 %47, label %69 [
    i16 13, label %55
    i16 7, label %48
  ]

48:                                               ; preds = %44
  %49 = load ptr, ptr %43, align 8, !tbaa !420
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !420
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !420
  %54 = icmp eq ptr %49, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %44, %48
  %56 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !420
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44, !llvm.loop !657

59:                                               ; preds = %55, %38
  %60 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = tail call i32 @for_each_rtx(ptr noundef nonnull %60, ptr noundef nonnull @is_dead_reg, ptr noundef %1) #23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !404
  %65 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %64) #23
  %66 = load ptr, ptr %6, align 8, !tbaa !420
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %65, ptr %67, align 8, !tbaa !420
  %68 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #23
  br label %69

69:                                               ; preds = %19, %29, %32, %44, %48, %12, %34, %63, %59, %2, %10
  %70 = phi i8 [ %11, %10 ], [ 1, %2 ], [ 1, %63 ], [ 1, %59 ], [ 1, %34 ], [ 0, %12 ], [ 0, %48 ], [ 1, %44 ], [ 1, %19 ], [ 1, %29 ], [ 0, %32 ]
  ret i8 %70
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @delete_insn_and_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_cse() #7 !prof !658 !PGOFuncName !659 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !416
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_cse() #0 !prof !658 !PGOFuncName !660 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !404
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !661

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !416
  tail call void @dump_flow_info(ptr noundef nonnull %1, i32 noundef %4) #23
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call ptr @get_insns() #23
  %7 = tail call i32 @max_reg_num() #23
  %8 = tail call i32 @cse_main(ptr poison, i32 noundef %7) #25, !range !662
  %9 = load i32, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !416
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr @flag_gcse, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false, !prof !663
  %14 = zext i1 %13 to i32
  store i32 %14, ptr @cse_not_expected, align 4, !tbaa !416
  %15 = icmp eq i32 %8, 2
  br i1 %15, label %16, label %26, !prof !663

16:                                               ; preds = %5
  %17 = load i8, ptr @timevar_enable, align 1, !tbaa !420
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @timevar_push_1(i32 noundef 119) #23
  br label %20

20:                                               ; preds = %19, %16
  %21 = tail call ptr @get_insns() #23
  tail call void @rebuild_jump_labels(ptr noundef %21) #23
  %22 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  %23 = load i8, ptr @timevar_enable, align 1, !tbaa !420
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  tail call void @timevar_pop_1(i32 noundef 119) #23
  br label %33

26:                                               ; preds = %5
  %27 = icmp eq i32 %8, 1
  %28 = load i32, ptr @optimize, align 4
  %29 = icmp sgt i32 %28, 1
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %33, !prof !664

31:                                               ; preds = %26
  %32 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  br label %33

33:                                               ; preds = %31, %26, %20, %25
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_cse2() #7 !prof !658 !PGOFuncName !665 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !416
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_rerun_cse_after_loop, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !661
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_cse2() #0 !prof !658 !PGOFuncName !666 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !404
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !661

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !416
  tail call void @dump_flow_info(ptr noundef nonnull %1, i32 noundef %4) #23
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call ptr @get_insns() #23
  %7 = tail call i32 @max_reg_num() #23
  %8 = tail call i32 @cse_main(ptr poison, i32 noundef %7) #25, !range !662
  tail call fastcc void @cse_condition_code_reg() #25
  %9 = tail call ptr @get_insns() #23
  %10 = tail call i32 @max_reg_num() #23
  %11 = tail call i32 @delete_trivially_dead_insns(ptr noundef %9, i32 noundef %10) #25
  switch i32 %8, label %24 [
    i32 2, label %12
    i32 1, label %22
  ], !prof !667

12:                                               ; preds = %5
  %13 = load i8, ptr @timevar_enable, align 1, !tbaa !420
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !668

15:                                               ; preds = %12
  tail call void @timevar_push_1(i32 noundef 119) #23
  br label %16

16:                                               ; preds = %15, %12
  %17 = tail call ptr @get_insns() #23
  tail call void @rebuild_jump_labels(ptr noundef %17) #23
  %18 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  %19 = load i8, ptr @timevar_enable, align 1, !tbaa !420
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21, !prof !668

21:                                               ; preds = %16
  tail call void @timevar_pop_1(i32 noundef 119) #23
  br label %24

22:                                               ; preds = %5
  %23 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  br label %24

24:                                               ; preds = %5, %22, %16, %21
  store i32 1, ptr @cse_not_expected, align 4, !tbaa !416
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_cse_after_global_opts() #7 !prof !658 !PGOFuncName !669 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !416
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !661
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_cse_after_global_opts() #0 !prof !670 !PGOFuncName !671 {
  %1 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !416
  store i32 0, ptr @flag_cse_follow_jumps, align 4, !tbaa !416
  %2 = tail call ptr @get_insns() #23
  tail call void @rebuild_jump_labels(ptr noundef %2) #23
  %3 = tail call ptr @get_insns() #23
  %4 = tail call i32 @max_reg_num() #23
  %5 = tail call i32 @cse_main(ptr poison, i32 noundef %4) #25, !range !662
  %6 = tail call zeroext i8 @purge_all_dead_edges() #23
  %7 = tail call ptr @get_insns() #23
  %8 = tail call i32 @max_reg_num() #23
  %9 = tail call i32 @delete_trivially_dead_insns(ptr noundef %7, i32 noundef %8) #25
  %10 = load i32, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !416
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, ptr @cse_not_expected, align 4, !tbaa !416
  switch i32 %5, label %25 [
    i32 2, label %13
    i32 1, label %23
  ], !prof !672

13:                                               ; preds = %0
  %14 = load i8, ptr @timevar_enable, align 1, !tbaa !420
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @timevar_push_1(i32 noundef 119) #23
  br label %17

17:                                               ; preds = %16, %13
  %18 = tail call ptr @get_insns() #23
  tail call void @rebuild_jump_labels(ptr noundef %18) #23
  %19 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  %20 = load i8, ptr @timevar_enable, align 1, !tbaa !420
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  tail call void @timevar_pop_1(i32 noundef 119) #23
  br label %25

23:                                               ; preds = %0
  %24 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  br label %25

25:                                               ; preds = %0, %23, %17, %22
  store i32 %1, ptr @flag_cse_follow_jumps, align 4, !tbaa !416
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @get_cse_reg_info_1(i32 noundef %0) unnamed_addr #13 !prof !673 !PGOFuncName !674 {
  %2 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !416
  %3 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !404
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4
  store i32 %2, ptr %5, align 4, !tbaa !453
  %6 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 2
  store i32 1, ptr %6, align 4, !tbaa !475
  %7 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 3
  store i32 -1, ptr %7, align 4, !tbaa !474
  %8 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 4
  store i32 -1, ptr %8, align 4, !tbaa !675
  %9 = xor i32 %0, -1
  %10 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !425
  ret void
}

; Function Attrs: optsize
declare ptr @gen_lowpart_if_possible(i32 noundef, ptr noundef) #3

; Function Attrs: optsize
declare ptr @gen_lowpart_no_emit_general(i32 noundef, ptr noundef) #3

; Function Attrs: optsize
declare ptr @reg_nonzero_bits_general(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: optsize
declare ptr @reg_num_sign_bit_copies_general(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: optsize
declare zeroext i8 @reg_truncated_to_mode_general(i32 noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !676 !PGOFuncName !677 {
  %3 = load ptr, ptr %0, align 8, !tbaa !525
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !678

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !515
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !420
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !420
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !515
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !515
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !679 !PGOFuncName !680 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !681

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !682
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !684 !PGOFuncName !685 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !404
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !686 !PGOFuncName !687 {
  %2 = load ptr, ptr %0, align 8, !tbaa !688
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !689 !PGOFuncName !690 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !548
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #25
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !691 !PGOFuncName !692 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #25, !range !519
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !693

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.4) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !548
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #25
  ret ptr %8
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @new_basic_block() unnamed_addr #15 !prof !591 !PGOFuncName !694 {
  store i32 0, ptr @next_qty, align 4, !tbaa !416
  %1 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !416
  %2 = add i32 %1, 1
  store i32 %2, ptr @cse_reg_info_timestamp, align 4, !tbaa !416
  store i64 0, ptr @hard_regs_in_table, align 8, !tbaa !515
  %3 = load ptr, ptr @free_element_chain, align 8, !tbaa !404
  br label %4

4:                                                ; preds = %0, %18
  %5 = phi i64 [ 0, %0 ], [ %20, %18 ]
  %6 = phi ptr [ %3, %0 ], [ %19, %18 ]
  %7 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !404
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10, !prof !695

10:                                               ; preds = %4
  store ptr null, ptr %7, align 8, !tbaa !404
  br label %11

11:                                               ; preds = %11, %10
  %12 = phi ptr [ %8, %10 ], [ %14, %11 ]
  %13 = getelementptr inbounds %struct.table_elt, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !696
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !prof !697, !llvm.loop !698

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.table_elt, ptr %12, i64 0, i32 2
  store ptr %6, ptr %17, align 8, !tbaa !696
  store ptr %8, ptr @free_element_chain, align 8, !tbaa !404
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi ptr [ %8, %16 ], [ %6, %4 ]
  %20 = add nuw nsw i64 %5, 1
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %4, !prof !699, !llvm.loop !700

22:                                               ; preds = %18
  ret void
}

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 !prof !701 !PGOFuncName !702 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #25
  store i32 0, ptr %3, align 8, !tbaa.struct !703
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !704
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #25, !range !519
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !705

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !404
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !553
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !706

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #25
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #25, !range !519
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !707, !llvm.loop !708

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #14 !prof !403 !PGOFuncName !709 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #25
  %3 = load ptr, ptr %2, align 8, !tbaa !710
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invalidate(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !712 !PGOFuncName !713 {
  %3 = alloca %struct.check_dependence_data, align 8
  br label %4

4:                                                ; preds = %104, %2
  %5 = phi ptr [ %0, %2 ], [ %106, %104 ]
  %6 = phi i32 [ %1, %2 ], [ 0, %104 ]
  %7 = load i32, ptr %5, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %166 [
    i16 37, label %9
    i16 39, label %104
    i16 15, label %107
    i16 3, label %104
    i16 43, label %121
  ], !prof !714

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #25
  %11 = and i32 %7, 65535
  %12 = icmp eq i32 %11, 37
  %13 = icmp ugt i32 %10, 52
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %20, !prof !715

15:                                               ; preds = %9
  %16 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %10) #25
  %17 = getelementptr inbounds %struct.cse_reg_info, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !425
  %19 = add i32 %18, 4736
  br label %24

20:                                               ; preds = %9
  %21 = lshr i32 %7, 16
  %22 = and i32 %21, 255
  %23 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %5, i32 noundef %22) #25
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32 [ %19, %15 ], [ %23, %20 ]
  tail call fastcc void @delete_reg_equiv(i32 noundef %10) #25
  %26 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %10) #25
  %27 = getelementptr inbounds %struct.cse_reg_info, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !475
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !475
  %30 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %10) #25
  %31 = getelementptr inbounds %struct.cse_reg_info, ptr %30, i64 0, i32 4
  store i32 -1, ptr %31, align 4, !tbaa !675
  br i1 %13, label %32, label %34, !prof !716

32:                                               ; preds = %24
  %33 = and i32 %25, 31
  tail call fastcc void @remove_pseudo_from_table(ptr noundef nonnull %5, i32 noundef %33) #25
  br label %167

34:                                               ; preds = %24
  %35 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !515
  %36 = zext nneg i32 %10 to i64
  %37 = shl nuw nsw i64 1, %36
  %38 = lshr i64 %35, %36
  %39 = and i64 %38, 1
  %40 = load i32, ptr %5, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #25
  %44 = tail call fastcc i32 @end_hard_regno(i32 noundef %42, i32 noundef %43) #25
  %45 = xor i64 %37, -1
  %46 = and i64 %35, %45
  store i64 %46, ptr @hard_regs_in_table, align 8, !tbaa !515
  %47 = add nuw nsw i32 %10, 1
  %48 = icmp ult i32 %47, %44
  br i1 %48, label %49, label %71, !prof !717

49:                                               ; preds = %34
  %50 = add nuw nsw i64 %36, 1
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ %50, %49 ], [ %68, %51 ]
  %53 = phi i64 [ %39, %49 ], [ %58, %51 ]
  %54 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !515
  %55 = shl nuw i64 1, %52
  %56 = lshr i64 %54, %52
  %57 = and i64 %56, 1
  %58 = or i64 %57, %53
  %59 = xor i64 %55, -1
  %60 = and i64 %54, %59
  store i64 %60, ptr @hard_regs_in_table, align 8, !tbaa !515
  %61 = trunc i64 %52 to i32
  tail call fastcc void @delete_reg_equiv(i32 noundef %61) #25
  %62 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %61) #25
  %63 = getelementptr inbounds %struct.cse_reg_info, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !475
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !475
  %66 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %61) #25
  %67 = getelementptr inbounds %struct.cse_reg_info, ptr %66, i64 0, i32 4
  store i32 -1, ptr %67, align 4, !tbaa !675
  %68 = add nuw nsw i64 %52, 1
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %44, %69
  br i1 %70, label %71, label %51, !prof !718, !llvm.loop !719

71:                                               ; preds = %51, %34
  %72 = phi i64 [ %39, %34 ], [ %58, %51 ]
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %167, label %74, !prof !720

74:                                               ; preds = %71, %101
  %75 = phi i64 [ %102, %101 ], [ 0, %71 ]
  %76 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !404
  %78 = icmp eq ptr %77, null
  br i1 %78, label %101, label %79, !prof !721

79:                                               ; preds = %74, %99
  %80 = phi ptr [ %82, %99 ], [ %77, %74 ]
  %81 = getelementptr inbounds %struct.table_elt, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !696
  %83 = load ptr, ptr %80, align 8, !tbaa !408
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 37
  br i1 %86, label %87, label %99, !prof !722

87:                                               ; preds = %79
  %88 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %83) #25
  %89 = icmp ugt i32 %88, 52
  br i1 %89, label %99, label %90, !prof !723

90:                                               ; preds = %87
  %91 = lshr i32 %84, 16
  %92 = and i32 %91, 255
  %93 = tail call fastcc i32 @end_hard_regno(i32 noundef %92, i32 noundef %88) #25
  %94 = icmp ugt i32 %93, %10
  %95 = icmp ult i32 %88, %44
  %96 = and i1 %94, %95
  br i1 %96, label %97, label %99, !prof !724

97:                                               ; preds = %90
  %98 = trunc i64 %75 to i32
  tail call fastcc void @remove_from_table(ptr noundef nonnull %80, i32 noundef %98) #25
  br label %99

99:                                               ; preds = %90, %97, %79, %87
  %100 = icmp eq ptr %82, null
  br i1 %100, label %101, label %79, !prof !725, !llvm.loop !726

101:                                              ; preds = %99, %74
  %102 = add nuw nsw i64 %75, 1
  %103 = icmp eq i64 %102, 32
  br i1 %103, label %167, label %74, !prof !727, !llvm.loop !728

104:                                              ; preds = %4, %4
  %105 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !420
  br label %4

107:                                              ; preds = %4
  %108 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !420
  %110 = load i32, ptr %109, align 8, !tbaa !428
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %167

112:                                              ; preds = %107
  %113 = zext nneg i32 %110 to i64
  br label %114

114:                                              ; preds = %112, %114
  %115 = phi i64 [ %113, %112 ], [ %116, %114 ]
  %116 = add nsw i64 %115, -1
  %117 = load ptr, ptr %108, align 8, !tbaa !420
  %118 = getelementptr inbounds %struct.rtvec_def, ptr %117, i64 0, i32 1, i64 %116
  %119 = load ptr, ptr %118, align 8, !tbaa !404
  tail call fastcc void @invalidate(ptr noundef %119, i32 noundef 0) #25
  %120 = icmp ugt i64 %115, 1
  br i1 %120, label %114, label %167, !llvm.loop !729

121:                                              ; preds = %4
  %122 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !420
  %124 = tail call ptr @get_addr(ptr noundef %123) #23
  %125 = tail call ptr @canon_rtx(ptr noundef %124) #23
  %126 = tail call ptr @canon_rtx(ptr noundef nonnull %5) #23
  %127 = icmp eq i32 %6, 0
  br i1 %127, label %128, label %132, !prof !730

128:                                              ; preds = %121
  %129 = load i32, ptr %126, align 8
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  br label %132

132:                                              ; preds = %128, %121
  %133 = phi i32 [ %131, %128 ], [ %6, %121 ]
  %134 = getelementptr inbounds %struct.check_dependence_data, ptr %3, i64 0, i32 1
  %135 = getelementptr inbounds %struct.check_dependence_data, ptr %3, i64 0, i32 2
  br label %136

136:                                              ; preds = %132, %163
  %137 = phi i64 [ 0, %132 ], [ %164, %163 ]
  %138 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !404
  %140 = icmp eq ptr %139, null
  br i1 %140, label %163, label %141, !prof !731

141:                                              ; preds = %136, %161
  %142 = phi ptr [ %144, %161 ], [ %139, %136 ]
  %143 = getelementptr inbounds %struct.table_elt, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !696
  %145 = getelementptr inbounds %struct.table_elt, ptr %142, i64 0, i32 11
  %146 = load i8, ptr %145, align 1, !tbaa !732
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %161, label %148, !prof !733

148:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  %149 = getelementptr inbounds %struct.table_elt, ptr %142, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !734
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %155, !prof !735

152:                                              ; preds = %148
  %153 = load ptr, ptr %142, align 8, !tbaa !408
  %154 = call ptr @canon_rtx(ptr noundef %153) #23
  store ptr %154, ptr %149, align 8, !tbaa !734
  br label %155

155:                                              ; preds = %152, %148
  store ptr %126, ptr %134, align 8, !tbaa !736
  store ptr %125, ptr %135, align 8, !tbaa !738
  store i32 %133, ptr %3, align 8, !tbaa !739
  %156 = call i32 @for_each_rtx(ptr noundef nonnull %149, ptr noundef nonnull @check_dependence, ptr noundef nonnull %3) #23
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158, !prof !740

158:                                              ; preds = %155
  %159 = trunc i64 %137 to i32
  call fastcc void @remove_from_table(ptr noundef nonnull %142, i32 noundef %159) #25
  br label %160

160:                                              ; preds = %158, %155
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  br label %161

161:                                              ; preds = %141, %160
  %162 = icmp eq ptr %144, null
  br i1 %162, label %163, label %141, !prof !741, !llvm.loop !742

163:                                              ; preds = %161, %136
  %164 = add nuw nsw i64 %137, 1
  %165 = icmp eq i64 %164, 32
  br i1 %165, label %167, label %136, !prof !743, !llvm.loop !744

166:                                              ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1992, ptr noundef nonnull @.str.4) #23
  br label %167

167:                                              ; preds = %163, %114, %101, %107, %32, %71, %166
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flush_hash_table() unnamed_addr #0 !prof !403 !PGOFuncName !745 {
  br label %1

1:                                                ; preds = %0, %19
  %2 = phi i64 [ 0, %0 ], [ %20, %19 ]
  %3 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !404
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = trunc i64 %2 to i32
  br label %8

8:                                                ; preds = %6, %16
  %9 = phi ptr [ %17, %16 ], [ %4, %6 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !408
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call fastcc void @invalidate(ptr noundef nonnull %10, i32 noundef 0) #25
  br label %16

15:                                               ; preds = %8
  tail call fastcc void @remove_from_table(ptr noundef nonnull %9, i32 noundef %7) #25
  br label %16

16:                                               ; preds = %14, %15
  %17 = load ptr, ptr %3, align 8, !tbaa !404
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !746

19:                                               ; preds = %16, %1
  %20 = add nuw nsw i64 %2, 1
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %1, !llvm.loop !747

22:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cse_process_notes(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !748 !PGOFuncName !749 {
  %4 = tail call fastcc ptr @cse_process_notes_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6, !prof !750

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !420
  br label %7

7:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_insn(ptr noundef %0) unnamed_addr #0 !prof !751 !PGOFuncName !752 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !420
  store ptr %0, ptr @this_insn, align 8, !tbaa !404
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %28, !prof !753

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !420
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11, !prof !754

11:                                               ; preds = %7, %22
  %12 = phi ptr [ %26, %22 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !420
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 25
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !420
  tail call fastcc void @invalidate(ptr noundef %20, i32 noundef 0) #25
  %21 = load ptr, ptr %13, align 8, !tbaa !420
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi ptr [ %21, %18 ], [ %14, %11 ]
  %24 = tail call fastcc ptr @canon_reg(ptr noundef %23, ptr noundef %0) #25
  store ptr %24, ptr %13, align 8, !tbaa !420
  %25 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !420
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %11, !prof !718, !llvm.loop !755

28:                                               ; preds = %22, %7, %1
  %29 = load i32, ptr %3, align 8
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %169 [
    i16 23, label %31
    i16 15, label %53
    i16 25, label %146
    i16 24, label %154
    i16 26, label %165
  ], !prof !756

31:                                               ; preds = %28
  %32 = alloca [80 x i8], align 16
  store ptr %3, ptr %32, align 16, !tbaa !757
  %33 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !420
  %35 = load ptr, ptr @global_rtl, align 16, !tbaa !404
  %36 = icmp eq ptr %34, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !420
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 44
  %42 = select i1 %36, i1 %41, i1 false
  br i1 %42, label %253, label %43, !prof !759

43:                                               ; preds = %31
  %44 = and i32 %39, 65535
  %45 = icmp eq i32 %44, 26
  br i1 %45, label %46, label %178, !prof !760

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %38, ptr noundef %0) #25
  %49 = tail call i32 @apply_change_group() #23
  %50 = load ptr, ptr %47, align 8, !tbaa !420
  %51 = tail call fastcc ptr @fold_rtx(ptr noundef %50, ptr noundef %0) #25
  %52 = load ptr, ptr %33, align 8, !tbaa !420
  tail call fastcc void @invalidate(ptr noundef %52, i32 noundef 0) #25
  br label %253

53:                                               ; preds = %28
  %54 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !420
  %56 = load i32, ptr %55, align 8, !tbaa !428
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, 80
  %59 = alloca i8, i64 %58, align 16
  %60 = icmp sgt i32 %56, 0
  br i1 %60, label %61, label %253, !prof !761

61:                                               ; preds = %53
  %62 = zext nneg i32 %56 to i64
  br label %66

63:                                               ; preds = %85
  br i1 %60, label %64, label %253, !prof !563

64:                                               ; preds = %63
  %65 = zext nneg i32 %56 to i64
  br label %88

66:                                               ; preds = %61, %85
  %67 = phi i64 [ 0, %61 ], [ %86, %85 ]
  %68 = load ptr, ptr %54, align 8, !tbaa !420
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !404
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 25
  br i1 %73, label %74, label %85, !prof !762

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !420
  %77 = load i32, ptr %76, align 8
  %78 = trunc i32 %77 to i16
  switch i16 %78, label %85 [
    i16 37, label %79
    i16 39, label %79
    i16 40, label %80
    i16 120, label %80
  ], !prof !763

79:                                               ; preds = %74, %74
  tail call fastcc void @invalidate(ptr noundef nonnull %76, i32 noundef 0) #25
  br label %85

80:                                               ; preds = %74, %74
  %81 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !420
  %83 = lshr i32 %77, 16
  %84 = and i32 %83, 255
  tail call fastcc void @invalidate(ptr noundef %82, i32 noundef %84) #25
  br label %85

85:                                               ; preds = %79, %80, %74, %66
  %86 = add nuw nsw i64 %67, 1
  %87 = icmp eq i64 %86, %62
  br i1 %87, label %63, label %66, !prof !764, !llvm.loop !765

88:                                               ; preds = %64, %142
  %89 = phi i64 [ 0, %64 ], [ %144, %142 ]
  %90 = phi i32 [ 0, %64 ], [ %143, %142 ]
  %91 = load ptr, ptr %54, align 8, !tbaa !420
  %92 = getelementptr inbounds %struct.rtvec_def, ptr %91, i64 0, i32 1, i64 %89
  %93 = load ptr, ptr %92, align 8, !tbaa !404
  %94 = load i32, ptr %93, align 8
  %95 = trunc i32 %94 to i16
  switch i16 %95, label %142 [
    i16 23, label %96
    i16 25, label %119
    i16 24, label %127
    i16 26, label %138
  ], !prof !766

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %98 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !420
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 26
  br i1 %102, label %103, label %109, !prof !767

103:                                              ; preds = %96
  %104 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %99, ptr noundef %0) #25
  %105 = tail call i32 @apply_change_group() #23
  %106 = load ptr, ptr %98, align 8, !tbaa !420
  %107 = tail call fastcc ptr @fold_rtx(ptr noundef %106, ptr noundef %0) #25
  %108 = load ptr, ptr %97, align 8, !tbaa !420
  tail call fastcc void @invalidate(ptr noundef %108, i32 noundef 0) #25
  br label %142

109:                                              ; preds = %96
  %110 = load ptr, ptr %97, align 8, !tbaa !420
  %111 = load ptr, ptr @global_rtl, align 16, !tbaa !404
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %115, !prof !768

113:                                              ; preds = %109
  %114 = icmp eq i32 %101, 44
  br i1 %114, label %142, label %115, !prof !769

115:                                              ; preds = %113, %109
  %116 = add nsw i32 %90, 1
  %117 = sext i32 %90 to i64
  %118 = getelementptr inbounds %struct.set, ptr %59, i64 %117
  store ptr %93, ptr %118, align 16, !tbaa !757
  br label %142

119:                                              ; preds = %88
  %120 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !420
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 43
  br i1 %124, label %125, label %142, !prof !770

125:                                              ; preds = %119
  %126 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %121, ptr noundef %0) #25
  br label %142

127:                                              ; preds = %88
  %128 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !420
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 65535
  %132 = icmp eq i32 %131, 37
  br i1 %132, label %133, label %136, !prof !769

133:                                              ; preds = %127
  %134 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %129) #25
  %135 = icmp ult i32 %134, 53
  br i1 %135, label %142, label %136

136:                                              ; preds = %133, %127
  %137 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %93, ptr noundef %0) #25
  br label %142

138:                                              ; preds = %88
  %139 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %93, ptr noundef %0) #25
  %140 = tail call i32 @apply_change_group() #23
  %141 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %93, ptr noundef %0) #25
  br label %142

142:                                              ; preds = %88, %133, %125, %119, %138, %136, %103, %113, %115
  %143 = phi i32 [ %90, %103 ], [ %90, %113 ], [ %116, %115 ], [ %90, %125 ], [ %90, %119 ], [ %90, %138 ], [ %90, %136 ], [ %90, %133 ], [ %90, %88 ]
  %144 = add nuw nsw i64 %89, 1
  %145 = icmp eq i64 %144, %65
  br i1 %145, label %176, label %88, !prof !764, !llvm.loop !771

146:                                              ; preds = %28
  %147 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !420
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 43
  br i1 %151, label %152, label %253

152:                                              ; preds = %146
  %153 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %148, ptr noundef %0) #25
  br label %253

154:                                              ; preds = %28
  %155 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !420
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 37
  br i1 %159, label %160, label %163, !prof !772

160:                                              ; preds = %154
  %161 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %156) #25
  %162 = icmp ult i32 %161, 53
  br i1 %162, label %169, label %163, !prof !772

163:                                              ; preds = %160, %154
  %164 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %156, ptr noundef %0) #25
  br label %253

165:                                              ; preds = %28
  %166 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %3, ptr noundef %0) #25
  %167 = tail call i32 @apply_change_group() #23
  %168 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %3, ptr noundef %0) #25
  br label %253

169:                                              ; preds = %28, %160
  %170 = load i32, ptr %0, align 8
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 7
  br i1 %172, label %173, label %253, !prof !773

173:                                              ; preds = %169
  %174 = load ptr, ptr %2, align 8, !tbaa !420
  %175 = tail call fastcc ptr @canon_reg(ptr noundef %174, ptr noundef nonnull %0) #25
  br label %253

176:                                              ; preds = %142
  %177 = icmp eq i32 %143, 1
  br i1 %177, label %178, label %208, !prof !563

178:                                              ; preds = %43, %176
  %179 = phi ptr [ %59, %176 ], [ %32, %43 ]
  %180 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !420
  %182 = icmp eq ptr %181, null
  br i1 %182, label %210, label %183, !prof !774

183:                                              ; preds = %178
  %184 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #23
  %185 = icmp eq ptr %184, null
  br i1 %185, label %210, label %186, !prof !775

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !420
  %189 = load ptr, ptr %179, align 16, !tbaa !757
  %190 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1, i32 0, i32 0, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !420
  %192 = tail call i32 @rtx_equal_p(ptr noundef %188, ptr noundef %191) #23
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %201, label %194, !prof !776

194:                                              ; preds = %186
  %195 = load ptr, ptr %179, align 16, !tbaa !757
  %196 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !420
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 40
  br i1 %200, label %201, label %210

201:                                              ; preds = %194, %186
  %202 = load ptr, ptr %187, align 8, !tbaa !420
  %203 = tail call fastcc ptr @canon_reg(ptr noundef %202, ptr noundef nonnull %0) #25
  %204 = tail call i32 @apply_change_group() #23
  %205 = load ptr, ptr %187, align 8, !tbaa !420
  %206 = tail call fastcc ptr @fold_rtx(ptr noundef %205, ptr noundef nonnull %0) #25
  %207 = tail call ptr @copy_rtx(ptr noundef %206) #23
  store ptr %207, ptr %187, align 8, !tbaa !420
  tail call void @df_notes_rescan(ptr noundef nonnull %0) #23
  br label %210

208:                                              ; preds = %176
  %209 = icmp sgt i32 %143, 0
  br i1 %209, label %210, label %253, !prof !777

210:                                              ; preds = %178, %183, %194, %201, %208
  %211 = phi ptr [ null, %208 ], [ null, %178 ], [ null, %183 ], [ null, %194 ], [ %206, %201 ]
  %212 = phi ptr [ %59, %208 ], [ %179, %178 ], [ %179, %183 ], [ %179, %194 ], [ %179, %201 ]
  %213 = phi i32 [ %143, %208 ], [ 1, %178 ], [ 1, %183 ], [ 1, %194 ], [ 1, %201 ]
  %214 = phi i1 [ false, %208 ], [ true, %178 ], [ true, %183 ], [ true, %194 ], [ true, %201 ]
  %215 = zext nneg i32 %213 to i64
  br label %216

216:                                              ; preds = %210, %250
  %217 = phi i64 [ 0, %210 ], [ %251, %250 ]
  %218 = getelementptr inbounds %struct.set, ptr %212, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !757
  %220 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !420
  %222 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !420
  %224 = tail call fastcc ptr @canon_reg(ptr noundef %223, ptr noundef %0) #25
  %225 = load ptr, ptr %218, align 8, !tbaa !757
  %226 = getelementptr inbounds %struct.rtx_def, ptr %225, i64 0, i32 1, i32 0, i32 0, i64 1
  %227 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %226, ptr noundef %224, i8 noundef zeroext 1) #23
  %228 = load i32, ptr %221, align 8
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 120
  br i1 %230, label %231, label %240, !prof !778

231:                                              ; preds = %216
  %232 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !420
  %234 = tail call fastcc ptr @canon_reg(ptr noundef %233, ptr noundef %0) #25
  %235 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %232, ptr noundef %234, i8 noundef zeroext 1) #23
  %236 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 2
  %237 = load ptr, ptr %236, align 8, !tbaa !420
  %238 = tail call fastcc ptr @canon_reg(ptr noundef %237, ptr noundef %0) #25
  %239 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %236, ptr noundef %238, i8 noundef zeroext 1) #23
  br label %240

240:                                              ; preds = %231, %216
  br label %241

241:                                              ; preds = %240, %245
  %242 = phi ptr [ %247, %245 ], [ %221, %240 ]
  %243 = load i32, ptr %242, align 8
  %244 = trunc i32 %243 to i16
  switch i16 %244, label %250 [
    i16 39, label %245
    i16 120, label %245
    i16 40, label %245
    i16 43, label %248
  ], !prof !779

245:                                              ; preds = %241, %241, %241
  %246 = getelementptr inbounds %struct.rtx_def, ptr %242, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !420
  br label %241, !llvm.loop !780

248:                                              ; preds = %241
  %249 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %242, ptr noundef %0) #25
  br label %250

250:                                              ; preds = %241, %248
  %251 = add nuw nsw i64 %217, 1
  %252 = icmp eq i64 %251, %215
  br i1 %252, label %257, label %216, !prof !781, !llvm.loop !782

253:                                              ; preds = %31, %53, %63, %163, %169, %173, %165, %146, %152, %46, %208
  %254 = phi ptr [ %59, %208 ], [ null, %163 ], [ null, %169 ], [ null, %173 ], [ null, %165 ], [ null, %146 ], [ null, %152 ], [ %32, %46 ], [ %59, %63 ], [ %59, %53 ], [ %32, %31 ]
  %255 = phi i32 [ %143, %208 ], [ 0, %163 ], [ 0, %169 ], [ 0, %173 ], [ 0, %165 ], [ 0, %146 ], [ 0, %152 ], [ 0, %46 ], [ 0, %63 ], [ 0, %53 ], [ 0, %31 ]
  %256 = tail call i32 @apply_change_group() #23
  br label %1903

257:                                              ; preds = %250
  %258 = tail call i32 @apply_change_group() #23
  br label %259

259:                                              ; preds = %257, %1624
  %260 = phi ptr [ %0, %257 ], [ %1627, %1624 ]
  %261 = phi i32 [ 0, %257 ], [ %1628, %1624 ]
  %262 = phi ptr [ %211, %257 ], [ %1626, %1624 ]
  %263 = phi ptr [ null, %257 ], [ %1625, %1624 ]
  %264 = phi i32 [ 0, %257 ], [ %339, %1624 ]
  %265 = phi i32 [ 0, %257 ], [ %338, %1624 ]
  %266 = phi i32 [ 0, %257 ], [ %520, %1624 ]
  %267 = zext nneg i32 %261 to i64
  %268 = getelementptr inbounds %struct.set, ptr %212, i64 %267
  %269 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 1
  %270 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 3
  %271 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 7
  %272 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 6
  br label %273

273:                                              ; preds = %259, %1630
  %274 = phi ptr [ null, %1630 ], [ %262, %259 ]
  %275 = phi ptr [ null, %1630 ], [ %263, %259 ]
  %276 = phi i32 [ 0, %1630 ], [ %264, %259 ]
  %277 = phi i32 [ 0, %1630 ], [ %265, %259 ]
  %278 = phi i32 [ 0, %1630 ], [ %266, %259 ]
  %279 = load ptr, ptr %268, align 8, !tbaa !757
  %280 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !420
  %282 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1, i32 0, i32 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !420
  %284 = load i32, ptr %283, align 8
  %285 = lshr i32 %284, 16
  %286 = and i32 %285, 255
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %292, !prof !783

288:                                              ; preds = %273
  %289 = load i32, ptr %281, align 8
  %290 = lshr i32 %289, 16
  %291 = and i32 %290, 255
  br label %292

292:                                              ; preds = %273, %288
  %293 = phi i32 [ %291, %288 ], [ %286, %273 ]
  %294 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 8
  %295 = trunc i32 %293 to i8
  store i8 %295, ptr %294, align 2
  %296 = icmp eq ptr %274, null
  br i1 %296, label %336, label %297, !prof !784

297:                                              ; preds = %292
  %298 = load i32, ptr %281, align 8
  %299 = and i32 %298, 65535
  %300 = icmp eq i32 %299, 40
  br i1 %300, label %301, label %309, !prof !785

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.rtx_def, ptr %281, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !420
  %304 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !420
  %306 = load i32, ptr %305, align 8
  %307 = lshr i32 %306, 16
  %308 = and i32 %307, 255
  br label %309

309:                                              ; preds = %301, %297
  %310 = phi i32 [ %308, %301 ], [ %293, %297 ]
  store i32 0, ptr @do_not_record, align 4, !tbaa !416
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !416
  %311 = load i32, ptr %274, align 8
  %312 = and i32 %311, 65535
  %313 = icmp eq i32 %312, 37
  br i1 %313, label %314, label %322, !prof !785

314:                                              ; preds = %309
  %315 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %274) #25
  %316 = icmp ugt i32 %315, 52
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %315) #25
  %319 = getelementptr inbounds %struct.cse_reg_info, ptr %318, i64 0, i32 1
  %320 = load i32, ptr %319, align 4, !tbaa !425
  %321 = add i32 %320, 4736
  br label %324

322:                                              ; preds = %314, %309
  %323 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %274, i32 noundef %310) #25
  br label %324

324:                                              ; preds = %322, %317
  %325 = phi i32 [ %321, %317 ], [ %323, %322 ]
  %326 = and i32 %325, 31
  %327 = load i32, ptr @do_not_record, align 4, !tbaa !416
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %332, !prof !786

329:                                              ; preds = %324
  %330 = tail call fastcc ptr @lookup(ptr noundef nonnull %274, i32 noundef %326, i32 noundef %310) #25
  %331 = load i32, ptr @do_not_record, align 4, !tbaa !416
  br label %332

332:                                              ; preds = %329, %324
  %333 = phi i32 [ %327, %324 ], [ %331, %329 ]
  %334 = phi ptr [ %275, %324 ], [ %330, %329 ]
  %335 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !416
  br label %336

336:                                              ; preds = %332, %292
  %337 = phi i32 [ %326, %332 ], [ %278, %292 ]
  %338 = phi i32 [ %335, %332 ], [ %277, %292 ]
  %339 = phi i32 [ %333, %332 ], [ %276, %292 ]
  %340 = phi ptr [ %334, %332 ], [ %275, %292 ]
  %341 = load i32, ptr %281, align 8
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 40
  %344 = select i1 %343, ptr null, ptr %274, !prof !778
  %345 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %283, ptr noundef %260) #25
  store i32 0, ptr @do_not_record, align 4, !tbaa !416
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !416
  store ptr %283, ptr %269, align 8, !tbaa !787
  %346 = load i32, ptr %283, align 8
  %347 = and i32 %346, 65535
  %348 = icmp eq i32 %347, 37
  br i1 %348, label %349, label %357, !prof !788

349:                                              ; preds = %336
  %350 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %283) #25
  %351 = icmp ugt i32 %350, 52
  br i1 %351, label %352, label %357, !prof !789

352:                                              ; preds = %349
  %353 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %350) #25
  %354 = getelementptr inbounds %struct.cse_reg_info, ptr %353, i64 0, i32 1
  %355 = load i32, ptr %354, align 4, !tbaa !425
  %356 = add i32 %355, 4736
  br label %359

357:                                              ; preds = %349, %336
  %358 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %283, i32 noundef %293) #25
  br label %359

359:                                              ; preds = %357, %352
  %360 = phi i32 [ %356, %352 ], [ %358, %357 ]
  %361 = and i32 %360, 31
  store i32 %361, ptr %270, align 8, !tbaa !790
  %362 = load i32, ptr @do_not_record, align 4, !tbaa !416
  %363 = trunc i32 %362 to i8
  store i8 %363, ptr %271, align 1, !tbaa !791
  %364 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !416
  %365 = trunc i32 %364 to i8
  store i8 %365, ptr %272, align 8, !tbaa !792
  %366 = load i32, ptr %283, align 8
  %367 = and i32 %366, 65535
  %368 = icmp eq i32 %367, 43
  br i1 %368, label %369, label %380, !prof !793

369:                                              ; preds = %359
  %370 = tail call ptr @find_reg_note(ptr noundef %260, i32 noundef 3, ptr noundef null) #23
  %371 = icmp eq ptr %370, null
  br i1 %371, label %380, label %372, !prof !794

372:                                              ; preds = %369
  %373 = load i32, ptr %281, align 8
  %374 = and i32 %373, 65535
  %375 = icmp eq i32 %374, 37
  br i1 %375, label %376, label %380, !prof !795

376:                                              ; preds = %372
  %377 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %281) #25
  %378 = icmp ugt i32 %377, 52
  br i1 %378, label %379, label %380, !prof !795

379:                                              ; preds = %376
  store i8 1, ptr %271, align 1, !tbaa !791
  br label %423

380:                                              ; preds = %376, %372, %369, %359
  %381 = load i8, ptr %271, align 1, !tbaa !791
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %423, !prof !796

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 2
  %385 = load i32, ptr %270, align 8, !tbaa !790
  %386 = tail call fastcc ptr @lookup(ptr noundef nonnull %283, i32 noundef %385, i32 noundef %293) #25
  store ptr %386, ptr %384, align 8, !tbaa !797
  %387 = icmp ne ptr %386, null
  %388 = icmp ne ptr %344, null
  %389 = select i1 %387, i1 %388, i1 false
  %390 = icmp eq ptr %340, null
  br i1 %389, label %391, label %422, !prof !798

391:                                              ; preds = %383
  br i1 %390, label %428, label %392, !prof !799

392:                                              ; preds = %391
  %393 = getelementptr inbounds %struct.table_elt, ptr %386, i64 0, i32 6
  %394 = load ptr, ptr %393, align 8, !tbaa !800
  %395 = getelementptr inbounds %struct.table_elt, ptr %340, i64 0, i32 6
  %396 = load ptr, ptr %395, align 8, !tbaa !800
  %397 = icmp eq ptr %394, %396
  br i1 %397, label %428, label %398, !prof !801

398:                                              ; preds = %392
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %386, ptr noundef nonnull %340) #25
  %399 = load i32, ptr %274, align 8
  %400 = and i32 %399, 65535
  %401 = icmp eq i32 %400, 37
  br i1 %401, label %402, label %410

402:                                              ; preds = %398
  %403 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %274) #25
  %404 = icmp ugt i32 %403, 52
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  %406 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %403) #25
  %407 = getelementptr inbounds %struct.cse_reg_info, ptr %406, i64 0, i32 1
  %408 = load i32, ptr %407, align 4, !tbaa !425
  %409 = add i32 %408, 4736
  br label %415

410:                                              ; preds = %402, %398
  %411 = getelementptr inbounds %struct.table_elt, ptr %386, i64 0, i32 10
  %412 = load i8, ptr %411, align 8
  %413 = zext i8 %412 to i32
  %414 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %274, i32 noundef %413) #25
  br label %415

415:                                              ; preds = %410, %405
  %416 = phi i32 [ %409, %405 ], [ %414, %410 ]
  %417 = and i32 %416, 31
  %418 = getelementptr inbounds %struct.table_elt, ptr %386, i64 0, i32 10
  %419 = load i8, ptr %418, align 8
  %420 = zext i8 %419 to i32
  %421 = tail call fastcc ptr @lookup(ptr noundef nonnull %274, i32 noundef %417, i32 noundef %420) #25
  br label %428

422:                                              ; preds = %383
  br i1 %390, label %426, label %428, !prof !802

423:                                              ; preds = %379, %380
  %424 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 2
  store ptr null, ptr %424, align 8, !tbaa !797
  %425 = icmp eq ptr %340, null
  br i1 %425, label %449, label %428, !prof !802

426:                                              ; preds = %422
  %427 = icmp eq ptr %386, null
  br i1 %427, label %449, label %428, !prof !803

428:                                              ; preds = %423, %422, %391, %392, %415, %426
  %429 = phi ptr [ null, %426 ], [ null, %391 ], [ %340, %392 ], [ %421, %415 ], [ %340, %422 ], [ %340, %423 ]
  %430 = phi i32 [ %337, %426 ], [ %337, %391 ], [ %337, %392 ], [ %417, %415 ], [ %337, %422 ], [ %337, %423 ]
  %431 = phi ptr [ %386, %426 ], [ %386, %391 ], [ %386, %392 ], [ %386, %415 ], [ %340, %422 ], [ %340, %423 ]
  %432 = phi ptr [ %344, %426 ], [ %274, %391 ], [ null, %392 ], [ null, %415 ], [ %344, %422 ], [ %344, %423 ]
  %433 = phi ptr [ %384, %426 ], [ %384, %391 ], [ %384, %392 ], [ %384, %415 ], [ %384, %422 ], [ %424, %423 ]
  %434 = getelementptr inbounds %struct.table_elt, ptr %431, i64 0, i32 6
  %435 = load ptr, ptr %434, align 8, !tbaa !404
  %436 = icmp eq ptr %435, null
  br i1 %436, label %449, label %437, !prof !804

437:                                              ; preds = %428, %442
  %438 = phi ptr [ %444, %442 ], [ %435, %428 ]
  %439 = getelementptr inbounds %struct.table_elt, ptr %438, i64 0, i32 12
  %440 = load i8, ptr %439, align 2, !tbaa !805
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %442, label %446, !prof !806

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct.table_elt, ptr %438, i64 0, i32 4
  %444 = load ptr, ptr %443, align 8, !tbaa !404
  %445 = icmp eq ptr %444, null
  br i1 %445, label %449, label %437, !prof !807, !llvm.loop !808

446:                                              ; preds = %437
  %447 = load ptr, ptr %438, align 8, !tbaa !408
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %486, !prof !572

449:                                              ; preds = %442, %423, %428, %426, %446
  %450 = phi ptr [ %431, %446 ], [ null, %426 ], [ null, %428 ], [ null, %423 ], [ null, %442 ]
  %451 = phi ptr [ %433, %446 ], [ %384, %426 ], [ %433, %428 ], [ %424, %423 ], [ %433, %442 ]
  %452 = phi ptr [ %432, %446 ], [ %344, %426 ], [ %432, %428 ], [ %344, %423 ], [ %432, %442 ]
  %453 = phi ptr [ %431, %446 ], [ null, %426 ], [ %431, %428 ], [ null, %423 ], [ %431, %442 ]
  %454 = phi i32 [ %430, %446 ], [ %337, %426 ], [ %430, %428 ], [ %337, %423 ], [ %430, %442 ]
  %455 = phi ptr [ %429, %446 ], [ null, %426 ], [ %429, %428 ], [ null, %423 ], [ %429, %442 ]
  %456 = phi i1 [ true, %446 ], [ false, %426 ], [ true, %428 ], [ false, %423 ], [ true, %442 ]
  %457 = load i32, ptr %345, align 8
  %458 = and i32 %457, 65535
  %459 = zext nneg i32 %458 to i64
  %460 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %459
  %461 = load i32, ptr %460, align 4, !tbaa !416
  %462 = icmp eq i32 %461, 9
  br i1 %462, label %486, label %463, !prof !809

463:                                              ; preds = %449
  %464 = icmp eq i32 %458, 50
  br i1 %464, label %465, label %477, !prof !810

465:                                              ; preds = %463
  %466 = getelementptr inbounds %struct.rtx_def, ptr %345, i64 0, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !420
  %468 = load i32, ptr %467, align 8
  %469 = and i32 %468, 65535
  %470 = icmp eq i32 %469, 44
  br i1 %470, label %471, label %477, !prof !811

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.rtx_def, ptr %345, i64 0, i32 1, i32 0, i32 0, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !420
  %474 = load i32, ptr %473, align 8
  %475 = and i32 %474, 65535
  %476 = icmp eq i32 %475, 44
  br i1 %476, label %486, label %477

477:                                              ; preds = %471, %465, %463
  %478 = icmp eq ptr %452, null
  br i1 %478, label %515, label %479, !prof !812

479:                                              ; preds = %477
  %480 = load i32, ptr %452, align 8
  %481 = and i32 %480, 65535
  %482 = zext nneg i32 %481 to i64
  %483 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !416
  %485 = icmp eq i32 %484, 9
  br i1 %485, label %486, label %515, !prof !813

486:                                              ; preds = %479, %446, %449, %471
  %487 = phi ptr [ %451, %471 ], [ %451, %449 ], [ %433, %446 ], [ %451, %479 ]
  %488 = phi ptr [ %452, %471 ], [ %452, %449 ], [ %432, %446 ], [ %452, %479 ]
  %489 = phi ptr [ %453, %471 ], [ %453, %449 ], [ %431, %446 ], [ %453, %479 ]
  %490 = phi i32 [ %454, %471 ], [ %454, %449 ], [ %430, %446 ], [ %454, %479 ]
  %491 = phi ptr [ %455, %471 ], [ %455, %449 ], [ %429, %446 ], [ %455, %479 ]
  %492 = phi i1 [ %456, %471 ], [ %456, %449 ], [ true, %446 ], [ %456, %479 ]
  %493 = phi ptr [ %453, %471 ], [ %453, %449 ], [ %431, %446 ], [ %455, %479 ]
  %494 = phi ptr [ %345, %471 ], [ %345, %449 ], [ %447, %446 ], [ %452, %479 ]
  %495 = icmp eq ptr %493, null
  br i1 %495, label %496, label %515, !prof !814

496:                                              ; preds = %486
  %497 = load i32, ptr %494, align 8
  %498 = and i32 %497, 65535
  %499 = icmp eq i32 %498, 37
  br i1 %499, label %500, label %508, !prof !815

500:                                              ; preds = %496
  %501 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %494) #25
  %502 = icmp ugt i32 %501, 52
  br i1 %502, label %503, label %508

503:                                              ; preds = %500
  %504 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %501) #25
  %505 = getelementptr inbounds %struct.cse_reg_info, ptr %504, i64 0, i32 1
  %506 = load i32, ptr %505, align 4, !tbaa !425
  %507 = add i32 %506, 4736
  br label %510

508:                                              ; preds = %500, %496
  %509 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %494, i32 noundef %293) #25
  br label %510

510:                                              ; preds = %508, %503
  %511 = phi i32 [ %507, %503 ], [ %509, %508 ]
  %512 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 10
  %513 = and i32 %511, 31
  store i32 %513, ptr %512, align 8, !tbaa !816
  %514 = tail call fastcc ptr @lookup(ptr noundef nonnull %494, i32 noundef %513, i32 noundef %293) #25
  br label %515

515:                                              ; preds = %477, %479, %510, %486
  %516 = phi i1 [ true, %510 ], [ true, %486 ], [ false, %479 ], [ false, %477 ]
  %517 = phi ptr [ %494, %510 ], [ %494, %486 ], [ null, %479 ], [ null, %477 ]
  %518 = phi i1 [ %492, %510 ], [ %492, %486 ], [ %456, %479 ], [ %456, %477 ]
  %519 = phi ptr [ %491, %510 ], [ %491, %486 ], [ %455, %479 ], [ %455, %477 ]
  %520 = phi i32 [ %490, %510 ], [ %490, %486 ], [ %454, %479 ], [ %454, %477 ]
  %521 = phi ptr [ %489, %510 ], [ %489, %486 ], [ %453, %479 ], [ %453, %477 ]
  %522 = phi ptr [ %488, %510 ], [ %488, %486 ], [ %452, %479 ], [ null, %477 ]
  %523 = phi ptr [ %487, %510 ], [ %487, %486 ], [ %451, %479 ], [ %451, %477 ]
  %524 = phi ptr [ %514, %510 ], [ %493, %486 ], [ %450, %479 ], [ %450, %477 ]
  %525 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 9
  %526 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 11
  store ptr %517, ptr %525, align 8, !tbaa !817
  store ptr %524, ptr %526, align 8, !tbaa !818
  %527 = icmp ne ptr %524, null
  %528 = and i1 %518, %527
  br i1 %528, label %529, label %536, !prof !819

529:                                              ; preds = %515
  %530 = getelementptr inbounds %struct.table_elt, ptr %524, i64 0, i32 6
  %531 = load ptr, ptr %530, align 8, !tbaa !800
  %532 = getelementptr inbounds %struct.table_elt, ptr %521, i64 0, i32 6
  %533 = load ptr, ptr %532, align 8, !tbaa !800
  %534 = icmp eq ptr %531, %533
  br i1 %534, label %540, label %535, !prof !820

535:                                              ; preds = %529
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %521, ptr noundef nonnull %524) #25
  br label %540

536:                                              ; preds = %515
  %537 = icmp eq ptr %521, null
  %538 = and i1 %537, %527
  br i1 %538, label %539, label %540, !prof !821

539:                                              ; preds = %536
  br label %540

540:                                              ; preds = %529, %536, %539, %535
  %541 = phi ptr [ %521, %535 ], [ %524, %539 ], [ %521, %536 ], [ %521, %529 ]
  br i1 %516, label %542, label %654, !prof !822

542:                                              ; preds = %540
  %543 = load i32, ptr %517, align 8
  %544 = and i32 %543, 65535
  %545 = icmp eq i32 %544, 35
  br i1 %545, label %551, label %546, !prof !823

546:                                              ; preds = %542
  br i1 %527, label %547, label %586, !prof !824

547:                                              ; preds = %546
  %548 = getelementptr inbounds %struct.table_elt, ptr %524, i64 0, i32 7
  %549 = load ptr, ptr %548, align 8, !tbaa !825
  %550 = icmp eq ptr %549, null
  br i1 %550, label %586, label %551, !prof !826

551:                                              ; preds = %547, %542
  %552 = tail call fastcc ptr @use_related_value(ptr noundef nonnull %517, ptr noundef %524) #25
  %553 = icmp eq ptr %552, null
  br i1 %553, label %586, label %554, !prof !827

554:                                              ; preds = %551
  %555 = load i32, ptr %552, align 8
  %556 = and i32 %555, 65535
  %557 = icmp eq i32 %556, 37
  br i1 %557, label %558, label %566, !prof !828

558:                                              ; preds = %554
  %559 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %552) #25
  %560 = icmp ugt i32 %559, 52
  br i1 %560, label %561, label %566

561:                                              ; preds = %558
  %562 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %559) #25
  %563 = getelementptr inbounds %struct.cse_reg_info, ptr %562, i64 0, i32 1
  %564 = load i32, ptr %563, align 4, !tbaa !425
  %565 = add i32 %564, 4736
  br label %568

566:                                              ; preds = %558, %554
  %567 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %552, i32 noundef %293) #25
  br label %568

568:                                              ; preds = %566, %561
  %569 = phi i32 [ %565, %561 ], [ %567, %566 ]
  %570 = and i32 %569, 31
  %571 = tail call fastcc ptr @lookup(ptr noundef nonnull %552, i32 noundef %570, i32 noundef %293) #25
  %572 = icmp ne ptr %571, null
  %573 = icmp ne ptr %541, null
  %574 = and i1 %573, %572
  br i1 %574, label %575, label %582

575:                                              ; preds = %568
  %576 = getelementptr inbounds %struct.table_elt, ptr %541, i64 0, i32 6
  %577 = load ptr, ptr %576, align 8, !tbaa !800
  %578 = getelementptr inbounds %struct.table_elt, ptr %571, i64 0, i32 6
  %579 = load ptr, ptr %578, align 8, !tbaa !800
  %580 = icmp eq ptr %577, %579
  br i1 %580, label %586, label %581

581:                                              ; preds = %575
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %541, ptr noundef nonnull %571) #25
  br label %586

582:                                              ; preds = %568
  br i1 %572, label %583, label %742, !prof !828

583:                                              ; preds = %582
  %584 = icmp eq ptr %541, null
  %585 = select i1 %584, ptr %571, ptr %541
  br label %742

586:                                              ; preds = %546, %547, %551, %575, %581
  %587 = load i32, ptr %517, align 8
  %588 = and i32 %587, 65535
  %589 = icmp eq i32 %588, 30
  br i1 %589, label %590, label %654, !prof !829

590:                                              ; preds = %586
  %591 = zext nneg i32 %293 to i64
  %592 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %591
  %593 = load i8, ptr %592, align 1, !tbaa !420
  %594 = icmp eq i8 %593, 2
  br i1 %594, label %595, label %654, !prof !830

595:                                              ; preds = %590
  %596 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %591
  %597 = load i8, ptr %596, align 1, !tbaa !420
  %598 = icmp ult i8 %597, 4
  br i1 %598, label %599, label %654, !prof !831

599:                                              ; preds = %595
  %600 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %591
  %601 = load i8, ptr %600, align 1, !tbaa !420
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %654, label %603

603:                                              ; preds = %599, %649
  %604 = phi i8 [ %652, %649 ], [ %601, %599 ]
  %605 = phi ptr [ %650, %649 ], [ null, %599 ]
  %606 = zext i8 %604 to i32
  %607 = zext i8 %604 to i64
  %608 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %607
  %609 = load i8, ptr %608, align 1, !tbaa !420
  %610 = icmp ult i8 %609, 5
  %611 = icmp eq ptr %605, null
  %612 = select i1 %610, i1 %611, i1 false
  br i1 %612, label %613, label %654

613:                                              ; preds = %603
  %614 = load i32, ptr %517, align 8
  %615 = and i32 %614, 65535
  %616 = icmp eq i32 %615, 37
  br i1 %616, label %617, label %625

617:                                              ; preds = %613
  %618 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %517) #25
  %619 = icmp ugt i32 %618, 52
  br i1 %619, label %620, label %625

620:                                              ; preds = %617
  %621 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %618) #25
  %622 = getelementptr inbounds %struct.cse_reg_info, ptr %621, i64 0, i32 1
  %623 = load i32, ptr %622, align 4, !tbaa !425
  %624 = add i32 %623, 4736
  br label %627

625:                                              ; preds = %617, %613
  %626 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %517, i32 noundef %606) #25
  br label %627

627:                                              ; preds = %625, %620
  %628 = phi i32 [ %624, %620 ], [ %626, %625 ]
  %629 = and i32 %628, 31
  %630 = tail call fastcc ptr @lookup(ptr noundef nonnull %517, i32 noundef %629, i32 noundef %606) #25
  %631 = icmp eq ptr %630, null
  br i1 %631, label %649, label %632

632:                                              ; preds = %627
  %633 = getelementptr inbounds %struct.table_elt, ptr %630, i64 0, i32 6
  %634 = load ptr, ptr %633, align 8, !tbaa !404
  %635 = icmp eq ptr %634, null
  br i1 %635, label %649, label %640

636:                                              ; preds = %640
  %637 = getelementptr inbounds %struct.table_elt, ptr %641, i64 0, i32 4
  %638 = load ptr, ptr %637, align 8, !tbaa !404
  %639 = icmp eq ptr %638, null
  br i1 %639, label %649, label %640, !llvm.loop !832

640:                                              ; preds = %632, %636
  %641 = phi ptr [ %638, %636 ], [ %634, %632 ]
  %642 = load ptr, ptr %641, align 8, !tbaa !408
  %643 = load i32, ptr %642, align 8
  %644 = and i32 %643, 65535
  %645 = icmp eq i32 %644, 37
  br i1 %645, label %646, label %636

646:                                              ; preds = %640
  %647 = load ptr, ptr @rtl_hooks, align 8, !tbaa !833
  %648 = tail call ptr %647(i32 noundef %293, ptr noundef nonnull %642) #23
  br label %649

649:                                              ; preds = %636, %632, %646, %627
  %650 = phi ptr [ null, %627 ], [ %648, %646 ], [ null, %632 ], [ null, %636 ]
  %651 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %607
  %652 = load i8, ptr %651, align 1, !tbaa !420
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %654, label %603, !llvm.loop !835

654:                                              ; preds = %603, %649, %599, %540, %595, %590, %586
  %655 = phi ptr [ null, %595 ], [ null, %590 ], [ null, %586 ], [ null, %540 ], [ null, %599 ], [ %605, %603 ], [ %650, %649 ]
  %656 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !416
  %657 = icmp eq i32 %656, 0
  %658 = icmp ne ptr %655, null
  %659 = select i1 %657, i1 true, i1 %658
  br i1 %659, label %742, label %660, !prof !836

660:                                              ; preds = %654
  %661 = load i32, ptr %283, align 8
  %662 = and i32 %661, 65535
  %663 = icmp eq i32 %662, 61
  br i1 %663, label %664, label %742, !prof !837

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.rtx_def, ptr %283, i64 0, i32 1
  %666 = getelementptr inbounds %struct.rtx_def, ptr %283, i64 0, i32 1, i32 0, i32 0, i64 1
  %667 = load ptr, ptr %666, align 8, !tbaa !420
  %668 = load i32, ptr %667, align 8
  %669 = and i32 %668, 65535
  %670 = icmp eq i32 %669, 30
  br i1 %670, label %671, label %742, !prof !838

671:                                              ; preds = %664
  %672 = zext nneg i32 %293 to i64
  %673 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %672
  %674 = load i8, ptr %673, align 1, !tbaa !420
  %675 = icmp ult i8 %674, 4
  br i1 %675, label %676, label %742, !prof !839

676:                                              ; preds = %671
  %677 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef 0, ptr noundef null, ptr noundef nonnull %667) #23
  %678 = getelementptr inbounds %struct.rtx_def, ptr %677, i64 0, i32 1
  %679 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %672
  %680 = load i8, ptr %679, align 1, !tbaa !420
  %681 = zext i8 %680 to i64
  %682 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %681
  %683 = load i8, ptr %682, align 1, !tbaa !420
  %684 = icmp ult i8 %683, 5
  br i1 %684, label %685, label %742

685:                                              ; preds = %676, %735
  %686 = phi i64 [ %738, %735 ], [ %681, %676 ]
  %687 = phi i8 [ %737, %735 ], [ %680, %676 ]
  %688 = zext i8 %687 to i32
  %689 = load ptr, ptr @rtl_hooks, align 8, !tbaa !833
  %690 = load ptr, ptr %665, align 8, !tbaa !420
  %691 = tail call ptr %689(i32 noundef %688, ptr noundef %690) #23
  %692 = icmp eq ptr %691, null
  br i1 %692, label %735, label %693

693:                                              ; preds = %685
  %694 = load i32, ptr %677, align 8
  %695 = shl nuw nsw i32 %688, 16
  %696 = and i32 %694, -16711681
  %697 = or disjoint i32 %696, %695
  store i32 %697, ptr %677, align 8
  store ptr %691, ptr %678, align 8, !tbaa !420
  %698 = and i32 %694, 65535
  %699 = icmp eq i32 %698, 37
  br i1 %699, label %700, label %708

700:                                              ; preds = %693
  %701 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %677) #25
  %702 = icmp ugt i32 %701, 52
  br i1 %702, label %703, label %708

703:                                              ; preds = %700
  %704 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %701) #25
  %705 = getelementptr inbounds %struct.cse_reg_info, ptr %704, i64 0, i32 1
  %706 = load i32, ptr %705, align 4, !tbaa !425
  %707 = add i32 %706, 4736
  br label %710

708:                                              ; preds = %700, %693
  %709 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %677, i32 noundef %688) #25
  br label %710

710:                                              ; preds = %708, %703
  %711 = phi i32 [ %707, %703 ], [ %709, %708 ]
  %712 = and i32 %711, 31
  %713 = tail call fastcc ptr @lookup(ptr noundef nonnull %677, i32 noundef %712, i32 noundef %688) #25
  %714 = icmp eq ptr %713, null
  br i1 %714, label %735, label %715

715:                                              ; preds = %710
  %716 = getelementptr inbounds %struct.table_elt, ptr %713, i64 0, i32 6
  %717 = load ptr, ptr %716, align 8, !tbaa !404
  %718 = icmp eq ptr %717, null
  br i1 %718, label %732, label %723

719:                                              ; preds = %723
  %720 = getelementptr inbounds %struct.table_elt, ptr %724, i64 0, i32 4
  %721 = load ptr, ptr %720, align 8, !tbaa !404
  %722 = icmp eq ptr %721, null
  br i1 %722, label %732, label %723, !llvm.loop !840

723:                                              ; preds = %715, %719
  %724 = phi ptr [ %721, %719 ], [ %717, %715 ]
  %725 = load ptr, ptr %724, align 8, !tbaa !408
  %726 = load i32, ptr %725, align 8
  %727 = and i32 %726, 65535
  %728 = icmp eq i32 %727, 37
  br i1 %728, label %729, label %719

729:                                              ; preds = %723
  %730 = load ptr, ptr @rtl_hooks, align 8, !tbaa !833
  %731 = tail call ptr %730(i32 noundef %293, ptr noundef nonnull %725) #23
  br label %732

732:                                              ; preds = %719, %715, %729
  %733 = phi ptr [ %731, %729 ], [ null, %715 ], [ null, %719 ]
  %734 = icmp eq ptr %733, null
  br i1 %734, label %735, label %742

735:                                              ; preds = %732, %685, %710
  %736 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %686
  %737 = load i8, ptr %736, align 1, !tbaa !420
  %738 = zext i8 %737 to i64
  %739 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %738
  %740 = load i8, ptr %739, align 1, !tbaa !420
  %741 = icmp ult i8 %740, 5
  br i1 %741, label %685, label %742, !llvm.loop !841

742:                                              ; preds = %735, %732, %676, %582, %583, %671, %664, %660, %654
  %743 = phi ptr [ %541, %654 ], [ %541, %671 ], [ %541, %664 ], [ %541, %660 ], [ %541, %582 ], [ %585, %583 ], [ %541, %676 ], [ %541, %732 ], [ %541, %735 ]
  %744 = phi ptr [ %655, %654 ], [ null, %671 ], [ null, %664 ], [ null, %660 ], [ %552, %582 ], [ %552, %583 ], [ null, %676 ], [ null, %735 ], [ %733, %732 ]
  %745 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !842
  %746 = icmp eq i64 %745, 0
  br i1 %746, label %758, label %747, !prof !854

747:                                              ; preds = %742
  %748 = icmp eq ptr %744, null
  %749 = and i1 %516, %748
  br i1 %749, label %750, label %758

750:                                              ; preds = %747
  %751 = load i32, ptr %517, align 8
  %752 = and i32 %751, 65535
  %753 = icmp eq i32 %752, 30
  br i1 %753, label %754, label %758

754:                                              ; preds = %750
  %755 = tail call fastcc ptr @try_const_anchors(ptr noundef nonnull %517, i32 noundef %293) #25
  %756 = icmp ne ptr %755, null
  %757 = zext i1 %756 to i32
  br label %758

758:                                              ; preds = %754, %750, %747, %742
  %759 = phi i32 [ %757, %754 ], [ 0, %750 ], [ 0, %747 ], [ 0, %742 ]
  %760 = phi ptr [ %755, %754 ], [ null, %750 ], [ %744, %747 ], [ %744, %742 ]
  %761 = icmp eq ptr %283, %345
  %762 = select i1 %761, ptr null, ptr %345, !prof !855
  %763 = icmp eq ptr %743, null
  br i1 %763, label %884, label %764, !prof !856

764:                                              ; preds = %758
  %765 = getelementptr inbounds %struct.table_elt, ptr %743, i64 0, i32 6
  %766 = load ptr, ptr %765, align 8, !tbaa !800
  %767 = icmp eq ptr %766, null
  br i1 %767, label %884, label %768, !prof !572

768:                                              ; preds = %764, %876
  %769 = phi ptr [ %880, %876 ], [ %283, %764 ]
  %770 = phi ptr [ %879, %876 ], [ %762, %764 ]
  %771 = phi ptr [ %882, %876 ], [ %766, %764 ]
  %772 = phi ptr [ %878, %876 ], [ %522, %764 ]
  %773 = phi ptr [ %877, %876 ], [ %760, %764 ]
  %774 = load ptr, ptr %771, align 8, !tbaa !408
  %775 = load i32, ptr %774, align 8
  %776 = and i32 %775, 65535
  %777 = icmp eq i32 %776, 37
  br i1 %777, label %820, label %778, !prof !857

778:                                              ; preds = %768
  %779 = tail call i32 @exp_equiv_p(ptr noundef nonnull %774, ptr noundef nonnull %774, i32 noundef 1, i8 noundef zeroext 0) #25, !range !481
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %876, label %781, !prof !858

781:                                              ; preds = %778
  %782 = icmp eq i32 %776, 39
  br i1 %782, label %783, label %820, !prof !859

783:                                              ; preds = %781
  %784 = load ptr, ptr %771, align 8, !tbaa !408
  %785 = load i32, ptr %784, align 8
  %786 = lshr i32 %785, 16
  %787 = and i32 %786, 255
  %788 = zext nneg i32 %787 to i64
  %789 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %788
  %790 = load i8, ptr %789, align 1, !tbaa !420
  %791 = getelementptr inbounds %struct.rtx_def, ptr %784, i64 0, i32 1
  %792 = load ptr, ptr %791, align 8, !tbaa !420
  %793 = load i32, ptr %792, align 8
  %794 = lshr i32 %793, 16
  %795 = and i32 %794, 255
  %796 = zext nneg i32 %795 to i64
  %797 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %796
  %798 = load i8, ptr %797, align 1, !tbaa !420
  %799 = icmp ugt i8 %790, %798
  br i1 %799, label %800, label %820

800:                                              ; preds = %783
  %801 = icmp eq ptr %769, null
  br i1 %801, label %876, label %802

802:                                              ; preds = %800
  %803 = load i32, ptr %769, align 8
  %804 = and i32 %803, 65535
  %805 = icmp eq i32 %804, 39
  br i1 %805, label %806, label %876

806:                                              ; preds = %802
  %807 = lshr i32 %803, 16
  %808 = and i32 %807, 255
  %809 = icmp eq i32 %808, %787
  br i1 %809, label %810, label %876

810:                                              ; preds = %806
  %811 = getelementptr inbounds %struct.rtx_def, ptr %769, i64 0, i32 1
  %812 = load ptr, ptr %811, align 8, !tbaa !420
  %813 = load i32, ptr %812, align 8
  %814 = lshr i32 %813, 16
  %815 = and i32 %814, 255
  %816 = zext nneg i32 %815 to i64
  %817 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %816
  %818 = load i8, ptr %817, align 1, !tbaa !420
  %819 = icmp ult i8 %818, %798
  br i1 %819, label %825, label %876

820:                                              ; preds = %768, %783, %781
  %821 = icmp eq ptr %769, null
  br i1 %821, label %832, label %822, !prof !860

822:                                              ; preds = %820
  %823 = load i32, ptr %769, align 8
  %824 = and i32 %823, 65535
  br label %825

825:                                              ; preds = %822, %810
  %826 = phi i32 [ %824, %822 ], [ 39, %810 ]
  %827 = icmp eq i32 %826, %776
  br i1 %827, label %828, label %832, !prof !861

828:                                              ; preds = %825
  %829 = load ptr, ptr %771, align 8, !tbaa !408
  %830 = tail call i32 @rtx_equal_p(ptr noundef nonnull %769, ptr noundef %829) #23
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %832, label %863, !prof !862

832:                                              ; preds = %828, %825, %820
  %833 = icmp eq ptr %770, null
  br i1 %833, label %842, label %834, !prof !863

834:                                              ; preds = %832
  %835 = load i32, ptr %770, align 8
  %836 = and i32 %835, 65535
  %837 = icmp eq i32 %836, %776
  br i1 %837, label %838, label %842, !prof !864

838:                                              ; preds = %834
  %839 = load ptr, ptr %771, align 8, !tbaa !408
  %840 = tail call i32 @rtx_equal_p(ptr noundef nonnull %770, ptr noundef %839) #23
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %863, !prof !865

842:                                              ; preds = %838, %834, %832
  %843 = icmp eq ptr %772, null
  br i1 %843, label %852, label %844, !prof !866

844:                                              ; preds = %842
  %845 = load i32, ptr %772, align 8
  %846 = and i32 %845, 65535
  %847 = icmp eq i32 %846, %776
  br i1 %847, label %848, label %852

848:                                              ; preds = %844
  %849 = load ptr, ptr %771, align 8, !tbaa !408
  %850 = tail call i32 @rtx_equal_p(ptr noundef nonnull %772, ptr noundef %849) #23
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %852, label %863

852:                                              ; preds = %848, %844, %842
  %853 = icmp eq ptr %773, null
  br i1 %853, label %863, label %854, !prof !867

854:                                              ; preds = %852
  %855 = load i32, ptr %773, align 8
  %856 = and i32 %855, 65535
  %857 = icmp eq i32 %856, %776
  br i1 %857, label %858, label %863, !prof !868

858:                                              ; preds = %854
  %859 = load ptr, ptr %771, align 8, !tbaa !408
  %860 = tail call i32 @rtx_equal_p(ptr noundef nonnull %773, ptr noundef %859) #23
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %863, label %862, !prof !617

862:                                              ; preds = %858
  br label %863

863:                                              ; preds = %848, %838, %828, %852, %854, %858, %862
  %864 = phi ptr [ null, %862 ], [ %773, %858 ], [ %773, %854 ], [ null, %852 ], [ %773, %828 ], [ %773, %838 ], [ %773, %848 ]
  %865 = phi ptr [ %772, %862 ], [ %772, %858 ], [ %772, %854 ], [ %772, %852 ], [ %772, %828 ], [ %772, %838 ], [ null, %848 ]
  %866 = phi ptr [ %770, %862 ], [ %770, %858 ], [ %770, %854 ], [ %770, %852 ], [ %770, %828 ], [ null, %838 ], [ %770, %848 ]
  %867 = phi ptr [ %769, %862 ], [ %769, %858 ], [ %769, %854 ], [ %769, %852 ], [ null, %828 ], [ %769, %838 ], [ %769, %848 ]
  %868 = load i32, ptr %281, align 8
  %869 = and i32 %868, 65535
  %870 = icmp eq i32 %869, %776
  br i1 %870, label %871, label %876, !prof !869

871:                                              ; preds = %863
  %872 = load ptr, ptr %771, align 8, !tbaa !408
  %873 = tail call i32 @rtx_equal_p(ptr noundef %872, ptr noundef nonnull %281) #23
  %874 = icmp eq i32 %873, 0
  %875 = select i1 %874, ptr %864, ptr %281, !prof !870
  br label %876

876:                                              ; preds = %871, %863, %800, %802, %806, %810, %778
  %877 = phi ptr [ %773, %778 ], [ %773, %810 ], [ %773, %806 ], [ %773, %802 ], [ %773, %800 ], [ %864, %863 ], [ %875, %871 ]
  %878 = phi ptr [ %772, %778 ], [ %772, %810 ], [ %772, %806 ], [ %772, %802 ], [ %772, %800 ], [ %865, %863 ], [ %865, %871 ]
  %879 = phi ptr [ %770, %778 ], [ %770, %810 ], [ %770, %806 ], [ %770, %802 ], [ %770, %800 ], [ %866, %863 ], [ %866, %871 ]
  %880 = phi ptr [ %769, %778 ], [ %769, %810 ], [ %769, %806 ], [ %769, %802 ], [ null, %800 ], [ %867, %863 ], [ %867, %871 ]
  %881 = getelementptr inbounds %struct.table_elt, ptr %771, i64 0, i32 4
  %882 = load ptr, ptr %881, align 8, !tbaa !871
  %883 = icmp eq ptr %882, null
  br i1 %883, label %884, label %768, !prof !872, !llvm.loop !873

884:                                              ; preds = %876, %758, %764
  %885 = phi ptr [ null, %764 ], [ null, %758 ], [ %766, %876 ]
  %886 = phi ptr [ %760, %764 ], [ %760, %758 ], [ %877, %876 ]
  %887 = phi ptr [ %522, %764 ], [ %522, %758 ], [ %878, %876 ]
  %888 = phi ptr [ %762, %764 ], [ %762, %758 ], [ %879, %876 ]
  %889 = phi ptr [ %283, %764 ], [ %283, %758 ], [ %880, %876 ]
  %890 = icmp eq ptr %889, null
  br i1 %890, label %903, label %891, !prof !874

891:                                              ; preds = %884
  %892 = tail call i32 @rtx_equal_p(ptr noundef nonnull %889, ptr noundef nonnull %281) #23
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %903, !prof !875

894:                                              ; preds = %891
  %895 = load i32, ptr %889, align 8
  %896 = and i32 %895, 65535
  %897 = icmp eq i32 %896, 37
  br i1 %897, label %900, label %898, !prof !876

898:                                              ; preds = %894
  %899 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %889, i32 noundef 23) #25
  br label %900

900:                                              ; preds = %894, %898
  %901 = phi i32 [ %899, %898 ], [ 0, %894 ]
  %902 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %889) #25
  br label %903

903:                                              ; preds = %891, %900, %884
  %904 = phi i32 [ %902, %900 ], [ 2147483647, %884 ], [ -1, %891 ]
  %905 = phi i32 [ %901, %900 ], [ 2147483647, %884 ], [ -1, %891 ]
  %906 = icmp ne ptr %887, null
  br i1 %906, label %907, label %919, !prof !877

907:                                              ; preds = %903
  %908 = tail call i32 @rtx_equal_p(ptr noundef nonnull %887, ptr noundef nonnull %281) #23
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %910, label %919, !prof !878

910:                                              ; preds = %907
  %911 = load i32, ptr %887, align 8
  %912 = and i32 %911, 65535
  %913 = icmp eq i32 %912, 37
  br i1 %913, label %916, label %914, !prof !813

914:                                              ; preds = %910
  %915 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %887, i32 noundef 23) #25
  br label %916

916:                                              ; preds = %910, %914
  %917 = phi i32 [ %915, %914 ], [ 0, %910 ]
  %918 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %887) #25
  br label %919

919:                                              ; preds = %907, %916, %903
  %920 = phi i32 [ %918, %916 ], [ 2147483647, %903 ], [ -1, %907 ]
  %921 = phi i32 [ %917, %916 ], [ 2147483647, %903 ], [ -1, %907 ]
  %922 = icmp eq ptr %888, null
  br i1 %922, label %935, label %923, !prof !879

923:                                              ; preds = %919
  %924 = tail call i32 @rtx_equal_p(ptr noundef nonnull %888, ptr noundef nonnull %281) #23
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %926, label %935, !prof !880

926:                                              ; preds = %923
  %927 = load i32, ptr %888, align 8
  %928 = and i32 %927, 65535
  %929 = icmp eq i32 %928, 37
  br i1 %929, label %932, label %930, !prof !881

930:                                              ; preds = %926
  %931 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %888, i32 noundef 23) #25
  br label %932

932:                                              ; preds = %926, %930
  %933 = phi i32 [ %931, %930 ], [ 0, %926 ]
  %934 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %888) #25
  br label %935

935:                                              ; preds = %923, %932, %919
  %936 = phi i32 [ %934, %932 ], [ 2147483647, %919 ], [ -1, %923 ]
  %937 = phi i32 [ %933, %932 ], [ 2147483647, %919 ], [ -1, %923 ]
  %938 = icmp eq ptr %886, null
  br i1 %938, label %957, label %939, !prof !882

939:                                              ; preds = %935
  %940 = tail call i32 @rtx_equal_p(ptr noundef nonnull %886, ptr noundef nonnull %281) #23
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %942, label %957, !prof !883

942:                                              ; preds = %939
  %943 = load i32, ptr %886, align 8
  %944 = and i32 %943, 65535
  %945 = icmp eq i32 %944, 37
  br i1 %945, label %948, label %946, !prof !828

946:                                              ; preds = %942
  %947 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %886, i32 noundef 23) #25
  br label %948

948:                                              ; preds = %942, %946
  %949 = phi i32 [ %947, %946 ], [ 0, %942 ]
  %950 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %886) #25
  %951 = icmp eq i32 %759, 0
  br i1 %951, label %957, label %952, !prof !884

952:                                              ; preds = %948
  %953 = icmp eq i32 %949, %905
  %954 = and i1 %906, %953
  %955 = sext i1 %954 to i32
  %956 = add nsw i32 %949, %955
  br label %957

957:                                              ; preds = %952, %939, %948, %935
  %958 = phi i32 [ %950, %948 ], [ 2147483647, %935 ], [ -1, %939 ], [ %950, %952 ]
  %959 = phi i32 [ %949, %948 ], [ 2147483647, %935 ], [ -1, %939 ], [ %956, %952 ]
  %960 = load ptr, ptr @global_rtl, align 16, !tbaa !404
  %961 = icmp eq ptr %281, %960
  %962 = and i1 %516, %961
  br i1 %962, label %963, label %968, !prof !885

963:                                              ; preds = %957
  %964 = load i32, ptr %517, align 8
  %965 = and i32 %964, 65535
  %966 = icmp eq i32 %965, 44
  br i1 %966, label %967, label %968

967:                                              ; preds = %963
  br label %968

968:                                              ; preds = %967, %963, %957
  %969 = phi i32 [ -1, %967 ], [ %936, %963 ], [ %936, %957 ]
  %970 = phi i32 [ -1, %967 ], [ %937, %963 ], [ %937, %957 ]
  %971 = phi ptr [ %517, %967 ], [ %888, %963 ], [ %888, %957 ]
  %972 = icmp eq ptr %971, null
  br label %973

973:                                              ; preds = %1267, %968
  %974 = phi i32 [ 2147483647, %968 ], [ %1049, %1267 ]
  %975 = phi i32 [ 2147483647, %968 ], [ %1090, %1267 ]
  %976 = phi i32 [ %959, %968 ], [ %1091, %1267 ]
  %977 = phi i32 [ %970, %968 ], [ %1092, %1267 ]
  %978 = phi i32 [ %921, %968 ], [ %1093, %1267 ]
  %979 = phi i32 [ %905, %968 ], [ %1094, %1267 ]
  %980 = phi ptr [ %885, %968 ], [ %1095, %1267 ]
  br label %981

981:                                              ; preds = %973, %1039
  %982 = phi ptr [ %1041, %1039 ], [ %980, %973 ]
  %983 = icmp eq ptr %982, null
  br i1 %983, label %1047, label %984, !prof !886

984:                                              ; preds = %981, %996
  %985 = phi ptr [ %998, %996 ], [ %982, %981 ]
  %986 = load ptr, ptr %985, align 8, !tbaa !408
  %987 = load i32, ptr %986, align 8
  %988 = and i32 %987, 65535
  %989 = icmp eq i32 %988, 37
  br i1 %989, label %1000, label %990, !prof !887

990:                                              ; preds = %984
  %991 = tail call i32 @exp_equiv_p(ptr noundef nonnull %986, ptr noundef nonnull %986, i32 noundef 1, i8 noundef zeroext 0) #25, !range !481
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %996, label %993, !prof !888

993:                                              ; preds = %990
  %994 = load ptr, ptr %985, align 8, !tbaa !408
  %995 = load i32, ptr %994, align 8
  br label %1000

996:                                              ; preds = %990
  %997 = getelementptr inbounds %struct.table_elt, ptr %985, i64 0, i32 4
  %998 = load ptr, ptr %997, align 8, !tbaa !871
  %999 = icmp eq ptr %998, null
  br i1 %999, label %1047, label %984, !prof !889, !llvm.loop !890

1000:                                             ; preds = %984, %993
  %1001 = phi i32 [ %995, %993 ], [ %987, %984 ]
  %1002 = phi ptr [ %994, %993 ], [ %986, %984 ]
  %1003 = and i32 %1001, 65535
  %1004 = icmp eq i32 %1003, 39
  br i1 %1004, label %1005, label %1042, !prof !891

1005:                                             ; preds = %1000
  %1006 = lshr i32 %1001, 16
  %1007 = and i32 %1006, 255
  %1008 = zext nneg i32 %1007 to i64
  %1009 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1008
  %1010 = load i8, ptr %1009, align 1, !tbaa !420
  %1011 = getelementptr inbounds %struct.rtx_def, ptr %1002, i64 0, i32 1
  %1012 = load ptr, ptr %1011, align 8, !tbaa !420
  %1013 = load i32, ptr %1012, align 8
  %1014 = lshr i32 %1013, 16
  %1015 = and i32 %1014, 255
  %1016 = zext nneg i32 %1015 to i64
  %1017 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1016
  %1018 = load i8, ptr %1017, align 1, !tbaa !420
  %1019 = icmp ugt i8 %1010, %1018
  br i1 %1019, label %1020, label %1042

1020:                                             ; preds = %1005
  br i1 %890, label %1039, label %1021

1021:                                             ; preds = %1020
  %1022 = load i32, ptr %889, align 8
  %1023 = and i32 %1022, 65535
  %1024 = icmp eq i32 %1023, 39
  br i1 %1024, label %1025, label %1039

1025:                                             ; preds = %1021
  %1026 = lshr i32 %1022, 16
  %1027 = and i32 %1026, 255
  %1028 = icmp eq i32 %1027, %1007
  br i1 %1028, label %1029, label %1039

1029:                                             ; preds = %1025
  %1030 = getelementptr inbounds %struct.rtx_def, ptr %889, i64 0, i32 1
  %1031 = load ptr, ptr %1030, align 8, !tbaa !420
  %1032 = load i32, ptr %1031, align 8
  %1033 = lshr i32 %1032, 16
  %1034 = and i32 %1033, 255
  %1035 = zext nneg i32 %1034 to i64
  %1036 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1035
  %1037 = load i8, ptr %1036, align 1, !tbaa !420
  %1038 = icmp ult i8 %1037, %1018
  br i1 %1038, label %1042, label %1039

1039:                                             ; preds = %1029, %1025, %1021, %1020
  %1040 = getelementptr inbounds %struct.table_elt, ptr %985, i64 0, i32 4
  %1041 = load ptr, ptr %1040, align 8, !tbaa !871
  br label %981

1042:                                             ; preds = %1000, %1005, %1029
  %1043 = getelementptr inbounds %struct.table_elt, ptr %985, i64 0, i32 8
  %1044 = load i32, ptr %1043, align 8, !tbaa !892
  %1045 = getelementptr inbounds %struct.table_elt, ptr %985, i64 0, i32 9
  %1046 = load i32, ptr %1045, align 4, !tbaa !893
  br label %1047

1047:                                             ; preds = %981, %996, %1042
  %1048 = phi ptr [ %985, %1042 ], [ null, %996 ], [ null, %981 ]
  %1049 = phi i32 [ %1046, %1042 ], [ %974, %996 ], [ %974, %981 ]
  %1050 = phi i32 [ %1044, %1042 ], [ %975, %996 ], [ %975, %981 ]
  br i1 %972, label %1063, label %1051, !prof !894

1051:                                             ; preds = %1047
  %1052 = tail call fastcc i32 @preferable(i32 noundef %977, i32 noundef %969, i32 noundef %979, i32 noundef %904) #25
  %1053 = icmp slt i32 %1052, 1
  br i1 %1053, label %1054, label %1063, !prof !880

1054:                                             ; preds = %1051
  %1055 = tail call fastcc i32 @preferable(i32 noundef %977, i32 noundef %969, i32 noundef %978, i32 noundef %920) #25
  %1056 = icmp slt i32 %1055, 1
  br i1 %1056, label %1057, label %1063, !prof !880

1057:                                             ; preds = %1054
  %1058 = tail call fastcc i32 @preferable(i32 noundef %977, i32 noundef %969, i32 noundef %976, i32 noundef %958) #25
  %1059 = icmp slt i32 %1058, 1
  br i1 %1059, label %1060, label %1063, !prof !880

1060:                                             ; preds = %1057
  %1061 = tail call fastcc i32 @preferable(i32 noundef %977, i32 noundef %969, i32 noundef %1050, i32 noundef %1049) #25
  %1062 = icmp slt i32 %1061, 1
  br i1 %1062, label %1088, label %1063, !prof !880

1063:                                             ; preds = %1060, %1057, %1054, %1051, %1047
  br i1 %890, label %1073, label %1064, !prof !895

1064:                                             ; preds = %1063
  %1065 = tail call fastcc i32 @preferable(i32 noundef %979, i32 noundef %904, i32 noundef %978, i32 noundef %920) #25
  %1066 = icmp slt i32 %1065, 1
  br i1 %1066, label %1067, label %1073, !prof !896

1067:                                             ; preds = %1064
  %1068 = tail call fastcc i32 @preferable(i32 noundef %979, i32 noundef %904, i32 noundef %976, i32 noundef %958) #25
  %1069 = icmp slt i32 %1068, 1
  br i1 %1069, label %1070, label %1073, !prof !897

1070:                                             ; preds = %1067
  %1071 = tail call fastcc i32 @preferable(i32 noundef %979, i32 noundef %904, i32 noundef %1050, i32 noundef %1049) #25
  %1072 = icmp slt i32 %1071, 1
  br i1 %1072, label %1088, label %1073, !prof !897

1073:                                             ; preds = %1070, %1067, %1064, %1063
  br i1 %906, label %1074, label %1080, !prof !898

1074:                                             ; preds = %1073
  %1075 = tail call fastcc i32 @preferable(i32 noundef %978, i32 noundef %920, i32 noundef %976, i32 noundef %958) #25
  %1076 = icmp slt i32 %1075, 1
  br i1 %1076, label %1077, label %1080, !prof !899

1077:                                             ; preds = %1074
  %1078 = tail call fastcc i32 @preferable(i32 noundef %978, i32 noundef %920, i32 noundef %1050, i32 noundef %1049) #25
  %1079 = icmp slt i32 %1078, 1
  br i1 %1079, label %1088, label %1080, !prof !899

1080:                                             ; preds = %1077, %1074, %1073
  br i1 %938, label %1084, label %1081, !prof !900

1081:                                             ; preds = %1080
  %1082 = tail call fastcc i32 @preferable(i32 noundef %976, i32 noundef %958, i32 noundef %1050, i32 noundef %1049) #25
  %1083 = icmp slt i32 %1082, 1
  br i1 %1083, label %1088, label %1084, !prof !901

1084:                                             ; preds = %1081, %1080
  %1085 = load ptr, ptr %1048, align 8, !tbaa !408
  %1086 = getelementptr inbounds %struct.table_elt, ptr %1048, i64 0, i32 4
  %1087 = load ptr, ptr %1086, align 8, !tbaa !871
  br label %1088

1088:                                             ; preds = %1081, %1077, %1070, %1060, %1084
  %1089 = phi ptr [ %1085, %1084 ], [ %971, %1060 ], [ %889, %1070 ], [ %887, %1077 ], [ %886, %1081 ]
  %1090 = phi i32 [ 2147483647, %1084 ], [ %1050, %1060 ], [ %1050, %1070 ], [ %1050, %1077 ], [ %1050, %1081 ]
  %1091 = phi i32 [ %976, %1084 ], [ %976, %1060 ], [ %976, %1070 ], [ %976, %1077 ], [ 2147483647, %1081 ]
  %1092 = phi i32 [ %977, %1084 ], [ 2147483647, %1060 ], [ %977, %1070 ], [ %977, %1077 ], [ %977, %1081 ]
  %1093 = phi i32 [ %978, %1084 ], [ %978, %1060 ], [ %978, %1070 ], [ 2147483647, %1077 ], [ %978, %1081 ]
  %1094 = phi i32 [ %979, %1084 ], [ %979, %1060 ], [ 2147483647, %1070 ], [ %979, %1077 ], [ %979, %1081 ]
  %1095 = phi ptr [ %1087, %1084 ], [ %1048, %1060 ], [ %1048, %1070 ], [ %1048, %1077 ], [ %1048, %1081 ]
  %1096 = load i32, ptr %1089, align 8
  %1097 = and i32 %1096, 65535
  %1098 = icmp eq i32 %1097, 43
  %1099 = load ptr, ptr %268, align 8, !tbaa !757
  br i1 %1098, label %1100, label %1127, !prof !902

1100:                                             ; preds = %1088
  %1101 = getelementptr inbounds %struct.rtx_def, ptr %1099, i64 0, i32 1
  %1102 = load ptr, ptr %1101, align 8, !tbaa !420
  %1103 = load i32, ptr %1102, align 8
  %1104 = and i32 %1103, 65535
  %1105 = icmp eq i32 %1104, 43
  br i1 %1105, label %1106, label %1127, !prof !903

1106:                                             ; preds = %1100
  %1107 = and i32 %1096, 16711680
  %1108 = icmp eq i32 %1107, 65536
  br i1 %1108, label %1311, label %1109

1109:                                             ; preds = %1106
  %1110 = tail call ptr @canon_rtx(ptr noundef nonnull %1089) #23
  %1111 = load ptr, ptr %268, align 8, !tbaa !757
  %1112 = getelementptr inbounds %struct.rtx_def, ptr %1111, i64 0, i32 1
  %1113 = load ptr, ptr %1112, align 8, !tbaa !420
  %1114 = tail call ptr @canon_rtx(ptr noundef %1113) #23
  %1115 = load i32, ptr %1110, align 8
  %1116 = and i32 %1115, 65535
  %1117 = icmp eq i32 %1116, 43
  br i1 %1117, label %1118, label %1311

1118:                                             ; preds = %1109
  %1119 = load i32, ptr %1114, align 8
  %1120 = and i32 %1119, 65535
  %1121 = icmp eq i32 %1120, 43
  br i1 %1121, label %1122, label %1311

1122:                                             ; preds = %1118
  %1123 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %1110, ptr noundef nonnull %1114) #23
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1311, label %1125

1125:                                             ; preds = %1122
  %1126 = load ptr, ptr %268, align 8, !tbaa !757
  br label %1127

1127:                                             ; preds = %1125, %1100, %1088
  %1128 = phi ptr [ %1126, %1125 ], [ %1099, %1100 ], [ %1099, %1088 ]
  %1129 = getelementptr inbounds %struct.rtx_def, ptr %1128, i64 0, i32 1
  %1130 = load ptr, ptr %1129, align 8, !tbaa !420
  %1131 = load i32, ptr %1130, align 8
  %1132 = and i32 %1131, 65535
  %1133 = icmp eq i32 %1132, 120
  br i1 %1133, label %1134, label %1247, !prof !888

1134:                                             ; preds = %1127
  %1135 = load i32, ptr %1089, align 8
  %1136 = and i32 %1135, 65535
  %1137 = icmp eq i32 %1136, 30
  br i1 %1137, label %1138, label %1247

1138:                                             ; preds = %1134
  %1139 = getelementptr inbounds %struct.rtx_def, ptr %1130, i64 0, i32 1
  %1140 = getelementptr inbounds %struct.rtx_def, ptr %1130, i64 0, i32 1, i32 0, i32 0, i64 1
  %1141 = load ptr, ptr %1140, align 8, !tbaa !420
  %1142 = load i32, ptr %1141, align 8
  %1143 = and i32 %1142, 65535
  %1144 = icmp eq i32 %1143, 30
  br i1 %1144, label %1145, label %1247

1145:                                             ; preds = %1138
  %1146 = getelementptr inbounds %struct.rtx_def, ptr %1130, i64 0, i32 1, i32 0, i32 0, i64 2
  %1147 = load ptr, ptr %1146, align 8, !tbaa !420
  %1148 = load i32, ptr %1147, align 8
  %1149 = and i32 %1148, 65535
  %1150 = icmp eq i32 %1149, 30
  br i1 %1150, label %1151, label %1247

1151:                                             ; preds = %1145
  %1152 = load ptr, ptr %1139, align 8, !tbaa !420
  %1153 = load i32, ptr %1152, align 8
  %1154 = and i32 %1153, 65535
  %1155 = icmp eq i32 %1154, 37
  br i1 %1155, label %1156, label %1247

1156:                                             ; preds = %1151
  %1157 = lshr i32 %1131, 16
  %1158 = and i32 %1157, 255
  %1159 = zext nneg i32 %1158 to i64
  %1160 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1159
  %1161 = load i8, ptr %1160, align 1, !tbaa !420
  %1162 = zext i8 %1161 to i64
  %1163 = shl nuw nsw i64 %1162, 3
  %1164 = getelementptr inbounds %struct.rtx_def, ptr %1141, i64 0, i32 1
  %1165 = load i64, ptr %1164, align 8, !tbaa !420
  %1166 = icmp slt i64 %1163, %1165
  br i1 %1166, label %1247, label %1167

1167:                                             ; preds = %1156
  %1168 = trunc i64 %1165 to i32
  %1169 = getelementptr inbounds %struct.rtx_def, ptr %1147, i64 0, i32 1
  %1170 = load i64, ptr %1169, align 8, !tbaa !420
  %1171 = trunc i64 %1170 to i32
  %1172 = add i32 %1171, %1168
  %1173 = icmp ult i32 %1172, 65
  br i1 %1173, label %1174, label %1247

1174:                                             ; preds = %1167
  %1175 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1152) #25
  %1176 = icmp ugt i32 %1175, 52
  br i1 %1176, label %1177, label %1182

1177:                                             ; preds = %1174
  %1178 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1175) #25
  %1179 = getelementptr inbounds %struct.cse_reg_info, ptr %1178, i64 0, i32 1
  %1180 = load i32, ptr %1179, align 4, !tbaa !425
  %1181 = add i32 %1180, 4736
  br label %1186

1182:                                             ; preds = %1174
  %1183 = lshr i32 %1153, 16
  %1184 = and i32 %1183, 255
  %1185 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1152, i32 noundef %1184) #25
  br label %1186

1186:                                             ; preds = %1182, %1177
  %1187 = phi i32 [ %1181, %1177 ], [ %1185, %1182 ]
  %1188 = and i32 %1187, 31
  %1189 = load i32, ptr %1152, align 8
  %1190 = lshr i32 %1189, 16
  %1191 = and i32 %1190, 255
  %1192 = tail call fastcc ptr @lookup(ptr noundef nonnull %1152, i32 noundef %1188, i32 noundef %1191) #25
  %1193 = icmp eq ptr %1192, null
  br i1 %1193, label %1247, label %1194

1194:                                             ; preds = %1186
  %1195 = getelementptr inbounds %struct.table_elt, ptr %1192, i64 0, i32 6
  %1196 = load ptr, ptr %1195, align 8, !tbaa !404
  %1197 = icmp eq ptr %1196, null
  br i1 %1197, label %1247, label %1198

1198:                                             ; preds = %1194, %1208
  %1199 = phi ptr [ %1210, %1208 ], [ %1196, %1194 ]
  %1200 = getelementptr inbounds %struct.table_elt, ptr %1199, i64 0, i32 12
  %1201 = load i8, ptr %1200, align 2, !tbaa !805
  %1202 = icmp eq i8 %1201, 0
  br i1 %1202, label %1208, label %1203

1203:                                             ; preds = %1198
  %1204 = load ptr, ptr %1199, align 8, !tbaa !408
  %1205 = load i32, ptr %1204, align 8
  %1206 = and i32 %1205, 65535
  %1207 = icmp eq i32 %1206, 30
  br i1 %1207, label %1212, label %1208

1208:                                             ; preds = %1198, %1203
  %1209 = getelementptr inbounds %struct.table_elt, ptr %1199, i64 0, i32 4
  %1210 = load ptr, ptr %1209, align 8, !tbaa !404
  %1211 = icmp eq ptr %1210, null
  br i1 %1211, label %1247, label %1198, !llvm.loop !904

1212:                                             ; preds = %1203
  %1213 = getelementptr inbounds %struct.rtx_def, ptr %1204, i64 0, i32 1
  %1214 = load i64, ptr %1213, align 8, !tbaa !420
  %1215 = load i64, ptr %1169, align 8, !tbaa !420
  %1216 = load i64, ptr %1164, align 8, !tbaa !420
  %1217 = icmp eq i64 %1216, 64
  %1218 = shl nsw i64 -1, %1216
  %1219 = xor i64 %1218, -1
  %1220 = select i1 %1217, i64 -1, i64 %1219
  %1221 = and i64 %1215, 4294967295
  %1222 = shl i64 %1220, %1221
  %1223 = xor i64 %1222, -1
  %1224 = and i64 %1214, %1223
  %1225 = getelementptr inbounds %struct.rtx_def, ptr %1089, i64 0, i32 1
  %1226 = load i64, ptr %1225, align 8, !tbaa !420
  %1227 = and i64 %1220, %1226
  %1228 = shl i64 %1227, %1221
  %1229 = or i64 %1224, %1228
  %1230 = load i32, ptr %1152, align 8
  %1231 = lshr i32 %1230, 16
  %1232 = and i32 %1231, 255
  %1233 = tail call i64 @trunc_int_for_mode(i64 noundef %1229, i32 noundef %1232) #23
  %1234 = load ptr, ptr %268, align 8, !tbaa !757
  %1235 = getelementptr inbounds %struct.rtx_def, ptr %1234, i64 0, i32 1
  %1236 = tail call zeroext i8 @validate_unshare_change(ptr noundef %260, ptr noundef nonnull %1235, ptr noundef nonnull %1152, i8 noundef zeroext 1) #23
  %1237 = load ptr, ptr %268, align 8, !tbaa !757
  %1238 = getelementptr inbounds %struct.rtx_def, ptr %1237, i64 0, i32 1, i32 0, i32 0, i64 1
  %1239 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1233) #23
  %1240 = tail call zeroext i8 @validate_unshare_change(ptr noundef %260, ptr noundef nonnull %1238, ptr noundef %1239, i8 noundef zeroext 1) #23
  %1241 = tail call i32 @apply_change_group() #23
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1247, label %1243

1243:                                             ; preds = %1212
  %1244 = tail call ptr @find_reg_note(ptr noundef %260, i32 noundef 4, ptr noundef null) #23
  %1245 = icmp eq ptr %1244, null
  br i1 %1245, label %1630, label %1246

1246:                                             ; preds = %1243
  tail call void @remove_note(ptr noundef %260, ptr noundef nonnull %1244) #23
  tail call void @df_notes_rescan(ptr noundef %260) #23
  br label %1630

1247:                                             ; preds = %1208, %1194, %1212, %1186, %1167, %1156, %1151, %1145, %1138, %1134, %1127
  br i1 %214, label %1250, label %1248, !prof !905

1248:                                             ; preds = %1247
  %1249 = load i32, ptr %1089, align 8
  br label %1271

1250:                                             ; preds = %1247
  %1251 = load ptr, ptr @global_rtl, align 16, !tbaa !404
  %1252 = icmp eq ptr %281, %1251
  %1253 = load i32, ptr %1089, align 8
  br i1 %1252, label %1254, label %1271, !prof !906

1254:                                             ; preds = %1250
  %1255 = icmp eq ptr %1089, %281
  br i1 %1255, label %1263, label %1256, !prof !907

1256:                                             ; preds = %1254
  %1257 = and i32 %1253, 65535
  %1258 = icmp eq i32 %1257, 44
  br i1 %1258, label %1259, label %1271, !prof !907

1259:                                             ; preds = %1256
  %1260 = tail call i32 @condjump_p(ptr noundef %260) #23
  %1261 = icmp eq i32 %1260, 0
  %1262 = load i32, ptr %1089, align 8
  br i1 %1261, label %1263, label %1271

1263:                                             ; preds = %1259, %1254
  %1264 = phi i32 [ %1253, %1254 ], [ %1262, %1259 ]
  %1265 = and i32 %1264, 134283263
  %1266 = icmp eq i32 %1265, 134217772
  br i1 %1266, label %1267, label %1268

1267:                                             ; preds = %1263, %1297, %1280, %1291
  br label %973

1268:                                             ; preds = %1263
  %1269 = load ptr, ptr %268, align 8, !tbaa !757
  %1270 = getelementptr inbounds %struct.rtx_def, ptr %1269, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1089, ptr %1270, align 8, !tbaa !420
  store i1 true, ptr @cse_jumps_altered, align 1
  br label %1311

1271:                                             ; preds = %1248, %1259, %1256, %1250
  %1272 = phi i32 [ %1249, %1248 ], [ %1262, %1259 ], [ %1253, %1256 ], [ %1253, %1250 ]
  %1273 = and i32 %1272, 65535
  %1274 = zext nneg i32 %1273 to i64
  %1275 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1274
  %1276 = load i32, ptr %1275, align 4, !tbaa !416
  %1277 = icmp eq i32 %1276, 9
  %1278 = icmp eq i32 %1273, 35
  %1279 = and i1 %1277, %1278
  br i1 %1279, label %1280, label %1297, !prof !908

1280:                                             ; preds = %1271
  %1281 = getelementptr inbounds %struct.rtx_def, ptr %1089, i64 0, i32 1
  %1282 = load ptr, ptr %1281, align 8, !tbaa !420
  %1283 = load i32, ptr %1282, align 8
  %1284 = trunc i32 %1283 to i16
  switch i16 %1284, label %1297 [
    i16 100, label %1267
    i16 50, label %1285
  ], !prof !909

1285:                                             ; preds = %1280
  %1286 = getelementptr inbounds %struct.rtx_def, ptr %1282, i64 0, i32 1
  %1287 = load ptr, ptr %1286, align 8, !tbaa !420
  %1288 = load i32, ptr %1287, align 8
  %1289 = and i32 %1288, 65535
  %1290 = icmp eq i32 %1289, 44
  br i1 %1290, label %1291, label %1297

1291:                                             ; preds = %1285
  %1292 = getelementptr inbounds %struct.rtx_def, ptr %1282, i64 0, i32 1, i32 0, i32 0, i64 1
  %1293 = load ptr, ptr %1292, align 8, !tbaa !420
  %1294 = load i32, ptr %1293, align 8
  %1295 = and i32 %1294, 65535
  %1296 = icmp eq i32 %1295, 44
  br i1 %1296, label %1267, label %1297

1297:                                             ; preds = %1280, %1291, %1285, %1271
  %1298 = load ptr, ptr %268, align 8, !tbaa !757
  %1299 = getelementptr inbounds %struct.rtx_def, ptr %1298, i64 0, i32 1, i32 0, i32 0, i64 1
  %1300 = tail call zeroext i8 @validate_unshare_change(ptr noundef %260, ptr noundef nonnull %1299, ptr noundef nonnull %1089, i8 noundef zeroext 0) #23
  %1301 = icmp eq i8 %1300, 0
  br i1 %1301, label %1267, label %1302, !prof !910

1302:                                             ; preds = %1297
  %1303 = load ptr, ptr %268, align 8, !tbaa !757
  %1304 = getelementptr inbounds %struct.rtx_def, ptr %1303, i64 0, i32 1, i32 0, i32 0, i64 1
  %1305 = load ptr, ptr %1304, align 8, !tbaa !420
  %1306 = tail call fastcc ptr @canon_reg(ptr noundef %1305, ptr noundef %260) #25
  %1307 = load ptr, ptr %268, align 8, !tbaa !757
  %1308 = getelementptr inbounds %struct.rtx_def, ptr %1307, i64 0, i32 1, i32 0, i32 0, i64 1
  %1309 = tail call zeroext i8 @validate_change(ptr noundef %260, ptr noundef nonnull %1308, ptr noundef %1306, i8 noundef zeroext 1) #23
  %1310 = tail call i32 @apply_change_group() #23
  br label %1311

1311:                                             ; preds = %1122, %1106, %1118, %1109, %1268, %1302
  %1312 = load ptr, ptr %268, align 8, !tbaa !757
  %1313 = getelementptr inbounds %struct.rtx_def, ptr %1312, i64 0, i32 1, i32 0, i32 0, i64 1
  %1314 = load ptr, ptr %1313, align 8, !tbaa !420
  %1315 = load i32, ptr %281, align 8
  %1316 = and i32 %1315, 65535
  %1317 = icmp eq i32 %1316, 37
  br i1 %1317, label %1318, label %1410, !prof !911

1318:                                             ; preds = %1311
  %1319 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %281) #25
  %1320 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1319) #25
  %1321 = getelementptr inbounds %struct.cse_reg_info, ptr %1320, i64 0, i32 1
  %1322 = load i32, ptr %1321, align 4, !tbaa !425
  %1323 = icmp sgt i32 %1322, -1
  br i1 %1323, label %1324, label %1410, !prof !912

1324:                                             ; preds = %1318
  %1325 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %281) #25
  %1326 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1325) #25
  %1327 = getelementptr inbounds %struct.cse_reg_info, ptr %1326, i64 0, i32 1
  %1328 = load i32, ptr %1327, align 4, !tbaa !425
  %1329 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %1330 = sext i32 %1328 to i64
  %1331 = getelementptr inbounds %struct.qty_table_elem, ptr %1329, i64 %1330, i32 6
  %1332 = load i32, ptr %1331, align 4
  %1333 = load i32, ptr %281, align 8
  %1334 = xor i32 %1333, %1332
  %1335 = and i32 %1334, 16711680
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1337, label %1410, !prof !913

1337:                                             ; preds = %1324
  %1338 = getelementptr inbounds %struct.qty_table_elem, ptr %1329, i64 %1330, i32 4
  %1339 = load i32, ptr %1338, align 4, !tbaa !914
  %1340 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %281) #25
  %1341 = icmp eq i32 %1339, %1340
  br i1 %1341, label %1410, label %1342, !prof !916

1342:                                             ; preds = %1337
  %1343 = load i32, ptr %1314, align 8
  %1344 = and i32 %1343, 65535
  %1345 = icmp eq i32 %1344, 37
  br i1 %1345, label %1346, label %1410, !prof !917

1346:                                             ; preds = %1342
  %1347 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1314) #25
  %1348 = icmp eq i32 %1347, %1340
  br i1 %1348, label %1349, label %1410, !prof !918

1349:                                             ; preds = %1346
  %1350 = load ptr, ptr %269, align 8, !tbaa !787
  %1351 = load i32, ptr %1350, align 8
  %1352 = and i32 %1351, 65535
  %1353 = icmp eq i32 %1352, 37
  br i1 %1353, label %1354, label %1357

1354:                                             ; preds = %1349
  %1355 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1350) #25
  %1356 = icmp ugt i32 %1355, 52
  br i1 %1356, label %1357, label %1410

1357:                                             ; preds = %1354, %1349
  %1358 = and i32 %1333, 65535
  %1359 = icmp ne i32 %1358, 37
  %1360 = icmp ugt i32 %1340, 52
  %1361 = or i1 %1359, %1360
  br i1 %1361, label %1362, label %1410

1362:                                             ; preds = %1357
  %1363 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1340) #25
  %1364 = getelementptr inbounds %struct.cse_reg_info, ptr %1363, i64 0, i32 1
  %1365 = load i32, ptr %1364, align 4, !tbaa !425
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds %struct.qty_table_elem, ptr %1329, i64 %1366, i32 4
  %1368 = load i32, ptr %1367, align 4, !tbaa !914
  %1369 = icmp sgt i32 %1368, 52
  br i1 %1369, label %1370, label %1375

1370:                                             ; preds = %1362
  %1371 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !404
  %1372 = zext nneg i32 %1368 to i64
  %1373 = getelementptr inbounds ptr, ptr %1371, i64 %1372
  %1374 = load ptr, ptr %1373, align 8, !tbaa !404
  br label %1380

1375:                                             ; preds = %1362
  %1376 = load i32, ptr %1314, align 8
  %1377 = lshr i32 %1376, 16
  %1378 = and i32 %1377, 255
  %1379 = tail call ptr @gen_rtx_REG(i32 noundef %1378, i32 noundef %1368) #23
  br label %1380

1380:                                             ; preds = %1375, %1370
  %1381 = phi ptr [ %1374, %1370 ], [ %1379, %1375 ]
  %1382 = load ptr, ptr %268, align 8, !tbaa !757
  %1383 = getelementptr inbounds %struct.rtx_def, ptr %1382, i64 0, i32 1, i32 0, i32 0, i64 1
  %1384 = tail call zeroext i8 @validate_change(ptr noundef %260, ptr noundef nonnull %1383, ptr noundef %1381, i8 noundef zeroext 0) #23
  %1385 = icmp ne i8 %1384, 0
  %1386 = and i1 %516, %1385
  %1387 = select i1 %1385, ptr %1381, ptr %1314
  br i1 %1386, label %1388, label %1410

1388:                                             ; preds = %1380
  %1389 = load i32, ptr %517, align 8
  %1390 = and i32 %1389, 65535
  %1391 = icmp eq i32 %1390, 37
  br i1 %1391, label %1394, label %1392

1392:                                             ; preds = %1388
  %1393 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %517, i32 noundef 23) #25
  br label %1394

1394:                                             ; preds = %1388, %1392
  %1395 = phi i32 [ %1393, %1392 ], [ 0, %1388 ]
  %1396 = load i32, ptr %1381, align 8
  %1397 = and i32 %1396, 65535
  %1398 = icmp eq i32 %1397, 37
  br i1 %1398, label %1401, label %1399

1399:                                             ; preds = %1394
  %1400 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %1381, i32 noundef 23) #25
  br label %1401

1401:                                             ; preds = %1394, %1399
  %1402 = phi i32 [ %1400, %1399 ], [ 0, %1394 ]
  %1403 = icmp slt i32 %1395, %1402
  br i1 %1403, label %1404, label %1410

1404:                                             ; preds = %1401
  %1405 = load ptr, ptr %268, align 8, !tbaa !757
  %1406 = getelementptr inbounds %struct.rtx_def, ptr %1405, i64 0, i32 1, i32 0, i32 0, i64 1
  %1407 = tail call zeroext i8 @validate_change(ptr noundef %260, ptr noundef nonnull %1406, ptr noundef nonnull %517, i8 noundef zeroext 0) #23
  %1408 = icmp eq i8 %1407, 0
  %1409 = select i1 %1408, ptr %1381, ptr %517
  br label %1410

1410:                                             ; preds = %1357, %1404, %1324, %1337, %1342, %1346, %1354, %1380, %1401, %1318, %1311
  %1411 = phi ptr [ %1314, %1318 ], [ %1314, %1311 ], [ %1314, %1354 ], [ %1314, %1346 ], [ %1314, %1342 ], [ %1314, %1337 ], [ %1314, %1324 ], [ %1381, %1401 ], [ %1387, %1380 ], [ %1409, %1404 ], [ %1314, %1357 ]
  %1412 = load ptr, ptr %269, align 8, !tbaa !787
  %1413 = icmp eq ptr %1411, %1412
  br i1 %1413, label %1436, label %1414, !prof !919

1414:                                             ; preds = %1410
  store i32 0, ptr @do_not_record, align 4, !tbaa !416
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !416
  store ptr %1411, ptr %269, align 8, !tbaa !787
  %1415 = load i32, ptr %1411, align 8
  %1416 = and i32 %1415, 65535
  %1417 = icmp eq i32 %1416, 37
  br i1 %1417, label %1418, label %1426, !prof !920

1418:                                             ; preds = %1414
  %1419 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1411) #25
  %1420 = icmp ugt i32 %1419, 52
  br i1 %1420, label %1421, label %1426, !prof !921

1421:                                             ; preds = %1418
  %1422 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1419) #25
  %1423 = getelementptr inbounds %struct.cse_reg_info, ptr %1422, i64 0, i32 1
  %1424 = load i32, ptr %1423, align 4, !tbaa !425
  %1425 = add i32 %1424, 4736
  br label %1428

1426:                                             ; preds = %1418, %1414
  %1427 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1411, i32 noundef %293) #25
  br label %1428

1428:                                             ; preds = %1426, %1421
  %1429 = phi i32 [ %1425, %1421 ], [ %1427, %1426 ]
  %1430 = and i32 %1429, 31
  store i32 %1430, ptr %270, align 8, !tbaa !790
  %1431 = load i32, ptr @do_not_record, align 4, !tbaa !416
  %1432 = trunc i32 %1431 to i8
  store i8 %1432, ptr %271, align 1, !tbaa !791
  %1433 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !416
  %1434 = trunc i32 %1433 to i8
  store i8 %1434, ptr %272, align 8, !tbaa !792
  %1435 = tail call fastcc ptr @lookup(ptr noundef nonnull %1411, i32 noundef %1430, i32 noundef %293) #25
  store ptr %1435, ptr %523, align 8, !tbaa !797
  br label %1436

1436:                                             ; preds = %1428, %1410
  %1437 = and i1 %214, %516
  br i1 %1437, label %1438, label %1469, !prof !922

1438:                                             ; preds = %1436
  %1439 = load i32, ptr %281, align 8
  %1440 = and i32 %1439, 65535
  %1441 = icmp eq i32 %1440, 37
  br i1 %1441, label %1442, label %1469, !prof !923

1442:                                             ; preds = %1438
  %1443 = load i32, ptr %517, align 8
  %1444 = trunc i32 %1443 to i16
  switch i16 %1444, label %1463 [
    i16 37, label %1469
    i16 35, label %1445
  ], !prof !924

1445:                                             ; preds = %1442
  %1446 = getelementptr inbounds %struct.rtx_def, ptr %517, i64 0, i32 1
  %1447 = load ptr, ptr %1446, align 8, !tbaa !420
  %1448 = load i32, ptr %1447, align 8
  %1449 = and i32 %1448, 65535
  %1450 = icmp eq i32 %1449, 50
  br i1 %1450, label %1451, label %1463, !prof !925

1451:                                             ; preds = %1445
  %1452 = getelementptr inbounds %struct.rtx_def, ptr %1447, i64 0, i32 1
  %1453 = load ptr, ptr %1452, align 8, !tbaa !420
  %1454 = load i32, ptr %1453, align 8
  %1455 = and i32 %1454, 65535
  %1456 = icmp eq i32 %1455, 44
  br i1 %1456, label %1457, label %1463

1457:                                             ; preds = %1451
  %1458 = getelementptr inbounds %struct.rtx_def, ptr %1447, i64 0, i32 1, i32 0, i32 0, i64 1
  %1459 = load ptr, ptr %1458, align 8, !tbaa !420
  %1460 = load i32, ptr %1459, align 8
  %1461 = and i32 %1460, 65535
  %1462 = icmp eq i32 %1461, 44
  br i1 %1462, label %1469, label %1463

1463:                                             ; preds = %1442, %1457, %1451, %1445
  %1464 = tail call i32 @rtx_equal_p(ptr noundef %1411, ptr noundef nonnull %517) #23
  %1465 = icmp eq i32 %1464, 0
  br i1 %1465, label %1466, label %1469, !prof !926

1466:                                             ; preds = %1463
  %1467 = tail call ptr @copy_rtx(ptr noundef nonnull %517) #23
  %1468 = tail call ptr @set_unique_reg_note(ptr noundef %260, i32 noundef 4, ptr noundef %1467) #23
  tail call void @df_notes_rescan(ptr noundef %260) #23
  br label %1469

1469:                                             ; preds = %1442, %1463, %1466, %1457, %1438, %1436
  %1470 = phi ptr [ %517, %1442 ], [ %517, %1457 ], [ %517, %1463 ], [ %1467, %1466 ], [ %517, %1438 ], [ %517, %1436 ]
  store i32 0, ptr @do_not_record, align 4, !tbaa !416
  br label %1471

1471:                                             ; preds = %1475, %1469
  %1472 = phi ptr [ %281, %1469 ], [ %1477, %1475 ]
  %1473 = load i32, ptr %1472, align 8
  %1474 = trunc i32 %1473 to i16
  switch i16 %1474, label %1478 [
    i16 39, label %1475
    i16 120, label %1475
    i16 40, label %1475
  ], !prof !927

1475:                                             ; preds = %1471, %1471, %1471
  %1476 = getelementptr inbounds %struct.rtx_def, ptr %1472, i64 0, i32 1
  %1477 = load ptr, ptr %1476, align 8, !tbaa !420
  br label %1471, !llvm.loop !928

1478:                                             ; preds = %1471
  %1479 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 5
  store ptr %1472, ptr %1479, align 8, !tbaa !929
  %1480 = load i32, ptr %1472, align 8
  %1481 = and i32 %1480, 65535
  %1482 = icmp eq i32 %1481, 43
  br i1 %1482, label %1483, label %1501, !prof !930

1483:                                             ; preds = %1478
  %1484 = getelementptr inbounds %struct.rtx_def, ptr %1472, i64 0, i32 1
  %1485 = load ptr, ptr %1484, align 8, !tbaa !420
  %1486 = load i32, ptr %1485, align 8
  %1487 = and i32 %1486, 65535
  %1488 = zext nneg i32 %1487 to i64
  %1489 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1488
  %1490 = load i32, ptr %1489, align 4, !tbaa !416
  %1491 = icmp eq i32 %1490, 12
  br i1 %1491, label %1492, label %1498, !prof !931

1492:                                             ; preds = %1483
  %1493 = getelementptr inbounds %struct.rtx_def, ptr %1485, i64 0, i32 1
  %1494 = load ptr, ptr %1493, align 8, !tbaa !420
  %1495 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !404
  %1496 = icmp eq ptr %1494, %1495
  br i1 %1496, label %1497, label %1498

1497:                                             ; preds = %1492
  tail call fastcc void @invalidate(ptr noundef %1494, i32 noundef 0) #25
  br label %1498

1498:                                             ; preds = %1497, %1492, %1483
  %1499 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %1472, ptr noundef %260) #25
  %1500 = load i32, ptr %1499, align 8
  br label %1501

1501:                                             ; preds = %1498, %1478
  %1502 = phi i32 [ %1500, %1498 ], [ %1480, %1478 ]
  %1503 = phi ptr [ %1499, %1498 ], [ %1472, %1478 ]
  %1504 = and i32 %1502, 65535
  %1505 = icmp eq i32 %1504, 37
  br i1 %1505, label %1506, label %1514, !prof !911

1506:                                             ; preds = %1501
  %1507 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1503) #25
  %1508 = icmp ugt i32 %1507, 52
  br i1 %1508, label %1509, label %1514, !prof !932

1509:                                             ; preds = %1506
  %1510 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1507) #25
  %1511 = getelementptr inbounds %struct.cse_reg_info, ptr %1510, i64 0, i32 1
  %1512 = load i32, ptr %1511, align 4, !tbaa !425
  %1513 = add i32 %1512, 4736
  br label %1516

1514:                                             ; preds = %1506, %1501
  %1515 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1503, i32 noundef %293) #25
  br label %1516

1516:                                             ; preds = %1514, %1509
  %1517 = phi i32 [ %1513, %1509 ], [ %1515, %1514 ]
  %1518 = and i32 %1517, 31
  %1519 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 4
  store i32 %1518, ptr %1519, align 4, !tbaa !933
  %1520 = load ptr, ptr %268, align 8, !tbaa !757
  %1521 = getelementptr inbounds %struct.rtx_def, ptr %1520, i64 0, i32 1
  %1522 = load ptr, ptr %1521, align 8, !tbaa !420
  %1523 = load i32, ptr %1522, align 8
  %1524 = and i32 %1523, 65535
  %1525 = icmp eq i32 %1524, 120
  br i1 %1525, label %1526, label %1549, !prof !934

1526:                                             ; preds = %1516
  %1527 = getelementptr inbounds %struct.rtx_def, ptr %1522, i64 0, i32 1, i32 0, i32 0, i64 1
  %1528 = load ptr, ptr %1527, align 8, !tbaa !420
  %1529 = icmp eq ptr %1470, null
  br i1 %1529, label %1548, label %1530

1530:                                             ; preds = %1526
  %1531 = load i32, ptr %1470, align 8
  %1532 = and i32 %1531, 65535
  %1533 = icmp eq i32 %1532, 30
  br i1 %1533, label %1534, label %1548

1534:                                             ; preds = %1530
  %1535 = load i32, ptr %1528, align 8
  %1536 = and i32 %1535, 65535
  %1537 = icmp eq i32 %1536, 30
  br i1 %1537, label %1538, label %1548

1538:                                             ; preds = %1534
  %1539 = getelementptr inbounds %struct.rtx_def, ptr %1528, i64 0, i32 1
  %1540 = load i64, ptr %1539, align 8, !tbaa !420
  %1541 = icmp slt i64 %1540, 64
  br i1 %1541, label %1542, label %1548

1542:                                             ; preds = %1538
  %1543 = getelementptr inbounds %struct.rtx_def, ptr %1470, i64 0, i32 1
  %1544 = load i64, ptr %1543, align 8, !tbaa !420
  %1545 = shl nsw i64 -1, %1540
  %1546 = and i64 %1544, %1545
  %1547 = icmp eq i64 %1546, 0
  br i1 %1547, label %1602, label %1548

1548:                                             ; preds = %1542, %1538, %1534, %1530, %1526
  store ptr null, ptr %523, align 8, !tbaa !797
  store i8 1, ptr %271, align 1, !tbaa !791
  br label %1602

1549:                                             ; preds = %1516
  %1550 = load ptr, ptr @global_rtl, align 16, !tbaa !404
  br i1 %214, label %1551, label %1557, !prof !854

1551:                                             ; preds = %1549
  %1552 = icmp eq ptr %1503, %1550
  %1553 = icmp eq ptr %1411, %1550
  %1554 = and i1 %1552, %1553
  br i1 %1554, label %1555, label %1557, !prof !885

1555:                                             ; preds = %1551
  %1556 = tail call ptr @delete_insn_and_edges(ptr noundef %260) #23
  store i1 true, ptr @cse_jumps_altered, align 1
  store ptr null, ptr %268, align 8, !tbaa !757
  br label %1624

1557:                                             ; preds = %1551, %1549
  %1558 = icmp eq ptr %1503, %1550
  br i1 %1558, label %1559, label %1588, !prof !935

1559:                                             ; preds = %1557
  %1560 = load i32, ptr %1411, align 8
  %1561 = and i32 %1560, 65535
  %1562 = icmp eq i32 %1561, 44
  br i1 %1562, label %1563, label %1588, !prof !907

1563:                                             ; preds = %1559
  %1564 = and i32 %1560, 134217728
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1566, label %1588

1566:                                             ; preds = %1563
  br i1 %214, label %1567, label %1584

1567:                                             ; preds = %1566
  %1568 = getelementptr inbounds %struct.rtx_def, ptr %1411, i64 0, i32 1
  %1569 = load ptr, ptr %1568, align 8, !tbaa !420
  %1570 = tail call ptr @gen_jump(ptr noundef %1569) #23
  %1571 = tail call ptr @emit_jump_insn_before(ptr noundef %1570, ptr noundef %260) #23
  %1572 = load ptr, ptr %1568, align 8, !tbaa !420
  %1573 = getelementptr inbounds %struct.rtx_def, ptr %1571, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %1572, ptr %1573, align 8, !tbaa !420
  %1574 = getelementptr inbounds %struct.rtx_def, ptr %1572, i64 0, i32 1, i32 0, i32 2
  %1575 = load i32, ptr %1574, align 8, !tbaa !420
  %1576 = add nsw i32 %1575, 1
  store i32 %1576, ptr %1574, align 8, !tbaa !420
  %1577 = tail call ptr @find_reg_note(ptr noundef %260, i32 noundef 28, ptr noundef null) #23
  %1578 = icmp eq ptr %1577, null
  br i1 %1578, label %1582, label %1579

1579:                                             ; preds = %1567
  %1580 = getelementptr inbounds %struct.rtx_def, ptr %1577, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %1580, align 8, !tbaa !420
  %1581 = getelementptr inbounds %struct.rtx_def, ptr %1571, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %1577, ptr %1581, align 8, !tbaa !420
  br label %1582

1582:                                             ; preds = %1579, %1567
  %1583 = tail call ptr @delete_insn_and_edges(ptr noundef %260) #23
  br label %1586

1584:                                             ; preds = %1566
  %1585 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 1, i32 1
  store i32 -1, ptr %1585, align 8, !tbaa !420
  br label %1586

1586:                                             ; preds = %1584, %1582
  %1587 = phi ptr [ %1571, %1582 ], [ %260, %1584 ]
  store i1 true, ptr @cse_jumps_altered, align 1
  store ptr null, ptr %268, align 8, !tbaa !757
  br label %1624

1588:                                             ; preds = %1563, %1559, %1557
  %1589 = load i32, ptr @do_not_record, align 4, !tbaa !416
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1602, label %1591, !prof !936

1591:                                             ; preds = %1588
  %1592 = load i32, ptr %1503, align 8
  %1593 = trunc i32 %1592 to i16
  switch i16 %1593, label %1601 [
    i16 37, label %1594
    i16 39, label %1594
    i16 43, label %1595
    i16 40, label %1596
    i16 120, label %1596
  ], !prof !937

1594:                                             ; preds = %1591, %1591
  tail call fastcc void @invalidate(ptr noundef nonnull %1503, i32 noundef 0) #25
  br label %1601

1595:                                             ; preds = %1591
  tail call fastcc void @invalidate(ptr noundef nonnull %1503, i32 noundef 0) #25
  br label %1601

1596:                                             ; preds = %1591, %1591
  %1597 = getelementptr inbounds %struct.rtx_def, ptr %1503, i64 0, i32 1
  %1598 = load ptr, ptr %1597, align 8, !tbaa !420
  %1599 = lshr i32 %1592, 16
  %1600 = and i32 %1599, 255
  tail call fastcc void @invalidate(ptr noundef %1598, i32 noundef %1600) #25
  br label %1601

1601:                                             ; preds = %1591, %1595, %1596, %1594
  store ptr null, ptr %268, align 8, !tbaa !757
  br label %1624

1602:                                             ; preds = %1588, %1542, %1548
  %1603 = phi ptr [ %519, %1542 ], [ null, %1548 ], [ %519, %1588 ]
  %1604 = phi ptr [ %274, %1542 ], [ null, %1548 ], [ %274, %1588 ]
  %1605 = load ptr, ptr %1521, align 8, !tbaa !420
  %1606 = icmp eq ptr %1503, %1605
  br i1 %1606, label %1624, label %1607, !prof !938

1607:                                             ; preds = %1602
  %1608 = load i32, ptr %1605, align 8
  %1609 = and i32 %1608, 65535
  %1610 = icmp eq i32 %1609, 37
  br i1 %1610, label %1611, label %1619

1611:                                             ; preds = %1607
  %1612 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1605) #25
  %1613 = icmp ugt i32 %1612, 52
  br i1 %1613, label %1614, label %1619

1614:                                             ; preds = %1611
  %1615 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1612) #25
  %1616 = getelementptr inbounds %struct.cse_reg_info, ptr %1615, i64 0, i32 1
  %1617 = load i32, ptr %1616, align 4, !tbaa !425
  %1618 = add i32 %1617, 4736
  br label %1621

1619:                                             ; preds = %1611, %1607
  %1620 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1605, i32 noundef %293) #25
  br label %1621

1621:                                             ; preds = %1619, %1614
  %1622 = phi i32 [ %1618, %1614 ], [ %1620, %1619 ]
  %1623 = and i32 %1622, 31
  store i32 %1623, ptr %1519, align 4, !tbaa !933
  br label %1624

1624:                                             ; preds = %1586, %1601, %1555, %1602, %1621
  %1625 = phi ptr [ %1603, %1621 ], [ %1603, %1602 ], [ %519, %1555 ], [ %519, %1601 ], [ %519, %1586 ]
  %1626 = phi ptr [ %1604, %1621 ], [ %1604, %1602 ], [ %274, %1555 ], [ %274, %1601 ], [ %274, %1586 ]
  %1627 = phi ptr [ %260, %1621 ], [ %260, %1602 ], [ %260, %1555 ], [ %260, %1601 ], [ %1587, %1586 ]
  %1628 = add nuw nsw i32 %261, 1
  %1629 = icmp ult i32 %1628, %213
  br i1 %1629, label %259, label %1632, !prof !939, !llvm.loop !940

1630:                                             ; preds = %1246, %1243
  %1631 = icmp ult i32 %261, %213
  br i1 %1631, label %273, label %1709, !prof !939, !llvm.loop !940

1632:                                             ; preds = %1624
  %1633 = icmp eq ptr %1626, null
  br i1 %1633, label %1709, label %1634, !prof !941

1634:                                             ; preds = %1632
  %1635 = icmp eq ptr %1625, null
  br i1 %1635, label %1636, label %1709, !prof !942

1636:                                             ; preds = %1634
  %1637 = load ptr, ptr %212, align 8, !tbaa !757
  %1638 = icmp eq ptr %1637, null
  %1639 = icmp ne i32 %339, 0
  %1640 = select i1 %1638, i1 true, i1 %1639
  br i1 %1640, label %1709, label %1641, !prof !943

1641:                                             ; preds = %1636
  %1642 = getelementptr inbounds %struct.rtx_def, ptr %1637, i64 0, i32 1
  %1643 = load ptr, ptr %1642, align 8, !tbaa !420
  %1644 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1626, ptr noundef %1643) #23
  %1645 = icmp eq i32 %1644, 0
  br i1 %1645, label %1646, label %1709, !prof !878

1646:                                             ; preds = %1641
  %1647 = getelementptr inbounds %struct.set, ptr %212, i64 0, i32 2
  %1648 = load ptr, ptr %1647, align 8, !tbaa !797
  %1649 = load ptr, ptr %212, align 8, !tbaa !757
  %1650 = getelementptr inbounds %struct.rtx_def, ptr %1649, i64 0, i32 1
  %1651 = load ptr, ptr %1650, align 8, !tbaa !420
  %1652 = load i32, ptr %1651, align 8
  %1653 = and i32 %1652, 65535
  %1654 = icmp eq i32 %1653, 40
  br i1 %1654, label %1655, label %1661, !prof !813

1655:                                             ; preds = %1646
  %1656 = getelementptr inbounds %struct.rtx_def, ptr %1651, i64 0, i32 1
  %1657 = load ptr, ptr %1656, align 8, !tbaa !420
  %1658 = getelementptr inbounds %struct.rtx_def, ptr %1657, i64 0, i32 1
  %1659 = load ptr, ptr %1658, align 8, !tbaa !420
  %1660 = load i32, ptr %1659, align 8
  br label %1661

1661:                                             ; preds = %1655, %1646
  %1662 = phi ptr [ null, %1655 ], [ %1648, %1646 ]
  %1663 = phi i32 [ %1660, %1655 ], [ %1652, %1646 ]
  %1664 = lshr i32 %1663, 16
  %1665 = and i32 %1664, 255
  %1666 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %1626, ptr noundef %1662, i32 noundef 0) #25, !range !481
  %1667 = icmp eq i32 %1666, 0
  br i1 %1667, label %1685, label %1668, !prof !878

1668:                                             ; preds = %1661
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %1626) #25
  %1669 = load i32, ptr %1626, align 8
  %1670 = and i32 %1669, 65535
  %1671 = icmp eq i32 %1670, 37
  br i1 %1671, label %1672, label %1680

1672:                                             ; preds = %1668
  %1673 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1626) #25
  %1674 = icmp ugt i32 %1673, 52
  br i1 %1674, label %1675, label %1680

1675:                                             ; preds = %1672
  %1676 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1673) #25
  %1677 = getelementptr inbounds %struct.cse_reg_info, ptr %1676, i64 0, i32 1
  %1678 = load i32, ptr %1677, align 4, !tbaa !425
  %1679 = add i32 %1678, 4736
  br label %1682

1680:                                             ; preds = %1672, %1668
  %1681 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1626, i32 noundef %1665) #25
  br label %1682

1682:                                             ; preds = %1680, %1675
  %1683 = phi i32 [ %1679, %1675 ], [ %1681, %1680 ]
  %1684 = and i32 %1683, 31
  br label %1685

1685:                                             ; preds = %1682, %1661
  %1686 = phi i32 [ %1684, %1682 ], [ %520, %1661 ]
  %1687 = tail call fastcc ptr @insert(ptr noundef nonnull %1626, ptr noundef %1662, i32 noundef %1686, i32 noundef %1665) #25
  %1688 = trunc i32 %338 to i8
  %1689 = getelementptr inbounds %struct.table_elt, ptr %1687, i64 0, i32 11
  store i8 %1688, ptr %1689, align 1, !tbaa !732
  %1690 = zext nneg i32 %213 to i64
  br label %1691

1691:                                             ; preds = %1685, %1706
  %1692 = phi i64 [ 0, %1685 ], [ %1707, %1706 ]
  %1693 = getelementptr inbounds %struct.set, ptr %212, i64 %1692
  %1694 = load ptr, ptr %1693, align 8, !tbaa !757
  %1695 = icmp eq ptr %1694, null
  br i1 %1695, label %1706, label %1696, !prof !813

1696:                                             ; preds = %1691
  %1697 = getelementptr inbounds %struct.set, ptr %212, i64 %1692, i32 2
  %1698 = load ptr, ptr %1697, align 8, !tbaa !797
  %1699 = icmp eq ptr %1698, null
  br i1 %1699, label %1700, label %1706, !prof !878

1700:                                             ; preds = %1696
  %1701 = getelementptr inbounds %struct.rtx_def, ptr %1694, i64 0, i32 1, i32 0, i32 0, i64 1
  %1702 = load ptr, ptr %1701, align 8, !tbaa !420
  %1703 = tail call i32 @rtx_equal_p(ptr noundef %1702, ptr noundef nonnull %1626) #23
  %1704 = icmp eq i32 %1703, 0
  br i1 %1704, label %1706, label %1705, !prof !878

1705:                                             ; preds = %1700
  store ptr %1687, ptr %1697, align 8, !tbaa !797
  br label %1706

1706:                                             ; preds = %1691, %1696, %1700, %1705
  %1707 = add nuw nsw i64 %1692, 1
  %1708 = icmp eq i64 %1707, %1690
  br i1 %1708, label %1709, label %1691, !prof !944, !llvm.loop !945

1709:                                             ; preds = %1630, %1706, %1632, %1634, %1636, %1641
  %1710 = phi ptr [ null, %1636 ], [ null, %1641 ], [ %1625, %1634 ], [ %1625, %1632 ], [ %1687, %1706 ], [ null, %1630 ]
  %1711 = phi i32 [ %520, %1636 ], [ %520, %1641 ], [ %520, %1634 ], [ %520, %1632 ], [ %1686, %1706 ], [ 0, %1630 ]
  %1712 = phi ptr [ %1627, %1636 ], [ %1627, %1641 ], [ %1627, %1634 ], [ %1627, %1632 ], [ %1627, %1706 ], [ %260, %1630 ]
  %1713 = zext nneg i32 %213 to i64
  br label %1716

1714:                                             ; preds = %1815
  %1715 = zext nneg i32 %213 to i64
  br label %1818

1716:                                             ; preds = %1709, %1815
  %1717 = phi i64 [ 0, %1709 ], [ %1816, %1815 ]
  %1718 = getelementptr inbounds %struct.set, ptr %212, i64 %1717
  %1719 = load ptr, ptr %1718, align 8, !tbaa !757
  %1720 = icmp eq ptr %1719, null
  br i1 %1720, label %1810, label %1721, !prof !946

1721:                                             ; preds = %1716
  %1722 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 7
  %1723 = load i8, ptr %1722, align 1, !tbaa !791
  %1724 = icmp eq i8 %1723, 0
  br i1 %1724, label %1725, label %1810, !prof !947

1725:                                             ; preds = %1721
  %1726 = getelementptr inbounds %struct.rtx_def, ptr %1719, i64 0, i32 1
  %1727 = getelementptr inbounds %struct.rtx_def, ptr %1719, i64 0, i32 1, i32 0, i32 0, i64 1
  %1728 = load ptr, ptr %1727, align 8, !tbaa !420
  %1729 = load ptr, ptr %1726, align 8, !tbaa !420
  %1730 = tail call i32 @rtx_equal_p(ptr noundef %1728, ptr noundef %1729) #23
  %1731 = icmp eq i32 %1730, 0
  br i1 %1731, label %1732, label %1810, !prof !948

1732:                                             ; preds = %1725
  %1733 = load ptr, ptr %1718, align 8, !tbaa !757
  %1734 = getelementptr inbounds %struct.rtx_def, ptr %1733, i64 0, i32 1
  %1735 = load ptr, ptr %1734, align 8, !tbaa !420
  %1736 = load i32, ptr %1735, align 8
  %1737 = and i32 %1736, 65535
  %1738 = icmp eq i32 %1737, 40
  br i1 %1738, label %1739, label %1742, !prof !949

1739:                                             ; preds = %1732
  %1740 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 2
  store ptr %1710, ptr %1740, align 8, !tbaa !797
  %1741 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 3
  store i32 %1711, ptr %1741, align 8, !tbaa !790
  br label %1815

1742:                                             ; preds = %1732
  %1743 = icmp eq ptr %1710, null
  %1744 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 1
  %1745 = load ptr, ptr %1744, align 8, !tbaa !787
  %1746 = load i32, ptr %1745, align 8
  %1747 = lshr i32 %1746, 16
  %1748 = and i32 %1747, 255
  %1749 = icmp eq i32 %1748, 0
  %1750 = lshr i32 %1736, 16
  %1751 = and i32 %1750, 255
  %1752 = select i1 %1749, i32 %1751, i32 %1748, !prof !950
  br i1 %1743, label %1753, label %1756, !prof !951

1753:                                             ; preds = %1742
  %1754 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 11
  %1755 = load ptr, ptr %1754, align 8, !tbaa !818
  br label %1756

1756:                                             ; preds = %1753, %1742
  %1757 = phi ptr [ %1710, %1742 ], [ %1755, %1753 ]
  %1758 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 2
  %1759 = load ptr, ptr %1758, align 8, !tbaa !797
  %1760 = icmp eq ptr %1759, null
  br i1 %1760, label %1761, label %1791, !prof !952

1761:                                             ; preds = %1756
  %1762 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %1745, ptr noundef %1757, i32 noundef 0) #25, !range !481
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1764, label %1767, !prof !953

1764:                                             ; preds = %1761
  %1765 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 3
  %1766 = load i32, ptr %1765, align 8, !tbaa !790
  br label %1785

1767:                                             ; preds = %1761
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %1745) #25
  %1768 = load i32, ptr %1745, align 8
  %1769 = and i32 %1768, 65535
  %1770 = icmp eq i32 %1769, 37
  br i1 %1770, label %1771, label %1779, !prof !954

1771:                                             ; preds = %1767
  %1772 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1745) #25
  %1773 = icmp ugt i32 %1772, 52
  br i1 %1773, label %1774, label %1779, !prof !955

1774:                                             ; preds = %1771
  %1775 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1772) #25
  %1776 = getelementptr inbounds %struct.cse_reg_info, ptr %1775, i64 0, i32 1
  %1777 = load i32, ptr %1776, align 4, !tbaa !425
  %1778 = add i32 %1777, 4736
  br label %1781

1779:                                             ; preds = %1771, %1767
  %1780 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1745, i32 noundef %1752) #25
  br label %1781

1781:                                             ; preds = %1779, %1774
  %1782 = phi i32 [ %1778, %1774 ], [ %1780, %1779 ]
  %1783 = and i32 %1782, 31
  %1784 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 3
  store i32 %1783, ptr %1784, align 8, !tbaa !790
  br label %1785

1785:                                             ; preds = %1764, %1781
  %1786 = phi i32 [ %1766, %1764 ], [ %1783, %1781 ]
  %1787 = tail call fastcc ptr @insert(ptr noundef nonnull %1745, ptr noundef %1757, i32 noundef %1786, i32 noundef %1752) #25
  %1788 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 6
  %1789 = load i8, ptr %1788, align 8, !tbaa !792
  %1790 = getelementptr inbounds %struct.table_elt, ptr %1787, i64 0, i32 11
  store i8 %1789, ptr %1790, align 1, !tbaa !732
  store ptr %1787, ptr %1758, align 8, !tbaa !797
  br label %1791

1791:                                             ; preds = %1785, %1756
  %1792 = phi ptr [ %1787, %1785 ], [ %1757, %1756 ]
  %1793 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 9
  %1794 = load ptr, ptr %1793, align 8, !tbaa !817
  %1795 = icmp eq ptr %1794, null
  br i1 %1795, label %1815, label %1796, !prof !956

1796:                                             ; preds = %1791
  %1797 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 11
  %1798 = load ptr, ptr %1797, align 8, !tbaa !818
  %1799 = icmp ne ptr %1798, null
  %1800 = icmp eq ptr %1745, %1794
  %1801 = or i1 %1800, %1799
  br i1 %1801, label %1815, label %1802, !prof !957

1802:                                             ; preds = %1796
  %1803 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1794, ptr noundef nonnull %1745) #23
  %1804 = icmp eq i32 %1803, 0
  br i1 %1804, label %1805, label %1815

1805:                                             ; preds = %1802
  %1806 = load ptr, ptr %1793, align 8, !tbaa !817
  %1807 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 10
  %1808 = load i32, ptr %1807, align 8, !tbaa !816
  %1809 = tail call fastcc ptr @insert(ptr noundef %1806, ptr noundef %1792, i32 noundef %1808, i32 noundef %1752) #25
  store ptr %1809, ptr %1758, align 8, !tbaa !797
  br label %1815

1810:                                             ; preds = %1725, %1721, %1716
  %1811 = getelementptr inbounds %struct.set, ptr %212, i64 %1717, i32 2
  %1812 = load ptr, ptr %1811, align 8, !tbaa !797
  %1813 = icmp eq ptr %1812, null
  br i1 %1813, label %1814, label %1815, !prof !958

1814:                                             ; preds = %1810
  store ptr %1710, ptr %1811, align 8, !tbaa !797
  br label %1815

1815:                                             ; preds = %1791, %1796, %1802, %1805, %1739, %1814, %1810
  %1816 = add nuw nsw i64 %1717, 1
  %1817 = icmp eq i64 %1816, %1713
  br i1 %1817, label %1714, label %1716, !prof !781, !llvm.loop !959

1818:                                             ; preds = %1714, %1900
  %1819 = phi i64 [ 0, %1714 ], [ %1901, %1900 ]
  %1820 = getelementptr inbounds %struct.set, ptr %212, i64 %1819
  %1821 = load ptr, ptr %1820, align 8, !tbaa !757
  %1822 = icmp eq ptr %1821, null
  br i1 %1822, label %1900, label %1823, !prof !946

1823:                                             ; preds = %1818
  %1824 = getelementptr inbounds %struct.set, ptr %212, i64 %1819, i32 5
  %1825 = load ptr, ptr %1824, align 8, !tbaa !929
  %1826 = load i32, ptr %1825, align 8
  %1827 = and i32 %1826, 65535
  %1828 = icmp eq i32 %1827, 43
  br i1 %1828, label %1829, label %1897, !prof !960

1829:                                             ; preds = %1823
  %1830 = getelementptr inbounds %struct.rtx_def, ptr %1825, i64 0, i32 1
  %1831 = load ptr, ptr %1830, align 8, !tbaa !420
  %1832 = load i32, ptr %1831, align 8
  %1833 = lshr i32 %1832, 16
  %1834 = and i32 %1833, 255
  %1835 = and i32 %1832, 65535
  %1836 = icmp eq i32 %1835, 37
  br i1 %1836, label %1837, label %1845, !prof !961

1837:                                             ; preds = %1829
  %1838 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1831) #25
  %1839 = icmp ugt i32 %1838, 52
  br i1 %1839, label %1840, label %1845, !prof !962

1840:                                             ; preds = %1837
  %1841 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1838) #25
  %1842 = getelementptr inbounds %struct.cse_reg_info, ptr %1841, i64 0, i32 1
  %1843 = load i32, ptr %1842, align 4, !tbaa !425
  %1844 = add i32 %1843, 4736
  br label %1847

1845:                                             ; preds = %1837, %1829
  %1846 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1831, i32 noundef %1834) #25
  br label %1847

1847:                                             ; preds = %1845, %1840
  %1848 = phi i32 [ %1844, %1840 ], [ %1846, %1845 ]
  %1849 = and i32 %1848, 31
  %1850 = tail call fastcc ptr @lookup(ptr noundef nonnull %1831, i32 noundef %1849, i32 noundef %1834) #25
  %1851 = icmp eq ptr %1850, null
  br i1 %1851, label %1852, label %1897, !prof !963

1852:                                             ; preds = %1847
  %1853 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %1831, ptr noundef null, i32 noundef 0) #25, !range !481
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1894, label %1855, !prof !964

1855:                                             ; preds = %1852
  %1856 = load ptr, ptr %1820, align 8, !tbaa !757
  %1857 = getelementptr inbounds %struct.rtx_def, ptr %1856, i64 0, i32 1
  %1858 = load ptr, ptr %1857, align 8, !tbaa !420
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %1831) #25
  %1859 = load i32, ptr %1831, align 8
  %1860 = and i32 %1859, 65535
  %1861 = icmp eq i32 %1860, 37
  br i1 %1861, label %1862, label %1870, !prof !965

1862:                                             ; preds = %1855
  %1863 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1831) #25
  %1864 = icmp ugt i32 %1863, 52
  br i1 %1864, label %1865, label %1870, !prof !966

1865:                                             ; preds = %1862
  %1866 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1863) #25
  %1867 = getelementptr inbounds %struct.cse_reg_info, ptr %1866, i64 0, i32 1
  %1868 = load i32, ptr %1867, align 4, !tbaa !425
  %1869 = add i32 %1868, 4736
  br label %1872

1870:                                             ; preds = %1862, %1855
  %1871 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1831, i32 noundef %1834) #25
  br label %1872

1872:                                             ; preds = %1870, %1865
  %1873 = phi i32 [ %1869, %1865 ], [ %1871, %1870 ]
  %1874 = and i32 %1873, 31
  %1875 = load i32, ptr %1858, align 8
  %1876 = and i32 %1875, 65535
  %1877 = icmp eq i32 %1876, 37
  br i1 %1877, label %1878, label %1886, !prof !966

1878:                                             ; preds = %1872
  %1879 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1858) #25
  %1880 = icmp ugt i32 %1879, 52
  br i1 %1880, label %1881, label %1886

1881:                                             ; preds = %1878
  %1882 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1879) #25
  %1883 = getelementptr inbounds %struct.cse_reg_info, ptr %1882, i64 0, i32 1
  %1884 = load i32, ptr %1883, align 4, !tbaa !425
  %1885 = add i32 %1884, 4736
  br label %1890

1886:                                             ; preds = %1878, %1872
  %1887 = lshr i32 %1875, 16
  %1888 = and i32 %1887, 255
  %1889 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1858, i32 noundef %1888) #25
  br label %1890

1890:                                             ; preds = %1886, %1881
  %1891 = phi i32 [ %1885, %1881 ], [ %1889, %1886 ]
  %1892 = and i32 %1891, 31
  %1893 = getelementptr inbounds %struct.set, ptr %212, i64 %1819, i32 4
  store i32 %1892, ptr %1893, align 4, !tbaa !933
  br label %1894

1894:                                             ; preds = %1890, %1852
  %1895 = phi i32 [ %1874, %1890 ], [ %1849, %1852 ]
  %1896 = tail call fastcc ptr @insert(ptr noundef nonnull %1831, ptr noundef null, i32 noundef %1895, i32 noundef %1834) #25
  br label %1897

1897:                                             ; preds = %1823, %1847, %1894
  %1898 = phi ptr [ %1850, %1847 ], [ %1896, %1894 ], [ null, %1823 ]
  %1899 = getelementptr inbounds %struct.set, ptr %212, i64 %1819, i32 12
  store ptr %1898, ptr %1899, align 8, !tbaa !967
  br label %1900

1900:                                             ; preds = %1897, %1818
  %1901 = add nuw nsw i64 %1819, 1
  %1902 = icmp eq i64 %1901, %1715
  br i1 %1902, label %1903, label %1818, !prof !781, !llvm.loop !968

1903:                                             ; preds = %1900, %253
  %1904 = phi ptr [ %0, %253 ], [ %1712, %1900 ]
  %1905 = phi i1 [ false, %253 ], [ true, %1900 ]
  %1906 = phi ptr [ %254, %253 ], [ %212, %1900 ]
  %1907 = phi i32 [ %255, %253 ], [ %213, %1900 ]
  %1908 = phi i1 [ false, %253 ], [ %214, %1900 ]
  tail call fastcc void @invalidate_from_clobbers(ptr noundef nonnull %3) #25
  %1909 = load i32, ptr %1904, align 8
  %1910 = and i32 %1909, 65535
  %1911 = icmp eq i32 %1910, 10
  br i1 %1911, label %1912, label %1917, !prof !753

1912:                                             ; preds = %1903
  %1913 = and i32 %1909, -2080374784
  %1914 = icmp eq i32 %1913, 0
  br i1 %1914, label %1915, label %1916, !prof !969

1915:                                             ; preds = %1912
  tail call fastcc void @invalidate_memory() #25
  br label %1916

1916:                                             ; preds = %1915, %1912
  tail call fastcc void @invalidate_for_call() #25
  br label %1917

1917:                                             ; preds = %1916, %1903
  br i1 %1905, label %1918, label %1940, !prof !970

1918:                                             ; preds = %1917
  %1919 = zext nneg i32 %1907 to i64
  br label %1920

1920:                                             ; preds = %1918, %1937
  %1921 = phi i64 [ 0, %1918 ], [ %1938, %1937 ]
  %1922 = getelementptr inbounds %struct.set, ptr %1906, i64 %1921
  %1923 = load ptr, ptr %1922, align 8, !tbaa !757
  %1924 = icmp eq ptr %1923, null
  br i1 %1924, label %1937, label %1925, !prof !946

1925:                                             ; preds = %1920
  %1926 = getelementptr inbounds %struct.rtx_def, ptr %1923, i64 0, i32 1
  %1927 = load ptr, ptr %1926, align 8, !tbaa !420
  %1928 = load i32, ptr %1927, align 8
  %1929 = trunc i32 %1928 to i16
  switch i16 %1929, label %1937 [
    i16 37, label %1930
    i16 39, label %1930
    i16 43, label %1931
    i16 40, label %1932
    i16 120, label %1932
  ], !prof !971

1930:                                             ; preds = %1925, %1925
  tail call fastcc void @invalidate(ptr noundef nonnull %1927, i32 noundef 0) #25
  br label %1937

1931:                                             ; preds = %1925
  tail call fastcc void @invalidate(ptr noundef nonnull %1927, i32 noundef 0) #25
  br label %1937

1932:                                             ; preds = %1925, %1925
  %1933 = getelementptr inbounds %struct.rtx_def, ptr %1927, i64 0, i32 1
  %1934 = load ptr, ptr %1933, align 8, !tbaa !420
  %1935 = lshr i32 %1928, 16
  %1936 = and i32 %1935, 255
  tail call fastcc void @invalidate(ptr noundef %1934, i32 noundef %1936) #25
  br label %1937

1937:                                             ; preds = %1930, %1932, %1931, %1925, %1920
  %1938 = add nuw nsw i64 %1921, 1
  %1939 = icmp eq i64 %1938, %1919
  br i1 %1939, label %1940, label %1920, !prof !781, !llvm.loop !972

1940:                                             ; preds = %1937, %1917
  %1941 = load i32, ptr %1904, align 8
  %1942 = and i32 %1941, 65535
  %1943 = icmp eq i32 %1942, 8
  br i1 %1943, label %1944, label %1955, !prof !973

1944:                                             ; preds = %1940
  %1945 = getelementptr inbounds %struct.rtx_def, ptr %1904, i64 1
  %1946 = load ptr, ptr %1945, align 8, !tbaa !420
  %1947 = load i32, ptr %1946, align 8
  %1948 = and i32 %1947, 65535
  %1949 = icmp eq i32 %1948, 17
  br i1 %1949, label %1950, label %1955, !prof !974

1950:                                             ; preds = %1944
  %1951 = and i32 %1947, 134217728
  %1952 = icmp eq i32 %1951, 0
  br i1 %1952, label %1955, label %1953

1953:                                             ; preds = %1950
  tail call fastcc void @flush_hash_table() #25
  %1954 = load i32, ptr %1904, align 8
  br label %1955

1955:                                             ; preds = %1953, %1950, %1944, %1940
  %1956 = phi i32 [ %1954, %1953 ], [ %1941, %1950 ], [ %1941, %1944 ], [ %1941, %1940 ]
  %1957 = and i32 %1956, 65535
  %1958 = icmp eq i32 %1957, 10
  br i1 %1958, label %1959, label %1963, !prof !753

1959:                                             ; preds = %1955
  %1960 = tail call ptr @find_reg_note(ptr noundef nonnull %1904, i32 noundef 30, ptr noundef null) #23
  %1961 = icmp eq ptr %1960, null
  br i1 %1961, label %1963, label %1962, !prof !975

1962:                                             ; preds = %1959
  tail call fastcc void @flush_hash_table() #25
  br label %2423

1963:                                             ; preds = %1959, %1955
  br i1 %1905, label %1964, label %2312, !prof !970

1964:                                             ; preds = %1963
  %1965 = zext nneg i32 %1907 to i64
  br label %1969

1966:                                             ; preds = %2006
  br i1 %1905, label %1967, label %2312, !prof !563

1967:                                             ; preds = %1966
  %1968 = zext nneg i32 %1907 to i64
  br label %2012

1969:                                             ; preds = %1964, %2006
  %1970 = phi i64 [ 0, %1964 ], [ %2007, %2006 ]
  %1971 = getelementptr inbounds %struct.set, ptr %1906, i64 %1970
  %1972 = load ptr, ptr %1971, align 8, !tbaa !757
  %1973 = icmp eq ptr %1972, null
  br i1 %1973, label %2006, label %1974, !prof !946

1974:                                             ; preds = %1969
  %1975 = getelementptr inbounds %struct.rtx_def, ptr %1972, i64 0, i32 1
  %1976 = load ptr, ptr %1975, align 8, !tbaa !420
  %1977 = load i32, ptr %1976, align 8
  %1978 = and i32 %1977, 65535
  %1979 = icmp eq i32 %1978, 37
  br i1 %1979, label %1982, label %1980, !prof !976

1980:                                             ; preds = %1974
  %1981 = tail call fastcc i32 @mention_regs(ptr noundef nonnull %1976) #25, !range !481
  br label %2006

1982:                                             ; preds = %1974
  %1983 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1976) #25
  %1984 = icmp ult i32 %1983, 53
  br i1 %1984, label %1985, label %1989, !prof !977

1985:                                             ; preds = %1982
  %1986 = lshr i32 %1977, 16
  %1987 = and i32 %1986, 255
  %1988 = tail call fastcc i32 @end_hard_regno(i32 noundef %1987, i32 noundef %1983) #25
  br label %1991

1989:                                             ; preds = %1982
  %1990 = add i32 %1983, 1
  br label %1991

1991:                                             ; preds = %1989, %1985
  %1992 = phi i32 [ %1988, %1985 ], [ %1990, %1989 ]
  %1993 = icmp ult i32 %1983, %1992
  br i1 %1993, label %1994, label %2006, !prof !978

1994:                                             ; preds = %1991, %2003
  %1995 = phi i32 [ %2004, %2003 ], [ %1983, %1991 ]
  %1996 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1995) #25
  %1997 = getelementptr inbounds %struct.cse_reg_info, ptr %1996, i64 0, i32 3
  %1998 = load i32, ptr %1997, align 4, !tbaa !474
  %1999 = icmp sgt i32 %1998, -1
  br i1 %1999, label %2000, label %2003, !prof !979

2000:                                             ; preds = %1994
  tail call fastcc void @remove_invalid_refs(i32 noundef %1995) #25
  %2001 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1995) #25
  %2002 = getelementptr inbounds %struct.cse_reg_info, ptr %2001, i64 0, i32 3
  store i32 -1, ptr %2002, align 4, !tbaa !474
  br label %2003

2003:                                             ; preds = %1994, %2000
  %2004 = add i32 %1995, 1
  %2005 = icmp eq i32 %2004, %1992
  br i1 %2005, label %2006, label %1994, !prof !978, !llvm.loop !980

2006:                                             ; preds = %2003, %1991, %1980, %1969
  %2007 = add nuw nsw i64 %1970, 1
  %2008 = icmp eq i64 %2007, %1965
  br i1 %2008, label %1966, label %1969, !prof !781, !llvm.loop !981

2009:                                             ; preds = %2049
  br i1 %1905, label %2010, label %2312, !prof !563

2010:                                             ; preds = %2009
  %2011 = zext nneg i32 %1907 to i64
  br label %2052

2012:                                             ; preds = %1967, %2049
  %2013 = phi i64 [ 0, %1967 ], [ %2050, %2049 ]
  %2014 = getelementptr inbounds %struct.set, ptr %1906, i64 %2013
  %2015 = load ptr, ptr %2014, align 8, !tbaa !757
  %2016 = icmp eq ptr %2015, null
  br i1 %2016, label %2049, label %2017, !prof !946

2017:                                             ; preds = %2012
  %2018 = getelementptr inbounds %struct.set, ptr %1906, i64 %2013, i32 12
  %2019 = load ptr, ptr %2018, align 8, !tbaa !967
  %2020 = icmp eq ptr %2019, null
  br i1 %2020, label %2026, label %2021, !prof !976

2021:                                             ; preds = %2017
  %2022 = getelementptr inbounds %struct.table_elt, ptr %2019, i64 0, i32 6
  %2023 = load ptr, ptr %2022, align 8, !tbaa !800
  %2024 = icmp eq ptr %2023, null
  br i1 %2024, label %2025, label %2026, !prof !931

2025:                                             ; preds = %2021
  store ptr null, ptr %2014, align 8, !tbaa !757
  br label %2049

2026:                                             ; preds = %2021, %2017
  %2027 = getelementptr inbounds %struct.set, ptr %1906, i64 %2013, i32 2
  %2028 = load ptr, ptr %2027, align 8, !tbaa !797
  %2029 = icmp eq ptr %2028, null
  br i1 %2029, label %2049, label %2030, !prof !982

2030:                                             ; preds = %2026
  %2031 = getelementptr inbounds %struct.table_elt, ptr %2028, i64 0, i32 6
  %2032 = load ptr, ptr %2031, align 8, !tbaa !800
  %2033 = icmp eq ptr %2032, null
  br i1 %2033, label %2034, label %2049, !prof !983

2034:                                             ; preds = %2030, %2034
  %2035 = phi ptr [ %2037, %2034 ], [ %2028, %2030 ]
  %2036 = getelementptr inbounds %struct.table_elt, ptr %2035, i64 0, i32 5
  %2037 = load ptr, ptr %2036, align 8, !tbaa !984
  %2038 = icmp eq ptr %2037, null
  br i1 %2038, label %2039, label %2034, !prof !985, !llvm.loop !986

2039:                                             ; preds = %2034, %2044
  %2040 = phi ptr [ %2046, %2044 ], [ %2035, %2034 ]
  %2041 = getelementptr inbounds %struct.table_elt, ptr %2040, i64 0, i32 6
  %2042 = load ptr, ptr %2041, align 8, !tbaa !800
  %2043 = icmp eq ptr %2042, null
  br i1 %2043, label %2044, label %2048, !prof !987

2044:                                             ; preds = %2039
  %2045 = getelementptr inbounds %struct.table_elt, ptr %2040, i64 0, i32 4
  %2046 = load ptr, ptr %2045, align 8, !tbaa !871
  %2047 = icmp eq ptr %2046, null
  br i1 %2047, label %2048, label %2039, !prof !988, !llvm.loop !989

2048:                                             ; preds = %2039, %2044
  store ptr %2042, ptr %2027, align 8, !tbaa !797
  br label %2049

2049:                                             ; preds = %2012, %2026, %2030, %2048, %2025
  %2050 = add nuw nsw i64 %2013, 1
  %2051 = icmp eq i64 %2050, %1968
  br i1 %2051, label %2009, label %2012, !prof !781, !llvm.loop !990

2052:                                             ; preds = %2010, %2309
  %2053 = phi i64 [ 0, %2010 ], [ %2310, %2309 ]
  %2054 = getelementptr inbounds %struct.set, ptr %1906, i64 %2053
  %2055 = load ptr, ptr %2054, align 8, !tbaa !757
  %2056 = icmp eq ptr %2055, null
  br i1 %2056, label %2309, label %2057, !prof !946

2057:                                             ; preds = %2052
  %2058 = getelementptr inbounds %struct.rtx_def, ptr %2055, i64 0, i32 1
  %2059 = load ptr, ptr %2058, align 8, !tbaa !420
  %2060 = load i32, ptr @flag_float_store, align 4, !tbaa !416
  %2061 = icmp eq i32 %2060, 0
  %2062 = load i32, ptr %2059, align 8
  br i1 %2061, label %2072, label %2063, !prof !938

2063:                                             ; preds = %2057
  %2064 = and i32 %2062, 65535
  %2065 = icmp eq i32 %2064, 43
  br i1 %2065, label %2066, label %2072

2066:                                             ; preds = %2063
  %2067 = lshr i32 %2062, 16
  %2068 = and i32 %2067, 255
  %2069 = zext nneg i32 %2068 to i64
  %2070 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2069
  %2071 = load i8, ptr %2070, align 1, !tbaa !420
  switch i8 %2071, label %2072 [
    i8 8, label %2309
    i8 9, label %2309
    i8 11, label %2309
    i8 17, label %2309
  ]

2072:                                             ; preds = %2066, %2063, %2057
  %2073 = lshr i32 %2062, 16
  %2074 = and i32 %2073, 255
  %2075 = icmp eq i32 %2074, 1
  br i1 %2075, label %2309, label %2076, !prof !991

2076:                                             ; preds = %2072
  %2077 = getelementptr inbounds %struct.set, ptr %1906, i64 %2053, i32 2
  %2078 = load ptr, ptr %2077, align 8, !tbaa !797
  %2079 = icmp eq ptr %2078, null
  br i1 %2079, label %2309, label %2080, !prof !992

2080:                                             ; preds = %2076
  %2081 = trunc i32 %2062 to i16
  switch i16 %2081, label %2108 [
    i16 39, label %2082
    i16 40, label %2101
  ], !prof !993

2082:                                             ; preds = %2080
  %2083 = zext nneg i32 %2074 to i64
  %2084 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2083
  %2085 = load i8, ptr %2084, align 1, !tbaa !420
  %2086 = getelementptr inbounds %struct.rtx_def, ptr %2059, i64 0, i32 1
  %2087 = load ptr, ptr %2086, align 8, !tbaa !420
  %2088 = load i32, ptr %2087, align 8
  %2089 = lshr i32 %2088, 16
  %2090 = and i32 %2089, 255
  %2091 = zext nneg i32 %2090 to i64
  %2092 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2091
  %2093 = load i8, ptr %2092, align 1, !tbaa !420
  %2094 = icmp ugt i8 %2085, %2093
  br i1 %2094, label %2095, label %2111

2095:                                             ; preds = %2082
  %2096 = getelementptr inbounds %struct.set, ptr %1906, i64 %2053, i32 1
  %2097 = load ptr, ptr %2096, align 8, !tbaa !787
  %2098 = load i32, ptr %2097, align 8
  %2099 = and i32 %2098, 65534
  %2100 = icmp eq i32 %2099, 98
  br i1 %2100, label %2309, label %2111

2101:                                             ; preds = %2080
  %2102 = getelementptr inbounds %struct.rtx_def, ptr %2059, i64 0, i32 1
  %2103 = load ptr, ptr %2102, align 8, !tbaa !420
  %2104 = getelementptr inbounds %struct.rtx_def, ptr %2103, i64 0, i32 1
  %2105 = load ptr, ptr %2104, align 8, !tbaa !420
  %2106 = load i32, ptr %2105, align 8
  %2107 = trunc i32 %2106 to i16
  br label %2108

2108:                                             ; preds = %2080, %2101
  %2109 = phi i16 [ %2081, %2080 ], [ %2107, %2101 ]
  %2110 = phi ptr [ %2059, %2080 ], [ %2105, %2101 ]
  switch i16 %2109, label %2135 [
    i16 37, label %2111
    i16 39, label %2111
  ], !prof !994

2111:                                             ; preds = %2095, %2082, %2108, %2108
  %2112 = phi ptr [ %2110, %2108 ], [ %2110, %2108 ], [ %2059, %2082 ], [ %2059, %2095 ]
  %2113 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2112, ptr noundef nonnull %2078, i32 noundef 1) #25, !range !481
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %2135, label %2115, !prof !995

2115:                                             ; preds = %2111
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %2112) #25
  %2116 = load i32, ptr %2112, align 8
  %2117 = and i32 %2116, 65535
  %2118 = icmp eq i32 %2117, 37
  br i1 %2118, label %2119, label %2127, !prof !996

2119:                                             ; preds = %2115
  %2120 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2112) #25
  %2121 = icmp ugt i32 %2120, 52
  br i1 %2121, label %2122, label %2127, !prof !997

2122:                                             ; preds = %2119
  %2123 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2120) #25
  %2124 = getelementptr inbounds %struct.cse_reg_info, ptr %2123, i64 0, i32 1
  %2125 = load i32, ptr %2124, align 4, !tbaa !425
  %2126 = add i32 %2125, 4736
  br label %2131

2127:                                             ; preds = %2119, %2115
  %2128 = lshr i32 %2116, 16
  %2129 = and i32 %2128, 255
  %2130 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2112, i32 noundef %2129) #25
  br label %2131

2131:                                             ; preds = %2127, %2122
  %2132 = phi i32 [ %2126, %2122 ], [ %2130, %2127 ]
  %2133 = and i32 %2132, 31
  %2134 = getelementptr inbounds %struct.set, ptr %1906, i64 %2053, i32 4
  store i32 %2133, ptr %2134, align 4, !tbaa !933
  br label %2135

2135:                                             ; preds = %2108, %2111, %2131
  %2136 = phi ptr [ %2110, %2108 ], [ %2112, %2111 ], [ %2112, %2131 ]
  %2137 = load ptr, ptr %2077, align 8, !tbaa !797
  %2138 = getelementptr inbounds %struct.set, ptr %1906, i64 %2053, i32 4
  %2139 = load i32, ptr %2138, align 4, !tbaa !933
  %2140 = load i32, ptr %2136, align 8
  %2141 = lshr i32 %2140, 16
  %2142 = and i32 %2141, 255
  %2143 = tail call fastcc ptr @insert(ptr noundef nonnull %2136, ptr noundef %2137, i32 noundef %2139, i32 noundef %2142) #25
  %2144 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !842
  %2145 = icmp eq i64 %2144, 0
  br i1 %2145, label %2165, label %2146, !prof !998

2146:                                             ; preds = %2135
  %2147 = load i32, ptr %2136, align 8
  %2148 = and i32 %2147, 65535
  %2149 = icmp eq i32 %2148, 37
  br i1 %2149, label %2150, label %2165

2150:                                             ; preds = %2146
  %2151 = lshr i32 %2147, 16
  %2152 = and i32 %2151, 255
  %2153 = zext nneg i32 %2152 to i64
  %2154 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2153
  %2155 = load i8, ptr %2154, align 1, !tbaa !420
  %2156 = and i8 %2155, -2
  %2157 = icmp eq i8 %2156, 2
  br i1 %2157, label %2158, label %2165

2158:                                             ; preds = %2150
  %2159 = load ptr, ptr %2077, align 8, !tbaa !797
  %2160 = load ptr, ptr %2159, align 8, !tbaa !408
  %2161 = load i32, ptr %2160, align 8
  %2162 = and i32 %2161, 65535
  %2163 = icmp eq i32 %2162, 30
  br i1 %2163, label %2164, label %2165

2164:                                             ; preds = %2158
  tail call fastcc void @insert_const_anchors(ptr noundef nonnull %2136, ptr noundef nonnull %2160, i32 noundef %2152) #25
  br label %2165

2165:                                             ; preds = %2150, %2164, %2158, %2146, %2135
  %2166 = getelementptr inbounds %struct.set, ptr %1906, i64 %2053, i32 5
  %2167 = load ptr, ptr %2166, align 8, !tbaa !929
  %2168 = load i32, ptr %2167, align 8
  %2169 = and i32 %2168, 67174399
  %2170 = icmp eq i32 %2169, 43
  %2171 = zext i1 %2170 to i8
  %2172 = getelementptr inbounds %struct.table_elt, ptr %2143, i64 0, i32 11
  store i8 %2171, ptr %2172, align 1, !tbaa !732
  %2173 = load i32, ptr %2136, align 8
  %2174 = and i32 %2173, 65535
  %2175 = icmp eq i32 %2174, 39
  br i1 %2175, label %2176, label %2309, !prof !999

2176:                                             ; preds = %2165
  %2177 = getelementptr inbounds %struct.rtx_def, ptr %2136, i64 0, i32 1
  %2178 = load ptr, ptr %2177, align 8, !tbaa !420
  %2179 = load i32, ptr %2178, align 8
  %2180 = lshr i32 %2179, 16
  %2181 = and i32 %2180, 255
  %2182 = zext nneg i32 %2181 to i64
  %2183 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2182
  %2184 = load i8, ptr %2183, align 1, !tbaa !420
  %2185 = zext i8 %2184 to i16
  %2186 = add nsw i16 %2185, -1
  %2187 = sdiv i16 %2186, 4
  %2188 = lshr i32 %2173, 16
  %2189 = and i32 %2188, 255
  %2190 = zext nneg i32 %2189 to i64
  %2191 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2190
  %2192 = load i8, ptr %2191, align 1, !tbaa !420
  %2193 = zext i8 %2192 to i16
  %2194 = add nsw i16 %2193, -1
  %2195 = sdiv i16 %2194, 4
  %2196 = icmp ne i16 %2187, %2195
  %2197 = icmp ult i8 %2192, %2184
  %2198 = or i1 %2197, %2196
  br i1 %2198, label %2309, label %2199

2199:                                             ; preds = %2176
  %2200 = load ptr, ptr %2077, align 8, !tbaa !797
  %2201 = icmp eq ptr %2200, null
  br i1 %2201, label %2309, label %2202

2202:                                             ; preds = %2199
  %2203 = getelementptr inbounds %struct.table_elt, ptr %2200, i64 0, i32 6
  %2204 = load ptr, ptr %2203, align 8, !tbaa !404
  %2205 = icmp eq ptr %2204, null
  br i1 %2205, label %2309, label %2206

2206:                                             ; preds = %2202, %2304
  %2207 = phi ptr [ %2307, %2304 ], [ %2204, %2202 ]
  %2208 = phi ptr [ %2305, %2304 ], [ null, %2202 ]
  %2209 = load ptr, ptr %2207, align 8, !tbaa !408
  %2210 = load i32, ptr %2209, align 8
  %2211 = and i32 %2210, 65535
  %2212 = icmp eq i32 %2211, 37
  br i1 %2212, label %2219, label %2213

2213:                                             ; preds = %2206
  %2214 = tail call i32 @exp_equiv_p(ptr noundef nonnull %2209, ptr noundef nonnull %2209, i32 noundef 1, i8 noundef zeroext 0) #25, !range !481
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2304, label %2216

2216:                                             ; preds = %2213
  %2217 = load ptr, ptr %2207, align 8, !tbaa !408
  %2218 = load i32, ptr %2217, align 8
  br label %2219

2219:                                             ; preds = %2216, %2206
  %2220 = phi i32 [ %2218, %2216 ], [ %2210, %2206 ]
  %2221 = phi ptr [ %2217, %2216 ], [ %2209, %2206 ]
  %2222 = lshr i32 %2220, 16
  %2223 = and i32 %2222, 255
  %2224 = icmp eq i32 %2223, %2181
  br i1 %2224, label %2233, label %2225

2225:                                             ; preds = %2219
  %2226 = load i32, ptr %2136, align 8
  %2227 = lshr i32 %2226, 16
  %2228 = and i32 %2227, 255
  %2229 = tail call ptr @simplify_gen_subreg(i32 noundef %2181, ptr noundef nonnull %2221, i32 noundef %2228, i32 noundef 0) #23
  %2230 = icmp eq ptr %2229, null
  br i1 %2230, label %2304, label %2231

2231:                                             ; preds = %2225
  %2232 = load i32, ptr %2229, align 8
  br label %2233

2233:                                             ; preds = %2231, %2219
  %2234 = phi i32 [ %2232, %2231 ], [ %2220, %2219 ]
  %2235 = phi ptr [ %2229, %2231 ], [ %2221, %2219 ]
  %2236 = and i32 %2234, 65535
  %2237 = icmp eq i32 %2236, 37
  br i1 %2237, label %2238, label %2246

2238:                                             ; preds = %2233
  %2239 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2235) #25
  %2240 = icmp ugt i32 %2239, 52
  br i1 %2240, label %2241, label %2246

2241:                                             ; preds = %2238
  %2242 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2239) #25
  %2243 = getelementptr inbounds %struct.cse_reg_info, ptr %2242, i64 0, i32 1
  %2244 = load i32, ptr %2243, align 4, !tbaa !425
  %2245 = add i32 %2244, 4736
  br label %2248

2246:                                             ; preds = %2238, %2233
  %2247 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2235, i32 noundef %2181) #25
  br label %2248

2248:                                             ; preds = %2246, %2241
  %2249 = phi i32 [ %2245, %2241 ], [ %2247, %2246 ]
  %2250 = and i32 %2249, 31
  %2251 = tail call fastcc ptr @lookup(ptr noundef nonnull %2235, i32 noundef %2250, i32 noundef %2181) #25
  %2252 = icmp eq ptr %2251, null
  br i1 %2252, label %2253, label %2279

2253:                                             ; preds = %2248
  %2254 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2235, ptr noundef %2208, i32 noundef 0) #25, !range !481
  %2255 = icmp eq i32 %2254, 0
  br i1 %2255, label %2273, label %2256

2256:                                             ; preds = %2253
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %2235) #25
  %2257 = load i32, ptr %2235, align 8
  %2258 = and i32 %2257, 65535
  %2259 = icmp eq i32 %2258, 37
  br i1 %2259, label %2260, label %2268

2260:                                             ; preds = %2256
  %2261 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2235) #25
  %2262 = icmp ugt i32 %2261, 52
  br i1 %2262, label %2263, label %2268

2263:                                             ; preds = %2260
  %2264 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2261) #25
  %2265 = getelementptr inbounds %struct.cse_reg_info, ptr %2264, i64 0, i32 1
  %2266 = load i32, ptr %2265, align 4, !tbaa !425
  %2267 = add i32 %2266, 4736
  br label %2270

2268:                                             ; preds = %2260, %2256
  %2269 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2235, i32 noundef %2181) #25
  br label %2270

2270:                                             ; preds = %2268, %2263
  %2271 = phi i32 [ %2267, %2263 ], [ %2269, %2268 ]
  %2272 = and i32 %2271, 31
  br label %2273

2273:                                             ; preds = %2270, %2253
  %2274 = phi i32 [ %2272, %2270 ], [ %2250, %2253 ]
  %2275 = tail call fastcc ptr @insert(ptr noundef nonnull %2235, ptr noundef %2208, i32 noundef %2274, i32 noundef %2181) #25
  %2276 = getelementptr inbounds %struct.table_elt, ptr %2207, i64 0, i32 11
  %2277 = load i8, ptr %2276, align 1, !tbaa !732
  %2278 = getelementptr inbounds %struct.table_elt, ptr %2275, i64 0, i32 11
  store i8 %2277, ptr %2278, align 1, !tbaa !732
  br label %2286

2279:                                             ; preds = %2248
  %2280 = icmp eq ptr %2208, null
  br i1 %2280, label %2286, label %2281

2281:                                             ; preds = %2279
  %2282 = getelementptr inbounds %struct.table_elt, ptr %2251, i64 0, i32 6
  %2283 = load ptr, ptr %2282, align 8, !tbaa !800
  %2284 = icmp eq ptr %2208, %2283
  br i1 %2284, label %2286, label %2285

2285:                                             ; preds = %2281
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %2251, ptr noundef nonnull %2208) #25
  br label %2286

2286:                                             ; preds = %2279, %2281, %2285, %2273
  %2287 = phi ptr [ %2275, %2273 ], [ %2251, %2285 ], [ %2251, %2281 ], [ %2251, %2279 ]
  %2288 = getelementptr inbounds %struct.table_elt, ptr %2287, i64 0, i32 6
  %2289 = load ptr, ptr %2288, align 8, !tbaa !404
  %2290 = icmp eq ptr %2289, null
  br i1 %2290, label %2304, label %2291

2291:                                             ; preds = %2286, %2300
  %2292 = phi ptr [ %2302, %2300 ], [ %2289, %2286 ]
  %2293 = load ptr, ptr %2292, align 8, !tbaa !408
  %2294 = load i32, ptr %2293, align 8
  %2295 = and i32 %2294, 65535
  %2296 = icmp eq i32 %2295, 37
  br i1 %2296, label %2304, label %2297

2297:                                             ; preds = %2291
  %2298 = tail call i32 @exp_equiv_p(ptr noundef nonnull %2293, ptr noundef nonnull %2293, i32 noundef 1, i8 noundef zeroext 0) #25, !range !481
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2300, label %2304

2300:                                             ; preds = %2297
  %2301 = getelementptr inbounds %struct.table_elt, ptr %2292, i64 0, i32 4
  %2302 = load ptr, ptr %2301, align 8, !tbaa !404
  %2303 = icmp eq ptr %2302, null
  br i1 %2303, label %2304, label %2291, !llvm.loop !1000

2304:                                             ; preds = %2291, %2300, %2297, %2286, %2225, %2213
  %2305 = phi ptr [ %2208, %2213 ], [ %2208, %2225 ], [ null, %2286 ], [ %2292, %2291 ], [ null, %2300 ], [ %2292, %2297 ]
  %2306 = getelementptr inbounds %struct.table_elt, ptr %2207, i64 0, i32 4
  %2307 = load ptr, ptr %2306, align 8, !tbaa !404
  %2308 = icmp eq ptr %2307, null
  br i1 %2308, label %2309, label %2206, !llvm.loop !1001

2309:                                             ; preds = %2304, %2202, %2095, %2066, %2066, %2066, %2066, %2076, %2072, %2199, %2176, %2165, %2052
  %2310 = add nuw nsw i64 %2053, 1
  %2311 = icmp eq i64 %2310, %2011
  br i1 %2311, label %2312, label %2052, !prof !781, !llvm.loop !1002

2312:                                             ; preds = %2309, %1963, %1966, %2009
  br i1 %1908, label %2313, label %2423, !prof !1003

2313:                                             ; preds = %2312
  %2314 = load ptr, ptr %1906, align 8, !tbaa !757
  %2315 = icmp eq ptr %2314, null
  br i1 %2315, label %2423, label %2316, !prof !946

2316:                                             ; preds = %2313
  %2317 = getelementptr inbounds %struct.rtx_def, ptr %2314, i64 0, i32 1
  %2318 = load ptr, ptr %2317, align 8, !tbaa !420
  %2319 = load i32, ptr %2318, align 8
  %2320 = and i32 %2319, 65535
  %2321 = icmp eq i32 %2320, 37
  br i1 %2321, label %2322, label %2423, !prof !976

2322:                                             ; preds = %2316
  %2323 = getelementptr inbounds %struct.rtx_def, ptr %1904, i64 0, i32 1, i32 0, i32 0, i64 1
  %2324 = load ptr, ptr %2323, align 8, !tbaa !420
  %2325 = getelementptr inbounds %struct.rtx_def, ptr %2324, i64 0, i32 1, i32 0, i32 0, i64 2
  %2326 = load ptr, ptr %2325, align 8, !tbaa !420
  %2327 = icmp eq ptr %2326, %1904
  br i1 %2327, label %2328, label %2423, !prof !1004

2328:                                             ; preds = %2322
  %2329 = getelementptr inbounds %struct.rtx_def, ptr %2314, i64 0, i32 1, i32 0, i32 0, i64 1
  %2330 = load ptr, ptr %2329, align 8, !tbaa !420
  %2331 = load i32, ptr %2330, align 8
  %2332 = and i32 %2331, 65535
  %2333 = icmp eq i32 %2332, 37
  br i1 %2333, label %2334, label %2423, !prof !1005

2334:                                             ; preds = %2328
  %2335 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2330) #25
  %2336 = icmp ugt i32 %2335, 52
  br i1 %2336, label %2337, label %2423, !prof !1006

2337:                                             ; preds = %2334
  %2338 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2335) #25
  %2339 = getelementptr inbounds %struct.cse_reg_info, ptr %2338, i64 0, i32 1
  %2340 = load i32, ptr %2339, align 4, !tbaa !425
  %2341 = icmp sgt i32 %2340, -1
  br i1 %2341, label %2342, label %2423, !prof !1007

2342:                                             ; preds = %2337
  %2343 = load ptr, ptr %1906, align 8, !tbaa !757
  %2344 = getelementptr inbounds %struct.rtx_def, ptr %2343, i64 0, i32 1, i32 0, i32 0, i64 1
  %2345 = load ptr, ptr %2344, align 8, !tbaa !420
  %2346 = tail call fastcc i32 @rhs_regno(ptr noundef %2345) #25
  %2347 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2346) #25
  %2348 = getelementptr inbounds %struct.cse_reg_info, ptr %2347, i64 0, i32 1
  %2349 = load i32, ptr %2348, align 4, !tbaa !425
  %2350 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %2351 = sext i32 %2349 to i64
  %2352 = getelementptr inbounds %struct.qty_table_elem, ptr %2350, i64 %2351, i32 4
  %2353 = load i32, ptr %2352, align 4, !tbaa !914
  %2354 = load ptr, ptr %1906, align 8, !tbaa !757
  %2355 = getelementptr inbounds %struct.rtx_def, ptr %2354, i64 0, i32 1
  %2356 = load ptr, ptr %2355, align 8, !tbaa !420
  %2357 = tail call fastcc i32 @rhs_regno(ptr noundef %2356) #25
  %2358 = icmp eq i32 %2353, %2357
  br i1 %2358, label %2359, label %2423, !prof !1008

2359:                                             ; preds = %2342
  %2360 = getelementptr inbounds %struct.rtx_def, ptr %1904, i64 0, i32 1, i32 0, i32 1
  %2361 = load ptr, ptr %2360, align 8, !tbaa !420
  %2362 = getelementptr inbounds %struct.basic_block_def, ptr %2361, i64 0, i32 7
  %2363 = load ptr, ptr %2362, align 8, !tbaa !420
  %2364 = load ptr, ptr %2363, align 8, !tbaa !1009
  %2365 = load ptr, ptr %2323, align 8, !tbaa !420
  %2366 = icmp eq ptr %2365, %2364
  br i1 %2366, label %2375, label %2367, !prof !1010

2367:                                             ; preds = %2359, %2371
  %2368 = phi ptr [ %2373, %2371 ], [ %2365, %2359 ]
  %2369 = load i32, ptr %2368, align 8
  %2370 = trunc i32 %2369 to i16
  switch i16 %2370, label %2375 [
    i16 13, label %2371
    i16 7, label %2371
  ], !prof !1011

2371:                                             ; preds = %2367, %2367
  %2372 = getelementptr inbounds %struct.rtx_def, ptr %2368, i64 0, i32 1, i32 0, i32 0, i64 1
  %2373 = load ptr, ptr %2372, align 8, !tbaa !420
  %2374 = icmp eq ptr %2373, %2364
  br i1 %2374, label %2375, label %2367, !prof !1012

2375:                                             ; preds = %2371, %2367, %2359
  %2376 = phi ptr [ %2364, %2359 ], [ %2368, %2367 ], [ %2364, %2371 ]
  %2377 = load i32, ptr %2376, align 8
  %2378 = and i32 %2377, 65535
  %2379 = icmp eq i32 %2378, 8
  br i1 %2379, label %2380, label %2423, !prof !1013

2380:                                             ; preds = %2375
  %2381 = getelementptr inbounds %struct.rtx_def, ptr %2376, i64 1
  %2382 = load ptr, ptr %2381, align 8, !tbaa !420
  %2383 = load i32, ptr %2382, align 8
  %2384 = and i32 %2383, 65535
  %2385 = icmp eq i32 %2384, 23
  br i1 %2385, label %2386, label %2423, !prof !1014

2386:                                             ; preds = %2380
  %2387 = getelementptr inbounds %struct.rtx_def, ptr %2382, i64 0, i32 1
  %2388 = load ptr, ptr %2387, align 8, !tbaa !420
  %2389 = getelementptr inbounds %struct.rtx_def, ptr %2354, i64 0, i32 1, i32 0, i32 0, i64 1
  %2390 = load ptr, ptr %2389, align 8, !tbaa !420
  %2391 = icmp eq ptr %2388, %2390
  br i1 %2391, label %2392, label %2423, !prof !1015

2392:                                             ; preds = %2386
  %2393 = tail call ptr @find_reg_note(ptr noundef nonnull %2376, i32 noundef 3, ptr noundef null) #23
  %2394 = icmp eq ptr %2393, null
  br i1 %2394, label %2395, label %2423, !prof !1016

2395:                                             ; preds = %2392
  %2396 = load ptr, ptr %1906, align 8, !tbaa !757
  %2397 = getelementptr inbounds %struct.rtx_def, ptr %2396, i64 0, i32 1
  %2398 = load ptr, ptr %2397, align 8, !tbaa !420
  %2399 = getelementptr inbounds %struct.rtx_def, ptr %2396, i64 0, i32 1, i32 0, i32 0, i64 1
  %2400 = load ptr, ptr %2399, align 8, !tbaa !420
  %2401 = load ptr, ptr %2381, align 8, !tbaa !420
  %2402 = getelementptr inbounds %struct.rtx_def, ptr %2401, i64 0, i32 1
  %2403 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2376, ptr noundef nonnull %2402, ptr noundef %2398, i8 noundef zeroext 1) #23
  %2404 = load ptr, ptr %1906, align 8, !tbaa !757
  %2405 = getelementptr inbounds %struct.rtx_def, ptr %2404, i64 0, i32 1
  %2406 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1904, ptr noundef nonnull %2405, ptr noundef %2400, i8 noundef zeroext 1) #23
  %2407 = load ptr, ptr %1906, align 8, !tbaa !757
  %2408 = getelementptr inbounds %struct.rtx_def, ptr %2407, i64 0, i32 1, i32 0, i32 0, i64 1
  %2409 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1904, ptr noundef nonnull %2408, ptr noundef %2398, i8 noundef zeroext 1) #23
  %2410 = tail call i32 @apply_change_group() #23
  %2411 = tail call ptr @find_reg_note(ptr noundef nonnull %1904, i32 noundef 4, ptr noundef null) #23
  %2412 = icmp eq ptr %2411, null
  br i1 %2412, label %2423, label %2413, !prof !1016

2413:                                             ; preds = %2395
  %2414 = getelementptr inbounds %struct.rtx_def, ptr %2411, i64 0, i32 1
  %2415 = load ptr, ptr %2414, align 8, !tbaa !420
  %2416 = tail call i32 @reg_mentioned_p(ptr noundef %2398, ptr noundef %2415) #23
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2418, label %2422

2418:                                             ; preds = %2413
  %2419 = load ptr, ptr %2414, align 8, !tbaa !420
  %2420 = tail call i32 @rtx_equal_p(ptr noundef %2400, ptr noundef %2419) #23
  %2421 = icmp eq i32 %2420, 0
  br i1 %2421, label %2423, label %2422

2422:                                             ; preds = %2418, %2413
  tail call void @remove_note(ptr noundef nonnull %1904, ptr noundef nonnull %2411) #23
  br label %2423

2423:                                             ; preds = %2342, %2395, %2418, %2422, %2392, %2386, %2380, %2375, %2312, %2313, %2316, %2322, %2328, %2334, %2337, %1962
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @check_for_label_ref(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !1017 !PGOFuncName !1018 {
  %3 = load ptr, ptr %0, align 8, !tbaa !404
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 134283263
  %6 = icmp eq i32 %5, 44
  br i1 %6, label %7, label %33, !prof !1019

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %18, !prof !1020

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !420
  %14 = tail call zeroext i8 @label_is_jump_target_p(ptr noundef %13, ptr noundef nonnull %1) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %33, !prof !1021

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8, !tbaa !404
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi ptr [ %17, %16 ], [ %3, %7 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !420
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %33, !prof !1022

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !420
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !769

29:                                               ; preds = %25
  %30 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 10, ptr noundef nonnull %21) #23
  %31 = icmp eq ptr %30, null
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %29, %25, %18, %11, %2
  %34 = phi i32 [ 0, %25 ], [ 0, %18 ], [ 0, %11 ], [ 0, %2 ], [ %32, %29 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @have_eh_succ_edges(ptr noundef %0) unnamed_addr #0 !prof !403 !PGOFuncName !1023 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #25
  store i32 0, ptr %3, align 8, !tbaa.struct !703
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !704
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #25, !range !519
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1, %15
  %10 = load ptr, ptr %2, align 8, !tbaa !404
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !553
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %3) #25
  %16 = load i32, ptr %3, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc zeroext i8 @ei_cond(i32 %16, ptr %17, ptr noundef nonnull %2) #25, !range !519
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !1024

20:                                               ; preds = %9, %15, %1
  %21 = phi i8 [ 0, %1 ], [ 0, %15 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret i8 %21
}

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !403 !PGOFuncName !1025 {
  %3 = load ptr, ptr %0, align 8, !tbaa !525
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !515
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !420
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !420
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !515
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !515
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_jump_equiv(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1026 !PGOFuncName !1027 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  %7 = tail call i32 @any_condjump_p(ptr noundef %0) #23
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !609

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3906, ptr noundef nonnull @.str.4) #23
  br label %10

10:                                               ; preds = %2, %9
  %11 = tail call ptr @pc_set(ptr noundef %0) #23
  %12 = icmp eq i8 %1, 0
  %13 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !420
  %15 = load ptr, ptr @global_rtl, align 16, !tbaa !404
  %16 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = select i1 %12, ptr %16, ptr %17, !prof !1028
  %19 = load ptr, ptr %18, align 8, !tbaa !420
  %20 = icmp eq ptr %19, %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !420
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !420
  %28 = tail call fastcc ptr @fold_rtx(ptr noundef %27, ptr noundef %0) #25
  store ptr %28, ptr %3, align 8, !tbaa !404
  %29 = load ptr, ptr %21, align 8, !tbaa !420
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !420
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !420
  %34 = tail call fastcc ptr @fold_rtx(ptr noundef %33, ptr noundef %0) #25
  store ptr %34, ptr %4, align 8, !tbaa !404
  %35 = call fastcc i32 @find_comparison_args(i32 noundef %25, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  br i1 %20, label %41, label %36, !prof !1029

36:                                               ; preds = %10
  %37 = load ptr, ptr %3, align 8, !tbaa !404
  %38 = load ptr, ptr %4, align 8, !tbaa !404
  %39 = tail call i32 @reversed_comparison_code_parts(i32 noundef %35, ptr noundef %37, ptr noundef %38, ptr noundef %0) #23
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41, !prof !1030

41:                                               ; preds = %36, %10
  %42 = phi i32 [ %35, %10 ], [ %39, %36 ]
  %43 = load i32, ptr %5, align 4, !tbaa !416
  %44 = load i32, ptr %6, align 4, !tbaa !416
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !611

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i32 [ %44, %46 ], [ %43, %41 ]
  %49 = load ptr, ptr %3, align 8, !tbaa !404
  %50 = load ptr, ptr %4, align 8, !tbaa !404
  tail call fastcc void @record_jump_cond(i32 noundef %42, i32 noundef %48, ptr noundef %49, ptr noundef %50) #25
  br label %51

51:                                               ; preds = %36, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #16 !prof !1031 !PGOFuncName !1032 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1033 !PGOFuncName !1034 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #25, !range !519
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1035

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #25
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !404
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1036 !PGOFuncName !1037 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1038

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #25
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #25
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1039

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.4) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1040
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1040
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1033 !PGOFuncName !1042 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1043

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #25
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #25
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1036 !PGOFuncName !1044 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1038

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #25
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #25
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1045 !PGOFuncName !1046 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1047

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 687, ptr noundef nonnull @.str.4) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !404
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #14 !prof !403 !PGOFuncName !1048 {
  %2 = load ptr, ptr @df, align 8, !tbaa !404
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !404
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !1049
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1051
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !404
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @canon_hash(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1052 !PGOFuncName !1053 {
  %3 = tail call i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @do_not_record, ptr noundef nonnull @hash_arg_in_memory, i8 noundef zeroext 1) #25
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delete_reg_equiv(i32 noundef %0) unnamed_addr #5 !prof !1054 !PGOFuncName !1055 {
  %2 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #25
  %3 = getelementptr inbounds %struct.cse_reg_info, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !425
  %5 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #25
  %6 = getelementptr inbounds %struct.cse_reg_info, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !425
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %36, !prof !1056

9:                                                ; preds = %1
  %10 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %11 = sext i32 %4 to i64
  %12 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !404
  %13 = zext i32 %0 to i64
  %14 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %13, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !1057
  %17 = load i32, ptr %14, align 4, !tbaa !1059
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %22, label %19, !prof !1060

19:                                               ; preds = %9
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %20, i32 1
  store i32 %16, ptr %21, align 4, !tbaa !1057
  br label %24

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.qty_table_elem, ptr %10, i64 %11, i32 5
  store i32 %16, ptr %23, align 8, !tbaa !1061
  br label %24

24:                                               ; preds = %22, %19
  %25 = icmp eq i32 %16, -1
  br i1 %25, label %29, label %26, !prof !1062

26:                                               ; preds = %24
  %27 = sext i32 %16 to i64
  %28 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %27
  br label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.qty_table_elem, ptr %10, i64 %11, i32 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %30, %29 ], [ %28, %26 ]
  store i32 %17, ptr %32, align 4, !tbaa !416
  %33 = xor i32 %0, -1
  %34 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #25
  %35 = getelementptr inbounds %struct.cse_reg_info, ptr %34, i64 0, i32 1
  store i32 %33, ptr %35, align 4, !tbaa !425
  br label %36

36:                                               ; preds = %1, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_pseudo_from_table(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1063 !PGOFuncName !1064 {
  %3 = tail call fastcc ptr @lookup_for_remove(ptr noundef %0, i32 noundef %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1065

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call fastcc void @remove_from_table(ptr noundef nonnull %6, i32 noundef %1) #25
  %7 = tail call fastcc ptr @lookup_for_remove(ptr noundef %0, i32 noundef %1) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !1066, !llvm.loop !1067

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @remove_from_table(ptr noundef %0, i32 noundef %1) unnamed_addr #15 !prof !1068 !PGOFuncName !1069 {
  %3 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  store ptr null, ptr %3, align 8, !tbaa !800
  %4 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !984
  %6 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !871
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11, !prof !1070

9:                                                ; preds = %2
  %10 = icmp eq ptr %5, null
  br i1 %10, label %22, label %14, !prof !1071

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.table_elt, ptr %7, i64 0, i32 5
  store ptr %5, ptr %12, align 8, !tbaa !984
  %13 = icmp eq ptr %5, null
  br i1 %13, label %16, label %14, !prof !1071

14:                                               ; preds = %11, %9
  %15 = getelementptr inbounds %struct.table_elt, ptr %5, i64 0, i32 4
  store ptr %7, ptr %15, align 8, !tbaa !871
  br label %22

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %20, %16 ], [ %7, %11 ]
  %18 = getelementptr inbounds %struct.table_elt, ptr %17, i64 0, i32 6
  store ptr %7, ptr %18, align 8, !tbaa !800
  %19 = getelementptr inbounds %struct.table_elt, ptr %17, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !871
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !prof !1072, !llvm.loop !1073

22:                                               ; preds = %16, %9, %14
  %23 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !1074
  %25 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !696
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !1075

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.table_elt, ptr %26, i64 0, i32 3
  store ptr %24, ptr %29, align 8, !tbaa !1074
  br label %30

30:                                               ; preds = %28, %22
  %31 = icmp eq ptr %24, null
  br i1 %31, label %34, label %32, !prof !1076

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.table_elt, ptr %24, i64 0, i32 2
  br label %58

34:                                               ; preds = %30
  %35 = zext i32 %1 to i64
  %36 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !404
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %58, label %39, !prof !1077

39:                                               ; preds = %34
  %40 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %41 = shufflevector <2 x ptr> %40, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %55, %39
  %43 = phi i64 [ 0, %39 ], [ %56, %55 ]
  %44 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %43
  %45 = load <2 x ptr>, ptr %44, align 16, !tbaa !404
  %46 = icmp eq <2 x ptr> %45, %41
  %47 = extractelement <2 x i1> %46, i64 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %43
  store ptr %26, ptr %49, align 16, !tbaa !404
  br label %50

50:                                               ; preds = %48, %42
  %51 = extractelement <2 x i1> %46, i64 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = or disjoint i64 %43, 1
  %54 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %53
  store ptr %26, ptr %54, align 8, !tbaa !404
  br label %55

55:                                               ; preds = %52, %50
  %56 = add nuw i64 %43, 2
  %57 = icmp eq i64 %56, 32
  br i1 %57, label %60, label %42, !llvm.loop !1078

58:                                               ; preds = %34, %32
  %59 = phi ptr [ %33, %32 ], [ %36, %34 ]
  store ptr %26, ptr %59, align 8, !tbaa !404
  br label %60

60:                                               ; preds = %55, %58
  %61 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !825
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64, !prof !1081

64:                                               ; preds = %60
  %65 = icmp eq ptr %62, %0
  br i1 %65, label %75, label %66

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %69, %66 ], [ %62, %64 ]
  %68 = getelementptr inbounds %struct.table_elt, ptr %67, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !825
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %71, label %66, !llvm.loop !1082

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.table_elt, ptr %67, i64 0, i32 7
  %73 = icmp eq ptr %62, %67
  %74 = select i1 %73, ptr null, ptr %62
  store ptr %74, ptr %72, align 8, !tbaa !825
  br label %75

75:                                               ; preds = %71, %64, %60
  %76 = load ptr, ptr @free_element_chain, align 8, !tbaa !404
  store ptr %76, ptr %25, align 8, !tbaa !696
  store ptr %0, ptr @free_element_chain, align 8, !tbaa !404
  ret void
}

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @check_dependence(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1083 !PGOFuncName !1084 {
  %3 = load ptr, ptr %0, align 8, !tbaa !404
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !1085

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 43
  br i1 %8, label %9, label %16, !prof !1086

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.check_dependence_data, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !736
  %12 = load i32, ptr %1, align 8, !tbaa !739
  %13 = getelementptr inbounds %struct.check_dependence_data, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !738
  %15 = tail call i32 @canon_true_dependence(ptr noundef %11, i32 noundef %12, ptr noundef %14, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @cse_rtx_varies_p) #23
  br label %16

16:                                               ; preds = %2, %5, %9
  %17 = phi i32 [ %15, %9 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_for_remove(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1087 !PGOFuncName !1088 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %25, !prof !1089

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !404
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12, !prof !1090

12:                                               ; preds = %6, %21
  %13 = phi ptr [ %23, %21 ], [ %10, %6 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !408
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %21, !prof !1091

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #25
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %45, label %21, !prof !1092

21:                                               ; preds = %12, %18
  %22 = getelementptr inbounds %struct.table_elt, ptr %13, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !404
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %12, !prof !1093, !llvm.loop !1094

25:                                               ; preds = %2
  %26 = zext nneg i32 %1 to i64
  %27 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !404
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %25, %41
  %31 = phi ptr [ %43, %41 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.table_elt, ptr %31, i64 0, i32 10
  %33 = load i8, ptr %32, align 8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !408
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @exp_equiv_p(ptr noundef nonnull %0, ptr noundef %36, i32 noundef 0, i8 noundef zeroext 0) #25, !range !481
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30, %38
  %42 = getelementptr inbounds %struct.table_elt, ptr %31, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !404
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %30, !llvm.loop !1095

45:                                               ; preds = %38, %35, %41, %18, %21, %25, %6
  %46 = phi ptr [ null, %6 ], [ null, %25 ], [ %13, %18 ], [ null, %21 ], [ %31, %38 ], [ %31, %35 ], [ null, %41 ]
  ret ptr %46
}

; Function Attrs: optsize
declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @cse_rtx_varies_p(ptr noundef %0, i8 noundef zeroext %1) #0 !prof !403 !PGOFuncName !1096 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %9 = getelementptr inbounds %struct.cse_reg_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !425
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %0, align 8
  br label %31

14:                                               ; preds = %6
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %16 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %15) #25
  %17 = getelementptr inbounds %struct.cse_reg_info, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !425
  %19 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %20 = sext i32 %18 to i64
  %21 = load i32, ptr %0, align 8
  %22 = getelementptr inbounds %struct.qty_table_elem, ptr %19, i64 %20, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, %21
  %25 = and i32 %24, 16711680
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.qty_table_elem, ptr %19, i64 %20
  %29 = load ptr, ptr %28, align 8, !tbaa !1097
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %140

31:                                               ; preds = %12, %27, %14, %2
  %32 = phi i32 [ %13, %12 ], [ %21, %27 ], [ %21, %14 ], [ %3, %2 ]
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 49
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !420
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %72

42:                                               ; preds = %35
  %43 = load ptr, ptr %36, align 8, !tbaa !420
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %43) #25
  %49 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %48) #25
  %50 = getelementptr inbounds %struct.cse_reg_info, ptr %49, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !425
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load ptr, ptr %36, align 8, !tbaa !420
  %55 = tail call fastcc i32 @rhs_regno(ptr noundef %54) #25
  %56 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %55) #25
  %57 = getelementptr inbounds %struct.cse_reg_info, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !425
  %59 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %60 = sext i32 %58 to i64
  %61 = load ptr, ptr %36, align 8, !tbaa !420
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.qty_table_elem, ptr %59, i64 %60, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, %62
  %66 = and i32 %65, 16711680
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.qty_table_elem, ptr %59, i64 %60
  %70 = load ptr, ptr %69, align 8, !tbaa !1097
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %140

72:                                               ; preds = %68, %53, %47, %42, %35, %31
  %73 = load i32, ptr %0, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 49
  br i1 %75, label %76, label %138

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !420
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %138

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !420
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %88, label %138

88:                                               ; preds = %82
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %78) #25
  %90 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %89) #25
  %91 = getelementptr inbounds %struct.cse_reg_info, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !425
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %138

94:                                               ; preds = %88
  %95 = load ptr, ptr %83, align 8, !tbaa !420
  %96 = tail call fastcc i32 @rhs_regno(ptr noundef %95) #25
  %97 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %96) #25
  %98 = getelementptr inbounds %struct.cse_reg_info, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !425
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %101, label %138

101:                                              ; preds = %94
  %102 = load ptr, ptr %77, align 8, !tbaa !420
  %103 = tail call fastcc i32 @rhs_regno(ptr noundef %102) #25
  %104 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %103) #25
  %105 = getelementptr inbounds %struct.cse_reg_info, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !425
  %107 = load ptr, ptr %83, align 8, !tbaa !420
  %108 = tail call fastcc i32 @rhs_regno(ptr noundef %107) #25
  %109 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %108) #25
  %110 = getelementptr inbounds %struct.cse_reg_info, ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !425
  %112 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %113 = sext i32 %106 to i64
  %114 = sext i32 %111 to i64
  %115 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %114
  %116 = load ptr, ptr %77, align 8, !tbaa !420
  %117 = load i32, ptr %116, align 8
  %118 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %113, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = xor i32 %119, %117
  %121 = and i32 %120, 16711680
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %101
  %124 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %113
  %125 = load ptr, ptr %124, align 8, !tbaa !1097
  %126 = icmp eq ptr %125, null
  br i1 %126, label %138, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %83, align 8, !tbaa !420
  %129 = load i32, ptr %128, align 8
  %130 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %114, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = xor i32 %131, %129
  %133 = and i32 %132, 16711680
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load ptr, ptr %115, align 8, !tbaa !1097
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %135, %127, %123, %101, %94, %88, %82, %76, %72
  %139 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %0, i8 noundef zeroext %1) #23
  br label %140

140:                                              ; preds = %135, %68, %27, %138
  %141 = phi i8 [ %139, %138 ], [ 0, %27 ], [ 0, %68 ], [ 0, %135 ]
  ret i8 %141
}

; Function Attrs: optsize
declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cse_process_notes_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !748 !PGOFuncName !1098 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !404
  %9 = trunc i32 %4 to i16
  switch i16 %9, label %10 [
    i16 30, label %93
    i16 35, label %93
    i16 45, label %93
    i16 44, label %93
    i16 32, label %93
    i16 31, label %93
    i16 33, label %93
    i16 36, label %93
    i16 46, label %93
    i16 122, label %93
    i16 43, label %17
    i16 3, label %22
    i16 4, label %22
    i16 98, label %35
    i16 99, label %35
    i16 39, label %35
    i16 37, label %44
  ], !prof !1099

10:                                               ; preds = %3
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !420
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %93, label %14, !prof !1100

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = zext i8 %12 to i64
  br label %80

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !420
  %20 = tail call fastcc ptr @cse_process_notes(ptr noundef %19, ptr noundef nonnull %0, ptr noundef %2) #25
  %21 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef %20, i8 noundef zeroext 0) #23
  br label %93

22:                                               ; preds = %3, %3
  %23 = and i32 %4, 16711680
  %24 = icmp eq i32 %23, 262144
  br i1 %24, label %25, label %29, !prof !1101

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !420
  %28 = tail call fastcc ptr @cse_process_notes(ptr noundef %27, ptr noundef null, ptr noundef %2) #25
  store ptr %28, ptr %26, align 8, !tbaa !420
  br label %29

29:                                               ; preds = %25, %22
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !420
  %32 = icmp eq ptr %31, null
  br i1 %32, label %93, label %33, !prof !1102

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @cse_process_notes(ptr noundef nonnull %31, ptr noundef null, ptr noundef %2) #25
  store ptr %34, ptr %30, align 8, !tbaa !420
  br label %93

35:                                               ; preds = %3, %3, %3
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !420
  %38 = tail call fastcc ptr @cse_process_notes(ptr noundef %37, ptr noundef %1, ptr noundef %2) #25
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 16711680
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %93, label %42, !prof !1103

42:                                               ; preds = %35
  %43 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %36, ptr noundef nonnull %38, i8 noundef zeroext 0) #23
  br label %93

44:                                               ; preds = %3
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %46 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %45) #25
  %47 = getelementptr inbounds %struct.cse_reg_info, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !425
  %49 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %50 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %49) #25
  %51 = getelementptr inbounds %struct.cse_reg_info, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !425
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %78, !prof !1104

54:                                               ; preds = %44
  %55 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %56 = sext i32 %48 to i64
  %57 = getelementptr inbounds %struct.qty_table_elem, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !1097
  %59 = icmp eq ptr %58, null
  br i1 %59, label %78, label %60, !prof !1105

60:                                               ; preds = %54
  %61 = load i32, ptr %58, align 8
  %62 = and i32 %61, 65535
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !416
  %66 = icmp eq i32 %65, 9
  %67 = icmp eq i32 %62, 37
  %68 = or i1 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load ptr, ptr @rtl_hooks, align 8, !tbaa !833
  %71 = load i32, ptr %0, align 8
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = tail call ptr %70(i32 noundef %73, ptr noundef nonnull %58) #23
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = tail call ptr @copy_rtx(ptr noundef nonnull %74) #23
  br label %93

78:                                               ; preds = %69, %54, %60, %44
  %79 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %0, ptr noundef null) #25
  br label %93

80:                                               ; preds = %14, %90
  %81 = phi i64 [ 0, %14 ], [ %91, %90 ]
  %82 = getelementptr inbounds i8, ptr %8, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !420
  %84 = icmp eq i8 %83, 101
  br i1 %84, label %85, label %90, !prof !1106

85:                                               ; preds = %80
  %86 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %81
  %87 = load ptr, ptr %86, align 8, !tbaa !420
  %88 = tail call fastcc ptr @cse_process_notes(ptr noundef %87, ptr noundef %1, ptr noundef %2) #25
  %89 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %86, ptr noundef %88, i8 noundef zeroext 0) #23
  br label %90

90:                                               ; preds = %80, %85
  %91 = add nuw nsw i64 %81, 1
  %92 = icmp eq i64 %91, %16
  br i1 %92, label %93, label %80, !prof !1107, !llvm.loop !1108

93:                                               ; preds = %90, %10, %76, %35, %42, %29, %33, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %78, %17
  %94 = phi ptr [ %79, %78 ], [ %77, %76 ], [ %0, %17 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %33 ], [ %0, %29 ], [ %0, %42 ], [ %0, %35 ], [ %0, %10 ], [ %0, %90 ]
  ret ptr %94
}

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @canon_reg(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1109 !PGOFuncName !1110 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %75, label %4, !prof !1111

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %41 [
    i16 36, label %75
    i16 46, label %75
    i16 35, label %75
    i16 30, label %75
    i16 32, label %75
    i16 31, label %75
    i16 33, label %75
    i16 45, label %75
    i16 44, label %75
    i16 20, label %75
    i16 21, label %75
    i16 37, label %7
  ], !prof !1112

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %75, label %10, !prof !1113

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %8) #25
  %12 = getelementptr inbounds %struct.cse_reg_info, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !425
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %75, !prof !1114

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %17 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %16) #25
  %18 = getelementptr inbounds %struct.cse_reg_info, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !425
  %20 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.qty_table_elem, ptr %20, i64 %21, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !914
  %24 = icmp sgt i32 %23, 52
  br i1 %24, label %25, label %30, !prof !1115

25:                                               ; preds = %15
  %26 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !404
  %27 = zext nneg i32 %23 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !404
  br label %75

30:                                               ; preds = %15
  %31 = sext i32 %23 to i64
  %32 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !416
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %75, label %35, !prof !1116

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.qty_table_elem, ptr %20, i64 %21, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = tail call ptr @gen_rtx_REG(i32 noundef %39, i32 noundef %23) #23
  br label %75

41:                                               ; preds = %4
  %42 = and i32 %5, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !404
  %46 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !420
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %75, label %49, !prof !1117

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = zext i8 %47 to i64
  br label %52

52:                                               ; preds = %49, %73
  %53 = phi i64 [ %51, %49 ], [ %54, %73 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds i8, ptr %45, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !420
  switch i8 %56, label %73 [
    i8 101, label %62
    i8 69, label %57
  ], !prof !1118

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !420
  %60 = load i32, ptr %59, align 8, !tbaa !428
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %64, label %73

62:                                               ; preds = %52
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  tail call fastcc void @validate_canon_reg(ptr noundef nonnull %63, ptr noundef %1) #25
  br label %73

64:                                               ; preds = %57, %64
  %65 = phi i64 [ %68, %64 ], [ 0, %57 ]
  %66 = phi ptr [ %69, %64 ], [ %59, %57 ]
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %65
  tail call fastcc void @validate_canon_reg(ptr noundef nonnull %67, ptr noundef %1) #25
  %68 = add nuw nsw i64 %65, 1
  %69 = load ptr, ptr %58, align 8, !tbaa !420
  %70 = load i32, ptr %69, align 8, !tbaa !428
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %64, label %73, !llvm.loop !1119

73:                                               ; preds = %64, %57, %52, %62
  %74 = icmp sgt i64 %53, 1
  br i1 %74, label %52, label %75, !prof !1120, !llvm.loop !1121

75:                                               ; preds = %73, %41, %10, %7, %30, %35, %25, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %2
  %76 = phi ptr [ null, %2 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %10 ], [ %0, %7 ], [ %29, %25 ], [ %40, %35 ], [ %0, %30 ], [ %0, %41 ], [ %0, %73 ]
  ret ptr %76
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @validate_canon_reg(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1122 !PGOFuncName !1123 {
  %3 = load ptr, ptr %0, align 8, !tbaa !404
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !1124

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %3, ptr noundef %1) #25
  %7 = icmp ne ptr %1, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %11, label %10, !prof !1125

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2870, ptr noundef nonnull @.str.4) #23
  br label %11

11:                                               ; preds = %5, %10
  %12 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %0, ptr noundef %6, i8 noundef zeroext 1) #23
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_rtx(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1126 !PGOFuncName !1127 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %7 = icmp eq ptr %0, null
  br i1 %7, label %779, label %8, !prof !1128

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = trunc i32 %9 to i16
  switch i16 %11, label %45 [
    i16 43, label %12
    i16 39, label %12
    i16 35, label %779
    i16 30, label %779
    i16 32, label %779
    i16 31, label %779
    i16 33, label %779
    i16 45, label %779
    i16 44, label %779
    i16 37, label %779
    i16 36, label %779
    i16 3, label %779
    i16 17, label %16
    i16 26, label %34
  ], !prof !1129

12:                                               ; preds = %8, %8
  %13 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %0) #25
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %0, ptr %13, !prof !1130
  br label %779

16:                                               ; preds = %8
  %17 = icmp eq ptr %1, null
  br i1 %17, label %779, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !420
  %21 = load i32, ptr %20, align 8, !tbaa !428
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %779

23:                                               ; preds = %18
  %24 = zext nneg i32 %21 to i64
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %24, %23 ], [ %27, %25 ]
  %27 = add nsw i64 %26, -1
  %28 = load ptr, ptr %19, align 8, !tbaa !420
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !404
  %31 = tail call fastcc ptr @fold_rtx(ptr noundef %30, ptr noundef nonnull %1) #25
  %32 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1, ptr noundef nonnull %29, ptr noundef %31, i8 noundef zeroext 0) #23
  %33 = icmp ugt i64 %26, 1
  br i1 %33, label %25, label %779, !llvm.loop !1131

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !420
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !420
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !416
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %779, label %45, !prof !975

45:                                               ; preds = %8, %34
  %46 = lshr i32 %9, 16
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %10 to i64
  %49 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !404
  %51 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %48
  %52 = load i8, ptr %51, align 1, !tbaa !420
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55, !prof !1132

54:                                               ; preds = %45
  store i32 0, ptr %5, align 4, !tbaa !416
  br label %167

55:                                               ; preds = %45
  %56 = zext i8 %52 to i64
  br label %57

57:                                               ; preds = %55, %145
  %58 = phi ptr [ undef, %55 ], [ %146, %145 ]
  %59 = phi ptr [ undef, %55 ], [ %147, %145 ]
  %60 = phi i64 [ %56, %55 ], [ %67, %145 ]
  %61 = phi ptr [ %0, %55 ], [ %153, %145 ]
  %62 = phi i32 [ 0, %55 ], [ %152, %145 ]
  %63 = phi ptr [ null, %55 ], [ %151, %145 ]
  %64 = phi ptr [ null, %55 ], [ %150, %145 ]
  %65 = phi ptr [ null, %55 ], [ %149, %145 ]
  %66 = phi i32 [ 0, %55 ], [ %148, %145 ]
  %67 = add nsw i64 %60, -1
  %68 = getelementptr inbounds i8, ptr %50, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !420
  %70 = icmp eq i8 %69, 101
  br i1 %70, label %71, label %145, !prof !1133

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %73 = getelementptr inbounds [1 x %union.rtunion_def], ptr %72, i64 0, i64 %67
  %74 = load ptr, ptr %73, align 8, !tbaa !420
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = trunc i32 %75 to i16
  switch i16 %78, label %81 [
    i16 43, label %79
    i16 37, label %79
    i16 39, label %79
    i16 35, label %84
    i16 30, label %84
    i16 45, label %84
    i16 44, label %84
    i16 32, label %84
    i16 31, label %84
    i16 33, label %84
  ], !prof !1134

79:                                               ; preds = %71, %71, %71
  %80 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %74) #25
  br label %84

81:                                               ; preds = %71
  %82 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %74, ptr noundef %1) #25
  %83 = tail call fastcc ptr @equiv_constant(ptr noundef %82) #25
  br label %84

84:                                               ; preds = %71, %71, %71, %71, %71, %71, %71, %81, %79
  %85 = phi ptr [ %83, %81 ], [ %80, %79 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ]
  %86 = phi ptr [ %82, %81 ], [ %74, %79 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ]
  %87 = trunc i64 %60 to i32
  switch i32 %87, label %91 [
    i32 1, label %88
    i32 2, label %89
    i32 3, label %90
  ], !prof !1135

88:                                               ; preds = %84
  store ptr %86, ptr %3, align 8, !tbaa !404
  br label %91

89:                                               ; preds = %84
  store ptr %86, ptr %4, align 8, !tbaa !404
  br label %91

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %84, %90, %89, %88
  %92 = phi ptr [ %58, %84 ], [ %58, %90 ], [ %86, %89 ], [ %58, %88 ]
  %93 = phi ptr [ %59, %84 ], [ %59, %90 ], [ %59, %89 ], [ %86, %88 ]
  %94 = phi i32 [ %66, %84 ], [ %66, %90 ], [ %66, %89 ], [ %77, %88 ]
  %95 = phi ptr [ %65, %84 ], [ %85, %90 ], [ %65, %89 ], [ %65, %88 ]
  %96 = phi ptr [ %64, %84 ], [ %64, %90 ], [ %85, %89 ], [ %64, %88 ]
  %97 = phi ptr [ %63, %84 ], [ %63, %90 ], [ %63, %89 ], [ %85, %88 ]
  %98 = icmp eq ptr %85, null
  %99 = icmp eq ptr %85, %86
  %100 = or i1 %98, %99
  br i1 %100, label %130, label %101, !prof !1136

101:                                              ; preds = %91
  %102 = load i32, ptr %85, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 37
  br i1 %104, label %107, label %105, !prof !1137

105:                                              ; preds = %101
  %106 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %85, i32 noundef %10) #25
  br label %107

107:                                              ; preds = %101, %105
  %108 = phi i32 [ %106, %105 ], [ 0, %101 ]
  %109 = load i32, ptr %86, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 37
  br i1 %111, label %114, label %112, !prof !1138

112:                                              ; preds = %107
  %113 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %86, i32 noundef %10) #25
  br label %114

114:                                              ; preds = %107, %112
  %115 = phi i32 [ %113, %112 ], [ 0, %107 ]
  %116 = icmp sgt i32 %108, %115
  br i1 %116, label %130, label %117, !prof !1137

117:                                              ; preds = %114
  %118 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %48
  %119 = load i32, ptr %118, align 4, !tbaa !416
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %121, label %129, !prof !1137

121:                                              ; preds = %117
  %122 = add nsw i32 %10, -107
  %123 = icmp ult i32 %122, -9
  %124 = load i32, ptr %85, align 8
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = icmp eq i32 %126, %94
  %128 = select i1 %127, i1 true, i1 %123
  br i1 %128, label %129, label %130

129:                                              ; preds = %121, %117
  br label %130

130:                                              ; preds = %121, %129, %114, %91
  %131 = phi ptr [ %85, %129 ], [ %86, %114 ], [ %86, %91 ], [ %86, %121 ]
  %132 = load ptr, ptr %73, align 8, !tbaa !420
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %145, label %134, !prof !1139

134:                                              ; preds = %130
  %135 = icmp eq ptr %1, null
  br i1 %135, label %136, label %140, !prof !1140

136:                                              ; preds = %134
  %137 = icmp eq i32 %62, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %139 = tail call ptr @copy_rtx(ptr noundef nonnull %61) #23
  br label %140

140:                                              ; preds = %138, %136, %134
  %141 = phi ptr [ %61, %136 ], [ %139, %138 ], [ %61, %134 ]
  %142 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1
  %143 = getelementptr inbounds [1 x %union.rtunion_def], ptr %142, i64 0, i64 %67
  %144 = tail call zeroext i8 @validate_unshare_change(ptr noundef %1, ptr noundef nonnull %143, ptr noundef %131, i8 noundef zeroext 1) #23
  br label %145

145:                                              ; preds = %140, %130, %57
  %146 = phi ptr [ %58, %57 ], [ %92, %130 ], [ %92, %140 ]
  %147 = phi ptr [ %59, %57 ], [ %93, %130 ], [ %93, %140 ]
  %148 = phi i32 [ %66, %57 ], [ %94, %130 ], [ %94, %140 ]
  %149 = phi ptr [ %65, %57 ], [ %95, %130 ], [ %95, %140 ]
  %150 = phi ptr [ %64, %57 ], [ %96, %130 ], [ %96, %140 ]
  %151 = phi ptr [ %63, %57 ], [ %97, %130 ], [ %97, %140 ]
  %152 = phi i32 [ %62, %57 ], [ %62, %130 ], [ 1, %140 ]
  %153 = phi ptr [ %61, %57 ], [ %61, %130 ], [ %141, %140 ]
  %154 = icmp eq i64 %67, 0
  br i1 %154, label %155, label %57, !prof !1141, !llvm.loop !1142

155:                                              ; preds = %145
  store i32 %148, ptr %5, align 4, !tbaa !416
  %156 = icmp eq i32 %152, 0
  br i1 %156, label %167, label %157, !prof !1143

157:                                              ; preds = %155
  %158 = tail call zeroext i8 @canonicalize_change_group(ptr noundef %1, ptr noundef %153) #23
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %161, label %160, !prof !1144

160:                                              ; preds = %157
  store ptr %146, ptr %3, align 8, !tbaa !404
  store ptr %147, ptr %4, align 8, !tbaa !404
  br label %161

161:                                              ; preds = %160, %157
  %162 = phi ptr [ %147, %160 ], [ %146, %157 ]
  %163 = phi ptr [ %146, %160 ], [ %147, %157 ]
  %164 = phi ptr [ %151, %160 ], [ %150, %157 ]
  %165 = phi ptr [ %150, %160 ], [ %151, %157 ]
  %166 = tail call i32 @apply_change_group() #23
  br label %167

167:                                              ; preds = %54, %161, %155
  %168 = phi ptr [ %153, %161 ], [ %153, %155 ], [ %0, %54 ]
  %169 = phi ptr [ %149, %161 ], [ %149, %155 ], [ null, %54 ]
  %170 = phi i32 [ %148, %161 ], [ %148, %155 ], [ 0, %54 ]
  %171 = phi ptr [ %162, %161 ], [ %146, %155 ], [ undef, %54 ]
  %172 = phi ptr [ %163, %161 ], [ %147, %155 ], [ undef, %54 ]
  %173 = phi ptr [ %164, %161 ], [ %150, %155 ], [ null, %54 ]
  %174 = phi ptr [ %165, %161 ], [ %151, %155 ], [ null, %54 ]
  %175 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %48
  %176 = load i32, ptr %175, align 4, !tbaa !416
  switch i32 %176, label %775 [
    i32 4, label %177
    i32 0, label %186
    i32 1, label %186
    i32 2, label %454
    i32 3, label %454
    i32 8, label %748
    i32 10, label %761
    i32 11, label %761
  ], !prof !1145

177:                                              ; preds = %167
  %178 = and i32 %9, 65534
  %179 = icmp eq i32 %178, 98
  %180 = icmp eq i32 %170, 0
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %775, label %182, !prof !1146

182:                                              ; preds = %177
  %183 = icmp eq ptr %174, null
  %184 = select i1 %183, ptr %172, ptr %174, !prof !1147
  %185 = tail call ptr @simplify_unary_operation(i32 noundef %10, i32 noundef %47, ptr noundef %184, i32 noundef %170) #23
  br label %775

186:                                              ; preds = %167, %167
  %187 = zext nneg i32 %47 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !420
  %190 = add i8 %189, -12
  %191 = icmp ult i8 %190, 6
  br i1 %191, label %775, label %192, !prof !1148

192:                                              ; preds = %186
  %193 = icmp eq ptr %174, null
  br i1 %193, label %196, label %194, !prof !1149

194:                                              ; preds = %192
  %195 = icmp eq ptr %173, null
  br i1 %195, label %196, label %448

196:                                              ; preds = %194, %192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  %197 = and i8 %189, -2
  %198 = icmp eq i8 %197, 8
  br i1 %198, label %199, label %201, !prof !1150

199:                                              ; preds = %196
  %200 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %187
  br label %203

201:                                              ; preds = %196
  %202 = load ptr, ptr @const_true_rtx, align 8, !tbaa !404
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi ptr [ %200, %199 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %201 ]
  %205 = phi ptr [ null, %199 ], [ %202, %201 ]
  %206 = load ptr, ptr %204, align 8, !tbaa !404
  %207 = call fastcc i32 @find_comparison_args(i32 noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %208 = load i32, ptr %5, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %412, label %210, !prof !1151

210:                                              ; preds = %203
  %211 = zext i32 %208 to i64
  %212 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !420
  %214 = icmp eq i8 %213, 1
  br i1 %214, label %412, label %215, !prof !1152

215:                                              ; preds = %210
  %216 = load ptr, ptr %3, align 8
  %217 = tail call fastcc ptr @equiv_constant(ptr noundef %216) #25
  %218 = load ptr, ptr %4, align 8, !tbaa !404
  %219 = tail call fastcc ptr @equiv_constant(ptr noundef %218) #25
  %220 = icmp eq ptr %217, null
  %221 = icmp eq ptr %219, null
  br i1 %220, label %223, label %222, !prof !1153

222:                                              ; preds = %215
  br i1 %221, label %287, label %410

223:                                              ; preds = %215
  br i1 %221, label %287, label %224, !prof !1154

224:                                              ; preds = %223
  %225 = load i32, ptr %216, align 8
  %226 = and i32 %225, 65535
  %227 = icmp eq i32 %226, 37
  br i1 %227, label %228, label %236, !prof !1155

228:                                              ; preds = %224
  %229 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %216) #25
  %230 = icmp ugt i32 %229, 52
  br i1 %230, label %231, label %236, !prof !1156

231:                                              ; preds = %228
  %232 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %229) #25
  %233 = getelementptr inbounds %struct.cse_reg_info, ptr %232, i64 0, i32 1
  %234 = load i32, ptr %233, align 4, !tbaa !425
  %235 = add i32 %234, 4736
  br label %238

236:                                              ; preds = %228, %224
  %237 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %216, i32 noundef %208) #25
  br label %238

238:                                              ; preds = %236, %231
  %239 = phi i32 [ %235, %231 ], [ %237, %236 ]
  %240 = and i32 %239, 31
  %241 = tail call fastcc ptr @lookup(ptr noundef nonnull %216, i32 noundef %240, i32 noundef %208) #25
  %242 = icmp eq ptr %241, null
  br i1 %242, label %287, label %243, !prof !1157

243:                                              ; preds = %238
  %244 = load i32, ptr %168, align 8
  %245 = and i32 %244, 65535
  %246 = icmp eq i32 %245, 37
  br i1 %246, label %249, label %247, !prof !1158

247:                                              ; preds = %243
  %248 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %168, i32 noundef 23) #25
  br label %249

249:                                              ; preds = %243, %247
  %250 = phi i32 [ %248, %247 ], [ 0, %243 ]
  %251 = getelementptr inbounds %struct.table_elt, ptr %241, i64 0, i32 6
  %252 = load ptr, ptr %251, align 8, !tbaa !404
  %253 = icmp eq ptr %252, null
  br i1 %253, label %287, label %254, !prof !1159

254:                                              ; preds = %249, %276
  %255 = phi ptr [ %280, %276 ], [ %252, %249 ]
  %256 = phi i32 [ %278, %276 ], [ %250, %249 ]
  %257 = phi ptr [ %277, %276 ], [ %168, %249 ]
  %258 = load ptr, ptr %255, align 8, !tbaa !408
  %259 = tail call i32 @exp_equiv_p(ptr noundef %258, ptr noundef %258, i32 noundef 1, i8 noundef zeroext 0) #25, !range !481
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %276, label %261, !prof !1160

261:                                              ; preds = %254
  %262 = load ptr, ptr %255, align 8, !tbaa !408
  %263 = tail call ptr @simplify_relational_operation(i32 noundef %207, i32 noundef %47, i32 noundef %208, ptr noundef %262, ptr noundef nonnull %219) #23
  %264 = icmp eq ptr %263, null
  br i1 %264, label %276, label %265, !prof !1161

265:                                              ; preds = %261
  %266 = load i32, ptr %263, align 8
  %267 = and i32 %266, 65535
  %268 = icmp eq i32 %267, 37
  br i1 %268, label %271, label %269, !prof !1162

269:                                              ; preds = %265
  %270 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %263, i32 noundef 23) #25
  br label %271

271:                                              ; preds = %265, %269
  %272 = phi i32 [ %270, %269 ], [ 0, %265 ]
  %273 = icmp slt i32 %272, %256
  %274 = select i1 %273, ptr %263, ptr %257, !prof !1162
  %275 = tail call i32 @llvm.smin.i32(i32 %272, i32 %256)
  br label %276

276:                                              ; preds = %261, %254, %271
  %277 = phi ptr [ %274, %271 ], [ %257, %254 ], [ %257, %261 ]
  %278 = phi i32 [ %275, %271 ], [ %256, %254 ], [ %256, %261 ]
  %279 = getelementptr inbounds %struct.table_elt, ptr %255, i64 0, i32 4
  %280 = load ptr, ptr %279, align 8, !tbaa !404
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %254, !prof !1163, !llvm.loop !1164

282:                                              ; preds = %276
  %283 = icmp eq ptr %277, %168
  br i1 %283, label %287, label %284, !prof !1165

284:                                              ; preds = %282
  %285 = tail call ptr @copy_rtx(ptr noundef %277) #23
  %286 = tail call fastcc ptr @fold_rtx(ptr noundef %285, ptr noundef %1) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %779

287:                                              ; preds = %249, %238, %282, %222, %223
  %288 = phi i1 [ true, %223 ], [ true, %222 ], [ false, %282 ], [ false, %238 ], [ false, %249 ]
  %289 = load i32, ptr %216, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 37
  br i1 %291, label %292, label %308, !prof !1166

292:                                              ; preds = %287
  %293 = load i32, ptr %218, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 37
  br i1 %295, label %296, label %308, !prof !1167

296:                                              ; preds = %292
  %297 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %216) #25
  %298 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %297) #25
  %299 = getelementptr inbounds %struct.cse_reg_info, ptr %298, i64 0, i32 1
  %300 = load i32, ptr %299, align 4, !tbaa !425
  %301 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %218) #25
  %302 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %301) #25
  %303 = getelementptr inbounds %struct.cse_reg_info, ptr %302, i64 0, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !425
  %305 = icmp eq i32 %300, %304
  br i1 %305, label %410, label %306, !prof !1168

306:                                              ; preds = %296
  %307 = load i32, ptr %216, align 8
  br label %308

308:                                              ; preds = %306, %292, %287
  %309 = phi i32 [ %307, %306 ], [ %289, %292 ], [ %289, %287 ]
  %310 = and i32 %309, 65535
  %311 = icmp eq i32 %310, 37
  br i1 %311, label %312, label %320, !prof !1166

312:                                              ; preds = %308
  %313 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %216) #25
  %314 = icmp ugt i32 %313, 52
  br i1 %314, label %315, label %320, !prof !1169

315:                                              ; preds = %312
  %316 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %313) #25
  %317 = getelementptr inbounds %struct.cse_reg_info, ptr %316, i64 0, i32 1
  %318 = load i32, ptr %317, align 4, !tbaa !425
  %319 = add i32 %318, 4736
  br label %322

320:                                              ; preds = %312, %308
  %321 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %216, i32 noundef %208) #25
  br label %322

322:                                              ; preds = %320, %315
  %323 = phi i32 [ %319, %315 ], [ %321, %320 ]
  %324 = and i32 %323, 31
  %325 = tail call fastcc ptr @lookup(ptr noundef nonnull %216, i32 noundef %324, i32 noundef %208) #25
  %326 = icmp eq ptr %325, null
  br i1 %326, label %352, label %327, !prof !1170

327:                                              ; preds = %322
  %328 = load i32, ptr %218, align 8
  %329 = and i32 %328, 65535
  %330 = icmp eq i32 %329, 37
  br i1 %330, label %331, label %339, !prof !1158

331:                                              ; preds = %327
  %332 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %218) #25
  %333 = icmp ugt i32 %332, 52
  br i1 %333, label %334, label %339

334:                                              ; preds = %331
  %335 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %332) #25
  %336 = getelementptr inbounds %struct.cse_reg_info, ptr %335, i64 0, i32 1
  %337 = load i32, ptr %336, align 4, !tbaa !425
  %338 = add i32 %337, 4736
  br label %341

339:                                              ; preds = %331, %327
  %340 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %218, i32 noundef %208) #25
  br label %341

341:                                              ; preds = %339, %334
  %342 = phi i32 [ %338, %334 ], [ %340, %339 ]
  %343 = and i32 %342, 31
  %344 = tail call fastcc ptr @lookup(ptr noundef nonnull %218, i32 noundef %343, i32 noundef %208) #25
  %345 = icmp eq ptr %344, null
  br i1 %345, label %352, label %346, !prof !1171

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.table_elt, ptr %325, i64 0, i32 6
  %348 = load ptr, ptr %347, align 8, !tbaa !800
  %349 = getelementptr inbounds %struct.table_elt, ptr %344, i64 0, i32 6
  %350 = load ptr, ptr %349, align 8, !tbaa !800
  %351 = icmp eq ptr %348, %350
  br i1 %351, label %410, label %352, !prof !1171

352:                                              ; preds = %346, %341, %322
  %353 = load i32, ptr %216, align 8
  %354 = and i32 %353, 65535
  %355 = icmp eq i32 %354, 37
  br i1 %355, label %356, label %410, !prof !1166

356:                                              ; preds = %352
  %357 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %216) #25
  %358 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %357) #25
  %359 = getelementptr inbounds %struct.cse_reg_info, ptr %358, i64 0, i32 1
  %360 = load i32, ptr %359, align 4, !tbaa !425
  %361 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %216) #25
  %362 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %361) #25
  %363 = getelementptr inbounds %struct.cse_reg_info, ptr %362, i64 0, i32 1
  %364 = load i32, ptr %363, align 4, !tbaa !425
  %365 = icmp sgt i32 %364, -1
  br i1 %365, label %366, label %413, !prof !1169

366:                                              ; preds = %356
  %367 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %368 = sext i32 %360 to i64
  %369 = getelementptr inbounds %struct.qty_table_elem, ptr %367, i64 %368, i32 6
  %370 = load i32, ptr %369, align 4
  %371 = and i32 %370, 65535
  %372 = tail call i32 @comparison_dominates_p(i32 noundef %371, i32 noundef %207) #23
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %381, !prof !1172

374:                                              ; preds = %366
  switch i8 %213, label %375 [
    i8 8, label %413
    i8 9, label %413
    i8 11, label %413
    i8 17, label %413
  ], !prof !1173

375:                                              ; preds = %374
  %376 = load i32, ptr %369, align 4
  %377 = and i32 %376, 65535
  %378 = tail call i32 @reverse_condition(i32 noundef %207) #23
  %379 = tail call i32 @comparison_dominates_p(i32 noundef %377, i32 noundef %378) #23
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %413, label %381, !prof !1174

381:                                              ; preds = %375, %366
  %382 = getelementptr inbounds %struct.qty_table_elem, ptr %367, i64 %368, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !1175
  %384 = tail call i32 @rtx_equal_p(ptr noundef %383, ptr noundef %218) #23
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %403, !prof !1176

386:                                              ; preds = %381
  br i1 %288, label %391, label %387, !prof !1177

387:                                              ; preds = %386
  %388 = load ptr, ptr %382, align 8, !tbaa !1175
  %389 = tail call i32 @rtx_equal_p(ptr noundef %388, ptr noundef nonnull %219) #23
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %403, !prof !1176

391:                                              ; preds = %387, %386
  %392 = load i32, ptr %218, align 8
  %393 = and i32 %392, 65535
  %394 = icmp eq i32 %393, 37
  br i1 %394, label %395, label %413, !prof !1177

395:                                              ; preds = %391
  %396 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %218) #25
  %397 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %396) #25
  %398 = getelementptr inbounds %struct.cse_reg_info, ptr %397, i64 0, i32 1
  %399 = load i32, ptr %398, align 4, !tbaa !425
  %400 = getelementptr inbounds %struct.qty_table_elem, ptr %367, i64 %368, i32 3
  %401 = load i32, ptr %400, align 8, !tbaa !1178
  %402 = icmp eq i32 %399, %401
  br i1 %402, label %403, label %413

403:                                              ; preds = %395, %387, %381
  %404 = load i32, ptr %369, align 4
  %405 = and i32 %404, 65535
  %406 = tail call i32 @comparison_dominates_p(i32 noundef %405, i32 noundef %207) #23
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %414, label %408

408:                                              ; preds = %403
  %409 = icmp eq ptr %205, null
  br i1 %409, label %416, label %414

410:                                              ; preds = %296, %346, %352, %222
  %411 = phi ptr [ %218, %352 ], [ %218, %222 ], [ %216, %346 ], [ %216, %296 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %417

412:                                              ; preds = %210, %203
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %775

413:                                              ; preds = %356, %374, %374, %374, %374, %395, %391, %375
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %417

414:                                              ; preds = %408, %403
  %415 = phi ptr [ %206, %403 ], [ %205, %408 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %779

416:                                              ; preds = %408
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %775

417:                                              ; preds = %413, %410
  %418 = phi ptr [ %218, %413 ], [ %411, %410 ]
  %419 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !404
  %420 = icmp ne ptr %219, %419
  %421 = icmp ne ptr %217, null
  %422 = select i1 %420, i1 true, i1 %421
  br i1 %422, label %443, label %423, !prof !1179

423:                                              ; preds = %417
  %424 = tail call fastcc ptr @lookup_as_function(ptr noundef %216, i32 noundef 62) #25
  %425 = icmp eq ptr %424, null
  br i1 %425, label %443, label %426, !prof !1180

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct.rtx_def, ptr %424, i64 0, i32 1
  %428 = getelementptr inbounds %struct.rtx_def, ptr %424, i64 0, i32 1, i32 0, i32 0, i64 1
  %429 = load ptr, ptr %428, align 8, !tbaa !420
  %430 = tail call fastcc ptr @equiv_constant(ptr noundef %429) #25
  %431 = icmp eq ptr %430, null
  br i1 %431, label %443, label %432, !prof !1181

432:                                              ; preds = %426
  %433 = load i32, ptr %430, align 8
  %434 = and i32 %433, 65535
  %435 = icmp eq i32 %434, 30
  br i1 %435, label %436, label %443

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.rtx_def, ptr %430, i64 0, i32 1
  %438 = load i64, ptr %437, align 8, !tbaa !420
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %443, label %440

440:                                              ; preds = %436
  %441 = load ptr, ptr %427, align 8, !tbaa !420
  %442 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 62, i32 noundef %208, ptr noundef %441, ptr noundef nonnull %430) #23
  br label %443

443:                                              ; preds = %423, %426, %432, %436, %440, %417
  %444 = phi ptr [ %216, %423 ], [ %216, %426 ], [ %216, %432 ], [ %216, %436 ], [ %442, %440 ], [ %216, %417 ]
  %445 = select i1 %421, ptr %217, ptr %444, !prof !1182
  %446 = icmp eq ptr %219, null
  br i1 %446, label %447, label %448, !prof !1183

447:                                              ; preds = %443
  br label %448

448:                                              ; preds = %194, %443, %447
  %449 = phi i32 [ %208, %447 ], [ %208, %443 ], [ %170, %194 ]
  %450 = phi ptr [ %445, %447 ], [ %445, %443 ], [ %174, %194 ]
  %451 = phi i32 [ %207, %447 ], [ %207, %443 ], [ %10, %194 ]
  %452 = phi ptr [ %418, %447 ], [ %219, %443 ], [ %173, %194 ]
  %453 = tail call ptr @simplify_relational_operation(i32 noundef %451, i32 noundef %47, i32 noundef %449, ptr noundef %450, ptr noundef %452) #23
  br label %775

454:                                              ; preds = %167, %167
  switch i16 %11, label %742 [
    i16 49, label %455
    i16 50, label %622
    i16 70, label %646
    i16 71, label %646
    i16 72, label %646
    i16 73, label %646
    i16 62, label %646
    i16 61, label %646
    i16 63, label %646
    i16 52, label %646
    i16 65, label %646
    i16 68, label %646
    i16 67, label %646
  ], !prof !1184

455:                                              ; preds = %454
  %456 = icmp eq ptr %173, null
  br i1 %456, label %513, label %457, !prof !1185

457:                                              ; preds = %455
  %458 = load i32, ptr %173, align 8
  %459 = and i32 %458, 65535
  %460 = icmp eq i32 %459, 44
  br i1 %460, label %461, label %513, !prof !1186

461:                                              ; preds = %457
  %462 = load i32, ptr %172, align 8
  %463 = and i32 %462, 65535
  %464 = icmp eq i32 %463, 50
  br i1 %464, label %468, label %465

465:                                              ; preds = %461
  %466 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %172, i32 noundef 50) #25
  %467 = icmp eq ptr %466, null
  br i1 %467, label %484, label %468

468:                                              ; preds = %461, %465
  %469 = phi ptr [ %466, %465 ], [ %172, %461 ]
  %470 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1
  %471 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1, i32 0, i32 0, i64 1
  %472 = load ptr, ptr %471, align 8, !tbaa !420
  %473 = load i32, ptr %472, align 8
  %474 = and i32 %473, 65535
  %475 = icmp eq i32 %474, 44
  br i1 %475, label %476, label %484

476:                                              ; preds = %468
  %477 = getelementptr inbounds %struct.rtx_def, ptr %472, i64 0, i32 1
  %478 = load ptr, ptr %477, align 8, !tbaa !420
  %479 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !420
  %481 = icmp eq ptr %478, %480
  br i1 %481, label %482, label %484

482:                                              ; preds = %476
  %483 = load ptr, ptr %470, align 8, !tbaa !420
  br label %779

484:                                              ; preds = %476, %468, %465
  %485 = load i32, ptr %172, align 8
  %486 = and i32 %485, 65535
  %487 = icmp eq i32 %486, 35
  br i1 %487, label %491, label %488

488:                                              ; preds = %484
  %489 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %172, i32 noundef 35) #25
  %490 = icmp eq ptr %489, null
  br i1 %490, label %513, label %491

491:                                              ; preds = %484, %488
  %492 = phi ptr [ %489, %488 ], [ %172, %484 ]
  %493 = getelementptr inbounds %struct.rtx_def, ptr %492, i64 0, i32 1
  %494 = load ptr, ptr %493, align 8, !tbaa !420
  %495 = load i32, ptr %494, align 8
  %496 = and i32 %495, 65535
  %497 = icmp eq i32 %496, 50
  br i1 %497, label %498, label %513

498:                                              ; preds = %491
  %499 = getelementptr inbounds %struct.rtx_def, ptr %494, i64 0, i32 1
  %500 = getelementptr inbounds %struct.rtx_def, ptr %494, i64 0, i32 1, i32 0, i32 0, i64 1
  %501 = load ptr, ptr %500, align 8, !tbaa !420
  %502 = load i32, ptr %501, align 8
  %503 = and i32 %502, 65535
  %504 = icmp eq i32 %503, 44
  br i1 %504, label %505, label %513

505:                                              ; preds = %498
  %506 = getelementptr inbounds %struct.rtx_def, ptr %501, i64 0, i32 1
  %507 = load ptr, ptr %506, align 8, !tbaa !420
  %508 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !420
  %510 = icmp eq ptr %507, %509
  br i1 %510, label %511, label %513

511:                                              ; preds = %505
  %512 = load ptr, ptr %499, align 8, !tbaa !420
  br label %779

513:                                              ; preds = %488, %491, %498, %505, %457, %455
  %514 = icmp eq ptr %174, null
  br i1 %514, label %571, label %515, !prof !1187

515:                                              ; preds = %513
  %516 = load i32, ptr %174, align 8
  %517 = and i32 %516, 65535
  %518 = icmp eq i32 %517, 44
  br i1 %518, label %519, label %571

519:                                              ; preds = %515
  %520 = load i32, ptr %171, align 8
  %521 = and i32 %520, 65535
  %522 = icmp eq i32 %521, 50
  br i1 %522, label %526, label %523

523:                                              ; preds = %519
  %524 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %171, i32 noundef 50) #25
  %525 = icmp eq ptr %524, null
  br i1 %525, label %542, label %526

526:                                              ; preds = %519, %523
  %527 = phi ptr [ %524, %523 ], [ %171, %519 ]
  %528 = getelementptr inbounds %struct.rtx_def, ptr %527, i64 0, i32 1
  %529 = getelementptr inbounds %struct.rtx_def, ptr %527, i64 0, i32 1, i32 0, i32 0, i64 1
  %530 = load ptr, ptr %529, align 8, !tbaa !420
  %531 = load i32, ptr %530, align 8
  %532 = and i32 %531, 65535
  %533 = icmp eq i32 %532, 44
  br i1 %533, label %534, label %542

534:                                              ; preds = %526
  %535 = getelementptr inbounds %struct.rtx_def, ptr %530, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !420
  %537 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !420
  %539 = icmp eq ptr %536, %538
  br i1 %539, label %540, label %542

540:                                              ; preds = %534
  %541 = load ptr, ptr %528, align 8, !tbaa !420
  br label %779

542:                                              ; preds = %534, %526, %523
  %543 = load i32, ptr %171, align 8
  %544 = and i32 %543, 65535
  %545 = icmp eq i32 %544, 35
  br i1 %545, label %549, label %546

546:                                              ; preds = %542
  %547 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %171, i32 noundef 35) #25
  %548 = icmp eq ptr %547, null
  br i1 %548, label %571, label %549

549:                                              ; preds = %542, %546
  %550 = phi ptr [ %547, %546 ], [ %171, %542 ]
  %551 = getelementptr inbounds %struct.rtx_def, ptr %550, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !420
  %553 = load i32, ptr %552, align 8
  %554 = and i32 %553, 65535
  %555 = icmp eq i32 %554, 50
  br i1 %555, label %556, label %571

556:                                              ; preds = %549
  %557 = getelementptr inbounds %struct.rtx_def, ptr %552, i64 0, i32 1
  %558 = getelementptr inbounds %struct.rtx_def, ptr %552, i64 0, i32 1, i32 0, i32 0, i64 1
  %559 = load ptr, ptr %558, align 8, !tbaa !420
  %560 = load i32, ptr %559, align 8
  %561 = and i32 %560, 65535
  %562 = icmp eq i32 %561, 44
  br i1 %562, label %563, label %571

563:                                              ; preds = %556
  %564 = getelementptr inbounds %struct.rtx_def, ptr %559, i64 0, i32 1
  %565 = load ptr, ptr %564, align 8, !tbaa !420
  %566 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1
  %567 = load ptr, ptr %566, align 8, !tbaa !420
  %568 = icmp eq ptr %565, %567
  br i1 %568, label %569, label %571

569:                                              ; preds = %563
  %570 = load ptr, ptr %557, align 8, !tbaa !420
  br label %779

571:                                              ; preds = %546, %549, %556, %563, %515, %513
  br i1 %456, label %742, label %572, !prof !1185

572:                                              ; preds = %571
  %573 = load i32, ptr %173, align 8
  %574 = and i32 %573, 65535
  %575 = icmp eq i32 %574, 30
  br i1 %575, label %576, label %646, !prof !1188

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %578 = load i64, ptr %577, align 8, !tbaa !420
  %579 = icmp ult i64 %578, -9223372036854775807
  br i1 %579, label %646, label %580, !prof !1189

580:                                              ; preds = %576
  %581 = load i32, ptr %171, align 8
  %582 = and i32 %581, 65535
  %583 = icmp eq i32 %582, 37
  br i1 %583, label %584, label %646, !prof !1190

584:                                              ; preds = %580
  %585 = sub nsw i64 0, %578
  %586 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %585) #23
  %587 = load i32, ptr %586, align 8
  %588 = and i32 %587, 65535
  %589 = icmp eq i32 %588, 37
  br i1 %589, label %590, label %598

590:                                              ; preds = %584
  %591 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %586) #25
  %592 = icmp ugt i32 %591, 52
  br i1 %592, label %593, label %598

593:                                              ; preds = %590
  %594 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %591) #25
  %595 = getelementptr inbounds %struct.cse_reg_info, ptr %594, i64 0, i32 1
  %596 = load i32, ptr %595, align 4, !tbaa !425
  %597 = add i32 %596, 4736
  br label %600

598:                                              ; preds = %590, %584
  %599 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %586, i32 noundef %47) #25
  br label %600

600:                                              ; preds = %598, %593
  %601 = phi i32 [ %597, %593 ], [ %599, %598 ]
  %602 = and i32 %601, 31
  %603 = tail call fastcc ptr @lookup(ptr noundef nonnull %586, i32 noundef %602, i32 noundef %47) #25
  %604 = icmp eq ptr %603, null
  br i1 %604, label %646, label %605

605:                                              ; preds = %600
  %606 = getelementptr inbounds %struct.table_elt, ptr %603, i64 0, i32 6
  %607 = load ptr, ptr %606, align 8, !tbaa !404
  %608 = icmp eq ptr %607, null
  br i1 %608, label %646, label %613

609:                                              ; preds = %613
  %610 = getelementptr inbounds %struct.table_elt, ptr %614, i64 0, i32 4
  %611 = load ptr, ptr %610, align 8, !tbaa !404
  %612 = icmp eq ptr %611, null
  br i1 %612, label %646, label %613, !llvm.loop !1191

613:                                              ; preds = %605, %609
  %614 = phi ptr [ %611, %609 ], [ %607, %605 ]
  %615 = load ptr, ptr %614, align 8, !tbaa !408
  %616 = load i32, ptr %615, align 8
  %617 = and i32 %616, 65535
  %618 = icmp eq i32 %617, 37
  br i1 %618, label %619, label %609

619:                                              ; preds = %613
  %620 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %615, ptr noundef null) #25
  %621 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %47, ptr noundef %172, ptr noundef %620) #23
  br label %779

622:                                              ; preds = %454
  %623 = icmp eq ptr %173, null
  br i1 %623, label %742, label %624, !prof !668

624:                                              ; preds = %622
  %625 = load i32, ptr %173, align 8
  %626 = and i32 %625, 65535
  %627 = icmp eq i32 %626, 30
  br i1 %627, label %628, label %646

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %630 = load ptr, ptr %629, align 8, !tbaa !420
  %631 = tail call fastcc ptr @lookup_as_function(ptr noundef %630, i32 noundef 49) #25
  %632 = icmp eq ptr %631, null
  br i1 %632, label %646, label %633

633:                                              ; preds = %628
  %634 = getelementptr inbounds %struct.rtx_def, ptr %631, i64 0, i32 1, i32 0, i32 0, i64 1
  %635 = load ptr, ptr %634, align 8, !tbaa !420
  %636 = load i32, ptr %635, align 8
  %637 = and i32 %636, 65535
  %638 = icmp eq i32 %637, 30
  br i1 %638, label %639, label %646

639:                                              ; preds = %633
  %640 = tail call ptr @copy_rtx(ptr noundef nonnull %631) #23
  %641 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %642 = load i64, ptr %641, align 8, !tbaa !420
  %643 = sub nsw i64 0, %642
  %644 = tail call ptr @plus_constant(ptr noundef %640, i64 noundef %643) #23
  %645 = tail call fastcc ptr @fold_rtx(ptr noundef %644, ptr noundef null) #25
  br label %779

646:                                              ; preds = %609, %605, %628, %633, %600, %580, %576, %572, %624, %454, %454, %454, %454, %454, %454, %454, %454, %454, %454, %454
  %647 = load i32, ptr %172, align 8
  %648 = and i32 %647, 65535
  %649 = icmp eq i32 %648, 37
  %650 = icmp ne ptr %173, null
  %651 = select i1 %649, i1 %650, i1 false
  br i1 %651, label %652, label %742, !prof !1192

652:                                              ; preds = %646
  %653 = load i32, ptr %173, align 8
  %654 = and i32 %653, 65535
  %655 = icmp eq i32 %654, 30
  br i1 %655, label %656, label %742, !prof !1193

656:                                              ; preds = %652
  %657 = icmp eq i32 %10, 67
  switch i16 %11, label %667 [
    i16 67, label %658
    i16 65, label %658
    i16 68, label %658
  ]

658:                                              ; preds = %656, %656, %656
  %659 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %660 = load i64, ptr %659, align 8, !tbaa !420
  %661 = zext nneg i32 %47 to i64
  %662 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %661
  %663 = load i8, ptr %662, align 1, !tbaa !420
  %664 = zext i8 %663 to i64
  %665 = shl nuw nsw i64 %664, 3
  %666 = icmp ult i64 %660, %665
  br i1 %666, label %667, label %742, !prof !1194

667:                                              ; preds = %656, %658
  %668 = phi i1 [ true, %658 ], [ false, %656 ]
  %669 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %172, i32 noundef %10) #25
  %670 = icmp eq ptr %669, null
  br i1 %670, label %742, label %671, !prof !1195

671:                                              ; preds = %667
  %672 = getelementptr inbounds %struct.rtx_def, ptr %669, i64 0, i32 1
  %673 = load ptr, ptr %672, align 8, !tbaa !420
  %674 = icmp eq ptr %673, %172
  br i1 %674, label %742, label %675, !prof !1196

675:                                              ; preds = %671
  %676 = getelementptr inbounds %struct.rtx_def, ptr %669, i64 0, i32 1, i32 0, i32 0, i64 1
  %677 = load ptr, ptr %676, align 8, !tbaa !420
  %678 = tail call fastcc ptr @fold_rtx(ptr noundef %677, ptr noundef null) #25
  %679 = tail call fastcc ptr @equiv_constant(ptr noundef %678) #25
  %680 = icmp eq ptr %679, null
  br i1 %680, label %742, label %681, !prof !1197

681:                                              ; preds = %675
  %682 = load i32, ptr %679, align 8
  %683 = and i32 %682, 65535
  %684 = icmp eq i32 %683, 30
  br i1 %684, label %685, label %742

685:                                              ; preds = %681
  br i1 %668, label %686, label %700

686:                                              ; preds = %685
  %687 = zext nneg i32 %47 to i64
  %688 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %687
  %689 = load i8, ptr %688, align 1, !tbaa !420
  %690 = add i8 %689, -12
  %691 = icmp ult i8 %690, 6
  br i1 %691, label %742, label %692

692:                                              ; preds = %686
  %693 = getelementptr inbounds %struct.rtx_def, ptr %679, i64 0, i32 1
  %694 = load i64, ptr %693, align 8, !tbaa !420
  %695 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %687
  %696 = load i8, ptr %695, align 1, !tbaa !420
  %697 = zext i8 %696 to i64
  %698 = shl nuw nsw i64 %697, 3
  %699 = icmp ult i64 %694, %698
  br i1 %699, label %700, label %742

700:                                              ; preds = %685, %692
  %701 = icmp eq i32 %10, 50
  %702 = or i1 %701, %668
  %703 = select i1 %702, i32 49, i32 %10
  %704 = tail call ptr @simplify_binary_operation(i32 noundef %703, i32 noundef %47, ptr noundef nonnull %173, ptr noundef nonnull %679) #23
  %705 = icmp eq ptr %704, null
  br i1 %705, label %742, label %706

706:                                              ; preds = %700
  br i1 %668, label %707, label %731

707:                                              ; preds = %706
  %708 = load i32, ptr %704, align 8
  %709 = and i32 %708, 65535
  %710 = icmp eq i32 %709, 30
  br i1 %710, label %711, label %731

711:                                              ; preds = %707
  %712 = getelementptr inbounds %struct.rtx_def, ptr %704, i64 0, i32 1
  %713 = load i64, ptr %712, align 8, !tbaa !420
  %714 = zext nneg i32 %47 to i64
  %715 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %714
  %716 = load i8, ptr %715, align 1, !tbaa !420
  %717 = zext i8 %716 to i64
  %718 = shl nuw nsw i64 %717, 3
  %719 = icmp slt i64 %713, %718
  br i1 %719, label %731, label %720

720:                                              ; preds = %711
  br i1 %657, label %721, label %724

721:                                              ; preds = %720
  %722 = add nsw i64 %718, -1
  %723 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %722) #23
  br label %731

724:                                              ; preds = %720
  %725 = load ptr, ptr %672, align 8, !tbaa !420
  %726 = tail call i32 @side_effects_p(ptr noundef %725) #23
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %742

728:                                              ; preds = %724
  %729 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %714
  %730 = load ptr, ptr %729, align 8, !tbaa !404
  br label %779

731:                                              ; preds = %721, %711, %707, %706
  %732 = phi ptr [ %723, %721 ], [ %704, %711 ], [ %704, %707 ], [ %704, %706 ]
  %733 = load ptr, ptr %672, align 8, !tbaa !420
  %734 = tail call ptr @copy_rtx(ptr noundef %733) #23
  %735 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %172, ptr noundef %734) #23
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %739

737:                                              ; preds = %731
  %738 = tail call fastcc ptr @fold_rtx(ptr noundef %734, ptr noundef %1) #25
  br label %739

739:                                              ; preds = %737, %731
  %740 = phi ptr [ %734, %731 ], [ %738, %737 ]
  %741 = tail call ptr @simplify_gen_binary(i32 noundef %10, i32 noundef %47, ptr noundef %740, ptr noundef %732) #23
  br label %779

742:                                              ; preds = %724, %700, %692, %686, %675, %681, %671, %667, %658, %622, %571, %454, %646, %652
  %743 = icmp eq ptr %174, null
  %744 = select i1 %743, ptr %172, ptr %174, !prof !1198
  %745 = icmp eq ptr %173, null
  %746 = select i1 %745, ptr %171, ptr %173, !prof !1199
  %747 = tail call ptr @simplify_binary_operation(i32 noundef %10, i32 noundef %47, ptr noundef %744, ptr noundef %746) #23
  br label %775

748:                                              ; preds = %167
  %749 = icmp eq i32 %10, 122
  %750 = icmp ne ptr %174, null
  %751 = select i1 %749, i1 %750, i1 false
  br i1 %751, label %752, label %775

752:                                              ; preds = %748
  %753 = load i32, ptr %174, align 8
  %754 = and i32 %753, 65535
  %755 = icmp eq i32 %754, 121
  br i1 %755, label %756, label %775

756:                                              ; preds = %752
  %757 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1
  %758 = load ptr, ptr %757, align 8, !tbaa !420
  %759 = tail call i32 @rtx_equal_p(ptr noundef %758, ptr noundef %173) #23
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %775, label %779

761:                                              ; preds = %167, %167
  %762 = icmp eq ptr %174, null
  %763 = select i1 %762, ptr %172, ptr %174, !prof !1200
  %764 = icmp eq ptr %173, null
  br i1 %764, label %765, label %766, !prof !1201

765:                                              ; preds = %761
  br label %766

766:                                              ; preds = %761, %765
  %767 = phi ptr [ %171, %765 ], [ %173, %761 ]
  %768 = icmp eq ptr %169, null
  br i1 %768, label %769, label %772, !prof !1202

769:                                              ; preds = %766
  %770 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1, i32 0, i32 0, i64 2
  %771 = load ptr, ptr %770, align 8, !tbaa !420
  br label %772

772:                                              ; preds = %766, %769
  %773 = phi ptr [ %771, %769 ], [ %169, %766 ]
  %774 = tail call ptr @simplify_ternary_operation(i32 noundef %10, i32 noundef %47, i32 noundef %170, ptr noundef %763, ptr noundef %767, ptr noundef %773) #23
  br label %775

775:                                              ; preds = %416, %412, %186, %167, %748, %752, %756, %177, %772, %742, %448, %182
  %776 = phi ptr [ null, %167 ], [ %774, %772 ], [ null, %756 ], [ null, %752 ], [ null, %748 ], [ %747, %742 ], [ null, %416 ], [ %453, %448 ], [ null, %177 ], [ %185, %182 ], [ null, %186 ], [ null, %412 ]
  %777 = icmp eq ptr %776, null
  %778 = select i1 %777, ptr %168, ptr %776, !prof !1203
  br label %779

779:                                              ; preds = %25, %18, %728, %739, %639, %619, %540, %569, %482, %511, %414, %284, %756, %34, %16, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %12, %2, %775
  %780 = phi ptr [ %778, %775 ], [ %645, %639 ], [ %621, %619 ], [ null, %2 ], [ %15, %12 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %16 ], [ %0, %34 ], [ %173, %756 ], [ %286, %284 ], [ %415, %414 ], [ %483, %482 ], [ %512, %511 ], [ %541, %540 ], [ %570, %569 ], [ %741, %739 ], [ %730, %728 ], [ %0, %18 ], [ %0, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret ptr %780
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1204 !PGOFuncName !1205 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !404
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8, !prof !1206

8:                                                ; preds = %3, %26
  %9 = phi ptr [ %28, %26 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.table_elt, ptr %9, i64 0, i32 10
  %11 = load i8, ptr %10, align 8
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %26, !prof !1207

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !408
  %16 = icmp eq ptr %15, %0
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %30, label %21, !prof !1208

21:                                               ; preds = %14
  %22 = icmp ne i32 %18, 37
  %23 = zext i1 %22 to i32
  %24 = tail call i32 @exp_equiv_p(ptr noundef nonnull %0, ptr noundef %15, i32 noundef %23, i8 noundef zeroext 0) #25, !range !481
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30, !prof !1209

26:                                               ; preds = %8, %21
  %27 = getelementptr inbounds %struct.table_elt, ptr %9, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !404
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %8, !prof !1210, !llvm.loop !1211

30:                                               ; preds = %21, %26, %14, %3
  %31 = phi ptr [ null, %3 ], [ null, %26 ], [ %9, %21 ], [ %9, %14 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_equiv_classes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1212 !PGOFuncName !1213 {
  %3 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !800
  %5 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !800
  %7 = icmp eq ptr %4, %6
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %91, label %10, !prof !1214

10:                                               ; preds = %2, %89
  %11 = phi ptr [ %17, %89 ], [ %6, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !408
  %13 = getelementptr inbounds %struct.table_elt, ptr %11, i64 0, i32 10
  %14 = load i8, ptr %13, align 8
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.table_elt, ptr %11, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !871
  %18 = load i32, ptr %12, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %24, label %21, !prof !1215

21:                                               ; preds = %10
  %22 = tail call i32 @exp_equiv_p(ptr noundef nonnull %12, ptr noundef nonnull %12, i32 noundef 1, i8 noundef zeroext 0) #25, !range !481
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %89, label %24, !prof !1216

24:                                               ; preds = %21, %10
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !416
  %25 = load i32, ptr %12, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %36, !prof !1215

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %30 = icmp ugt i32 %29, 52
  br i1 %30, label %31, label %36, !prof !1217

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %29) #25
  %33 = getelementptr inbounds %struct.cse_reg_info, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !425
  %35 = add i32 %34, 4736
  br label %38

36:                                               ; preds = %28, %24
  %37 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %12, i32 noundef %15) #25
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi i32 [ %35, %31 ], [ %37, %36 ]
  %40 = and i32 %39, 31
  %41 = load i32, ptr %12, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 37
  br i1 %43, label %44, label %52, !prof !1217

44:                                               ; preds = %38
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %46 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %45) #25
  %47 = getelementptr inbounds %struct.cse_reg_info, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !425
  %49 = icmp sgt i32 %48, -1
  %50 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  tail call fastcc void @delete_reg_equiv(i32 noundef %50) #25
  %51 = load i32, ptr %12, align 8
  br label %52

52:                                               ; preds = %44, %38
  %53 = phi i32 [ %51, %44 ], [ %41, %38 ]
  %54 = phi i1 [ %49, %44 ], [ false, %38 ]
  %55 = and i32 %53, 65535
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %61, !prof !1215

57:                                               ; preds = %52
  %58 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %59 = icmp ugt i32 %58, 52
  br i1 %59, label %60, label %61, !prof !1217

60:                                               ; preds = %57
  tail call fastcc void @remove_pseudo_from_table(ptr noundef nonnull %12, i32 noundef %40) #25
  br label %62

61:                                               ; preds = %57, %52
  tail call fastcc void @remove_from_table(ptr noundef nonnull %11, i32 noundef %40) #25
  br label %62

62:                                               ; preds = %61, %60
  %63 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %12, ptr noundef %4, i32 noundef 0) #25, !range !481
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %64, i1 true, i1 %54
  br i1 %65, label %66, label %83, !prof !1218

66:                                               ; preds = %62
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %12) #25
  %67 = load i32, ptr %12, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %78, !prof !1217

70:                                               ; preds = %66
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %72 = icmp ugt i32 %71, 52
  br i1 %72, label %73, label %78, !prof !1217

73:                                               ; preds = %70
  %74 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %71) #25
  %75 = getelementptr inbounds %struct.cse_reg_info, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !425
  %77 = add i32 %76, 4736
  br label %80

78:                                               ; preds = %70, %66
  %79 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %12, i32 noundef %15) #25
  br label %80

80:                                               ; preds = %78, %73
  %81 = phi i32 [ %77, %73 ], [ %79, %78 ]
  %82 = and i32 %81, 31
  br label %83

83:                                               ; preds = %62, %80
  %84 = phi i32 [ %82, %80 ], [ %40, %62 ]
  %85 = tail call fastcc ptr @insert(ptr noundef nonnull %12, ptr noundef %4, i32 noundef %84, i32 noundef %15) #25
  %86 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !416
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds %struct.table_elt, ptr %85, i64 0, i32 11
  store i8 %87, ptr %88, align 1, !tbaa !732
  br label %89

89:                                               ; preds = %83, %21
  %90 = icmp eq ptr %17, null
  br i1 %90, label %91, label %10, !prof !1219, !llvm.loop !1220

91:                                               ; preds = %89, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @use_related_value(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !1221 !PGOFuncName !1222 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !1223

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !825
  %7 = icmp eq ptr %6, null
  br i1 %7, label %73, label %39, !prof !1224

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 35
  br i1 %11, label %12, label %73, !prof !1225

12:                                               ; preds = %8
  %13 = tail call ptr @get_related_value(ptr noundef nonnull %0) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15, !prof !1226

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %27, !prof !1226

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #25
  %21 = icmp ugt i32 %20, 52
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %24 = getelementptr inbounds %struct.cse_reg_info, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !425
  %26 = add i32 %25, 4736
  br label %31

27:                                               ; preds = %19, %15
  %28 = lshr i32 %16, 16
  %29 = and i32 %28, 255
  %30 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %13, i32 noundef %29) #25
  br label %31

31:                                               ; preds = %22, %27
  %32 = phi i32 [ %26, %22 ], [ %30, %27 ]
  %33 = and i32 %32, 31
  %34 = load i32, ptr %13, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = tail call fastcc ptr @lookup(ptr noundef nonnull %13, i32 noundef %33, i32 noundef %36) #25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %73, label %39, !prof !1227

39:                                               ; preds = %4, %31
  %40 = phi ptr [ %37, %31 ], [ %1, %4 ]
  br label %41

41:                                               ; preds = %39, %60
  %42 = phi ptr [ %62, %60 ], [ %40, %39 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !408
  %44 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %43) #23
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %60, !prof !1228

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.table_elt, ptr %42, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !404
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50, !prof !1229

50:                                               ; preds = %46, %56
  %51 = phi ptr [ %58, %56 ], [ %48, %46 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !408
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %66, label %56, !prof !1230

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.table_elt, ptr %51, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !404
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %50, !prof !1231, !llvm.loop !1232

60:                                               ; preds = %56, %46, %41
  %61 = getelementptr inbounds %struct.table_elt, ptr %42, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !825
  %63 = icmp eq ptr %62, %40
  %64 = icmp eq ptr %62, null
  %65 = or i1 %63, %64
  br i1 %65, label %73, label %41, !prof !1233

66:                                               ; preds = %50
  %67 = tail call i64 @get_integer_term(ptr noundef %0) #23
  %68 = load ptr, ptr %42, align 8, !tbaa !408
  %69 = tail call i64 @get_integer_term(ptr noundef %68) #23
  %70 = sub nsw i64 %67, %69
  %71 = load ptr, ptr %51, align 8, !tbaa !408
  %72 = tail call ptr @plus_constant(ptr noundef %71, i64 noundef %70) #23
  br label %73

73:                                               ; preds = %60, %4, %12, %8, %31, %66
  %74 = phi ptr [ %72, %66 ], [ null, %31 ], [ null, %8 ], [ null, %12 ], [ null, %4 ], [ null, %60 ]
  ret ptr %74
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @try_const_anchors(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !403 !PGOFuncName !1234 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  %9 = call fastcc zeroext i8 @compute_const_anchors(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #25, !range !519
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %2
  %12 = load i64, ptr %3, align 8, !tbaa !515
  %13 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %12) #23
  %14 = load i64, ptr %5, align 8, !tbaa !515
  %15 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %14) #23
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #25
  %21 = icmp ugt i32 %20, 52
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %24 = getelementptr inbounds %struct.cse_reg_info, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !425
  %26 = add i32 %25, 4736
  br label %29

27:                                               ; preds = %19, %11
  %28 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %13, i32 noundef %1) #25
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i32 [ %26, %22 ], [ %28, %27 ]
  %31 = and i32 %30, 31
  %32 = tail call fastcc ptr @lookup(ptr noundef nonnull %13, i32 noundef %31, i32 noundef %1) #25
  %33 = load i32, ptr %15, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #25
  %38 = icmp ugt i32 %37, 52
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %37) #25
  %41 = getelementptr inbounds %struct.cse_reg_info, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !425
  %43 = add i32 %42, 4736
  br label %46

44:                                               ; preds = %36, %29
  %45 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %15, i32 noundef %1) #25
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi i32 [ %43, %39 ], [ %45, %44 ]
  %48 = and i32 %47, 31
  %49 = tail call fastcc ptr @lookup(ptr noundef nonnull %15, i32 noundef %48, i32 noundef %1) #25
  %50 = icmp eq ptr %32, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i64, ptr %4, align 8, !tbaa !515
  %53 = call fastcc ptr @find_reg_offset_for_const(ptr noundef nonnull %32, i64 noundef %52, ptr noundef nonnull %7) #25
  %54 = icmp eq ptr %49, null
  br i1 %54, label %71, label %60

55:                                               ; preds = %46
  %56 = icmp eq ptr %49, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %55
  %58 = load i64, ptr %6, align 8, !tbaa !515
  %59 = call fastcc ptr @find_reg_offset_for_const(ptr noundef nonnull %49, i64 noundef %58, ptr noundef nonnull %8) #25
  br label %71

60:                                               ; preds = %51
  %61 = load i64, ptr %6, align 8, !tbaa !515
  %62 = call fastcc ptr @find_reg_offset_for_const(ptr noundef nonnull %49, i64 noundef %61, ptr noundef nonnull %8) #25
  %63 = icmp eq ptr %53, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = icmp eq ptr %62, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %8, align 4, !tbaa !416
  %68 = load i32, ptr %7, align 4, !tbaa !416
  %69 = icmp ugt i32 %67, %68
  %70 = select i1 %69, ptr %62, ptr %53
  br label %71

71:                                               ; preds = %51, %57, %55, %64, %60, %2, %66
  %72 = phi ptr [ %70, %66 ], [ null, %2 ], [ %62, %60 ], [ %53, %64 ], [ null, %55 ], [ %59, %57 ], [ %53, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret ptr %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @notreg_cost(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1235 !PGOFuncName !1236 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %35, !prof !1237

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !420
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %35, !prof !1162

12:                                               ; preds = %6
  %13 = lshr i32 %3, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !420
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = lshr i32 %9, 16
  %21 = and i32 %20, 255
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !420
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %28 = load i8, ptr %27, align 1, !tbaa !420
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %22
  %30 = load i8, ptr %29, align 1, !tbaa !420
  %31 = icmp ult i8 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %0) #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %26, %19, %12, %6, %2
  %36 = load i8, ptr @optimize_this_for_speed_p, align 1, !tbaa !420
  %37 = tail call i32 @rtx_cost(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %36) #23
  %38 = shl nsw i32 %37, 1
  br label %39

39:                                               ; preds = %32, %35
  %40 = phi i32 [ %38, %35 ], [ 0, %32 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @approx_reg_cost(ptr noundef %0) unnamed_addr #0 !prof !1238 !PGOFuncName !1239 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !tbaa !416
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @approx_reg_cost_1, ptr noundef nonnull %3) #23
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %3, align 4
  %7 = select i1 %5, i32 %6, i32 2147483647, !prof !1240
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @preferable(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 !prof !1241 !PGOFuncName !1242 {
  %5 = icmp eq i32 %0, %2
  br i1 %5, label %10, label %6, !prof !1243

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 2147483647
  br i1 %7, label %21, label %8, !prof !1244

8:                                                ; preds = %6
  %9 = icmp eq i32 %2, 2147483647
  br i1 %9, label %21, label %10, !prof !1245

10:                                               ; preds = %8, %4
  %11 = icmp eq i32 %1, %3
  br i1 %11, label %16, label %12, !prof !1246

12:                                               ; preds = %10
  %13 = icmp eq i32 %1, 2147483647
  br i1 %13, label %21, label %14, !prof !1247

14:                                               ; preds = %12
  %15 = icmp eq i32 %3, 2147483647
  br i1 %15, label %21, label %16, !prof !1248

16:                                               ; preds = %14, %10
  br i1 %5, label %19, label %17, !prof !1249

17:                                               ; preds = %16
  %18 = sub nsw i32 %0, %2
  br label %21

19:                                               ; preds = %16
  %20 = sub nsw i32 %1, %3
  br label %21

21:                                               ; preds = %19, %14, %12, %8, %6, %17
  %22 = phi i32 [ %18, %17 ], [ 1, %6 ], [ -1, %8 ], [ 1, %12 ], [ -1, %14 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @nonoverlapping_memrefs_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_jump_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @insert_regs(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1250 !PGOFuncName !1251 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %110 [
    i16 37, label %6
    i16 39, label %92
  ], !prof !1252

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %9 = getelementptr inbounds %struct.cse_reg_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !425
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %26, !prof !1253

12:                                               ; preds = %6
  %13 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %14 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %15 = getelementptr inbounds %struct.cse_reg_info, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !425
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %17, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %0, align 8
  %21 = xor i32 %20, %19
  %22 = and i32 %21, 16711680
  %23 = icmp ne i32 %22, 0
  %24 = icmp eq i32 %2, 0
  %25 = or i1 %24, %23
  br i1 %25, label %104, label %26, !prof !1254

26:                                               ; preds = %6, %12
  %27 = icmp eq ptr %1, null
  br i1 %27, label %67, label %28, !prof !1255

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !404
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32, !prof !1256

32:                                               ; preds = %28, %63
  %33 = phi ptr [ %65, %63 ], [ %30, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !408
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %63, !prof !1257

38:                                               ; preds = %32
  %39 = load i32, ptr %0, align 8
  %40 = xor i32 %39, %35
  %41 = and i32 %40, 16711680
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63, !prof !1258

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #25
  %45 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %44) #25
  %46 = getelementptr inbounds %struct.cse_reg_info, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !425
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %50, label %49, !prof !1258

49:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1167, ptr noundef nonnull @.str.4) #23
  br label %50

50:                                               ; preds = %43, %49
  %51 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %52 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %44) #25
  %53 = getelementptr inbounds %struct.cse_reg_info, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !425
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.qty_table_elem, ptr %51, i64 %55, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %0, align 8
  %59 = xor i32 %58, %57
  %60 = and i32 %59, 16711680
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63, !prof !1258

62:                                               ; preds = %50
  tail call fastcc void @make_regs_eqv(i32 noundef %7, i32 noundef %44) #25
  br label %104

63:                                               ; preds = %50, %32, %38
  %64 = getelementptr inbounds %struct.table_elt, ptr %33, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !404
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %32, !prof !1259, !llvm.loop !1260

67:                                               ; preds = %63, %28, %26
  %68 = icmp eq i32 %2, 0
  br i1 %68, label %69, label %88, !prof !1261

69:                                               ; preds = %67
  %70 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %71 = getelementptr inbounds %struct.cse_reg_info, ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !474
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %88, !prof !1262

74:                                               ; preds = %69
  %75 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %76 = getelementptr inbounds %struct.cse_reg_info, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !475
  %78 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %79 = getelementptr inbounds %struct.cse_reg_info, ptr %78, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !474
  %81 = add nsw i32 %80, 1
  %82 = icmp eq i32 %77, %81
  br i1 %82, label %83, label %88, !prof !1263

83:                                               ; preds = %74
  %84 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %85 = getelementptr inbounds %struct.cse_reg_info, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !475
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %85, align 4, !tbaa !475
  br label %88

88:                                               ; preds = %83, %74, %69, %67
  %89 = load i32, ptr %0, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  tail call fastcc void @make_new_qty(i32 noundef %7, i32 noundef %91) #25
  br label %104

92:                                               ; preds = %3
  %93 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !420
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %94) #25
  %100 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %99) #25
  %101 = getelementptr inbounds %struct.cse_reg_info, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !425
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %110, label %106

104:                                              ; preds = %62, %88, %12, %110, %106
  %105 = phi i32 [ 1, %106 ], [ %111, %110 ], [ 1, %88 ], [ 0, %12 ], [ 1, %62 ]
  ret i32 %105

106:                                              ; preds = %98
  %107 = load ptr, ptr %93, align 8, !tbaa !420
  %108 = tail call fastcc i32 @insert_regs(ptr noundef %107, ptr noundef null, i32 noundef 0) #25, !range !481
  %109 = tail call fastcc i32 @mention_regs(ptr noundef nonnull %0) #25, !range !481
  br label %104

110:                                              ; preds = %3, %98, %92
  %111 = tail call fastcc i32 @mention_regs(ptr noundef nonnull %0) #25, !range !481
  br label %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rehash_using_reg(ptr noundef %0) unnamed_addr #0 !prof !1264 !PGOFuncName !1265 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %9, !prof !1266

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !420
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %2, %1 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %12 = and i32 %10, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %93, !prof !1267

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #25
  %16 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %15) #25
  %17 = getelementptr inbounds %struct.cse_reg_info, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !474
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %93, label %20, !prof !1268

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #25
  %22 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %21) #25
  %23 = getelementptr inbounds %struct.cse_reg_info, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !474
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #25
  %26 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %25) #25
  %27 = getelementptr inbounds %struct.cse_reg_info, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !475
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %93, !prof !1269

30:                                               ; preds = %20, %90
  %31 = phi i64 [ %91, %90 ], [ 0, %20 ]
  %32 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !404
  %34 = icmp eq ptr %33, null
  br i1 %34, label %90, label %35, !prof !1270

35:                                               ; preds = %30, %88
  %36 = phi ptr [ %38, %88 ], [ %33, %30 ]
  %37 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !696
  %39 = load ptr, ptr %36, align 8, !tbaa !408
  %40 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %11, ptr noundef %39) #23
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %88, label %42, !prof !1271

42:                                               ; preds = %35
  %43 = load ptr, ptr %36, align 8, !tbaa !408
  %44 = tail call i32 @exp_equiv_p(ptr noundef %43, ptr noundef %43, i32 noundef 1, i8 noundef zeroext 0) #25, !range !481
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %88, label %46, !prof !1272

46:                                               ; preds = %42
  %47 = load ptr, ptr %36, align 8, !tbaa !408
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %59, !prof !1272

51:                                               ; preds = %46
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #25
  %53 = icmp ugt i32 %52, 52
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %52) #25
  %56 = getelementptr inbounds %struct.cse_reg_info, ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !425
  %58 = add i32 %57, 4736
  br label %64

59:                                               ; preds = %51, %46
  %60 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 10
  %61 = load i8, ptr %60, align 8
  %62 = zext i8 %61 to i32
  %63 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %47, i32 noundef %62) #25
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i32 [ %58, %54 ], [ %63, %59 ]
  %66 = and i32 %65, 31
  %67 = zext nneg i32 %66 to i64
  %68 = icmp eq i64 %31, %67
  br i1 %68, label %88, label %69, !prof !1273

69:                                               ; preds = %64
  %70 = load ptr, ptr %37, align 8, !tbaa !696
  %71 = icmp eq ptr %70, null
  %72 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !1074
  br i1 %71, label %76, label %74, !prof !1274

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.table_elt, ptr %70, i64 0, i32 3
  store ptr %73, ptr %75, align 8, !tbaa !1074
  br label %76

76:                                               ; preds = %69, %74
  %77 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 3
  %78 = icmp eq ptr %73, null
  %79 = getelementptr inbounds %struct.table_elt, ptr %73, i64 0, i32 2
  %80 = select i1 %78, ptr %32, ptr %79, !prof !1275
  store ptr %70, ptr %80, align 8, !tbaa !404
  %81 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %67
  %82 = load ptr, ptr %81, align 8, !tbaa !404
  store ptr %82, ptr %37, align 8, !tbaa !696
  store ptr null, ptr %77, align 8, !tbaa !1074
  %83 = load ptr, ptr %81, align 8, !tbaa !404
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85, !prof !1276

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.table_elt, ptr %83, i64 0, i32 3
  store ptr %36, ptr %86, align 8, !tbaa !1074
  br label %87

87:                                               ; preds = %85, %76
  store ptr %36, ptr %81, align 8, !tbaa !404
  br label %88

88:                                               ; preds = %35, %42, %64, %87
  %89 = icmp eq ptr %38, null
  br i1 %89, label %90, label %35, !prof !1277, !llvm.loop !1278

90:                                               ; preds = %88, %30
  %91 = add nuw nsw i64 %31, 1
  %92 = icmp eq i64 %91, 32
  br i1 %92, label %93, label %30, !prof !1279, !llvm.loop !1280

93:                                               ; preds = %90, %9, %14, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @insert(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1281 !PGOFuncName !1282 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 37
  br i1 %7, label %10, label %8, !prof !1283

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %0, i32 noundef 23) #25
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ]
  %12 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %0) #25
  %13 = tail call fastcc ptr @insert_with_costs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %11, i32 noundef %12) #25
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invalidate_from_clobbers(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !751 !PGOFuncName !1284 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %46 [
    i16 25, label %4
    i16 15, label %17
  ], !prof !1285

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !420
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %46 [
    i16 37, label %11
    i16 39, label %11
    i16 43, label %11
    i16 40, label %12
    i16 120, label %12
  ]

11:                                               ; preds = %8, %8, %8
  tail call fastcc void @invalidate(ptr noundef nonnull %6, i32 noundef 0) #25
  br label %46

12:                                               ; preds = %8, %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !420
  %15 = lshr i32 %9, 16
  %16 = and i32 %15, 255
  tail call fastcc void @invalidate(ptr noundef %14, i32 noundef %16) #25
  br label %46

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !420
  %20 = load i32, ptr %19, align 8, !tbaa !428
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %46, !prof !761

22:                                               ; preds = %17
  %23 = zext nneg i32 %20 to i64
  br label %24

24:                                               ; preds = %22, %44
  %25 = phi i64 [ %23, %22 ], [ %26, %44 ]
  %26 = add nsw i64 %25, -1
  %27 = load ptr, ptr %18, align 8, !tbaa !420
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !404
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 25
  br i1 %32, label %33, label %44, !prof !762

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !420
  %36 = load i32, ptr %35, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %44 [
    i16 37, label %38
    i16 39, label %38
    i16 43, label %38
    i16 40, label %39
    i16 120, label %39
  ], !prof !1286

38:                                               ; preds = %33, %33, %33
  tail call fastcc void @invalidate(ptr noundef nonnull %35, i32 noundef 0) #25
  br label %44

39:                                               ; preds = %33, %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !420
  %42 = lshr i32 %36, 16
  %43 = and i32 %42, 255
  tail call fastcc void @invalidate(ptr noundef %41, i32 noundef %43) #25
  br label %44

44:                                               ; preds = %38, %39, %33, %24
  %45 = icmp ugt i64 %25, 1
  br i1 %45, label %24, label %46, !prof !1287, !llvm.loop !1288

46:                                               ; preds = %44, %17, %1, %4, %12, %11, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @invalidate_memory() unnamed_addr #15 !prof !1289 !PGOFuncName !1290 {
  br label %1

1:                                                ; preds = %0, %17
  %2 = phi i64 [ 0, %0 ], [ %18, %17 ]
  %3 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !404
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6, !prof !1291

6:                                                ; preds = %1, %15
  %7 = phi ptr [ %9, %15 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.table_elt, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !696
  %10 = getelementptr inbounds %struct.table_elt, ptr %7, i64 0, i32 11
  %11 = load i8, ptr %10, align 1, !tbaa !732
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !1292

13:                                               ; preds = %6
  %14 = trunc i64 %2 to i32
  tail call fastcc void @remove_from_table(ptr noundef nonnull %7, i32 noundef %14) #25
  br label %15

15:                                               ; preds = %6, %13
  %16 = icmp eq ptr %9, null
  br i1 %16, label %17, label %6, !prof !1293, !llvm.loop !1294

17:                                               ; preds = %15, %1
  %18 = add nuw nsw i64 %2, 1
  %19 = icmp eq i64 %18, 32
  br i1 %19, label %20, label %1, !prof !1295, !llvm.loop !1296

20:                                               ; preds = %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @invalidate_for_call() unnamed_addr #15 !prof !1289 !PGOFuncName !1297 {
  br label %1

1:                                                ; preds = %0, %27
  %2 = phi i64 [ 0, %0 ], [ %29, %27 ]
  %3 = phi i32 [ 0, %0 ], [ %28, %27 ]
  %4 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !515
  %5 = shl nuw nsw i64 1, %2
  %6 = and i64 %4, %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %27, label %8, !prof !1298

8:                                                ; preds = %1
  %9 = trunc i64 %2 to i32
  tail call fastcc void @delete_reg_equiv(i32 noundef %9) #25
  %10 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %9) #25
  %11 = getelementptr inbounds %struct.cse_reg_info, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !475
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %21, !prof !1299

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %9) #25
  %16 = getelementptr inbounds %struct.cse_reg_info, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !475
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !475
  %19 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %9) #25
  %20 = getelementptr inbounds %struct.cse_reg_info, ptr %19, i64 0, i32 4
  store i32 -1, ptr %20, align 4, !tbaa !675
  br label %21

21:                                               ; preds = %14, %8
  %22 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !515
  %23 = and i64 %22, %5
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = or i32 %3, %25
  br label %27

27:                                               ; preds = %1, %21
  %28 = phi i32 [ %26, %21 ], [ %3, %1 ]
  %29 = add nuw nsw i64 %2, 1
  %30 = icmp eq i64 %29, 53
  br i1 %30, label %31, label %1, !prof !1300, !llvm.loop !1301

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %73, label %33, !prof !1302

33:                                               ; preds = %31, %70
  %34 = phi i64 [ %71, %70 ], [ 0, %31 ]
  %35 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !404
  %37 = icmp eq ptr %36, null
  br i1 %37, label %70, label %38, !prof !1303

38:                                               ; preds = %33, %68
  %39 = phi ptr [ %41, %68 ], [ %36, %33 ]
  %40 = getelementptr inbounds %struct.table_elt, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !696
  %42 = load ptr, ptr %39, align 8, !tbaa !408
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 37
  br i1 %45, label %46, label %68, !prof !1304

46:                                               ; preds = %38
  %47 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %42) #25
  %48 = icmp ugt i32 %47, 52
  br i1 %48, label %68, label %49, !prof !1305

49:                                               ; preds = %46
  %50 = lshr i32 %43, 16
  %51 = and i32 %50, 255
  %52 = tail call fastcc i32 @end_hard_regno(i32 noundef %51, i32 noundef %47) #25
  %53 = icmp ult i32 %47, %52
  br i1 %53, label %54, label %68, !prof !1306

54:                                               ; preds = %49
  %55 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !515
  %56 = zext nneg i32 %47 to i64
  br label %61

57:                                               ; preds = %61
  %58 = zext i32 %52 to i64
  %59 = add nuw nsw i64 %62, 1
  %60 = icmp eq i64 %59, %58
  br i1 %60, label %68, label %61, !prof !1307, !llvm.loop !1308

61:                                               ; preds = %54, %57
  %62 = phi i64 [ %56, %54 ], [ %59, %57 ]
  %63 = shl nuw i64 1, %62
  %64 = and i64 %55, %63
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %57, label %66, !prof !1309

66:                                               ; preds = %61
  %67 = trunc i64 %34 to i32
  tail call fastcc void @remove_from_table(ptr noundef nonnull %39, i32 noundef %67) #25
  br label %68

68:                                               ; preds = %57, %49, %66, %38, %46
  %69 = icmp eq ptr %41, null
  br i1 %69, label %70, label %38, !prof !1310, !llvm.loop !1311

70:                                               ; preds = %68, %33
  %71 = add nuw nsw i64 %34, 1
  %72 = icmp eq i64 %71, 32
  br i1 %72, label %73, label %33, !prof !1312, !llvm.loop !1313

73:                                               ; preds = %70, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mention_regs(ptr noundef readonly %0) unnamed_addr #0 !prof !1314 !PGOFuncName !1315 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %185, label %3, !prof !1316

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = trunc i32 %4 to i16
  switch i16 %6, label %99 [
    i16 37, label %7
    i16 39, label %44
    i16 48, label %104
  ], !prof !1317

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %10, label %14, !prof !1318

10:                                               ; preds = %7
  %11 = lshr i32 %4, 16
  %12 = and i32 %11, 255
  %13 = tail call fastcc i32 @end_hard_regno(i32 noundef %12, i32 noundef %8) #25
  br label %16

14:                                               ; preds = %7
  %15 = add i32 %8, 1
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %13, %10 ], [ %15, %14 ]
  %18 = icmp ult i32 %8, %17
  br i1 %18, label %19, label %185, !prof !1319

19:                                               ; preds = %16, %34
  %20 = phi i32 [ %42, %34 ], [ %8, %16 ]
  %21 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %22 = getelementptr inbounds %struct.cse_reg_info, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !474
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %34, !prof !1320

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %27 = getelementptr inbounds %struct.cse_reg_info, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !474
  %29 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %30 = getelementptr inbounds %struct.cse_reg_info, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !475
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %34, label %33, !prof !1321

33:                                               ; preds = %25
  tail call fastcc void @remove_invalid_refs(i32 noundef %20) #25
  br label %34

34:                                               ; preds = %33, %25, %19
  %35 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %36 = getelementptr inbounds %struct.cse_reg_info, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !475
  %38 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %39 = getelementptr inbounds %struct.cse_reg_info, ptr %38, i64 0, i32 3
  store i32 %37, ptr %39, align 4, !tbaa !474
  %40 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %41 = getelementptr inbounds %struct.cse_reg_info, ptr %40, i64 0, i32 4
  store i32 -1, ptr %41, align 4, !tbaa !675
  %42 = add i32 %20, 1
  %43 = icmp eq i32 %42, %17
  br i1 %43, label %185, label %19, !prof !1319, !llvm.loop !1322

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !420
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %99, !prof !1323

50:                                               ; preds = %44
  %51 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %46) #25
  %52 = icmp ugt i32 %51, 52
  br i1 %52, label %53, label %99, !prof !1323

53:                                               ; preds = %50
  %54 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %55 = getelementptr inbounds %struct.cse_reg_info, ptr %54, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !474
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %89, !prof !1324

58:                                               ; preds = %53
  %59 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %60 = getelementptr inbounds %struct.cse_reg_info, ptr %59, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !474
  %62 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %63 = getelementptr inbounds %struct.cse_reg_info, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !475
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %89, label %66, !prof !1325

66:                                               ; preds = %58
  %67 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %68 = getelementptr inbounds %struct.cse_reg_info, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !475
  %70 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %71 = getelementptr inbounds %struct.cse_reg_info, ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !474
  %73 = sub nsw i32 %69, %72
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %82, label %75

75:                                               ; preds = %66
  %76 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %77 = getelementptr inbounds %struct.cse_reg_info, ptr %76, i64 0, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !675
  %79 = load ptr, ptr %45, align 8, !tbaa !420
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef %79) #25
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %75, %66
  tail call fastcc void @remove_invalid_refs(i32 noundef %51) #25
  br label %89

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load i32, ptr %84, align 8, !tbaa !420
  %86 = load i32, ptr %0, align 8
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  tail call fastcc void @remove_invalid_subreg_refs(i32 noundef %51, i32 noundef %85, i32 noundef %88) #25
  br label %89

89:                                               ; preds = %82, %83, %58, %53
  %90 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %91 = getelementptr inbounds %struct.cse_reg_info, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !475
  %93 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %94 = getelementptr inbounds %struct.cse_reg_info, ptr %93, i64 0, i32 3
  store i32 %92, ptr %94, align 4, !tbaa !474
  %95 = load ptr, ptr %45, align 8, !tbaa !420
  %96 = tail call fastcc i32 @rhs_regno(ptr noundef %95) #25
  %97 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %98 = getelementptr inbounds %struct.cse_reg_info, ptr %97, i64 0, i32 4
  store i32 %96, ptr %98, align 4, !tbaa !675
  br label %185

99:                                               ; preds = %44, %50, %3
  %100 = zext nneg i32 %5 to i64
  %101 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !416
  %103 = icmp ult i32 %102, 2
  br i1 %103, label %104, label %141, !prof !1326

104:                                              ; preds = %3, %99
  %105 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !420
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 37
  br i1 %109, label %110, label %122, !prof !1327

110:                                              ; preds = %104
  %111 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %106) #25
  %112 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %111) #25
  %113 = getelementptr inbounds %struct.cse_reg_info, ptr %112, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !425
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %122, label %116, !prof !1328

116:                                              ; preds = %110
  %117 = load ptr, ptr %105, align 8, !tbaa !420
  %118 = tail call fastcc i32 @insert_regs(ptr noundef %117, ptr noundef null, i32 noundef 0) #25, !range !481
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120, !prof !1329

120:                                              ; preds = %116
  %121 = load ptr, ptr %105, align 8, !tbaa !420
  tail call fastcc void @rehash_using_reg(ptr noundef %121) #25
  br label %122

122:                                              ; preds = %116, %120, %110, %104
  %123 = phi i32 [ 0, %110 ], [ 1, %120 ], [ 0, %116 ], [ 0, %104 ]
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !420
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 37
  br i1 %128, label %129, label %141, !prof !1330

129:                                              ; preds = %122
  %130 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %125) #25
  %131 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %130) #25
  %132 = getelementptr inbounds %struct.cse_reg_info, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !425
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %141, label %135, !prof !1331

135:                                              ; preds = %129
  %136 = load ptr, ptr %124, align 8, !tbaa !420
  %137 = tail call fastcc i32 @insert_regs(ptr noundef %136, ptr noundef null, i32 noundef 0) #25, !range !481
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %124, align 8, !tbaa !420
  tail call fastcc void @rehash_using_reg(ptr noundef %140) #25
  br label %141

141:                                              ; preds = %122, %129, %139, %135, %99
  %142 = phi i32 [ %123, %129 ], [ 1, %139 ], [ %123, %135 ], [ %123, %122 ], [ 0, %99 ]
  %143 = zext nneg i32 %5 to i64
  %144 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !404
  %146 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %143
  %147 = load i8, ptr %146, align 1, !tbaa !420
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %185, label %149, !prof !1332

149:                                              ; preds = %141
  %150 = zext i8 %147 to i64
  br label %151

151:                                              ; preds = %149, %182
  %152 = phi i64 [ %150, %149 ], [ %154, %182 ]
  %153 = phi i32 [ %142, %149 ], [ %183, %182 ]
  %154 = add nsw i64 %152, -1
  %155 = getelementptr inbounds i8, ptr %145, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !420
  switch i8 %156, label %182 [
    i8 101, label %163
    i8 69, label %157
  ], !prof !1333

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %159 = getelementptr inbounds [1 x %union.rtunion_def], ptr %158, i64 0, i64 %154
  %160 = load ptr, ptr %159, align 8, !tbaa !420
  %161 = load i32, ptr %160, align 8, !tbaa !428
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %169, label %182

163:                                              ; preds = %151
  %164 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %165 = getelementptr inbounds [1 x %union.rtunion_def], ptr %164, i64 0, i64 %154
  %166 = load ptr, ptr %165, align 8, !tbaa !420
  %167 = tail call fastcc i32 @mention_regs(ptr noundef %166) #25, !range !481
  %168 = or i32 %167, %153
  br label %182

169:                                              ; preds = %157, %169
  %170 = phi i64 [ %177, %169 ], [ 0, %157 ]
  %171 = phi ptr [ %178, %169 ], [ %160, %157 ]
  %172 = phi i32 [ %176, %169 ], [ %153, %157 ]
  %173 = getelementptr inbounds %struct.rtvec_def, ptr %171, i64 0, i32 1, i64 %170
  %174 = load ptr, ptr %173, align 8, !tbaa !404
  %175 = tail call fastcc i32 @mention_regs(ptr noundef %174) #25, !range !481
  %176 = or i32 %175, %172
  %177 = add nuw nsw i64 %170, 1
  %178 = load ptr, ptr %159, align 8, !tbaa !420
  %179 = load i32, ptr %178, align 8, !tbaa !428
  %180 = sext i32 %179 to i64
  %181 = icmp slt i64 %177, %180
  br i1 %181, label %169, label %182, !llvm.loop !1334

182:                                              ; preds = %169, %157, %151, %163
  %183 = phi i32 [ %168, %163 ], [ %153, %151 ], [ %153, %157 ], [ %176, %169 ]
  %184 = icmp sgt i64 %152, 1
  br i1 %184, label %151, label %185, !prof !1335, !llvm.loop !1336

185:                                              ; preds = %34, %182, %16, %141, %1, %89
  %186 = phi i32 [ 0, %89 ], [ 0, %1 ], [ %142, %141 ], [ 0, %16 ], [ %183, %182 ], [ 0, %34 ]
  ret i32 %186
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_invalid_refs(i32 noundef %0) unnamed_addr #0 !prof !1337 !PGOFuncName !1338 {
  %2 = add i32 %0, 1
  br label %3

3:                                                ; preds = %1, %23
  %4 = phi i64 [ 0, %1 ], [ %24, %23 ]
  %5 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !404
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8, !prof !1339

8:                                                ; preds = %3, %21
  %9 = phi ptr [ %11, %21 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.table_elt, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !696
  %12 = load ptr, ptr %9, align 8, !tbaa !408
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %21, label %16, !prof !1340

16:                                               ; preds = %8
  %17 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %2, ptr noundef nonnull %12, ptr noundef null) #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !1341

19:                                               ; preds = %16
  %20 = trunc i64 %4 to i32
  tail call fastcc void @remove_from_table(ptr noundef nonnull %9, i32 noundef %20) #25
  br label %21

21:                                               ; preds = %8, %16, %19
  %22 = icmp eq ptr %11, null
  br i1 %22, label %23, label %8, !prof !1342, !llvm.loop !1343

23:                                               ; preds = %21, %3
  %24 = add nuw nsw i64 %4, 1
  %25 = icmp eq i64 %24, 32
  br i1 %25, label %26, label %3, !prof !1344, !llvm.loop !1345

26:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_const_anchors(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !403 !PGOFuncName !1346 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %8 = call fastcc zeroext i8 @compute_const_anchors(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #25, !range !519
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %4, align 8, !tbaa !515
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %5, align 8, !tbaa !515
  %15 = sub nsw i64 0, %14
  tail call fastcc void @insert_const_anchor(i64 noundef %11, ptr noundef %0, i64 noundef %15, i32 noundef %2) #25
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, ptr %6, align 8, !tbaa !515
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %7, align 8, !tbaa !515
  %21 = sub nsw i64 0, %20
  tail call fastcc void @insert_const_anchor(i64 noundef %17, ptr noundef %0, i64 noundef %21, i32 noundef %2) #25
  br label %22

22:                                               ; preds = %16, %19, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @equiv_constant(ptr noundef %0) unnamed_addr #0 !prof !1347 !PGOFuncName !1348 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %28, !prof !1349

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %7 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %6) #25
  %8 = getelementptr inbounds %struct.cse_reg_info, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !425
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %28, !prof !1350

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %13 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %12) #25
  %14 = getelementptr inbounds %struct.cse_reg_info, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !425
  %16 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !1097
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !1351

21:                                               ; preds = %11
  %22 = load ptr, ptr @rtl_hooks, align 8, !tbaa !833
  %23 = load i32, ptr %0, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = tail call ptr %22(i32 noundef %25, ptr noundef nonnull %19) #23
  %27 = icmp eq ptr %26, null
  br i1 %27, label %147, label %28, !prof !1352

28:                                               ; preds = %11, %1, %5, %21
  %29 = phi ptr [ %26, %21 ], [ %0, %5 ], [ %0, %1 ], [ %0, %11 ]
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !416
  %35 = icmp eq i32 %34, 9
  br i1 %35, label %147, label %36, !prof !1353

36:                                               ; preds = %28
  %37 = trunc i32 %30 to i16
  switch i16 %37, label %147 [
    i16 39, label %38
    i16 43, label %96
  ], !prof !1354

38:                                               ; preds = %36
  %39 = lshr i32 %30, 16
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !420
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %29, i32 noundef 30) #25
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %147, !prof !1323

48:                                               ; preds = %38
  %49 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %29, i32 noundef 32) #25
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %147, !prof !1323

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %29, i32 noundef 31) #25
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %147, !prof !1323

54:                                               ; preds = %51
  %55 = zext nneg i32 %40 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !420
  %58 = load i32, ptr @word_mode, align 4, !tbaa !416
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !420
  %62 = icmp ult i8 %57, %61
  br i1 %62, label %63, label %84, !prof !1323

63:                                               ; preds = %54
  %64 = zext nneg i32 %45 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !420
  %67 = icmp ult i8 %61, %66
  br i1 %67, label %68, label %84, !prof !1355

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !420
  %71 = tail call i32 @subreg_lowpart_offset(i32 noundef %40, i32 noundef %58) #23
  %72 = sub i32 %70, %71
  %73 = and i32 %72, -2147483645
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i32, ptr @word_mode, align 4, !tbaa !416
  %77 = load ptr, ptr %41, align 8, !tbaa !420
  %78 = tail call ptr @gen_rtx_SUBREG(i32 noundef %76, ptr noundef %77, i32 noundef %72) #23
  %79 = tail call fastcc ptr @lookup_as_function(ptr noundef %78, i32 noundef 30) #25
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr @rtl_hooks, align 8, !tbaa !833
  %83 = tail call ptr %82(i32 noundef %40, ptr noundef nonnull %79) #23
  br label %147

84:                                               ; preds = %75, %68, %63, %54
  %85 = load ptr, ptr %41, align 8, !tbaa !420
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 37
  br i1 %88, label %89, label %147, !prof !1323

89:                                               ; preds = %84
  %90 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %85) #25
  %91 = icmp eq ptr %90, null
  br i1 %91, label %147, label %92, !prof !1323

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load i32, ptr %93, align 8, !tbaa !420
  %95 = tail call ptr @simplify_subreg(i32 noundef %40, ptr noundef nonnull %90, i32 noundef %45, i32 noundef %94) #23
  br label %147

96:                                               ; preds = %36
  %97 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %29) #23
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !416
  %103 = icmp eq i32 %102, 9
  br i1 %103, label %147, label %104, !prof !1356

104:                                              ; preds = %96
  %105 = icmp eq i32 %99, 37
  br i1 %105, label %106, label %114, !prof !1356

106:                                              ; preds = %104
  %107 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %97) #25
  %108 = icmp ugt i32 %107, 52
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %107) #25
  %111 = getelementptr inbounds %struct.cse_reg_info, ptr %110, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !425
  %113 = add i32 %112, 4736
  br label %118

114:                                              ; preds = %106, %104
  %115 = lshr i32 %98, 16
  %116 = and i32 %115, 255
  %117 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %97, i32 noundef %116) #25
  br label %118

118:                                              ; preds = %114, %109
  %119 = phi i32 [ %113, %109 ], [ %117, %114 ]
  %120 = and i32 %119, 31
  %121 = load i32, ptr %97, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = tail call fastcc ptr @lookup(ptr noundef nonnull %97, i32 noundef %120, i32 noundef %123) #25
  %125 = icmp eq ptr %124, null
  br i1 %125, label %147, label %126, !prof !1357

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.table_elt, ptr %124, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !404
  %129 = icmp eq ptr %128, null
  br i1 %129, label %147, label %130, !prof !1358

130:                                              ; preds = %126, %143
  %131 = phi ptr [ %145, %143 ], [ %128, %126 ]
  %132 = getelementptr inbounds %struct.table_elt, ptr %131, i64 0, i32 12
  %133 = load i8, ptr %132, align 2, !tbaa !805
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %143, label %135, !prof !1359

135:                                              ; preds = %130
  %136 = load ptr, ptr %131, align 8, !tbaa !408
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !416
  %142 = icmp eq i32 %141, 9
  br i1 %142, label %147, label %143, !prof !864

143:                                              ; preds = %130, %135
  %144 = getelementptr inbounds %struct.table_elt, ptr %131, i64 0, i32 4
  %145 = load ptr, ptr %144, align 8, !tbaa !404
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %130, !prof !1360, !llvm.loop !1361

147:                                              ; preds = %143, %135, %126, %118, %96, %36, %81, %92, %51, %48, %38, %89, %84, %21, %28
  %148 = phi ptr [ %29, %28 ], [ null, %21 ], [ %95, %92 ], [ %83, %81 ], [ %46, %38 ], [ %49, %48 ], [ %52, %51 ], [ null, %89 ], [ null, %84 ], [ null, %36 ], [ null, %118 ], [ %97, %96 ], [ null, %126 ], [ null, %143 ], [ %136, %135 ]
  ret ptr %148
}

; Function Attrs: optsize
declare zeroext i8 @canonicalize_change_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_comparison_args(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !1362 !PGOFuncName !1363 {
  %6 = load ptr, ptr %1, align 8, !tbaa !420
  %7 = load ptr, ptr %2, align 8, !tbaa !420
  %8 = load i32, ptr %6, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !404
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %15, label %118, !prof !1364

15:                                               ; preds = %5, %104
  %16 = phi i32 [ %113, %104 ], [ %10, %5 ]
  %17 = phi i32 [ %111, %104 ], [ %8, %5 ]
  %18 = phi ptr [ %110, %104 ], [ %7, %5 ]
  %19 = phi ptr [ %109, %104 ], [ %6, %5 ]
  %20 = phi i32 [ %106, %104 ], [ %0, %5 ]
  %21 = and i32 %17, 65535
  %22 = icmp eq i32 %21, 48
  br i1 %22, label %23, label %26, !prof !1365

23:                                               ; preds = %15
  %24 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !404
  %25 = icmp eq ptr %18, %24
  br i1 %25, label %95, label %26

26:                                               ; preds = %23, %15
  %27 = zext nneg i32 %21 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !416
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %32, !prof !1365

31:                                               ; preds = %26
  switch i32 %20, label %32 [
    i32 80, label %95
    i32 81, label %90
  ]

32:                                               ; preds = %26, %31
  %33 = icmp eq i32 %21, 37
  br i1 %33, label %34, label %42, !prof !1366

34:                                               ; preds = %32
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %19) #25
  %36 = icmp ugt i32 %35, 52
  br i1 %36, label %37, label %42, !prof !1367

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %35) #25
  %39 = getelementptr inbounds %struct.cse_reg_info, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !425
  %41 = add i32 %40, 4736
  br label %44

42:                                               ; preds = %34, %32
  %43 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %19, i32 noundef %16) #25
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi i32 [ %41, %37 ], [ %43, %42 ]
  %46 = and i32 %45, 31
  %47 = load i32, ptr %19, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = tail call fastcc ptr @lookup(ptr noundef nonnull %19, i32 noundef %46, i32 noundef %49) #25
  %51 = icmp eq ptr %50, null
  br i1 %51, label %118, label %52, !prof !1368

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.table_elt, ptr %50, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !800
  %55 = getelementptr inbounds %struct.table_elt, ptr %54, i64 0, i32 12
  %56 = load i8, ptr %55, align 2, !tbaa !805
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %118, !prof !1369

58:                                               ; preds = %52, %85
  %59 = phi ptr [ %86, %85 ], [ %19, %52 ]
  %60 = phi ptr [ %88, %85 ], [ %54, %52 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !408
  %62 = tail call i32 @exp_equiv_p(ptr noundef nonnull %61, ptr noundef nonnull %61, i32 noundef 1, i8 noundef zeroext 0) #25, !range !481
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %85, label %64, !prof !1370

64:                                               ; preds = %58
  %65 = load ptr, ptr %60, align 8, !tbaa !408
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %95, label %69, !prof !1371

69:                                               ; preds = %64
  switch i32 %20, label %80 [
    i32 80, label %70
    i32 81, label %75
  ], !prof !1372

70:                                               ; preds = %69
  %71 = zext nneg i32 %67 to i64
  %72 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !416
  %74 = icmp ult i32 %73, 2
  br i1 %74, label %95, label %80, !prof !1373

75:                                               ; preds = %69
  %76 = zext nneg i32 %67 to i64
  %77 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !416
  %79 = icmp ult i32 %78, 2
  br i1 %79, label %90, label %80, !prof !1374

80:                                               ; preds = %70, %69, %75
  %81 = tail call i32 @rtx_addr_can_trap_p(ptr noundef nonnull %65) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85, !prof !1375

83:                                               ; preds = %80
  %84 = load ptr, ptr %60, align 8, !tbaa !408
  br label %85

85:                                               ; preds = %83, %58, %80
  %86 = phi ptr [ %84, %83 ], [ %59, %58 ], [ %59, %80 ]
  %87 = getelementptr inbounds %struct.table_elt, ptr %60, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !871
  %89 = icmp eq ptr %88, null
  br i1 %89, label %118, label %58, !prof !1376, !llvm.loop !1377

90:                                               ; preds = %75, %31
  %91 = phi ptr [ %19, %31 ], [ %59, %75 ]
  %92 = phi ptr [ %19, %31 ], [ %65, %75 ]
  %93 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %92, ptr noundef null) #23
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %118, label %104

95:                                               ; preds = %64, %70, %23, %31
  %96 = phi ptr [ %19, %31 ], [ %19, %23 ], [ %65, %70 ], [ %65, %64 ]
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 65535
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !416
  %102 = icmp ult i32 %101, 2
  br i1 %102, label %103, label %104, !prof !1378

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %90, %103, %95
  %105 = phi ptr [ %92, %90 ], [ %96, %103 ], [ %96, %95 ]
  %106 = phi i32 [ %93, %90 ], [ %98, %103 ], [ %20, %95 ]
  %107 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %108 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %107, align 8, !tbaa !420
  %110 = load ptr, ptr %108, align 8, !tbaa !420
  %111 = load i32, ptr %109, align 8
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !404
  %117 = icmp eq ptr %110, %116
  br i1 %117, label %15, label %118, !prof !1379

118:                                              ; preds = %104, %52, %44, %90, %85, %5
  %119 = phi i32 [ %0, %5 ], [ %20, %85 ], [ %20, %90 ], [ %20, %44 ], [ %20, %52 ], [ %106, %104 ]
  %120 = phi ptr [ %7, %5 ], [ %18, %85 ], [ %18, %90 ], [ %18, %44 ], [ %18, %52 ], [ %110, %104 ]
  %121 = phi ptr [ %6, %5 ], [ %86, %85 ], [ %91, %90 ], [ %19, %44 ], [ %19, %52 ], [ %109, %104 ]
  %122 = load i32, ptr %121, align 8
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  store i32 %124, ptr %3, align 4, !tbaa !416
  %125 = load i32, ptr %120, align 8
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  store i32 %127, ptr %4, align 4, !tbaa !416
  %128 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %121, ptr noundef null) #25
  store ptr %128, ptr %1, align 8, !tbaa !404
  %129 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %120, ptr noundef null) #25
  store ptr %129, ptr %2, align 8, !tbaa !404
  ret i32 %119
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @safe_hash(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1380 !PGOFuncName !1381 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 1) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @simplify_relational_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @comparison_dominates_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reverse_condition(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_as_function(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1382 !PGOFuncName !1383 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %14, !prof !1384

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = icmp ugt i32 %7, 52
  br i1 %8, label %9, label %14, !prof !1385

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %11 = getelementptr inbounds %struct.cse_reg_info, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !425
  %13 = add i32 %12, 4736
  br label %16

14:                                               ; preds = %6, %2
  %15 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %0, i32 noundef 0) #25
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %13, %9 ], [ %15, %14 ]
  %18 = and i32 %17, 31
  %19 = load i32, ptr %0, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = tail call fastcc ptr @lookup(ptr noundef nonnull %0, i32 noundef %18, i32 noundef %21) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24, !prof !1386

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.table_elt, ptr %22, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !404
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28, !prof !1387

28:                                               ; preds = %24, %39
  %29 = phi ptr [ %41, %39 ], [ %26, %24 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !408
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %39, !prof !1388

34:                                               ; preds = %28
  %35 = tail call i32 @exp_equiv_p(ptr noundef nonnull %30, ptr noundef nonnull %30, i32 noundef 1, i8 noundef zeroext 0) #25, !range !481
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !1389

37:                                               ; preds = %34
  %38 = load ptr, ptr %29, align 8, !tbaa !408
  br label %43

39:                                               ; preds = %28, %34
  %40 = getelementptr inbounds %struct.table_elt, ptr %29, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !404
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %28, !prof !1390, !llvm.loop !1391

43:                                               ; preds = %39, %24, %16, %37
  %44 = phi ptr [ %38, %37 ], [ null, %16 ], [ null, %24 ], [ null, %39 ]
  ret ptr %44
}

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_binary_operation(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_ternary_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_addr_can_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_related_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @get_integer_term(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @compute_const_anchors(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #17 !prof !403 !PGOFuncName !1392 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !420
  %8 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !842
  %9 = sub i64 0, %8
  %10 = and i64 %7, %9
  store i64 %10, ptr %1, align 8, !tbaa !515
  %11 = icmp eq i64 %10, %7
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !842
  %14 = add i64 %7, -1
  %15 = add i64 %14, %13
  %16 = sub i64 0, %13
  %17 = and i64 %15, %16
  store i64 %17, ptr %3, align 8, !tbaa !515
  %18 = sub nsw i64 %7, %17
  store i64 %18, ptr %4, align 8, !tbaa !515
  %19 = load i64, ptr %1, align 8, !tbaa !515
  %20 = sub nsw i64 %7, %19
  store i64 %20, ptr %2, align 8, !tbaa !515
  br label %21

21:                                               ; preds = %5, %12
  %22 = phi i8 [ 1, %12 ], [ 0, %5 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_reg_offset_for_const(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !403 !PGOFuncName !1393 {
  %4 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !404
  %6 = icmp eq ptr %5, null
  br i1 %6, label %68, label %7

7:                                                ; preds = %3, %61
  %8 = phi ptr [ %66, %61 ], [ %5, %3 ]
  %9 = phi ptr [ %63, %61 ], [ null, %3 ]
  %10 = phi ptr [ %62, %61 ], [ null, %3 ]
  %11 = phi i32 [ %65, %61 ], [ 0, %3 ]
  %12 = icmp eq ptr %10, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.table_elt, ptr %10, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !892
  %16 = getelementptr inbounds %struct.table_elt, ptr %10, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !893
  %18 = getelementptr inbounds %struct.table_elt, ptr %8, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !892
  %20 = getelementptr inbounds %struct.table_elt, ptr %8, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !893
  %22 = tail call fastcc i32 @preferable(i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #25
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %13, %7
  %25 = load ptr, ptr %8, align 8, !tbaa !408
  %26 = load i32, ptr %25, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %61 [
    i16 37, label %45
    i16 49, label %28
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !420
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !420
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 30
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = tail call i32 @exp_equiv_p(ptr noundef nonnull %25, ptr noundef nonnull %25, i32 noundef 1, i8 noundef zeroext 0) #25, !range !481
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %8, align 8, !tbaa !408
  br label %45

45:                                               ; preds = %43, %24
  %46 = phi ptr [ %44, %43 ], [ %25, %24 ]
  %47 = tail call ptr @plus_constant(ptr noundef %46, i64 noundef %1) #23
  %48 = load i32, ptr %47, align 8
  %49 = trunc i32 %48 to i16
  switch i16 %49, label %61 [
    i16 37, label %60
    i16 49, label %50
  ]

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !420
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !420
  %55 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !842
  %56 = add i64 %55, %54
  %57 = shl i64 %55, 1
  %58 = add i64 %57, -1
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %45, %50
  store i32 %11, ptr %2, align 4, !tbaa !416
  br label %61

61:                                               ; preds = %40, %45, %60, %50, %24, %28, %34
  %62 = phi ptr [ %10, %34 ], [ %10, %28 ], [ %10, %24 ], [ %10, %40 ], [ %8, %60 ], [ %10, %50 ], [ %10, %45 ]
  %63 = phi ptr [ %9, %34 ], [ %9, %28 ], [ %9, %24 ], [ %9, %40 ], [ %47, %60 ], [ %9, %50 ], [ %9, %45 ]
  %64 = getelementptr inbounds %struct.table_elt, ptr %8, i64 0, i32 4
  %65 = add i32 %11, 1
  %66 = load ptr, ptr %64, align 8, !tbaa !404
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %7, !llvm.loop !1394

68:                                               ; preds = %13, %61, %3
  %69 = phi ptr [ null, %3 ], [ %63, %61 ], [ %9, %13 ]
  ret ptr %69
}

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @approx_reg_cost_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #17 !prof !1395 !PGOFuncName !1396 {
  %3 = load ptr, ptr %0, align 8, !tbaa !404
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5, !prof !1397

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %33, !prof !1398

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  switch i32 %10, label %11 [
    i32 20, label %33
    i32 16, label %33
    i32 7, label %33
    i32 6, label %33
  ]

11:                                               ; preds = %9
  %12 = add i32 %10, -53
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %33, label %14, !prof !1399

14:                                               ; preds = %11
  %15 = icmp ult i32 %10, 53
  br i1 %15, label %16, label %30, !prof !1400

16:                                               ; preds = %14
  %17 = zext nneg i32 %10 to i64
  %18 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !420
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25, !prof !1401

21:                                               ; preds = %16
  %22 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %17
  %23 = load i8, ptr %22, align 1, !tbaa !420
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25, !prof !1402

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %17
  %27 = load i32, ptr %26, align 4, !tbaa !416
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %33

30:                                               ; preds = %14
  %31 = load i32, ptr %1, align 4, !tbaa !416
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %1, align 4, !tbaa !416
  br label %33

33:                                               ; preds = %21, %25, %2, %5, %30, %11, %9, %9, %9, %9
  %34 = phi i32 [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %11 ], [ 0, %30 ], [ %29, %25 ], [ 0, %5 ], [ 0, %2 ], [ 1, %21 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_regs_eqv(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1403 !PGOFuncName !1404 {
  %3 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1) #25
  %4 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !425
  %6 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %7 = sext i32 %5 to i64
  %8 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1) #25
  %9 = getelementptr inbounds %struct.cse_reg_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !425
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %13, label %12, !prof !1258

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 938, ptr noundef nonnull @.str.4) #23
  br label %13

13:                                               ; preds = %2, %12
  %14 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #25
  %15 = getelementptr inbounds %struct.cse_reg_info, ptr %14, i64 0, i32 1
  store i32 %5, ptr %15, align 4, !tbaa !425
  %16 = getelementptr inbounds %struct.qty_table_elem, ptr %6, i64 %7, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !914
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %6, i64 %7, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !1061
  %20 = icmp ult i32 %17, 53
  br i1 %20, label %21, label %33, !prof !1405

21:                                               ; preds = %13
  switch i32 %17, label %22 [
    i32 20, label %72
    i32 6, label %72
  ]

22:                                               ; preds = %21
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !420
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %23
  %29 = load i8, ptr %28, align 1, !tbaa !420
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  %32 = icmp ugt i32 %0, 52
  br i1 %32, label %65, label %35, !prof !1258

33:                                               ; preds = %13
  %34 = icmp ugt i32 %0, 52
  br i1 %34, label %49, label %35, !prof !1258

35:                                               ; preds = %33, %31
  %36 = zext nneg i32 %0 to i64
  %37 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !416
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %35
  switch i32 %0, label %41 [
    i32 20, label %65
    i32 6, label %65
  ]

41:                                               ; preds = %40
  %42 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %36
  %43 = load i8, ptr %42, align 1, !tbaa !420
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %36
  %47 = load i8, ptr %46, align 1, !tbaa !420
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %72, label %65

49:                                               ; preds = %33
  %50 = load ptr, ptr @cse_ebb_live_out, align 8, !tbaa !404
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %50, i32 noundef %0) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !1406

53:                                               ; preds = %49
  %54 = load ptr, ptr @cse_ebb_live_out, align 8, !tbaa !404
  %55 = tail call i32 @bitmap_bit_p(ptr noundef %54, i32 noundef %17) #23
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57, !prof !1407

57:                                               ; preds = %53, %49
  %58 = load ptr, ptr @cse_ebb_live_in, align 8, !tbaa !404
  %59 = tail call i32 @bitmap_bit_p(ptr noundef %58, i32 noundef %0) #23
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %72, label %61, !prof !1408

61:                                               ; preds = %57
  %62 = load ptr, ptr @cse_ebb_live_in, align 8, !tbaa !404
  %63 = tail call i32 @bitmap_bit_p(ptr noundef %62, i32 noundef %17) #23
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72, !prof !1409

65:                                               ; preds = %31, %40, %40, %61, %53, %45, %41
  %66 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !404
  %67 = zext i32 %17 to i64
  %68 = getelementptr inbounds %struct.reg_eqv_elem, ptr %66, i64 %67, i32 1
  store i32 %0, ptr %68, align 4, !tbaa !1057
  %69 = zext i32 %0 to i64
  %70 = getelementptr inbounds %struct.reg_eqv_elem, ptr %66, i64 %69
  store i32 %17, ptr %70, align 4, !tbaa !1059
  %71 = getelementptr inbounds %struct.reg_eqv_elem, ptr %66, i64 %69, i32 1
  store i32 -1, ptr %71, align 4, !tbaa !1057
  store i32 %0, ptr %16, align 4, !tbaa !914
  br label %115

72:                                               ; preds = %45, %21, %21, %61, %57, %35, %27, %22
  %73 = icmp ult i32 %19, 53
  %74 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !404
  br i1 %73, label %75, label %99, !prof !1410

75:                                               ; preds = %72, %97
  %76 = phi i32 [ %79, %97 ], [ %19, %72 ]
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %77, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !1057
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %99

81:                                               ; preds = %75
  %82 = icmp ugt i32 %0, 52
  %83 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %77
  %84 = load i32, ptr %83, align 4, !tbaa !416
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  switch i32 %76, label %87 [
    i32 20, label %99
    i32 6, label %99
  ]

87:                                               ; preds = %86
  %88 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %77
  %89 = load i8, ptr %88, align 1, !tbaa !420
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %77
  %93 = load i8, ptr %92, align 1, !tbaa !420
  %94 = icmp eq i8 %93, 0
  %95 = and i1 %82, %94
  br i1 %95, label %97, label %99, !prof !1411

96:                                               ; preds = %81
  br i1 %82, label %97, label %99, !prof !1412

97:                                               ; preds = %91, %96
  %98 = icmp ult i32 %79, 53
  br i1 %98, label %75, label %99, !prof !1413, !llvm.loop !1414

99:                                               ; preds = %96, %97, %75, %87, %91, %86, %86, %72
  %100 = phi i32 [ %19, %72 ], [ %76, %86 ], [ %76, %86 ], [ %76, %91 ], [ %76, %87 ], [ %76, %75 ], [ %79, %97 ], [ %76, %96 ]
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !1059
  %104 = zext i32 %0 to i64
  %105 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %104
  store i32 %103, ptr %105, align 4, !tbaa !1059
  %106 = icmp sgt i32 %103, -1
  br i1 %106, label %107, label %110, !prof !1412

107:                                              ; preds = %99
  %108 = zext nneg i32 %103 to i64
  %109 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %108, i32 1
  store i32 %0, ptr %109, align 4, !tbaa !1057
  br label %113

110:                                              ; preds = %99
  %111 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %112 = getelementptr inbounds %struct.qty_table_elem, ptr %111, i64 %7, i32 5
  store i32 %0, ptr %112, align 8, !tbaa !1061
  br label %113

113:                                              ; preds = %110, %107
  store i32 %0, ptr %102, align 4, !tbaa !1059
  %114 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %104, i32 1
  store i32 %100, ptr %114, align 4, !tbaa !1057
  br label %115

115:                                              ; preds = %113, %65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_new_qty(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1415 !PGOFuncName !1416 {
  %3 = load i32, ptr @next_qty, align 4, !tbaa !416
  %4 = load i32, ptr @max_qty, align 4, !tbaa !416
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %8, label %6, !prof !1417

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 911, ptr noundef nonnull @.str.4) #23
  %7 = load i32, ptr @next_qty, align 4, !tbaa !416
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %3, %2 ], [ %7, %6 ]
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @next_qty, align 4, !tbaa !416
  %11 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #25
  %12 = getelementptr inbounds %struct.cse_reg_info, ptr %11, i64 0, i32 1
  store i32 %9, ptr %12, align 4, !tbaa !425
  %13 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14
  %16 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14, i32 4
  store i32 %0, ptr %16, align 4, !tbaa !914
  %17 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14, i32 5
  store i32 %0, ptr %17, align 8, !tbaa !1061
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %1, 16
  %21 = and i32 %20, 16711680
  %22 = and i32 %19, -16777216
  %23 = or disjoint i32 %22, %21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 %23, ptr %18, align 4
  %24 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !404
  %25 = zext i32 %0 to i64
  %26 = getelementptr inbounds %struct.reg_eqv_elem, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.reg_eqv_elem, ptr %24, i64 %25, i32 1
  store i32 -1, ptr %27, align 4, !tbaa !1057
  store i32 -1, ptr %26, align 4, !tbaa !1059
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @insert_with_costs(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !prof !1281 !PGOFuncName !1418 {
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %17, !prof !1283

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %12 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %11) #25
  %13 = getelementptr inbounds %struct.cse_reg_info, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !425
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %17, label %16, !prof !1419

16:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1590, ptr noundef nonnull @.str.4) #23
  br label %17

17:                                               ; preds = %6, %10, %16
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %27, !prof !1283

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %24, label %27, !prof !1420

24:                                               ; preds = %21
  %25 = lshr i32 %18, 16
  %26 = and i32 %25, 255
  tail call fastcc void @add_to_hard_reg_set(i32 noundef %26, i32 noundef %22) #25
  br label %27

27:                                               ; preds = %24, %21, %17
  %28 = load ptr, ptr @free_element_chain, align 8, !tbaa !404
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !1421

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.table_elt, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !696
  store ptr %32, ptr @free_element_chain, align 8, !tbaa !404
  br label %35

33:                                               ; preds = %27
  %34 = tail call ptr @xmalloc(i64 noundef 80) #23
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi ptr [ %28, %30 ], [ %34, %33 ]
  store ptr %0, ptr %36, align 8, !tbaa !408
  %37 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 1
  store ptr null, ptr %37, align 8, !tbaa !734
  %38 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 8
  store i32 %4, ptr %38, align 8, !tbaa !892
  %39 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 9
  store i32 %5, ptr %39, align 4, !tbaa !893
  %40 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 4
  %41 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 5
  %42 = zext i32 %2 to i64
  %43 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  %44 = load ptr, ptr %43, align 8, !tbaa !404
  %45 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !696
  %46 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 3
  store ptr null, ptr %46, align 8, !tbaa !1074
  %47 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 7
  store ptr null, ptr %47, align 8, !tbaa !825
  %48 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 11
  store i8 0, ptr %48, align 1, !tbaa !732
  %49 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 10
  %50 = trunc i32 %3 to i8
  store i8 %50, ptr %49, align 8
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 65535
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !416
  %56 = icmp eq i32 %55, 9
  br i1 %56, label %60, label %57, !prof !1422

57:                                               ; preds = %35
  %58 = tail call fastcc zeroext i8 @fixed_base_plus_p(ptr noundef nonnull %0) #25, !range !519
  %59 = icmp ne i8 %58, 0
  br label %60

60:                                               ; preds = %57, %35
  %61 = phi i1 [ true, %35 ], [ %59, %57 ]
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 12
  store i8 %62, ptr %63, align 2, !tbaa !805
  %64 = load ptr, ptr %43, align 8, !tbaa !404
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66, !prof !1423

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.table_elt, ptr %64, i64 0, i32 3
  store ptr %36, ptr %67, align 8, !tbaa !1074
  br label %68

68:                                               ; preds = %66, %60
  store ptr %36, ptr %43, align 8, !tbaa !404
  %69 = icmp eq ptr %1, null
  br i1 %69, label %106, label %70, !prof !1424

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !800
  %73 = getelementptr inbounds %struct.table_elt, ptr %72, i64 0, i32 8
  %74 = load i32, ptr %73, align 8, !tbaa !892
  %75 = getelementptr inbounds %struct.table_elt, ptr %72, i64 0, i32 9
  %76 = load i32, ptr %75, align 4, !tbaa !893
  %77 = tail call fastcc i32 @preferable(i32 noundef %4, i32 noundef %5, i32 noundef %74, i32 noundef %76) #25
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %88, !prof !1425

79:                                               ; preds = %70
  store ptr %72, ptr %40, align 8, !tbaa !871
  %80 = getelementptr inbounds %struct.table_elt, ptr %72, i64 0, i32 5
  store ptr %36, ptr %80, align 8, !tbaa !984
  %81 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 6
  store ptr %36, ptr %81, align 8, !tbaa !800
  br label %82

82:                                               ; preds = %79, %82
  %83 = phi ptr [ %86, %82 ], [ %72, %79 ]
  %84 = getelementptr inbounds %struct.table_elt, ptr %83, i64 0, i32 6
  store ptr %36, ptr %84, align 8, !tbaa !800
  %85 = getelementptr inbounds %struct.table_elt, ptr %83, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !871
  %87 = icmp eq ptr %86, null
  br i1 %87, label %108, label %82, !prof !1426, !llvm.loop !1427

88:                                               ; preds = %70, %93
  %89 = phi ptr [ %91, %93 ], [ %72, %70 ]
  %90 = getelementptr inbounds %struct.table_elt, ptr %89, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !871
  %92 = icmp eq ptr %91, null
  br i1 %92, label %102, label %93, !prof !1428

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.table_elt, ptr %91, i64 0, i32 8
  %95 = load i32, ptr %94, align 8, !tbaa !892
  %96 = getelementptr inbounds %struct.table_elt, ptr %91, i64 0, i32 9
  %97 = load i32, ptr %96, align 4, !tbaa !893
  %98 = tail call fastcc i32 @preferable(i32 noundef %95, i32 noundef %97, i32 noundef %4, i32 noundef %5) #25
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %88, label %100, !prof !1429, !llvm.loop !1430

100:                                              ; preds = %93
  store ptr %91, ptr %40, align 8, !tbaa !871
  %101 = getelementptr inbounds %struct.table_elt, ptr %91, i64 0, i32 5
  store ptr %36, ptr %101, align 8, !tbaa !984
  br label %103

102:                                              ; preds = %88
  store ptr null, ptr %40, align 8, !tbaa !871
  br label %103

103:                                              ; preds = %102, %100
  %104 = getelementptr inbounds %struct.table_elt, ptr %89, i64 0, i32 4
  store ptr %89, ptr %41, align 8, !tbaa !984
  store ptr %36, ptr %104, align 8, !tbaa !871
  %105 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 6
  store ptr %72, ptr %105, align 8, !tbaa !800
  br label %108

106:                                              ; preds = %68
  %107 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 6
  store ptr %36, ptr %107, align 8, !tbaa !800
  br label %185

108:                                              ; preds = %82, %103
  %109 = icmp ne ptr %72, null
  %110 = and i1 %61, %109
  br i1 %110, label %113, label %111, !prof !1431

111:                                              ; preds = %108
  %112 = load i32, ptr %0, align 8
  br label %138

113:                                              ; preds = %108
  %114 = load ptr, ptr %72, align 8, !tbaa !408
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp ne i32 %116, 37
  %118 = load i32, ptr %0, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 37
  %121 = select i1 %117, i1 true, i1 %120
  br i1 %121, label %138, label %122, !prof !1432

122:                                              ; preds = %113
  %123 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %114) #25
  %124 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %123) #25
  %125 = getelementptr inbounds %struct.cse_reg_info, ptr %124, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !425
  %127 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds %struct.qty_table_elem, ptr %127, i64 %128
  %130 = load ptr, ptr @rtl_hooks, align 8, !tbaa !833
  %131 = getelementptr inbounds %struct.qty_table_elem, ptr %127, i64 %128, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  %135 = tail call ptr %130(i32 noundef %134, ptr noundef nonnull %0) #23
  store ptr %135, ptr %129, align 8, !tbaa !1097
  %136 = load ptr, ptr @this_insn, align 8, !tbaa !404
  %137 = getelementptr inbounds %struct.qty_table_elem, ptr %127, i64 %128, i32 1
  store ptr %136, ptr %137, align 8, !tbaa !1433
  br label %219

138:                                              ; preds = %111, %113
  %139 = phi i32 [ %112, %111 ], [ %118, %113 ]
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 37
  %142 = and i1 %109, %141
  br i1 %142, label %143, label %185, !prof !1434

143:                                              ; preds = %138
  %144 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %146 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %145) #25
  %147 = getelementptr inbounds %struct.cse_reg_info, ptr %146, i64 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !425
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.qty_table_elem, ptr %144, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !1097
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %185, !prof !1435

153:                                              ; preds = %143
  %154 = load i8, ptr %63, align 2, !tbaa !805
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %185, !prof !1436

156:                                              ; preds = %153, %181
  %157 = phi ptr [ %183, %181 ], [ %72, %153 ]
  %158 = getelementptr inbounds %struct.table_elt, ptr %157, i64 0, i32 12
  %159 = load i8, ptr %158, align 2, !tbaa !805
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %181, label %161, !prof !1437

161:                                              ; preds = %156
  %162 = load ptr, ptr %157, align 8, !tbaa !408
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 37
  br i1 %165, label %181, label %166, !prof !1438

166:                                              ; preds = %161
  %167 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %168 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %167) #25
  %169 = getelementptr inbounds %struct.cse_reg_info, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !425
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.qty_table_elem, ptr %144, i64 %171
  %173 = load ptr, ptr @rtl_hooks, align 8, !tbaa !833
  %174 = load i32, ptr %0, align 8
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 255
  %177 = load ptr, ptr %157, align 8, !tbaa !408
  %178 = tail call ptr %173(i32 noundef %176, ptr noundef %177) #23
  store ptr %178, ptr %172, align 8, !tbaa !1097
  %179 = load ptr, ptr @this_insn, align 8, !tbaa !404
  %180 = getelementptr inbounds %struct.qty_table_elem, ptr %144, i64 %171, i32 1
  store ptr %179, ptr %180, align 8, !tbaa !1433
  br label %219

181:                                              ; preds = %156, %161
  %182 = getelementptr inbounds %struct.table_elt, ptr %157, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !871
  %184 = icmp eq ptr %183, null
  br i1 %184, label %219, label %156, !prof !1439, !llvm.loop !1440

185:                                              ; preds = %106, %153, %143, %138
  %186 = load i32, ptr %0, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 37
  br i1 %188, label %189, label %219, !prof !1441

189:                                              ; preds = %185
  %190 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %191 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %192 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %191) #25
  %193 = getelementptr inbounds %struct.cse_reg_info, ptr %192, i64 0, i32 1
  %194 = load i32, ptr %193, align 4, !tbaa !425
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.qty_table_elem, ptr %190, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !1097
  %198 = icmp eq ptr %197, null
  br i1 %198, label %219, label %199, !prof !1442

199:                                              ; preds = %189
  %200 = load i32, ptr %0, align 8
  %201 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %202 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %201) #25
  %203 = getelementptr inbounds %struct.cse_reg_info, ptr %202, i64 0, i32 1
  %204 = load i32, ptr %203, align 4, !tbaa !425
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.qty_table_elem, ptr %190, i64 %205, i32 6
  %207 = load i32, ptr %206, align 4
  %208 = xor i32 %207, %200
  %209 = and i32 %208, 16711680
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %219, !prof !1443

211:                                              ; preds = %199
  %212 = load ptr, ptr @this_insn, align 8, !tbaa !404
  %213 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %214 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %213) #25
  %215 = getelementptr inbounds %struct.cse_reg_info, ptr %214, i64 0, i32 1
  %216 = load i32, ptr %215, align 4, !tbaa !425
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.qty_table_elem, ptr %190, i64 %217, i32 1
  store ptr %212, ptr %218, align 8, !tbaa !1433
  br label %219

219:                                              ; preds = %181, %166, %211, %199, %189, %185, %122
  %220 = load i32, ptr %0, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 35
  br i1 %222, label %223, label %261, !prof !1444

223:                                              ; preds = %219
  %224 = tail call ptr @get_related_value(ptr noundef nonnull %0) #23
  %225 = icmp eq ptr %224, null
  br i1 %225, label %261, label %226, !prof !1226

226:                                              ; preds = %223
  %227 = load i32, ptr %224, align 8
  %228 = and i32 %227, 65535
  %229 = icmp eq i32 %228, 37
  br i1 %229, label %230, label %238, !prof !1226

230:                                              ; preds = %226
  %231 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %224) #25
  %232 = icmp ugt i32 %231, 52
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %231) #25
  %235 = getelementptr inbounds %struct.cse_reg_info, ptr %234, i64 0, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !425
  %237 = add i32 %236, 4736
  br label %240

238:                                              ; preds = %230, %226
  %239 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %224, i32 noundef %3) #25
  br label %240

240:                                              ; preds = %238, %233
  %241 = phi i32 [ %237, %233 ], [ %239, %238 ]
  %242 = and i32 %241, 31
  %243 = tail call fastcc ptr @lookup(ptr noundef nonnull %224, i32 noundef %242, i32 noundef %3) #25
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %247, !prof !1445

245:                                              ; preds = %240
  %246 = tail call fastcc ptr @insert(ptr noundef nonnull %224, ptr noundef null, i32 noundef %242, i32 noundef %3) #25
  br label %247

247:                                              ; preds = %245, %240
  %248 = phi ptr [ %246, %245 ], [ %243, %240 ]
  %249 = getelementptr inbounds %struct.table_elt, ptr %248, i64 0, i32 7
  %250 = load ptr, ptr %249, align 8, !tbaa !825
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %253, !prof !1446

252:                                              ; preds = %247
  store ptr %248, ptr %249, align 8, !tbaa !825
  br label %253

253:                                              ; preds = %252, %247
  br label %254

254:                                              ; preds = %253, %254
  %255 = phi ptr [ %257, %254 ], [ %248, %253 ]
  %256 = getelementptr inbounds %struct.table_elt, ptr %255, i64 0, i32 7
  %257 = load ptr, ptr %256, align 8, !tbaa !825
  %258 = icmp eq ptr %257, %248
  br i1 %258, label %259, label %254, !prof !1447, !llvm.loop !1448

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.table_elt, ptr %255, i64 0, i32 7
  store ptr %248, ptr %47, align 8, !tbaa !825
  store ptr %36, ptr %260, align 8, !tbaa !825
  br label %261

261:                                              ; preds = %223, %259, %219
  ret ptr %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(i32 noundef %0, i32 noundef %1) unnamed_addr #18 !prof !1449 !PGOFuncName !1450 {
  %3 = tail call fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) #25
  %4 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !515
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ %4, %2 ], [ %10, %5 ]
  %7 = phi i32 [ %1, %2 ], [ %11, %5 ]
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw i64 1, %8
  %10 = or i64 %9, %6
  %11 = add i32 %7, 1
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %5, label %13, !prof !1451, !llvm.loop !1452

13:                                               ; preds = %5
  store i64 %10, ptr @hard_regs_in_table, align 8, !tbaa !515
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @fixed_base_plus_p(ptr noundef readonly %0) unnamed_addr #6 !prof !1453 !PGOFuncName !1454 {
  br label %2

2:                                                ; preds = %29, %1
  %3 = phi ptr [ %0, %1 ], [ %31, %29 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %32 [
    i16 37, label %6
    i16 49, label %23
  ], !prof !1455

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !404
  %8 = icmp eq ptr %7, %3
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %10 = icmp eq ptr %9, %3
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %32, label %12, !prof !1456

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !404
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %15, label %18, !prof !1457

15:                                               ; preds = %12
  %16 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !420
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %32, !prof !663

18:                                               ; preds = %15, %12
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  %20 = add i32 %19, -53
  %21 = icmp ult i32 %20, 5
  %22 = zext i1 %21 to i8
  br label %32

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !420
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 30
  br i1 %28, label %29, label %32, !prof !1458

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !420
  br label %2

32:                                               ; preds = %2, %23, %18, %15, %6
  %33 = phi i8 [ 1, %6 ], [ 1, %15 ], [ %22, %18 ], [ 0, %23 ], [ 0, %2 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_invalid_subreg_refs(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !403 !PGOFuncName !1459 {
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !420
  %7 = zext i8 %6 to i32
  %8 = add i32 %1, -1
  %9 = add i32 %8, %7
  %10 = add i32 %0, 1
  br label %11

11:                                               ; preds = %3, %54
  %12 = phi i64 [ 0, %3 ], [ %55, %54 ]
  %13 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !404
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %11
  %17 = trunc i64 %12 to i32
  br label %18

18:                                               ; preds = %16, %52
  %19 = phi ptr [ %22, %52 ], [ %14, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !408
  %21 = getelementptr inbounds %struct.table_elt, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !696
  %23 = load i32, ptr %20, align 8
  %24 = trunc i32 %23 to i16
  switch i16 %24, label %48 [
    i16 37, label %52
    i16 39, label %25
  ]

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !420
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %27) #25
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load i32, ptr %35, align 8, !tbaa !420
  %37 = lshr i32 %23, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !420
  %42 = zext i8 %41 to i32
  %43 = add i32 %36, -1
  %44 = add i32 %43, %42
  %45 = icmp ult i32 %44, %1
  %46 = icmp ugt i32 %36, %9
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %34, %18, %31, %25
  %49 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %10, ptr noundef nonnull %20, ptr noundef null) #23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call fastcc void @remove_from_table(ptr noundef nonnull %19, i32 noundef %17) #25
  br label %52

52:                                               ; preds = %18, %51, %48, %34
  %53 = icmp eq ptr %22, null
  br i1 %53, label %54, label %18, !llvm.loop !1460

54:                                               ; preds = %52, %11
  %55 = add nuw nsw i64 %12, 1
  %56 = icmp eq i64 %55, 32
  br i1 %56, label %57, label %11, !llvm.loop !1461

57:                                               ; preds = %54
  ret void
}

; Function Attrs: optsize
declare i32 @refers_to_regno_p(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_const_anchor(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !403 !PGOFuncName !1462 {
  %5 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %0) #23
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #25
  %11 = icmp ugt i32 %10, 52
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %10) #25
  %14 = getelementptr inbounds %struct.cse_reg_info, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !425
  %16 = add i32 %15, 4736
  br label %19

17:                                               ; preds = %9, %4
  %18 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %5, i32 noundef %3) #25
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %16, %12 ], [ %18, %17 ]
  %21 = and i32 %20, 31
  %22 = tail call fastcc ptr @lookup(ptr noundef nonnull %5, i32 noundef %21, i32 noundef %3) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @insert(ptr noundef nonnull %5, ptr noundef null, i32 noundef %21, i32 noundef %3) #25
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %22, %19 ], [ %25, %24 ]
  %28 = tail call ptr @plus_constant(ptr noundef %1, i64 noundef %2) #23
  %29 = tail call fastcc i32 @mention_regs(ptr noundef %28) #25, !range !481
  %30 = load i32, ptr %28, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %28) #25
  %35 = icmp ugt i32 %34, 52
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %34) #25
  %38 = getelementptr inbounds %struct.cse_reg_info, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !425
  %40 = add i32 %39, 4736
  br label %43

41:                                               ; preds = %33, %26
  %42 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %28, i32 noundef %3) #25
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i32 [ %40, %36 ], [ %42, %41 ]
  %45 = load i32, ptr %1, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 37
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %1, i32 noundef 23) #25
  br label %50

50:                                               ; preds = %43, %48
  %51 = phi i32 [ %49, %48 ], [ 0, %43 ]
  %52 = and i32 %44, 31
  %53 = tail call fastcc ptr @insert_with_costs(ptr noundef nonnull %28, ptr noundef %27, i32 noundef %52, i32 noundef %3, i32 noundef %51, i32 noundef 1) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @label_is_jump_target_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reversed_comparison_code_parts(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_jump_cond(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1026 !PGOFuncName !1463 {
  %5 = icmp eq i32 %0, 81
  br i1 %5, label %6, label %54, !prof !1464

6:                                                ; preds = %4
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %10, label %30, !prof !1465

10:                                               ; preds = %6
  %11 = lshr i32 %7, 16
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !420
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !420
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !420
  %24 = icmp ugt i8 %15, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %10
  %26 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %20, ptr noundef %3) #25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %16, align 8, !tbaa !420
  tail call fastcc void @record_jump_cond(i32 noundef 81, i32 noundef %1, ptr noundef %29, ptr noundef nonnull %26) #25
  br label %30

30:                                               ; preds = %6, %10, %28, %25
  %31 = load i32, ptr %3, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 39
  br i1 %33, label %34, label %112, !prof !1465

34:                                               ; preds = %30
  %35 = lshr i32 %31, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !420
  %40 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !420
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !420
  %48 = icmp ugt i8 %39, %47
  br i1 %48, label %49, label %112

49:                                               ; preds = %34
  %50 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %44, ptr noundef nonnull %2) #25
  %51 = icmp eq ptr %50, null
  br i1 %51, label %112, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %40, align 8, !tbaa !420
  tail call fastcc void @record_jump_cond(i32 noundef 81, i32 noundef %1, ptr noundef %53, ptr noundef nonnull %50) #25
  br label %112

54:                                               ; preds = %4
  %55 = icmp eq i32 %0, 80
  br i1 %55, label %56, label %112, !prof !1466

56:                                               ; preds = %54
  %57 = load i32, ptr %2, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 39
  br i1 %59, label %60, label %84, !prof !1467

60:                                               ; preds = %56
  %61 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %2) #23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %2, align 8
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !420
  %70 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !420
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !420
  %78 = icmp ult i8 %69, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %63
  %80 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %74, ptr noundef %3) #25
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %70, align 8, !tbaa !420
  tail call fastcc void @record_jump_cond(i32 noundef 80, i32 noundef %1, ptr noundef %83, ptr noundef nonnull %80) #25
  br label %84

84:                                               ; preds = %56, %60, %63, %82, %79
  %85 = load i32, ptr %3, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 39
  br i1 %87, label %88, label %112, !prof !1467

88:                                               ; preds = %84
  %89 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %3) #23
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %3, align 8
  %93 = lshr i32 %92, 16
  %94 = and i32 %93, 255
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !420
  %98 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !420
  %100 = load i32, ptr %99, align 8
  %101 = lshr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !420
  %106 = icmp ult i8 %97, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %91
  %108 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %102, ptr noundef nonnull %2) #25
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %98, align 8, !tbaa !420
  tail call fastcc void @record_jump_cond(i32 noundef 80, i32 noundef %1, ptr noundef %111, ptr noundef nonnull %108) #25
  br label %112

112:                                              ; preds = %30, %34, %52, %49, %54, %107, %110, %91, %88, %84
  store i32 0, ptr @do_not_record, align 4, !tbaa !416
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !416
  %113 = load i32, ptr %2, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 37
  br i1 %115, label %116, label %124, !prof !1468

116:                                              ; preds = %112
  %117 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %118 = icmp ugt i32 %117, 52
  br i1 %118, label %119, label %124, !prof !1469

119:                                              ; preds = %116
  %120 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %117) #25
  %121 = getelementptr inbounds %struct.cse_reg_info, ptr %120, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !425
  %123 = add i32 %122, 4736
  br label %126

124:                                              ; preds = %116, %112
  %125 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2, i32 noundef %1) #25
  br label %126

126:                                              ; preds = %124, %119
  %127 = phi i32 [ %123, %119 ], [ %125, %124 ]
  %128 = and i32 %127, 31
  %129 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !416
  %130 = load i32, ptr @do_not_record, align 4, !tbaa !416
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %352, !prof !1469

132:                                              ; preds = %126
  store i32 0, ptr @do_not_record, align 4, !tbaa !416
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !416
  %133 = load i32, ptr %3, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 37
  br i1 %135, label %136, label %144, !prof !609

136:                                              ; preds = %132
  %137 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  %138 = icmp ugt i32 %137, 52
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %137) #25
  %141 = getelementptr inbounds %struct.cse_reg_info, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !425
  %143 = add i32 %142, 4736
  br label %146

144:                                              ; preds = %136, %132
  %145 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %3, i32 noundef %1) #25
  br label %146

146:                                              ; preds = %144, %139
  %147 = phi i32 [ %143, %139 ], [ %145, %144 ]
  %148 = and i32 %147, 31
  %149 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !416
  %150 = load i32, ptr @do_not_record, align 4, !tbaa !416
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %352

152:                                              ; preds = %146
  %153 = tail call fastcc ptr @lookup(ptr noundef nonnull %2, i32 noundef %128, i32 noundef %1) #25
  %154 = tail call fastcc ptr @lookup(ptr noundef nonnull %3, i32 noundef %148, i32 noundef %1) #25
  %155 = icmp ne ptr %153, null
  %156 = icmp ne ptr %154, null
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %166, !prof !1470

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.table_elt, ptr %153, i64 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !800
  %161 = getelementptr inbounds %struct.table_elt, ptr %154, i64 0, i32 6
  %162 = load ptr, ptr %161, align 8, !tbaa !800
  %163 = icmp eq ptr %160, %162
  %164 = icmp eq ptr %2, %3
  %165 = or i1 %164, %163
  br i1 %165, label %352, label %168, !prof !1471

166:                                              ; preds = %152
  %167 = icmp eq ptr %2, %3
  br i1 %167, label %352, label %168, !prof !609

168:                                              ; preds = %158, %166
  %169 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %352, !prof !611

171:                                              ; preds = %168
  br i1 %5, label %172, label %179, !prof !1464

172:                                              ; preds = %171
  %173 = load i32, ptr %2, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !420
  switch i8 %178, label %295 [
    i8 8, label %179
    i8 9, label %179
    i8 11, label %179
    i8 17, label %179
  ], !prof !1472

179:                                              ; preds = %172, %172, %172, %172, %171
  %180 = load i32, ptr %3, align 8
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 37
  br i1 %182, label %185, label %183, !prof !1473

183:                                              ; preds = %179
  %184 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %3) #25
  br label %185

185:                                              ; preds = %179, %183
  %186 = phi ptr [ %3, %179 ], [ %184, %183 ]
  %187 = load i32, ptr %2, align 8
  %188 = and i32 %187, 65535
  %189 = icmp ne i32 %188, 37
  %190 = icmp eq ptr %186, null
  %191 = select i1 %189, i1 true, i1 %190
  br i1 %191, label %352, label %192, !prof !1474

192:                                              ; preds = %185
  %193 = icmp eq ptr %153, null
  br i1 %193, label %194, label %241, !prof !1475

194:                                              ; preds = %192
  %195 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #25, !range !481
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %235, label %197, !prof !1476

197:                                              ; preds = %194
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %2) #25
  %198 = load i32, ptr %2, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 37
  br i1 %200, label %201, label %209

201:                                              ; preds = %197
  %202 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %203 = icmp ugt i32 %202, 52
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %202) #25
  %206 = getelementptr inbounds %struct.cse_reg_info, ptr %205, i64 0, i32 1
  %207 = load i32, ptr %206, align 4, !tbaa !425
  %208 = add i32 %207, 4736
  br label %211

209:                                              ; preds = %201, %197
  %210 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2, i32 noundef %1) #25
  br label %211

211:                                              ; preds = %209, %204
  %212 = phi i32 [ %208, %204 ], [ %210, %209 ]
  %213 = and i32 %212, 31
  %214 = load i32, ptr %186, align 8
  %215 = and i32 %214, 65535
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !416
  %219 = icmp eq i32 %218, 9
  br i1 %219, label %235, label %220

220:                                              ; preds = %211
  %221 = icmp eq i32 %215, 37
  br i1 %221, label %222, label %230

222:                                              ; preds = %220
  %223 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %186) #25
  %224 = icmp ugt i32 %223, 52
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %223) #25
  %227 = getelementptr inbounds %struct.cse_reg_info, ptr %226, i64 0, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !425
  %229 = add i32 %228, 4736
  br label %232

230:                                              ; preds = %222, %220
  %231 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %186, i32 noundef %1) #25
  br label %232

232:                                              ; preds = %230, %225
  %233 = phi i32 [ %229, %225 ], [ %231, %230 ]
  %234 = and i32 %233, 31
  br label %235

235:                                              ; preds = %211, %232, %194
  %236 = phi i32 [ %148, %211 ], [ %234, %232 ], [ %148, %194 ]
  %237 = phi i32 [ %213, %211 ], [ %213, %232 ], [ %128, %194 ]
  %238 = tail call fastcc ptr @insert(ptr noundef nonnull %2, ptr noundef null, i32 noundef %237, i32 noundef %1) #25
  %239 = trunc i32 %129 to i8
  %240 = getelementptr inbounds %struct.table_elt, ptr %238, i64 0, i32 11
  store i8 %239, ptr %240, align 1, !tbaa !732
  br label %241

241:                                              ; preds = %235, %192
  %242 = phi i32 [ %236, %235 ], [ %148, %192 ]
  %243 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %244 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %243) #25
  %245 = getelementptr inbounds %struct.cse_reg_info, ptr %244, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !425
  %247 = load ptr, ptr @qty_table, align 8, !tbaa !404
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 6
  %250 = load i32, ptr %249, align 4
  %251 = and i32 %0, 65535
  %252 = and i32 %250, -65536
  %253 = or disjoint i32 %252, %251
  store i32 %253, ptr %249, align 4
  %254 = load i32, ptr %186, align 8
  %255 = and i32 %254, 65535
  %256 = icmp eq i32 %255, 37
  br i1 %256, label %257, label %292, !prof !1477

257:                                              ; preds = %241
  %258 = tail call fastcc ptr @lookup(ptr noundef nonnull %186, i32 noundef %242, i32 noundef %1) #25
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %285

260:                                              ; preds = %257
  %261 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %186, ptr noundef null, i32 noundef 0) #25, !range !481
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %280, label %263

263:                                              ; preds = %260
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %186) #25
  %264 = load i32, ptr %186, align 8
  %265 = and i32 %264, 65535
  %266 = icmp eq i32 %265, 37
  br i1 %266, label %267, label %275

267:                                              ; preds = %263
  %268 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %186) #25
  %269 = icmp ugt i32 %268, 52
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %268) #25
  %272 = getelementptr inbounds %struct.cse_reg_info, ptr %271, i64 0, i32 1
  %273 = load i32, ptr %272, align 4, !tbaa !425
  %274 = add i32 %273, 4736
  br label %277

275:                                              ; preds = %267, %263
  %276 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %186, i32 noundef %1) #25
  br label %277

277:                                              ; preds = %275, %270
  %278 = phi i32 [ %274, %270 ], [ %276, %275 ]
  %279 = and i32 %278, 31
  br label %280

280:                                              ; preds = %277, %260
  %281 = phi i32 [ %279, %277 ], [ %242, %260 ]
  %282 = tail call fastcc ptr @insert(ptr noundef nonnull %186, ptr noundef null, i32 noundef %281, i32 noundef %1) #25
  %283 = trunc i32 %149 to i8
  %284 = getelementptr inbounds %struct.table_elt, ptr %282, i64 0, i32 11
  store i8 %283, ptr %284, align 1, !tbaa !732
  br label %285

285:                                              ; preds = %280, %257
  %286 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 2
  store ptr null, ptr %286, align 8, !tbaa !1175
  %287 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %186) #25
  %288 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %287) #25
  %289 = getelementptr inbounds %struct.cse_reg_info, ptr %288, i64 0, i32 1
  %290 = load i32, ptr %289, align 4, !tbaa !425
  %291 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 3
  store i32 %290, ptr %291, align 8, !tbaa !1178
  br label %352

292:                                              ; preds = %241
  %293 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 2
  store ptr %186, ptr %293, align 8, !tbaa !1175
  %294 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 3
  store i32 -1, ptr %294, align 8, !tbaa !1178
  br label %352

295:                                              ; preds = %172
  %296 = icmp eq ptr %153, null
  br i1 %296, label %297, label %322, !prof !1478

297:                                              ; preds = %295
  %298 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #25, !range !481
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %317, label %300, !prof !1479

300:                                              ; preds = %297
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %2) #25
  %301 = load i32, ptr %2, align 8
  %302 = and i32 %301, 65535
  %303 = icmp eq i32 %302, 37
  br i1 %303, label %304, label %312

304:                                              ; preds = %300
  %305 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %306 = icmp ugt i32 %305, 52
  br i1 %306, label %307, label %312

307:                                              ; preds = %304
  %308 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %305) #25
  %309 = getelementptr inbounds %struct.cse_reg_info, ptr %308, i64 0, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !425
  %311 = add i32 %310, 4736
  br label %314

312:                                              ; preds = %304, %300
  %313 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2, i32 noundef %1) #25
  br label %314

314:                                              ; preds = %312, %307
  %315 = phi i32 [ %311, %307 ], [ %313, %312 ]
  %316 = and i32 %315, 31
  br label %317

317:                                              ; preds = %314, %297
  %318 = phi i32 [ %316, %314 ], [ %128, %297 ]
  %319 = tail call fastcc ptr @insert(ptr noundef nonnull %2, ptr noundef null, i32 noundef %318, i32 noundef %1) #25
  %320 = trunc i32 %129 to i8
  %321 = getelementptr inbounds %struct.table_elt, ptr %319, i64 0, i32 11
  store i8 %320, ptr %321, align 1, !tbaa !732
  br label %322

322:                                              ; preds = %317, %295
  %323 = phi ptr [ %319, %317 ], [ %153, %295 ]
  %324 = icmp eq ptr %154, null
  br i1 %324, label %325, label %350, !prof !1480

325:                                              ; preds = %322
  %326 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #25, !range !481
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %345, label %328, !prof !1481

328:                                              ; preds = %325
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %3) #25
  %329 = load i32, ptr %3, align 8
  %330 = and i32 %329, 65535
  %331 = icmp eq i32 %330, 37
  br i1 %331, label %332, label %340

332:                                              ; preds = %328
  %333 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  %334 = icmp ugt i32 %333, 52
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %333) #25
  %337 = getelementptr inbounds %struct.cse_reg_info, ptr %336, i64 0, i32 1
  %338 = load i32, ptr %337, align 4, !tbaa !425
  %339 = add i32 %338, 4736
  br label %342

340:                                              ; preds = %332, %328
  %341 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %3, i32 noundef %1) #25
  br label %342

342:                                              ; preds = %340, %335
  %343 = phi i32 [ %339, %335 ], [ %341, %340 ]
  %344 = and i32 %343, 31
  br label %345

345:                                              ; preds = %342, %325
  %346 = phi i32 [ %344, %342 ], [ %148, %325 ]
  %347 = tail call fastcc ptr @insert(ptr noundef nonnull %3, ptr noundef null, i32 noundef %346, i32 noundef %1) #25
  %348 = trunc i32 %149 to i8
  %349 = getelementptr inbounds %struct.table_elt, ptr %347, i64 0, i32 11
  store i8 %348, ptr %349, align 1, !tbaa !732
  br label %350

350:                                              ; preds = %345, %322
  %351 = phi ptr [ %347, %345 ], [ %154, %322 ]
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %323, ptr noundef nonnull %351) #25
  br label %352

352:                                              ; preds = %185, %292, %285, %158, %166, %168, %146, %126, %350
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @record_jump_cond_subreg(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !403 !PGOFuncName !1482 {
  %3 = load i32, ptr %1, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, %0
  %7 = icmp eq i32 %5, 0
  %8 = or i1 %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @lowpart_subreg(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %5) #23
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ %1, %2 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @lowpart_subreg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @insn_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @set_live_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1483 !PGOFuncName !1484 {
  %3 = tail call i32 @set_noop_p(ptr noundef %0) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14, !prof !1485

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = tail call i32 @is_dead_reg(ptr noundef nonnull %6, ptr noundef %1) #25, !range !481
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !1486

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !420
  %12 = tail call i32 @side_effects_p(ptr noundef %11) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !1487

14:                                               ; preds = %9, %2
  br label %15

15:                                               ; preds = %5, %9, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %9 ], [ 1, %5 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @is_dead_reg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !1488 !PGOFuncName !1489 {
  %3 = load ptr, ptr %0, align 8, !tbaa !404
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %16, !prof !1490

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  %9 = icmp ugt i32 %8, 52
  br i1 %9, label %10, label %16, !prof !1491

10:                                               ; preds = %7
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !416
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %10, %7, %2
  %17 = phi i32 [ 0, %7 ], [ 0, %2 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @set_noop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_condition_code_reg() unnamed_addr #0 !prof !658 !PGOFuncName !1492 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 66), align 8, !tbaa !1493
  %4 = call zeroext i8 %3(ptr noundef nonnull %1, ptr noundef nonnull %2) #23
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %124, label %6, !prof !663

6:                                                ; preds = %0
  %7 = load i32, ptr %1, align 4, !tbaa !416
  %8 = call ptr @gen_rtx_REG(i32 noundef 2, i32 noundef %7) #23
  %9 = load i32, ptr %2, align 4, !tbaa !416
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %13, label %11, !prof !663

11:                                               ; preds = %6
  %12 = call ptr @gen_rtx_REG(i32 noundef 2, i32 noundef %9) #23
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi ptr [ %12, %11 ], [ null, %6 ]
  %15 = load ptr, ptr @cfun, align 8, !tbaa !404
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !497
  %18 = load ptr, ptr %17, align 8, !tbaa !1494
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !1495
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !558
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %124, label %24, !prof !1496

24:                                               ; preds = %13, %115
  %25 = phi ptr [ %117, %115 ], [ %20, %13 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !420
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !550
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %115, !prof !1497

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !420
  %36 = call i32 @reg_referenced_p(ptr noundef %8, ptr noundef %35) #23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44, !prof !1498

38:                                               ; preds = %33
  %39 = icmp eq ptr %14, null
  br i1 %39, label %115, label %40, !prof !1499

40:                                               ; preds = %38
  %41 = load ptr, ptr %34, align 8, !tbaa !420
  %42 = call i32 @reg_referenced_p(ptr noundef nonnull %14, ptr noundef %41) #23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %115, label %44, !prof !1500

44:                                               ; preds = %40, %33
  %45 = phi ptr [ %8, %33 ], [ %14, %40 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !420
  %48 = icmp eq ptr %47, null
  br i1 %48, label %115, label %49, !prof !414

49:                                               ; preds = %44, %91
  %50 = phi ptr [ %93, %91 ], [ %47, %44 ]
  %51 = load ptr, ptr %26, align 8, !tbaa !420
  %52 = load ptr, ptr %51, align 8, !tbaa !1009
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !420
  %55 = icmp eq ptr %50, %54
  br i1 %55, label %115, label %56, !prof !1501

56:                                               ; preds = %49
  %57 = load i32, ptr %50, align 8
  %58 = and i32 %57, 65535
  %59 = add nsw i32 %58, -7
  %60 = icmp ult i32 %59, 4
  br i1 %60, label %61, label %91, !prof !1502

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !420
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 23
  br i1 %66, label %70, label %67, !prof !1503

67:                                               ; preds = %61
  %68 = call ptr @single_set_2(ptr noundef nonnull %50, ptr noundef nonnull %63) #23
  %69 = icmp eq ptr %68, null
  br i1 %69, label %88, label %70, !prof !563

70:                                               ; preds = %61, %67
  %71 = phi ptr [ %68, %67 ], [ %63, %61 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !420
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %88, !prof !1503

77:                                               ; preds = %70
  %78 = call fastcc i32 @rhs_regno(ptr noundef nonnull %73) #25
  %79 = call fastcc i32 @rhs_regno(ptr noundef %45) #25
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88, !prof !1503

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !420
  %84 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !420
  %86 = call i32 @modified_between_p(ptr noundef %83, ptr noundef nonnull %50, ptr noundef %85) #23
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %115, !prof !1503

88:                                               ; preds = %77, %70, %67
  %89 = call i32 @reg_set_p(ptr noundef %45, ptr noundef nonnull %50) #23
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %88, %56
  %92 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !420
  %94 = icmp eq ptr %93, null
  br i1 %94, label %115, label %49, !prof !1504, !llvm.loop !1505

95:                                               ; preds = %81
  %96 = load i32, ptr %83, align 8
  %97 = lshr i32 %96, 16
  %98 = and i32 %97, 255
  %99 = call fastcc i32 @cse_cc_succs(ptr noundef nonnull %25, ptr noundef nonnull %25, ptr noundef %45, ptr noundef nonnull %83, i8 noundef zeroext 1) #25
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %115, label %101, !prof !1506

101:                                              ; preds = %95
  %102 = load i32, ptr %83, align 8
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  %105 = icmp eq i32 %99, %104
  br i1 %105, label %107, label %106, !prof !1507

106:                                              ; preds = %101
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 7206, ptr noundef nonnull @.str.4) #23
  br label %107

107:                                              ; preds = %101, %106
  %108 = icmp eq i32 %99, %98
  br i1 %108, label %115, label %109, !prof !1508

109:                                              ; preds = %107
  %110 = call fastcc i32 @rhs_regno(ptr noundef %45) #25
  %111 = call ptr @gen_rtx_REG(i32 noundef %99, i32 noundef %110) #23
  call fastcc void @cse_change_cc_mode_insn(ptr noundef nonnull %50, ptr noundef %111) #25
  %112 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !420
  %114 = load ptr, ptr %84, align 8, !tbaa !420
  call fastcc void @cse_change_cc_mode_insns(ptr noundef %113, ptr noundef %114, ptr noundef %111) #25
  br label %115

115:                                              ; preds = %91, %49, %88, %44, %95, %109, %107, %81, %38, %40, %24
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !1495
  %118 = load ptr, ptr @cfun, align 8, !tbaa !404
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !497
  %121 = getelementptr inbounds %struct.control_flow_graph, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !558
  %123 = icmp eq ptr %117, %122
  br i1 %123, label %124, label %24, !prof !1509, !llvm.loop !1510

124:                                              ; preds = %115, %13, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #24
  ret void
}

; Function Attrs: optsize
declare i32 @reg_referenced_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @modified_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cse_cc_succs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !1511 !PGOFuncName !1512 {
  %6 = alloca ptr, align 8
  %7 = alloca [2 x ptr], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x ptr], align 16
  %10 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #24
  %11 = load i32, ptr %3, align 8
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %13 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %12) #25
  store i32 0, ptr %10, align 8, !tbaa.struct !703
  %14 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !704
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %6) #25, !range !519
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %226, label %17, !prof !1513

17:                                               ; preds = %5
  %18 = lshr i32 %11, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %17, %178
  %21 = phi i8 [ %4, %17 ], [ %182, %178 ]
  %22 = phi i8 [ 0, %17 ], [ %181, %178 ]
  %23 = phi i32 [ %19, %17 ], [ %180, %178 ]
  %24 = phi i32 [ 0, %17 ], [ %179, %178 ]
  %25 = load ptr, ptr %6, align 8, !tbaa !404
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !553
  %28 = and i32 %27, 14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %178, !prof !1514

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !557
  %33 = load ptr, ptr %32, align 8, !tbaa !688
  %34 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %33) #25
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %178, !prof !1515

36:                                               ; preds = %30
  %37 = load ptr, ptr @cfun, align 8, !tbaa !404
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !497
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !558
  %42 = icmp eq ptr %32, %41
  %43 = icmp eq ptr %32, %1
  %44 = or i1 %43, %42
  br i1 %44, label %178, label %45, !prof !1516

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !420
  %48 = getelementptr inbounds %struct.rtl_bb_info, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !550
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !420
  %52 = load ptr, ptr %47, align 8, !tbaa !420
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %168, label %54, !prof !1517

54:                                               ; preds = %45, %159
  %55 = phi ptr [ %164, %159 ], [ %52, %45 ]
  %56 = phi i8 [ %160, %159 ], [ %22, %45 ]
  %57 = phi i32 [ %161, %159 ], [ %23, %45 ]
  %58 = phi i32 [ %162, %159 ], [ %24, %45 ]
  %59 = load i32, ptr %55, align 8
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -7
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %159, !prof !1518

63:                                               ; preds = %54
  %64 = tail call i32 @modified_in_p(ptr noundef nonnull %3, ptr noundef nonnull %55) #23
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %178, !prof !1519

66:                                               ; preds = %63
  %67 = load i32, ptr %55, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -7
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %156, !prof !1520

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !420
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 23
  br i1 %76, label %80, label %77, !prof !1521

77:                                               ; preds = %71
  %78 = tail call ptr @single_set_2(ptr noundef nonnull %55, ptr noundef nonnull %73) #23
  %79 = icmp eq ptr %78, null
  br i1 %79, label %156, label %80, !prof !563

80:                                               ; preds = %71, %77
  %81 = phi ptr [ %78, %77 ], [ %73, %71 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !420
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 37
  br i1 %86, label %87, label %156, !prof !1522

87:                                               ; preds = %80
  %88 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %83) #25
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #25
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %156, !prof !1523

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !420
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  %97 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef nonnull %93) #23
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %133, !prof !1524

99:                                               ; preds = %91
  %100 = load i32, ptr %3, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 48
  br i1 %102, label %103, label %178, !prof !1524

103:                                              ; preds = %99
  %104 = load ptr, ptr %92, align 8, !tbaa !420
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp ne i32 %106, 48
  %108 = icmp eq i32 %57, %96
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %178, label %110, !prof !1525

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !420
  %113 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !420
  %115 = tail call i32 @rtx_equal_p(ptr noundef %112, ptr noundef %114) #23
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %178, label %117, !prof !1526

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !420
  %120 = load ptr, ptr %92, align 8, !tbaa !420
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !420
  %123 = tail call i32 @rtx_equal_p(ptr noundef %119, ptr noundef %122) #23
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %178, label %125, !prof !1527

125:                                              ; preds = %117
  %126 = icmp eq i8 %21, 0
  %127 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 67), align 8, !tbaa !1528
  %128 = tail call i32 %127(i32 noundef %57, i32 noundef %96) #23
  %129 = icmp eq i32 %128, 0
  %130 = icmp ne i32 %128, %57
  %131 = select i1 %126, i1 %130, i1 false
  %132 = select i1 %129, i1 true, i1 %131
  br i1 %132, label %178, label %133, !prof !1529

133:                                              ; preds = %125, %91
  %134 = phi i32 [ %96, %91 ], [ %128, %125 ]
  %135 = icmp ult i32 %58, 2
  br i1 %135, label %136, label %152, !prof !1507

136:                                              ; preds = %133
  %137 = zext nneg i32 %58 to i64
  %138 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %137
  store ptr %55, ptr %138, align 8, !tbaa !404
  %139 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %137
  store i32 %96, ptr %139, align 4, !tbaa !416
  %140 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %137
  store ptr %51, ptr %140, align 8, !tbaa !404
  %141 = add nuw nsw i32 %58, 1
  %142 = icmp eq i32 %57, %134
  br i1 %142, label %159, label %143, !prof !1508

143:                                              ; preds = %136
  %144 = icmp eq i8 %21, 0
  br i1 %144, label %145, label %146, !prof !1508

145:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 7028, ptr noundef nonnull @.str.4) #23
  br label %146

146:                                              ; preds = %143, %145
  %147 = load i32, ptr %3, align 8
  %148 = shl i32 %134, 16
  %149 = and i32 %148, 16711680
  %150 = and i32 %147, -16711681
  %151 = or disjoint i32 %150, %149
  store i32 %151, ptr %3, align 8
  br label %159

152:                                              ; preds = %133
  %153 = icmp eq i32 %96, %57
  br i1 %153, label %154, label %178

154:                                              ; preds = %152
  %155 = tail call ptr @delete_insn(ptr noundef nonnull %55) #23
  br label %159

156:                                              ; preds = %66, %77, %80, %87
  %157 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef nonnull %55) #23
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %154, %146, %136, %54, %156
  %160 = phi i8 [ %56, %156 ], [ 1, %154 ], [ 1, %146 ], [ 1, %136 ], [ %56, %54 ]
  %161 = phi i32 [ %57, %156 ], [ %57, %154 ], [ %134, %146 ], [ %57, %136 ], [ %57, %54 ]
  %162 = phi i32 [ %58, %156 ], [ %58, %154 ], [ %141, %146 ], [ %141, %136 ], [ %58, %54 ]
  %163 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 2
  %164 = load ptr, ptr %163, align 8, !tbaa !420
  %165 = icmp eq ptr %164, %51
  br i1 %165, label %166, label %54, !prof !1530, !llvm.loop !1531

166:                                              ; preds = %159
  %167 = load ptr, ptr %31, align 8, !tbaa !557
  br label %168

168:                                              ; preds = %166, %45
  %169 = phi ptr [ %32, %45 ], [ %167, %166 ]
  %170 = phi i32 [ %24, %45 ], [ %162, %166 ]
  %171 = phi i32 [ %23, %45 ], [ %161, %166 ]
  %172 = phi i8 [ %22, %45 ], [ %160, %166 ]
  %173 = tail call fastcc i32 @cse_cc_succs(ptr noundef %169, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext 0) #25
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175, !prof !1532

175:                                              ; preds = %168
  %176 = icmp eq i32 %173, %171
  br i1 %176, label %178, label %177

177:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 7078, ptr noundef nonnull @.str.4) #23
  br label %178

178:                                              ; preds = %99, %103, %110, %117, %125, %152, %63, %156, %177, %175, %168, %30, %36, %20
  %179 = phi i32 [ %24, %20 ], [ %24, %36 ], [ %24, %30 ], [ %170, %168 ], [ %170, %175 ], [ %170, %177 ], [ %58, %156 ], [ %58, %63 ], [ %58, %152 ], [ %58, %125 ], [ %58, %117 ], [ %58, %110 ], [ %58, %103 ], [ %58, %99 ]
  %180 = phi i32 [ %23, %20 ], [ %23, %36 ], [ %23, %30 ], [ %171, %168 ], [ %171, %175 ], [ %171, %177 ], [ %57, %156 ], [ %57, %63 ], [ %57, %152 ], [ %57, %125 ], [ %57, %117 ], [ %57, %110 ], [ %57, %103 ], [ %57, %99 ]
  %181 = phi i8 [ %22, %20 ], [ %22, %36 ], [ %22, %30 ], [ %172, %168 ], [ 1, %175 ], [ 1, %177 ], [ %56, %99 ], [ %56, %103 ], [ %56, %110 ], [ %56, %117 ], [ %56, %125 ], [ 1, %152 ], [ %56, %63 ], [ %56, %156 ]
  %182 = phi i8 [ %21, %20 ], [ %21, %36 ], [ %21, %30 ], [ %21, %168 ], [ 0, %175 ], [ 0, %177 ], [ %21, %156 ], [ %21, %63 ], [ %21, %152 ], [ %21, %125 ], [ %21, %117 ], [ %21, %110 ], [ %21, %103 ], [ %21, %99 ]
  call fastcc void @ei_next(ptr noundef nonnull %10) #25
  %183 = load i32, ptr %10, align 8
  %184 = load ptr, ptr %14, align 8
  %185 = call fastcc zeroext i8 @ei_cond(i32 %183, ptr %184, ptr noundef nonnull %6) #25, !range !519
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %20, !prof !1533, !llvm.loop !1534

187:                                              ; preds = %178
  %188 = icmp eq i8 %181, 0
  br i1 %188, label %226, label %189, !prof !1535

189:                                              ; preds = %187
  %190 = icmp eq i32 %179, 0
  br i1 %190, label %226, label %191, !prof !1536

191:                                              ; preds = %189
  %192 = zext i32 %179 to i64
  br label %193

193:                                              ; preds = %191, %220
  %194 = phi i64 [ 0, %191 ], [ %224, %220 ]
  %195 = phi ptr [ null, %191 ], [ %222, %220 ]
  %196 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %194
  %197 = load i32, ptr %196, align 4, !tbaa !416
  %198 = icmp eq i32 %197, %180
  br i1 %198, label %199, label %202, !prof !1508

199:                                              ; preds = %193
  %200 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %194
  %201 = load ptr, ptr %200, align 8, !tbaa !404
  br label %220

202:                                              ; preds = %193
  %203 = icmp eq ptr %195, null
  br i1 %203, label %204, label %212, !prof !1507

204:                                              ; preds = %202
  %205 = load i32, ptr %2, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = icmp eq i32 %207, %180
  br i1 %208, label %212, label %209, !prof !1507

209:                                              ; preds = %204
  %210 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %211 = tail call ptr @gen_rtx_REG(i32 noundef %180, i32 noundef %210) #23
  br label %212

212:                                              ; preds = %204, %209, %202
  %213 = phi ptr [ %195, %202 ], [ %211, %209 ], [ %2, %204 ]
  %214 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %194
  %215 = load ptr, ptr %214, align 8, !tbaa !404
  %216 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1, i32 0, i32 0, i64 2
  %217 = load ptr, ptr %216, align 8, !tbaa !420
  %218 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %194
  %219 = load ptr, ptr %218, align 8, !tbaa !404
  tail call fastcc void @cse_change_cc_mode_insns(ptr noundef %217, ptr noundef %219, ptr noundef %213) #25
  br label %220

220:                                              ; preds = %199, %212
  %221 = phi ptr [ %215, %212 ], [ %201, %199 ]
  %222 = phi ptr [ %213, %212 ], [ %195, %199 ]
  %223 = tail call ptr @delete_insn_and_edges(ptr noundef %221) #23
  %224 = add nuw nsw i64 %194, 1
  %225 = icmp eq i64 %224, %192
  br i1 %225, label %226, label %193, !prof !1537, !llvm.loop !1538

226:                                              ; preds = %220, %5, %189, %187
  %227 = phi i32 [ 0, %187 ], [ %180, %189 ], [ 0, %5 ], [ %180, %220 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  ret i32 %227
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_change_cc_mode_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1539 !PGOFuncName !1540 {
  %3 = alloca %struct.change_cc_mode_args, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %17, !prof !1541

8:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !1542
  %9 = getelementptr inbounds %struct.change_cc_mode_args, ptr %3, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !1544
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %11 = call i32 @for_each_rtx(ptr noundef nonnull %10, ptr noundef nonnull @cse_change_cc_mode, ptr noundef nonnull %3) #23
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = call i32 @for_each_rtx(ptr noundef nonnull %12, ptr noundef nonnull @cse_change_cc_mode, ptr noundef nonnull %3) #23
  %14 = call i32 @apply_change_group() #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !1545

16:                                               ; preds = %8
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6895, ptr noundef nonnull @.str.4) #23
  br label %17

17:                                               ; preds = %2, %16, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_change_cc_mode_insns(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #0 !prof !1546 !PGOFuncName !1547 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %19, label %5, !prof !1548

5:                                                ; preds = %3, %15
  %6 = phi ptr [ %17, %15 ], [ %0, %3 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %15, !prof !1549

11:                                               ; preds = %5
  %12 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef nonnull %6) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !1537

14:                                               ; preds = %11
  tail call fastcc void @cse_change_cc_mode_insn(ptr noundef nonnull %6, ptr noundef %2) #25
  br label %15

15:                                               ; preds = %5, %14
  %16 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !420
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %5, !prof !1550, !llvm.loop !1551

19:                                               ; preds = %11, %15, %3
  ret void
}

; Function Attrs: optsize
declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cse_change_cc_mode(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !1552 !PGOFuncName !1553 {
  %3 = load ptr, ptr %0, align 8, !tbaa !404
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !1554

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %23, !prof !1555

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  %11 = getelementptr inbounds %struct.change_cc_mode_args, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1544
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef %12) #25
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %23, !prof !1556

15:                                               ; preds = %9
  %16 = load i32, ptr %12, align 8
  %17 = xor i32 %16, %6
  %18 = and i32 %17, 16711680
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !1557

20:                                               ; preds = %15
  %21 = load ptr, ptr %1, align 8, !tbaa !1542
  %22 = tail call zeroext i8 @validate_change(ptr noundef %21, ptr noundef nonnull %0, ptr noundef nonnull %12, i8 noundef zeroext 1) #23
  br label %23

23:                                               ; preds = %2, %5, %9, %15, %20
  %24 = phi i32 [ -1, %20 ], [ 0, %15 ], [ 0, %9 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: optsize
declare zeroext i8 @purge_all_dead_edges() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { cold }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind }
attributes #25 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!402}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!35 = !{ptr @hash_rtx_cb, ptr @rhs_regno, i64 5544870}
!36 = !{ptr @hash_rtx_cb, ptr @get_cse_reg_info, i64 4366021}
!37 = !{ptr @hash_rtx_cb, ptr @real_hash, i64 1}
!38 = !{ptr @hash_rtx_cb, ptr @fixed_hash, i64 1}
!39 = !{ptr @hash_rtx_cb, ptr @hash_rtx_cb, i64 3616242}
!40 = !{ptr @hash_rtx_cb, ptr @hash_rtx_string, i64 19}
!41 = !{ptr @hash_rtx_cb, ptr @fancy_abort, i64 1}
!42 = !{ptr @get_cse_reg_info, ptr @get_cse_reg_info_1, i64 5096248}
!43 = !{ptr @hash_rtx, ptr @hash_rtx_cb, i64 7599857}
!44 = !{ptr @exp_equiv_p, ptr @rhs_regno, i64 1894074}
!45 = !{ptr @exp_equiv_p, ptr @end_hard_regno, i64 52791}
!46 = !{ptr @exp_equiv_p, ptr @get_cse_reg_info, i64 3762804}
!47 = !{ptr @exp_equiv_p, ptr @exp_equiv_p, i64 2478002}
!48 = !{ptr @exp_equiv_p, ptr @strcmp, i64 2}
!49 = !{ptr @exp_equiv_p, ptr @fancy_abort, i64 1}
!50 = !{ptr @cse_main, ptr @xmalloc, i64 234}
!51 = !{ptr @cse_main, ptr @df_set_flags, i64 156}
!52 = !{ptr @cse_main, ptr @df_analyze, i64 78}
!53 = !{ptr @cse_main, ptr @get_insns, i64 78}
!54 = !{ptr @cse_main, ptr @max_reg_num, i64 78}
!55 = !{ptr @cse_main, ptr @reg_scan, i64 78}
!56 = !{ptr @cse_main, ptr @init_cse_reg_info, i64 78}
!57 = !{ptr @cse_main, ptr @init_recog, i64 78}
!58 = !{ptr @cse_main, ptr @init_alias_analysis, i64 78}
!59 = !{ptr @cse_main, ptr @sbitmap_alloc, i64 78}
!60 = !{ptr @cse_main, ptr @sbitmap_zero, i64 78}
!61 = !{ptr @cse_main, ptr @pre_and_rev_post_order_compute, i64 78}
!62 = !{ptr @cse_main, ptr @VEC_basic_block_base_index, i64 366573}
!63 = !{ptr @cse_main, ptr @cse_find_path, i64 234420}
!64 = !{ptr @cse_main, ptr @cse_prescan_path, i64 133219}
!65 = !{ptr @cse_main, ptr @cse_dump_path, i64 1}
!66 = !{ptr @cse_main, ptr @cse_extended_basic_block, i64 133216}
!67 = !{ptr @cse_main, ptr @end_alias_analysis, i64 78}
!68 = !{ptr @cse_main, ptr @free, i64 390}
!69 = !{ptr @init_cse_reg_info, ptr @free, i64 4}
!70 = !{ptr @init_cse_reg_info, ptr @xmalloc, i64 6}
!71 = !{ptr @cse_find_path, ptr @SET_BIT, i64 421733}
!72 = !{ptr @cse_find_path, ptr @fancy_abort, i64 1}
!73 = !{ptr @cse_find_path, ptr @VEC_edge_base_length, i64 481749}
!74 = !{ptr @cse_find_path, ptr @any_condjump_p, i64 481640}
!75 = !{ptr @cse_find_path, ptr @find_edge, i64 294848}
!76 = !{ptr @cse_find_path, ptr @VEC_edge_base_index, i64 826467}
!77 = !{ptr @cse_find_path, ptr @single_pred_p, i64 490873}
!78 = !{ptr @cse_find_path, ptr @single_succ_p, i64 231919}
!79 = !{ptr @cse_find_path, ptr @single_succ_edge, i64 45020}
!80 = !{ptr @cse_extended_basic_block, ptr @xmalloc, i64 134924}
!81 = !{ptr @cse_extended_basic_block, ptr @new_basic_block, i64 134924}
!82 = !{ptr @cse_extended_basic_block, ptr @df_get_live_in, i64 134924}
!83 = !{ptr @cse_extended_basic_block, ptr @df_get_live_out, i64 134924}
!84 = !{ptr @cse_extended_basic_block, ptr @bb_has_eh_pred, i64 467499}
!85 = !{ptr @cse_extended_basic_block, ptr @df_get_artificial_defs, i64 1}
!86 = !{ptr @cse_extended_basic_block, ptr @invalidate, i64 10}
!87 = !{ptr @cse_extended_basic_block, ptr @optimize_bb_for_speed_p, i64 2395343}
!88 = !{ptr @cse_extended_basic_block, ptr @flush_hash_table, i64 1}
!89 = !{ptr @cse_extended_basic_block, ptr @cse_process_notes, i64 778036}
!90 = !{ptr @cse_extended_basic_block, ptr @df_notes_rescan, i64 2}
!91 = !{ptr @cse_extended_basic_block, ptr @cse_insn, i64 1731698}
!92 = !{ptr @cse_extended_basic_block, ptr @for_each_rtx, i64 1049121}
!93 = !{ptr @cse_extended_basic_block, ptr @have_eh_succ_edges, i64 1}
!94 = !{ptr @cse_extended_basic_block, ptr @purge_dead_edges, i64 1}
!95 = !{ptr @cse_extended_basic_block, ptr @find_edge, i64 332575}
!96 = !{ptr @cse_extended_basic_block, ptr @RESET_BIT, i64 32}
!97 = !{ptr @cse_extended_basic_block, ptr @single_set_2, i64 166287}
!98 = !{ptr @cse_extended_basic_block, ptr @any_condjump_p, i64 270216}
!99 = !{ptr @cse_extended_basic_block, ptr @VEC_edge_base_index, i64 407263}
!100 = !{ptr @cse_extended_basic_block, ptr @record_jump_equiv, i64 270215}
!101 = !{ptr @cse_extended_basic_block, ptr @fancy_abort, i64 1}
!102 = !{ptr @cse_extended_basic_block, ptr @free, i64 134924}
!103 = !{ptr @delete_trivially_dead_insns, ptr @timevar_push_1, i64 1}
!104 = !{ptr @delete_trivially_dead_insns, ptr @xcalloc, i64 238}
!105 = !{ptr @delete_trivially_dead_insns, ptr @count_reg_usage, i64 4819842}
!106 = !{ptr @delete_trivially_dead_insns, ptr @get_last_insn, i64 238}
!107 = !{ptr @delete_trivially_dead_insns, ptr @insn_live_p, i64 4794709}
!108 = !{ptr @delete_trivially_dead_insns, ptr @dbg_cnt, i64 25134}
!109 = !{ptr @delete_trivially_dead_insns, ptr @delete_insn_and_edges, i64 25133}
!110 = !{ptr @delete_trivially_dead_insns, ptr @fprintf, i64 1}
!111 = !{ptr @delete_trivially_dead_insns, ptr @free, i64 238}
!112 = !{ptr @delete_trivially_dead_insns, ptr @timevar_pop_1, i64 1}
!113 = !{ptr @count_reg_usage, ptr @rhs_regno, i64 4657862}
!114 = !{ptr @count_reg_usage, ptr @count_reg_usage, i64 22545468}
!115 = !{ptr @count_reg_usage, ptr @insn_could_throw_p, i64 5967575}
!116 = !{ptr @count_reg_usage, ptr @find_reg_equal_equiv_note, i64 5967575}
!117 = !{ptr @count_reg_usage, ptr @fancy_abort, i64 1}
!118 = !{ptr @insn_live_p, ptr @insn_could_throw_p, i64 4814833}
!119 = !{ptr @insn_live_p, ptr @set_live_p, i64 4333810}
!120 = !{ptr @insn_live_p, ptr @for_each_rtx, i64 1}
!121 = !{ptr @rest_of_handle_cse, ptr @dump_flow_info, i64 1}
!122 = !{ptr @rest_of_handle_cse, ptr @get_insns, i64 39}
!123 = !{ptr @rest_of_handle_cse, ptr @max_reg_num, i64 38}
!124 = !{ptr @rest_of_handle_cse, ptr @cse_main, i64 38}
!125 = !{ptr @rest_of_handle_cse, ptr @timevar_push_1, i64 1}
!126 = !{ptr @rest_of_handle_cse, ptr @rebuild_jump_labels, i64 1}
!127 = !{ptr @rest_of_handle_cse, ptr @cleanup_cfg, i64 37}
!128 = !{ptr @rest_of_handle_cse, ptr @timevar_pop_1, i64 1}
!129 = !{ptr @rest_of_handle_cse2, ptr @dump_flow_info, i64 1}
!130 = !{ptr @rest_of_handle_cse2, ptr @get_insns, i64 97}
!131 = !{ptr @rest_of_handle_cse2, ptr @max_reg_num, i64 76}
!132 = !{ptr @rest_of_handle_cse2, ptr @cse_main, i64 38}
!133 = !{ptr @rest_of_handle_cse2, ptr @cse_condition_code_reg, i64 38}
!134 = !{ptr @rest_of_handle_cse2, ptr @delete_trivially_dead_insns, i64 38}
!135 = !{ptr @rest_of_handle_cse2, ptr @timevar_push_1, i64 1}
!136 = !{ptr @rest_of_handle_cse2, ptr @rebuild_jump_labels, i64 21}
!137 = !{ptr @rest_of_handle_cse2, ptr @cleanup_cfg, i64 22}
!138 = !{ptr @rest_of_handle_cse2, ptr @timevar_pop_1, i64 1}
!139 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @get_insns, i64 6}
!140 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @rebuild_jump_labels, i64 2}
!141 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @max_reg_num, i64 4}
!142 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @cse_main, i64 2}
!143 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @purge_all_dead_edges, i64 2}
!144 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @delete_trivially_dead_insns, i64 2}
!145 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 731004}
!146 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 440059}
!147 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 71537}
!148 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!149 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 71537}
!150 = !{ptr @bb_has_eh_pred, ptr @ei_start_1, i64 467501}
!151 = !{ptr @bb_has_eh_pred, ptr @ei_cond, i64 1295101}
!152 = !{ptr @bb_has_eh_pred, ptr @ei_next, i64 827600}
!153 = !{ptr @invalidate, ptr @rhs_regno, i64 3219957}
!154 = !{ptr @invalidate, ptr @get_cse_reg_info, i64 2983811}
!155 = !{ptr @invalidate, ptr @canon_hash, i64 720693}
!156 = !{ptr @invalidate, ptr @delete_reg_equiv, i64 1234835}
!157 = !{ptr @invalidate, ptr @remove_pseudo_from_table, i64 514141}
!158 = !{ptr @invalidate, ptr @end_hard_regno, i64 1089190}
!159 = !{ptr @invalidate, ptr @remove_from_table, i64 163146}
!160 = !{ptr @invalidate, ptr @invalidate, i64 20}
!161 = !{ptr @invalidate, ptr @get_addr, i64 212080}
!162 = !{ptr @invalidate, ptr @canon_rtx, i64 695401}
!163 = !{ptr @invalidate, ptr @for_each_rtx, i64 305555}
!164 = !{ptr @invalidate, ptr @fancy_abort, i64 1}
!165 = !{ptr @cse_process_notes, ptr @cse_process_notes_1, i64 1010131}
!166 = !{ptr @cse_insn, ptr @invalidate, i64 1393193}
!167 = !{ptr @cse_insn, ptr @canon_reg, i64 3525548}
!168 = !{ptr @cse_insn, ptr @apply_change_group, i64 3496229}
!169 = !{ptr @cse_insn, ptr @fold_rtx, i64 1965325}
!170 = !{ptr @cse_insn, ptr @rhs_regno, i64 5012135}
!171 = !{ptr @cse_insn, ptr @find_reg_note, i64 1177412}
!172 = !{ptr @cse_insn, ptr @rtx_equal_p, i64 2767985}
!173 = !{ptr @cse_insn, ptr @copy_rtx, i64 20821}
!174 = !{ptr @cse_insn, ptr @df_notes_rescan, i64 20821}
!175 = !{ptr @cse_insn, ptr @validate_change, i64 3120342}
!176 = !{ptr @cse_insn, ptr @canon_hash, i64 3710076}
!177 = !{ptr @cse_insn, ptr @get_cse_reg_info, i64 3308923}
!178 = !{ptr @cse_insn, ptr @lookup, i64 1383885}
!179 = !{ptr @cse_insn, ptr @merge_equiv_classes, i64 1220}
!180 = !{ptr @cse_insn, ptr @use_related_value, i64 13866}
!181 = !{ptr @cse_insn, ptr @gen_rtx_fmt_ee_stat, i64 1}
!182 = !{ptr @cse_insn, ptr @exp_equiv_p, i64 82108}
!183 = !{ptr @cse_insn, ptr @notreg_cost, i64 1185356}
!184 = !{ptr @cse_insn, ptr @approx_reg_cost, i64 1440379}
!185 = !{ptr @cse_insn, ptr @preferable, i64 4312284}
!186 = !{ptr @cse_insn, ptr @canon_rtx, i64 2}
!187 = !{ptr @cse_insn, ptr @nonoverlapping_memrefs_p, i64 1}
!188 = !{ptr @cse_insn, ptr @condjump_p, i64 1}
!189 = !{ptr @cse_insn, ptr @validate_unshare_change, i64 1568120}
!190 = !{ptr @cse_insn, ptr @set_unique_reg_note, i64 10478}
!191 = !{ptr @cse_insn, ptr @delete_insn_and_edges, i64 1}
!192 = !{ptr @cse_insn, ptr @insert_regs, i64 1872382}
!193 = !{ptr @cse_insn, ptr @rehash_using_reg, i64 1243051}
!194 = !{ptr @cse_insn, ptr @insert, i64 1991174}
!195 = !{ptr @cse_insn, ptr @invalidate_from_clobbers, i64 1742984}
!196 = !{ptr @cse_insn, ptr @invalidate_memory, i64 182733}
!197 = !{ptr @cse_insn, ptr @invalidate_for_call, i64 182735}
!198 = !{ptr @cse_insn, ptr @flush_hash_table, i64 2}
!199 = !{ptr @cse_insn, ptr @mention_regs, i64 212080}
!200 = !{ptr @cse_insn, ptr @end_hard_regno, i64 439096}
!201 = !{ptr @cse_insn, ptr @remove_invalid_refs, i64 43001}
!202 = !{ptr @cse_insn, ptr @simplify_gen_subreg, i64 3}
!203 = !{ptr @check_for_label_ref, ptr @label_is_jump_target_p, i64 245135}
!204 = !{ptr @check_for_label_ref, ptr @find_reg_note, i64 48}
!205 = !{ptr @record_jump_equiv, ptr @any_condjump_p, i64 332577}
!206 = !{ptr @record_jump_equiv, ptr @fancy_abort, i64 1}
!207 = !{ptr @record_jump_equiv, ptr @pc_set, i64 332577}
!208 = !{ptr @record_jump_equiv, ptr @fold_rtx, i64 665154}
!209 = !{ptr @record_jump_equiv, ptr @find_comparison_args, i64 332577}
!210 = !{ptr @record_jump_equiv, ptr @reversed_comparison_code_parts, i64 264881}
!211 = !{ptr @record_jump_equiv, ptr @record_jump_cond, i64 332576}
!212 = !{ptr @ei_cond, ptr @ei_end_p, i64 1743853}
!213 = !{ptr @ei_cond, ptr @ei_edge, i64 1127437}
!214 = !{ptr @ei_next, ptr @ei_container, i64 2254873}
!215 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1127437}
!216 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!217 = !{ptr @ei_end_p, ptr @ei_container, i64 3487705}
!218 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 1743853}
!219 = !{ptr @ei_edge, ptr @ei_container, i64 2254873}
!220 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1127437}
!221 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!222 = !{ptr @canon_hash, ptr @hash_rtx, i64 5002653}
!223 = !{ptr @delete_reg_equiv, ptr @get_cse_reg_info, i64 19650789}
!224 = !{ptr @remove_pseudo_from_table, ptr @lookup_for_remove, i64 560189}
!225 = !{ptr @remove_pseudo_from_table, ptr @remove_from_table, i64 36377}
!226 = !{ptr @check_dependence, ptr @canon_true_dependence, i64 305555}
!227 = !{ptr @lookup_for_remove, ptr @rhs_regno, i64 678969}
!228 = !{ptr @lookup_for_remove, ptr @exp_equiv_p, i64 4}
!229 = !{ptr @cse_process_notes_1, ptr @cse_process_notes, i64 227027}
!230 = !{ptr @cse_process_notes_1, ptr @validate_change, i64 30970}
!231 = !{ptr @cse_process_notes_1, ptr @rhs_regno, i64 14580}
!232 = !{ptr @cse_process_notes_1, ptr @get_cse_reg_info, i64 14580}
!233 = !{ptr @cse_process_notes_1, ptr @canon_reg, i64 7290}
!234 = !{ptr @canon_reg, ptr @rhs_regno, i64 3318411}
!235 = !{ptr @canon_reg, ptr @get_cse_reg_info, i64 1884058}
!236 = !{ptr @canon_reg, ptr @gen_rtx_REG, i64 1}
!237 = !{ptr @canon_reg, ptr @validate_canon_reg, i64 7385707}
!238 = !{ptr @validate_canon_reg, ptr @canon_reg, i64 7385695}
!239 = !{ptr @validate_canon_reg, ptr @fancy_abort, i64 2}
!240 = !{ptr @validate_canon_reg, ptr @validate_change, i64 7385695}
!241 = !{ptr @fold_rtx, ptr @equiv_constant, i64 3153548}
!242 = !{ptr @fold_rtx, ptr @fold_rtx, i64 790981}
!243 = !{ptr @fold_rtx, ptr @validate_change, i64 13}
!244 = !{ptr @fold_rtx, ptr @notreg_cost, i64 200970}
!245 = !{ptr @fold_rtx, ptr @validate_unshare_change, i64 18394}
!246 = !{ptr @fold_rtx, ptr @canonicalize_change_group, i64 18394}
!247 = !{ptr @fold_rtx, ptr @apply_change_group, i64 18394}
!248 = !{ptr @fold_rtx, ptr @simplify_unary_operation, i64 2429}
!249 = !{ptr @fold_rtx, ptr @find_comparison_args, i64 437245}
!250 = !{ptr @fold_rtx, ptr @rhs_regno, i64 1251145}
!251 = !{ptr @fold_rtx, ptr @get_cse_reg_info, i64 1251143}
!252 = !{ptr @fold_rtx, ptr @safe_hash, i64 429251}
!253 = !{ptr @fold_rtx, ptr @lookup, i64 1054785}
!254 = !{ptr @fold_rtx, ptr @exp_equiv_p, i64 308750}
!255 = !{ptr @fold_rtx, ptr @simplify_relational_operation, i64 744781}
!256 = !{ptr @fold_rtx, ptr @copy_rtx, i64 1}
!257 = !{ptr @fold_rtx, ptr @comparison_dominates_p, i64 619585}
!258 = !{ptr @fold_rtx, ptr @reverse_condition, i64 306809}
!259 = !{ptr @fold_rtx, ptr @rtx_equal_p, i64 60126}
!260 = !{ptr @fold_rtx, ptr @lookup_as_function, i64 171332}
!261 = !{ptr @fold_rtx, ptr @gen_rtx_CONST_INT, i64 1}
!262 = !{ptr @fold_rtx, ptr @simplify_binary_operation, i64 500089}
!263 = !{ptr @fold_rtx, ptr @simplify_ternary_operation, i64 395891}
!264 = !{ptr @lookup, ptr @exp_equiv_p, i64 666744}
!265 = !{ptr @merge_equiv_classes, ptr @exp_equiv_p, i64 212598}
!266 = !{ptr @merge_equiv_classes, ptr @rhs_regno, i64 473503}
!267 = !{ptr @merge_equiv_classes, ptr @get_cse_reg_info, i64 241585}
!268 = !{ptr @merge_equiv_classes, ptr @canon_hash, i64 212600}
!269 = !{ptr @merge_equiv_classes, ptr @delete_reg_equiv, i64 222245}
!270 = !{ptr @merge_equiv_classes, ptr @remove_pseudo_from_table, i64 9670}
!271 = !{ptr @merge_equiv_classes, ptr @remove_from_table, i64 212598}
!272 = !{ptr @merge_equiv_classes, ptr @insert_regs, i64 222268}
!273 = !{ptr @merge_equiv_classes, ptr @rehash_using_reg, i64 9672}
!274 = !{ptr @merge_equiv_classes, ptr @insert, i64 222268}
!275 = !{ptr @use_related_value, ptr @get_related_value, i64 13293}
!276 = !{ptr @use_related_value, ptr @rhs_regno, i64 1}
!277 = !{ptr @use_related_value, ptr @safe_hash, i64 13292}
!278 = !{ptr @use_related_value, ptr @lookup, i64 13292}
!279 = !{ptr @use_related_value, ptr @rtx_equal_p, i64 5005}
!280 = !{ptr @use_related_value, ptr @get_integer_term, i64 8026}
!281 = !{ptr @use_related_value, ptr @plus_constant, i64 4013}
!282 = !{ptr @notreg_cost, ptr @rtx_cost, i64 2849106}
!283 = !{ptr @approx_reg_cost, ptr @for_each_rtx, i64 4062403}
!284 = !{ptr @insert_regs, ptr @rhs_regno, i64 1306306}
!285 = !{ptr @insert_regs, ptr @get_cse_reg_info, i64 1889385}
!286 = !{ptr @insert_regs, ptr @fancy_abort, i64 1}
!287 = !{ptr @insert_regs, ptr @make_regs_eqv, i64 16549}
!288 = !{ptr @insert_regs, ptr @make_new_qty, i64 1192160}
!289 = !{ptr @insert_regs, ptr @mention_regs, i64 1292825}
!290 = !{ptr @rehash_using_reg, ptr @rhs_regno, i64 1191982}
!291 = !{ptr @rehash_using_reg, ptr @get_cse_reg_info, i64 1191981}
!292 = !{ptr @rehash_using_reg, ptr @reg_mentioned_p, i64 330174}
!293 = !{ptr @rehash_using_reg, ptr @exp_equiv_p, i64 60774}
!294 = !{ptr @rehash_using_reg, ptr @safe_hash, i64 60773}
!295 = !{ptr @insert, ptr @notreg_cost, i64 1514431}
!296 = !{ptr @insert, ptr @approx_reg_cost, i64 2622020}
!297 = !{ptr @insert, ptr @insert_with_costs, i64 2622020}
!298 = !{ptr @invalidate_from_clobbers, ptr @invalidate, i64 53730}
!299 = !{ptr @invalidate_memory, ptr @remove_from_table, i64 453864}
!300 = !{ptr @invalidate_for_call, ptr @delete_reg_equiv, i64 8405718}
!301 = !{ptr @invalidate_for_call, ptr @get_cse_reg_info, i64 25217152}
!302 = !{ptr @invalidate_for_call, ptr @rhs_regno, i64 738227}
!303 = !{ptr @invalidate_for_call, ptr @end_hard_regno, i64 300504}
!304 = !{ptr @invalidate_for_call, ptr @remove_from_table, i64 199557}
!305 = !{ptr @mention_regs, ptr @rhs_regno, i64 1075802}
!306 = !{ptr @mention_regs, ptr @end_hard_regno, i64 275850}
!307 = !{ptr @mention_regs, ptr @get_cse_reg_info, i64 3524889}
!308 = !{ptr @mention_regs, ptr @remove_invalid_refs, i64 2}
!309 = !{ptr @mention_regs, ptr @insert_regs, i64 182168}
!310 = !{ptr @mention_regs, ptr @rehash_using_reg, i64 182167}
!311 = !{ptr @mention_regs, ptr @mention_regs, i64 1790019}
!312 = !{ptr @remove_invalid_refs, ptr @refers_to_regno_p, i64 290441}
!313 = !{ptr @remove_invalid_refs, ptr @remove_from_table, i64 43068}
!314 = !{ptr @equiv_constant, ptr @rhs_regno, i64 2106544}
!315 = !{ptr @equiv_constant, ptr @get_cse_reg_info, i64 2106544}
!316 = !{ptr @equiv_constant, ptr @lookup_as_function, i64 76599}
!317 = !{ptr @equiv_constant, ptr @subreg_lowpart_offset, i64 1}
!318 = !{ptr @equiv_constant, ptr @equiv_constant, i64 25530}
!319 = !{ptr @equiv_constant, ptr @simplify_subreg, i64 1}
!320 = !{ptr @equiv_constant, ptr @avoid_constant_pool_reference, i64 780116}
!321 = !{ptr @equiv_constant, ptr @safe_hash, i64 780114}
!322 = !{ptr @equiv_constant, ptr @lookup, i64 780115}
!323 = !{ptr @find_comparison_args, ptr @rhs_regno, i64 1229813}
!324 = !{ptr @find_comparison_args, ptr @get_cse_reg_info, i64 264515}
!325 = !{ptr @find_comparison_args, ptr @safe_hash, i64 1011442}
!326 = !{ptr @find_comparison_args, ptr @lookup, i64 1275957}
!327 = !{ptr @find_comparison_args, ptr @exp_equiv_p, i64 1240246}
!328 = !{ptr @find_comparison_args, ptr @rtx_addr_can_trap_p, i64 203266}
!329 = !{ptr @find_comparison_args, ptr @reversed_comparison_code, i64 1}
!330 = !{ptr @find_comparison_args, ptr @fold_rtx, i64 1539660}
!331 = !{ptr @safe_hash, ptr @hash_rtx, i64 2148793}
!332 = !{ptr @lookup_as_function, ptr @rhs_regno, i64 151520}
!333 = !{ptr @lookup_as_function, ptr @get_cse_reg_info, i64 151519}
!334 = !{ptr @lookup_as_function, ptr @safe_hash, i64 97069}
!335 = !{ptr @lookup_as_function, ptr @lookup, i64 248588}
!336 = !{ptr @approx_reg_cost_1, ptr @rhs_regno, i64 2911249}
!337 = !{ptr @make_regs_eqv, ptr @get_cse_reg_info, i64 46128}
!338 = !{ptr @make_regs_eqv, ptr @fancy_abort, i64 1}
!339 = !{ptr @make_regs_eqv, ptr @bitmap_bit_p, i64 30979}
!340 = !{ptr @make_new_qty, ptr @fancy_abort, i64 1}
!341 = !{ptr @make_new_qty, ptr @get_cse_reg_info, i64 1128734}
!342 = !{ptr @insert_with_costs, ptr @rhs_regno, i64 3651869}
!343 = !{ptr @insert_with_costs, ptr @get_cse_reg_info, i64 2544279}
!344 = !{ptr @insert_with_costs, ptr @fancy_abort, i64 1}
!345 = !{ptr @insert_with_costs, ptr @add_to_hard_reg_set, i64 534539}
!346 = !{ptr @insert_with_costs, ptr @xmalloc, i64 56}
!347 = !{ptr @insert_with_costs, ptr @fixed_base_plus_p, i64 2069229}
!348 = !{ptr @insert_with_costs, ptr @preferable, i64 1280962}
!349 = !{ptr @insert_with_costs, ptr @get_related_value, i64 13296}
!350 = !{ptr @insert_with_costs, ptr @safe_hash, i64 13294}
!351 = !{ptr @insert_with_costs, ptr @lookup, i64 13295}
!352 = !{ptr @insert_with_costs, ptr @insert, i64 13294}
!353 = !{ptr @add_to_hard_reg_set, ptr @end_hard_regno, i64 534539}
!354 = !{ptr @fixed_base_plus_p, ptr @rhs_regno, i64 1152343}
!355 = !{ptr @record_jump_cond, ptr @record_jump_cond_subreg, i64 2}
!356 = !{ptr @record_jump_cond, ptr @subreg_lowpart_p, i64 2}
!357 = !{ptr @record_jump_cond, ptr @rhs_regno, i64 259699}
!358 = !{ptr @record_jump_cond, ptr @get_cse_reg_info, i64 259697}
!359 = !{ptr @record_jump_cond, ptr @canon_hash, i64 446495}
!360 = !{ptr @record_jump_cond, ptr @lookup, i64 249432}
!361 = !{ptr @record_jump_cond, ptr @rtx_equal_p, i64 124715}
!362 = !{ptr @record_jump_cond, ptr @equiv_constant, i64 45819}
!363 = !{ptr @record_jump_cond, ptr @insert_regs, i64 156672}
!364 = !{ptr @record_jump_cond, ptr @insert, i64 156672}
!365 = !{ptr @record_jump_cond, ptr @merge_equiv_classes, i64 78895}
!366 = !{ptr @set_live_p, ptr @set_noop_p, i64 4334868}
!367 = !{ptr @set_live_p, ptr @is_dead_reg, i64 4324427}
!368 = !{ptr @set_live_p, ptr @side_effects_p, i64 14800}
!369 = !{ptr @is_dead_reg, ptr @rhs_regno, i64 2635113}
!370 = !{ptr @cse_condition_code_reg, ptr @gen_rtx_REG, i64 136}
!371 = !{ptr @cse_condition_code_reg, ptr @reg_referenced_p, i64 140814}
!372 = !{ptr @cse_condition_code_reg, ptr @single_set_2, i64 1}
!373 = !{ptr @cse_condition_code_reg, ptr @rhs_regno, i64 279277}
!374 = !{ptr @cse_condition_code_reg, ptr @modified_between_p, i64 139606}
!375 = !{ptr @cse_condition_code_reg, ptr @reg_set_p, i64 3}
!376 = !{ptr @cse_condition_code_reg, ptr @cse_cc_succs, i64 139605}
!377 = !{ptr @cse_condition_code_reg, ptr @fancy_abort, i64 1}
!378 = !{ptr @cse_condition_code_reg, ptr @cse_change_cc_mode_insn, i64 63}
!379 = !{ptr @cse_condition_code_reg, ptr @cse_change_cc_mode_insns, i64 63}
!380 = !{ptr @cse_cc_succs, ptr @ei_start_1, i64 148915}
!381 = !{ptr @cse_cc_succs, ptr @ei_cond, i64 448748}
!382 = !{ptr @cse_cc_succs, ptr @VEC_edge_base_length, i64 299832}
!383 = !{ptr @cse_cc_succs, ptr @modified_in_p, i64 469924}
!384 = !{ptr @cse_cc_succs, ptr @single_set_2, i64 2}
!385 = !{ptr @cse_cc_succs, ptr @rhs_regno, i64 614207}
!386 = !{ptr @cse_cc_succs, ptr @rtx_equal_p, i64 95532}
!387 = !{ptr @cse_cc_succs, ptr @fancy_abort, i64 3}
!388 = !{ptr @cse_cc_succs, ptr @delete_insn, i64 2}
!389 = !{ptr @cse_cc_succs, ptr @reg_set_p, i64 377096}
!390 = !{ptr @cse_cc_succs, ptr @cse_cc_succs, i64 1713}
!391 = !{ptr @cse_cc_succs, ptr @ei_next, i64 299833}
!392 = !{ptr @cse_cc_succs, ptr @gen_rtx_REG, i64 1}
!393 = !{ptr @cse_cc_succs, ptr @cse_change_cc_mode_insns, i64 67}
!394 = !{ptr @cse_cc_succs, ptr @delete_insn_and_edges, i64 68}
!395 = !{ptr @cse_change_cc_mode_insn, ptr @for_each_rtx, i64 402}
!396 = !{ptr @cse_change_cc_mode_insn, ptr @apply_change_group, i64 201}
!397 = !{ptr @cse_change_cc_mode_insn, ptr @fancy_abort, i64 1}
!398 = !{ptr @cse_change_cc_mode_insns, ptr @reg_set_p, i64 134}
!399 = !{ptr @cse_change_cc_mode_insns, ptr @cse_change_cc_mode_insn, i64 133}
!400 = !{ptr @cse_change_cc_mode, ptr @rhs_regno, i64 804}
!401 = !{ptr @cse_change_cc_mode, ptr @validate_change, i64 334}
!402 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!403 = !{!"function_entry_count", i64 0}
!404 = !{!405, !405, i64 0}
!405 = !{!"any pointer", !406, i64 0}
!406 = !{!"omnipotent char", !407, i64 0}
!407 = !{!"Simple C/C++ TBAA"}
!408 = !{!409, !405, i64 0}
!409 = !{!"table_elt", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !405, i64 32, !405, i64 40, !405, i64 48, !405, i64 56, !410, i64 64, !410, i64 68, !410, i64 72, !406, i64 73, !406, i64 74, !406, i64 75}
!410 = !{!"int", !406, i64 0}
!411 = distinct !{!411, !412}
!412 = !{!"llvm.loop.mustprogress"}
!413 = !{!"function_entry_count", i64 12140177}
!414 = !{!"branch_weights", i32 1, i32 127}
!415 = !{!"branch_weights", i32 17319096, i32 1}
!416 = !{!410, !410, i64 0}
!417 = !{!"branch_weights", i32 3183456, i32 5480231, i32 102822, i32 3056348, i32 1, i32 1, i32 1, i32 581620, i32 1700167, i32 2021264, i32 91, i32 89, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1124290, i32 1, i32 68728, i32 1, i32 1}
!418 = !{!"branch_weights", i32 1000076455, i32 -1927410061}
!419 = !{!"branch_weights", i32 983116855, i32 -931542217}
!420 = !{!406, !406, i64 0}
!421 = !{!"branch_weights", i32 2981352, i32 1}
!422 = !{!"branch_weights", i32 348063, i32 2633290}
!423 = !{!"branch_weights", i32 4246363, i32 348063}
!424 = !{!"branch_weights", i32 995384, i32 4136786}
!425 = !{!426, !410, i64 4}
!426 = !{!"cse_reg_info", !410, i64 0, !410, i64 4, !410, i64 8, !410, i64 12, !410, i64 16}
!427 = !{!"branch_weights", i32 102822, i32 1}
!428 = !{!429, !410, i64 0}
!429 = !{!"rtvec_def", !410, i64 0, !406, i64 8}
!430 = distinct !{!430, !412}
!431 = !{!"branch_weights", i32 1, i32 1700166}
!432 = !{!"branch_weights", i32 1700166, i32 22286807}
!433 = distinct !{!433, !412}
!434 = !{!"branch_weights", i32 246742, i32 1774523}
!435 = !{!"branch_weights", i32 3465, i32 -1219838510}
!436 = !{!"branch_weights", i32 1549706557, i32 -871367113}
!437 = !{!"branch_weights", i32 127, i32 -2078123135}
!438 = !{!"branch_weights", i32 1, i32 183}
!439 = !{!"branch_weights", i32 403603, i32 789503}
!440 = distinct !{!440, !412}
!441 = !{!"branch_weights", i32 1, i32 25890}
!442 = !{!"branch_weights", i32 1, i32 6733529, i32 25717, i32 1, i32 1, i32 108, i32 1}
!443 = !{!"branch_weights", i32 25716, i32 1}
!444 = !{!"branch_weights", i32 3157656, i32 3575874}
!445 = !{!"branch_weights", i32 25824, i32 25716}
!446 = distinct !{!446, !412}
!447 = !{!"branch_weights", i32 6733462, i32 25890}
!448 = distinct !{!448, !412}
!449 = !{!"function_entry_count", i64 57791819}
!450 = !{!"cse.c:rhs_regno"}
!451 = !{!"function_entry_count", i64 75241780}
!452 = !{!"cse.c:get_cse_reg_info"}
!453 = !{!426, !410, i64 0}
!454 = !{!"branch_weights", i32 70145534, i32 5096248}
!455 = !{!"cse.c:hash_rtx_string"}
!456 = distinct !{!456, !412}
!457 = !{!"function_entry_count", i64 7599857}
!458 = !{!"function_entry_count", i64 4456235}
!459 = !{!"branch_weights", i32 41603590, i32 1}
!460 = !{!"branch_weights", i32 1077, i32 -1917684412}
!461 = !{!"branch_weights", i32 4107949, i32 305067}
!462 = !{!"branch_weights", i32 4106675, i32 1275}
!463 = !{!"branch_weights", i32 412051, i32 3694625}
!464 = !{!"branch_weights", i32 4070, i32 407982}
!465 = !{!466, !406, i64 32}
!466 = !{!"mem_attrs", !405, i64 0, !405, i64 8, !405, i64 16, !410, i64 24, !410, i64 28, !406, i64 32}
!467 = !{!"branch_weights", i32 4105, i32 407947}
!468 = !{!"branch_weights", i32 412051, i32 1}
!469 = !{!"branch_weights", i32 886874, i32 1, i32 1, i32 1384396, i32 1, i32 1, i32 26, i32 338042, i32 937857, i32 412051, i32 74012, i32 49, i32 71867, i32 1261, i32 1, i32 131, i32 120, i32 1}
!470 = !{!"branch_weights", i32 932629, i32 5229}
!471 = !{!"branch_weights", i32 52279, i32 880351}
!472 = !{!"branch_weights", i32 -912309014, i32 7739571}
!473 = !{!"branch_weights", i32 930464, i32 1}
!474 = !{!426, !410, i64 12}
!475 = !{!426, !410, i64 8}
!476 = !{!"branch_weights", i32 138115, i32 -912937824}
!477 = distinct !{!477, !412}
!478 = !{!"branch_weights", i32 380560, i32 31492}
!479 = !{!"branch_weights", i32 991746064, i32 62985}
!480 = !{!"branch_weights", i32 29936, i32 1557}
!481 = !{i32 0, i32 2}
!482 = !{!"branch_weights", i32 272, i32 147164}
!483 = !{!"branch_weights", i32 2, i32 147163}
!484 = !{!"branch_weights", i32 273, i32 1}
!485 = !{!"branch_weights", i32 -88796137, i32 41603590}
!486 = distinct !{!486, !412}
!487 = !{!"branch_weights", i32 1, i32 1215343}
!488 = !{!"branch_weights", i32 1, i32 2092848, i32 1, i32 1, i32 855, i32 1, i32 410495, i32 1}
!489 = !{!"branch_weights", i32 82025, i32 2010824}
!490 = distinct !{!490, !412}
!491 = !{!"branch_weights", i32 855, i32 1}
!492 = !{!"branch_weights", i32 1288853, i32 1215343}
!493 = distinct !{!493, !412}
!494 = !{!"function_entry_count", i64 2691464}
!495 = !{!"cse.c:end_hard_regno"}
!496 = !{!"function_entry_count", i64 78}
!497 = !{!498, !405, i64 8}
!498 = !{!"function", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !405, i64 32, !405, i64 40, !405, i64 48, !405, i64 56, !405, i64 64, !405, i64 72, !405, i64 80, !405, i64 88, !405, i64 96, !410, i64 104, !410, i64 108, !410, i64 112, !410, i64 116, !410, i64 120, !410, i64 124, !405, i64 128, !410, i64 136, !410, i64 137, !410, i64 138, !410, i64 138, !410, i64 138, !410, i64 138, !410, i64 138, !410, i64 138, !410, i64 138, !410, i64 139, !410, i64 139, !410, i64 139, !410, i64 139, !410, i64 139, !410, i64 139, !410, i64 139}
!499 = !{!500, !410, i64 32}
!500 = !{!"control_flow_graph", !405, i64 0, !405, i64 8, !405, i64 16, !410, i64 24, !410, i64 28, !410, i64 32, !405, i64 40, !410, i64 48, !406, i64 52, !406, i64 60, !410, i64 68, !410, i64 72}
!501 = !{!502, !410, i64 8}
!502 = !{!"param_info", !405, i64 0, !410, i64 8, !406, i64 12, !410, i64 16, !410, i64 20, !405, i64 24}
!503 = !{!504, !405, i64 8}
!504 = !{!"cse_basic_block_data", !410, i64 0, !410, i64 4, !405, i64 8}
!505 = !{!504, !410, i64 4}
!506 = !{!504, !410, i64 0}
!507 = !{i64 0, i64 8, !404, i64 8, i64 8, !404, i64 16, i64 8, !404, i64 24, i64 8, !404, i64 32, i64 8, !404}
!508 = !{!"branch_weights", i32 157, i32 1}
!509 = !{!"branch_weights", i32 204839, i32 157}
!510 = distinct !{!510, !412}
!511 = !{!500, !405, i64 16}
!512 = !{!513, !410, i64 80}
!513 = !{!"basic_block_def", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !406, i64 32, !405, i64 48, !405, i64 56, !406, i64 64, !514, i64 72, !410, i64 80, !410, i64 84, !410, i64 88, !410, i64 92, !410, i64 96}
!514 = !{!"long", !406, i64 0}
!515 = !{!514, !514, i64 0}
!516 = !{!"branch_weights", i32 268777, i32 102496}
!517 = !{!"branch_weights", i32 268775, i32 102498}
!518 = distinct !{!518, !412}
!519 = !{i8 0, i8 2}
!520 = !{!"branch_weights", i32 1, i32 102497}
!521 = !{!"branch_weights", i32 3, i32 134925}
!522 = !{!"branch_weights", i32 134925, i32 1}
!523 = !{!"branch_weights", i32 102497, i32 32430}
!524 = distinct !{!524, !412}
!525 = !{!526, !405, i64 0}
!526 = !{!"simple_bitmap_def", !405, i64 0, !410, i64 8, !410, i64 12, !406, i64 16}
!527 = !{!"branch_weights", i32 1818, i32 4582}
!528 = !{!"cse.c:init_cse_reg_info"}
!529 = !{!"branch_weights", i32 6, i32 74}
!530 = !{!"branch_weights", i32 4, i32 3}
!531 = !{!"branch_weights", i32 2, i32 3}
!532 = !{!"branch_weights", i32 6, i32 4}
!533 = distinct !{!533, !412}
!534 = !{!"branch_weights", i32 2, i32 5}
!535 = !{!"branch_weights", i32 8, i32 72}
!536 = !{!"branch_weights", i32 8, i32 87925}
!537 = distinct !{!537, !412}
!538 = !{!"function_entry_count", i64 371271}
!539 = !{!"cse.c:VEC_basic_block_base_index"}
!540 = !{!"function_entry_count", i64 237423}
!541 = !{!"cse.c:cse_find_path"}
!542 = !{!"branch_weights", i32 102498, i32 134927}
!543 = !{!544, !405, i64 0}
!544 = !{!"branch_path", !405, i64 0}
!545 = !{!"branch_weights", i32 134927, i32 1}
!546 = !{!"branch_weights", i32 377349010, i32 -895258251}
!547 = !{!"branch_weights", i32 89018, i32 1}
!548 = !{!513, !405, i64 8}
!549 = !{!"branch_weights", i32 268777, i32 1}
!550 = !{!551, !405, i64 8}
!551 = !{!"rtl_bb_info", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !410, i64 32}
!552 = !{!"branch_weights", i32 1, i32 268777}
!553 = !{!554, !410, i64 48}
!554 = !{!"edge_def", !405, i64 0, !405, i64 8, !406, i64 16, !405, i64 24, !405, i64 32, !410, i64 40, !410, i64 44, !410, i64 48, !410, i64 52, !514, i64 56}
!555 = !{!"branch_weights", i32 137264, i32 131514}
!556 = !{!"branch_weights", i32 65942, i32 202836}
!557 = !{!554, !405, i64 8}
!558 = !{!500, !405, i64 8}
!559 = !{!"branch_weights", i32 1, i32 65942}
!560 = !{!"branch_weights", i32 33513, i32 32430}
!561 = !{!"branch_weights", i32 32430, i32 1}
!562 = !{!"branch_weights", i32 179759, i32 89018}
!563 = !{!"branch_weights", i32 -2147483648, i32 0}
!564 = !{!"branch_weights", i32 694, i32 134234}
!565 = !{!"branch_weights", i32 1, i32 132175}
!566 = !{!"branch_weights", i32 134233, i32 1}
!567 = !{!"branch_weights", i32 296986, i32 71538}
!568 = !{!"branch_weights", i32 296816, i32 171}
!569 = !{!"branch_weights", i32 1, i32 296816}
!570 = !{!"branch_weights", i32 165749, i32 131068}
!571 = !{!"branch_weights", i32 230875, i32 65942}
!572 = !{!"branch_weights", i32 0, i32 -2147483648}
!573 = !{!"branch_weights", i32 105, i32 368249}
!574 = !{!"branch_weights", i32 131902, i32 236348}
!575 = !{!"branch_weights", i32 236348, i32 1}
!576 = !{!"branch_weights", i32 234290, i32 134233}
!577 = distinct !{!577, !412}
!578 = !{!"function_entry_count", i64 134926}
!579 = !{!"cse.c:cse_prescan_path"}
!580 = !{!"branch_weights", i32 134926, i32 1}
!581 = !{!"branch_weights", i32 1, i32 157}
!582 = !{!"branch_weights", i32 467504, i32 2410959}
!583 = !{!"branch_weights", i32 -209113094, i32 1565841336}
!584 = !{!"branch_weights", i32 53779, i32 1689207}
!585 = !{!"branch_weights", i32 157, i32 5756611}
!586 = distinct !{!586, !412}
!587 = !{!"branch_weights", i32 134926, i32 332578}
!588 = distinct !{!588, !412}
!589 = !{!"cse.c:cse_dump_path"}
!590 = distinct !{!590, !412}
!591 = !{!"function_entry_count", i64 134924}
!592 = !{!"cse.c:cse_extended_basic_block"}
!593 = !{!"branch_weights", i32 134924, i32 1}
!594 = !{!"branch_weights", i32 467502, i32 1}
!595 = distinct !{!595, !412}
!596 = !{!"branch_weights", i32 467502, i32 2410957}
!597 = !{!"branch_weights", i32 1301393632, i32 -899150983}
!598 = !{!"branch_weights", i32 1, i32 1742985}
!599 = !{!"branch_weights", i32 -209135821, i32 1565827938}
!600 = !{!"branch_weights", i32 959878, i32 783108}
!601 = !{!"branch_weights", i32 783107, i32 2}
!602 = !{!"branch_weights", i32 -417882641, i32 454078429}
!603 = !{!"branch_weights", i32 1961647485, i32 -1279954006}
!604 = !{!"branch_weights", i32 687026, i32 1055960}
!605 = !{!"branch_weights", i32 1055939, i32 22}
!606 = !{!"branch_weights", i32 157, i32 5756603}
!607 = distinct !{!607, !412}
!608 = !{!"branch_weights", i32 332578, i32 134925}
!609 = !{!"branch_weights", i32 1, i32 332578}
!610 = distinct !{!610, !412}
!611 = !{!"branch_weights", i32 332578, i32 1}
!612 = !{!"branch_weights", i32 163902, i32 168677}
!613 = !{!"branch_weights", i32 332578, i32 134924}
!614 = distinct !{!614, !412}
!615 = !{!"branch_weights", i32 1, i32 134925}
!616 = !{!"function_entry_count", i64 238}
!617 = !{!"branch_weights", i32 239, i32 1}
!618 = !{!"branch_weights", i32 1, i32 238}
!619 = !{!"branch_weights", i32 -2064011027, i32 944952718}
!620 = !{!"branch_weights", i32 238, i32 6853988}
!621 = distinct !{!621, !412}
!622 = !{!"branch_weights", i32 25240, i32 4789595}
!623 = !{!"branch_weights", i32 1, i32 25240}
!624 = distinct !{!624, !412}
!625 = !{!"function_entry_count", i64 28026839}
!626 = !{!"cse.c:count_reg_usage"}
!627 = !{!"branch_weights", i32 1, i32 479704}
!628 = !{!"branch_weights", i32 5935406, i32 3810377, i32 2163438, i32 1, i32 107319, i32 3599385, i32 1, i32 1, i32 1, i32 968858, i32 1162168, i32 134818, i32 4825303, i32 1, i32 479705, i32 3238874, i32 1121496, i32 1, i32 1, i32 1}
!629 = !{!"branch_weights", i32 32561, i32 3777817}
!630 = !{!"branch_weights", i32 1, i32 134818}
!631 = !{!"branch_weights", i32 479704, i32 27067432}
!632 = !{!"branch_weights", i32 3135988, i32 1689316}
!633 = !{!"branch_weights", i32 4360262, i32 465042}
!634 = !{!"branch_weights", i32 4360369, i32 479705}
!635 = !{!"branch_weights", i32 479705, i32 4360369}
!636 = !{!"branch_weights", i32 4764342, i32 75732}
!637 = !{!"branch_weights", i32 1, i32 75732}
!638 = distinct !{!638, !412}
!639 = distinct !{!639, !412}
!640 = !{!"branch_weights", i32 1, i32 5935405}
!641 = !{!"branch_weights", i32 372290717, i32 -1865055539, i32 29946035}
!642 = !{!"branch_weights", i32 135142, i32 1}
!643 = !{!"branch_weights", i32 175598, i32 135142}
!644 = distinct !{!644, !412}
!645 = !{!"branch_weights", i32 6845746, i32 5935405}
!646 = distinct !{!646, !412}
!647 = !{!"function_entry_count", i64 4814833}
!648 = !{!"cse.c:insn_live_p"}
!649 = !{!"branch_weights", i32 4335130, i32 479705}
!650 = !{!"branch_weights", i32 138553, i32 -2073988568, i32 71455784}
!651 = !{!"branch_weights", i32 127, i32 1}
!652 = !{!"branch_weights", i32 19638, i32 -1623569683, i32 -1629560141, i32 2926151}
!653 = !{!"branch_weights", i32 1, i32 135120}
!654 = !{!"branch_weights", i32 34570753, i32 127}
!655 = distinct !{!655, !412}
!656 = !{!"branch_weights", i32 1, i32 262}
!657 = distinct !{!657, !412}
!658 = !{!"function_entry_count", i64 38}
!659 = !{!"cse.c:gate_handle_cse"}
!660 = !{!"cse.c:rest_of_handle_cse"}
!661 = !{!"branch_weights", i32 39, i32 1}
!662 = !{i32 0, i32 3}
!663 = !{!"branch_weights", i32 1, i32 39}
!664 = !{!"branch_weights", i32 1561, i32 39}
!665 = !{!"cse.c:gate_handle_cse2"}
!666 = !{!"cse.c:rest_of_handle_cse2"}
!667 = !{!"branch_weights", i32 324, i32 418, i32 18}
!668 = !{!"branch_weights", i32 22, i32 1}
!669 = !{!"cse.c:gate_handle_cse_after_global_opts"}
!670 = !{!"function_entry_count", i64 2}
!671 = !{!"cse.c:rest_of_handle_cse_after_global_opts"}
!672 = !{!"branch_weights", i32 9, i32 4, i32 3}
!673 = !{!"function_entry_count", i64 5096247}
!674 = !{!"cse.c:get_cse_reg_info_1"}
!675 = !{!426, !410, i64 16}
!676 = !{!"function_entry_count", i64 506199}
!677 = !{!"cse.c:SET_BIT"}
!678 = !{!"branch_weights", i32 506200, i32 1}
!679 = !{!"function_entry_count", i64 4907948}
!680 = !{!"cse.c:VEC_edge_base_length"}
!681 = !{!"branch_weights", i32 1, i32 4907949}
!682 = !{!683, !410, i64 0}
!683 = !{!"VEC_edge_base", !410, i64 0, !410, i64 4, !406, i64 8}
!684 = !{!"function_entry_count", i64 3588940}
!685 = !{!"cse.c:VEC_edge_base_index"}
!686 = !{!"function_entry_count", i64 731004}
!687 = !{!"cse.c:single_pred_p"}
!688 = !{!513, !405, i64 0}
!689 = !{!"function_entry_count", i64 440059}
!690 = !{!"cse.c:single_succ_p"}
!691 = !{!"function_entry_count", i64 71537}
!692 = !{!"cse.c:single_succ_edge"}
!693 = !{!"branch_weights", i32 1, i32 71538}
!694 = !{!"cse.c:new_basic_block"}
!695 = !{!"branch_weights", i32 2995472, i32 1322098}
!696 = !{!409, !405, i64 16}
!697 = !{!"branch_weights", i32 1322098, i32 241197}
!698 = distinct !{!698, !412}
!699 = !{!"branch_weights", i32 134925, i32 4182644}
!700 = distinct !{!700, !412}
!701 = !{!"function_entry_count", i64 467501}
!702 = !{!"cse.c:bb_has_eh_pred"}
!703 = !{i64 0, i64 4, !416, i64 8, i64 8, !404}
!704 = !{i64 0, i64 8, !404}
!705 = !{!"branch_weights", i32 1, i32 467501}
!706 = !{!"branch_weights", i32 827604, i32 1}
!707 = !{!"branch_weights", i32 467501, i32 360103}
!708 = distinct !{!708, !412}
!709 = !{!"cse.c:df_get_artificial_defs"}
!710 = !{!711, !405, i64 0}
!711 = !{!"df_scan_bb_info", !405, i64 0, !405, i64 8}
!712 = !{!"function_entry_count", i64 1446916}
!713 = !{!"cse.c:invalidate"}
!714 = !{!"branch_weights", i32 1, i32 1234837, i32 1, i32 1, i32 1, i32 212081}
!715 = !{!"branch_weights", i32 -1814956360, i32 -818631021}
!716 = !{!"branch_weights", i32 514143, i32 720695}
!717 = !{!"branch_weights", i32 1, i32 720694}
!718 = !{!"branch_weights", i32 1, i32 0}
!719 = distinct !{!719, !412}
!720 = !{!"branch_weights", i32 408434, i32 312262}
!721 = !{!"branch_weights", i32 7084763, i32 2907590}
!722 = !{!"branch_weights", i32 1264438, i32 1643153}
!723 = !{!"branch_weights", i32 895939, i32 368500}
!724 = !{!"branch_weights", i32 -972334375, i32 -107641963}
!725 = !{!"branch_weights", i32 2907590, i32 0}
!726 = distinct !{!726, !412}
!727 = !{!"branch_weights", i32 312262, i32 9680091}
!728 = distinct !{!728, !412}
!729 = distinct !{!729, !412}
!730 = !{!"branch_weights", i32 212081, i32 1}
!731 = !{!"branch_weights", i32 4874014, i32 1912547}
!732 = !{!409, !406, i64 73}
!733 = !{!"branch_weights", i32 1606992, i32 305556}
!734 = !{!409, !405, i64 8}
!735 = !{!"branch_weights", i32 271243, i32 34314}
!736 = !{!737, !405, i64 8}
!737 = !{!"check_dependence_data", !410, i64 0, !405, i64 8, !405, i64 16}
!738 = !{!737, !405, i64 16}
!739 = !{!737, !410, i64 0}
!740 = !{!"branch_weights", i32 305446, i32 111}
!741 = !{!"branch_weights", i32 1912547, i32 0}
!742 = distinct !{!742, !412}
!743 = !{!"branch_weights", i32 212081, i32 6574480}
!744 = distinct !{!744, !412}
!745 = !{!"cse.c:flush_hash_table"}
!746 = distinct !{!746, !412}
!747 = distinct !{!747, !412}
!748 = !{!"function_entry_count", i64 1010131}
!749 = !{!"cse.c:cse_process_notes"}
!750 = !{!"branch_weights", i32 1010131, i32 2}
!751 = !{!"function_entry_count", i64 1742984}
!752 = !{!"cse.c:cse_insn"}
!753 = !{!"branch_weights", i32 182735, i32 1560251}
!754 = !{!"branch_weights", i32 182734, i32 1}
!755 = distinct !{!755, !412}
!756 = !{!"branch_weights", i32 4341, i32 -544215481, i32 120032118, i32 2231, i32 176283, i32 19355644}
!757 = !{!758, !405, i64 0}
!758 = !{!"set", !405, i64 0, !405, i64 8, !405, i64 16, !410, i64 24, !410, i64 28, !405, i64 32, !406, i64 40, !406, i64 41, !410, i64 42, !405, i64 48, !410, i64 56, !405, i64 64, !405, i64 72}
!759 = !{!"branch_weights", i32 1541, i32 -1703858207}
!760 = !{!"branch_weights", i32 174060, i32 1506395}
!761 = !{!"branch_weights", i32 53778, i32 1}
!762 = !{!"branch_weights", i32 53731, i32 53827}
!763 = !{!"branch_weights", i32 1, i32 429848, i32 4, i32 2, i32 1}
!764 = !{!"branch_weights", i32 53778, i32 53779}
!765 = distinct !{!765, !412}
!766 = !{!"branch_weights", i32 20587, i32 -2035409000, i32 -2037467727, i32 2017552, i32 20587}
!767 = !{!"branch_weights", i32 1, i32 53779}
!768 = !{!"branch_weights", i32 49, i32 53731}
!769 = !{!"branch_weights", i32 1, i32 49}
!770 = !{!"branch_weights", i32 1, i32 53731}
!771 = distinct !{!771, !412}
!772 = !{!"branch_weights", i32 79, i32 1}
!773 = !{!"branch_weights", i32 1, i32 79}
!774 = !{!"branch_weights", i32 918295, i32 641879}
!775 = !{!"branch_weights", i32 631536, i32 10344}
!776 = !{!"branch_weights", i32 10344, i32 1}
!777 = !{!"branch_weights", i32 1073741824, i32 1073741824}
!778 = !{!"branch_weights", i32 1, i32 1560173}
!779 = !{!"branch_weights", i32 -2021397202, i32 1685, i32 1685, i32 1685, i32 357676376}
!780 = distinct !{!780, !412}
!781 = !{!"branch_weights", i32 1560173, i32 0}
!782 = distinct !{!782, !412}
!783 = !{!"branch_weights", i32 568136, i32 992038}
!784 = !{!"branch_weights", i32 1549830, i32 10344}
!785 = !{!"branch_weights", i32 1, i32 10344}
!786 = !{!"branch_weights", i32 1, i32 -1}
!787 = !{!758, !405, i64 8}
!788 = !{!"branch_weights", i32 357757, i32 1202417}
!789 = !{!"branch_weights", i32 183910, i32 173848}
!790 = !{!758, !410, i64 24}
!791 = !{!758, !406, i64 41}
!792 = !{!758, !406, i64 40}
!793 = !{!"branch_weights", i32 80899, i32 276859}
!794 = !{!"branch_weights", i32 80823, i32 77}
!795 = !{!"branch_weights", i32 77, i32 1}
!796 = !{!"branch_weights", i32 1365056799, i32 782426849}
!797 = !{!758, !405, i64 16}
!798 = !{!"branch_weights", i32 58475, i32 2147425173}
!799 = !{!"branch_weights", i32 1, i32 27}
!800 = !{!409, !405, i64 48}
!801 = !{!"branch_weights", i32 27, i32 1}
!802 = !{!"branch_weights", i32 1560147, i32 1}
!803 = !{!"branch_weights", i32 1857298010, i32 290185638}
!804 = !{!"branch_weights", i32 1, i32 103453}
!805 = !{!409, !406, i64 74}
!806 = !{!"branch_weights", i32 137864, i32 30554}
!807 = !{!"branch_weights", i32 103453, i32 64964}
!808 = distinct !{!808, !412}
!809 = !{!"branch_weights", i32 161888, i32 1367733}
!810 = !{!"branch_weights", i32 22, i32 1367712}
!811 = !{!"branch_weights", i32 1, i32 22}
!812 = !{!"branch_weights", i32 2131283327, i32 16200321}
!813 = !{!"branch_weights", i32 1, i32 10318}
!814 = !{!"branch_weights", i32 1806509030, i32 340974618}
!815 = !{!"branch_weights", i32 1, i32 161888}
!816 = !{!758, !410, i64 56}
!817 = !{!758, !405, i64 48}
!818 = !{!758, !405, i64 64}
!819 = !{!"branch_weights", i32 58346682, i32 -1373869193}
!820 = !{!"branch_weights", i32 30554, i32 1}
!821 = !{!"branch_weights", i32 1403, i32 2147482245}
!822 = !{!"branch_weights", i32 192441, i32 1367733}
!823 = !{!"branch_weights", i32 13828, i32 178614}
!824 = !{!"branch_weights", i32 30022, i32 148593}
!825 = !{!409, !405, i64 56}
!826 = !{!"branch_weights", i32 29985, i32 38}
!827 = !{!"branch_weights", i32 9971, i32 3895}
!828 = !{!"branch_weights", i32 1, i32 3895}
!829 = !{!"branch_weights", i32 173653, i32 14895}
!830 = !{!"branch_weights", i32 173653, i32 1}
!831 = !{!"branch_weights", i32 1, i32 173653}
!832 = distinct !{!832, !412}
!833 = !{!834, !405, i64 0}
!834 = !{!"rtl_hooks", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !405, i64 32}
!835 = distinct !{!835, !412}
!836 = !{!"branch_weights", i32 2685353, i32 2144798295}
!837 = !{!"branch_weights", i32 22718, i32 1533562}
!838 = !{!"branch_weights", i32 22718, i32 1}
!839 = !{!"branch_weights", i32 1, i32 22718}
!840 = distinct !{!840, !412}
!841 = distinct !{!841, !412}
!842 = !{!843, !514, i64 1464}
!843 = !{!"gcc_target", !844, i64 0, !846, i64 368, !847, i64 664, !410, i64 744, !405, i64 752, !405, i64 760, !405, i64 768, !405, i64 776, !405, i64 784, !405, i64 792, !405, i64 800, !405, i64 808, !405, i64 816, !405, i64 824, !405, i64 832, !405, i64 840, !405, i64 848, !405, i64 856, !405, i64 864, !405, i64 872, !405, i64 880, !405, i64 888, !405, i64 896, !405, i64 904, !405, i64 912, !405, i64 920, !405, i64 928, !405, i64 936, !405, i64 944, !405, i64 952, !405, i64 960, !405, i64 968, !405, i64 976, !405, i64 984, !405, i64 992, !405, i64 1000, !405, i64 1008, !405, i64 1016, !405, i64 1024, !405, i64 1032, !405, i64 1040, !405, i64 1048, !405, i64 1056, !514, i64 1064, !514, i64 1072, !405, i64 1080, !405, i64 1088, !405, i64 1096, !405, i64 1104, !405, i64 1112, !405, i64 1120, !405, i64 1128, !405, i64 1136, !405, i64 1144, !405, i64 1152, !405, i64 1160, !405, i64 1168, !848, i64 1176, !405, i64 1232, !405, i64 1240, !405, i64 1248, !405, i64 1256, !405, i64 1264, !405, i64 1272, !405, i64 1280, !405, i64 1288, !405, i64 1296, !405, i64 1304, !405, i64 1312, !405, i64 1320, !405, i64 1328, !405, i64 1336, !405, i64 1344, !405, i64 1352, !405, i64 1360, !405, i64 1368, !405, i64 1376, !405, i64 1384, !405, i64 1392, !405, i64 1400, !405, i64 1408, !405, i64 1416, !405, i64 1424, !405, i64 1432, !405, i64 1440, !405, i64 1448, !405, i64 1456, !514, i64 1464, !849, i64 1472, !405, i64 1664, !405, i64 1672, !405, i64 1680, !405, i64 1688, !405, i64 1696, !405, i64 1704, !405, i64 1712, !405, i64 1720, !405, i64 1728, !405, i64 1736, !405, i64 1744, !405, i64 1752, !405, i64 1760, !405, i64 1768, !405, i64 1776, !850, i64 1784, !851, i64 1792, !852, i64 1896, !853, i64 1968, !405, i64 2016, !406, i64 2024, !406, i64 2025, !406, i64 2026, !406, i64 2027, !406, i64 2028, !406, i64 2029, !406, i64 2030, !406, i64 2031, !406, i64 2032, !406, i64 2033, !406, i64 2034, !406, i64 2035}
!844 = !{!"asm_out", !405, i64 0, !405, i64 8, !405, i64 16, !845, i64 24, !845, i64 56, !405, i64 88, !405, i64 96, !405, i64 104, !405, i64 112, !405, i64 120, !405, i64 128, !405, i64 136, !405, i64 144, !405, i64 152, !405, i64 160, !405, i64 168, !405, i64 176, !405, i64 184, !405, i64 192, !405, i64 200, !405, i64 208, !405, i64 216, !405, i64 224, !405, i64 232, !405, i64 240, !405, i64 248, !405, i64 256, !405, i64 264, !405, i64 272, !405, i64 280, !405, i64 288, !405, i64 296, !405, i64 304, !405, i64 312, !405, i64 320, !405, i64 328, !405, i64 336, !405, i64 344, !405, i64 352, !405, i64 360}
!845 = !{!"asm_int_op", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24}
!846 = !{!"sched", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !405, i64 32, !405, i64 40, !405, i64 48, !405, i64 56, !405, i64 64, !405, i64 72, !405, i64 80, !405, i64 88, !405, i64 96, !405, i64 104, !405, i64 112, !405, i64 120, !405, i64 128, !405, i64 136, !405, i64 144, !405, i64 152, !405, i64 160, !405, i64 168, !405, i64 176, !405, i64 184, !405, i64 192, !405, i64 200, !405, i64 208, !405, i64 216, !405, i64 224, !405, i64 232, !405, i64 240, !405, i64 248, !405, i64 256, !405, i64 264, !405, i64 272, !405, i64 280, !405, i64 288}
!847 = !{!"vectorize", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !405, i64 32, !405, i64 40, !405, i64 48, !405, i64 56, !405, i64 64, !405, i64 72}
!848 = !{!"addr_space", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !405, i64 32, !405, i64 40, !405, i64 48}
!849 = !{!"calls", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !405, i64 32, !405, i64 40, !405, i64 48, !405, i64 56, !405, i64 64, !405, i64 72, !405, i64 80, !405, i64 88, !405, i64 96, !405, i64 104, !405, i64 112, !405, i64 120, !405, i64 128, !405, i64 136, !405, i64 144, !405, i64 152, !405, i64 160, !405, i64 168, !405, i64 176, !405, i64 184}
!850 = !{!"c", !405, i64 0}
!851 = !{!"cxx", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !405, i64 32, !405, i64 40, !405, i64 48, !405, i64 56, !405, i64 64, !405, i64 72, !405, i64 80, !405, i64 88, !405, i64 96}
!852 = !{!"emutls", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !405, i64 32, !405, i64 40, !405, i64 48, !405, i64 56, !406, i64 64, !406, i64 65}
!853 = !{!"target_option_hooks", !405, i64 0, !405, i64 8, !405, i64 16, !405, i64 24, !405, i64 32, !405, i64 40}
!854 = !{!"branch_weights", i32 1560173, i32 1}
!855 = !{!"branch_weights", i32 1559950, i32 224}
!856 = !{!"branch_weights", i32 1426167, i32 134007}
!857 = !{!"branch_weights", i32 125187, i32 68011}
!858 = !{!"branch_weights", i32 1, i32 68011}
!859 = !{!"branch_weights", i32 1, i32 193197}
!860 = !{!"branch_weights", i32 654389105, i32 1493094543}
!861 = !{!"branch_weights", i32 134007, i32 320}
!862 = !{!"branch_weights", i32 1, i32 134007}
!863 = !{!"branch_weights", i32 58974, i32 218}
!864 = !{!"branch_weights", i32 218, i32 1}
!865 = !{!"branch_weights", i32 1, i32 218}
!866 = !{!"branch_weights", i32 58974, i32 1}
!867 = !{!"branch_weights", i32 58506, i32 469}
!868 = !{!"branch_weights", i32 239, i32 231}
!869 = !{!"branch_weights", i32 54221, i32 138977}
!870 = !{!"branch_weights", i32 43068, i32 11154}
!871 = !{!409, !405, i64 32}
!872 = !{!"branch_weights", i32 193197, i32 0}
!873 = distinct !{!873, !412}
!874 = !{!"branch_weights", i32 134007, i32 1426167}
!875 = !{!"branch_weights", i32 1426167, i32 1}
!876 = !{!"branch_weights", i32 255021, i32 1171147}
!877 = !{!"branch_weights", i32 10318, i32 1549856}
!878 = !{!"branch_weights", i32 10318, i32 1}
!879 = !{!"branch_weights", i32 1560167, i32 7}
!880 = !{!"branch_weights", i32 7, i32 1}
!881 = !{!"branch_weights", i32 1, i32 7}
!882 = !{!"branch_weights", i32 1545126, i32 15048}
!883 = !{!"branch_weights", i32 3895, i32 11154}
!884 = !{!"branch_weights", i32 3895, i32 1}
!885 = !{!"branch_weights", i32 1542, i32 -1889028170}
!886 = !{!"branch_weights", i32 1298759, i32 134683}
!887 = !{!"branch_weights", i32 102778, i32 31906}
!888 = !{!"branch_weights", i32 1, i32 1568124}
!889 = !{!"branch_weights", i32 134683, i32 0}
!890 = distinct !{!890, !412}
!891 = !{!"branch_weights", i32 1, i32 134683}
!892 = !{!409, !410, i64 64}
!893 = !{!409, !410, i64 68}
!894 = !{!"branch_weights", i32 1568118, i32 7}
!895 = !{!"branch_weights", i32 134683, i32 1433436}
!896 = !{!"branch_weights", i32 1426161, i32 7276}
!897 = !{!"branch_weights", i32 1426161, i32 1}
!898 = !{!"branch_weights", i32 7276, i32 134683}
!899 = !{!"branch_weights", i32 7276, i32 1}
!900 = !{!"branch_weights", i32 122729, i32 11955}
!901 = !{!"branch_weights", i32 11154, i32 802}
!902 = !{!"branch_weights", i32 80614, i32 1487511}
!903 = !{!"branch_weights", i32 1, i32 80614}
!904 = distinct !{!904, !412}
!905 = !{!"branch_weights", i32 1568124, i32 1}
!906 = !{!"branch_weights", i32 394776, i32 1173349}
!907 = !{!"branch_weights", i32 1, i32 394776}
!908 = !{!"branch_weights", i32 19657798, i32 -2085376145}
!909 = !{!"branch_weights", i32 191213584, i32 13829, i32 13828}
!910 = !{!"branch_weights", i32 7952, i32 1560173}
!911 = !{!"branch_weights", i32 953318, i32 606856}
!912 = !{!"branch_weights", i32 169679, i32 783640}
!913 = !{!"branch_weights", i32 162066, i32 7614}
!914 = !{!915, !410, i64 28}
!915 = !{!"qty_table_elem", !405, i64 0, !405, i64 8, !405, i64 16, !410, i64 24, !410, i64 28, !410, i64 32, !410, i64 36, !410, i64 38}
!916 = !{!"branch_weights", i32 162051, i32 16}
!917 = !{!"branch_weights", i32 12, i32 5}
!918 = !{!"branch_weights", i32 1, i32 12}
!919 = !{!"branch_weights", i32 1549436, i32 10738}
!920 = !{!"branch_weights", i32 10520, i32 219}
!921 = !{!"branch_weights", i32 10520, i32 1}
!922 = !{!"branch_weights", i32 586408695, i32 -127190621}
!923 = !{!"branch_weights", i32 163213, i32 29229}
!924 = !{!"branch_weights", i32 -1247250144, i32 20401, i32 282113670}
!925 = !{!"branch_weights", i32 1, i32 13828}
!926 = !{!"branch_weights", i32 10478, i32 152736}
!927 = !{!"branch_weights", i32 -758102947, i32 2266, i32 2266, i32 2266}
!928 = distinct !{!928, !412}
!929 = !{!758, !405, i64 32}
!930 = !{!"branch_weights", i32 212081, i32 1348093}
!931 = !{!"branch_weights", i32 1, i32 212081}
!932 = !{!"branch_weights", i32 514143, i32 439176}
!933 = !{!758, !410, i64 28}
!934 = !{!"branch_weights", i32 1, i32 953318}
!935 = !{!"branch_weights", i32 394776, i32 1165398}
!936 = !{!"branch_weights", i32 1165320, i32 394854}
!937 = !{!"branch_weights", i32 -136589188, i32 832152, i32 10531, i32 10532, i32 10532, i32 10533}
!938 = !{!"branch_weights", i32 1165320, i32 1}
!939 = !{!"branch_weights", i32 0, i32 1560173}
!940 = distinct !{!940, !412}
!941 = !{!"branch_weights", i32 2133245734, i32 14237914}
!942 = !{!"branch_weights", i32 2141878809, i32 5604839}
!943 = !{!"branch_weights", i32 20637, i32 106461124}
!944 = !{!"branch_weights", i32 10317, i32 1}
!945 = distinct !{!945, !412}
!946 = !{!"branch_weights", i32 394854, i32 1165320}
!947 = !{!"branch_weights", i32 991397, i32 173924}
!948 = !{!"branch_weights", i32 980931, i32 10467}
!949 = !{!"branch_weights", i32 1, i32 980931}
!950 = !{!"branch_weights", i32 163174, i32 817758}
!951 = !{!"branch_weights", i32 970614, i32 10318}
!952 = !{!"branch_weights", i32 857477, i32 123455}
!953 = !{!"branch_weights", i32 594176, i32 263302}
!954 = !{!"branch_weights", i32 81135, i32 182168}
!955 = !{!"branch_weights", i32 81135, i32 1}
!956 = !{!"branch_weights", i32 798959, i32 181973}
!957 = !{!"branch_weights", i32 -612561668, i32 20235}
!958 = !{!"branch_weights", i32 568691, i32 10553}
!959 = distinct !{!959, !412}
!960 = !{!"branch_weights", i32 212081, i32 953240}
!961 = !{!"branch_weights", i32 182735, i32 29347}
!962 = !{!"branch_weights", i32 1, i32 182735}
!963 = !{!"branch_weights", i32 116849, i32 65887}
!964 = !{!"branch_weights", i32 21407, i32 95443}
!965 = !{!"branch_weights", i32 95443, i32 1}
!966 = !{!"branch_weights", i32 1, i32 95443}
!967 = !{!758, !405, i64 72}
!968 = distinct !{!968, !412}
!969 = !{!"branch_weights", i32 -120957268, i32 45683}
!970 = !{!"branch_weights", i32 1560173, i32 182812}
!971 = !{!"branch_weights", i32 670, i32 -1739384344, i32 2680, i32 568571898, i32 1340, i32 670}
!972 = distinct !{!972, !412}
!973 = !{!"branch_weights", i32 1165476, i32 577510}
!974 = !{!"branch_weights", i32 1, i32 1165476}
!975 = !{!"branch_weights", i32 182735, i32 1}
!976 = !{!"branch_weights", i32 953240, i32 212081}
!977 = !{!"branch_weights", i32 439098, i32 514143}
!978 = !{!"branch_weights", i32 953239, i32 1}
!979 = !{!"branch_weights", i32 43001, i32 910240}
!980 = distinct !{!980, !412}
!981 = distinct !{!981, !412}
!982 = !{!"branch_weights", i32 173924, i32 991397}
!983 = !{!"branch_weights", i32 14087, i32 977311}
!984 = !{!409, !405, i64 40}
!985 = !{!"branch_weights", i32 14087, i32 10468}
!986 = distinct !{!986, !412}
!987 = !{!"branch_weights", i32 3620, i32 14087}
!988 = !{!"branch_weights", i32 3620, i32 10467}
!989 = distinct !{!989, !412}
!990 = distinct !{!990, !412}
!991 = !{!"branch_weights", i32 1, i32 1165320}
!992 = !{!"branch_weights", i32 177543, i32 987778}
!993 = !{!"branch_weights", i32 -249032703, i32 4096, i32 4094}
!994 = !{!"branch_weights", i32 258261639, i32 944611004, i32 944611004}
!995 = !{!"branch_weights", i32 1, i32 775698}
!996 = !{!"branch_weights", i32 775698, i32 1}
!997 = !{!"branch_weights", i32 336601, i32 439098}
!998 = !{!"branch_weights", i32 987778, i32 1}
!999 = !{!"branch_weights", i32 1, i32 987778}
!1000 = distinct !{!1000, !412}
!1001 = distinct !{!1001, !412}
!1002 = distinct !{!1002, !412}
!1003 = !{!"branch_weights", i32 1560173, i32 182813}
!1004 = !{!"branch_weights", i32 953240, i32 1}
!1005 = !{!"branch_weights", i32 185299, i32 767942}
!1006 = !{!"branch_weights", i32 11452, i32 173848}
!1007 = !{!"branch_weights", i32 11452, i32 1}
!1008 = !{!"branch_weights", i32 11305, i32 148}
!1009 = !{!551, !405, i64 0}
!1010 = !{!"branch_weights", i32 1, i32 1008}
!1011 = !{!"branch_weights", i32 116407585, i32 1347914, i32 1215046}
!1012 = !{!"branch_weights", i32 1008, i32 9406}
!1013 = !{!"branch_weights", i32 10297, i32 1009}
!1014 = !{!"branch_weights", i32 9328, i32 970}
!1015 = !{!"branch_weights", i32 2, i32 9327}
!1016 = !{!"branch_weights", i32 2, i32 1}
!1017 = !{!"function_entry_count", i64 5785155}
!1018 = !{!"cse.c:check_for_label_ref"}
!1019 = !{!"branch_weights", i32 117413445, i32 -1641991086}
!1020 = !{!"branch_weights", i32 245137, i32 49}
!1021 = !{!"branch_weights", i32 1, i32 245137}
!1022 = !{!"branch_weights", i32 49, i32 1}
!1023 = !{!"cse.c:have_eh_succ_edges"}
!1024 = distinct !{!1024, !412}
!1025 = !{!"cse.c:RESET_BIT"}
!1026 = !{!"function_entry_count", i64 332577}
!1027 = !{!"cse.c:record_jump_equiv"}
!1028 = !{!"branch_weights", i32 264883, i32 67696}
!1029 = !{!"branch_weights", i32 67696, i32 264883}
!1030 = !{!"branch_weights", i32 1, i32 264883}
!1031 = !{!"function_entry_count", i64 616416}
!1032 = !{!"cse.c:ei_start_1"}
!1033 = !{!"function_entry_count", i64 1743853}
!1034 = !{!"cse.c:ei_cond"}
!1035 = !{!"branch_weights", i32 1127438, i32 616417}
!1036 = !{!"function_entry_count", i64 1127437}
!1037 = !{!"cse.c:ei_next"}
!1038 = !{!"branch_weights", i32 1, i32 1127438}
!1039 = !{!"branch_weights", i32 1127438, i32 1}
!1040 = !{!1041, !410, i64 0}
!1041 = !{!"", !410, i64 0, !405, i64 8}
!1042 = !{!"cse.c:ei_end_p"}
!1043 = !{!"branch_weights", i32 1, i32 1743854}
!1044 = !{!"cse.c:ei_edge"}
!1045 = !{!"function_entry_count", i64 7997454}
!1046 = !{!"cse.c:ei_container"}
!1047 = !{!"branch_weights", i32 1, i32 7997455}
!1048 = !{!"cse.c:df_scan_get_bb_info"}
!1049 = !{!1050, !410, i64 16}
!1050 = !{!"dataflow", !405, i64 0, !405, i64 8, !410, i64 16, !405, i64 24, !405, i64 32, !405, i64 40, !410, i64 48, !406, i64 52, !406, i64 53, !406, i64 54}
!1051 = !{!1050, !405, i64 8}
!1052 = !{!"function_entry_count", i64 5002653}
!1053 = !{!"cse.c:canon_hash"}
!1054 = !{!"function_entry_count", i64 9650270}
!1055 = !{!"cse.c:delete_reg_equiv"}
!1056 = !{!"branch_weights", i32 350249, i32 9300023}
!1057 = !{!1058, !410, i64 4}
!1058 = !{!"reg_eqv_elem", !410, i64 0, !410, i64 4}
!1059 = !{!1058, !410, i64 0}
!1060 = !{!"branch_weights", i32 349591, i32 659}
!1061 = !{!915, !410, i64 32}
!1062 = !{!"branch_weights", i32 349805, i32 445}
!1063 = !{!"function_entry_count", i64 523812}
!1064 = !{!"cse.c:remove_pseudo_from_table"}
!1065 = !{!"branch_weights", i32 487436, i32 36377}
!1066 = !{!"branch_weights", i32 36377, i32 0}
!1067 = distinct !{!1067, !412}
!1068 = !{!"function_entry_count", i64 1058727}
!1069 = !{!"cse.c:remove_from_table"}
!1070 = !{!"branch_weights", i32 944912, i32 113817}
!1071 = !{!"branch_weights", i32 407451, i32 651278}
!1072 = !{!"branch_weights", i32 95672, i32 0}
!1073 = distinct !{!1073, !412}
!1074 = !{!409, !405, i64 24}
!1075 = !{!"branch_weights", i32 958023, i32 100706}
!1076 = !{!"branch_weights", i32 1014078, i32 44651}
!1077 = !{!"branch_weights", i32 1014078, i32 1}
!1078 = distinct !{!1078, !412, !1079, !1080}
!1079 = !{!"llvm.loop.isvectorized", i32 1}
!1080 = !{!"llvm.loop.unroll.runtime.disable"}
!1081 = !{!"branch_weights", i32 1058728, i32 1}
!1082 = distinct !{!1082, !412}
!1083 = !{!"function_entry_count", i64 968424}
!1084 = !{!"cse.c:check_dependence"}
!1085 = !{!"branch_weights", i32 1, i32 968425}
!1086 = !{!"branch_weights", i32 305556, i32 662870}
!1087 = !{!"function_entry_count", i64 560188}
!1088 = !{!"cse.c:lookup_for_remove"}
!1089 = !{!"branch_weights", i32 560189, i32 1}
!1090 = !{!"branch_weights", i32 341926, i32 181887}
!1091 = !{!"branch_weights", i32 111070, i32 70818}
!1092 = !{!"branch_weights", i32 36377, i32 74694}
!1093 = !{!"branch_weights", i32 181887, i32 0}
!1094 = distinct !{!1094, !412}
!1095 = distinct !{!1095, !412}
!1096 = !{!"cse.c:cse_rtx_varies_p"}
!1097 = !{!915, !405, i64 0}
!1098 = !{!"cse.c:cse_process_notes_1"}
!1099 = !{!"branch_weights", i32 10326, i32 10352, i32 1, i32 3029, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3043, i32 968795, i32 28, i32 1, i32 1, i32 7276, i32 7290}
!1100 = !{!"branch_weights", i32 1, i32 10325}
!1101 = !{!"branch_weights", i32 10344, i32 958479}
!1102 = !{!"branch_weights", i32 783108, i32 185715}
!1103 = !{!"branch_weights", i32 1, i32 7276}
!1104 = !{!"branch_weights", i32 7077, i32 214}
!1105 = !{!"branch_weights", i32 7077, i32 1}
!1106 = !{!"branch_weights", i32 20651, i32 1}
!1107 = !{!"branch_weights", i32 10325, i32 10326}
!1108 = distinct !{!1108, !412}
!1109 = !{!"function_entry_count", i64 10918534}
!1110 = !{!"cse.c:canon_reg"}
!1111 = !{!"branch_weights", i32 1, i32 10918535}
!1112 = !{!"branch_weights", i32 3724572, i32 789455, i32 1, i32 49683, i32 2378149, i32 1, i32 1, i32 1, i32 543904, i32 789599, i32 1, i32 1, i32 2643179}
!1113 = !{!"branch_weights", i32 1434355, i32 1208825}
!1114 = !{!"branch_weights", i32 675237, i32 533589}
!1115 = !{!"branch_weights", i32 675237, i32 1}
!1116 = !{!"branch_weights", i32 1, i32 675237}
!1117 = !{!"branch_weights", i32 1, i32 3724571}
!1118 = !{!"branch_weights", i32 353053030, i32 -1228438885, i32 415}
!1119 = distinct !{!1119, !412}
!1120 = !{!"branch_weights", i32 4511450, i32 3724571}
!1121 = distinct !{!1121, !412}
!1122 = !{!"function_entry_count", i64 7385696}
!1123 = !{!"cse.c:validate_canon_reg"}
!1124 = !{!"branch_weights", i32 1, i32 7385697}
!1125 = !{!"branch_weights", i32 -965589844, i32 901}
!1126 = !{!"function_entry_count", i64 4961119}
!1127 = !{!"cse.c:fold_rtx"}
!1128 = !{!"branch_weights", i32 1, i32 4961120}
!1129 = !{!"branch_weights", i32 1335667, i32 530201, i32 1, i32 13828, i32 1275814, i32 1, i32 1, i32 1, i32 4939, i32 24, i32 1223192, i32 394728, i32 1, i32 1, i32 182735}
!1130 = !{!"branch_weights", i32 529984, i32 218}
!1131 = distinct !{!1131, !412}
!1132 = !{!"branch_weights", i32 1, i32 1335666}
!1133 = !{!"branch_weights", i32 3064796, i32 1}
!1134 = !{!"branch_weights", i32 790761, i32 126620, i32 807761, i32 25534, i32 1, i32 919397, i32 1, i32 394728, i32 1, i32 1, i32 1}
!1135 = !{!"branch_weights", i32 1, i32 1335667, i32 1333238, i32 395893}
!1136 = !{!"branch_weights", i32 -330948294, i32 23757776}
!1137 = !{!"branch_weights", i32 1, i32 18259}
!1138 = !{!"branch_weights", i32 18259, i32 1}
!1139 = !{!"branch_weights", i32 3046403, i32 18394}
!1140 = !{!"branch_weights", i32 1, i32 18394}
!1141 = !{!"branch_weights", i32 1335666, i32 1729130}
!1142 = distinct !{!1142, !412}
!1143 = !{!"branch_weights", i32 2117909799, i32 29573849}
!1144 = !{!"branch_weights", i32 18394, i32 1}
!1145 = !{!"branch_weights", i32 1, i32 2430, i32 10238, i32 427017, i32 464719, i32 35375, i32 1, i32 395893, i32 1}
!1146 = !{!"branch_weights", i32 591565, i32 1437505381}
!1147 = !{!"branch_weights", i32 2430, i32 1}
!1148 = !{!"branch_weights", i32 39654, i32 -1404466472}
!1149 = !{!"branch_weights", i32 437254, i32 1}
!1150 = !{!"branch_weights", i32 13664, i32 -1307606976}
!1151 = !{!"branch_weights", i32 1, i32 437254}
!1152 = !{!"branch_weights", i32 1166, i32 436089}
!1153 = !{!"branch_weights", i32 436089, i32 1}
!1154 = !{!"branch_weights", i32 140961, i32 2147342687}
!1155 = !{!"branch_weights", i32 312764, i32 123298}
!1156 = !{!"branch_weights", i32 312764, i32 1}
!1157 = !{!"branch_weights", i32 181744, i32 131021}
!1158 = !{!"branch_weights", i32 1, i32 131021}
!1159 = !{!"branch_weights", i32 1, i32 131020}
!1160 = !{!"branch_weights", i32 31, i32 221428}
!1161 = !{!"branch_weights", i32 221394, i32 35}
!1162 = !{!"branch_weights", i32 1, i32 35}
!1163 = !{!"branch_weights", i32 131020, i32 90438}
!1164 = distinct !{!1164, !412}
!1165 = !{!"branch_weights", i32 2147467258, i32 16390}
!1166 = !{!"branch_weights", i32 312792, i32 123298}
!1167 = !{!"branch_weights", i32 29, i32 312764}
!1168 = !{!"branch_weights", i32 1, i32 29}
!1169 = !{!"branch_weights", i32 312792, i32 1}
!1170 = !{!"branch_weights", i32 181772, i32 131021}
!1171 = !{!"branch_weights", i32 1, i32 22976}
!1172 = !{!"branch_weights", i32 306831, i32 5962}
!1173 = !{!"branch_weights", i32 -264391249, i32 13135, i32 13135, i32 13135, i32 13136}
!1174 = !{!"branch_weights", i32 282728, i32 24104}
!1175 = !{!915, !405, i64 16}
!1176 = !{!"branch_weights", i32 30065, i32 1}
!1177 = !{!"branch_weights", i32 1, i32 30065}
!1178 = !{!915, !410, i64 24}
!1179 = !{!"branch_weights", i32 1450165254, i32 697318394}
!1180 = !{!"branch_weights", i32 141290, i32 316}
!1181 = !{!"branch_weights", i32 316, i32 1}
!1182 = !{!"branch_weights", i32 1, i32 436089}
!1183 = !{!"branch_weights", i32 142809, i32 2147340839}
!1184 = !{!"branch_weights", i32 439100, i32 8984, i32 22, i32 1, i32 1, i32 1, i32 1, i32 620, i32 25614, i32 25, i32 136, i32 68, i32 1, i32 25534}
!1185 = !{!"branch_weights", i32 1354, i32 7631}
!1186 = !{!"branch_weights", i32 1, i32 7631}
!1187 = !{!"branch_weights", i32 8984, i32 1}
!1188 = !{!"branch_weights", i32 7631, i32 1}
!1189 = !{!"branch_weights", i32 8943104, i32 38291344}
!1190 = !{!"branch_weights", i32 1, i32 6188}
!1191 = distinct !{!1191, !412}
!1192 = !{!"branch_weights", i32 1094422722, i32 1053060926}
!1193 = !{!"branch_weights", i32 30386, i32 1}
!1194 = !{!"branch_weights", i32 4624, i32 137}
!1195 = !{!"branch_weights", i32 30170, i32 217}
!1196 = !{!"branch_weights", i32 1, i32 217}
!1197 = !{!"branch_weights", i32 217, i32 1}
!1198 = !{!"branch_weights", i32 474560, i32 25534}
!1199 = !{!"branch_weights", i32 27555, i32 472539}
!1200 = !{!"branch_weights", i32 395893, i32 1}
!1201 = !{!"branch_weights", i32 1, i32 395893}
!1202 = !{!"branch_weights", i32 394728, i32 1166}
!1203 = !{!"branch_weights", i32 1335526, i32 142}
!1204 = !{!"function_entry_count", i64 5131659}
!1205 = !{!"cse.c:lookup"}
!1206 = !{!"branch_weights", i32 1192407, i32 2307183}
!1207 = !{!"branch_weights", i32 1949933, i32 357251}
!1208 = !{!"branch_weights", i32 -1930639368, i32 718978549}
!1209 = !{!"branch_weights", i32 317863, i32 136831}
!1210 = !{!"branch_weights", i32 2307183, i32 0}
!1211 = distinct !{!1211, !412}
!1212 = !{!"function_entry_count", i64 210395}
!1213 = !{!"cse.c:merge_equiv_classes"}
!1214 = !{!"branch_weights", i32 26299, i32 -1528325645}
!1215 = !{!"branch_weights", i32 9671, i32 212601}
!1216 = !{!"branch_weights", i32 1, i32 212601}
!1217 = !{!"branch_weights", i32 9671, i32 1}
!1218 = !{!"branch_weights", i32 128517908, i32 -1470018221}
!1219 = !{!"branch_weights", i32 210395, i32 11876}
!1220 = distinct !{!1220, !412}
!1221 = !{!"function_entry_count", i64 13864}
!1222 = !{!"cse.c:use_related_value"}
!1223 = !{!"branch_weights", i32 13296, i32 570}
!1224 = !{!"branch_weights", i32 1, i32 570}
!1225 = !{!"branch_weights", i32 13296, i32 1}
!1226 = !{!"branch_weights", i32 1, i32 13296}
!1227 = !{!"branch_weights", i32 1538486397, i32 608997251}
!1228 = !{!"branch_weights", i32 4683, i32 570}
!1229 = !{!"branch_weights", i32 1, i32 788}
!1230 = !{!"branch_weights", i32 3895, i32 4683}
!1231 = !{!"branch_weights", i32 788, i32 7789}
!1232 = distinct !{!1232, !412}
!1233 = !{!"branch_weights", i32 408089, i32 835396}
!1234 = !{!"cse.c:try_const_anchors"}
!1235 = !{!"function_entry_count", i64 2849106}
!1236 = !{!"cse.c:notreg_cost"}
!1237 = !{!"branch_weights", i32 35, i32 2849073}
!1238 = !{!"function_entry_count", i64 4062403}
!1239 = !{!"cse.c:approx_reg_cost"}
!1240 = !{!"branch_weights", i32 2969681, i32 1092724}
!1241 = !{!"function_entry_count", i64 5593701}
!1242 = !{!"cse.c:preferable"}
!1243 = !{!"branch_weights", i32 346216, i32 5247487}
!1244 = !{!"branch_weights", i32 677, i32 5246811}
!1245 = !{!"branch_weights", i32 4286238, i32 960574}
!1246 = !{!"branch_weights", i32 221496, i32 1085294}
!1247 = !{!"branch_weights", i32 439098, i32 646197}
!1248 = !{!"branch_weights", i32 42527, i32 603671}
!1249 = !{!"branch_weights", i32 346216, i32 478951}
!1250 = !{!"function_entry_count", i64 2582581}
!1251 = !{!"cse.c:insert_regs"}
!1252 = !{!"branch_weights", i32 -1030515995, i32 -1038262857, i32 2525}
!1253 = !{!"branch_weights", i32 145647, i32 1144111}
!1254 = !{!"branch_weights", i32 -1412601734, i32 -1997533740}
!1255 = !{!"branch_weights", i32 358738, i32 785374}
!1256 = !{!"branch_weights", i32 1, i32 769997}
!1257 = !{!"branch_weights", i32 15377, i32 799292}
!1258 = !{!"branch_weights", i32 15377, i32 1}
!1259 = !{!"branch_weights", i32 769997, i32 44671}
!1260 = distinct !{!1260, !412}
!1261 = !{!"branch_weights", i32 362326, i32 766410}
!1262 = !{!"branch_weights", i32 18082, i32 344245}
!1263 = !{!"branch_weights", i32 1, i32 18082}
!1264 = !{!"function_entry_count", i64 1326277}
!1265 = !{!"cse.c:rehash_using_reg"}
!1266 = !{!"branch_weights", i32 1, i32 1326278}
!1267 = !{!"branch_weights", i32 1144111, i32 182168}
!1268 = !{!"branch_weights", i32 1120176, i32 23936}
!1269 = !{!"branch_weights", i32 23936, i32 1}
!1270 = !{!"branch_weights", i32 435732, i32 330189}
!1271 = !{!"branch_weights", i32 269413, i32 60777}
!1272 = !{!"branch_weights", i32 1, i32 60777}
!1273 = !{!"branch_weights", i32 1, i32 40600}
!1274 = !{!"branch_weights", i32 33713, i32 6888}
!1275 = !{!"branch_weights", i32 38343, i32 2258}
!1276 = !{!"branch_weights", i32 26349, i32 14252}
!1277 = !{!"branch_weights", i32 330189, i32 0}
!1278 = distinct !{!1278, !412}
!1279 = !{!"branch_weights", i32 23936, i32 741985}
!1280 = distinct !{!1280, !412}
!1281 = !{!"function_entry_count", i64 2622020}
!1282 = !{!"cse.c:insert"}
!1283 = !{!"branch_weights", i32 1107590, i32 1514432}
!1284 = !{!"cse.c:invalidate_from_clobbers"}
!1285 = !{!"branch_weights", i32 -1419710985, i32 1702, i32 91539053}
!1286 = !{!"branch_weights", i32 1, i32 859696, i32 8, i32 4, i32 2, i32 1}
!1287 = !{!"branch_weights", i32 53779, i32 53778}
!1288 = distinct !{!1288, !412}
!1289 = !{!"function_entry_count", i64 182734}
!1290 = !{!"cse.c:invalidate_memory"}
!1291 = !{!"branch_weights", i32 4039541, i32 1807948}
!1292 = !{!"branch_weights", i32 1354082, i32 453867}
!1293 = !{!"branch_weights", i32 1807948, i32 0}
!1294 = distinct !{!1294, !412}
!1295 = !{!"branch_weights", i32 182735, i32 5664754}
!1296 = distinct !{!1296, !412}
!1297 = !{!"cse.c:invalidate_for_call"}
!1298 = !{!"branch_weights", i32 1279139, i32 8405765}
!1299 = !{!"branch_weights", i32 8405765, i32 1}
!1300 = !{!"branch_weights", i32 182735, i32 9502168}
!1301 = distinct !{!1301, !412}
!1302 = !{!"branch_weights", i32 31931, i32 150805}
!1303 = !{!"branch_weights", i32 3549718, i32 1276011}
!1304 = !{!"branch_weights", i32 738236, i32 537776}
!1305 = !{!"branch_weights", i32 437729, i32 300508}
!1306 = !{!"branch_weights", i32 150836, i32 1}
!1307 = !{!"branch_weights", i32 150836, i32 149672}
!1308 = distinct !{!1308, !412}
!1309 = !{!"branch_weights", i32 150837, i32 149672}
!1310 = !{!"branch_weights", i32 1276011, i32 0}
!1311 = distinct !{!1311, !412}
!1312 = !{!"branch_weights", i32 150805, i32 4674924}
!1313 = distinct !{!1313, !412}
!1314 = !{!"function_entry_count", i64 3294904}
!1315 = !{!"cse.c:mention_regs"}
!1316 = !{!"branch_weights", i32 1, i32 3294905}
!1317 = !{!"branch_weights", i32 -850384883, i32 1062242784, i32 40649681, i32 697959895}
!1318 = !{!"branch_weights", i32 275851, i32 391395}
!1319 = !{!"branch_weights", i32 667244, i32 1}
!1320 = !{!"branch_weights", i32 188011, i32 479235}
!1321 = !{!"branch_weights", i32 188011, i32 1}
!1322 = distinct !{!1322, !412}
!1323 = !{!"branch_weights", i32 25534, i32 1}
!1324 = !{!"branch_weights", i32 10135, i32 15400}
!1325 = !{!"branch_weights", i32 10135, i32 1}
!1326 = !{!"branch_weights", i32 42527, i32 2121181}
!1327 = !{!"branch_weights", i32 357465, i32 123484}
!1328 = !{!"branch_weights", i32 175298, i32 182168}
!1329 = !{!"branch_weights", i32 1, i32 182168}
!1330 = !{!"branch_weights", i32 29, i32 480920}
!1331 = !{!"branch_weights", i32 29, i32 1}
!1332 = !{!"branch_weights", i32 1, i32 2602127}
!1333 = !{!"branch_weights", i32 -1072134211, i32 -2049497951, i32 1254}
!1334 = distinct !{!1334, !412}
!1335 = !{!"branch_weights", i32 1756989, i32 2602127}
!1336 = distinct !{!1336, !412}
!1337 = !{!"function_entry_count", i64 43000}
!1338 = !{!"cse.c:remove_invalid_refs"}
!1339 = !{!"branch_weights", i32 958800, i32 417201}
!1340 = !{!"branch_weights", i32 126754, i32 290448}
!1341 = !{!"branch_weights", i32 247380, i32 43069}
!1342 = !{!"branch_weights", i32 417201, i32 0}
!1343 = distinct !{!1343, !412}
!1344 = !{!"branch_weights", i32 43001, i32 1333000}
!1345 = distinct !{!1345, !412}
!1346 = !{!"cse.c:insert_const_anchors"}
!1347 = !{!"function_entry_count", i64 3301294}
!1348 = !{!"cse.c:equiv_constant"}
!1349 = !{!"branch_weights", i32 1146644, i32 2154652}
!1350 = !{!"branch_weights", i32 959901, i32 186744}
!1351 = !{!"branch_weights", i32 941643, i32 18259}
!1352 = !{!"branch_weights", i32 117523, i32 2147366125}
!1353 = !{!"branch_weights", i32 576501, i32 2724795}
!1354 = !{!"branch_weights", i32 -1765534743, i32 33653799, i32 1028193444}
!1355 = !{!"branch_weights", i32 1, i32 25534}
!1356 = !{!"branch_weights", i32 1, i32 780117}
!1357 = !{!"branch_weights", i32 776800, i32 1}
!1358 = !{!"branch_weights", i32 1, i32 3100}
!1359 = !{!"branch_weights", i32 6201, i32 218}
!1360 = !{!"branch_weights", i32 3100, i32 3318}
!1361 = distinct !{!1361, !412}
!1362 = !{!"function_entry_count", i64 769830}
!1363 = !{!"cse.c:find_comparison_args"}
!1364 = !{!"branch_weights", i32 520915, i32 1}
!1365 = !{!"branch_weights", i32 1, i32 1017581}
!1366 = !{!"branch_weights", i32 980782, i32 36800}
!1367 = !{!"branch_weights", i32 210952, i32 769831}
!1368 = !{!"branch_weights", i32 309592824, i32 1837890824}
!1369 = !{!"branch_weights", i32 870881, i32 1}
!1370 = !{!"branch_weights", i32 8, i32 919340}
!1371 = !{!"branch_weights", i32 768666, i32 150675}
!1372 = !{!"branch_weights", i32 1888691884, i32 -544561801, i32 1888591790}
!1373 = !{!"branch_weights", i32 1, i32 75069}
!1374 = !{!"branch_weights", i32 1, i32 75337}
!1375 = !{!"branch_weights", i32 1, i32 150675}
!1376 = !{!"branch_weights", i32 248915, i32 670432}
!1377 = distinct !{!1377, !412}
!1378 = !{!"branch_weights", i32 1, i32 768666}
!1379 = !{!"branch_weights", i32 496666, i32 520915}
!1380 = !{!"function_entry_count", i64 2148793}
!1381 = !{!"cse.c:safe_hash"}
!1382 = !{!"function_entry_count", i64 248588}
!1383 = !{!"cse.c:lookup_as_function"}
!1384 = !{!"branch_weights", i32 151521, i32 97069}
!1385 = !{!"branch_weights", i32 151521, i32 1}
!1386 = !{!"branch_weights", i32 159692, i32 1}
!1387 = !{!"branch_weights", i32 1, i32 88366}
!1388 = !{!"branch_weights", i32 532, i32 149069}
!1389 = !{!"branch_weights", i32 1, i32 532}
!1390 = !{!"branch_weights", i32 88366, i32 61234}
!1391 = distinct !{!1391, !412}
!1392 = !{!"cse.c:compute_const_anchors"}
!1393 = !{!"cse.c:find_reg_offset_for_const"}
!1394 = distinct !{!1394, !412}
!1395 = !{!"function_entry_count", i64 7982017}
!1396 = !{!"cse.c:approx_reg_cost_1"}
!1397 = !{!"branch_weights", i32 1, i32 7982018}
!1398 = !{!"branch_weights", i32 2911250, i32 5070769}
!1399 = !{!"branch_weights", i32 1454, i32 -538161730}
!1400 = !{!"branch_weights", i32 1092724, i32 1489683}
!1401 = !{!"branch_weights", i32 173848, i32 918877}
!1402 = !{!"branch_weights", i32 173848, i32 1}
!1403 = !{!"function_entry_count", i64 15376}
!1404 = !{!"cse.c:make_regs_eqv"}
!1405 = !{!"branch_weights", i32 1, i32 15377}
!1406 = !{!"branch_weights", i32 7526, i32 7852}
!1407 = !{!"branch_weights", i32 7795, i32 58}
!1408 = !{!"branch_weights", i32 7411, i32 173}
!1409 = !{!"branch_weights", i32 137, i32 37}
!1410 = !{!"branch_weights", i32 1, i32 7446}
!1411 = !{!"branch_weights", i32 1, i32 14895}
!1412 = !{!"branch_weights", i32 1, i32 7447}
!1413 = !{!"branch_weights", i32 0, i32 1}
!1414 = distinct !{!1414, !412}
!1415 = !{!"function_entry_count", i64 1128734}
!1416 = !{!"cse.c:make_new_qty"}
!1417 = !{!"branch_weights", i32 1128735, i32 1}
!1418 = !{!"cse.c:insert_with_costs"}
!1419 = !{!"branch_weights", i32 1107590, i32 1}
!1420 = !{!"branch_weights", i32 534540, i32 573051}
!1421 = !{!"branch_weights", i32 56, i32 2621966}
!1422 = !{!"branch_weights", i32 552791, i32 2069231}
!1423 = !{!"branch_weights", i32 2244471, i32 377551}
!1424 = !{!"branch_weights", i32 1401657, i32 1220365}
!1425 = !{!"branch_weights", i32 385854, i32 834512}
!1426 = !{!"branch_weights", i32 385853, i32 25721}
!1427 = distinct !{!1427, !412}
!1428 = !{!"branch_weights", i32 780238, i32 61055}
!1429 = !{!"branch_weights", i32 6781, i32 834512}
!1430 = distinct !{!1430, !412}
!1431 = !{!"branch_weights", i32 370234439, i32 1777249209}
!1432 = !{!"branch_weights", i32 -1532274702, i32 -1312769806}
!1433 = !{!915, !405, i64 8}
!1434 = !{!"branch_weights", i32 1517869097, i32 629614551}
!1435 = !{!"branch_weights", i32 770972, i32 14403}
!1436 = !{!"branch_weights", i32 770972, i32 1}
!1437 = !{!"branch_weights", i32 1063813, i32 158479}
!1438 = !{!"branch_weights", i32 1, i32 158479}
!1439 = !{!"branch_weights", i32 612494, i32 609797}
!1440 = distinct !{!1440, !412}
!1441 = !{!"branch_weights", i32 336619, i32 1405214}
!1442 = !{!"branch_weights", i32 322217, i32 14403}
!1443 = !{!"branch_weights", i32 14403, i32 1}
!1444 = !{!"branch_weights", i32 13296, i32 2608726}
!1445 = !{!"branch_weights", i32 9527, i32 1}
!1446 = !{!"branch_weights", i32 12933, i32 364}
!1447 = !{!"branch_weights", i32 13296, i32 366}
!1448 = distinct !{!1448, !412}
!1449 = !{!"function_entry_count", i64 534539}
!1450 = !{!"cse.c:add_to_hard_reg_set"}
!1451 = !{!"branch_weights", i32 1, i32 534540}
!1452 = distinct !{!1452, !412}
!1453 = !{!"function_entry_count", i64 2098266}
!1454 = !{!"cse.c:fixed_base_plus_p"}
!1455 = !{!"branch_weights", i32 931441, i32 1136438, i32 30390}
!1456 = !{!"branch_weights", i32 4439, i32 -1772523297}
!1457 = !{!"branch_weights", i32 39, i32 1136400}
!1458 = !{!"branch_weights", i32 29037, i32 1354}
!1459 = !{!"cse.c:remove_invalid_subreg_refs"}
!1460 = distinct !{!1460, !412}
!1461 = distinct !{!1461, !412}
!1462 = !{!"cse.c:insert_const_anchor"}
!1463 = !{!"cse.c:record_jump_cond"}
!1464 = !{!"branch_weights", i32 210396, i32 122183}
!1465 = !{!"branch_weights", i32 1, i32 210396}
!1466 = !{!"branch_weights", i32 2083911397, i32 63572251}
!1467 = !{!"branch_weights", i32 1, i32 118566}
!1468 = !{!"branch_weights", i32 218659, i32 113920}
!1469 = !{!"branch_weights", i32 218659, i32 1}
!1470 = !{!"branch_weights", i32 46527534, i32 -1306129442}
!1471 = !{!"branch_weights", i32 337677, i32 1695482644}
!1472 = !{!"branch_weights", i32 -730619417, i32 16939, i32 16939, i32 16939, i32 16941}
!1473 = !{!"branch_weights", i32 1, i32 122183}
!1474 = !{!"branch_weights", i32 348682211, i32 -1300634176}
!1475 = !{!"branch_weights", i32 73721, i32 35721}
!1476 = !{!"branch_weights", i32 73721, i32 1}
!1477 = !{!"branch_weights", i32 1, i32 109441}
!1478 = !{!"branch_weights", i32 173104, i32 37293}
!1479 = !{!"branch_weights", i32 173104, i32 1}
!1480 = !{!"branch_weights", i32 170984, i32 39413}
!1481 = !{!"branch_weights", i32 170984, i32 1}
!1482 = !{!"cse.c:record_jump_cond_subreg"}
!1483 = !{!"function_entry_count", i64 4334868}
!1484 = !{!"cse.c:set_live_p"}
!1485 = !{!"branch_weights", i32 4324429, i32 10441}
!1486 = !{!"branch_weights", i32 4309630, i32 14800}
!1487 = !{!"branch_weights", i32 14800, i32 1}
!1488 = !{!"function_entry_count", i64 4324428}
!1489 = !{!"cse.c:is_dead_reg"}
!1490 = !{!"branch_weights", i32 2635114, i32 1689316}
!1491 = !{!"branch_weights", i32 1465829, i32 1169286}
!1492 = !{!"cse.c:cse_condition_code_reg"}
!1493 = !{!843, !405, i64 1296}
!1494 = !{!500, !405, i64 0}
!1495 = !{!513, !405, i64 56}
!1496 = !{!"branch_weights", i32 1, i32 155}
!1497 = !{!"branch_weights", i32 148203, i32 5436}
!1498 = !{!"branch_weights", i32 24, i32 148180}
!1499 = !{!"branch_weights", i32 1, i32 24}
!1500 = !{!"branch_weights", i32 24, i32 1}
!1501 = !{!"branch_weights", i32 68, i32 148180}
!1502 = !{!"branch_weights", i32 -1253879125, i32 1336336}
!1503 = !{!"branch_weights", i32 148113, i32 1}
!1504 = !{!"branch_weights", i32 127, i32 18975489}
!1505 = distinct !{!1505, !412}
!1506 = !{!"branch_weights", i32 148046, i32 68}
!1507 = !{!"branch_weights", i32 68, i32 1}
!1508 = !{!"branch_weights", i32 1, i32 68}
!1509 = !{!"branch_weights", i32 155, i32 614397}
!1510 = distinct !{!1510, !412}
!1511 = !{!"function_entry_count", i64 148915}
!1512 = !{!"cse.c:cse_cc_succs"}
!1513 = !{!"branch_weights", i32 1, i32 148915}
!1514 = !{!"branch_weights", i32 299835, i32 1}
!1515 = !{!"branch_weights", i32 106172, i32 193664}
!1516 = !{!"branch_weights", i32 53086, i32 -1476843900}
!1517 = !{!"branch_weights", i32 1, i32 803}
!1518 = !{!"branch_weights", i32 -623202936, i32 2000112692}
!1519 = !{!"branch_weights", i32 204308, i32 50}
!1520 = !{!"branch_weights", i32 -1855521780, i32 11939}
!1521 = !{!"branch_weights", i32 195567, i32 1}
!1522 = !{!"branch_weights", i32 132153, i32 70014}
!1523 = !{!"branch_weights", i32 39897, i32 92257}
!1524 = !{!"branch_weights", i32 39897, i32 1}
!1525 = !{!"branch_weights", i32 1554028048, i32 37822356}
!1526 = !{!"branch_weights", i32 684, i32 265}
!1527 = !{!"branch_weights", i32 198, i32 68}
!1528 = !{!843, !405, i64 1304}
!1529 = !{!"branch_weights", i32 33554432, i32 -2013265920}
!1530 = !{!"branch_weights", i32 803, i32 314875}
!1531 = distinct !{!1531, !412}
!1532 = !{!"branch_weights", i32 804, i32 1}
!1533 = !{!"branch_weights", i32 148915, i32 150920}
!1534 = distinct !{!1534, !412}
!1535 = !{!"branch_weights", i32 2146503036, i32 980612}
!1536 = !{!"branch_weights", i32 1, i32 135}
!1537 = !{!"branch_weights", i32 135, i32 1}
!1538 = distinct !{!1538, !412}
!1539 = !{!"function_entry_count", i64 201}
!1540 = !{!"cse.c:cse_change_cc_mode_insn"}
!1541 = !{!"branch_weights", i32 7491151, i32 18225}
!1542 = !{!1543, !405, i64 0}
!1543 = !{!"change_cc_mode_args", !405, i64 0, !405, i64 8}
!1544 = !{!1543, !405, i64 8}
!1545 = !{!"branch_weights", i32 1, i32 202}
!1546 = !{!"function_entry_count", i64 134}
!1547 = !{!"cse.c:cse_change_cc_mode_insns"}
!1548 = !{!"branch_weights", i32 1, i32 134}
!1549 = !{!"branch_weights", i32 5012687, i32 18225}
!1550 = !{!"branch_weights", i32 134, i32 1}
!1551 = distinct !{!1551, !412}
!1552 = !{!"function_entry_count", i64 2144}
!1553 = !{!"cse.c:cse_change_cc_mode"}
!1554 = !{!"branch_weights", i32 202, i32 1944}
!1555 = !{!"branch_weights", i32 403, i32 1542}
!1556 = !{!"branch_weights", i32 336, i32 68}
!1557 = !{!"branch_weights", i32 1, i32 336}
