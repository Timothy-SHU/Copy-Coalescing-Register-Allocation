; ModuleID = 'cse.c'
source_filename = "cse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
@cse_reg_info_table = internal unnamed_addr global ptr null, align 8
@cse_reg_info_timestamp = internal unnamed_addr global i32 0, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
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
@cse_reg_info_table_size = internal unnamed_addr global i32 0, align 4
@cse_reg_info_table_first_uninitialized = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c";; Following path with %d sets: \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
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
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Deleted %i trivially dead insns\0A\00", align 1
@pass_cse = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.9, ptr @gate_handle_cse, ptr @rest_of_handle_cse, ptr null, ptr null, i32 0, i32 121, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"cse1\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_rerun_cse_after_loop = external local_unnamed_addr global i32, align 4
@flag_gcse = external local_unnamed_addr global i32, align 4
@cse_not_expected = external local_unnamed_addr global i32, align 4
@pass_cse2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.10, ptr @gate_handle_cse2, ptr @rest_of_handle_cse2, ptr null, ptr null, i32 0, i32 137, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"cse2\00", align 1
@pass_cse_after_global_opts = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.11, ptr @gate_handle_cse_after_global_opts, ptr @rest_of_handle_cse_after_global_opts, ptr null, ptr null, i32 0, i32 121, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"cse_local\00", align 1
@flag_rerun_cse_after_global_opts = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_class(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !425 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !426
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %2) #21
  %4 = load ptr, ptr @stderr, align 8, !tbaa !426
  %5 = load ptr, ptr %0, align 8, !tbaa !430
  tail call void @print_rtl(ptr noundef %4, ptr noundef %5) #22
  %6 = load ptr, ptr @stderr, align 8, !tbaa !426
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 3, i64 1, ptr %6) #21
  %8 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !426
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %18, %11 ], [ %9, %1 ]
  %13 = load ptr, ptr @stderr, align 8, !tbaa !426
  %14 = load ptr, ptr %12, align 8, !tbaa !430
  tail call void @print_rtl(ptr noundef %13, ptr noundef %14) #22
  %15 = load ptr, ptr @stderr, align 8, !tbaa !426
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  %17 = getelementptr inbounds %struct.table_elt, ptr %12, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !426
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11, !llvm.loop !433

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
define dso_local i32 @hash_rtx_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 !prof !435 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  %9 = icmp eq ptr %0, null
  br i1 %9, label %336, label %10, !prof !436

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
  br i1 %11, label %28, label %20, !prof !437

20:                                               ; preds = %17
  %21 = call i32 %5(ptr noundef nonnull %18, i32 noundef %15, ptr noundef nonnull %8, ptr noundef nonnull %7) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %8, align 8, !tbaa !426
  %25 = load i32, ptr %7, align 4, !tbaa !438
  %26 = call i32 @hash_rtx_cb(ptr noundef %24, i32 noundef %25, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef nonnull %5) #24
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
  ], !prof !439

32:                                               ; preds = %28
  %33 = call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #24
  %34 = load i32, ptr @reload_completed, align 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %12, i1 true, i1 %35
  %37 = icmp ugt i32 %33, 52
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %67, label %39, !prof !440

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
  br i1 %49, label %67, label %50, !prof !441

50:                                               ; preds = %39
  %51 = zext nneg i32 %33 to i64
  %52 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !442
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %66, !prof !443

55:                                               ; preds = %50
  %56 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %51
  %57 = load i8, ptr %56, align 1, !tbaa !442
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %67, !prof !444

59:                                               ; preds = %55
  %60 = lshr i32 %29, 16
  %61 = and i32 %60, 255
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !442
  %65 = icmp eq i8 %64, 1
  br i1 %65, label %67, label %66, !prof !445

66:                                               ; preds = %50, %59
  store i32 1, ptr %2, align 4, !tbaa !438
  br label %336

67:                                               ; preds = %39, %55, %59, %32
  %68 = add i32 %19, 4736
  %69 = icmp eq i8 %4, 0
  br i1 %69, label %74, label %70, !prof !446

70:                                               ; preds = %67
  %71 = call fastcc ptr @get_cse_reg_info(i32 noundef %33) #24
  %72 = getelementptr inbounds %struct.cse_reg_info, ptr %71, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !447
  br label %74

74:                                               ; preds = %67, %70
  %75 = phi i32 [ %73, %70 ], [ %33, %67 ]
  %76 = add i32 %68, %75
  br label %336

77:                                               ; preds = %28
  %78 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !442
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %278, !prof !449

83:                                               ; preds = %77
  %84 = call fastcc i32 @rhs_regno(ptr noundef nonnull %79) #24
  %85 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load i32, ptr %85, align 8, !tbaa !442
  %87 = lshr i32 %86, 2
  %88 = add i32 %19, 4992
  %89 = add i32 %88, %84
  %90 = add i32 %89, %87
  br label %336

91:                                               ; preds = %28
  %92 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !442
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
  br i1 %101, label %105, label %103, !prof !450

103:                                              ; preds = %98
  %104 = call i32 @real_hash(ptr noundef nonnull %102) #22
  br label %112

105:                                              ; preds = %98
  %106 = load i64, ptr %102, align 8, !tbaa !442
  %107 = trunc i64 %106 to i32
  %108 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load i64, ptr %108, align 8, !tbaa !442
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
  %121 = call i32 @fixed_hash(ptr noundef nonnull %120) #22
  %122 = add i32 %19, 31
  %123 = add i32 %122, %119
  %124 = add i32 %123, %121
  br label %336

125:                                              ; preds = %28
  %126 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !442
  %128 = load i32, ptr %127, align 8, !tbaa !451
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %336

130:                                              ; preds = %125
  %131 = zext nneg i32 %128 to i64
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi i64 [ 0, %130 ], [ %143, %132 ]
  %134 = phi i32 [ %19, %130 ], [ %142, %132 ]
  %135 = load ptr, ptr %126, align 8, !tbaa !442
  %136 = getelementptr inbounds %struct.rtvec_def, ptr %135, i64 0, i32 1, i64 %133
  %137 = load ptr, ptr %136, align 8, !tbaa !426
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = call i32 @hash_rtx_cb(ptr noundef nonnull %137, i32 noundef %140, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #24
  %142 = add i32 %141, %134
  %143 = add nuw nsw i64 %133, 1
  %144 = icmp eq i64 %143, %131
  br i1 %144, label %336, label %132, !llvm.loop !453

145:                                              ; preds = %28
  %146 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !442
  %148 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 1, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !442
  %150 = add i32 %19, 5632
  %151 = add i32 %150, %149
  br label %336

152:                                              ; preds = %28
  %153 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !442
  %155 = load i8, ptr %154, align 1, !tbaa !442
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %167, label %157, !prof !454

157:                                              ; preds = %152, %157
  %158 = phi i8 [ %165, %157 ], [ %155, %152 ]
  %159 = phi ptr [ %161, %157 ], [ %154, %152 ]
  %160 = phi i32 [ %164, %157 ], [ 0, %152 ]
  %161 = getelementptr inbounds i8, ptr %159, i64 1
  %162 = zext i8 %158 to i32
  %163 = mul i32 %160, 129
  %164 = add i32 %163, %162
  %165 = load i8, ptr %161, align 1, !tbaa !442
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %157, !prof !455, !llvm.loop !456

167:                                              ; preds = %157, %152
  %168 = phi i32 [ 0, %152 ], [ %164, %157 ]
  %169 = add i32 %19, 5760
  %170 = add i32 %169, %168
  br label %336

171:                                              ; preds = %28
  br i1 %12, label %179, label %172, !prof !457

172:                                              ; preds = %171
  %173 = and i32 %29, 134217728
  %174 = icmp ne i32 %173, 0
  %175 = and i32 %29, 16711680
  %176 = icmp eq i32 %175, 65536
  %177 = or i1 %174, %176
  br i1 %177, label %178, label %179, !prof !458

178:                                              ; preds = %172
  store i32 1, ptr %2, align 4, !tbaa !438
  br label %336

179:                                              ; preds = %172, %171
  %180 = icmp ne ptr %3, null
  %181 = and i32 %29, 67108864
  %182 = icmp eq i32 %181, 0
  %183 = and i1 %180, %182
  br i1 %183, label %184, label %185, !prof !459

184:                                              ; preds = %179
  store i32 1, ptr %3, align 4, !tbaa !438
  br label %185

185:                                              ; preds = %184, %179
  %186 = add i32 %19, 43
  %187 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  br label %188

188:                                              ; preds = %303, %185, %205
  %189 = phi i32 [ %206, %205 ], [ %186, %185 ], [ %294, %303 ]
  %190 = phi ptr [ %207, %205 ], [ %187, %185 ], [ %290, %303 ]
  %191 = load ptr, ptr %190, align 8, !tbaa !442
  %192 = icmp eq ptr %191, null
  br i1 %192, label %336, label %17, !prof !460

193:                                              ; preds = %28
  %194 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !442
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 134283263
  %198 = icmp eq i32 %197, 43
  br i1 %198, label %199, label %278

199:                                              ; preds = %193
  %200 = icmp ne ptr %3, null
  %201 = and i32 %196, 67108864
  %202 = icmp eq i32 %201, 0
  %203 = and i1 %200, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  store i32 1, ptr %3, align 4, !tbaa !438
  br label %205

205:                                              ; preds = %204, %199
  %206 = add i32 %19, 67
  %207 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  br label %188

208:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  br i1 %12, label %336, label %209, !prof !461

209:                                              ; preds = %208
  store i32 1, ptr %2, align 4, !tbaa !438
  br label %336

210:                                              ; preds = %28
  %211 = and i32 %29, 134217728
  %212 = icmp eq i32 %211, 0
  %213 = or i1 %12, %212
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  store i32 1, ptr %2, align 4, !tbaa !438
  br label %336

215:                                              ; preds = %210
  %216 = lshr i32 %29, 16
  %217 = and i32 %216, 255
  %218 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !442
  %220 = call fastcc i32 @hash_rtx_string(ptr noundef %219) #24
  %221 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !442
  %223 = call fastcc i32 @hash_rtx_string(ptr noundef %222) #24
  %224 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %225 = load i32, ptr %224, align 8, !tbaa !442
  %226 = add i32 %19, 17
  %227 = add i32 %226, %217
  %228 = add i32 %227, %220
  %229 = add i32 %228, %223
  %230 = add i32 %229, %225
  %231 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !442
  %233 = load i32, ptr %232, align 8, !tbaa !451
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %336, label %235

235:                                              ; preds = %215
  %236 = icmp sgt i32 %233, 1
  %237 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 2
  br i1 %236, label %240, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %237, align 8, !tbaa !442
  br label %263

240:                                              ; preds = %235, %240
  %241 = phi i64 [ %258, %240 ], [ 1, %235 ]
  %242 = phi ptr [ %259, %240 ], [ %232, %235 ]
  %243 = phi i32 [ %257, %240 ], [ %230, %235 ]
  %244 = getelementptr inbounds %struct.rtvec_def, ptr %242, i64 0, i32 1, i64 %241
  %245 = load ptr, ptr %244, align 8, !tbaa !426
  %246 = load i32, ptr %245, align 8
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = call i32 @hash_rtx_cb(ptr noundef nonnull %245, i32 noundef %248, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #24
  %250 = load ptr, ptr %237, align 8, !tbaa !442
  %251 = getelementptr inbounds %struct.rtvec_def, ptr %250, i64 0, i32 1, i64 %241
  %252 = load ptr, ptr %251, align 8, !tbaa !426
  %253 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !442
  %255 = call fastcc i32 @hash_rtx_string(ptr noundef %254) #24
  %256 = add i32 %249, %243
  %257 = add i32 %256, %255
  %258 = add nuw nsw i64 %241, 1
  %259 = load ptr, ptr %231, align 8, !tbaa !442
  %260 = load i32, ptr %259, align 8, !tbaa !451
  %261 = sext i32 %260 to i64
  %262 = icmp slt i64 %258, %261
  br i1 %262, label %240, label %263, !llvm.loop !462

263:                                              ; preds = %240, %238
  %264 = phi ptr [ %239, %238 ], [ %250, %240 ]
  %265 = phi i32 [ %230, %238 ], [ %257, %240 ]
  %266 = phi ptr [ %232, %238 ], [ %259, %240 ]
  %267 = getelementptr inbounds %struct.rtvec_def, ptr %264, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !426
  %269 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !442
  %271 = call fastcc i32 @hash_rtx_string(ptr noundef %270) #24
  %272 = add i32 %271, %265
  %273 = getelementptr inbounds %struct.rtvec_def, ptr %266, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !426
  %275 = load i32, ptr %274, align 8
  %276 = lshr i32 %275, 16
  %277 = and i32 %276, 255
  br label %13

278:                                              ; preds = %28, %193, %77
  %279 = zext nneg i32 %30 to i64
  %280 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !442
  %282 = lshr i32 %29, 16
  %283 = and i32 %282, 255
  %284 = add i32 %30, %19
  %285 = add i32 %284, %283
  %286 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %279
  %287 = load ptr, ptr %286, align 8, !tbaa !426
  %288 = icmp eq i8 %281, 0
  br i1 %288, label %336, label %289, !prof !436

289:                                              ; preds = %278
  %290 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %291 = zext i8 %281 to i64
  br label %292

292:                                              ; preds = %289, %333
  %293 = phi i64 [ %291, %289 ], [ %295, %333 ]
  %294 = phi i32 [ %285, %289 ], [ %334, %333 ]
  %295 = add nsw i64 %293, -1
  %296 = getelementptr inbounds i8, ptr %287, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !442
  switch i8 %297, label %332 [
    i8 101, label %303
    i8 69, label %298
    i8 115, label %323
    i8 105, label %328
    i8 48, label %333
    i8 116, label %333
  ], !prof !463

298:                                              ; preds = %292
  %299 = getelementptr inbounds [1 x %union.rtunion_def], ptr %290, i64 0, i64 %295
  %300 = load ptr, ptr %299, align 8, !tbaa !442
  %301 = load i32, ptr %300, align 8, !tbaa !451
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %310, label %333

303:                                              ; preds = %292
  %304 = icmp eq i64 %295, 0
  br i1 %304, label %188, label %305, !prof !464

305:                                              ; preds = %303
  %306 = getelementptr inbounds [1 x %union.rtunion_def], ptr %290, i64 0, i64 %295
  %307 = load ptr, ptr %306, align 8, !tbaa !442
  %308 = call i32 @hash_rtx_cb(ptr noundef %307, i32 noundef 0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #24
  %309 = add i32 %308, %294
  br label %333

310:                                              ; preds = %298, %310
  %311 = phi i64 [ %318, %310 ], [ 0, %298 ]
  %312 = phi ptr [ %319, %310 ], [ %300, %298 ]
  %313 = phi i32 [ %317, %310 ], [ %294, %298 ]
  %314 = getelementptr inbounds %struct.rtvec_def, ptr %312, i64 0, i32 1, i64 %311
  %315 = load ptr, ptr %314, align 8, !tbaa !426
  %316 = call i32 @hash_rtx_cb(ptr noundef %315, i32 noundef 0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #24
  %317 = add i32 %316, %313
  %318 = add nuw nsw i64 %311, 1
  %319 = load ptr, ptr %299, align 8, !tbaa !442
  %320 = load i32, ptr %319, align 8, !tbaa !451
  %321 = sext i32 %320 to i64
  %322 = icmp slt i64 %318, %321
  br i1 %322, label %310, label %333, !llvm.loop !465

323:                                              ; preds = %292
  %324 = getelementptr inbounds [1 x %union.rtunion_def], ptr %290, i64 0, i64 %295
  %325 = load ptr, ptr %324, align 8, !tbaa !442
  %326 = call fastcc i32 @hash_rtx_string(ptr noundef %325) #24
  %327 = add i32 %326, %294
  br label %333

328:                                              ; preds = %292
  %329 = getelementptr inbounds [1 x %union.rtunion_def], ptr %290, i64 0, i64 %295
  %330 = load i32, ptr %329, align 8, !tbaa !442
  %331 = add i32 %330, %294
  br label %333

332:                                              ; preds = %292
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2545, ptr noundef nonnull @.str.4) #22
  br label %333

333:                                              ; preds = %310, %298, %305, %323, %328, %332, %292, %292
  %334 = phi i32 [ %294, %332 ], [ %294, %292 ], [ %294, %292 ], [ %331, %328 ], [ %327, %323 ], [ %309, %305 ], [ %294, %298 ], [ %317, %310 ]
  %335 = icmp sgt i64 %293, 1
  br i1 %335, label %292, label %336, !prof !466, !llvm.loop !467

336:                                              ; preds = %215, %188, %278, %333, %132, %6, %125, %66, %208, %74, %214, %209, %178, %167, %145, %117, %112, %91, %83, %23
  %337 = phi i32 [ %27, %23 ], [ 0, %214 ], [ 0, %209 ], [ 0, %178 ], [ %170, %167 ], [ %151, %145 ], [ %124, %117 ], [ %116, %112 ], [ %97, %91 ], [ %90, %83 ], [ %76, %74 ], [ 0, %66 ], [ %19, %208 ], [ %19, %125 ], [ 0, %6 ], [ %142, %132 ], [ %334, %333 ], [ %285, %278 ], [ %189, %188 ], [ %230, %215 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  ret i32 %337
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !468 !PGOFuncName !469 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !442
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @get_cse_reg_info(i32 noundef %0) unnamed_addr #5 !prof !470 !PGOFuncName !471 {
  %2 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !426
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds %struct.cse_reg_info, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !472
  %6 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !438
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %9, label %8, !prof !473

8:                                                ; preds = %1
  tail call fastcc void @get_cse_reg_info_1(i32 noundef %0) #24
  br label %9

9:                                                ; preds = %8, %1
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @real_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @fixed_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @hash_rtx_string(ptr noundef readonly %0) unnamed_addr #6 !prof !425 !PGOFuncName !474 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !442
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %6
  %7 = phi i8 [ %13, %6 ], [ %4, %3 ]
  %8 = phi ptr [ %10, %6 ], [ %0, %3 ]
  %9 = phi i32 [ %12, %6 ], [ 0, %3 ]
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = zext i8 %7 to i32
  %12 = add i32 %9, %11
  %13 = load i8, ptr %10, align 1, !tbaa !442
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !475

15:                                               ; preds = %6, %3, %1
  %16 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %12, %6 ]
  ret i32 %16
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @get_cse_reg_info_1(i32 noundef %0) unnamed_addr #7 !prof !476 !PGOFuncName !477 {
  %2 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !438
  %3 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !426
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4
  store i32 %2, ptr %5, align 4, !tbaa !472
  %6 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 2
  store i32 1, ptr %6, align 4, !tbaa !478
  %7 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 3
  store i32 -1, ptr %7, align 4, !tbaa !479
  %8 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 4
  store i32 -1, ptr %8, align 4, !tbaa !480
  %9 = xor i32 %0, -1
  %10 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !447
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !prof !481 {
  %6 = tail call i32 @hash_rtx_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef null) #24
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @exp_equiv_p(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !482 {
  %5 = icmp ne i32 %2, 0
  %6 = icmp ne ptr %0, %1
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %278, !prof !483

8:                                                ; preds = %4, %136
  %9 = phi ptr [ %139, %136 ], [ %1, %4 ]
  %10 = phi ptr [ %138, %136 ], [ %0, %4 ]
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %9, null
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %16, !prof !484

14:                                               ; preds = %8
  %15 = icmp eq ptr %10, %9
  br label %278

16:                                               ; preds = %8
  %17 = load i32, ptr %10, align 8
  %18 = and i32 %17, 65535
  %19 = load i32, ptr %9, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %278, !prof !485

22:                                               ; preds = %16
  %23 = xor i32 %19, %17
  %24 = and i32 %23, 16711680
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %278, !prof !486

26:                                               ; preds = %22
  %27 = icmp eq i32 %18, 43
  br i1 %27, label %28, label %48, !prof !487

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !442
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32, !prof !488

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %30, i64 0, i32 5
  %34 = load i8, ptr %33, align 8, !tbaa !489
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %28, %32
  %37 = phi i32 [ %35, %32 ], [ 0, %28 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !442
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41, !prof !491

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %39, i64 0, i32 5
  %43 = load i8, ptr %42, align 8, !tbaa !489
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %36, %41
  %46 = phi i32 [ %44, %41 ], [ 0, %36 ]
  %47 = icmp eq i32 %37, %46
  br i1 %47, label %48, label %278, !prof !492

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
  ], !prof !493

50:                                               ; preds = %48, %48, %48, %48, %48
  %51 = icmp eq ptr %10, %9
  br label %278

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !442
  %55 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !442
  %57 = icmp eq ptr %54, %56
  br label %278

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !442
  %61 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !442
  %63 = icmp eq ptr %60, %62
  br label %278

64:                                               ; preds = %48
  %65 = icmp eq i8 %3, 0
  br i1 %65, label %70, label %66, !prof !494

66:                                               ; preds = %64
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #24
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #24
  %69 = icmp eq i32 %67, %68
  br label %278

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #24
  %72 = icmp ult i32 %71, 53
  br i1 %72, label %73, label %77, !prof !495

73:                                               ; preds = %70
  %74 = lshr i32 %19, 16
  %75 = and i32 %74, 255
  %76 = tail call fastcc i32 @end_hard_regno(i32 noundef %75, i32 noundef %71) #24
  br label %79

77:                                               ; preds = %70
  %78 = add i32 %71, 1
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i32 [ %76, %73 ], [ %78, %77 ]
  %81 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #24
  %82 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %81) #24
  %83 = getelementptr inbounds %struct.cse_reg_info, ptr %82, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !447
  %85 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %71) #24
  %86 = getelementptr inbounds %struct.cse_reg_info, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !447
  %88 = icmp eq i32 %84, %87
  %89 = and i1 %5, %88
  br i1 %89, label %90, label %278, !prof !496

90:                                               ; preds = %79
  %91 = icmp ult i32 %71, %80
  br i1 %91, label %92, label %278, !prof !497

92:                                               ; preds = %90, %92
  %93 = phi i32 [ %101, %92 ], [ %71, %90 ]
  %94 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %93) #24
  %95 = getelementptr inbounds %struct.cse_reg_info, ptr %94, i64 0, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !479
  %97 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %93) #24
  %98 = getelementptr inbounds %struct.cse_reg_info, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !478
  %100 = icmp eq i32 %96, %99
  %101 = add i32 %93, 1
  %102 = icmp ne i32 %101, %80
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %92, label %278, !prof !498, !llvm.loop !499

104:                                              ; preds = %48
  %105 = icmp eq i8 %3, 0
  br i1 %105, label %207, label %106, !prof !500

106:                                              ; preds = %104
  %107 = or i32 %19, %17
  %108 = and i32 %107, 134217728
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %278, !prof !501

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !442
  %113 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !442
  %115 = icmp eq ptr %112, %114
  br i1 %115, label %207, label %278, !prof !502

116:                                              ; preds = %48, %48, %48, %48, %48, %48, %48
  %117 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !442
  %119 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !442
  %121 = tail call i32 @exp_equiv_p(ptr noundef %118, ptr noundef %120, i32 noundef %2, i8 noundef zeroext %3) #24, !range !503
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123, !prof !504

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !442
  %126 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !442
  %128 = tail call i32 @exp_equiv_p(ptr noundef %125, ptr noundef %127, i32 noundef %2, i8 noundef zeroext %3) #24, !range !503
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %278, !prof !505

130:                                              ; preds = %123, %116
  %131 = load ptr, ptr %117, align 8, !tbaa !442
  %132 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !442
  %134 = tail call i32 @exp_equiv_p(ptr noundef %131, ptr noundef %133, i32 noundef %2, i8 noundef zeroext %3) #24, !range !503
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %278, label %136, !prof !506

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !442
  %139 = load ptr, ptr %119, align 8, !tbaa !442
  %140 = icmp ne ptr %138, %139
  %141 = or i1 %5, %140
  br i1 %141, label %8, label %278, !prof !507

142:                                              ; preds = %48
  %143 = or i32 %19, %17
  %144 = and i32 %143, 134217728
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %278

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !442
  %149 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !442
  %151 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %148, ptr noundef nonnull dereferenceable(1) %150) #24
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %278

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !442
  %156 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !442
  %158 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(1) %157) #24
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %278

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %162 = load i32, ptr %161, align 8, !tbaa !442
  %163 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %164 = load i32, ptr %163, align 8, !tbaa !442
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %278

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !442
  %169 = load i32, ptr %168, align 8, !tbaa !451
  %170 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !442
  %172 = load i32, ptr %171, align 8, !tbaa !451
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
  %186 = load ptr, ptr %167, align 8, !tbaa !442
  %187 = getelementptr inbounds %struct.rtvec_def, ptr %186, i64 0, i32 1, i64 %182
  %188 = load ptr, ptr %187, align 8, !tbaa !426
  %189 = load ptr, ptr %170, align 8, !tbaa !442
  %190 = getelementptr inbounds %struct.rtvec_def, ptr %189, i64 0, i32 1, i64 %182
  %191 = load ptr, ptr %190, align 8, !tbaa !426
  %192 = tail call i32 @exp_equiv_p(ptr noundef %188, ptr noundef %191, i32 noundef %2, i8 noundef zeroext %3) #24, !range !503
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %278, label %194

194:                                              ; preds = %185
  %195 = load ptr, ptr %177, align 8, !tbaa !442
  %196 = getelementptr inbounds %struct.rtvec_def, ptr %195, i64 0, i32 1, i64 %182
  %197 = load ptr, ptr %196, align 8, !tbaa !426
  %198 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !442
  %200 = load ptr, ptr %178, align 8, !tbaa !442
  %201 = getelementptr inbounds %struct.rtvec_def, ptr %200, i64 0, i32 1, i64 %182
  %202 = load ptr, ptr %201, align 8, !tbaa !426
  %203 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !442
  %205 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %199, ptr noundef nonnull dereferenceable(1) %204) #24
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %180, label %278, !llvm.loop !508

207:                                              ; preds = %48, %104, %110
  %208 = zext nneg i32 %18 to i64
  %209 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !426
  %211 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %208
  %212 = load i8, ptr %211, align 1, !tbaa !442
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %278, label %214, !prof !509

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %216 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %217 = zext i8 %212 to i64
  br label %218

218:                                              ; preds = %214, %276
  %219 = phi i64 [ %217, %214 ], [ %220, %276 ]
  %220 = add nsw i64 %219, -1
  %221 = getelementptr inbounds i8, ptr %210, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !442
  switch i8 %222, label %275 [
    i8 101, label %223
    i8 69, label %230
    i8 115, label %256
    i8 105, label %263
    i8 119, label %269
    i8 48, label %276
    i8 116, label %276
  ], !prof !510

223:                                              ; preds = %218
  %224 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %225 = load ptr, ptr %224, align 8, !tbaa !442
  %226 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %227 = load ptr, ptr %226, align 8, !tbaa !442
  %228 = tail call i32 @exp_equiv_p(ptr noundef %225, ptr noundef %227, i32 noundef %2, i8 noundef zeroext %3) #24, !range !503
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %278, label %276, !prof !511

230:                                              ; preds = %218
  %231 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %232 = load ptr, ptr %231, align 8, !tbaa !442
  %233 = load i32, ptr %232, align 8, !tbaa !451
  %234 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %235 = load ptr, ptr %234, align 8, !tbaa !442
  %236 = load i32, ptr %235, align 8, !tbaa !451
  %237 = icmp eq i32 %233, %236
  br i1 %237, label %238, label %278

238:                                              ; preds = %230
  %239 = icmp sgt i32 %233, 0
  br i1 %239, label %246, label %276

240:                                              ; preds = %246
  %241 = add nuw nsw i64 %247, 1
  %242 = load ptr, ptr %231, align 8, !tbaa !442
  %243 = load i32, ptr %242, align 8, !tbaa !451
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %241, %244
  br i1 %245, label %246, label %276, !llvm.loop !512

246:                                              ; preds = %238, %240
  %247 = phi i64 [ %241, %240 ], [ 0, %238 ]
  %248 = phi ptr [ %242, %240 ], [ %232, %238 ]
  %249 = getelementptr inbounds %struct.rtvec_def, ptr %248, i64 0, i32 1, i64 %247
  %250 = load ptr, ptr %249, align 8, !tbaa !426
  %251 = load ptr, ptr %234, align 8, !tbaa !442
  %252 = getelementptr inbounds %struct.rtvec_def, ptr %251, i64 0, i32 1, i64 %247
  %253 = load ptr, ptr %252, align 8, !tbaa !426
  %254 = tail call i32 @exp_equiv_p(ptr noundef %250, ptr noundef %253, i32 noundef %2, i8 noundef zeroext %3) #24, !range !503
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %278, label %240

256:                                              ; preds = %218
  %257 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %258 = load ptr, ptr %257, align 8, !tbaa !442
  %259 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %260 = load ptr, ptr %259, align 8, !tbaa !442
  %261 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %258, ptr noundef nonnull dereferenceable(1) %260) #24
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %276, label %278

263:                                              ; preds = %218
  %264 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %265 = load i32, ptr %264, align 8, !tbaa !442
  %266 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %267 = load i32, ptr %266, align 8, !tbaa !442
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %276, label %278, !prof !513

269:                                              ; preds = %218
  %270 = getelementptr inbounds [1 x i64], ptr %215, i64 0, i64 %220
  %271 = load i64, ptr %270, align 8, !tbaa !442
  %272 = getelementptr inbounds [1 x i64], ptr %216, i64 0, i64 %220
  %273 = load i64, ptr %272, align 8, !tbaa !442
  %274 = icmp eq i64 %271, %273
  br i1 %274, label %276, label %278

275:                                              ; preds = %218
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2790, ptr noundef nonnull @.str.4) #22
  br label %276

276:                                              ; preds = %240, %238, %275, %223, %256, %263, %269, %218, %218
  %277 = icmp sgt i64 %219, 1
  br i1 %277, label %218, label %278, !prof !514, !llvm.loop !515

278:                                              ; preds = %136, %16, %22, %45, %130, %123, %180, %185, %194, %92, %223, %230, %256, %263, %269, %276, %246, %4, %90, %207, %79, %174, %146, %153, %160, %166, %142, %110, %106, %66, %58, %52, %50, %14
  %279 = phi i1 [ %15, %14 ], [ %69, %66 ], [ %63, %58 ], [ %57, %52 ], [ %51, %50 ], [ %88, %79 ], [ false, %106 ], [ false, %110 ], [ false, %142 ], [ false, %166 ], [ false, %160 ], [ false, %153 ], [ false, %146 ], [ true, %174 ], [ true, %207 ], [ true, %90 ], [ true, %4 ], [ false, %246 ], [ false, %223 ], [ false, %230 ], [ false, %256 ], [ false, %263 ], [ false, %269 ], [ true, %276 ], [ %100, %92 ], [ %184, %194 ], [ %184, %185 ], [ %184, %180 ], [ true, %136 ], [ false, %16 ], [ false, %22 ], [ false, %45 ], [ false, %130 ], [ true, %123 ]
  %280 = zext i1 %279 to i32
  ret i32 %280
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !prof !516 !PGOFuncName !517 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !442
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cse_main(ptr nocapture readnone %0, i32 noundef %1) local_unnamed_addr #0 !prof !518 {
  %3 = alloca %struct.cse_basic_block_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = load ptr, ptr @cfun, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !519
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !521
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #22
  %12 = tail call i32 @df_set_flags(i32 noundef 1) #22
  tail call void @df_analyze() #22
  %13 = tail call i32 @df_set_flags(i32 noundef 32) #22
  %14 = tail call ptr @get_insns() #22
  %15 = tail call i32 @max_reg_num() #22
  tail call void @reg_scan(ptr noundef %14, i32 noundef %15) #22
  tail call fastcc void @init_cse_reg_info(i32 noundef %1) #24
  %16 = load ptr, ptr @compiler_params, align 8, !tbaa !426
  %17 = getelementptr inbounds %struct.param_info, ptr %16, i64 57, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !523
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  %21 = tail call ptr @xmalloc(i64 noundef %20) #22
  %22 = getelementptr inbounds %struct.cse_basic_block_data, ptr %3, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !525
  store i8 0, ptr @cse_cfg_altered, align 1, !tbaa !442
  store i1 false, ptr @cse_jumps_altered, align 1
  store i1 false, ptr @recorded_label_ref, align 1
  %23 = getelementptr inbounds %struct.cse_basic_block_data, ptr %3, i64 0, i32 1
  store i32 0, ptr %23, align 4, !tbaa !527
  store i32 0, ptr %3, align 8, !tbaa !528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @rtl_hooks, ptr noundef nonnull align 8 dereferenceable(40) @cse_rtl_hooks, i64 40, i1 false), !tbaa.struct !529
  tail call void @init_recog() #22
  tail call void @init_alias_analysis() #22
  %24 = sext i32 %1 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call ptr @xmalloc(i64 noundef %25) #22
  store ptr %26, ptr @reg_eqv_table, align 8, !tbaa !426
  %27 = load ptr, ptr @cfun, align 8, !tbaa !426
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !519
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !521
  %32 = tail call ptr @sbitmap_alloc(i32 noundef %31) #22
  store ptr %32, ptr @cse_visited_basic_blocks, align 8, !tbaa !426
  tail call void @sbitmap_zero(ptr noundef %32) #22
  %33 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %11, i8 noundef zeroext 0) #22
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %88, !prof !530

35:                                               ; preds = %2
  %36 = zext nneg i32 %33 to i64
  br label %39

37:                                               ; preds = %82, %68
  %38 = icmp sgt i32 %33, %69
  br i1 %38, label %39, label %86, !prof !531, !llvm.loop !532

39:                                               ; preds = %35, %37
  %40 = phi i64 [ %51, %37 ], [ 0, %35 ]
  %41 = load ptr, ptr @cfun, align 8, !tbaa !426
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !519
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !533
  %46 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !426
  %47 = shl i64 %40, 32
  %48 = ashr exact i64 %47, 32
  br label %49

49:                                               ; preds = %39, %49
  %50 = phi i64 [ %48, %39 ], [ %51, %49 ]
  %51 = add nsw i64 %50, 1
  %52 = getelementptr inbounds i32, ptr %11, i64 %50
  %53 = load i32, ptr %52, align 4, !tbaa !438
  %54 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %45, i32 noundef %53) #24
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !534
  %57 = lshr i32 %56, 6
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds %struct.simple_bitmap_def, ptr %46, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !537
  %61 = and i32 %56, 63
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw i64 1, %62
  %64 = and i64 %63, %60
  %65 = icmp ne i64 %64, 0
  %66 = icmp slt i64 %51, %36
  %67 = select i1 %65, i1 %66, i1 false, !prof !538
  br i1 %67, label %49, label %68, !prof !539, !llvm.loop !540

68:                                               ; preds = %49
  %69 = trunc i64 %51 to i32
  %70 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !438
  %71 = call fastcc zeroext i8 @cse_find_path(ptr noundef nonnull %54, ptr noundef nonnull %3, i32 noundef %70) #24, !range !541
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %37, label %73, !prof !542

73:                                               ; preds = %68, %82
  call fastcc void @cse_prescan_path(ptr noundef nonnull %3) #24
  %74 = load i32, ptr %3, align 8, !tbaa !528
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76, !prof !543

76:                                               ; preds = %73
  %77 = mul nsw i32 %74, 30
  store i32 %77, ptr @max_qty, align 4, !tbaa !438
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80, !prof !544

80:                                               ; preds = %76
  call fastcc void @cse_dump_path(ptr noundef nonnull %3, i32 noundef %74, ptr noundef nonnull %78) #24
  br label %81

81:                                               ; preds = %80, %76
  call fastcc void @cse_extended_basic_block(ptr noundef nonnull %3) #24
  br label %82

82:                                               ; preds = %81, %73
  %83 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !438
  %84 = call fastcc zeroext i8 @cse_find_path(ptr noundef %54, ptr noundef nonnull %3, i32 noundef %83) #24, !range !541
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %37, label %73, !prof !545, !llvm.loop !546

86:                                               ; preds = %37
  %87 = load ptr, ptr %22, align 8, !tbaa !525
  br label %88

88:                                               ; preds = %86, %2
  %89 = phi ptr [ %87, %86 ], [ %21, %2 ]
  tail call void @end_alias_analysis() #22
  %90 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !426
  tail call void @free(ptr noundef %90) #24
  tail call void @free(ptr noundef %89) #24
  %91 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !426
  %92 = load ptr, ptr %91, align 8, !tbaa !547
  tail call void @free(ptr noundef %92) #24
  tail call void @free(ptr noundef %91) #24
  tail call void @free(ptr noundef %11) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @rtl_hooks, ptr noundef nonnull align 8 dereferenceable(40) @general_rtl_hooks, i64 40, i1 false), !tbaa.struct !529
  %93 = load i1, ptr @cse_jumps_altered, align 1
  %94 = load i1, ptr @recorded_label_ref, align 1
  %95 = select i1 %93, i1 true, i1 %94
  %96 = load i8, ptr @cse_cfg_altered, align 1
  %97 = icmp ne i8 %96, 0
  %98 = zext i1 %97 to i32
  %99 = select i1 %95, i32 2, i32 %98, !prof !549
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
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
define internal fastcc void @init_cse_reg_info(i32 noundef %0) unnamed_addr #0 !prof !518 !PGOFuncName !550 {
  %2 = load i32, ptr @cse_reg_info_table_size, align 4
  %3 = icmp ult i32 %2, %0
  br i1 %3, label %6, label %4, !prof !551

4:                                                ; preds = %1
  %5 = load i32, ptr @cse_reg_info_table_first_uninitialized, align 4, !tbaa !438
  br label %24

6:                                                ; preds = %1
  %7 = icmp ult i32 %2, 2048
  br i1 %7, label %8, label %15, !prof !552

8:                                                ; preds = %6
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 64, i32 %2, !prof !553
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %10, %8 ], [ %14, %11 ]
  %13 = icmp ult i32 %12, %0
  %14 = shl i32 %12, 1
  br i1 %13, label %11, label %15, !prof !554, !llvm.loop !555

15:                                               ; preds = %11, %6
  %16 = phi i32 [ %0, %6 ], [ %12, %11 ]
  %17 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !426
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !556

19:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %17) #24
  br label %20

20:                                               ; preds = %19, %15
  %21 = zext i32 %16 to i64
  %22 = mul nuw nsw i64 %21, 20
  %23 = tail call ptr @xmalloc(i64 noundef %22) #22
  store ptr %23, ptr @cse_reg_info_table, align 8, !tbaa !426
  store i32 %16, ptr @cse_reg_info_table_size, align 4, !tbaa !438
  store i32 0, ptr @cse_reg_info_table_first_uninitialized, align 4, !tbaa !438
  br label %24

24:                                               ; preds = %4, %20
  %25 = phi i32 [ %5, %4 ], [ 0, %20 ]
  %26 = icmp ult i32 %25, %0
  br i1 %26, label %27, label %39, !prof !557

27:                                               ; preds = %24
  %28 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !438
  %29 = add i32 %28, -1
  %30 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !426
  %31 = zext i32 %25 to i64
  %32 = zext i32 %0 to i64
  br label %33

33:                                               ; preds = %27, %33
  %34 = phi i64 [ %31, %27 ], [ %36, %33 ]
  %35 = getelementptr inbounds %struct.cse_reg_info, ptr %30, i64 %34
  store i32 %29, ptr %35, align 4, !tbaa !472
  %36 = add nuw nsw i64 %34, 1
  %37 = icmp eq i64 %36, %32
  br i1 %37, label %38, label %33, !prof !558, !llvm.loop !559

38:                                               ; preds = %33
  store i32 %0, ptr @cse_reg_info_table_first_uninitialized, align 4, !tbaa !438
  br label %39

39:                                               ; preds = %38, %24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

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
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !560 !PGOFuncName !561 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cse_find_path(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !prof !562 !PGOFuncName !563 {
  %4 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !534
  tail call fastcc void @SET_BIT(ptr noundef %4, i32 noundef %6) #24
  %7 = getelementptr inbounds %struct.cse_basic_block_data, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !527
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.cse_basic_block_data, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !525
  br i1 %9, label %23, label %12, !prof !564

12:                                               ; preds = %3
  %13 = load ptr, ptr %11, align 8, !tbaa !565
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %16, label %15, !prof !567

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6107, ptr noundef nonnull @.str.4) #22
  br label %16

16:                                               ; preds = %15, %12
  %17 = icmp eq i32 %8, 1
  br i1 %17, label %192, label %18, !prof !568

18:                                               ; preds = %16
  %19 = icmp sgt i32 %8, 1
  br i1 %19, label %20, label %98, !prof !569

20:                                               ; preds = %18
  %21 = zext nneg i32 %8 to i64
  %22 = load ptr, ptr %10, align 8, !tbaa !525
  br label %24

23:                                               ; preds = %3
  store ptr %0, ptr %11, align 8, !tbaa !565
  br label %98

24:                                               ; preds = %20, %91
  %25 = phi ptr [ %22, %20 ], [ %92, %91 ]
  %26 = phi i64 [ %21, %20 ], [ %27, %91 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds %struct.branch_path, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !565
  %30 = getelementptr %struct.branch_path, ptr %25, i64 %26
  %31 = getelementptr %struct.branch_path, ptr %30, i64 -2
  %32 = load ptr, ptr %31, align 8, !tbaa !565
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !570
  %35 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %34) #24
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %91, !prof !571

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !442
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !572
  %42 = tail call i32 @any_condjump_p(ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %91, label %44, !prof !574

44:                                               ; preds = %37
  %45 = tail call ptr @find_edge(ptr noundef nonnull %32, ptr noundef %29) #22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %91, label %47, !prof !574

47:                                               ; preds = %44
  %48 = load ptr, ptr %33, align 8, !tbaa !570
  %49 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 0) #24
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !575
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56, !prof !577

54:                                               ; preds = %47
  %55 = icmp eq ptr %45, %49
  br i1 %55, label %59, label %91, !prof !578

56:                                               ; preds = %47
  %57 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 1) #24
  %58 = icmp eq ptr %45, %57
  br i1 %58, label %61, label %91, !prof !578

59:                                               ; preds = %54
  %60 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 1) #24
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi ptr [ %60, %59 ], [ %49, %56 ]
  %63 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !579
  %65 = load ptr, ptr @cfun, align 8, !tbaa !426
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !519
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !580
  %70 = icmp eq ptr %64, %69
  br i1 %70, label %91, label %71, !prof !581

71:                                               ; preds = %61
  %72 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %64) #24, !range !541
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %91, label %74, !prof !582

74:                                               ; preds = %71
  %75 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !426
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !534
  %78 = lshr i32 %77, 6
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds %struct.simple_bitmap_def, ptr %75, i64 0, i32 3, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !537
  %82 = and i32 %77, 63
  %83 = zext nneg i32 %82 to i64
  %84 = shl nuw i64 1, %83
  %85 = and i64 %84, %81
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91, !prof !583

87:                                               ; preds = %74
  %88 = trunc i64 %26 to i32
  tail call fastcc void @SET_BIT(ptr noundef nonnull %75, i32 noundef %77) #24
  %89 = load ptr, ptr %10, align 8, !tbaa !525
  %90 = getelementptr inbounds %struct.branch_path, ptr %89, i64 %27
  store ptr %64, ptr %90, align 8, !tbaa !565
  br label %98

91:                                               ; preds = %24, %37, %44, %54, %74, %71, %61, %56
  %92 = load ptr, ptr %10, align 8, !tbaa !525
  %93 = getelementptr inbounds %struct.branch_path, ptr %92, i64 %27
  store ptr null, ptr %93, align 8, !tbaa !565
  %94 = icmp ugt i64 %26, 2
  br i1 %94, label %24, label %95, !prof !584

95:                                               ; preds = %91
  %96 = trunc i64 %27 to i32
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %192, label %98, !prof !585

98:                                               ; preds = %18, %87, %95, %23
  %99 = phi i32 [ 1, %23 ], [ %96, %95 ], [ %88, %87 ], [ %8, %18 ]
  %100 = icmp eq i32 %2, 0
  br i1 %100, label %192, label %101, !prof !586

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.cse_basic_block_data, ptr %1, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !525
  %104 = sext i32 %99 to i64
  %105 = getelementptr %struct.branch_path, ptr %103, i64 %104
  %106 = getelementptr %struct.branch_path, ptr %105, i64 -1
  %107 = load ptr, ptr %106, align 8, !tbaa !565
  %108 = icmp eq ptr %107, null
  br i1 %108, label %192, label %109, !prof !587

109:                                              ; preds = %101
  %110 = load ptr, ptr @compiler_params, align 8, !tbaa !426
  %111 = getelementptr inbounds %struct.param_info, ptr %110, i64 57, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !523
  %113 = icmp slt i32 %99, %112
  br i1 %113, label %114, label %192, !prof !588

114:                                              ; preds = %109, %183
  %115 = phi i32 [ %185, %183 ], [ %99, %109 ]
  %116 = phi ptr [ %160, %183 ], [ %107, %109 ]
  %117 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %116) #24, !range !541
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119, !prof !589

119:                                              ; preds = %114
  %120 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %116) #24
  br label %154

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !570
  %124 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %123) #24
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %192, !prof !590

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !442
  %129 = getelementptr inbounds %struct.rtl_bb_info, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !572
  %131 = tail call i32 @any_condjump_p(ptr noundef %130) #22
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %192, label %133, !prof !591

133:                                              ; preds = %126
  %134 = load ptr, ptr %122, align 8, !tbaa !570
  %135 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %134, i32 noundef 0) #24
  %136 = getelementptr inbounds %struct.edge_def, ptr %135, i64 0, i32 7
  %137 = load i32, ptr %136, align 8, !tbaa !575
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %145, !prof !592

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.edge_def, ptr %135, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !579
  %143 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %142) #24, !range !541
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %152, label %157, !prof !593

145:                                              ; preds = %133
  %146 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %134, i32 noundef 1) #24
  %147 = getelementptr inbounds %struct.edge_def, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !579
  %149 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %148) #24, !range !541
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, ptr %135, ptr %146, !prof !593
  br label %157

152:                                              ; preds = %140
  %153 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %134, i32 noundef 1) #24
  br label %154

154:                                              ; preds = %152, %119
  %155 = phi ptr [ %120, %119 ], [ %153, %152 ]
  %156 = icmp eq ptr %155, null
  br i1 %156, label %192, label %157, !prof !594

157:                                              ; preds = %145, %140, %154
  %158 = phi ptr [ %155, %154 ], [ %135, %140 ], [ %151, %145 ]
  %159 = getelementptr inbounds %struct.edge_def, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !579
  %161 = load ptr, ptr @cfun, align 8, !tbaa !426
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !519
  %164 = getelementptr inbounds %struct.control_flow_graph, ptr %163, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !580
  %166 = icmp eq ptr %160, %165
  br i1 %166, label %192, label %167, !prof !595

167:                                              ; preds = %157
  %168 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %160) #24, !range !541
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %192, label %170, !prof !596

170:                                              ; preds = %167
  %171 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !426
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 9
  %173 = load i32, ptr %172, align 8, !tbaa !534
  %174 = lshr i32 %173, 6
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds %struct.simple_bitmap_def, ptr %171, i64 0, i32 3, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !537
  %178 = and i32 %173, 63
  %179 = zext nneg i32 %178 to i64
  %180 = shl nuw i64 1, %179
  %181 = and i64 %180, %177
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %192, !prof !597

183:                                              ; preds = %170
  tail call fastcc void @SET_BIT(ptr noundef nonnull %171, i32 noundef %173) #24
  %184 = load ptr, ptr %102, align 8, !tbaa !525
  %185 = add nsw i32 %115, 1
  %186 = sext i32 %115 to i64
  %187 = getelementptr inbounds %struct.branch_path, ptr %184, i64 %186
  store ptr %160, ptr %187, align 8, !tbaa !565
  %188 = load ptr, ptr @compiler_params, align 8, !tbaa !426
  %189 = getelementptr inbounds %struct.param_info, ptr %188, i64 57, i32 1
  %190 = load i32, ptr %189, align 8, !tbaa !523
  %191 = icmp slt i32 %185, %190
  br i1 %191, label %114, label %192, !prof !598, !llvm.loop !599

192:                                              ; preds = %183, %170, %167, %157, %154, %126, %121, %109, %101, %16, %95, %98
  %193 = phi i32 [ %99, %98 ], [ 0, %16 ], [ 0, %95 ], [ %99, %101 ], [ %99, %109 ], [ %115, %121 ], [ %115, %126 ], [ %115, %154 ], [ %115, %157 ], [ %115, %167 ], [ %115, %170 ], [ %185, %183 ]
  store i32 %193, ptr %7, align 4, !tbaa !527
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i8
  ret i8 %195
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cse_prescan_path(ptr nocapture noundef %0) unnamed_addr #11 !prof !600 !PGOFuncName !601 {
  %2 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !527
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %54, !prof !602

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !525
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %50
  %10 = phi i64 [ 0, %5 ], [ %52, %50 ]
  %11 = phi i32 [ 0, %5 ], [ %51, %50 ]
  %12 = getelementptr inbounds %struct.branch_path, ptr %7, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !565
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !442
  %16 = load ptr, ptr %15, align 8, !tbaa !442
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18, !prof !603

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !572
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !442
  br label %23

23:                                               ; preds = %18, %45
  %24 = phi ptr [ %16, %18 ], [ %48, %45 ]
  %25 = phi i32 [ %11, %18 ], [ %46, %45 ]
  %26 = icmp eq ptr %24, %22
  br i1 %26, label %50, label %27, !prof !604

27:                                               ; preds = %23
  %28 = load i32, ptr %24, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -7
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %45, !prof !605

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !442
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %43, !prof !606

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !442
  %41 = load i32, ptr %40, align 8, !tbaa !451
  %42 = add nsw i32 %41, %25
  br label %45

43:                                               ; preds = %32
  %44 = add nsw i32 %25, 1
  br label %45

45:                                               ; preds = %27, %38, %43
  %46 = phi i32 [ %42, %38 ], [ %44, %43 ], [ %25, %27 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !442
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %23, !prof !607, !llvm.loop !608

50:                                               ; preds = %23, %45, %9
  %51 = phi i32 [ %11, %9 ], [ %46, %45 ], [ %25, %23 ]
  %52 = add nuw nsw i64 %10, 1
  %53 = icmp eq i64 %52, %8
  br i1 %53, label %54, label %9, !prof !609, !llvm.loop !610

54:                                               ; preds = %50, %1
  %55 = phi i32 [ 0, %1 ], [ %51, %50 ]
  store i32 %55, ptr %0, align 8, !tbaa !528
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @cse_dump_path(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #12 !prof !425 !PGOFuncName !611 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %1) #24
  %5 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !527
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %18, %10 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !525
  %13 = getelementptr inbounds %struct.branch_path, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !565
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !534
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %16) #24
  %18 = add nuw nsw i64 %11, 1
  %19 = load i32, ptr %5, align 4, !tbaa !527
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %10, label %22, !llvm.loop !612

22:                                               ; preds = %10, %3
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %24 = tail call i32 @fputc(i32 noundef 10, ptr noundef %23) #24
  %25 = tail call i32 @fflush(ptr noundef %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_extended_basic_block(ptr nocapture noundef %0) unnamed_addr #0 !prof !613 !PGOFuncName !614 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !527
  %5 = load i32, ptr @max_qty, align 4, !tbaa !438
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 40
  %8 = tail call ptr @xmalloc(i64 noundef %7) #22
  store ptr %8, ptr @qty_table, align 8, !tbaa !426
  tail call fastcc void @new_basic_block() #24
  %9 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !525
  %11 = load ptr, ptr %10, align 8, !tbaa !565
  %12 = tail call ptr @df_get_live_in(ptr noundef %11) #22
  store ptr %12, ptr @cse_ebb_live_in, align 8, !tbaa !426
  %13 = load ptr, ptr %9, align 8, !tbaa !525
  %14 = sext i32 %4 to i64
  %15 = getelementptr %struct.branch_path, ptr %13, i64 %14
  %16 = getelementptr %struct.branch_path, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !tbaa !565
  %18 = tail call ptr @df_get_live_out(ptr noundef %17) #22
  store ptr %18, ptr @cse_ebb_live_out, align 8, !tbaa !426
  %19 = icmp sgt i32 %4, 0
  br i1 %19, label %20, label %206, !prof !615

20:                                               ; preds = %1, %202
  %21 = phi i64 [ %203, %202 ], [ 0, %1 ]
  %22 = phi i32 [ %161, %202 ], [ %4, %1 ]
  %23 = phi i32 [ %116, %202 ], [ 0, %1 ]
  %24 = load ptr, ptr %9, align 8, !tbaa !525
  %25 = getelementptr inbounds %struct.branch_path, ptr %24, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !565
  %27 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %26) #24, !range !541
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %51, label %29, !prof !616

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !534
  %32 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %31) #24
  %33 = load ptr, ptr %32, align 8, !tbaa !426
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
  %43 = load ptr, ptr %42, align 8, !tbaa !442
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  tail call fastcc void @invalidate(ptr noundef nonnull %43, i32 noundef %46) #24
  br label %47

47:                                               ; preds = %41, %35
  %48 = getelementptr inbounds ptr, ptr %37, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !426
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %35, !llvm.loop !617

51:                                               ; preds = %47, %29, %20
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !442
  %54 = load ptr, ptr %53, align 8, !tbaa !442
  %55 = icmp eq ptr %54, null
  br i1 %55, label %115, label %56, !prof !618

56:                                               ; preds = %51, %111
  %57 = phi ptr [ %113, %111 ], [ %54, %51 ]
  %58 = phi i32 [ %82, %111 ], [ %23, %51 ]
  %59 = load ptr, ptr %52, align 8, !tbaa !442
  %60 = getelementptr inbounds %struct.rtl_bb_info, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !572
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !442
  %64 = icmp eq ptr %57, %63
  br i1 %64, label %115, label %65, !prof !619

65:                                               ; preds = %56
  %66 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %26) #22
  store i8 %66, ptr @optimize_this_for_speed_p, align 1, !tbaa !442
  %67 = load i32, ptr %57, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -11
  %70 = icmp ult i32 %69, -3
  br i1 %70, label %80, label %71, !prof !620

71:                                               ; preds = %65
  %72 = add nsw i32 %58, 1
  %73 = load ptr, ptr @compiler_params, align 8, !tbaa !426
  %74 = getelementptr inbounds %struct.param_info, ptr %73, i64 58, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !523
  %76 = icmp sgt i32 %58, %75
  br i1 %76, label %77, label %80, !prof !621

77:                                               ; preds = %71
  tail call fastcc void @flush_hash_table() #24
  %78 = load i32, ptr %57, align 8
  %79 = and i32 %78, 65535
  br label %80

80:                                               ; preds = %65, %77, %71
  %81 = phi i32 [ %68, %65 ], [ %79, %77 ], [ %68, %71 ]
  %82 = phi i32 [ %58, %65 ], [ 0, %77 ], [ %72, %71 ]
  %83 = add nsw i32 %81, -7
  %84 = icmp ult i32 %83, 4
  br i1 %84, label %85, label %111, !prof !622

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 1, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !442
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89, !prof !623

89:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #23
  store i8 0, ptr %2, align 1, !tbaa !442
  %90 = call fastcc ptr @cse_process_notes(ptr noundef nonnull %87, ptr noundef null, ptr noundef nonnull %2) #24
  store ptr %90, ptr %86, align 8, !tbaa !442
  %91 = load i8, ptr %2, align 1, !tbaa !442
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93, !prof !624

93:                                               ; preds = %89
  tail call void @df_notes_rescan(ptr noundef nonnull %57) #22
  br label %94

94:                                               ; preds = %93, %89
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #23
  br label %95

95:                                               ; preds = %94, %85
  tail call fastcc void @cse_insn(ptr noundef nonnull %57) #24
  %96 = load i32, ptr %57, align 8
  %97 = and i32 %96, 65535
  %98 = add nsw i32 %97, -7
  %99 = icmp ult i32 %98, 3
  br i1 %99, label %104, label %100, !prof !625

100:                                              ; preds = %95
  %101 = icmp ne i32 %97, 10
  %102 = load i1, ptr @recorded_label_ref, align 1
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %111, label %106, !prof !626

104:                                              ; preds = %95
  %105 = load i1, ptr @recorded_label_ref, align 1
  br i1 %105, label %111, label %106, !prof !627

106:                                              ; preds = %100, %104
  %107 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 1
  %108 = tail call i32 @for_each_rtx(ptr noundef nonnull %107, ptr noundef nonnull @check_for_label_ref, ptr noundef nonnull %57) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110, !prof !628

110:                                              ; preds = %106
  store i1 true, ptr @recorded_label_ref, align 1
  br label %111

111:                                              ; preds = %80, %110, %106, %104, %100
  %112 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !442
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %56, !prof !629, !llvm.loop !630

115:                                              ; preds = %56, %111, %51
  %116 = phi i32 [ %23, %51 ], [ %82, %111 ], [ %58, %56 ]
  %117 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !438
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %126, label %119, !prof !616

119:                                              ; preds = %115
  %120 = tail call fastcc zeroext i8 @have_eh_succ_edges(ptr noundef nonnull %26) #24, !range !541
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = tail call zeroext i8 @purge_dead_edges(ptr noundef nonnull %26) #22
  %124 = load i8, ptr @cse_cfg_altered, align 1, !tbaa !442
  %125 = or i8 %124, %123
  store i8 %125, ptr @cse_cfg_altered, align 1, !tbaa !442
  br label %126

126:                                              ; preds = %122, %119, %115
  %127 = add nsw i32 %22, -1
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %21, %128
  br i1 %129, label %130, label %159, !prof !631

130:                                              ; preds = %126
  %131 = load ptr, ptr %9, align 8, !tbaa !525
  %132 = getelementptr %struct.branch_path, ptr %131, i64 %21
  %133 = getelementptr %struct.branch_path, ptr %132, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !565
  %135 = tail call ptr @find_edge(ptr noundef nonnull %26, ptr noundef %134) #22
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %159, !prof !632

137:                                              ; preds = %130
  %138 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !426
  %139 = sext i32 %22 to i64
  %140 = load ptr, ptr %9, align 8, !tbaa !525
  br label %141

141:                                              ; preds = %137, %141
  %142 = phi ptr [ %140, %137 ], [ %149, %141 ]
  %143 = phi i64 [ %139, %137 ], [ %144, %141 ]
  %144 = add nsw i64 %143, -1
  %145 = getelementptr inbounds %struct.branch_path, ptr %142, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !565
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 9
  %148 = load i32, ptr %147, align 8, !tbaa !534
  tail call fastcc void @RESET_BIT(ptr noundef %138, i32 noundef %148) #24
  %149 = load ptr, ptr %9, align 8, !tbaa !525
  %150 = getelementptr inbounds %struct.branch_path, ptr %149, i64 %144
  store ptr null, ptr %150, align 8, !tbaa !565
  %151 = add i64 %143, 4294967294
  %152 = and i64 %151, 4294967295
  %153 = icmp eq i64 %152, %21
  br i1 %153, label %154, label %141, !prof !633, !llvm.loop !634

154:                                              ; preds = %141
  %155 = trunc i64 %144 to i32
  store i32 %155, ptr %3, align 4, !tbaa !527
  %156 = shl i64 %143, 32
  %157 = add i64 %156, -8589934592
  %158 = ashr exact i64 %157, 32
  br label %159

159:                                              ; preds = %130, %154, %126
  %160 = phi i64 [ %128, %130 ], [ %158, %154 ], [ %128, %126 ]
  %161 = phi i32 [ %22, %130 ], [ %155, %154 ], [ %22, %126 ]
  %162 = load ptr, ptr %52, align 8, !tbaa !442
  %163 = getelementptr inbounds %struct.rtl_bb_info, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !572
  %165 = icmp slt i64 %21, %160
  br i1 %165, label %166, label %202, !prof !635

166:                                              ; preds = %159
  %167 = load i32, ptr %164, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 9
  br i1 %169, label %170, label %202, !prof !636

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !442
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 65535
  %175 = icmp eq i32 %174, 23
  br i1 %175, label %179, label %176

176:                                              ; preds = %170
  %177 = tail call ptr @single_set_2(ptr noundef nonnull %164, ptr noundef nonnull %172) #22
  %178 = icmp eq ptr %177, null
  br i1 %178, label %202, label %179

179:                                              ; preds = %170, %176
  %180 = tail call i32 @any_condjump_p(ptr noundef nonnull %164) #22
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %202, label %182, !prof !637

182:                                              ; preds = %179
  %183 = load ptr, ptr %9, align 8, !tbaa !525
  %184 = getelementptr %struct.branch_path, ptr %183, i64 %21
  %185 = getelementptr %struct.branch_path, ptr %184, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !565
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !570
  %189 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %188, i32 noundef 0) #24
  %190 = getelementptr inbounds %struct.edge_def, ptr %189, i64 0, i32 7
  %191 = load i32, ptr %190, align 8, !tbaa !575
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194, !prof !638

194:                                              ; preds = %182
  %195 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %188, i32 noundef 1) #24
  br label %196

196:                                              ; preds = %182, %194
  %197 = phi ptr [ %195, %194 ], [ %189, %182 ]
  %198 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !579
  %200 = icmp eq ptr %186, %199
  %201 = zext i1 %200 to i8
  tail call fastcc void @record_jump_equiv(ptr noundef nonnull %164, i8 noundef zeroext %201) #24
  br label %202

202:                                              ; preds = %196, %179, %176, %166, %159
  %203 = add nuw nsw i64 %21, 1
  %204 = sext i32 %161 to i64
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %20, label %206, !prof !639, !llvm.loop !640

206:                                              ; preds = %202, %1
  %207 = load i32, ptr @next_qty, align 4, !tbaa !438
  %208 = load i32, ptr @max_qty, align 4, !tbaa !438
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %211, !prof !641

210:                                              ; preds = %206
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6442, ptr noundef nonnull @.str.4) #22
  br label %211

211:                                              ; preds = %206, %210
  %212 = load ptr, ptr @qty_table, align 8, !tbaa !426
  tail call void @free(ptr noundef %212) #24
  ret void
}

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

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
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !642 !PGOFuncName !643 {
  %3 = load ptr, ptr %0, align 8, !tbaa !547
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !644

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
  %15 = load i64, ptr %14, align 8, !tbaa !537
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !442
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !442
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !537
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !537
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !645 !PGOFuncName !646 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !647

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !648
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
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !650 !PGOFuncName !651 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !652 !PGOFuncName !653 {
  %2 = load ptr, ptr %0, align 8, !tbaa !654
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !655 !PGOFuncName !656 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !570
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !657 !PGOFuncName !658 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #24, !range !541
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !659

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 645, ptr noundef nonnull @.str.4) #22
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !570
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #24
  ret ptr %8
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @new_basic_block() unnamed_addr #15 !prof !613 !PGOFuncName !660 {
  store i32 0, ptr @next_qty, align 4, !tbaa !438
  %1 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !438
  %2 = add i32 %1, 1
  store i32 %2, ptr @cse_reg_info_timestamp, align 4, !tbaa !438
  store i64 0, ptr @hard_regs_in_table, align 8, !tbaa !537
  %3 = load ptr, ptr @free_element_chain, align 8, !tbaa !426
  br label %4

4:                                                ; preds = %0, %18
  %5 = phi i64 [ 0, %0 ], [ %20, %18 ]
  %6 = phi ptr [ %3, %0 ], [ %19, %18 ]
  %7 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !426
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10, !prof !661

10:                                               ; preds = %4
  store ptr null, ptr %7, align 8, !tbaa !426
  br label %11

11:                                               ; preds = %11, %10
  %12 = phi ptr [ %8, %10 ], [ %14, %11 ]
  %13 = getelementptr inbounds %struct.table_elt, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !662
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !prof !663, !llvm.loop !664

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.table_elt, ptr %12, i64 0, i32 2
  store ptr %6, ptr %17, align 8, !tbaa !662
  store ptr %8, ptr @free_element_chain, align 8, !tbaa !426
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi ptr [ %8, %16 ], [ %6, %4 ]
  %20 = add nuw nsw i64 %5, 1
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %4, !prof !665, !llvm.loop !666

22:                                               ; preds = %18
  ret void
}

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 !prof !667 !PGOFuncName !668 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !669
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !670
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #24, !range !541
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !671

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !426
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !575
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !672

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #24, !range !541
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !673, !llvm.loop !674

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #14 !prof !425 !PGOFuncName !675 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #24
  %3 = load ptr, ptr %2, align 8, !tbaa !676
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invalidate(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !678 !PGOFuncName !679 {
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
  ], !prof !680

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #24
  %11 = and i32 %7, 65535
  %12 = icmp eq i32 %11, 37
  %13 = icmp ugt i32 %10, 52
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %20, !prof !681

15:                                               ; preds = %9
  %16 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %10) #24
  %17 = getelementptr inbounds %struct.cse_reg_info, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !447
  %19 = add i32 %18, 4736
  br label %24

20:                                               ; preds = %9
  %21 = lshr i32 %7, 16
  %22 = and i32 %21, 255
  %23 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %5, i32 noundef %22) #24
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32 [ %19, %15 ], [ %23, %20 ]
  tail call fastcc void @delete_reg_equiv(i32 noundef %10) #24
  %26 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %10) #24
  %27 = getelementptr inbounds %struct.cse_reg_info, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !478
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !478
  %30 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %10) #24
  %31 = getelementptr inbounds %struct.cse_reg_info, ptr %30, i64 0, i32 4
  store i32 -1, ptr %31, align 4, !tbaa !480
  br i1 %13, label %32, label %34, !prof !682

32:                                               ; preds = %24
  %33 = and i32 %25, 31
  tail call fastcc void @remove_pseudo_from_table(ptr noundef nonnull %5, i32 noundef %33) #24
  br label %167

34:                                               ; preds = %24
  %35 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !537
  %36 = zext nneg i32 %10 to i64
  %37 = shl nuw nsw i64 1, %36
  %38 = lshr i64 %35, %36
  %39 = and i64 %38, 1
  %40 = load i32, ptr %5, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #24
  %44 = tail call fastcc i32 @end_hard_regno(i32 noundef %42, i32 noundef %43) #24
  %45 = xor i64 %37, -1
  %46 = and i64 %35, %45
  store i64 %46, ptr @hard_regs_in_table, align 8, !tbaa !537
  %47 = add nuw nsw i32 %10, 1
  %48 = icmp ult i32 %47, %44
  br i1 %48, label %49, label %71, !prof !683

49:                                               ; preds = %34
  %50 = add nuw nsw i64 %36, 1
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ %50, %49 ], [ %68, %51 ]
  %53 = phi i64 [ %39, %49 ], [ %58, %51 ]
  %54 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !537
  %55 = shl nuw i64 1, %52
  %56 = lshr i64 %54, %52
  %57 = and i64 %56, 1
  %58 = or i64 %57, %53
  %59 = xor i64 %55, -1
  %60 = and i64 %54, %59
  store i64 %60, ptr @hard_regs_in_table, align 8, !tbaa !537
  %61 = trunc i64 %52 to i32
  tail call fastcc void @delete_reg_equiv(i32 noundef %61) #24
  %62 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %61) #24
  %63 = getelementptr inbounds %struct.cse_reg_info, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !478
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !478
  %66 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %61) #24
  %67 = getelementptr inbounds %struct.cse_reg_info, ptr %66, i64 0, i32 4
  store i32 -1, ptr %67, align 4, !tbaa !480
  %68 = add nuw nsw i64 %52, 1
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %44, %69
  br i1 %70, label %71, label %51, !prof !684, !llvm.loop !685

71:                                               ; preds = %51, %34
  %72 = phi i64 [ %39, %34 ], [ %58, %51 ]
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %167, label %74, !prof !686

74:                                               ; preds = %71, %101
  %75 = phi i64 [ %102, %101 ], [ 0, %71 ]
  %76 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !426
  %78 = icmp eq ptr %77, null
  br i1 %78, label %101, label %79, !prof !687

79:                                               ; preds = %74, %99
  %80 = phi ptr [ %82, %99 ], [ %77, %74 ]
  %81 = getelementptr inbounds %struct.table_elt, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !662
  %83 = load ptr, ptr %80, align 8, !tbaa !430
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 37
  br i1 %86, label %87, label %99, !prof !688

87:                                               ; preds = %79
  %88 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %83) #24
  %89 = icmp ugt i32 %88, 52
  br i1 %89, label %99, label %90, !prof !689

90:                                               ; preds = %87
  %91 = lshr i32 %84, 16
  %92 = and i32 %91, 255
  %93 = tail call fastcc i32 @end_hard_regno(i32 noundef %92, i32 noundef %88) #24
  %94 = icmp ugt i32 %93, %10
  %95 = icmp ult i32 %88, %44
  %96 = and i1 %94, %95
  br i1 %96, label %97, label %99, !prof !690

97:                                               ; preds = %90
  %98 = trunc i64 %75 to i32
  tail call fastcc void @remove_from_table(ptr noundef nonnull %80, i32 noundef %98) #24
  br label %99

99:                                               ; preds = %90, %97, %79, %87
  %100 = icmp eq ptr %82, null
  br i1 %100, label %101, label %79, !prof !691, !llvm.loop !692

101:                                              ; preds = %99, %74
  %102 = add nuw nsw i64 %75, 1
  %103 = icmp eq i64 %102, 32
  br i1 %103, label %167, label %74, !prof !693, !llvm.loop !694

104:                                              ; preds = %4, %4
  %105 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !442
  br label %4

107:                                              ; preds = %4
  %108 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !442
  %110 = load i32, ptr %109, align 8, !tbaa !451
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %167

112:                                              ; preds = %107
  %113 = zext nneg i32 %110 to i64
  br label %114

114:                                              ; preds = %112, %114
  %115 = phi i64 [ %113, %112 ], [ %116, %114 ]
  %116 = add nsw i64 %115, -1
  %117 = load ptr, ptr %108, align 8, !tbaa !442
  %118 = getelementptr inbounds %struct.rtvec_def, ptr %117, i64 0, i32 1, i64 %116
  %119 = load ptr, ptr %118, align 8, !tbaa !426
  tail call fastcc void @invalidate(ptr noundef %119, i32 noundef 0) #24
  %120 = icmp ugt i64 %115, 1
  br i1 %120, label %114, label %167, !llvm.loop !695

121:                                              ; preds = %4
  %122 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !442
  %124 = tail call ptr @get_addr(ptr noundef %123) #22
  %125 = tail call ptr @canon_rtx(ptr noundef %124) #22
  %126 = tail call ptr @canon_rtx(ptr noundef nonnull %5) #22
  %127 = icmp eq i32 %6, 0
  br i1 %127, label %128, label %132, !prof !696

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
  %139 = load ptr, ptr %138, align 8, !tbaa !426
  %140 = icmp eq ptr %139, null
  br i1 %140, label %163, label %141, !prof !697

141:                                              ; preds = %136, %161
  %142 = phi ptr [ %144, %161 ], [ %139, %136 ]
  %143 = getelementptr inbounds %struct.table_elt, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !662
  %145 = getelementptr inbounds %struct.table_elt, ptr %142, i64 0, i32 11
  %146 = load i8, ptr %145, align 1, !tbaa !698
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %161, label %148, !prof !699

148:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %149 = getelementptr inbounds %struct.table_elt, ptr %142, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !700
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %155, !prof !701

152:                                              ; preds = %148
  %153 = load ptr, ptr %142, align 8, !tbaa !430
  %154 = call ptr @canon_rtx(ptr noundef %153) #22
  store ptr %154, ptr %149, align 8, !tbaa !700
  br label %155

155:                                              ; preds = %152, %148
  store ptr %126, ptr %134, align 8, !tbaa !702
  store ptr %125, ptr %135, align 8, !tbaa !704
  store i32 %133, ptr %3, align 8, !tbaa !705
  %156 = call i32 @for_each_rtx(ptr noundef nonnull %149, ptr noundef nonnull @check_dependence, ptr noundef nonnull %3) #22
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158, !prof !706

158:                                              ; preds = %155
  %159 = trunc i64 %137 to i32
  call fastcc void @remove_from_table(ptr noundef nonnull %142, i32 noundef %159) #24
  br label %160

160:                                              ; preds = %158, %155
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  br label %161

161:                                              ; preds = %141, %160
  %162 = icmp eq ptr %144, null
  br i1 %162, label %163, label %141, !prof !707, !llvm.loop !708

163:                                              ; preds = %161, %136
  %164 = add nuw nsw i64 %137, 1
  %165 = icmp eq i64 %164, 32
  br i1 %165, label %167, label %136, !prof !709, !llvm.loop !710

166:                                              ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1992, ptr noundef nonnull @.str.4) #22
  br label %167

167:                                              ; preds = %163, %114, %101, %107, %32, %71, %166
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flush_hash_table() unnamed_addr #0 !prof !711 !PGOFuncName !712 {
  br label %1

1:                                                ; preds = %0, %19
  %2 = phi i64 [ 0, %0 ], [ %20, %19 ]
  %3 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !713

6:                                                ; preds = %1
  %7 = trunc i64 %2 to i32
  br label %8

8:                                                ; preds = %6, %16
  %9 = phi ptr [ %17, %16 ], [ %4, %6 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !430
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %15, !prof !714

14:                                               ; preds = %8
  tail call fastcc void @invalidate(ptr noundef nonnull %10, i32 noundef 0) #24
  br label %16

15:                                               ; preds = %8
  tail call fastcc void @remove_from_table(ptr noundef nonnull %9, i32 noundef %7) #24
  br label %16

16:                                               ; preds = %14, %15
  %17 = load ptr, ptr %3, align 8, !tbaa !426
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !prof !715, !llvm.loop !716

19:                                               ; preds = %16, %1
  %20 = add nuw nsw i64 %2, 1
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %1, !prof !717, !llvm.loop !718

22:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cse_process_notes(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !719 !PGOFuncName !720 {
  %4 = tail call fastcc ptr @cse_process_notes_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #24
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6, !prof !721

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !442
  br label %7

7:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_insn(ptr noundef %0) unnamed_addr #0 !prof !722 !PGOFuncName !723 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !442
  store ptr %0, ptr @this_insn, align 8, !tbaa !426
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %28, !prof !724

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !442
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11, !prof !725

11:                                               ; preds = %7, %22
  %12 = phi ptr [ %26, %22 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !442
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 25
  br i1 %17, label %18, label %22, !prof !726

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !442
  tail call fastcc void @invalidate(ptr noundef %20, i32 noundef 0) #24
  %21 = load ptr, ptr %13, align 8, !tbaa !442
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi ptr [ %21, %18 ], [ %14, %11 ]
  %24 = tail call fastcc ptr @canon_reg(ptr noundef %23, ptr noundef %0) #24
  store ptr %24, ptr %13, align 8, !tbaa !442
  %25 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !442
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %11, !prof !727, !llvm.loop !728

28:                                               ; preds = %22, %7, %1
  %29 = load i32, ptr %3, align 8
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %169 [
    i16 23, label %31
    i16 15, label %53
    i16 25, label %146
    i16 24, label %154
    i16 26, label %165
  ], !prof !729

31:                                               ; preds = %28
  %32 = alloca [80 x i8], align 16
  store ptr %3, ptr %32, align 16, !tbaa !730
  %33 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !442
  %35 = load ptr, ptr @global_rtl, align 16, !tbaa !426
  %36 = icmp eq ptr %34, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !442
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 44
  %42 = select i1 %36, i1 %41, i1 false
  br i1 %42, label %253, label %43, !prof !732

43:                                               ; preds = %31
  %44 = and i32 %39, 65535
  %45 = icmp eq i32 %44, 26
  br i1 %45, label %46, label %178, !prof !733

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %38, ptr noundef %0) #24
  %49 = tail call i32 @apply_change_group() #22
  %50 = load ptr, ptr %47, align 8, !tbaa !442
  %51 = tail call fastcc ptr @fold_rtx(ptr noundef %50, ptr noundef %0) #24
  %52 = load ptr, ptr %33, align 8, !tbaa !442
  tail call fastcc void @invalidate(ptr noundef %52, i32 noundef 0) #24
  br label %253

53:                                               ; preds = %28
  %54 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !442
  %56 = load i32, ptr %55, align 8, !tbaa !451
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, 80
  %59 = alloca i8, i64 %58, align 16
  %60 = icmp sgt i32 %56, 0
  br i1 %60, label %61, label %253, !prof !734

61:                                               ; preds = %53
  %62 = zext nneg i32 %56 to i64
  br label %66

63:                                               ; preds = %85
  br i1 %60, label %64, label %253, !prof !585

64:                                               ; preds = %63
  %65 = zext nneg i32 %56 to i64
  br label %88

66:                                               ; preds = %61, %85
  %67 = phi i64 [ 0, %61 ], [ %86, %85 ]
  %68 = load ptr, ptr %54, align 8, !tbaa !442
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !426
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 25
  br i1 %73, label %74, label %85, !prof !735

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !442
  %77 = load i32, ptr %76, align 8
  %78 = trunc i32 %77 to i16
  switch i16 %78, label %85 [
    i16 37, label %79
    i16 39, label %79
    i16 40, label %80
    i16 120, label %80
  ], !prof !736

79:                                               ; preds = %74, %74
  tail call fastcc void @invalidate(ptr noundef nonnull %76, i32 noundef 0) #24
  br label %85

80:                                               ; preds = %74, %74
  %81 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !442
  %83 = lshr i32 %77, 16
  %84 = and i32 %83, 255
  tail call fastcc void @invalidate(ptr noundef %82, i32 noundef %84) #24
  br label %85

85:                                               ; preds = %79, %80, %74, %66
  %86 = add nuw nsw i64 %67, 1
  %87 = icmp eq i64 %86, %62
  br i1 %87, label %63, label %66, !prof !737, !llvm.loop !738

88:                                               ; preds = %64, %142
  %89 = phi i64 [ 0, %64 ], [ %144, %142 ]
  %90 = phi i32 [ 0, %64 ], [ %143, %142 ]
  %91 = load ptr, ptr %54, align 8, !tbaa !442
  %92 = getelementptr inbounds %struct.rtvec_def, ptr %91, i64 0, i32 1, i64 %89
  %93 = load ptr, ptr %92, align 8, !tbaa !426
  %94 = load i32, ptr %93, align 8
  %95 = trunc i32 %94 to i16
  switch i16 %95, label %142 [
    i16 23, label %96
    i16 25, label %119
    i16 24, label %127
    i16 26, label %138
  ], !prof !739

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %98 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !442
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 26
  br i1 %102, label %103, label %109, !prof !740

103:                                              ; preds = %96
  %104 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %99, ptr noundef %0) #24
  %105 = tail call i32 @apply_change_group() #22
  %106 = load ptr, ptr %98, align 8, !tbaa !442
  %107 = tail call fastcc ptr @fold_rtx(ptr noundef %106, ptr noundef %0) #24
  %108 = load ptr, ptr %97, align 8, !tbaa !442
  tail call fastcc void @invalidate(ptr noundef %108, i32 noundef 0) #24
  br label %142

109:                                              ; preds = %96
  %110 = load ptr, ptr %97, align 8, !tbaa !442
  %111 = load ptr, ptr @global_rtl, align 16, !tbaa !426
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %115, !prof !741

113:                                              ; preds = %109
  %114 = icmp eq i32 %101, 44
  br i1 %114, label %142, label %115, !prof !742

115:                                              ; preds = %113, %109
  %116 = add nsw i32 %90, 1
  %117 = sext i32 %90 to i64
  %118 = getelementptr inbounds %struct.set, ptr %59, i64 %117
  store ptr %93, ptr %118, align 16, !tbaa !730
  br label %142

119:                                              ; preds = %88
  %120 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !442
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 43
  br i1 %124, label %125, label %142, !prof !743

125:                                              ; preds = %119
  %126 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %121, ptr noundef %0) #24
  br label %142

127:                                              ; preds = %88
  %128 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !442
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 65535
  %132 = icmp eq i32 %131, 37
  br i1 %132, label %133, label %136, !prof !744

133:                                              ; preds = %127
  %134 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %129) #24
  %135 = icmp ult i32 %134, 53
  br i1 %135, label %142, label %136, !prof !745

136:                                              ; preds = %133, %127
  %137 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %93, ptr noundef %0) #24
  br label %142

138:                                              ; preds = %88
  %139 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %93, ptr noundef %0) #24
  %140 = tail call i32 @apply_change_group() #22
  %141 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %93, ptr noundef %0) #24
  br label %142

142:                                              ; preds = %88, %133, %125, %119, %138, %136, %103, %113, %115
  %143 = phi i32 [ %90, %103 ], [ %90, %113 ], [ %116, %115 ], [ %90, %125 ], [ %90, %119 ], [ %90, %138 ], [ %90, %136 ], [ %90, %133 ], [ %90, %88 ]
  %144 = add nuw nsw i64 %89, 1
  %145 = icmp eq i64 %144, %65
  br i1 %145, label %176, label %88, !prof !737, !llvm.loop !746

146:                                              ; preds = %28
  %147 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !442
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 43
  br i1 %151, label %152, label %253, !prof !747

152:                                              ; preds = %146
  %153 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %148, ptr noundef %0) #24
  br label %253

154:                                              ; preds = %28
  %155 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !442
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 37
  br i1 %159, label %160, label %163, !prof !748

160:                                              ; preds = %154
  %161 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %156) #24
  %162 = icmp ult i32 %161, 53
  br i1 %162, label %169, label %163, !prof !748

163:                                              ; preds = %160, %154
  %164 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %156, ptr noundef %0) #24
  br label %253

165:                                              ; preds = %28
  %166 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %3, ptr noundef %0) #24
  %167 = tail call i32 @apply_change_group() #22
  %168 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %3, ptr noundef %0) #24
  br label %253

169:                                              ; preds = %28, %160
  %170 = load i32, ptr %0, align 8
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 7
  br i1 %172, label %173, label %253, !prof !749

173:                                              ; preds = %169
  %174 = load ptr, ptr %2, align 8, !tbaa !442
  %175 = tail call fastcc ptr @canon_reg(ptr noundef %174, ptr noundef nonnull %0) #24
  br label %253

176:                                              ; preds = %142
  %177 = icmp eq i32 %143, 1
  br i1 %177, label %178, label %208, !prof !750

178:                                              ; preds = %43, %176
  %179 = phi ptr [ %59, %176 ], [ %32, %43 ]
  %180 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !442
  %182 = icmp eq ptr %181, null
  br i1 %182, label %210, label %183, !prof !751

183:                                              ; preds = %178
  %184 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #22
  %185 = icmp eq ptr %184, null
  br i1 %185, label %210, label %186, !prof !752

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !442
  %189 = load ptr, ptr %179, align 16, !tbaa !730
  %190 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1, i32 0, i32 0, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !442
  %192 = tail call i32 @rtx_equal_p(ptr noundef %188, ptr noundef %191) #22
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %201, label %194, !prof !753

194:                                              ; preds = %186
  %195 = load ptr, ptr %179, align 16, !tbaa !730
  %196 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !442
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 40
  br i1 %200, label %201, label %210, !prof !754

201:                                              ; preds = %194, %186
  %202 = load ptr, ptr %187, align 8, !tbaa !442
  %203 = tail call fastcc ptr @canon_reg(ptr noundef %202, ptr noundef nonnull %0) #24
  %204 = tail call i32 @apply_change_group() #22
  %205 = load ptr, ptr %187, align 8, !tbaa !442
  %206 = tail call fastcc ptr @fold_rtx(ptr noundef %205, ptr noundef nonnull %0) #24
  %207 = tail call ptr @copy_rtx(ptr noundef %206) #22
  store ptr %207, ptr %187, align 8, !tbaa !442
  tail call void @df_notes_rescan(ptr noundef nonnull %0) #22
  br label %210

208:                                              ; preds = %176
  %209 = icmp sgt i32 %143, 0
  br i1 %209, label %210, label %253, !prof !585

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
  %219 = load ptr, ptr %218, align 8, !tbaa !730
  %220 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !442
  %222 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !442
  %224 = tail call fastcc ptr @canon_reg(ptr noundef %223, ptr noundef %0) #24
  %225 = load ptr, ptr %218, align 8, !tbaa !730
  %226 = getelementptr inbounds %struct.rtx_def, ptr %225, i64 0, i32 1, i32 0, i32 0, i64 1
  %227 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %226, ptr noundef %224, i8 noundef zeroext 1) #22
  %228 = load i32, ptr %221, align 8
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 120
  br i1 %230, label %231, label %240, !prof !755

231:                                              ; preds = %216
  %232 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !442
  %234 = tail call fastcc ptr @canon_reg(ptr noundef %233, ptr noundef %0) #24
  %235 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %232, ptr noundef %234, i8 noundef zeroext 1) #22
  %236 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 2
  %237 = load ptr, ptr %236, align 8, !tbaa !442
  %238 = tail call fastcc ptr @canon_reg(ptr noundef %237, ptr noundef %0) #24
  %239 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %236, ptr noundef %238, i8 noundef zeroext 1) #22
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
  ], !prof !756

245:                                              ; preds = %241, %241, %241
  %246 = getelementptr inbounds %struct.rtx_def, ptr %242, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !442
  br label %241, !llvm.loop !757

248:                                              ; preds = %241
  %249 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %242, ptr noundef %0) #24
  br label %250

250:                                              ; preds = %241, %248
  %251 = add nuw nsw i64 %217, 1
  %252 = icmp eq i64 %251, %215
  br i1 %252, label %257, label %216, !prof !758, !llvm.loop !759

253:                                              ; preds = %31, %53, %63, %163, %169, %173, %165, %146, %152, %46, %208
  %254 = phi ptr [ %59, %208 ], [ null, %163 ], [ null, %169 ], [ null, %173 ], [ null, %165 ], [ null, %146 ], [ null, %152 ], [ %32, %46 ], [ %59, %63 ], [ %59, %53 ], [ %32, %31 ]
  %255 = phi i32 [ %143, %208 ], [ 0, %163 ], [ 0, %169 ], [ 0, %173 ], [ 0, %165 ], [ 0, %146 ], [ 0, %152 ], [ 0, %46 ], [ 0, %63 ], [ 0, %53 ], [ 0, %31 ]
  %256 = tail call i32 @apply_change_group() #22
  br label %1900

257:                                              ; preds = %250
  %258 = tail call i32 @apply_change_group() #22
  br label %259

259:                                              ; preds = %257, %1620
  %260 = phi ptr [ %1627, %1620 ], [ %0, %257 ]
  %261 = phi i32 [ %1628, %1620 ], [ 0, %257 ]
  %262 = phi ptr [ %1625, %1620 ], [ %211, %257 ]
  %263 = phi ptr [ %1624, %1620 ], [ null, %257 ]
  %264 = phi i32 [ %1623, %1620 ], [ 0, %257 ]
  %265 = phi i32 [ %1622, %1620 ], [ 0, %257 ]
  %266 = phi i32 [ %1621, %1620 ], [ 0, %257 ]
  %267 = sext i32 %261 to i64
  %268 = getelementptr inbounds %struct.set, ptr %212, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !730
  %270 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !442
  %272 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !442
  %274 = load i32, ptr %273, align 8
  %275 = lshr i32 %274, 16
  %276 = and i32 %275, 255
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %282, !prof !760

278:                                              ; preds = %259
  %279 = load i32, ptr %271, align 8
  %280 = lshr i32 %279, 16
  %281 = and i32 %280, 255
  br label %282

282:                                              ; preds = %259, %278
  %283 = phi i32 [ %281, %278 ], [ %276, %259 ]
  %284 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 8
  %285 = trunc i32 %283 to i8
  store i8 %285, ptr %284, align 2
  %286 = icmp eq ptr %262, null
  br i1 %286, label %326, label %287, !prof !761

287:                                              ; preds = %282
  %288 = load i32, ptr %271, align 8
  %289 = and i32 %288, 65535
  %290 = icmp eq i32 %289, 40
  br i1 %290, label %291, label %299, !prof !762

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !442
  %294 = getelementptr inbounds %struct.rtx_def, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !442
  %296 = load i32, ptr %295, align 8
  %297 = lshr i32 %296, 16
  %298 = and i32 %297, 255
  br label %299

299:                                              ; preds = %291, %287
  %300 = phi i32 [ %298, %291 ], [ %283, %287 ]
  store i32 0, ptr @do_not_record, align 4, !tbaa !438
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !438
  %301 = load i32, ptr %262, align 8
  %302 = and i32 %301, 65535
  %303 = icmp eq i32 %302, 37
  br i1 %303, label %304, label %312, !prof !763

304:                                              ; preds = %299
  %305 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %262) #24
  %306 = icmp ugt i32 %305, 52
  br i1 %306, label %307, label %312, !prof !764

307:                                              ; preds = %304
  %308 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %305) #24
  %309 = getelementptr inbounds %struct.cse_reg_info, ptr %308, i64 0, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !447
  %311 = add i32 %310, 4736
  br label %314

312:                                              ; preds = %304, %299
  %313 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %262, i32 noundef %300) #24
  br label %314

314:                                              ; preds = %312, %307
  %315 = phi i32 [ %311, %307 ], [ %313, %312 ]
  %316 = and i32 %315, 31
  %317 = load i32, ptr @do_not_record, align 4, !tbaa !438
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %322, !prof !765

319:                                              ; preds = %314
  %320 = tail call fastcc ptr @lookup(ptr noundef nonnull %262, i32 noundef %316, i32 noundef %300) #24
  %321 = load i32, ptr @do_not_record, align 4, !tbaa !438
  br label %322

322:                                              ; preds = %319, %314
  %323 = phi i32 [ %317, %314 ], [ %321, %319 ]
  %324 = phi ptr [ %263, %314 ], [ %320, %319 ]
  %325 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !438
  br label %326

326:                                              ; preds = %322, %282
  %327 = phi i32 [ %316, %322 ], [ %266, %282 ]
  %328 = phi i32 [ %325, %322 ], [ %265, %282 ]
  %329 = phi i32 [ %323, %322 ], [ %264, %282 ]
  %330 = phi ptr [ %324, %322 ], [ %263, %282 ]
  %331 = load i32, ptr %271, align 8
  %332 = and i32 %331, 65535
  %333 = icmp eq i32 %332, 40
  %334 = select i1 %333, ptr null, ptr %262, !prof !755
  %335 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %273, ptr noundef %260) #24
  store i32 0, ptr @do_not_record, align 4, !tbaa !438
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !438
  %336 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 1
  store ptr %273, ptr %336, align 8, !tbaa !766
  %337 = load i32, ptr %273, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 37
  br i1 %339, label %340, label %348, !prof !767

340:                                              ; preds = %326
  %341 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %273) #24
  %342 = icmp ugt i32 %341, 52
  br i1 %342, label %343, label %348, !prof !768

343:                                              ; preds = %340
  %344 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %341) #24
  %345 = getelementptr inbounds %struct.cse_reg_info, ptr %344, i64 0, i32 1
  %346 = load i32, ptr %345, align 4, !tbaa !447
  %347 = add i32 %346, 4736
  br label %350

348:                                              ; preds = %340, %326
  %349 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %273, i32 noundef %283) #24
  br label %350

350:                                              ; preds = %348, %343
  %351 = phi i32 [ %347, %343 ], [ %349, %348 ]
  %352 = and i32 %351, 31
  %353 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 3
  store i32 %352, ptr %353, align 8, !tbaa !769
  %354 = load i32, ptr @do_not_record, align 4, !tbaa !438
  %355 = trunc i32 %354 to i8
  %356 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 7
  store i8 %355, ptr %356, align 1, !tbaa !770
  %357 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !438
  %358 = trunc i32 %357 to i8
  %359 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 6
  store i8 %358, ptr %359, align 8, !tbaa !771
  %360 = load i32, ptr %273, align 8
  %361 = and i32 %360, 65535
  %362 = icmp eq i32 %361, 43
  br i1 %362, label %363, label %374, !prof !772

363:                                              ; preds = %350
  %364 = tail call ptr @find_reg_note(ptr noundef %260, i32 noundef 3, ptr noundef null) #22
  %365 = icmp eq ptr %364, null
  br i1 %365, label %374, label %366, !prof !773

366:                                              ; preds = %363
  %367 = load i32, ptr %271, align 8
  %368 = and i32 %367, 65535
  %369 = icmp eq i32 %368, 37
  br i1 %369, label %370, label %374, !prof !774

370:                                              ; preds = %366
  %371 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %271) #24
  %372 = icmp ugt i32 %371, 52
  br i1 %372, label %373, label %374, !prof !774

373:                                              ; preds = %370
  store i8 1, ptr %356, align 1, !tbaa !770
  br label %417

374:                                              ; preds = %370, %366, %363, %350
  %375 = load i8, ptr %356, align 1, !tbaa !770
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %377, label %417, !prof !775

377:                                              ; preds = %374
  %378 = load i32, ptr %353, align 8, !tbaa !769
  %379 = tail call fastcc ptr @lookup(ptr noundef nonnull %273, i32 noundef %378, i32 noundef %283) #24
  %380 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 2
  store ptr %379, ptr %380, align 8, !tbaa !776
  %381 = icmp ne ptr %379, null
  %382 = icmp ne ptr %334, null
  %383 = select i1 %381, i1 %382, i1 false
  %384 = icmp eq ptr %330, null
  br i1 %383, label %385, label %416, !prof !777

385:                                              ; preds = %377
  br i1 %384, label %422, label %386, !prof !778

386:                                              ; preds = %385
  %387 = getelementptr inbounds %struct.table_elt, ptr %379, i64 0, i32 6
  %388 = load ptr, ptr %387, align 8, !tbaa !779
  %389 = getelementptr inbounds %struct.table_elt, ptr %330, i64 0, i32 6
  %390 = load ptr, ptr %389, align 8, !tbaa !779
  %391 = icmp eq ptr %388, %390
  br i1 %391, label %422, label %392, !prof !780

392:                                              ; preds = %386
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %379, ptr noundef nonnull %330) #24
  %393 = load i32, ptr %262, align 8
  %394 = and i32 %393, 65535
  %395 = icmp eq i32 %394, 37
  br i1 %395, label %396, label %404, !prof !781

396:                                              ; preds = %392
  %397 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %262) #24
  %398 = icmp ugt i32 %397, 52
  br i1 %398, label %399, label %404

399:                                              ; preds = %396
  %400 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %397) #24
  %401 = getelementptr inbounds %struct.cse_reg_info, ptr %400, i64 0, i32 1
  %402 = load i32, ptr %401, align 4, !tbaa !447
  %403 = add i32 %402, 4736
  br label %409

404:                                              ; preds = %396, %392
  %405 = getelementptr inbounds %struct.table_elt, ptr %379, i64 0, i32 10
  %406 = load i8, ptr %405, align 8
  %407 = zext i8 %406 to i32
  %408 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %262, i32 noundef %407) #24
  br label %409

409:                                              ; preds = %404, %399
  %410 = phi i32 [ %403, %399 ], [ %408, %404 ]
  %411 = and i32 %410, 31
  %412 = getelementptr inbounds %struct.table_elt, ptr %379, i64 0, i32 10
  %413 = load i8, ptr %412, align 8
  %414 = zext i8 %413 to i32
  %415 = tail call fastcc ptr @lookup(ptr noundef nonnull %262, i32 noundef %411, i32 noundef %414) #24
  br label %422

416:                                              ; preds = %377
  br i1 %384, label %420, label %422, !prof !782

417:                                              ; preds = %373, %374
  %418 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 2
  store ptr null, ptr %418, align 8, !tbaa !776
  %419 = icmp eq ptr %330, null
  br i1 %419, label %443, label %422, !prof !782

420:                                              ; preds = %416
  %421 = icmp eq ptr %379, null
  br i1 %421, label %443, label %422, !prof !783

422:                                              ; preds = %417, %416, %385, %386, %409, %420
  %423 = phi ptr [ null, %420 ], [ null, %385 ], [ %330, %386 ], [ %415, %409 ], [ %330, %416 ], [ %330, %417 ]
  %424 = phi i32 [ %327, %420 ], [ %327, %385 ], [ %327, %386 ], [ %411, %409 ], [ %327, %416 ], [ %327, %417 ]
  %425 = phi ptr [ %379, %420 ], [ %379, %385 ], [ %379, %386 ], [ %379, %409 ], [ %330, %416 ], [ %330, %417 ]
  %426 = phi ptr [ %334, %420 ], [ %262, %385 ], [ null, %386 ], [ null, %409 ], [ %334, %416 ], [ %334, %417 ]
  %427 = phi ptr [ %380, %420 ], [ %380, %385 ], [ %380, %386 ], [ %380, %409 ], [ %380, %416 ], [ %418, %417 ]
  %428 = getelementptr inbounds %struct.table_elt, ptr %425, i64 0, i32 6
  %429 = load ptr, ptr %428, align 8, !tbaa !426
  %430 = icmp eq ptr %429, null
  br i1 %430, label %443, label %431, !prof !784

431:                                              ; preds = %422, %436
  %432 = phi ptr [ %438, %436 ], [ %429, %422 ]
  %433 = getelementptr inbounds %struct.table_elt, ptr %432, i64 0, i32 12
  %434 = load i8, ptr %433, align 2, !tbaa !785
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %436, label %440, !prof !786

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.table_elt, ptr %432, i64 0, i32 4
  %438 = load ptr, ptr %437, align 8, !tbaa !426
  %439 = icmp eq ptr %438, null
  br i1 %439, label %443, label %431, !prof !787, !llvm.loop !788

440:                                              ; preds = %431
  %441 = load ptr, ptr %432, align 8, !tbaa !430
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %480, !prof !594

443:                                              ; preds = %436, %417, %422, %420, %440
  %444 = phi ptr [ %425, %440 ], [ null, %420 ], [ null, %422 ], [ null, %417 ], [ null, %436 ]
  %445 = phi ptr [ %427, %440 ], [ %380, %420 ], [ %427, %422 ], [ %418, %417 ], [ %427, %436 ]
  %446 = phi ptr [ %426, %440 ], [ %334, %420 ], [ %426, %422 ], [ %334, %417 ], [ %426, %436 ]
  %447 = phi ptr [ %425, %440 ], [ null, %420 ], [ %425, %422 ], [ null, %417 ], [ %425, %436 ]
  %448 = phi i32 [ %424, %440 ], [ %327, %420 ], [ %424, %422 ], [ %327, %417 ], [ %424, %436 ]
  %449 = phi ptr [ %423, %440 ], [ null, %420 ], [ %423, %422 ], [ null, %417 ], [ %423, %436 ]
  %450 = phi i1 [ true, %440 ], [ false, %420 ], [ true, %422 ], [ false, %417 ], [ true, %436 ]
  %451 = load i32, ptr %335, align 8
  %452 = and i32 %451, 65535
  %453 = zext nneg i32 %452 to i64
  %454 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %453
  %455 = load i32, ptr %454, align 4, !tbaa !438
  %456 = icmp eq i32 %455, 9
  br i1 %456, label %480, label %457, !prof !789

457:                                              ; preds = %443
  %458 = icmp eq i32 %452, 50
  br i1 %458, label %459, label %471, !prof !790

459:                                              ; preds = %457
  %460 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1
  %461 = load ptr, ptr %460, align 8, !tbaa !442
  %462 = load i32, ptr %461, align 8
  %463 = and i32 %462, 65535
  %464 = icmp eq i32 %463, 44
  br i1 %464, label %465, label %471, !prof !791

465:                                              ; preds = %459
  %466 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1, i32 0, i32 0, i64 1
  %467 = load ptr, ptr %466, align 8, !tbaa !442
  %468 = load i32, ptr %467, align 8
  %469 = and i32 %468, 65535
  %470 = icmp eq i32 %469, 44
  br i1 %470, label %480, label %471

471:                                              ; preds = %465, %459, %457
  %472 = icmp eq ptr %446, null
  br i1 %472, label %509, label %473, !prof !792

473:                                              ; preds = %471
  %474 = load i32, ptr %446, align 8
  %475 = and i32 %474, 65535
  %476 = zext nneg i32 %475 to i64
  %477 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %476
  %478 = load i32, ptr %477, align 4, !tbaa !438
  %479 = icmp eq i32 %478, 9
  br i1 %479, label %480, label %509, !prof !793

480:                                              ; preds = %473, %440, %443, %465
  %481 = phi ptr [ %445, %465 ], [ %445, %443 ], [ %427, %440 ], [ %445, %473 ]
  %482 = phi ptr [ %446, %465 ], [ %446, %443 ], [ %426, %440 ], [ %446, %473 ]
  %483 = phi ptr [ %447, %465 ], [ %447, %443 ], [ %425, %440 ], [ %447, %473 ]
  %484 = phi i32 [ %448, %465 ], [ %448, %443 ], [ %424, %440 ], [ %448, %473 ]
  %485 = phi ptr [ %449, %465 ], [ %449, %443 ], [ %423, %440 ], [ %449, %473 ]
  %486 = phi i1 [ %450, %465 ], [ %450, %443 ], [ true, %440 ], [ %450, %473 ]
  %487 = phi ptr [ %447, %465 ], [ %447, %443 ], [ %425, %440 ], [ %449, %473 ]
  %488 = phi ptr [ %335, %465 ], [ %335, %443 ], [ %441, %440 ], [ %446, %473 ]
  %489 = icmp eq ptr %487, null
  br i1 %489, label %490, label %509, !prof !794

490:                                              ; preds = %480
  %491 = load i32, ptr %488, align 8
  %492 = and i32 %491, 65535
  %493 = icmp eq i32 %492, 37
  br i1 %493, label %494, label %502, !prof !795

494:                                              ; preds = %490
  %495 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %488) #24
  %496 = icmp ugt i32 %495, 52
  br i1 %496, label %497, label %502

497:                                              ; preds = %494
  %498 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %495) #24
  %499 = getelementptr inbounds %struct.cse_reg_info, ptr %498, i64 0, i32 1
  %500 = load i32, ptr %499, align 4, !tbaa !447
  %501 = add i32 %500, 4736
  br label %504

502:                                              ; preds = %494, %490
  %503 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %488, i32 noundef %283) #24
  br label %504

504:                                              ; preds = %502, %497
  %505 = phi i32 [ %501, %497 ], [ %503, %502 ]
  %506 = and i32 %505, 31
  %507 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 10
  store i32 %506, ptr %507, align 8, !tbaa !796
  %508 = tail call fastcc ptr @lookup(ptr noundef nonnull %488, i32 noundef %506, i32 noundef %283) #24
  br label %509

509:                                              ; preds = %471, %473, %504, %480
  %510 = phi i1 [ true, %504 ], [ true, %480 ], [ false, %473 ], [ false, %471 ]
  %511 = phi ptr [ %488, %504 ], [ %488, %480 ], [ null, %473 ], [ null, %471 ]
  %512 = phi i1 [ %486, %504 ], [ %486, %480 ], [ %450, %473 ], [ %450, %471 ]
  %513 = phi ptr [ %485, %504 ], [ %485, %480 ], [ %449, %473 ], [ %449, %471 ]
  %514 = phi i32 [ %484, %504 ], [ %484, %480 ], [ %448, %473 ], [ %448, %471 ]
  %515 = phi ptr [ %483, %504 ], [ %483, %480 ], [ %447, %473 ], [ %447, %471 ]
  %516 = phi ptr [ %482, %504 ], [ %482, %480 ], [ %446, %473 ], [ null, %471 ]
  %517 = phi ptr [ %481, %504 ], [ %481, %480 ], [ %445, %473 ], [ %445, %471 ]
  %518 = phi ptr [ %508, %504 ], [ %487, %480 ], [ %444, %473 ], [ %444, %471 ]
  %519 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 9
  store ptr %511, ptr %519, align 8, !tbaa !797
  %520 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 11
  store ptr %518, ptr %520, align 8, !tbaa !798
  %521 = icmp ne ptr %518, null
  %522 = and i1 %512, %521
  br i1 %522, label %523, label %530, !prof !799

523:                                              ; preds = %509
  %524 = getelementptr inbounds %struct.table_elt, ptr %518, i64 0, i32 6
  %525 = load ptr, ptr %524, align 8, !tbaa !779
  %526 = getelementptr inbounds %struct.table_elt, ptr %515, i64 0, i32 6
  %527 = load ptr, ptr %526, align 8, !tbaa !779
  %528 = icmp eq ptr %525, %527
  br i1 %528, label %534, label %529, !prof !800

529:                                              ; preds = %523
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %515, ptr noundef nonnull %518) #24
  br label %534

530:                                              ; preds = %509
  %531 = icmp eq ptr %515, null
  %532 = and i1 %531, %521
  br i1 %532, label %533, label %534, !prof !801

533:                                              ; preds = %530
  br label %534

534:                                              ; preds = %523, %530, %533, %529
  %535 = phi ptr [ %515, %529 ], [ %518, %533 ], [ %515, %530 ], [ %515, %523 ]
  br i1 %510, label %536, label %648, !prof !802

536:                                              ; preds = %534
  %537 = load i32, ptr %511, align 8
  %538 = and i32 %537, 65535
  %539 = icmp eq i32 %538, 35
  br i1 %539, label %545, label %540, !prof !803

540:                                              ; preds = %536
  br i1 %521, label %541, label %580, !prof !804

541:                                              ; preds = %540
  %542 = getelementptr inbounds %struct.table_elt, ptr %518, i64 0, i32 7
  %543 = load ptr, ptr %542, align 8, !tbaa !805
  %544 = icmp eq ptr %543, null
  br i1 %544, label %580, label %545, !prof !806

545:                                              ; preds = %541, %536
  %546 = tail call fastcc ptr @use_related_value(ptr noundef nonnull %511, ptr noundef %518) #24
  %547 = icmp eq ptr %546, null
  br i1 %547, label %580, label %548, !prof !807

548:                                              ; preds = %545
  %549 = load i32, ptr %546, align 8
  %550 = and i32 %549, 65535
  %551 = icmp eq i32 %550, 37
  br i1 %551, label %552, label %560, !prof !808

552:                                              ; preds = %548
  %553 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %546) #24
  %554 = icmp ugt i32 %553, 52
  br i1 %554, label %555, label %560

555:                                              ; preds = %552
  %556 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %553) #24
  %557 = getelementptr inbounds %struct.cse_reg_info, ptr %556, i64 0, i32 1
  %558 = load i32, ptr %557, align 4, !tbaa !447
  %559 = add i32 %558, 4736
  br label %562

560:                                              ; preds = %552, %548
  %561 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %546, i32 noundef %283) #24
  br label %562

562:                                              ; preds = %560, %555
  %563 = phi i32 [ %559, %555 ], [ %561, %560 ]
  %564 = and i32 %563, 31
  %565 = tail call fastcc ptr @lookup(ptr noundef nonnull %546, i32 noundef %564, i32 noundef %283) #24
  %566 = icmp ne ptr %565, null
  %567 = icmp ne ptr %535, null
  %568 = and i1 %567, %566
  br i1 %568, label %569, label %576

569:                                              ; preds = %562
  %570 = getelementptr inbounds %struct.table_elt, ptr %535, i64 0, i32 6
  %571 = load ptr, ptr %570, align 8, !tbaa !779
  %572 = getelementptr inbounds %struct.table_elt, ptr %565, i64 0, i32 6
  %573 = load ptr, ptr %572, align 8, !tbaa !779
  %574 = icmp eq ptr %571, %573
  br i1 %574, label %580, label %575

575:                                              ; preds = %569
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %535, ptr noundef nonnull %565) #24
  br label %580

576:                                              ; preds = %562
  br i1 %566, label %577, label %736, !prof !808

577:                                              ; preds = %576
  %578 = icmp eq ptr %535, null
  %579 = select i1 %578, ptr %565, ptr %535
  br label %736

580:                                              ; preds = %540, %541, %545, %569, %575
  %581 = load i32, ptr %511, align 8
  %582 = and i32 %581, 65535
  %583 = icmp eq i32 %582, 30
  br i1 %583, label %584, label %648, !prof !809

584:                                              ; preds = %580
  %585 = zext nneg i32 %283 to i64
  %586 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %585
  %587 = load i8, ptr %586, align 1, !tbaa !442
  %588 = icmp eq i8 %587, 2
  br i1 %588, label %589, label %648, !prof !810

589:                                              ; preds = %584
  %590 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %585
  %591 = load i8, ptr %590, align 1, !tbaa !442
  %592 = icmp ult i8 %591, 4
  br i1 %592, label %593, label %648, !prof !811

593:                                              ; preds = %589
  %594 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %585
  %595 = load i8, ptr %594, align 1, !tbaa !442
  %596 = icmp eq i8 %595, 0
  br i1 %596, label %648, label %597, !prof !436

597:                                              ; preds = %593, %643
  %598 = phi i8 [ %646, %643 ], [ %595, %593 ]
  %599 = phi ptr [ %644, %643 ], [ null, %593 ]
  %600 = zext i8 %598 to i32
  %601 = zext i8 %598 to i64
  %602 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %601
  %603 = load i8, ptr %602, align 1, !tbaa !442
  %604 = icmp ult i8 %603, 5
  %605 = icmp eq ptr %599, null
  %606 = select i1 %604, i1 %605, i1 false
  br i1 %606, label %607, label %648, !prof !812

607:                                              ; preds = %597
  %608 = load i32, ptr %511, align 8
  %609 = and i32 %608, 65535
  %610 = icmp eq i32 %609, 37
  br i1 %610, label %611, label %619, !prof !813

611:                                              ; preds = %607
  %612 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %511) #24
  %613 = icmp ugt i32 %612, 52
  br i1 %613, label %614, label %619

614:                                              ; preds = %611
  %615 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %612) #24
  %616 = getelementptr inbounds %struct.cse_reg_info, ptr %615, i64 0, i32 1
  %617 = load i32, ptr %616, align 4, !tbaa !447
  %618 = add i32 %617, 4736
  br label %621

619:                                              ; preds = %611, %607
  %620 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %511, i32 noundef %600) #24
  br label %621

621:                                              ; preds = %619, %614
  %622 = phi i32 [ %618, %614 ], [ %620, %619 ]
  %623 = and i32 %622, 31
  %624 = tail call fastcc ptr @lookup(ptr noundef nonnull %511, i32 noundef %623, i32 noundef %600) #24
  %625 = icmp eq ptr %624, null
  br i1 %625, label %643, label %626, !prof !814

626:                                              ; preds = %621
  %627 = getelementptr inbounds %struct.table_elt, ptr %624, i64 0, i32 6
  %628 = load ptr, ptr %627, align 8, !tbaa !426
  %629 = icmp eq ptr %628, null
  br i1 %629, label %643, label %634, !prof !815

630:                                              ; preds = %634
  %631 = getelementptr inbounds %struct.table_elt, ptr %635, i64 0, i32 4
  %632 = load ptr, ptr %631, align 8, !tbaa !426
  %633 = icmp eq ptr %632, null
  br i1 %633, label %643, label %634, !prof !816, !llvm.loop !817

634:                                              ; preds = %626, %630
  %635 = phi ptr [ %632, %630 ], [ %628, %626 ]
  %636 = load ptr, ptr %635, align 8, !tbaa !430
  %637 = load i32, ptr %636, align 8
  %638 = and i32 %637, 65535
  %639 = icmp eq i32 %638, 37
  br i1 %639, label %640, label %630, !prof !818

640:                                              ; preds = %634
  %641 = load ptr, ptr @rtl_hooks, align 8, !tbaa !819
  %642 = tail call ptr %641(i32 noundef %283, ptr noundef nonnull %636) #22
  br label %643

643:                                              ; preds = %630, %626, %640, %621
  %644 = phi ptr [ null, %621 ], [ %642, %640 ], [ null, %626 ], [ null, %630 ]
  %645 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %601
  %646 = load i8, ptr %645, align 1, !tbaa !442
  %647 = icmp eq i8 %646, 0
  br i1 %647, label %648, label %597, !prof !821, !llvm.loop !822

648:                                              ; preds = %597, %643, %593, %534, %589, %584, %580
  %649 = phi ptr [ null, %589 ], [ null, %584 ], [ null, %580 ], [ null, %534 ], [ null, %593 ], [ %599, %597 ], [ %644, %643 ]
  %650 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !438
  %651 = icmp eq i32 %650, 0
  %652 = icmp ne ptr %649, null
  %653 = select i1 %651, i1 true, i1 %652
  br i1 %653, label %736, label %654, !prof !823

654:                                              ; preds = %648
  %655 = load i32, ptr %273, align 8
  %656 = and i32 %655, 65535
  %657 = icmp eq i32 %656, 61
  br i1 %657, label %658, label %736, !prof !824

658:                                              ; preds = %654
  %659 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1
  %660 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1, i32 0, i32 0, i64 1
  %661 = load ptr, ptr %660, align 8, !tbaa !442
  %662 = load i32, ptr %661, align 8
  %663 = and i32 %662, 65535
  %664 = icmp eq i32 %663, 30
  br i1 %664, label %665, label %736, !prof !825

665:                                              ; preds = %658
  %666 = zext nneg i32 %283 to i64
  %667 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %666
  %668 = load i8, ptr %667, align 1, !tbaa !442
  %669 = icmp ult i8 %668, 4
  br i1 %669, label %670, label %736, !prof !826

670:                                              ; preds = %665
  %671 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef 0, ptr noundef null, ptr noundef nonnull %661) #22
  %672 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 0, i32 1
  %673 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %666
  %674 = load i8, ptr %673, align 1, !tbaa !442
  %675 = zext i8 %674 to i64
  %676 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %675
  %677 = load i8, ptr %676, align 1, !tbaa !442
  %678 = icmp ult i8 %677, 5
  br i1 %678, label %679, label %736, !prof !827

679:                                              ; preds = %670, %729
  %680 = phi i64 [ %732, %729 ], [ %675, %670 ]
  %681 = phi i8 [ %731, %729 ], [ %674, %670 ]
  %682 = zext i8 %681 to i32
  %683 = load ptr, ptr @rtl_hooks, align 8, !tbaa !819
  %684 = load ptr, ptr %659, align 8, !tbaa !442
  %685 = tail call ptr %683(i32 noundef %682, ptr noundef %684) #22
  %686 = icmp eq ptr %685, null
  br i1 %686, label %729, label %687, !prof !828

687:                                              ; preds = %679
  %688 = load i32, ptr %671, align 8
  %689 = shl nuw nsw i32 %682, 16
  %690 = and i32 %688, -16711681
  %691 = or disjoint i32 %690, %689
  store i32 %691, ptr %671, align 8
  store ptr %685, ptr %672, align 8, !tbaa !442
  %692 = and i32 %688, 65535
  %693 = icmp eq i32 %692, 37
  br i1 %693, label %694, label %702, !prof !828

694:                                              ; preds = %687
  %695 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %671) #24
  %696 = icmp ugt i32 %695, 52
  br i1 %696, label %697, label %702

697:                                              ; preds = %694
  %698 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %695) #24
  %699 = getelementptr inbounds %struct.cse_reg_info, ptr %698, i64 0, i32 1
  %700 = load i32, ptr %699, align 4, !tbaa !447
  %701 = add i32 %700, 4736
  br label %704

702:                                              ; preds = %694, %687
  %703 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %671, i32 noundef %682) #24
  br label %704

704:                                              ; preds = %702, %697
  %705 = phi i32 [ %701, %697 ], [ %703, %702 ]
  %706 = and i32 %705, 31
  %707 = tail call fastcc ptr @lookup(ptr noundef nonnull %671, i32 noundef %706, i32 noundef %682) #24
  %708 = icmp eq ptr %707, null
  br i1 %708, label %729, label %709, !prof !829

709:                                              ; preds = %704
  %710 = getelementptr inbounds %struct.table_elt, ptr %707, i64 0, i32 6
  %711 = load ptr, ptr %710, align 8, !tbaa !426
  %712 = icmp eq ptr %711, null
  br i1 %712, label %726, label %717

713:                                              ; preds = %717
  %714 = getelementptr inbounds %struct.table_elt, ptr %718, i64 0, i32 4
  %715 = load ptr, ptr %714, align 8, !tbaa !426
  %716 = icmp eq ptr %715, null
  br i1 %716, label %726, label %717, !llvm.loop !830

717:                                              ; preds = %709, %713
  %718 = phi ptr [ %715, %713 ], [ %711, %709 ]
  %719 = load ptr, ptr %718, align 8, !tbaa !430
  %720 = load i32, ptr %719, align 8
  %721 = and i32 %720, 65535
  %722 = icmp eq i32 %721, 37
  br i1 %722, label %723, label %713

723:                                              ; preds = %717
  %724 = load ptr, ptr @rtl_hooks, align 8, !tbaa !819
  %725 = tail call ptr %724(i32 noundef %283, ptr noundef nonnull %719) #22
  br label %726

726:                                              ; preds = %713, %709, %723
  %727 = phi ptr [ %725, %723 ], [ null, %709 ], [ null, %713 ]
  %728 = icmp eq ptr %727, null
  br i1 %728, label %729, label %736

729:                                              ; preds = %726, %679, %704
  %730 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %680
  %731 = load i8, ptr %730, align 1, !tbaa !442
  %732 = zext i8 %731 to i64
  %733 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %732
  %734 = load i8, ptr %733, align 1, !tbaa !442
  %735 = icmp ult i8 %734, 5
  br i1 %735, label %679, label %736, !prof !831, !llvm.loop !832

736:                                              ; preds = %729, %726, %670, %576, %577, %665, %658, %654, %648
  %737 = phi ptr [ %535, %648 ], [ %535, %665 ], [ %535, %658 ], [ %535, %654 ], [ %535, %576 ], [ %579, %577 ], [ %535, %670 ], [ %535, %726 ], [ %535, %729 ]
  %738 = phi ptr [ %649, %648 ], [ null, %665 ], [ null, %658 ], [ null, %654 ], [ %546, %576 ], [ %546, %577 ], [ null, %670 ], [ null, %729 ], [ %727, %726 ]
  %739 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !833
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %752, label %741, !prof !845

741:                                              ; preds = %736
  %742 = icmp eq ptr %738, null
  %743 = and i1 %510, %742
  br i1 %743, label %744, label %752

744:                                              ; preds = %741
  %745 = load i32, ptr %511, align 8
  %746 = and i32 %745, 65535
  %747 = icmp eq i32 %746, 30
  br i1 %747, label %748, label %752

748:                                              ; preds = %744
  %749 = tail call fastcc ptr @try_const_anchors(ptr noundef nonnull %511, i32 noundef %283) #24
  %750 = icmp ne ptr %749, null
  %751 = zext i1 %750 to i32
  br label %752

752:                                              ; preds = %748, %744, %741, %736
  %753 = phi i32 [ %751, %748 ], [ 0, %744 ], [ 0, %741 ], [ 0, %736 ]
  %754 = phi ptr [ %749, %748 ], [ null, %744 ], [ %738, %741 ], [ %738, %736 ]
  %755 = icmp eq ptr %273, %335
  %756 = select i1 %755, ptr null, ptr %335, !prof !846
  %757 = icmp eq ptr %737, null
  br i1 %757, label %878, label %758, !prof !847

758:                                              ; preds = %752
  %759 = getelementptr inbounds %struct.table_elt, ptr %737, i64 0, i32 6
  %760 = load ptr, ptr %759, align 8, !tbaa !779
  %761 = icmp eq ptr %760, null
  br i1 %761, label %878, label %762, !prof !594

762:                                              ; preds = %758, %870
  %763 = phi ptr [ %874, %870 ], [ %273, %758 ]
  %764 = phi ptr [ %873, %870 ], [ %756, %758 ]
  %765 = phi ptr [ %876, %870 ], [ %760, %758 ]
  %766 = phi ptr [ %872, %870 ], [ %516, %758 ]
  %767 = phi ptr [ %871, %870 ], [ %754, %758 ]
  %768 = load ptr, ptr %765, align 8, !tbaa !430
  %769 = load i32, ptr %768, align 8
  %770 = and i32 %769, 65535
  %771 = icmp eq i32 %770, 37
  br i1 %771, label %814, label %772, !prof !848

772:                                              ; preds = %762
  %773 = tail call i32 @exp_equiv_p(ptr noundef nonnull %768, ptr noundef nonnull %768, i32 noundef 1, i8 noundef zeroext 0) #24, !range !503
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %870, label %775, !prof !849

775:                                              ; preds = %772
  %776 = icmp eq i32 %770, 39
  br i1 %776, label %777, label %814, !prof !850

777:                                              ; preds = %775
  %778 = load ptr, ptr %765, align 8, !tbaa !430
  %779 = load i32, ptr %778, align 8
  %780 = lshr i32 %779, 16
  %781 = and i32 %780, 255
  %782 = zext nneg i32 %781 to i64
  %783 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %782
  %784 = load i8, ptr %783, align 1, !tbaa !442
  %785 = getelementptr inbounds %struct.rtx_def, ptr %778, i64 0, i32 1
  %786 = load ptr, ptr %785, align 8, !tbaa !442
  %787 = load i32, ptr %786, align 8
  %788 = lshr i32 %787, 16
  %789 = and i32 %788, 255
  %790 = zext nneg i32 %789 to i64
  %791 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %790
  %792 = load i8, ptr %791, align 1, !tbaa !442
  %793 = icmp ugt i8 %784, %792
  br i1 %793, label %794, label %814, !prof !851

794:                                              ; preds = %777
  %795 = icmp eq ptr %763, null
  br i1 %795, label %870, label %796

796:                                              ; preds = %794
  %797 = load i32, ptr %763, align 8
  %798 = and i32 %797, 65535
  %799 = icmp eq i32 %798, 39
  br i1 %799, label %800, label %870

800:                                              ; preds = %796
  %801 = lshr i32 %797, 16
  %802 = and i32 %801, 255
  %803 = icmp eq i32 %802, %781
  br i1 %803, label %804, label %870

804:                                              ; preds = %800
  %805 = getelementptr inbounds %struct.rtx_def, ptr %763, i64 0, i32 1
  %806 = load ptr, ptr %805, align 8, !tbaa !442
  %807 = load i32, ptr %806, align 8
  %808 = lshr i32 %807, 16
  %809 = and i32 %808, 255
  %810 = zext nneg i32 %809 to i64
  %811 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %810
  %812 = load i8, ptr %811, align 1, !tbaa !442
  %813 = icmp ult i8 %812, %792
  br i1 %813, label %819, label %870

814:                                              ; preds = %762, %777, %775
  %815 = icmp eq ptr %763, null
  br i1 %815, label %826, label %816, !prof !852

816:                                              ; preds = %814
  %817 = load i32, ptr %763, align 8
  %818 = and i32 %817, 65535
  br label %819

819:                                              ; preds = %816, %804
  %820 = phi i32 [ %818, %816 ], [ 39, %804 ]
  %821 = icmp eq i32 %820, %770
  br i1 %821, label %822, label %826, !prof !853

822:                                              ; preds = %819
  %823 = load ptr, ptr %765, align 8, !tbaa !430
  %824 = tail call i32 @rtx_equal_p(ptr noundef nonnull %763, ptr noundef %823) #22
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %857, !prof !854

826:                                              ; preds = %822, %819, %814
  %827 = icmp eq ptr %764, null
  br i1 %827, label %836, label %828, !prof !855

828:                                              ; preds = %826
  %829 = load i32, ptr %764, align 8
  %830 = and i32 %829, 65535
  %831 = icmp eq i32 %830, %770
  br i1 %831, label %832, label %836, !prof !856

832:                                              ; preds = %828
  %833 = load ptr, ptr %765, align 8, !tbaa !430
  %834 = tail call i32 @rtx_equal_p(ptr noundef nonnull %764, ptr noundef %833) #22
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %857, !prof !857

836:                                              ; preds = %832, %828, %826
  %837 = icmp eq ptr %766, null
  br i1 %837, label %846, label %838, !prof !858

838:                                              ; preds = %836
  %839 = load i32, ptr %766, align 8
  %840 = and i32 %839, 65535
  %841 = icmp eq i32 %840, %770
  br i1 %841, label %842, label %846, !prof !859

842:                                              ; preds = %838
  %843 = load ptr, ptr %765, align 8, !tbaa !430
  %844 = tail call i32 @rtx_equal_p(ptr noundef nonnull %766, ptr noundef %843) #22
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %857, !prof !860

846:                                              ; preds = %842, %838, %836
  %847 = icmp eq ptr %767, null
  br i1 %847, label %857, label %848, !prof !861

848:                                              ; preds = %846
  %849 = load i32, ptr %767, align 8
  %850 = and i32 %849, 65535
  %851 = icmp eq i32 %850, %770
  br i1 %851, label %852, label %857, !prof !862

852:                                              ; preds = %848
  %853 = load ptr, ptr %765, align 8, !tbaa !430
  %854 = tail call i32 @rtx_equal_p(ptr noundef nonnull %767, ptr noundef %853) #22
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %857, label %856, !prof !863

856:                                              ; preds = %852
  br label %857

857:                                              ; preds = %842, %832, %822, %846, %848, %852, %856
  %858 = phi ptr [ null, %856 ], [ %767, %852 ], [ %767, %848 ], [ null, %846 ], [ %767, %822 ], [ %767, %832 ], [ %767, %842 ]
  %859 = phi ptr [ %766, %856 ], [ %766, %852 ], [ %766, %848 ], [ %766, %846 ], [ %766, %822 ], [ %766, %832 ], [ null, %842 ]
  %860 = phi ptr [ %764, %856 ], [ %764, %852 ], [ %764, %848 ], [ %764, %846 ], [ %764, %822 ], [ null, %832 ], [ %764, %842 ]
  %861 = phi ptr [ %763, %856 ], [ %763, %852 ], [ %763, %848 ], [ %763, %846 ], [ null, %822 ], [ %763, %832 ], [ %763, %842 ]
  %862 = load i32, ptr %271, align 8
  %863 = and i32 %862, 65535
  %864 = icmp eq i32 %863, %770
  br i1 %864, label %865, label %870, !prof !864

865:                                              ; preds = %857
  %866 = load ptr, ptr %765, align 8, !tbaa !430
  %867 = tail call i32 @rtx_equal_p(ptr noundef %866, ptr noundef nonnull %271) #22
  %868 = icmp eq i32 %867, 0
  %869 = select i1 %868, ptr %858, ptr %271, !prof !865
  br label %870

870:                                              ; preds = %865, %857, %794, %796, %800, %804, %772
  %871 = phi ptr [ %767, %772 ], [ %767, %804 ], [ %767, %800 ], [ %767, %796 ], [ %767, %794 ], [ %858, %857 ], [ %869, %865 ]
  %872 = phi ptr [ %766, %772 ], [ %766, %804 ], [ %766, %800 ], [ %766, %796 ], [ %766, %794 ], [ %859, %857 ], [ %859, %865 ]
  %873 = phi ptr [ %764, %772 ], [ %764, %804 ], [ %764, %800 ], [ %764, %796 ], [ %764, %794 ], [ %860, %857 ], [ %860, %865 ]
  %874 = phi ptr [ %763, %772 ], [ %763, %804 ], [ %763, %800 ], [ %763, %796 ], [ null, %794 ], [ %861, %857 ], [ %861, %865 ]
  %875 = getelementptr inbounds %struct.table_elt, ptr %765, i64 0, i32 4
  %876 = load ptr, ptr %875, align 8, !tbaa !866
  %877 = icmp eq ptr %876, null
  br i1 %877, label %878, label %762, !prof !867, !llvm.loop !868

878:                                              ; preds = %870, %752, %758
  %879 = phi ptr [ null, %758 ], [ null, %752 ], [ %760, %870 ]
  %880 = phi ptr [ %754, %758 ], [ %754, %752 ], [ %871, %870 ]
  %881 = phi ptr [ %516, %758 ], [ %516, %752 ], [ %872, %870 ]
  %882 = phi ptr [ %756, %758 ], [ %756, %752 ], [ %873, %870 ]
  %883 = phi ptr [ %273, %758 ], [ %273, %752 ], [ %874, %870 ]
  %884 = icmp eq ptr %883, null
  br i1 %884, label %897, label %885, !prof !869

885:                                              ; preds = %878
  %886 = tail call i32 @rtx_equal_p(ptr noundef nonnull %883, ptr noundef nonnull %271) #22
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %897, !prof !870

888:                                              ; preds = %885
  %889 = load i32, ptr %883, align 8
  %890 = and i32 %889, 65535
  %891 = icmp eq i32 %890, 37
  br i1 %891, label %894, label %892, !prof !871

892:                                              ; preds = %888
  %893 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %883, i32 noundef 23) #24
  br label %894

894:                                              ; preds = %888, %892
  %895 = phi i32 [ %893, %892 ], [ 0, %888 ]
  %896 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %883) #24
  br label %897

897:                                              ; preds = %885, %894, %878
  %898 = phi i32 [ %896, %894 ], [ 2147483647, %878 ], [ -1, %885 ]
  %899 = phi i32 [ %895, %894 ], [ 2147483647, %878 ], [ -1, %885 ]
  %900 = icmp ne ptr %881, null
  br i1 %900, label %901, label %913, !prof !872

901:                                              ; preds = %897
  %902 = tail call i32 @rtx_equal_p(ptr noundef nonnull %881, ptr noundef nonnull %271) #22
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %913, !prof !873

904:                                              ; preds = %901
  %905 = load i32, ptr %881, align 8
  %906 = and i32 %905, 65535
  %907 = icmp eq i32 %906, 37
  br i1 %907, label %910, label %908, !prof !874

908:                                              ; preds = %904
  %909 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %881, i32 noundef 23) #24
  br label %910

910:                                              ; preds = %904, %908
  %911 = phi i32 [ %909, %908 ], [ 0, %904 ]
  %912 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %881) #24
  br label %913

913:                                              ; preds = %901, %910, %897
  %914 = phi i32 [ %912, %910 ], [ 2147483647, %897 ], [ -1, %901 ]
  %915 = phi i32 [ %911, %910 ], [ 2147483647, %897 ], [ -1, %901 ]
  %916 = icmp eq ptr %882, null
  br i1 %916, label %929, label %917, !prof !875

917:                                              ; preds = %913
  %918 = tail call i32 @rtx_equal_p(ptr noundef nonnull %882, ptr noundef nonnull %271) #22
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %929, !prof !876

920:                                              ; preds = %917
  %921 = load i32, ptr %882, align 8
  %922 = and i32 %921, 65535
  %923 = icmp eq i32 %922, 37
  br i1 %923, label %926, label %924, !prof !877

924:                                              ; preds = %920
  %925 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %882, i32 noundef 23) #24
  br label %926

926:                                              ; preds = %920, %924
  %927 = phi i32 [ %925, %924 ], [ 0, %920 ]
  %928 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %882) #24
  br label %929

929:                                              ; preds = %917, %926, %913
  %930 = phi i32 [ %928, %926 ], [ 2147483647, %913 ], [ -1, %917 ]
  %931 = phi i32 [ %927, %926 ], [ 2147483647, %913 ], [ -1, %917 ]
  %932 = icmp eq ptr %880, null
  br i1 %932, label %951, label %933, !prof !878

933:                                              ; preds = %929
  %934 = tail call i32 @rtx_equal_p(ptr noundef nonnull %880, ptr noundef nonnull %271) #22
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %936, label %951, !prof !879

936:                                              ; preds = %933
  %937 = load i32, ptr %880, align 8
  %938 = and i32 %937, 65535
  %939 = icmp eq i32 %938, 37
  br i1 %939, label %942, label %940, !prof !880

940:                                              ; preds = %936
  %941 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %880, i32 noundef 23) #24
  br label %942

942:                                              ; preds = %936, %940
  %943 = phi i32 [ %941, %940 ], [ 0, %936 ]
  %944 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %880) #24
  %945 = icmp eq i32 %753, 0
  br i1 %945, label %951, label %946, !prof !881

946:                                              ; preds = %942
  %947 = icmp eq i32 %943, %899
  %948 = and i1 %900, %947
  %949 = sext i1 %948 to i32
  %950 = add nsw i32 %943, %949
  br label %951

951:                                              ; preds = %946, %933, %942, %929
  %952 = phi i32 [ %944, %942 ], [ 2147483647, %929 ], [ -1, %933 ], [ %944, %946 ]
  %953 = phi i32 [ %943, %942 ], [ 2147483647, %929 ], [ -1, %933 ], [ %950, %946 ]
  %954 = load ptr, ptr @global_rtl, align 16, !tbaa !426
  %955 = icmp eq ptr %271, %954
  %956 = and i1 %510, %955
  br i1 %956, label %957, label %962, !prof !882

957:                                              ; preds = %951
  %958 = load i32, ptr %511, align 8
  %959 = and i32 %958, 65535
  %960 = icmp eq i32 %959, 44
  br i1 %960, label %961, label %962, !prof !883

961:                                              ; preds = %957
  br label %962

962:                                              ; preds = %961, %957, %951
  %963 = phi i32 [ -1, %961 ], [ %930, %957 ], [ %930, %951 ]
  %964 = phi i32 [ -1, %961 ], [ %931, %957 ], [ %931, %951 ]
  %965 = phi ptr [ %511, %961 ], [ %882, %957 ], [ %882, %951 ]
  %966 = icmp eq ptr %965, null
  br label %967

967:                                              ; preds = %1261, %962
  %968 = phi i32 [ 2147483647, %962 ], [ %1043, %1261 ]
  %969 = phi i32 [ 2147483647, %962 ], [ %1084, %1261 ]
  %970 = phi i32 [ %953, %962 ], [ %1085, %1261 ]
  %971 = phi i32 [ %964, %962 ], [ %1086, %1261 ]
  %972 = phi i32 [ %915, %962 ], [ %1087, %1261 ]
  %973 = phi i32 [ %899, %962 ], [ %1088, %1261 ]
  %974 = phi ptr [ %879, %962 ], [ %1089, %1261 ]
  br label %975

975:                                              ; preds = %967, %1033
  %976 = phi ptr [ %1035, %1033 ], [ %974, %967 ]
  %977 = icmp eq ptr %976, null
  br i1 %977, label %1041, label %978, !prof !884

978:                                              ; preds = %975, %990
  %979 = phi ptr [ %992, %990 ], [ %976, %975 ]
  %980 = load ptr, ptr %979, align 8, !tbaa !430
  %981 = load i32, ptr %980, align 8
  %982 = and i32 %981, 65535
  %983 = icmp eq i32 %982, 37
  br i1 %983, label %994, label %984, !prof !885

984:                                              ; preds = %978
  %985 = tail call i32 @exp_equiv_p(ptr noundef nonnull %980, ptr noundef nonnull %980, i32 noundef 1, i8 noundef zeroext 0) #24, !range !503
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %990, label %987, !prof !886

987:                                              ; preds = %984
  %988 = load ptr, ptr %979, align 8, !tbaa !430
  %989 = load i32, ptr %988, align 8
  br label %994

990:                                              ; preds = %984
  %991 = getelementptr inbounds %struct.table_elt, ptr %979, i64 0, i32 4
  %992 = load ptr, ptr %991, align 8, !tbaa !866
  %993 = icmp eq ptr %992, null
  br i1 %993, label %1041, label %978, !prof !887, !llvm.loop !888

994:                                              ; preds = %978, %987
  %995 = phi i32 [ %989, %987 ], [ %981, %978 ]
  %996 = phi ptr [ %988, %987 ], [ %980, %978 ]
  %997 = and i32 %995, 65535
  %998 = icmp eq i32 %997, 39
  br i1 %998, label %999, label %1036, !prof !889

999:                                              ; preds = %994
  %1000 = lshr i32 %995, 16
  %1001 = and i32 %1000, 255
  %1002 = zext nneg i32 %1001 to i64
  %1003 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1002
  %1004 = load i8, ptr %1003, align 1, !tbaa !442
  %1005 = getelementptr inbounds %struct.rtx_def, ptr %996, i64 0, i32 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !442
  %1007 = load i32, ptr %1006, align 8
  %1008 = lshr i32 %1007, 16
  %1009 = and i32 %1008, 255
  %1010 = zext nneg i32 %1009 to i64
  %1011 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1010
  %1012 = load i8, ptr %1011, align 1, !tbaa !442
  %1013 = icmp ugt i8 %1004, %1012
  br i1 %1013, label %1014, label %1036, !prof !890

1014:                                             ; preds = %999
  br i1 %884, label %1033, label %1015

1015:                                             ; preds = %1014
  %1016 = load i32, ptr %883, align 8
  %1017 = and i32 %1016, 65535
  %1018 = icmp eq i32 %1017, 39
  br i1 %1018, label %1019, label %1033

1019:                                             ; preds = %1015
  %1020 = lshr i32 %1016, 16
  %1021 = and i32 %1020, 255
  %1022 = icmp eq i32 %1021, %1001
  br i1 %1022, label %1023, label %1033

1023:                                             ; preds = %1019
  %1024 = getelementptr inbounds %struct.rtx_def, ptr %883, i64 0, i32 1
  %1025 = load ptr, ptr %1024, align 8, !tbaa !442
  %1026 = load i32, ptr %1025, align 8
  %1027 = lshr i32 %1026, 16
  %1028 = and i32 %1027, 255
  %1029 = zext nneg i32 %1028 to i64
  %1030 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1029
  %1031 = load i8, ptr %1030, align 1, !tbaa !442
  %1032 = icmp ult i8 %1031, %1012
  br i1 %1032, label %1036, label %1033

1033:                                             ; preds = %1023, %1019, %1015, %1014
  %1034 = getelementptr inbounds %struct.table_elt, ptr %979, i64 0, i32 4
  %1035 = load ptr, ptr %1034, align 8, !tbaa !866
  br label %975

1036:                                             ; preds = %994, %999, %1023
  %1037 = getelementptr inbounds %struct.table_elt, ptr %979, i64 0, i32 8
  %1038 = load i32, ptr %1037, align 8, !tbaa !891
  %1039 = getelementptr inbounds %struct.table_elt, ptr %979, i64 0, i32 9
  %1040 = load i32, ptr %1039, align 4, !tbaa !892
  br label %1041

1041:                                             ; preds = %975, %990, %1036
  %1042 = phi ptr [ %979, %1036 ], [ null, %990 ], [ null, %975 ]
  %1043 = phi i32 [ %1040, %1036 ], [ %968, %990 ], [ %968, %975 ]
  %1044 = phi i32 [ %1038, %1036 ], [ %969, %990 ], [ %969, %975 ]
  br i1 %966, label %1057, label %1045, !prof !893

1045:                                             ; preds = %1041
  %1046 = tail call fastcc i32 @preferable(i32 noundef %971, i32 noundef %963, i32 noundef %973, i32 noundef %898) #24
  %1047 = icmp slt i32 %1046, 1
  br i1 %1047, label %1048, label %1057, !prof !894

1048:                                             ; preds = %1045
  %1049 = tail call fastcc i32 @preferable(i32 noundef %971, i32 noundef %963, i32 noundef %972, i32 noundef %914) #24
  %1050 = icmp slt i32 %1049, 1
  br i1 %1050, label %1051, label %1057, !prof !895

1051:                                             ; preds = %1048
  %1052 = tail call fastcc i32 @preferable(i32 noundef %971, i32 noundef %963, i32 noundef %970, i32 noundef %952) #24
  %1053 = icmp slt i32 %1052, 1
  br i1 %1053, label %1054, label %1057, !prof !895

1054:                                             ; preds = %1051
  %1055 = tail call fastcc i32 @preferable(i32 noundef %971, i32 noundef %963, i32 noundef %1044, i32 noundef %1043) #24
  %1056 = icmp slt i32 %1055, 1
  br i1 %1056, label %1082, label %1057, !prof !896

1057:                                             ; preds = %1054, %1051, %1048, %1045, %1041
  br i1 %884, label %1067, label %1058, !prof !897

1058:                                             ; preds = %1057
  %1059 = tail call fastcc i32 @preferable(i32 noundef %973, i32 noundef %898, i32 noundef %972, i32 noundef %914) #24
  %1060 = icmp slt i32 %1059, 1
  br i1 %1060, label %1061, label %1067, !prof !898

1061:                                             ; preds = %1058
  %1062 = tail call fastcc i32 @preferable(i32 noundef %973, i32 noundef %898, i32 noundef %970, i32 noundef %952) #24
  %1063 = icmp slt i32 %1062, 1
  br i1 %1063, label %1064, label %1067, !prof !899

1064:                                             ; preds = %1061
  %1065 = tail call fastcc i32 @preferable(i32 noundef %973, i32 noundef %898, i32 noundef %1044, i32 noundef %1043) #24
  %1066 = icmp slt i32 %1065, 1
  br i1 %1066, label %1082, label %1067, !prof !900

1067:                                             ; preds = %1064, %1061, %1058, %1057
  br i1 %900, label %1068, label %1074, !prof !901

1068:                                             ; preds = %1067
  %1069 = tail call fastcc i32 @preferable(i32 noundef %972, i32 noundef %914, i32 noundef %970, i32 noundef %952) #24
  %1070 = icmp slt i32 %1069, 1
  br i1 %1070, label %1071, label %1074, !prof !902

1071:                                             ; preds = %1068
  %1072 = tail call fastcc i32 @preferable(i32 noundef %972, i32 noundef %914, i32 noundef %1044, i32 noundef %1043) #24
  %1073 = icmp slt i32 %1072, 1
  br i1 %1073, label %1082, label %1074, !prof !903

1074:                                             ; preds = %1071, %1068, %1067
  br i1 %932, label %1078, label %1075, !prof !904

1075:                                             ; preds = %1074
  %1076 = tail call fastcc i32 @preferable(i32 noundef %970, i32 noundef %952, i32 noundef %1044, i32 noundef %1043) #24
  %1077 = icmp slt i32 %1076, 1
  br i1 %1077, label %1082, label %1078, !prof !905

1078:                                             ; preds = %1075, %1074
  %1079 = load ptr, ptr %1042, align 8, !tbaa !430
  %1080 = getelementptr inbounds %struct.table_elt, ptr %1042, i64 0, i32 4
  %1081 = load ptr, ptr %1080, align 8, !tbaa !866
  br label %1082

1082:                                             ; preds = %1075, %1071, %1064, %1054, %1078
  %1083 = phi ptr [ %1079, %1078 ], [ %965, %1054 ], [ %883, %1064 ], [ %881, %1071 ], [ %880, %1075 ]
  %1084 = phi i32 [ 2147483647, %1078 ], [ %1044, %1054 ], [ %1044, %1064 ], [ %1044, %1071 ], [ %1044, %1075 ]
  %1085 = phi i32 [ %970, %1078 ], [ %970, %1054 ], [ %970, %1064 ], [ %970, %1071 ], [ 2147483647, %1075 ]
  %1086 = phi i32 [ %971, %1078 ], [ 2147483647, %1054 ], [ %971, %1064 ], [ %971, %1071 ], [ %971, %1075 ]
  %1087 = phi i32 [ %972, %1078 ], [ %972, %1054 ], [ %972, %1064 ], [ 2147483647, %1071 ], [ %972, %1075 ]
  %1088 = phi i32 [ %973, %1078 ], [ %973, %1054 ], [ 2147483647, %1064 ], [ %973, %1071 ], [ %973, %1075 ]
  %1089 = phi ptr [ %1081, %1078 ], [ %1042, %1054 ], [ %1042, %1064 ], [ %1042, %1071 ], [ %1042, %1075 ]
  %1090 = load i32, ptr %1083, align 8
  %1091 = and i32 %1090, 65535
  %1092 = icmp eq i32 %1091, 43
  %1093 = load ptr, ptr %268, align 8, !tbaa !730
  br i1 %1092, label %1094, label %1121, !prof !906

1094:                                             ; preds = %1082
  %1095 = getelementptr inbounds %struct.rtx_def, ptr %1093, i64 0, i32 1
  %1096 = load ptr, ptr %1095, align 8, !tbaa !442
  %1097 = load i32, ptr %1096, align 8
  %1098 = and i32 %1097, 65535
  %1099 = icmp eq i32 %1098, 43
  br i1 %1099, label %1100, label %1121, !prof !907

1100:                                             ; preds = %1094
  %1101 = and i32 %1090, 16711680
  %1102 = icmp eq i32 %1101, 65536
  br i1 %1102, label %1307, label %1103, !prof !908

1103:                                             ; preds = %1100
  %1104 = tail call ptr @canon_rtx(ptr noundef nonnull %1083) #22
  %1105 = load ptr, ptr %268, align 8, !tbaa !730
  %1106 = getelementptr inbounds %struct.rtx_def, ptr %1105, i64 0, i32 1
  %1107 = load ptr, ptr %1106, align 8, !tbaa !442
  %1108 = tail call ptr @canon_rtx(ptr noundef %1107) #22
  %1109 = load i32, ptr %1104, align 8
  %1110 = and i32 %1109, 65535
  %1111 = icmp eq i32 %1110, 43
  br i1 %1111, label %1112, label %1307, !prof !909

1112:                                             ; preds = %1103
  %1113 = load i32, ptr %1108, align 8
  %1114 = and i32 %1113, 65535
  %1115 = icmp eq i32 %1114, 43
  br i1 %1115, label %1116, label %1307, !prof !909

1116:                                             ; preds = %1112
  %1117 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %1104, ptr noundef nonnull %1108) #22
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1307, label %1119, !prof !909

1119:                                             ; preds = %1116
  %1120 = load ptr, ptr %268, align 8, !tbaa !730
  br label %1121

1121:                                             ; preds = %1119, %1094, %1082
  %1122 = phi ptr [ %1120, %1119 ], [ %1093, %1094 ], [ %1093, %1082 ]
  %1123 = getelementptr inbounds %struct.rtx_def, ptr %1122, i64 0, i32 1
  %1124 = load ptr, ptr %1123, align 8, !tbaa !442
  %1125 = load i32, ptr %1124, align 8
  %1126 = and i32 %1125, 65535
  %1127 = icmp eq i32 %1126, 120
  br i1 %1127, label %1128, label %1241, !prof !910

1128:                                             ; preds = %1121
  %1129 = load i32, ptr %1083, align 8
  %1130 = and i32 %1129, 65535
  %1131 = icmp eq i32 %1130, 30
  br i1 %1131, label %1132, label %1241

1132:                                             ; preds = %1128
  %1133 = getelementptr inbounds %struct.rtx_def, ptr %1124, i64 0, i32 1
  %1134 = getelementptr inbounds %struct.rtx_def, ptr %1124, i64 0, i32 1, i32 0, i32 0, i64 1
  %1135 = load ptr, ptr %1134, align 8, !tbaa !442
  %1136 = load i32, ptr %1135, align 8
  %1137 = and i32 %1136, 65535
  %1138 = icmp eq i32 %1137, 30
  br i1 %1138, label %1139, label %1241

1139:                                             ; preds = %1132
  %1140 = getelementptr inbounds %struct.rtx_def, ptr %1124, i64 0, i32 1, i32 0, i32 0, i64 2
  %1141 = load ptr, ptr %1140, align 8, !tbaa !442
  %1142 = load i32, ptr %1141, align 8
  %1143 = and i32 %1142, 65535
  %1144 = icmp eq i32 %1143, 30
  br i1 %1144, label %1145, label %1241

1145:                                             ; preds = %1139
  %1146 = load ptr, ptr %1133, align 8, !tbaa !442
  %1147 = load i32, ptr %1146, align 8
  %1148 = and i32 %1147, 65535
  %1149 = icmp eq i32 %1148, 37
  br i1 %1149, label %1150, label %1241

1150:                                             ; preds = %1145
  %1151 = lshr i32 %1125, 16
  %1152 = and i32 %1151, 255
  %1153 = zext nneg i32 %1152 to i64
  %1154 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1153
  %1155 = load i8, ptr %1154, align 1, !tbaa !442
  %1156 = zext i8 %1155 to i64
  %1157 = shl nuw nsw i64 %1156, 3
  %1158 = getelementptr inbounds %struct.rtx_def, ptr %1135, i64 0, i32 1
  %1159 = load i64, ptr %1158, align 8, !tbaa !442
  %1160 = icmp slt i64 %1157, %1159
  br i1 %1160, label %1241, label %1161

1161:                                             ; preds = %1150
  %1162 = trunc i64 %1159 to i32
  %1163 = getelementptr inbounds %struct.rtx_def, ptr %1141, i64 0, i32 1
  %1164 = load i64, ptr %1163, align 8, !tbaa !442
  %1165 = trunc i64 %1164 to i32
  %1166 = add i32 %1165, %1162
  %1167 = icmp ult i32 %1166, 65
  br i1 %1167, label %1168, label %1241

1168:                                             ; preds = %1161
  %1169 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1146) #24
  %1170 = icmp ugt i32 %1169, 52
  br i1 %1170, label %1171, label %1176

1171:                                             ; preds = %1168
  %1172 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1169) #24
  %1173 = getelementptr inbounds %struct.cse_reg_info, ptr %1172, i64 0, i32 1
  %1174 = load i32, ptr %1173, align 4, !tbaa !447
  %1175 = add i32 %1174, 4736
  br label %1180

1176:                                             ; preds = %1168
  %1177 = lshr i32 %1147, 16
  %1178 = and i32 %1177, 255
  %1179 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1146, i32 noundef %1178) #24
  br label %1180

1180:                                             ; preds = %1176, %1171
  %1181 = phi i32 [ %1175, %1171 ], [ %1179, %1176 ]
  %1182 = and i32 %1181, 31
  %1183 = load i32, ptr %1146, align 8
  %1184 = lshr i32 %1183, 16
  %1185 = and i32 %1184, 255
  %1186 = tail call fastcc ptr @lookup(ptr noundef nonnull %1146, i32 noundef %1182, i32 noundef %1185) #24
  %1187 = icmp eq ptr %1186, null
  br i1 %1187, label %1241, label %1188

1188:                                             ; preds = %1180
  %1189 = getelementptr inbounds %struct.table_elt, ptr %1186, i64 0, i32 6
  %1190 = load ptr, ptr %1189, align 8, !tbaa !426
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1241, label %1192

1192:                                             ; preds = %1188, %1202
  %1193 = phi ptr [ %1204, %1202 ], [ %1190, %1188 ]
  %1194 = getelementptr inbounds %struct.table_elt, ptr %1193, i64 0, i32 12
  %1195 = load i8, ptr %1194, align 2, !tbaa !785
  %1196 = icmp eq i8 %1195, 0
  br i1 %1196, label %1202, label %1197

1197:                                             ; preds = %1192
  %1198 = load ptr, ptr %1193, align 8, !tbaa !430
  %1199 = load i32, ptr %1198, align 8
  %1200 = and i32 %1199, 65535
  %1201 = icmp eq i32 %1200, 30
  br i1 %1201, label %1206, label %1202

1202:                                             ; preds = %1192, %1197
  %1203 = getelementptr inbounds %struct.table_elt, ptr %1193, i64 0, i32 4
  %1204 = load ptr, ptr %1203, align 8, !tbaa !426
  %1205 = icmp eq ptr %1204, null
  br i1 %1205, label %1241, label %1192, !llvm.loop !911

1206:                                             ; preds = %1197
  %1207 = getelementptr inbounds %struct.rtx_def, ptr %1198, i64 0, i32 1
  %1208 = load i64, ptr %1207, align 8, !tbaa !442
  %1209 = load i64, ptr %1163, align 8, !tbaa !442
  %1210 = load i64, ptr %1158, align 8, !tbaa !442
  %1211 = icmp eq i64 %1210, 64
  %1212 = shl nsw i64 -1, %1210
  %1213 = xor i64 %1212, -1
  %1214 = select i1 %1211, i64 -1, i64 %1213
  %1215 = and i64 %1209, 4294967295
  %1216 = shl i64 %1214, %1215
  %1217 = xor i64 %1216, -1
  %1218 = and i64 %1208, %1217
  %1219 = getelementptr inbounds %struct.rtx_def, ptr %1083, i64 0, i32 1
  %1220 = load i64, ptr %1219, align 8, !tbaa !442
  %1221 = and i64 %1214, %1220
  %1222 = shl i64 %1221, %1215
  %1223 = or i64 %1218, %1222
  %1224 = load i32, ptr %1146, align 8
  %1225 = lshr i32 %1224, 16
  %1226 = and i32 %1225, 255
  %1227 = tail call i64 @trunc_int_for_mode(i64 noundef %1223, i32 noundef %1226) #22
  %1228 = load ptr, ptr %268, align 8, !tbaa !730
  %1229 = getelementptr inbounds %struct.rtx_def, ptr %1228, i64 0, i32 1
  %1230 = tail call zeroext i8 @validate_unshare_change(ptr noundef %260, ptr noundef nonnull %1229, ptr noundef nonnull %1146, i8 noundef zeroext 1) #22
  %1231 = load ptr, ptr %268, align 8, !tbaa !730
  %1232 = getelementptr inbounds %struct.rtx_def, ptr %1231, i64 0, i32 1, i32 0, i32 0, i64 1
  %1233 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1227) #22
  %1234 = tail call zeroext i8 @validate_unshare_change(ptr noundef %260, ptr noundef nonnull %1232, ptr noundef %1233, i8 noundef zeroext 1) #22
  %1235 = tail call i32 @apply_change_group() #22
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1241, label %1237

1237:                                             ; preds = %1206
  %1238 = tail call ptr @find_reg_note(ptr noundef %260, i32 noundef 4, ptr noundef null) #22
  %1239 = icmp eq ptr %1238, null
  br i1 %1239, label %1305, label %1240

1240:                                             ; preds = %1237
  tail call void @remove_note(ptr noundef %260, ptr noundef nonnull %1238) #22
  tail call void @df_notes_rescan(ptr noundef %260) #22
  br label %1305

1241:                                             ; preds = %1202, %1188, %1206, %1180, %1161, %1150, %1145, %1139, %1132, %1128, %1121
  br i1 %214, label %1244, label %1242, !prof !912

1242:                                             ; preds = %1241
  %1243 = load i32, ptr %1083, align 8
  br label %1265

1244:                                             ; preds = %1241
  %1245 = load ptr, ptr @global_rtl, align 16, !tbaa !426
  %1246 = icmp eq ptr %271, %1245
  %1247 = load i32, ptr %1083, align 8
  br i1 %1246, label %1248, label %1265, !prof !913

1248:                                             ; preds = %1244
  %1249 = icmp eq ptr %1083, %271
  br i1 %1249, label %1257, label %1250, !prof !914

1250:                                             ; preds = %1248
  %1251 = and i32 %1247, 65535
  %1252 = icmp eq i32 %1251, 44
  br i1 %1252, label %1253, label %1265, !prof !915

1253:                                             ; preds = %1250
  %1254 = tail call i32 @condjump_p(ptr noundef %260) #22
  %1255 = icmp eq i32 %1254, 0
  %1256 = load i32, ptr %1083, align 8
  br i1 %1255, label %1257, label %1265, !prof !916

1257:                                             ; preds = %1253, %1248
  %1258 = phi i32 [ %1247, %1248 ], [ %1256, %1253 ]
  %1259 = and i32 %1258, 134283263
  %1260 = icmp eq i32 %1259, 134217772
  br i1 %1260, label %1261, label %1262, !prof !890

1261:                                             ; preds = %1257, %1291, %1274, %1285
  br label %967

1262:                                             ; preds = %1257
  %1263 = load ptr, ptr %268, align 8, !tbaa !730
  %1264 = getelementptr inbounds %struct.rtx_def, ptr %1263, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1083, ptr %1264, align 8, !tbaa !442
  store i1 true, ptr @cse_jumps_altered, align 1
  br label %1307

1265:                                             ; preds = %1242, %1253, %1250, %1244
  %1266 = phi i32 [ %1243, %1242 ], [ %1256, %1253 ], [ %1247, %1250 ], [ %1247, %1244 ]
  %1267 = and i32 %1266, 65535
  %1268 = zext nneg i32 %1267 to i64
  %1269 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1268
  %1270 = load i32, ptr %1269, align 4, !tbaa !438
  %1271 = icmp eq i32 %1270, 9
  %1272 = icmp eq i32 %1267, 35
  %1273 = and i1 %1271, %1272
  br i1 %1273, label %1274, label %1291, !prof !917

1274:                                             ; preds = %1265
  %1275 = getelementptr inbounds %struct.rtx_def, ptr %1083, i64 0, i32 1
  %1276 = load ptr, ptr %1275, align 8, !tbaa !442
  %1277 = load i32, ptr %1276, align 8
  %1278 = trunc i32 %1277 to i16
  switch i16 %1278, label %1291 [
    i16 100, label %1261
    i16 50, label %1279
  ], !prof !918

1279:                                             ; preds = %1274
  %1280 = getelementptr inbounds %struct.rtx_def, ptr %1276, i64 0, i32 1
  %1281 = load ptr, ptr %1280, align 8, !tbaa !442
  %1282 = load i32, ptr %1281, align 8
  %1283 = and i32 %1282, 65535
  %1284 = icmp eq i32 %1283, 44
  br i1 %1284, label %1285, label %1291

1285:                                             ; preds = %1279
  %1286 = getelementptr inbounds %struct.rtx_def, ptr %1276, i64 0, i32 1, i32 0, i32 0, i64 1
  %1287 = load ptr, ptr %1286, align 8, !tbaa !442
  %1288 = load i32, ptr %1287, align 8
  %1289 = and i32 %1288, 65535
  %1290 = icmp eq i32 %1289, 44
  br i1 %1290, label %1261, label %1291

1291:                                             ; preds = %1274, %1285, %1279, %1265
  %1292 = load ptr, ptr %268, align 8, !tbaa !730
  %1293 = getelementptr inbounds %struct.rtx_def, ptr %1292, i64 0, i32 1, i32 0, i32 0, i64 1
  %1294 = tail call zeroext i8 @validate_unshare_change(ptr noundef %260, ptr noundef nonnull %1293, ptr noundef nonnull %1083, i8 noundef zeroext 0) #22
  %1295 = icmp eq i8 %1294, 0
  br i1 %1295, label %1261, label %1296, !prof !919

1296:                                             ; preds = %1291
  %1297 = load ptr, ptr %268, align 8, !tbaa !730
  %1298 = getelementptr inbounds %struct.rtx_def, ptr %1297, i64 0, i32 1, i32 0, i32 0, i64 1
  %1299 = load ptr, ptr %1298, align 8, !tbaa !442
  %1300 = tail call fastcc ptr @canon_reg(ptr noundef %1299, ptr noundef %260) #24
  %1301 = load ptr, ptr %268, align 8, !tbaa !730
  %1302 = getelementptr inbounds %struct.rtx_def, ptr %1301, i64 0, i32 1, i32 0, i32 0, i64 1
  %1303 = tail call zeroext i8 @validate_change(ptr noundef %260, ptr noundef nonnull %1302, ptr noundef %1300, i8 noundef zeroext 1) #22
  %1304 = tail call i32 @apply_change_group() #22
  br label %1307

1305:                                             ; preds = %1237, %1240
  %1306 = add nsw i32 %261, -1
  br label %1620

1307:                                             ; preds = %1100, %1116, %1112, %1103, %1262, %1296
  %1308 = load ptr, ptr %268, align 8, !tbaa !730
  %1309 = getelementptr inbounds %struct.rtx_def, ptr %1308, i64 0, i32 1, i32 0, i32 0, i64 1
  %1310 = load ptr, ptr %1309, align 8, !tbaa !442
  %1311 = load i32, ptr %271, align 8
  %1312 = and i32 %1311, 65535
  %1313 = icmp eq i32 %1312, 37
  br i1 %1313, label %1314, label %1406, !prof !920

1314:                                             ; preds = %1307
  %1315 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %271) #24
  %1316 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1315) #24
  %1317 = getelementptr inbounds %struct.cse_reg_info, ptr %1316, i64 0, i32 1
  %1318 = load i32, ptr %1317, align 4, !tbaa !447
  %1319 = icmp sgt i32 %1318, -1
  br i1 %1319, label %1320, label %1406, !prof !921

1320:                                             ; preds = %1314
  %1321 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %271) #24
  %1322 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1321) #24
  %1323 = getelementptr inbounds %struct.cse_reg_info, ptr %1322, i64 0, i32 1
  %1324 = load i32, ptr %1323, align 4, !tbaa !447
  %1325 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %1326 = sext i32 %1324 to i64
  %1327 = getelementptr inbounds %struct.qty_table_elem, ptr %1325, i64 %1326, i32 6
  %1328 = load i32, ptr %1327, align 4
  %1329 = load i32, ptr %271, align 8
  %1330 = xor i32 %1329, %1328
  %1331 = and i32 %1330, 16711680
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1333, label %1406, !prof !922

1333:                                             ; preds = %1320
  %1334 = getelementptr inbounds %struct.qty_table_elem, ptr %1325, i64 %1326, i32 4
  %1335 = load i32, ptr %1334, align 4, !tbaa !923
  %1336 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %271) #24
  %1337 = icmp eq i32 %1335, %1336
  br i1 %1337, label %1406, label %1338, !prof !925

1338:                                             ; preds = %1333
  %1339 = load i32, ptr %1310, align 8
  %1340 = and i32 %1339, 65535
  %1341 = icmp eq i32 %1340, 37
  br i1 %1341, label %1342, label %1406, !prof !926

1342:                                             ; preds = %1338
  %1343 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1310) #24
  %1344 = icmp eq i32 %1343, %1336
  br i1 %1344, label %1345, label %1406, !prof !927

1345:                                             ; preds = %1342
  %1346 = load ptr, ptr %336, align 8, !tbaa !766
  %1347 = load i32, ptr %1346, align 8
  %1348 = and i32 %1347, 65535
  %1349 = icmp eq i32 %1348, 37
  br i1 %1349, label %1350, label %1353

1350:                                             ; preds = %1345
  %1351 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1346) #24
  %1352 = icmp ugt i32 %1351, 52
  br i1 %1352, label %1353, label %1406

1353:                                             ; preds = %1350, %1345
  %1354 = and i32 %1329, 65535
  %1355 = icmp ne i32 %1354, 37
  %1356 = icmp ugt i32 %1336, 52
  %1357 = or i1 %1355, %1356
  br i1 %1357, label %1358, label %1406

1358:                                             ; preds = %1353
  %1359 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1336) #24
  %1360 = getelementptr inbounds %struct.cse_reg_info, ptr %1359, i64 0, i32 1
  %1361 = load i32, ptr %1360, align 4, !tbaa !447
  %1362 = sext i32 %1361 to i64
  %1363 = getelementptr inbounds %struct.qty_table_elem, ptr %1325, i64 %1362, i32 4
  %1364 = load i32, ptr %1363, align 4, !tbaa !923
  %1365 = icmp sgt i32 %1364, 52
  br i1 %1365, label %1366, label %1371

1366:                                             ; preds = %1358
  %1367 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %1368 = zext nneg i32 %1364 to i64
  %1369 = getelementptr inbounds ptr, ptr %1367, i64 %1368
  %1370 = load ptr, ptr %1369, align 8, !tbaa !426
  br label %1376

1371:                                             ; preds = %1358
  %1372 = load i32, ptr %1310, align 8
  %1373 = lshr i32 %1372, 16
  %1374 = and i32 %1373, 255
  %1375 = tail call ptr @gen_rtx_REG(i32 noundef %1374, i32 noundef %1364) #22
  br label %1376

1376:                                             ; preds = %1371, %1366
  %1377 = phi ptr [ %1370, %1366 ], [ %1375, %1371 ]
  %1378 = load ptr, ptr %268, align 8, !tbaa !730
  %1379 = getelementptr inbounds %struct.rtx_def, ptr %1378, i64 0, i32 1, i32 0, i32 0, i64 1
  %1380 = tail call zeroext i8 @validate_change(ptr noundef %260, ptr noundef nonnull %1379, ptr noundef %1377, i8 noundef zeroext 0) #22
  %1381 = icmp ne i8 %1380, 0
  %1382 = and i1 %510, %1381
  %1383 = select i1 %1381, ptr %1377, ptr %1310
  br i1 %1382, label %1384, label %1406

1384:                                             ; preds = %1376
  %1385 = load i32, ptr %511, align 8
  %1386 = and i32 %1385, 65535
  %1387 = icmp eq i32 %1386, 37
  br i1 %1387, label %1390, label %1388

1388:                                             ; preds = %1384
  %1389 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %511, i32 noundef 23) #24
  br label %1390

1390:                                             ; preds = %1384, %1388
  %1391 = phi i32 [ %1389, %1388 ], [ 0, %1384 ]
  %1392 = load i32, ptr %1377, align 8
  %1393 = and i32 %1392, 65535
  %1394 = icmp eq i32 %1393, 37
  br i1 %1394, label %1397, label %1395

1395:                                             ; preds = %1390
  %1396 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %1377, i32 noundef 23) #24
  br label %1397

1397:                                             ; preds = %1390, %1395
  %1398 = phi i32 [ %1396, %1395 ], [ 0, %1390 ]
  %1399 = icmp slt i32 %1391, %1398
  br i1 %1399, label %1400, label %1406

1400:                                             ; preds = %1397
  %1401 = load ptr, ptr %268, align 8, !tbaa !730
  %1402 = getelementptr inbounds %struct.rtx_def, ptr %1401, i64 0, i32 1, i32 0, i32 0, i64 1
  %1403 = tail call zeroext i8 @validate_change(ptr noundef %260, ptr noundef nonnull %1402, ptr noundef nonnull %511, i8 noundef zeroext 0) #22
  %1404 = icmp eq i8 %1403, 0
  %1405 = select i1 %1404, ptr %1377, ptr %511
  br label %1406

1406:                                             ; preds = %1353, %1400, %1320, %1333, %1338, %1342, %1350, %1376, %1397, %1314, %1307
  %1407 = phi ptr [ %1310, %1314 ], [ %1310, %1307 ], [ %1310, %1350 ], [ %1310, %1342 ], [ %1310, %1338 ], [ %1310, %1333 ], [ %1310, %1320 ], [ %1377, %1397 ], [ %1383, %1376 ], [ %1405, %1400 ], [ %1310, %1353 ]
  %1408 = load ptr, ptr %336, align 8, !tbaa !766
  %1409 = icmp eq ptr %1407, %1408
  br i1 %1409, label %1432, label %1410, !prof !928

1410:                                             ; preds = %1406
  store i32 0, ptr @do_not_record, align 4, !tbaa !438
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !438
  store ptr %1407, ptr %336, align 8, !tbaa !766
  %1411 = load i32, ptr %1407, align 8
  %1412 = and i32 %1411, 65535
  %1413 = icmp eq i32 %1412, 37
  br i1 %1413, label %1414, label %1422, !prof !929

1414:                                             ; preds = %1410
  %1415 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1407) #24
  %1416 = icmp ugt i32 %1415, 52
  br i1 %1416, label %1417, label %1422, !prof !930

1417:                                             ; preds = %1414
  %1418 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1415) #24
  %1419 = getelementptr inbounds %struct.cse_reg_info, ptr %1418, i64 0, i32 1
  %1420 = load i32, ptr %1419, align 4, !tbaa !447
  %1421 = add i32 %1420, 4736
  br label %1424

1422:                                             ; preds = %1414, %1410
  %1423 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1407, i32 noundef %283) #24
  br label %1424

1424:                                             ; preds = %1422, %1417
  %1425 = phi i32 [ %1421, %1417 ], [ %1423, %1422 ]
  %1426 = and i32 %1425, 31
  store i32 %1426, ptr %353, align 8, !tbaa !769
  %1427 = load i32, ptr @do_not_record, align 4, !tbaa !438
  %1428 = trunc i32 %1427 to i8
  store i8 %1428, ptr %356, align 1, !tbaa !770
  %1429 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !438
  %1430 = trunc i32 %1429 to i8
  store i8 %1430, ptr %359, align 8, !tbaa !771
  %1431 = tail call fastcc ptr @lookup(ptr noundef nonnull %1407, i32 noundef %1426, i32 noundef %283) #24
  store ptr %1431, ptr %517, align 8, !tbaa !776
  br label %1432

1432:                                             ; preds = %1424, %1406
  %1433 = and i1 %214, %510
  br i1 %1433, label %1434, label %1465, !prof !931

1434:                                             ; preds = %1432
  %1435 = load i32, ptr %271, align 8
  %1436 = and i32 %1435, 65535
  %1437 = icmp eq i32 %1436, 37
  br i1 %1437, label %1438, label %1465, !prof !932

1438:                                             ; preds = %1434
  %1439 = load i32, ptr %511, align 8
  %1440 = trunc i32 %1439 to i16
  switch i16 %1440, label %1459 [
    i16 37, label %1465
    i16 35, label %1441
  ], !prof !933

1441:                                             ; preds = %1438
  %1442 = getelementptr inbounds %struct.rtx_def, ptr %511, i64 0, i32 1
  %1443 = load ptr, ptr %1442, align 8, !tbaa !442
  %1444 = load i32, ptr %1443, align 8
  %1445 = and i32 %1444, 65535
  %1446 = icmp eq i32 %1445, 50
  br i1 %1446, label %1447, label %1459, !prof !934

1447:                                             ; preds = %1441
  %1448 = getelementptr inbounds %struct.rtx_def, ptr %1443, i64 0, i32 1
  %1449 = load ptr, ptr %1448, align 8, !tbaa !442
  %1450 = load i32, ptr %1449, align 8
  %1451 = and i32 %1450, 65535
  %1452 = icmp eq i32 %1451, 44
  br i1 %1452, label %1453, label %1459

1453:                                             ; preds = %1447
  %1454 = getelementptr inbounds %struct.rtx_def, ptr %1443, i64 0, i32 1, i32 0, i32 0, i64 1
  %1455 = load ptr, ptr %1454, align 8, !tbaa !442
  %1456 = load i32, ptr %1455, align 8
  %1457 = and i32 %1456, 65535
  %1458 = icmp eq i32 %1457, 44
  br i1 %1458, label %1465, label %1459

1459:                                             ; preds = %1438, %1453, %1447, %1441
  %1460 = tail call i32 @rtx_equal_p(ptr noundef %1407, ptr noundef nonnull %511) #22
  %1461 = icmp eq i32 %1460, 0
  br i1 %1461, label %1462, label %1465, !prof !935

1462:                                             ; preds = %1459
  %1463 = tail call ptr @copy_rtx(ptr noundef nonnull %511) #22
  %1464 = tail call ptr @set_unique_reg_note(ptr noundef %260, i32 noundef 4, ptr noundef %1463) #22
  tail call void @df_notes_rescan(ptr noundef %260) #22
  br label %1465

1465:                                             ; preds = %1438, %1459, %1462, %1453, %1434, %1432
  %1466 = phi ptr [ %511, %1438 ], [ %511, %1453 ], [ %511, %1459 ], [ %1463, %1462 ], [ %511, %1434 ], [ %511, %1432 ]
  store i32 0, ptr @do_not_record, align 4, !tbaa !438
  br label %1467

1467:                                             ; preds = %1471, %1465
  %1468 = phi ptr [ %271, %1465 ], [ %1473, %1471 ]
  %1469 = load i32, ptr %1468, align 8
  %1470 = trunc i32 %1469 to i16
  switch i16 %1470, label %1474 [
    i16 39, label %1471
    i16 120, label %1471
    i16 40, label %1471
  ], !prof !936

1471:                                             ; preds = %1467, %1467, %1467
  %1472 = getelementptr inbounds %struct.rtx_def, ptr %1468, i64 0, i32 1
  %1473 = load ptr, ptr %1472, align 8, !tbaa !442
  br label %1467, !llvm.loop !937

1474:                                             ; preds = %1467
  %1475 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 5
  store ptr %1468, ptr %1475, align 8, !tbaa !938
  %1476 = load i32, ptr %1468, align 8
  %1477 = and i32 %1476, 65535
  %1478 = icmp eq i32 %1477, 43
  br i1 %1478, label %1479, label %1497, !prof !939

1479:                                             ; preds = %1474
  %1480 = getelementptr inbounds %struct.rtx_def, ptr %1468, i64 0, i32 1
  %1481 = load ptr, ptr %1480, align 8, !tbaa !442
  %1482 = load i32, ptr %1481, align 8
  %1483 = and i32 %1482, 65535
  %1484 = zext nneg i32 %1483 to i64
  %1485 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1484
  %1486 = load i32, ptr %1485, align 4, !tbaa !438
  %1487 = icmp eq i32 %1486, 12
  br i1 %1487, label %1488, label %1494, !prof !940

1488:                                             ; preds = %1479
  %1489 = getelementptr inbounds %struct.rtx_def, ptr %1481, i64 0, i32 1
  %1490 = load ptr, ptr %1489, align 8, !tbaa !442
  %1491 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !426
  %1492 = icmp eq ptr %1490, %1491
  br i1 %1492, label %1493, label %1494

1493:                                             ; preds = %1488
  tail call fastcc void @invalidate(ptr noundef %1490, i32 noundef 0) #24
  br label %1494

1494:                                             ; preds = %1493, %1488, %1479
  %1495 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %1468, ptr noundef %260) #24
  %1496 = load i32, ptr %1495, align 8
  br label %1497

1497:                                             ; preds = %1494, %1474
  %1498 = phi i32 [ %1496, %1494 ], [ %1476, %1474 ]
  %1499 = phi ptr [ %1495, %1494 ], [ %1468, %1474 ]
  %1500 = and i32 %1498, 65535
  %1501 = icmp eq i32 %1500, 37
  br i1 %1501, label %1502, label %1510, !prof !941

1502:                                             ; preds = %1497
  %1503 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1499) #24
  %1504 = icmp ugt i32 %1503, 52
  br i1 %1504, label %1505, label %1510, !prof !942

1505:                                             ; preds = %1502
  %1506 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1503) #24
  %1507 = getelementptr inbounds %struct.cse_reg_info, ptr %1506, i64 0, i32 1
  %1508 = load i32, ptr %1507, align 4, !tbaa !447
  %1509 = add i32 %1508, 4736
  br label %1512

1510:                                             ; preds = %1502, %1497
  %1511 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1499, i32 noundef %283) #24
  br label %1512

1512:                                             ; preds = %1510, %1505
  %1513 = phi i32 [ %1509, %1505 ], [ %1511, %1510 ]
  %1514 = and i32 %1513, 31
  %1515 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 4
  store i32 %1514, ptr %1515, align 4, !tbaa !943
  %1516 = load ptr, ptr %268, align 8, !tbaa !730
  %1517 = getelementptr inbounds %struct.rtx_def, ptr %1516, i64 0, i32 1
  %1518 = load ptr, ptr %1517, align 8, !tbaa !442
  %1519 = load i32, ptr %1518, align 8
  %1520 = and i32 %1519, 65535
  %1521 = icmp eq i32 %1520, 120
  br i1 %1521, label %1522, label %1545, !prof !944

1522:                                             ; preds = %1512
  %1523 = getelementptr inbounds %struct.rtx_def, ptr %1518, i64 0, i32 1, i32 0, i32 0, i64 1
  %1524 = load ptr, ptr %1523, align 8, !tbaa !442
  %1525 = icmp eq ptr %1466, null
  br i1 %1525, label %1544, label %1526

1526:                                             ; preds = %1522
  %1527 = load i32, ptr %1466, align 8
  %1528 = and i32 %1527, 65535
  %1529 = icmp eq i32 %1528, 30
  br i1 %1529, label %1530, label %1544

1530:                                             ; preds = %1526
  %1531 = load i32, ptr %1524, align 8
  %1532 = and i32 %1531, 65535
  %1533 = icmp eq i32 %1532, 30
  br i1 %1533, label %1534, label %1544

1534:                                             ; preds = %1530
  %1535 = getelementptr inbounds %struct.rtx_def, ptr %1524, i64 0, i32 1
  %1536 = load i64, ptr %1535, align 8, !tbaa !442
  %1537 = icmp slt i64 %1536, 64
  br i1 %1537, label %1538, label %1544

1538:                                             ; preds = %1534
  %1539 = getelementptr inbounds %struct.rtx_def, ptr %1466, i64 0, i32 1
  %1540 = load i64, ptr %1539, align 8, !tbaa !442
  %1541 = shl nsw i64 -1, %1536
  %1542 = and i64 %1540, %1541
  %1543 = icmp eq i64 %1542, 0
  br i1 %1543, label %1598, label %1544

1544:                                             ; preds = %1538, %1534, %1530, %1526, %1522
  store ptr null, ptr %517, align 8, !tbaa !776
  store i8 1, ptr %356, align 1, !tbaa !770
  br label %1598

1545:                                             ; preds = %1512
  %1546 = load ptr, ptr @global_rtl, align 16, !tbaa !426
  br i1 %214, label %1547, label %1553, !prof !945

1547:                                             ; preds = %1545
  %1548 = icmp eq ptr %1499, %1546
  %1549 = icmp eq ptr %1407, %1546
  %1550 = and i1 %1548, %1549
  br i1 %1550, label %1551, label %1553, !prof !946

1551:                                             ; preds = %1547
  %1552 = tail call ptr @delete_insn_and_edges(ptr noundef %260) #22
  store i1 true, ptr @cse_jumps_altered, align 1
  store ptr null, ptr %268, align 8, !tbaa !730
  br label %1620

1553:                                             ; preds = %1547, %1545
  %1554 = icmp eq ptr %1499, %1546
  br i1 %1554, label %1555, label %1584, !prof !947

1555:                                             ; preds = %1553
  %1556 = load i32, ptr %1407, align 8
  %1557 = and i32 %1556, 65535
  %1558 = icmp eq i32 %1557, 44
  br i1 %1558, label %1559, label %1584, !prof !915

1559:                                             ; preds = %1555
  %1560 = and i32 %1556, 134217728
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1562, label %1584, !prof !883

1562:                                             ; preds = %1559
  br i1 %214, label %1563, label %1580, !prof !883

1563:                                             ; preds = %1562
  %1564 = getelementptr inbounds %struct.rtx_def, ptr %1407, i64 0, i32 1
  %1565 = load ptr, ptr %1564, align 8, !tbaa !442
  %1566 = tail call ptr @gen_jump(ptr noundef %1565) #22
  %1567 = tail call ptr @emit_jump_insn_before(ptr noundef %1566, ptr noundef %260) #22
  %1568 = load ptr, ptr %1564, align 8, !tbaa !442
  %1569 = getelementptr inbounds %struct.rtx_def, ptr %1567, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %1568, ptr %1569, align 8, !tbaa !442
  %1570 = getelementptr inbounds %struct.rtx_def, ptr %1568, i64 0, i32 1, i32 0, i32 2
  %1571 = load i32, ptr %1570, align 8, !tbaa !442
  %1572 = add nsw i32 %1571, 1
  store i32 %1572, ptr %1570, align 8, !tbaa !442
  %1573 = tail call ptr @find_reg_note(ptr noundef %260, i32 noundef 28, ptr noundef null) #22
  %1574 = icmp eq ptr %1573, null
  br i1 %1574, label %1578, label %1575, !prof !883

1575:                                             ; preds = %1563
  %1576 = getelementptr inbounds %struct.rtx_def, ptr %1573, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %1576, align 8, !tbaa !442
  %1577 = getelementptr inbounds %struct.rtx_def, ptr %1567, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %1573, ptr %1577, align 8, !tbaa !442
  br label %1578

1578:                                             ; preds = %1575, %1563
  %1579 = tail call ptr @delete_insn_and_edges(ptr noundef %260) #22
  br label %1582

1580:                                             ; preds = %1562
  %1581 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 1, i32 1
  store i32 -1, ptr %1581, align 8, !tbaa !442
  br label %1582

1582:                                             ; preds = %1580, %1578
  %1583 = phi ptr [ %1567, %1578 ], [ %260, %1580 ]
  store i1 true, ptr @cse_jumps_altered, align 1
  store ptr null, ptr %268, align 8, !tbaa !730
  br label %1620

1584:                                             ; preds = %1559, %1555, %1553
  %1585 = load i32, ptr @do_not_record, align 4, !tbaa !438
  %1586 = icmp eq i32 %1585, 0
  br i1 %1586, label %1598, label %1587, !prof !948

1587:                                             ; preds = %1584
  %1588 = load i32, ptr %1499, align 8
  %1589 = trunc i32 %1588 to i16
  switch i16 %1589, label %1597 [
    i16 37, label %1590
    i16 39, label %1590
    i16 43, label %1591
    i16 40, label %1592
    i16 120, label %1592
  ], !prof !949

1590:                                             ; preds = %1587, %1587
  tail call fastcc void @invalidate(ptr noundef nonnull %1499, i32 noundef 0) #24
  br label %1597

1591:                                             ; preds = %1587
  tail call fastcc void @invalidate(ptr noundef nonnull %1499, i32 noundef 0) #24
  br label %1597

1592:                                             ; preds = %1587, %1587
  %1593 = getelementptr inbounds %struct.rtx_def, ptr %1499, i64 0, i32 1
  %1594 = load ptr, ptr %1593, align 8, !tbaa !442
  %1595 = lshr i32 %1588, 16
  %1596 = and i32 %1595, 255
  tail call fastcc void @invalidate(ptr noundef %1594, i32 noundef %1596) #24
  br label %1597

1597:                                             ; preds = %1587, %1591, %1592, %1590
  store ptr null, ptr %268, align 8, !tbaa !730
  br label %1620

1598:                                             ; preds = %1584, %1538, %1544
  %1599 = phi ptr [ %513, %1538 ], [ null, %1544 ], [ %513, %1584 ]
  %1600 = phi ptr [ %262, %1538 ], [ null, %1544 ], [ %262, %1584 ]
  %1601 = load ptr, ptr %1517, align 8, !tbaa !442
  %1602 = icmp eq ptr %1499, %1601
  br i1 %1602, label %1620, label %1603, !prof !950

1603:                                             ; preds = %1598
  %1604 = load i32, ptr %1601, align 8
  %1605 = and i32 %1604, 65535
  %1606 = icmp eq i32 %1605, 37
  br i1 %1606, label %1607, label %1615, !prof !951

1607:                                             ; preds = %1603
  %1608 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1601) #24
  %1609 = icmp ugt i32 %1608, 52
  br i1 %1609, label %1610, label %1615

1610:                                             ; preds = %1607
  %1611 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1608) #24
  %1612 = getelementptr inbounds %struct.cse_reg_info, ptr %1611, i64 0, i32 1
  %1613 = load i32, ptr %1612, align 4, !tbaa !447
  %1614 = add i32 %1613, 4736
  br label %1617

1615:                                             ; preds = %1607, %1603
  %1616 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1601, i32 noundef %283) #24
  br label %1617

1617:                                             ; preds = %1615, %1610
  %1618 = phi i32 [ %1614, %1610 ], [ %1616, %1615 ]
  %1619 = and i32 %1618, 31
  store i32 %1619, ptr %1515, align 4, !tbaa !943
  br label %1620

1620:                                             ; preds = %1582, %1597, %1551, %1598, %1617, %1305
  %1621 = phi i32 [ 0, %1305 ], [ %514, %1617 ], [ %514, %1598 ], [ %514, %1551 ], [ %514, %1597 ], [ %514, %1582 ]
  %1622 = phi i32 [ 0, %1305 ], [ %328, %1617 ], [ %328, %1598 ], [ %328, %1551 ], [ %328, %1597 ], [ %328, %1582 ]
  %1623 = phi i32 [ 0, %1305 ], [ %329, %1617 ], [ %329, %1598 ], [ %329, %1551 ], [ %329, %1597 ], [ %329, %1582 ]
  %1624 = phi ptr [ null, %1305 ], [ %1599, %1617 ], [ %1599, %1598 ], [ %513, %1551 ], [ %513, %1597 ], [ %513, %1582 ]
  %1625 = phi ptr [ null, %1305 ], [ %1600, %1617 ], [ %1600, %1598 ], [ %262, %1551 ], [ %262, %1597 ], [ %262, %1582 ]
  %1626 = phi i32 [ %1306, %1305 ], [ %261, %1617 ], [ %261, %1598 ], [ %261, %1551 ], [ %261, %1597 ], [ %261, %1582 ]
  %1627 = phi ptr [ %260, %1305 ], [ %260, %1617 ], [ %260, %1598 ], [ %260, %1551 ], [ %260, %1597 ], [ %1583, %1582 ]
  %1628 = add nsw i32 %1626, 1
  %1629 = icmp slt i32 %1628, %213
  br i1 %1629, label %259, label %1630, !prof !952, !llvm.loop !953

1630:                                             ; preds = %1620
  %1631 = icmp ne ptr %1625, null
  %1632 = icmp eq ptr %1624, null
  %1633 = select i1 %1631, i1 %1632, i1 false
  br i1 %1633, label %1634, label %1707, !prof !954

1634:                                             ; preds = %1630
  %1635 = load ptr, ptr %212, align 8, !tbaa !730
  %1636 = icmp eq ptr %1635, null
  %1637 = icmp ne i32 %1623, 0
  %1638 = select i1 %1636, i1 true, i1 %1637
  br i1 %1638, label %1707, label %1639, !prof !955

1639:                                             ; preds = %1634
  %1640 = getelementptr inbounds %struct.rtx_def, ptr %1635, i64 0, i32 1
  %1641 = load ptr, ptr %1640, align 8, !tbaa !442
  %1642 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1625, ptr noundef %1641) #22
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1644, label %1707, !prof !956

1644:                                             ; preds = %1639
  %1645 = getelementptr inbounds %struct.set, ptr %212, i64 0, i32 2
  %1646 = load ptr, ptr %1645, align 8, !tbaa !776
  %1647 = load ptr, ptr %212, align 8, !tbaa !730
  %1648 = getelementptr inbounds %struct.rtx_def, ptr %1647, i64 0, i32 1
  %1649 = load ptr, ptr %1648, align 8, !tbaa !442
  %1650 = load i32, ptr %1649, align 8
  %1651 = and i32 %1650, 65535
  %1652 = icmp eq i32 %1651, 40
  br i1 %1652, label %1653, label %1659, !prof !957

1653:                                             ; preds = %1644
  %1654 = getelementptr inbounds %struct.rtx_def, ptr %1649, i64 0, i32 1
  %1655 = load ptr, ptr %1654, align 8, !tbaa !442
  %1656 = getelementptr inbounds %struct.rtx_def, ptr %1655, i64 0, i32 1
  %1657 = load ptr, ptr %1656, align 8, !tbaa !442
  %1658 = load i32, ptr %1657, align 8
  br label %1659

1659:                                             ; preds = %1653, %1644
  %1660 = phi ptr [ null, %1653 ], [ %1646, %1644 ]
  %1661 = phi i32 [ %1658, %1653 ], [ %1650, %1644 ]
  %1662 = lshr i32 %1661, 16
  %1663 = and i32 %1662, 255
  %1664 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %1625, ptr noundef %1660, i32 noundef 0) #24, !range !503
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1683, label %1666, !prof !958

1666:                                             ; preds = %1659
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %1625) #24
  %1667 = load i32, ptr %1625, align 8
  %1668 = and i32 %1667, 65535
  %1669 = icmp eq i32 %1668, 37
  br i1 %1669, label %1670, label %1678, !prof !959

1670:                                             ; preds = %1666
  %1671 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1625) #24
  %1672 = icmp ugt i32 %1671, 52
  br i1 %1672, label %1673, label %1678

1673:                                             ; preds = %1670
  %1674 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1671) #24
  %1675 = getelementptr inbounds %struct.cse_reg_info, ptr %1674, i64 0, i32 1
  %1676 = load i32, ptr %1675, align 4, !tbaa !447
  %1677 = add i32 %1676, 4736
  br label %1680

1678:                                             ; preds = %1670, %1666
  %1679 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1625, i32 noundef %1663) #24
  br label %1680

1680:                                             ; preds = %1678, %1673
  %1681 = phi i32 [ %1677, %1673 ], [ %1679, %1678 ]
  %1682 = and i32 %1681, 31
  br label %1683

1683:                                             ; preds = %1680, %1659
  %1684 = phi i32 [ %1682, %1680 ], [ %1621, %1659 ]
  %1685 = tail call fastcc ptr @insert(ptr noundef nonnull %1625, ptr noundef %1660, i32 noundef %1684, i32 noundef %1663) #24
  %1686 = trunc i32 %1622 to i8
  %1687 = getelementptr inbounds %struct.table_elt, ptr %1685, i64 0, i32 11
  store i8 %1686, ptr %1687, align 1, !tbaa !698
  %1688 = zext nneg i32 %213 to i64
  br label %1689

1689:                                             ; preds = %1683, %1704
  %1690 = phi i64 [ 0, %1683 ], [ %1705, %1704 ]
  %1691 = getelementptr inbounds %struct.set, ptr %212, i64 %1690
  %1692 = load ptr, ptr %1691, align 8, !tbaa !730
  %1693 = icmp eq ptr %1692, null
  br i1 %1693, label %1704, label %1694, !prof !957

1694:                                             ; preds = %1689
  %1695 = getelementptr inbounds %struct.set, ptr %212, i64 %1690, i32 2
  %1696 = load ptr, ptr %1695, align 8, !tbaa !776
  %1697 = icmp eq ptr %1696, null
  br i1 %1697, label %1698, label %1704, !prof !960

1698:                                             ; preds = %1694
  %1699 = getelementptr inbounds %struct.rtx_def, ptr %1692, i64 0, i32 1, i32 0, i32 0, i64 1
  %1700 = load ptr, ptr %1699, align 8, !tbaa !442
  %1701 = tail call i32 @rtx_equal_p(ptr noundef %1700, ptr noundef nonnull %1625) #22
  %1702 = icmp eq i32 %1701, 0
  br i1 %1702, label %1704, label %1703, !prof !961

1703:                                             ; preds = %1698
  store ptr %1685, ptr %1695, align 8, !tbaa !776
  br label %1704

1704:                                             ; preds = %1689, %1694, %1698, %1703
  %1705 = add nuw nsw i64 %1690, 1
  %1706 = icmp eq i64 %1705, %1688
  br i1 %1706, label %1707, label %1689, !prof !962, !llvm.loop !963

1707:                                             ; preds = %1704, %1630, %1634, %1639
  %1708 = phi i32 [ %1621, %1634 ], [ %1621, %1639 ], [ %1621, %1630 ], [ %1684, %1704 ]
  %1709 = phi ptr [ null, %1634 ], [ null, %1639 ], [ %1624, %1630 ], [ %1685, %1704 ]
  %1710 = zext nneg i32 %213 to i64
  br label %1713

1711:                                             ; preds = %1812
  %1712 = zext nneg i32 %213 to i64
  br label %1815

1713:                                             ; preds = %1707, %1812
  %1714 = phi i64 [ 0, %1707 ], [ %1813, %1812 ]
  %1715 = getelementptr inbounds %struct.set, ptr %212, i64 %1714
  %1716 = load ptr, ptr %1715, align 8, !tbaa !730
  %1717 = icmp eq ptr %1716, null
  br i1 %1717, label %1807, label %1718, !prof !964

1718:                                             ; preds = %1713
  %1719 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 7
  %1720 = load i8, ptr %1719, align 1, !tbaa !770
  %1721 = icmp eq i8 %1720, 0
  br i1 %1721, label %1722, label %1807, !prof !965

1722:                                             ; preds = %1718
  %1723 = getelementptr inbounds %struct.rtx_def, ptr %1716, i64 0, i32 1
  %1724 = getelementptr inbounds %struct.rtx_def, ptr %1716, i64 0, i32 1, i32 0, i32 0, i64 1
  %1725 = load ptr, ptr %1724, align 8, !tbaa !442
  %1726 = load ptr, ptr %1723, align 8, !tbaa !442
  %1727 = tail call i32 @rtx_equal_p(ptr noundef %1725, ptr noundef %1726) #22
  %1728 = icmp eq i32 %1727, 0
  br i1 %1728, label %1729, label %1807, !prof !966

1729:                                             ; preds = %1722
  %1730 = load ptr, ptr %1715, align 8, !tbaa !730
  %1731 = getelementptr inbounds %struct.rtx_def, ptr %1730, i64 0, i32 1
  %1732 = load ptr, ptr %1731, align 8, !tbaa !442
  %1733 = load i32, ptr %1732, align 8
  %1734 = and i32 %1733, 65535
  %1735 = icmp eq i32 %1734, 40
  br i1 %1735, label %1736, label %1739, !prof !967

1736:                                             ; preds = %1729
  %1737 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 2
  store ptr %1709, ptr %1737, align 8, !tbaa !776
  %1738 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 3
  store i32 %1708, ptr %1738, align 8, !tbaa !769
  br label %1812

1739:                                             ; preds = %1729
  %1740 = icmp eq ptr %1709, null
  %1741 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 1
  %1742 = load ptr, ptr %1741, align 8, !tbaa !766
  %1743 = load i32, ptr %1742, align 8
  %1744 = lshr i32 %1743, 16
  %1745 = and i32 %1744, 255
  %1746 = icmp eq i32 %1745, 0
  %1747 = lshr i32 %1733, 16
  %1748 = and i32 %1747, 255
  %1749 = select i1 %1746, i32 %1748, i32 %1745, !prof !968
  br i1 %1740, label %1750, label %1753, !prof !969

1750:                                             ; preds = %1739
  %1751 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 11
  %1752 = load ptr, ptr %1751, align 8, !tbaa !798
  br label %1753

1753:                                             ; preds = %1750, %1739
  %1754 = phi ptr [ %1709, %1739 ], [ %1752, %1750 ]
  %1755 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 2
  %1756 = load ptr, ptr %1755, align 8, !tbaa !776
  %1757 = icmp eq ptr %1756, null
  br i1 %1757, label %1758, label %1788, !prof !970

1758:                                             ; preds = %1753
  %1759 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %1742, ptr noundef %1754, i32 noundef 0) #24, !range !503
  %1760 = icmp eq i32 %1759, 0
  br i1 %1760, label %1761, label %1764, !prof !971

1761:                                             ; preds = %1758
  %1762 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 3
  %1763 = load i32, ptr %1762, align 8, !tbaa !769
  br label %1782

1764:                                             ; preds = %1758
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %1742) #24
  %1765 = load i32, ptr %1742, align 8
  %1766 = and i32 %1765, 65535
  %1767 = icmp eq i32 %1766, 37
  br i1 %1767, label %1768, label %1776, !prof !972

1768:                                             ; preds = %1764
  %1769 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1742) #24
  %1770 = icmp ugt i32 %1769, 52
  br i1 %1770, label %1771, label %1776, !prof !973

1771:                                             ; preds = %1768
  %1772 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1769) #24
  %1773 = getelementptr inbounds %struct.cse_reg_info, ptr %1772, i64 0, i32 1
  %1774 = load i32, ptr %1773, align 4, !tbaa !447
  %1775 = add i32 %1774, 4736
  br label %1778

1776:                                             ; preds = %1768, %1764
  %1777 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1742, i32 noundef %1749) #24
  br label %1778

1778:                                             ; preds = %1776, %1771
  %1779 = phi i32 [ %1775, %1771 ], [ %1777, %1776 ]
  %1780 = and i32 %1779, 31
  %1781 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 3
  store i32 %1780, ptr %1781, align 8, !tbaa !769
  br label %1782

1782:                                             ; preds = %1761, %1778
  %1783 = phi i32 [ %1763, %1761 ], [ %1780, %1778 ]
  %1784 = tail call fastcc ptr @insert(ptr noundef nonnull %1742, ptr noundef %1754, i32 noundef %1783, i32 noundef %1749) #24
  %1785 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 6
  %1786 = load i8, ptr %1785, align 8, !tbaa !771
  %1787 = getelementptr inbounds %struct.table_elt, ptr %1784, i64 0, i32 11
  store i8 %1786, ptr %1787, align 1, !tbaa !698
  store ptr %1784, ptr %1755, align 8, !tbaa !776
  br label %1788

1788:                                             ; preds = %1782, %1753
  %1789 = phi ptr [ %1784, %1782 ], [ %1754, %1753 ]
  %1790 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 9
  %1791 = load ptr, ptr %1790, align 8, !tbaa !797
  %1792 = icmp eq ptr %1791, null
  br i1 %1792, label %1812, label %1793, !prof !974

1793:                                             ; preds = %1788
  %1794 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 11
  %1795 = load ptr, ptr %1794, align 8, !tbaa !798
  %1796 = icmp ne ptr %1795, null
  %1797 = icmp eq ptr %1742, %1791
  %1798 = or i1 %1797, %1796
  br i1 %1798, label %1812, label %1799, !prof !975

1799:                                             ; preds = %1793
  %1800 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1791, ptr noundef nonnull %1742) #22
  %1801 = icmp eq i32 %1800, 0
  br i1 %1801, label %1802, label %1812, !prof !976

1802:                                             ; preds = %1799
  %1803 = load ptr, ptr %1790, align 8, !tbaa !797
  %1804 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 10
  %1805 = load i32, ptr %1804, align 8, !tbaa !796
  %1806 = tail call fastcc ptr @insert(ptr noundef %1803, ptr noundef %1789, i32 noundef %1805, i32 noundef %1749) #24
  store ptr %1806, ptr %1755, align 8, !tbaa !776
  br label %1812

1807:                                             ; preds = %1722, %1718, %1713
  %1808 = getelementptr inbounds %struct.set, ptr %212, i64 %1714, i32 2
  %1809 = load ptr, ptr %1808, align 8, !tbaa !776
  %1810 = icmp eq ptr %1809, null
  br i1 %1810, label %1811, label %1812, !prof !977

1811:                                             ; preds = %1807
  store ptr %1709, ptr %1808, align 8, !tbaa !776
  br label %1812

1812:                                             ; preds = %1788, %1793, %1799, %1802, %1736, %1811, %1807
  %1813 = add nuw nsw i64 %1714, 1
  %1814 = icmp eq i64 %1813, %1710
  br i1 %1814, label %1711, label %1713, !prof !758, !llvm.loop !978

1815:                                             ; preds = %1711, %1897
  %1816 = phi i64 [ 0, %1711 ], [ %1898, %1897 ]
  %1817 = getelementptr inbounds %struct.set, ptr %212, i64 %1816
  %1818 = load ptr, ptr %1817, align 8, !tbaa !730
  %1819 = icmp eq ptr %1818, null
  br i1 %1819, label %1897, label %1820, !prof !964

1820:                                             ; preds = %1815
  %1821 = getelementptr inbounds %struct.set, ptr %212, i64 %1816, i32 5
  %1822 = load ptr, ptr %1821, align 8, !tbaa !938
  %1823 = load i32, ptr %1822, align 8
  %1824 = and i32 %1823, 65535
  %1825 = icmp eq i32 %1824, 43
  br i1 %1825, label %1826, label %1894, !prof !979

1826:                                             ; preds = %1820
  %1827 = getelementptr inbounds %struct.rtx_def, ptr %1822, i64 0, i32 1
  %1828 = load ptr, ptr %1827, align 8, !tbaa !442
  %1829 = load i32, ptr %1828, align 8
  %1830 = lshr i32 %1829, 16
  %1831 = and i32 %1830, 255
  %1832 = and i32 %1829, 65535
  %1833 = icmp eq i32 %1832, 37
  br i1 %1833, label %1834, label %1842, !prof !980

1834:                                             ; preds = %1826
  %1835 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1828) #24
  %1836 = icmp ugt i32 %1835, 52
  br i1 %1836, label %1837, label %1842, !prof !981

1837:                                             ; preds = %1834
  %1838 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1835) #24
  %1839 = getelementptr inbounds %struct.cse_reg_info, ptr %1838, i64 0, i32 1
  %1840 = load i32, ptr %1839, align 4, !tbaa !447
  %1841 = add i32 %1840, 4736
  br label %1844

1842:                                             ; preds = %1834, %1826
  %1843 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1828, i32 noundef %1831) #24
  br label %1844

1844:                                             ; preds = %1842, %1837
  %1845 = phi i32 [ %1841, %1837 ], [ %1843, %1842 ]
  %1846 = and i32 %1845, 31
  %1847 = tail call fastcc ptr @lookup(ptr noundef nonnull %1828, i32 noundef %1846, i32 noundef %1831) #24
  %1848 = icmp eq ptr %1847, null
  br i1 %1848, label %1849, label %1894, !prof !765

1849:                                             ; preds = %1844
  %1850 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %1828, ptr noundef null, i32 noundef 0) #24, !range !503
  %1851 = icmp eq i32 %1850, 0
  br i1 %1851, label %1891, label %1852, !prof !982

1852:                                             ; preds = %1849
  %1853 = load ptr, ptr %1817, align 8, !tbaa !730
  %1854 = getelementptr inbounds %struct.rtx_def, ptr %1853, i64 0, i32 1
  %1855 = load ptr, ptr %1854, align 8, !tbaa !442
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %1828) #24
  %1856 = load i32, ptr %1828, align 8
  %1857 = and i32 %1856, 65535
  %1858 = icmp eq i32 %1857, 37
  br i1 %1858, label %1859, label %1867, !prof !983

1859:                                             ; preds = %1852
  %1860 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1828) #24
  %1861 = icmp ugt i32 %1860, 52
  br i1 %1861, label %1862, label %1867, !prof !984

1862:                                             ; preds = %1859
  %1863 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1860) #24
  %1864 = getelementptr inbounds %struct.cse_reg_info, ptr %1863, i64 0, i32 1
  %1865 = load i32, ptr %1864, align 4, !tbaa !447
  %1866 = add i32 %1865, 4736
  br label %1869

1867:                                             ; preds = %1859, %1852
  %1868 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1828, i32 noundef %1831) #24
  br label %1869

1869:                                             ; preds = %1867, %1862
  %1870 = phi i32 [ %1866, %1862 ], [ %1868, %1867 ]
  %1871 = and i32 %1870, 31
  %1872 = load i32, ptr %1855, align 8
  %1873 = and i32 %1872, 65535
  %1874 = icmp eq i32 %1873, 37
  br i1 %1874, label %1875, label %1883, !prof !985

1875:                                             ; preds = %1869
  %1876 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1855) #24
  %1877 = icmp ugt i32 %1876, 52
  br i1 %1877, label %1878, label %1883

1878:                                             ; preds = %1875
  %1879 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1876) #24
  %1880 = getelementptr inbounds %struct.cse_reg_info, ptr %1879, i64 0, i32 1
  %1881 = load i32, ptr %1880, align 4, !tbaa !447
  %1882 = add i32 %1881, 4736
  br label %1887

1883:                                             ; preds = %1875, %1869
  %1884 = lshr i32 %1872, 16
  %1885 = and i32 %1884, 255
  %1886 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1855, i32 noundef %1885) #24
  br label %1887

1887:                                             ; preds = %1883, %1878
  %1888 = phi i32 [ %1882, %1878 ], [ %1886, %1883 ]
  %1889 = and i32 %1888, 31
  %1890 = getelementptr inbounds %struct.set, ptr %212, i64 %1816, i32 4
  store i32 %1889, ptr %1890, align 4, !tbaa !943
  br label %1891

1891:                                             ; preds = %1887, %1849
  %1892 = phi i32 [ %1871, %1887 ], [ %1846, %1849 ]
  %1893 = tail call fastcc ptr @insert(ptr noundef nonnull %1828, ptr noundef null, i32 noundef %1892, i32 noundef %1831) #24
  br label %1894

1894:                                             ; preds = %1820, %1844, %1891
  %1895 = phi ptr [ %1847, %1844 ], [ %1893, %1891 ], [ null, %1820 ]
  %1896 = getelementptr inbounds %struct.set, ptr %212, i64 %1816, i32 12
  store ptr %1895, ptr %1896, align 8, !tbaa !986
  br label %1897

1897:                                             ; preds = %1894, %1815
  %1898 = add nuw nsw i64 %1816, 1
  %1899 = icmp eq i64 %1898, %1712
  br i1 %1899, label %1900, label %1815, !prof !758, !llvm.loop !987

1900:                                             ; preds = %1897, %253
  %1901 = phi ptr [ %0, %253 ], [ %1627, %1897 ]
  %1902 = phi i1 [ false, %253 ], [ true, %1897 ]
  %1903 = phi ptr [ %254, %253 ], [ %212, %1897 ]
  %1904 = phi i32 [ %255, %253 ], [ %213, %1897 ]
  %1905 = phi i1 [ false, %253 ], [ %214, %1897 ]
  tail call fastcc void @invalidate_from_clobbers(ptr noundef nonnull %3) #24
  %1906 = load i32, ptr %1901, align 8
  %1907 = and i32 %1906, 65535
  %1908 = icmp eq i32 %1907, 10
  br i1 %1908, label %1909, label %1914, !prof !724

1909:                                             ; preds = %1900
  %1910 = and i32 %1906, -2080374784
  %1911 = icmp eq i32 %1910, 0
  br i1 %1911, label %1912, label %1913, !prof !988

1912:                                             ; preds = %1909
  tail call fastcc void @invalidate_memory() #24
  br label %1913

1913:                                             ; preds = %1912, %1909
  tail call fastcc void @invalidate_for_call() #24
  br label %1914

1914:                                             ; preds = %1913, %1900
  br i1 %1902, label %1915, label %1937, !prof !989

1915:                                             ; preds = %1914
  %1916 = zext nneg i32 %1904 to i64
  br label %1917

1917:                                             ; preds = %1915, %1934
  %1918 = phi i64 [ 0, %1915 ], [ %1935, %1934 ]
  %1919 = getelementptr inbounds %struct.set, ptr %1903, i64 %1918
  %1920 = load ptr, ptr %1919, align 8, !tbaa !730
  %1921 = icmp eq ptr %1920, null
  br i1 %1921, label %1934, label %1922, !prof !964

1922:                                             ; preds = %1917
  %1923 = getelementptr inbounds %struct.rtx_def, ptr %1920, i64 0, i32 1
  %1924 = load ptr, ptr %1923, align 8, !tbaa !442
  %1925 = load i32, ptr %1924, align 8
  %1926 = trunc i32 %1925 to i16
  switch i16 %1926, label %1934 [
    i16 37, label %1927
    i16 39, label %1927
    i16 43, label %1928
    i16 40, label %1929
    i16 120, label %1929
  ], !prof !990

1927:                                             ; preds = %1922, %1922
  tail call fastcc void @invalidate(ptr noundef nonnull %1924, i32 noundef 0) #24
  br label %1934

1928:                                             ; preds = %1922
  tail call fastcc void @invalidate(ptr noundef nonnull %1924, i32 noundef 0) #24
  br label %1934

1929:                                             ; preds = %1922, %1922
  %1930 = getelementptr inbounds %struct.rtx_def, ptr %1924, i64 0, i32 1
  %1931 = load ptr, ptr %1930, align 8, !tbaa !442
  %1932 = lshr i32 %1925, 16
  %1933 = and i32 %1932, 255
  tail call fastcc void @invalidate(ptr noundef %1931, i32 noundef %1933) #24
  br label %1934

1934:                                             ; preds = %1927, %1929, %1928, %1922, %1917
  %1935 = add nuw nsw i64 %1918, 1
  %1936 = icmp eq i64 %1935, %1916
  br i1 %1936, label %1937, label %1917, !prof !758, !llvm.loop !991

1937:                                             ; preds = %1934, %1914
  %1938 = load i32, ptr %1901, align 8
  %1939 = and i32 %1938, 65535
  %1940 = icmp eq i32 %1939, 8
  br i1 %1940, label %1941, label %1952, !prof !992

1941:                                             ; preds = %1937
  %1942 = getelementptr inbounds %struct.rtx_def, ptr %1901, i64 1
  %1943 = load ptr, ptr %1942, align 8, !tbaa !442
  %1944 = load i32, ptr %1943, align 8
  %1945 = and i32 %1944, 65535
  %1946 = icmp eq i32 %1945, 17
  br i1 %1946, label %1947, label %1952, !prof !993

1947:                                             ; preds = %1941
  %1948 = and i32 %1944, 134217728
  %1949 = icmp eq i32 %1948, 0
  br i1 %1949, label %1952, label %1950

1950:                                             ; preds = %1947
  tail call fastcc void @flush_hash_table() #24
  %1951 = load i32, ptr %1901, align 8
  br label %1952

1952:                                             ; preds = %1950, %1947, %1941, %1937
  %1953 = phi i32 [ %1951, %1950 ], [ %1938, %1947 ], [ %1938, %1941 ], [ %1938, %1937 ]
  %1954 = and i32 %1953, 65535
  %1955 = icmp eq i32 %1954, 10
  br i1 %1955, label %1956, label %1960, !prof !724

1956:                                             ; preds = %1952
  %1957 = tail call ptr @find_reg_note(ptr noundef nonnull %1901, i32 noundef 30, ptr noundef null) #22
  %1958 = icmp eq ptr %1957, null
  br i1 %1958, label %1960, label %1959, !prof !994

1959:                                             ; preds = %1956
  tail call fastcc void @flush_hash_table() #24
  br label %2420

1960:                                             ; preds = %1956, %1952
  br i1 %1902, label %1961, label %2309, !prof !995

1961:                                             ; preds = %1960
  %1962 = zext nneg i32 %1904 to i64
  br label %1966

1963:                                             ; preds = %2003
  br i1 %1902, label %1964, label %2309, !prof !585

1964:                                             ; preds = %1963
  %1965 = zext nneg i32 %1904 to i64
  br label %2009

1966:                                             ; preds = %1961, %2003
  %1967 = phi i64 [ 0, %1961 ], [ %2004, %2003 ]
  %1968 = getelementptr inbounds %struct.set, ptr %1903, i64 %1967
  %1969 = load ptr, ptr %1968, align 8, !tbaa !730
  %1970 = icmp eq ptr %1969, null
  br i1 %1970, label %2003, label %1971, !prof !964

1971:                                             ; preds = %1966
  %1972 = getelementptr inbounds %struct.rtx_def, ptr %1969, i64 0, i32 1
  %1973 = load ptr, ptr %1972, align 8, !tbaa !442
  %1974 = load i32, ptr %1973, align 8
  %1975 = and i32 %1974, 65535
  %1976 = icmp eq i32 %1975, 37
  br i1 %1976, label %1979, label %1977, !prof !996

1977:                                             ; preds = %1971
  %1978 = tail call fastcc i32 @mention_regs(ptr noundef nonnull %1973) #24, !range !503
  br label %2003

1979:                                             ; preds = %1971
  %1980 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1973) #24
  %1981 = icmp ult i32 %1980, 53
  br i1 %1981, label %1982, label %1986, !prof !997

1982:                                             ; preds = %1979
  %1983 = lshr i32 %1974, 16
  %1984 = and i32 %1983, 255
  %1985 = tail call fastcc i32 @end_hard_regno(i32 noundef %1984, i32 noundef %1980) #24
  br label %1988

1986:                                             ; preds = %1979
  %1987 = add i32 %1980, 1
  br label %1988

1988:                                             ; preds = %1986, %1982
  %1989 = phi i32 [ %1985, %1982 ], [ %1987, %1986 ]
  %1990 = icmp ult i32 %1980, %1989
  br i1 %1990, label %1991, label %2003, !prof !998

1991:                                             ; preds = %1988, %2000
  %1992 = phi i32 [ %2001, %2000 ], [ %1980, %1988 ]
  %1993 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1992) #24
  %1994 = getelementptr inbounds %struct.cse_reg_info, ptr %1993, i64 0, i32 3
  %1995 = load i32, ptr %1994, align 4, !tbaa !479
  %1996 = icmp sgt i32 %1995, -1
  br i1 %1996, label %1997, label %2000, !prof !999

1997:                                             ; preds = %1991
  tail call fastcc void @remove_invalid_refs(i32 noundef %1992) #24
  %1998 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1992) #24
  %1999 = getelementptr inbounds %struct.cse_reg_info, ptr %1998, i64 0, i32 3
  store i32 -1, ptr %1999, align 4, !tbaa !479
  br label %2000

2000:                                             ; preds = %1991, %1997
  %2001 = add i32 %1992, 1
  %2002 = icmp eq i32 %2001, %1989
  br i1 %2002, label %2003, label %1991, !prof !998, !llvm.loop !1000

2003:                                             ; preds = %2000, %1988, %1977, %1966
  %2004 = add nuw nsw i64 %1967, 1
  %2005 = icmp eq i64 %2004, %1962
  br i1 %2005, label %1963, label %1966, !prof !758, !llvm.loop !1001

2006:                                             ; preds = %2046
  br i1 %1902, label %2007, label %2309, !prof !585

2007:                                             ; preds = %2006
  %2008 = zext nneg i32 %1904 to i64
  br label %2049

2009:                                             ; preds = %1964, %2046
  %2010 = phi i64 [ 0, %1964 ], [ %2047, %2046 ]
  %2011 = getelementptr inbounds %struct.set, ptr %1903, i64 %2010
  %2012 = load ptr, ptr %2011, align 8, !tbaa !730
  %2013 = icmp eq ptr %2012, null
  br i1 %2013, label %2046, label %2014, !prof !964

2014:                                             ; preds = %2009
  %2015 = getelementptr inbounds %struct.set, ptr %1903, i64 %2010, i32 12
  %2016 = load ptr, ptr %2015, align 8, !tbaa !986
  %2017 = icmp eq ptr %2016, null
  br i1 %2017, label %2023, label %2018, !prof !1002

2018:                                             ; preds = %2014
  %2019 = getelementptr inbounds %struct.table_elt, ptr %2016, i64 0, i32 6
  %2020 = load ptr, ptr %2019, align 8, !tbaa !779
  %2021 = icmp eq ptr %2020, null
  br i1 %2021, label %2022, label %2023, !prof !1003

2022:                                             ; preds = %2018
  store ptr null, ptr %2011, align 8, !tbaa !730
  br label %2046

2023:                                             ; preds = %2018, %2014
  %2024 = getelementptr inbounds %struct.set, ptr %1903, i64 %2010, i32 2
  %2025 = load ptr, ptr %2024, align 8, !tbaa !776
  %2026 = icmp eq ptr %2025, null
  br i1 %2026, label %2046, label %2027, !prof !1004

2027:                                             ; preds = %2023
  %2028 = getelementptr inbounds %struct.table_elt, ptr %2025, i64 0, i32 6
  %2029 = load ptr, ptr %2028, align 8, !tbaa !779
  %2030 = icmp eq ptr %2029, null
  br i1 %2030, label %2031, label %2046, !prof !1005

2031:                                             ; preds = %2027, %2031
  %2032 = phi ptr [ %2034, %2031 ], [ %2025, %2027 ]
  %2033 = getelementptr inbounds %struct.table_elt, ptr %2032, i64 0, i32 5
  %2034 = load ptr, ptr %2033, align 8, !tbaa !1006
  %2035 = icmp eq ptr %2034, null
  br i1 %2035, label %2036, label %2031, !prof !1007, !llvm.loop !1008

2036:                                             ; preds = %2031, %2041
  %2037 = phi ptr [ %2043, %2041 ], [ %2032, %2031 ]
  %2038 = getelementptr inbounds %struct.table_elt, ptr %2037, i64 0, i32 6
  %2039 = load ptr, ptr %2038, align 8, !tbaa !779
  %2040 = icmp eq ptr %2039, null
  br i1 %2040, label %2041, label %2045, !prof !1009

2041:                                             ; preds = %2036
  %2042 = getelementptr inbounds %struct.table_elt, ptr %2037, i64 0, i32 4
  %2043 = load ptr, ptr %2042, align 8, !tbaa !866
  %2044 = icmp eq ptr %2043, null
  br i1 %2044, label %2045, label %2036, !prof !1010, !llvm.loop !1011

2045:                                             ; preds = %2036, %2041
  store ptr %2039, ptr %2024, align 8, !tbaa !776
  br label %2046

2046:                                             ; preds = %2009, %2023, %2027, %2045, %2022
  %2047 = add nuw nsw i64 %2010, 1
  %2048 = icmp eq i64 %2047, %1965
  br i1 %2048, label %2006, label %2009, !prof !758, !llvm.loop !1012

2049:                                             ; preds = %2007, %2306
  %2050 = phi i64 [ 0, %2007 ], [ %2307, %2306 ]
  %2051 = getelementptr inbounds %struct.set, ptr %1903, i64 %2050
  %2052 = load ptr, ptr %2051, align 8, !tbaa !730
  %2053 = icmp eq ptr %2052, null
  br i1 %2053, label %2306, label %2054, !prof !964

2054:                                             ; preds = %2049
  %2055 = getelementptr inbounds %struct.rtx_def, ptr %2052, i64 0, i32 1
  %2056 = load ptr, ptr %2055, align 8, !tbaa !442
  %2057 = load i32, ptr @flag_float_store, align 4, !tbaa !438
  %2058 = icmp eq i32 %2057, 0
  %2059 = load i32, ptr %2056, align 8
  br i1 %2058, label %2069, label %2060, !prof !1013

2060:                                             ; preds = %2054
  %2061 = and i32 %2059, 65535
  %2062 = icmp eq i32 %2061, 43
  br i1 %2062, label %2063, label %2069

2063:                                             ; preds = %2060
  %2064 = lshr i32 %2059, 16
  %2065 = and i32 %2064, 255
  %2066 = zext nneg i32 %2065 to i64
  %2067 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2066
  %2068 = load i8, ptr %2067, align 1, !tbaa !442
  switch i8 %2068, label %2069 [
    i8 8, label %2306
    i8 9, label %2306
    i8 11, label %2306
    i8 17, label %2306
  ]

2069:                                             ; preds = %2063, %2060, %2054
  %2070 = lshr i32 %2059, 16
  %2071 = and i32 %2070, 255
  %2072 = icmp eq i32 %2071, 1
  br i1 %2072, label %2306, label %2073, !prof !1014

2073:                                             ; preds = %2069
  %2074 = getelementptr inbounds %struct.set, ptr %1903, i64 %2050, i32 2
  %2075 = load ptr, ptr %2074, align 8, !tbaa !776
  %2076 = icmp eq ptr %2075, null
  br i1 %2076, label %2306, label %2077, !prof !1015

2077:                                             ; preds = %2073
  %2078 = trunc i32 %2059 to i16
  switch i16 %2078, label %2105 [
    i16 39, label %2079
    i16 40, label %2098
  ], !prof !1016

2079:                                             ; preds = %2077
  %2080 = zext nneg i32 %2071 to i64
  %2081 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2080
  %2082 = load i8, ptr %2081, align 1, !tbaa !442
  %2083 = getelementptr inbounds %struct.rtx_def, ptr %2056, i64 0, i32 1
  %2084 = load ptr, ptr %2083, align 8, !tbaa !442
  %2085 = load i32, ptr %2084, align 8
  %2086 = lshr i32 %2085, 16
  %2087 = and i32 %2086, 255
  %2088 = zext nneg i32 %2087 to i64
  %2089 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2088
  %2090 = load i8, ptr %2089, align 1, !tbaa !442
  %2091 = icmp ugt i8 %2082, %2090
  br i1 %2091, label %2092, label %2108, !prof !1017

2092:                                             ; preds = %2079
  %2093 = getelementptr inbounds %struct.set, ptr %1903, i64 %2050, i32 1
  %2094 = load ptr, ptr %2093, align 8, !tbaa !766
  %2095 = load i32, ptr %2094, align 8
  %2096 = and i32 %2095, 65534
  %2097 = icmp eq i32 %2096, 98
  br i1 %2097, label %2306, label %2108, !prof !1018

2098:                                             ; preds = %2077
  %2099 = getelementptr inbounds %struct.rtx_def, ptr %2056, i64 0, i32 1
  %2100 = load ptr, ptr %2099, align 8, !tbaa !442
  %2101 = getelementptr inbounds %struct.rtx_def, ptr %2100, i64 0, i32 1
  %2102 = load ptr, ptr %2101, align 8, !tbaa !442
  %2103 = load i32, ptr %2102, align 8
  %2104 = trunc i32 %2103 to i16
  br label %2105

2105:                                             ; preds = %2077, %2098
  %2106 = phi i16 [ %2078, %2077 ], [ %2104, %2098 ]
  %2107 = phi ptr [ %2056, %2077 ], [ %2102, %2098 ]
  switch i16 %2106, label %2132 [
    i16 37, label %2108
    i16 39, label %2108
  ], !prof !1019

2108:                                             ; preds = %2092, %2079, %2105, %2105
  %2109 = phi ptr [ %2107, %2105 ], [ %2107, %2105 ], [ %2056, %2079 ], [ %2056, %2092 ]
  %2110 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2109, ptr noundef nonnull %2075, i32 noundef 1) #24, !range !503
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2132, label %2112, !prof !1020

2112:                                             ; preds = %2108
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %2109) #24
  %2113 = load i32, ptr %2109, align 8
  %2114 = and i32 %2113, 65535
  %2115 = icmp eq i32 %2114, 37
  br i1 %2115, label %2116, label %2124, !prof !1021

2116:                                             ; preds = %2112
  %2117 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2109) #24
  %2118 = icmp ugt i32 %2117, 52
  br i1 %2118, label %2119, label %2124, !prof !1022

2119:                                             ; preds = %2116
  %2120 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2117) #24
  %2121 = getelementptr inbounds %struct.cse_reg_info, ptr %2120, i64 0, i32 1
  %2122 = load i32, ptr %2121, align 4, !tbaa !447
  %2123 = add i32 %2122, 4736
  br label %2128

2124:                                             ; preds = %2116, %2112
  %2125 = lshr i32 %2113, 16
  %2126 = and i32 %2125, 255
  %2127 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2109, i32 noundef %2126) #24
  br label %2128

2128:                                             ; preds = %2124, %2119
  %2129 = phi i32 [ %2123, %2119 ], [ %2127, %2124 ]
  %2130 = and i32 %2129, 31
  %2131 = getelementptr inbounds %struct.set, ptr %1903, i64 %2050, i32 4
  store i32 %2130, ptr %2131, align 4, !tbaa !943
  br label %2132

2132:                                             ; preds = %2105, %2108, %2128
  %2133 = phi ptr [ %2107, %2105 ], [ %2109, %2108 ], [ %2109, %2128 ]
  %2134 = load ptr, ptr %2074, align 8, !tbaa !776
  %2135 = getelementptr inbounds %struct.set, ptr %1903, i64 %2050, i32 4
  %2136 = load i32, ptr %2135, align 4, !tbaa !943
  %2137 = load i32, ptr %2133, align 8
  %2138 = lshr i32 %2137, 16
  %2139 = and i32 %2138, 255
  %2140 = tail call fastcc ptr @insert(ptr noundef nonnull %2133, ptr noundef %2134, i32 noundef %2136, i32 noundef %2139) #24
  %2141 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !833
  %2142 = icmp eq i64 %2141, 0
  br i1 %2142, label %2162, label %2143, !prof !1023

2143:                                             ; preds = %2132
  %2144 = load i32, ptr %2133, align 8
  %2145 = and i32 %2144, 65535
  %2146 = icmp eq i32 %2145, 37
  br i1 %2146, label %2147, label %2162

2147:                                             ; preds = %2143
  %2148 = lshr i32 %2144, 16
  %2149 = and i32 %2148, 255
  %2150 = zext nneg i32 %2149 to i64
  %2151 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2150
  %2152 = load i8, ptr %2151, align 1, !tbaa !442
  %2153 = and i8 %2152, -2
  %2154 = icmp eq i8 %2153, 2
  br i1 %2154, label %2155, label %2162

2155:                                             ; preds = %2147
  %2156 = load ptr, ptr %2074, align 8, !tbaa !776
  %2157 = load ptr, ptr %2156, align 8, !tbaa !430
  %2158 = load i32, ptr %2157, align 8
  %2159 = and i32 %2158, 65535
  %2160 = icmp eq i32 %2159, 30
  br i1 %2160, label %2161, label %2162

2161:                                             ; preds = %2155
  tail call fastcc void @insert_const_anchors(ptr noundef nonnull %2133, ptr noundef nonnull %2157, i32 noundef %2149) #24
  br label %2162

2162:                                             ; preds = %2147, %2161, %2155, %2143, %2132
  %2163 = getelementptr inbounds %struct.set, ptr %1903, i64 %2050, i32 5
  %2164 = load ptr, ptr %2163, align 8, !tbaa !938
  %2165 = load i32, ptr %2164, align 8
  %2166 = and i32 %2165, 67174399
  %2167 = icmp eq i32 %2166, 43
  %2168 = zext i1 %2167 to i8
  %2169 = getelementptr inbounds %struct.table_elt, ptr %2140, i64 0, i32 11
  store i8 %2168, ptr %2169, align 1, !tbaa !698
  %2170 = load i32, ptr %2133, align 8
  %2171 = and i32 %2170, 65535
  %2172 = icmp eq i32 %2171, 39
  br i1 %2172, label %2173, label %2306, !prof !1024

2173:                                             ; preds = %2162
  %2174 = getelementptr inbounds %struct.rtx_def, ptr %2133, i64 0, i32 1
  %2175 = load ptr, ptr %2174, align 8, !tbaa !442
  %2176 = load i32, ptr %2175, align 8
  %2177 = lshr i32 %2176, 16
  %2178 = and i32 %2177, 255
  %2179 = zext nneg i32 %2178 to i64
  %2180 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2179
  %2181 = load i8, ptr %2180, align 1, !tbaa !442
  %2182 = zext i8 %2181 to i16
  %2183 = add nsw i16 %2182, -1
  %2184 = sdiv i16 %2183, 4
  %2185 = lshr i32 %2170, 16
  %2186 = and i32 %2185, 255
  %2187 = zext nneg i32 %2186 to i64
  %2188 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2187
  %2189 = load i8, ptr %2188, align 1, !tbaa !442
  %2190 = zext i8 %2189 to i16
  %2191 = add nsw i16 %2190, -1
  %2192 = sdiv i16 %2191, 4
  %2193 = icmp ne i16 %2184, %2192
  %2194 = icmp ult i8 %2189, %2181
  %2195 = or i1 %2194, %2193
  br i1 %2195, label %2306, label %2196, !prof !1025

2196:                                             ; preds = %2173
  %2197 = load ptr, ptr %2074, align 8, !tbaa !776
  %2198 = icmp eq ptr %2197, null
  br i1 %2198, label %2306, label %2199, !prof !1026

2199:                                             ; preds = %2196
  %2200 = getelementptr inbounds %struct.table_elt, ptr %2197, i64 0, i32 6
  %2201 = load ptr, ptr %2200, align 8, !tbaa !426
  %2202 = icmp eq ptr %2201, null
  br i1 %2202, label %2306, label %2203, !prof !1027

2203:                                             ; preds = %2199, %2301
  %2204 = phi ptr [ %2304, %2301 ], [ %2201, %2199 ]
  %2205 = phi ptr [ %2302, %2301 ], [ null, %2199 ]
  %2206 = load ptr, ptr %2204, align 8, !tbaa !430
  %2207 = load i32, ptr %2206, align 8
  %2208 = and i32 %2207, 65535
  %2209 = icmp eq i32 %2208, 37
  br i1 %2209, label %2216, label %2210, !prof !1027

2210:                                             ; preds = %2203
  %2211 = tail call i32 @exp_equiv_p(ptr noundef nonnull %2206, ptr noundef nonnull %2206, i32 noundef 1, i8 noundef zeroext 0) #24, !range !503
  %2212 = icmp eq i32 %2211, 0
  br i1 %2212, label %2301, label %2213, !prof !1028

2213:                                             ; preds = %2210
  %2214 = load ptr, ptr %2204, align 8, !tbaa !430
  %2215 = load i32, ptr %2214, align 8
  br label %2216

2216:                                             ; preds = %2213, %2203
  %2217 = phi i32 [ %2215, %2213 ], [ %2207, %2203 ]
  %2218 = phi ptr [ %2214, %2213 ], [ %2206, %2203 ]
  %2219 = lshr i32 %2217, 16
  %2220 = and i32 %2219, 255
  %2221 = icmp eq i32 %2220, %2178
  br i1 %2221, label %2230, label %2222, !prof !1026

2222:                                             ; preds = %2216
  %2223 = load i32, ptr %2133, align 8
  %2224 = lshr i32 %2223, 16
  %2225 = and i32 %2224, 255
  %2226 = tail call ptr @simplify_gen_subreg(i32 noundef %2178, ptr noundef nonnull %2218, i32 noundef %2225, i32 noundef 0) #22
  %2227 = icmp eq ptr %2226, null
  br i1 %2227, label %2301, label %2228, !prof !1029

2228:                                             ; preds = %2222
  %2229 = load i32, ptr %2226, align 8
  br label %2230

2230:                                             ; preds = %2228, %2216
  %2231 = phi i32 [ %2229, %2228 ], [ %2217, %2216 ]
  %2232 = phi ptr [ %2226, %2228 ], [ %2218, %2216 ]
  %2233 = and i32 %2231, 65535
  %2234 = icmp eq i32 %2233, 37
  br i1 %2234, label %2235, label %2243, !prof !1030

2235:                                             ; preds = %2230
  %2236 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2232) #24
  %2237 = icmp ugt i32 %2236, 52
  br i1 %2237, label %2238, label %2243, !prof !1030

2238:                                             ; preds = %2235
  %2239 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2236) #24
  %2240 = getelementptr inbounds %struct.cse_reg_info, ptr %2239, i64 0, i32 1
  %2241 = load i32, ptr %2240, align 4, !tbaa !447
  %2242 = add i32 %2241, 4736
  br label %2245

2243:                                             ; preds = %2235, %2230
  %2244 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2232, i32 noundef %2178) #24
  br label %2245

2245:                                             ; preds = %2243, %2238
  %2246 = phi i32 [ %2242, %2238 ], [ %2244, %2243 ]
  %2247 = and i32 %2246, 31
  %2248 = tail call fastcc ptr @lookup(ptr noundef nonnull %2232, i32 noundef %2247, i32 noundef %2178) #24
  %2249 = icmp eq ptr %2248, null
  br i1 %2249, label %2250, label %2276, !prof !1030

2250:                                             ; preds = %2245
  %2251 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2232, ptr noundef %2205, i32 noundef 0) #24, !range !503
  %2252 = icmp eq i32 %2251, 0
  br i1 %2252, label %2270, label %2253, !prof !1030

2253:                                             ; preds = %2250
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %2232) #24
  %2254 = load i32, ptr %2232, align 8
  %2255 = and i32 %2254, 65535
  %2256 = icmp eq i32 %2255, 37
  br i1 %2256, label %2257, label %2265

2257:                                             ; preds = %2253
  %2258 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2232) #24
  %2259 = icmp ugt i32 %2258, 52
  br i1 %2259, label %2260, label %2265

2260:                                             ; preds = %2257
  %2261 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2258) #24
  %2262 = getelementptr inbounds %struct.cse_reg_info, ptr %2261, i64 0, i32 1
  %2263 = load i32, ptr %2262, align 4, !tbaa !447
  %2264 = add i32 %2263, 4736
  br label %2267

2265:                                             ; preds = %2257, %2253
  %2266 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2232, i32 noundef %2178) #24
  br label %2267

2267:                                             ; preds = %2265, %2260
  %2268 = phi i32 [ %2264, %2260 ], [ %2266, %2265 ]
  %2269 = and i32 %2268, 31
  br label %2270

2270:                                             ; preds = %2267, %2250
  %2271 = phi i32 [ %2269, %2267 ], [ %2247, %2250 ]
  %2272 = tail call fastcc ptr @insert(ptr noundef nonnull %2232, ptr noundef %2205, i32 noundef %2271, i32 noundef %2178) #24
  %2273 = getelementptr inbounds %struct.table_elt, ptr %2204, i64 0, i32 11
  %2274 = load i8, ptr %2273, align 1, !tbaa !698
  %2275 = getelementptr inbounds %struct.table_elt, ptr %2272, i64 0, i32 11
  store i8 %2274, ptr %2275, align 1, !tbaa !698
  br label %2283

2276:                                             ; preds = %2245
  %2277 = icmp eq ptr %2205, null
  br i1 %2277, label %2283, label %2278

2278:                                             ; preds = %2276
  %2279 = getelementptr inbounds %struct.table_elt, ptr %2248, i64 0, i32 6
  %2280 = load ptr, ptr %2279, align 8, !tbaa !779
  %2281 = icmp eq ptr %2205, %2280
  br i1 %2281, label %2283, label %2282

2282:                                             ; preds = %2278
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %2248, ptr noundef nonnull %2205) #24
  br label %2283

2283:                                             ; preds = %2276, %2278, %2282, %2270
  %2284 = phi ptr [ %2272, %2270 ], [ %2248, %2282 ], [ %2248, %2278 ], [ %2248, %2276 ]
  %2285 = getelementptr inbounds %struct.table_elt, ptr %2284, i64 0, i32 6
  %2286 = load ptr, ptr %2285, align 8, !tbaa !426
  %2287 = icmp eq ptr %2286, null
  br i1 %2287, label %2301, label %2288, !prof !436

2288:                                             ; preds = %2283, %2297
  %2289 = phi ptr [ %2299, %2297 ], [ %2286, %2283 ]
  %2290 = load ptr, ptr %2289, align 8, !tbaa !430
  %2291 = load i32, ptr %2290, align 8
  %2292 = and i32 %2291, 65535
  %2293 = icmp eq i32 %2292, 37
  br i1 %2293, label %2301, label %2294, !prof !1030

2294:                                             ; preds = %2288
  %2295 = tail call i32 @exp_equiv_p(ptr noundef nonnull %2290, ptr noundef nonnull %2290, i32 noundef 1, i8 noundef zeroext 0) #24, !range !503
  %2296 = icmp eq i32 %2295, 0
  br i1 %2296, label %2297, label %2301, !prof !1026

2297:                                             ; preds = %2294
  %2298 = getelementptr inbounds %struct.table_elt, ptr %2289, i64 0, i32 4
  %2299 = load ptr, ptr %2298, align 8, !tbaa !426
  %2300 = icmp eq ptr %2299, null
  br i1 %2300, label %2301, label %2288, !prof !1031, !llvm.loop !1032

2301:                                             ; preds = %2288, %2297, %2294, %2283, %2222, %2210
  %2302 = phi ptr [ %2205, %2210 ], [ %2205, %2222 ], [ null, %2283 ], [ %2289, %2288 ], [ null, %2297 ], [ %2289, %2294 ]
  %2303 = getelementptr inbounds %struct.table_elt, ptr %2204, i64 0, i32 4
  %2304 = load ptr, ptr %2303, align 8, !tbaa !426
  %2305 = icmp eq ptr %2304, null
  br i1 %2305, label %2306, label %2203, !prof !1033, !llvm.loop !1034

2306:                                             ; preds = %2301, %2199, %2092, %2063, %2063, %2063, %2063, %2073, %2069, %2196, %2173, %2162, %2049
  %2307 = add nuw nsw i64 %2050, 1
  %2308 = icmp eq i64 %2307, %2008
  br i1 %2308, label %2309, label %2049, !prof !758, !llvm.loop !1035

2309:                                             ; preds = %2306, %1960, %1963, %2006
  br i1 %1905, label %2310, label %2420, !prof !1036

2310:                                             ; preds = %2309
  %2311 = load ptr, ptr %1903, align 8, !tbaa !730
  %2312 = icmp eq ptr %2311, null
  br i1 %2312, label %2420, label %2313, !prof !1037

2313:                                             ; preds = %2310
  %2314 = getelementptr inbounds %struct.rtx_def, ptr %2311, i64 0, i32 1
  %2315 = load ptr, ptr %2314, align 8, !tbaa !442
  %2316 = load i32, ptr %2315, align 8
  %2317 = and i32 %2316, 65535
  %2318 = icmp eq i32 %2317, 37
  br i1 %2318, label %2319, label %2420, !prof !1038

2319:                                             ; preds = %2313
  %2320 = getelementptr inbounds %struct.rtx_def, ptr %1901, i64 0, i32 1, i32 0, i32 0, i64 1
  %2321 = load ptr, ptr %2320, align 8, !tbaa !442
  %2322 = getelementptr inbounds %struct.rtx_def, ptr %2321, i64 0, i32 1, i32 0, i32 0, i64 2
  %2323 = load ptr, ptr %2322, align 8, !tbaa !442
  %2324 = icmp eq ptr %2323, %1901
  br i1 %2324, label %2325, label %2420, !prof !1039

2325:                                             ; preds = %2319
  %2326 = getelementptr inbounds %struct.rtx_def, ptr %2311, i64 0, i32 1, i32 0, i32 0, i64 1
  %2327 = load ptr, ptr %2326, align 8, !tbaa !442
  %2328 = load i32, ptr %2327, align 8
  %2329 = and i32 %2328, 65535
  %2330 = icmp eq i32 %2329, 37
  br i1 %2330, label %2331, label %2420, !prof !1040

2331:                                             ; preds = %2325
  %2332 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2327) #24
  %2333 = icmp ugt i32 %2332, 52
  br i1 %2333, label %2334, label %2420, !prof !1041

2334:                                             ; preds = %2331
  %2335 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2332) #24
  %2336 = getelementptr inbounds %struct.cse_reg_info, ptr %2335, i64 0, i32 1
  %2337 = load i32, ptr %2336, align 4, !tbaa !447
  %2338 = icmp sgt i32 %2337, -1
  br i1 %2338, label %2339, label %2420, !prof !1042

2339:                                             ; preds = %2334
  %2340 = load ptr, ptr %1903, align 8, !tbaa !730
  %2341 = getelementptr inbounds %struct.rtx_def, ptr %2340, i64 0, i32 1, i32 0, i32 0, i64 1
  %2342 = load ptr, ptr %2341, align 8, !tbaa !442
  %2343 = tail call fastcc i32 @rhs_regno(ptr noundef %2342) #24
  %2344 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2343) #24
  %2345 = getelementptr inbounds %struct.cse_reg_info, ptr %2344, i64 0, i32 1
  %2346 = load i32, ptr %2345, align 4, !tbaa !447
  %2347 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %2348 = sext i32 %2346 to i64
  %2349 = getelementptr inbounds %struct.qty_table_elem, ptr %2347, i64 %2348, i32 4
  %2350 = load i32, ptr %2349, align 4, !tbaa !923
  %2351 = load ptr, ptr %1903, align 8, !tbaa !730
  %2352 = getelementptr inbounds %struct.rtx_def, ptr %2351, i64 0, i32 1
  %2353 = load ptr, ptr %2352, align 8, !tbaa !442
  %2354 = tail call fastcc i32 @rhs_regno(ptr noundef %2353) #24
  %2355 = icmp eq i32 %2350, %2354
  br i1 %2355, label %2356, label %2420, !prof !1043

2356:                                             ; preds = %2339
  %2357 = getelementptr inbounds %struct.rtx_def, ptr %1901, i64 0, i32 1, i32 0, i32 1
  %2358 = load ptr, ptr %2357, align 8, !tbaa !442
  %2359 = getelementptr inbounds %struct.basic_block_def, ptr %2358, i64 0, i32 7
  %2360 = load ptr, ptr %2359, align 8, !tbaa !442
  %2361 = load ptr, ptr %2360, align 8, !tbaa !1044
  %2362 = load ptr, ptr %2320, align 8, !tbaa !442
  %2363 = icmp eq ptr %2362, %2361
  br i1 %2363, label %2372, label %2364, !prof !1045

2364:                                             ; preds = %2356, %2368
  %2365 = phi ptr [ %2370, %2368 ], [ %2362, %2356 ]
  %2366 = load i32, ptr %2365, align 8
  %2367 = trunc i32 %2366 to i16
  switch i16 %2367, label %2372 [
    i16 13, label %2368
    i16 7, label %2368
  ], !prof !1046

2368:                                             ; preds = %2364, %2364
  %2369 = getelementptr inbounds %struct.rtx_def, ptr %2365, i64 0, i32 1, i32 0, i32 0, i64 1
  %2370 = load ptr, ptr %2369, align 8, !tbaa !442
  %2371 = icmp eq ptr %2370, %2361
  br i1 %2371, label %2372, label %2364, !prof !1047

2372:                                             ; preds = %2368, %2364, %2356
  %2373 = phi ptr [ %2361, %2356 ], [ %2365, %2364 ], [ %2361, %2368 ]
  %2374 = load i32, ptr %2373, align 8
  %2375 = and i32 %2374, 65535
  %2376 = icmp eq i32 %2375, 8
  br i1 %2376, label %2377, label %2420, !prof !1048

2377:                                             ; preds = %2372
  %2378 = getelementptr inbounds %struct.rtx_def, ptr %2373, i64 1
  %2379 = load ptr, ptr %2378, align 8, !tbaa !442
  %2380 = load i32, ptr %2379, align 8
  %2381 = and i32 %2380, 65535
  %2382 = icmp eq i32 %2381, 23
  br i1 %2382, label %2383, label %2420, !prof !1049

2383:                                             ; preds = %2377
  %2384 = getelementptr inbounds %struct.rtx_def, ptr %2379, i64 0, i32 1
  %2385 = load ptr, ptr %2384, align 8, !tbaa !442
  %2386 = getelementptr inbounds %struct.rtx_def, ptr %2351, i64 0, i32 1, i32 0, i32 0, i64 1
  %2387 = load ptr, ptr %2386, align 8, !tbaa !442
  %2388 = icmp eq ptr %2385, %2387
  br i1 %2388, label %2389, label %2420, !prof !1050

2389:                                             ; preds = %2383
  %2390 = tail call ptr @find_reg_note(ptr noundef nonnull %2373, i32 noundef 3, ptr noundef null) #22
  %2391 = icmp eq ptr %2390, null
  br i1 %2391, label %2392, label %2420, !prof !1051

2392:                                             ; preds = %2389
  %2393 = load ptr, ptr %1903, align 8, !tbaa !730
  %2394 = getelementptr inbounds %struct.rtx_def, ptr %2393, i64 0, i32 1
  %2395 = load ptr, ptr %2394, align 8, !tbaa !442
  %2396 = getelementptr inbounds %struct.rtx_def, ptr %2393, i64 0, i32 1, i32 0, i32 0, i64 1
  %2397 = load ptr, ptr %2396, align 8, !tbaa !442
  %2398 = load ptr, ptr %2378, align 8, !tbaa !442
  %2399 = getelementptr inbounds %struct.rtx_def, ptr %2398, i64 0, i32 1
  %2400 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2373, ptr noundef nonnull %2399, ptr noundef %2395, i8 noundef zeroext 1) #22
  %2401 = load ptr, ptr %1903, align 8, !tbaa !730
  %2402 = getelementptr inbounds %struct.rtx_def, ptr %2401, i64 0, i32 1
  %2403 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1901, ptr noundef nonnull %2402, ptr noundef %2397, i8 noundef zeroext 1) #22
  %2404 = load ptr, ptr %1903, align 8, !tbaa !730
  %2405 = getelementptr inbounds %struct.rtx_def, ptr %2404, i64 0, i32 1, i32 0, i32 0, i64 1
  %2406 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1901, ptr noundef nonnull %2405, ptr noundef %2395, i8 noundef zeroext 1) #22
  %2407 = tail call i32 @apply_change_group() #22
  %2408 = tail call ptr @find_reg_note(ptr noundef nonnull %1901, i32 noundef 4, ptr noundef null) #22
  %2409 = icmp eq ptr %2408, null
  br i1 %2409, label %2420, label %2410, !prof !1052

2410:                                             ; preds = %2392
  %2411 = getelementptr inbounds %struct.rtx_def, ptr %2408, i64 0, i32 1
  %2412 = load ptr, ptr %2411, align 8, !tbaa !442
  %2413 = tail call i32 @reg_mentioned_p(ptr noundef %2395, ptr noundef %2412) #22
  %2414 = icmp eq i32 %2413, 0
  br i1 %2414, label %2415, label %2419

2415:                                             ; preds = %2410
  %2416 = load ptr, ptr %2411, align 8, !tbaa !442
  %2417 = tail call i32 @rtx_equal_p(ptr noundef %2397, ptr noundef %2416) #22
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2420, label %2419

2419:                                             ; preds = %2415, %2410
  tail call void @remove_note(ptr noundef nonnull %1901, ptr noundef nonnull %2408) #22
  br label %2420

2420:                                             ; preds = %2339, %2392, %2415, %2419, %2389, %2383, %2377, %2372, %2309, %2310, %2313, %2319, %2325, %2331, %2334, %1959
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @check_for_label_ref(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !1053 !PGOFuncName !1054 {
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 134283263
  %6 = icmp eq i32 %5, 44
  br i1 %6, label %7, label %33, !prof !1055

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %18, !prof !1056

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !442
  %14 = tail call zeroext i8 @label_is_jump_target_p(ptr noundef %13, ptr noundef nonnull %1) #22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %33, !prof !1057

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8, !tbaa !426
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi ptr [ %17, %16 ], [ %3, %7 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !442
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %33, !prof !1058

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !442
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !1059

29:                                               ; preds = %25
  %30 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 10, ptr noundef nonnull %21) #22
  %31 = icmp eq ptr %30, null
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %29, %25, %18, %11, %2
  %34 = phi i32 [ 0, %25 ], [ 0, %18 ], [ 0, %11 ], [ 0, %2 ], [ %32, %29 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @have_eh_succ_edges(ptr noundef %0) unnamed_addr #0 !prof !425 !PGOFuncName !1060 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !669
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !670
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #24, !range !541
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1, %15
  %10 = load ptr, ptr %2, align 8, !tbaa !426
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !575
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %16 = load i32, ptr %3, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc zeroext i8 @ei_cond(i32 %16, ptr %17, ptr noundef nonnull %2) #24, !range !541
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !1061

20:                                               ; preds = %9, %15, %1
  %21 = phi i8 [ 0, %1 ], [ 0, %15 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret i8 %21
}

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !1062 !PGOFuncName !1063 {
  %3 = load ptr, ptr %0, align 8, !tbaa !547
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !633

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
  %15 = load i64, ptr %14, align 8, !tbaa !537
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !442
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !442
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !537
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !537
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_jump_equiv(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1064 !PGOFuncName !1065 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %7 = tail call i32 @any_condjump_p(ptr noundef %0) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !1066

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3906, ptr noundef nonnull @.str.4) #22
  br label %10

10:                                               ; preds = %2, %9
  %11 = tail call ptr @pc_set(ptr noundef %0) #22
  %12 = icmp eq i8 %1, 0
  %13 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !442
  %15 = load ptr, ptr @global_rtl, align 16, !tbaa !426
  %16 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = select i1 %12, ptr %16, ptr %17, !prof !1067
  %19 = load ptr, ptr %18, align 8, !tbaa !442
  %20 = icmp eq ptr %19, %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !442
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !442
  %28 = tail call fastcc ptr @fold_rtx(ptr noundef %27, ptr noundef %0) #24
  store ptr %28, ptr %3, align 8, !tbaa !426
  %29 = load ptr, ptr %21, align 8, !tbaa !442
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !442
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !442
  %34 = tail call fastcc ptr @fold_rtx(ptr noundef %33, ptr noundef %0) #24
  store ptr %34, ptr %4, align 8, !tbaa !426
  %35 = call fastcc i32 @find_comparison_args(i32 noundef %25, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %36 = load ptr, ptr %3, align 8, !tbaa !426
  %37 = load ptr, ptr %4, align 8, !tbaa !426
  br i1 %20, label %41, label %38, !prof !1068

38:                                               ; preds = %10
  %39 = tail call i32 @reversed_comparison_code_parts(i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %0) #22
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41, !prof !1069

41:                                               ; preds = %38, %10
  %42 = phi i32 [ %35, %10 ], [ %39, %38 ]
  %43 = load i32, ptr %5, align 4, !tbaa !438
  %44 = load i32, ptr %6, align 4, !tbaa !438
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %43, i32 %44, !prof !1070
  tail call fastcc void @record_jump_cond(i32 noundef %42, i32 noundef %46, ptr noundef %36, ptr noundef %37) #24
  br label %47

47:                                               ; preds = %38, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #16 !prof !1071 !PGOFuncName !1072 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1073 !PGOFuncName !1074 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !541
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1075

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !426
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1076 !PGOFuncName !1077 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1078

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #24
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #24
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1079

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.4) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1080
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1080
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1073 !PGOFuncName !1082 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1083

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #24
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1076 !PGOFuncName !1084 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1078

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #24
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1085 !PGOFuncName !1086 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1087

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.4) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !426
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #14 !prof !425 !PGOFuncName !1088 {
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !1089
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1091
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !426
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @canon_hash(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1092 !PGOFuncName !1093 {
  %3 = tail call i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @do_not_record, ptr noundef nonnull @hash_arg_in_memory, i8 noundef zeroext 1) #24
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delete_reg_equiv(i32 noundef %0) unnamed_addr #5 !prof !1094 !PGOFuncName !1095 {
  %2 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #24
  %3 = getelementptr inbounds %struct.cse_reg_info, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !447
  %5 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #24
  %6 = getelementptr inbounds %struct.cse_reg_info, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !447
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %33, !prof !1096

9:                                                ; preds = %1
  %10 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %11 = sext i32 %4 to i64
  %12 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !426
  %13 = zext i32 %0 to i64
  %14 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %13, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !1097
  %17 = load i32, ptr %14, align 4, !tbaa !1099
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %22, label %19, !prof !1100

19:                                               ; preds = %9
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %20, i32 1
  store i32 %16, ptr %21, align 4, !tbaa !1097
  br label %24

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.qty_table_elem, ptr %10, i64 %11, i32 5
  store i32 %16, ptr %23, align 8, !tbaa !1101
  br label %24

24:                                               ; preds = %22, %19
  %25 = icmp eq i32 %16, -1
  %26 = getelementptr inbounds %struct.qty_table_elem, ptr %10, i64 %11, i32 4
  %27 = sext i32 %16 to i64
  %28 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %27
  %29 = select i1 %25, ptr %26, ptr %28, !prof !1102
  store i32 %17, ptr %29, align 4, !tbaa !438
  %30 = xor i32 %0, -1
  %31 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #24
  %32 = getelementptr inbounds %struct.cse_reg_info, ptr %31, i64 0, i32 1
  store i32 %30, ptr %32, align 4, !tbaa !447
  br label %33

33:                                               ; preds = %1, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_pseudo_from_table(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1103 !PGOFuncName !1104 {
  %3 = tail call fastcc ptr @lookup_for_remove(ptr noundef %0, i32 noundef %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1105

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call fastcc void @remove_from_table(ptr noundef nonnull %6, i32 noundef %1) #24
  %7 = tail call fastcc ptr @lookup_for_remove(ptr noundef %0, i32 noundef %1) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !1106, !llvm.loop !1107

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @remove_from_table(ptr noundef %0, i32 noundef %1) unnamed_addr #15 !prof !1108 !PGOFuncName !1109 {
  %3 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  store ptr null, ptr %3, align 8, !tbaa !779
  %4 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !1006
  %6 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !866
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11, !prof !1110

9:                                                ; preds = %2
  %10 = icmp eq ptr %5, null
  br i1 %10, label %22, label %14, !prof !1111

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.table_elt, ptr %7, i64 0, i32 5
  store ptr %5, ptr %12, align 8, !tbaa !1006
  %13 = icmp eq ptr %5, null
  br i1 %13, label %16, label %14, !prof !1111

14:                                               ; preds = %11, %9
  %15 = getelementptr inbounds %struct.table_elt, ptr %5, i64 0, i32 4
  store ptr %7, ptr %15, align 8, !tbaa !866
  br label %22

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %20, %16 ], [ %7, %11 ]
  %18 = getelementptr inbounds %struct.table_elt, ptr %17, i64 0, i32 6
  store ptr %7, ptr %18, align 8, !tbaa !779
  %19 = getelementptr inbounds %struct.table_elt, ptr %17, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !866
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !prof !1112, !llvm.loop !1113

22:                                               ; preds = %16, %9, %14
  %23 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !1114
  %25 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !662
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !1115

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.table_elt, ptr %26, i64 0, i32 3
  store ptr %24, ptr %29, align 8, !tbaa !1114
  br label %30

30:                                               ; preds = %28, %22
  %31 = icmp eq ptr %24, null
  br i1 %31, label %34, label %32, !prof !1116

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.table_elt, ptr %24, i64 0, i32 2
  br label %58

34:                                               ; preds = %30
  %35 = zext i32 %1 to i64
  %36 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !426
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %58, label %39, !prof !1117

39:                                               ; preds = %34
  %40 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %41 = shufflevector <2 x ptr> %40, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %55, %39
  %43 = phi i64 [ 0, %39 ], [ %56, %55 ]
  %44 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %43
  %45 = load <2 x ptr>, ptr %44, align 16, !tbaa !426
  %46 = icmp eq <2 x ptr> %45, %41
  %47 = extractelement <2 x i1> %46, i64 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %43
  store ptr %26, ptr %49, align 16, !tbaa !426
  br label %50

50:                                               ; preds = %48, %42
  %51 = extractelement <2 x i1> %46, i64 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = or disjoint i64 %43, 1
  %54 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %53
  store ptr %26, ptr %54, align 8, !tbaa !426
  br label %55

55:                                               ; preds = %52, %50
  %56 = add nuw i64 %43, 2
  %57 = icmp eq i64 %56, 32
  br i1 %57, label %60, label %42, !llvm.loop !1118

58:                                               ; preds = %34, %32
  %59 = phi ptr [ %33, %32 ], [ %36, %34 ]
  store ptr %26, ptr %59, align 8, !tbaa !426
  br label %60

60:                                               ; preds = %55, %58
  %61 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !805
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64, !prof !1121

64:                                               ; preds = %60
  %65 = icmp eq ptr %62, %0
  br i1 %65, label %75, label %66, !prof !1122

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %69, %66 ], [ %62, %64 ]
  %68 = getelementptr inbounds %struct.table_elt, ptr %67, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !805
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %71, label %66, !prof !1123, !llvm.loop !1124

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.table_elt, ptr %67, i64 0, i32 7
  %73 = icmp eq ptr %62, %67
  %74 = select i1 %73, ptr null, ptr %62, !prof !1125
  store ptr %74, ptr %72, align 8, !tbaa !805
  br label %75

75:                                               ; preds = %71, %64, %60
  %76 = load ptr, ptr @free_element_chain, align 8, !tbaa !426
  store ptr %76, ptr %25, align 8, !tbaa !662
  store ptr %0, ptr @free_element_chain, align 8, !tbaa !426
  ret void
}

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @check_dependence(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1126 !PGOFuncName !1127 {
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !1128

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 43
  br i1 %8, label %9, label %16, !prof !1129

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.check_dependence_data, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !702
  %12 = load i32, ptr %1, align 8, !tbaa !705
  %13 = getelementptr inbounds %struct.check_dependence_data, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !704
  %15 = tail call i32 @canon_true_dependence(ptr noundef %11, i32 noundef %12, ptr noundef %14, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @cse_rtx_varies_p) #22
  br label %16

16:                                               ; preds = %2, %5, %9
  %17 = phi i32 [ %15, %9 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_for_remove(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1130 !PGOFuncName !1131 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %25, !prof !1132

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !426
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12, !prof !1133

12:                                               ; preds = %6, %21
  %13 = phi ptr [ %23, %21 ], [ %10, %6 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !430
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %21, !prof !1134

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #24
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %45, label %21, !prof !1135

21:                                               ; preds = %12, %18
  %22 = getelementptr inbounds %struct.table_elt, ptr %13, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !426
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %12, !prof !1136, !llvm.loop !1137

25:                                               ; preds = %2
  %26 = zext nneg i32 %1 to i64
  %27 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !426
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %25, %41
  %31 = phi ptr [ %43, %41 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.table_elt, ptr %31, i64 0, i32 10
  %33 = load i8, ptr %32, align 8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !430
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @exp_equiv_p(ptr noundef nonnull %0, ptr noundef %36, i32 noundef 0, i8 noundef zeroext 0) #24, !range !503
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30, %38
  %42 = getelementptr inbounds %struct.table_elt, ptr %31, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !426
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %30, !llvm.loop !1138

45:                                               ; preds = %38, %35, %41, %18, %21, %25, %6
  %46 = phi ptr [ null, %6 ], [ null, %25 ], [ %13, %18 ], [ null, %21 ], [ %31, %38 ], [ %31, %35 ], [ null, %41 ]
  ret ptr %46
}

; Function Attrs: optsize
declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @cse_rtx_varies_p(ptr noundef %0, i8 noundef zeroext %1) #0 !prof !1139 !PGOFuncName !1140 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %31, !prof !1141

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %8 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #24
  %9 = getelementptr inbounds %struct.cse_reg_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !447
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !1142

12:                                               ; preds = %6
  %13 = load i32, ptr %0, align 8
  br label %31

14:                                               ; preds = %6
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %16 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %15) #24
  %17 = getelementptr inbounds %struct.cse_reg_info, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !447
  %19 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %20 = sext i32 %18 to i64
  %21 = load i32, ptr %0, align 8
  %22 = getelementptr inbounds %struct.qty_table_elem, ptr %19, i64 %20, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, %21
  %25 = and i32 %24, 16711680
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31, !prof !1143

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.qty_table_elem, ptr %19, i64 %20
  %29 = load ptr, ptr %28, align 8, !tbaa !1144
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %140, !prof !1143

31:                                               ; preds = %12, %27, %14, %2
  %32 = phi i32 [ %13, %12 ], [ %21, %27 ], [ %21, %14 ], [ %3, %2 ]
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 49
  br i1 %34, label %35, label %72, !prof !1145

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !442
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %72, !prof !1146

42:                                               ; preds = %35
  %43 = load ptr, ptr %36, align 8, !tbaa !442
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %72, !prof !1147

47:                                               ; preds = %42
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %43) #24
  %49 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %48) #24
  %50 = getelementptr inbounds %struct.cse_reg_info, ptr %49, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !447
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %72, !prof !1148

53:                                               ; preds = %47
  %54 = load ptr, ptr %36, align 8, !tbaa !442
  %55 = tail call fastcc i32 @rhs_regno(ptr noundef %54) #24
  %56 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %55) #24
  %57 = getelementptr inbounds %struct.cse_reg_info, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !447
  %59 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %60 = sext i32 %58 to i64
  %61 = load ptr, ptr %36, align 8, !tbaa !442
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.qty_table_elem, ptr %59, i64 %60, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, %62
  %66 = and i32 %65, 16711680
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72, !prof !1149

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.qty_table_elem, ptr %59, i64 %60
  %70 = load ptr, ptr %69, align 8, !tbaa !1144
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %140, !prof !1149

72:                                               ; preds = %68, %53, %47, %42, %35, %31
  %73 = load i32, ptr %0, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 49
  br i1 %75, label %76, label %138, !prof !1145

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !442
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %138, !prof !1150

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !442
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %88, label %138, !prof !1151

88:                                               ; preds = %82
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %78) #24
  %90 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %89) #24
  %91 = getelementptr inbounds %struct.cse_reg_info, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !447
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %138

94:                                               ; preds = %88
  %95 = load ptr, ptr %83, align 8, !tbaa !442
  %96 = tail call fastcc i32 @rhs_regno(ptr noundef %95) #24
  %97 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %96) #24
  %98 = getelementptr inbounds %struct.cse_reg_info, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !447
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %101, label %138

101:                                              ; preds = %94
  %102 = load ptr, ptr %77, align 8, !tbaa !442
  %103 = tail call fastcc i32 @rhs_regno(ptr noundef %102) #24
  %104 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %103) #24
  %105 = getelementptr inbounds %struct.cse_reg_info, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !447
  %107 = load ptr, ptr %83, align 8, !tbaa !442
  %108 = tail call fastcc i32 @rhs_regno(ptr noundef %107) #24
  %109 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %108) #24
  %110 = getelementptr inbounds %struct.cse_reg_info, ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !447
  %112 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %113 = sext i32 %106 to i64
  %114 = sext i32 %111 to i64
  %115 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %114
  %116 = load ptr, ptr %77, align 8, !tbaa !442
  %117 = load i32, ptr %116, align 8
  %118 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %113, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = xor i32 %119, %117
  %121 = and i32 %120, 16711680
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %101
  %124 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %113
  %125 = load ptr, ptr %124, align 8, !tbaa !1144
  %126 = icmp eq ptr %125, null
  br i1 %126, label %138, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %83, align 8, !tbaa !442
  %129 = load i32, ptr %128, align 8
  %130 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %114, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = xor i32 %131, %129
  %133 = and i32 %132, 16711680
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load ptr, ptr %115, align 8, !tbaa !1144
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %135, %127, %123, %101, %94, %88, %82, %76, %72
  %139 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %0, i8 noundef zeroext %1) #22
  br label %140

140:                                              ; preds = %135, %68, %27, %138
  %141 = phi i8 [ %139, %138 ], [ 0, %27 ], [ 0, %68 ], [ 0, %135 ]
  ret i8 %141
}

; Function Attrs: optsize
declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cse_process_notes_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !719 !PGOFuncName !1152 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !426
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
  ], !prof !1153

10:                                               ; preds = %3
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !442
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %93, label %14, !prof !1154

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = zext i8 %12 to i64
  br label %80

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !442
  %20 = tail call fastcc ptr @cse_process_notes(ptr noundef %19, ptr noundef nonnull %0, ptr noundef %2) #24
  %21 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef %20, i8 noundef zeroext 0) #22
  br label %93

22:                                               ; preds = %3, %3
  %23 = and i32 %4, 16711680
  %24 = icmp eq i32 %23, 262144
  br i1 %24, label %25, label %29, !prof !1155

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !442
  %28 = tail call fastcc ptr @cse_process_notes(ptr noundef %27, ptr noundef null, ptr noundef %2) #24
  store ptr %28, ptr %26, align 8, !tbaa !442
  br label %29

29:                                               ; preds = %25, %22
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !442
  %32 = icmp eq ptr %31, null
  br i1 %32, label %93, label %33, !prof !1156

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @cse_process_notes(ptr noundef nonnull %31, ptr noundef null, ptr noundef %2) #24
  store ptr %34, ptr %30, align 8, !tbaa !442
  br label %93

35:                                               ; preds = %3, %3, %3
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !442
  %38 = tail call fastcc ptr @cse_process_notes(ptr noundef %37, ptr noundef %1, ptr noundef %2) #24
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 16711680
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %93, label %42, !prof !1157

42:                                               ; preds = %35
  %43 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %36, ptr noundef nonnull %38, i8 noundef zeroext 0) #22
  br label %93

44:                                               ; preds = %3
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %46 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %45) #24
  %47 = getelementptr inbounds %struct.cse_reg_info, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !447
  %49 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %50 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %49) #24
  %51 = getelementptr inbounds %struct.cse_reg_info, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !447
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %78, !prof !1158

54:                                               ; preds = %44
  %55 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %56 = sext i32 %48 to i64
  %57 = getelementptr inbounds %struct.qty_table_elem, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !1144
  %59 = icmp eq ptr %58, null
  br i1 %59, label %78, label %60, !prof !1159

60:                                               ; preds = %54
  %61 = load i32, ptr %58, align 8
  %62 = and i32 %61, 65535
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !438
  %66 = icmp eq i32 %65, 9
  %67 = icmp eq i32 %62, 37
  %68 = or i1 %66, %67
  br i1 %68, label %69, label %78, !prof !1160

69:                                               ; preds = %60
  %70 = load ptr, ptr @rtl_hooks, align 8, !tbaa !819
  %71 = load i32, ptr %0, align 8
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = tail call ptr %70(i32 noundef %73, ptr noundef nonnull %58) #22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76, !prof !1161

76:                                               ; preds = %69
  %77 = tail call ptr @copy_rtx(ptr noundef nonnull %74) #22
  br label %93

78:                                               ; preds = %69, %54, %60, %44
  %79 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %0, ptr noundef null) #24
  br label %93

80:                                               ; preds = %14, %90
  %81 = phi i64 [ 0, %14 ], [ %91, %90 ]
  %82 = getelementptr inbounds i8, ptr %8, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !442
  %84 = icmp eq i8 %83, 101
  br i1 %84, label %85, label %90, !prof !1162

85:                                               ; preds = %80
  %86 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %81
  %87 = load ptr, ptr %86, align 8, !tbaa !442
  %88 = tail call fastcc ptr @cse_process_notes(ptr noundef %87, ptr noundef %1, ptr noundef %2) #24
  %89 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %86, ptr noundef %88, i8 noundef zeroext 0) #22
  br label %90

90:                                               ; preds = %80, %85
  %91 = add nuw nsw i64 %81, 1
  %92 = icmp eq i64 %91, %16
  br i1 %92, label %93, label %80, !prof !1163, !llvm.loop !1164

93:                                               ; preds = %90, %10, %76, %35, %42, %29, %33, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %78, %17
  %94 = phi ptr [ %79, %78 ], [ %77, %76 ], [ %0, %17 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %33 ], [ %0, %29 ], [ %0, %42 ], [ %0, %35 ], [ %0, %10 ], [ %0, %90 ]
  ret ptr %94
}

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @canon_reg(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1165 !PGOFuncName !1166 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %75, label %4, !prof !1167

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
  ], !prof !1168

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %75, label %10, !prof !1169

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %8) #24
  %12 = getelementptr inbounds %struct.cse_reg_info, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !447
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %75, !prof !1170

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %17 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %16) #24
  %18 = getelementptr inbounds %struct.cse_reg_info, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !447
  %20 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.qty_table_elem, ptr %20, i64 %21, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !923
  %24 = icmp sgt i32 %23, 52
  br i1 %24, label %25, label %30, !prof !1171

25:                                               ; preds = %15
  %26 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %27 = zext nneg i32 %23 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !426
  br label %75

30:                                               ; preds = %15
  %31 = sext i32 %23 to i64
  %32 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !438
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %75, label %35, !prof !1172

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.qty_table_elem, ptr %20, i64 %21, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = tail call ptr @gen_rtx_REG(i32 noundef %39, i32 noundef %23) #22
  br label %75

41:                                               ; preds = %4
  %42 = and i32 %5, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !426
  %46 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !442
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %75, label %49, !prof !1173

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = zext i8 %47 to i64
  br label %52

52:                                               ; preds = %49, %73
  %53 = phi i64 [ %51, %49 ], [ %54, %73 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds i8, ptr %45, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !442
  switch i8 %56, label %73 [
    i8 101, label %62
    i8 69, label %57
  ], !prof !1174

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !442
  %60 = load i32, ptr %59, align 8, !tbaa !451
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %64, label %73

62:                                               ; preds = %52
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  tail call fastcc void @validate_canon_reg(ptr noundef nonnull %63, ptr noundef %1) #24
  br label %73

64:                                               ; preds = %57, %64
  %65 = phi i64 [ %68, %64 ], [ 0, %57 ]
  %66 = phi ptr [ %69, %64 ], [ %59, %57 ]
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %65
  tail call fastcc void @validate_canon_reg(ptr noundef nonnull %67, ptr noundef %1) #24
  %68 = add nuw nsw i64 %65, 1
  %69 = load ptr, ptr %58, align 8, !tbaa !442
  %70 = load i32, ptr %69, align 8, !tbaa !451
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %64, label %73, !llvm.loop !1175

73:                                               ; preds = %64, %57, %52, %62
  %74 = icmp sgt i64 %53, 1
  br i1 %74, label %52, label %75, !prof !1176, !llvm.loop !1177

75:                                               ; preds = %73, %41, %10, %7, %30, %35, %25, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %2
  %76 = phi ptr [ null, %2 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %10 ], [ %0, %7 ], [ %29, %25 ], [ %40, %35 ], [ %0, %30 ], [ %0, %41 ], [ %0, %73 ]
  ret ptr %76
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @validate_canon_reg(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1178 !PGOFuncName !1179 {
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !1180

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %3, ptr noundef %1) #24
  %7 = icmp ne ptr %1, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %11, label %10, !prof !1181

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2870, ptr noundef nonnull @.str.4) #22
  br label %11

11:                                               ; preds = %5, %10
  %12 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %0, ptr noundef %6, i8 noundef zeroext 1) #22
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_rtx(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1182 !PGOFuncName !1183 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  %7 = icmp eq ptr %0, null
  br i1 %7, label %779, label %8, !prof !1184

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
  ], !prof !1185

12:                                               ; preds = %8, %8
  %13 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %0) #24
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %0, ptr %13, !prof !1186
  br label %779

16:                                               ; preds = %8
  %17 = icmp eq ptr %1, null
  br i1 %17, label %779, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !442
  %21 = load i32, ptr %20, align 8, !tbaa !451
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %779

23:                                               ; preds = %18
  %24 = zext nneg i32 %21 to i64
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %24, %23 ], [ %27, %25 ]
  %27 = add nsw i64 %26, -1
  %28 = load ptr, ptr %19, align 8, !tbaa !442
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !426
  %31 = tail call fastcc ptr @fold_rtx(ptr noundef %30, ptr noundef nonnull %1) #24
  %32 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1, ptr noundef nonnull %29, ptr noundef %31, i8 noundef zeroext 0) #22
  %33 = icmp ugt i64 %26, 1
  br i1 %33, label %25, label %779, !llvm.loop !1187

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !442
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !442
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !438
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %779, label %45, !prof !1188

45:                                               ; preds = %8, %34
  %46 = lshr i32 %9, 16
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %10 to i64
  %49 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !426
  %51 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %48
  %52 = load i8, ptr %51, align 1, !tbaa !442
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55, !prof !1189

54:                                               ; preds = %45
  store i32 0, ptr %5, align 4, !tbaa !438
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
  %69 = load i8, ptr %68, align 1, !tbaa !442
  %70 = icmp eq i8 %69, 101
  br i1 %70, label %71, label %145, !prof !1190

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %73 = getelementptr inbounds [1 x %union.rtunion_def], ptr %72, i64 0, i64 %67
  %74 = load ptr, ptr %73, align 8, !tbaa !442
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
  ], !prof !1191

79:                                               ; preds = %71, %71, %71
  %80 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %74) #24
  br label %84

81:                                               ; preds = %71
  %82 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %74, ptr noundef %1) #24
  %83 = tail call fastcc ptr @equiv_constant(ptr noundef %82) #24
  br label %84

84:                                               ; preds = %71, %71, %71, %71, %71, %71, %71, %81, %79
  %85 = phi ptr [ %83, %81 ], [ %80, %79 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ]
  %86 = phi ptr [ %82, %81 ], [ %74, %79 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ], [ %74, %71 ]
  %87 = trunc i64 %60 to i32
  switch i32 %87, label %91 [
    i32 1, label %88
    i32 2, label %89
    i32 3, label %90
  ], !prof !1192

88:                                               ; preds = %84
  store ptr %86, ptr %3, align 8, !tbaa !426
  br label %91

89:                                               ; preds = %84
  store ptr %86, ptr %4, align 8, !tbaa !426
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
  br i1 %100, label %130, label %101, !prof !1193

101:                                              ; preds = %91
  %102 = load i32, ptr %85, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 37
  br i1 %104, label %107, label %105, !prof !880

105:                                              ; preds = %101
  %106 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %85, i32 noundef %10) #24
  br label %107

107:                                              ; preds = %101, %105
  %108 = phi i32 [ %106, %105 ], [ 0, %101 ]
  %109 = load i32, ptr %86, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 37
  br i1 %111, label %114, label %112, !prof !1194

112:                                              ; preds = %107
  %113 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %86, i32 noundef %10) #24
  br label %114

114:                                              ; preds = %107, %112
  %115 = phi i32 [ %113, %112 ], [ 0, %107 ]
  %116 = icmp sgt i32 %108, %115
  br i1 %116, label %130, label %117, !prof !1195

117:                                              ; preds = %114
  %118 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %48
  %119 = load i32, ptr %118, align 4, !tbaa !438
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %121, label %129, !prof !1196

121:                                              ; preds = %117
  %122 = add nsw i32 %10, -107
  %123 = icmp ult i32 %122, -9
  %124 = load i32, ptr %85, align 8
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = icmp eq i32 %126, %94
  %128 = select i1 %127, i1 true, i1 %123
  br i1 %128, label %129, label %130, !prof !1197

129:                                              ; preds = %121, %117
  br label %130

130:                                              ; preds = %121, %129, %114, %91
  %131 = phi ptr [ %85, %129 ], [ %86, %114 ], [ %86, %91 ], [ %86, %121 ]
  %132 = load ptr, ptr %73, align 8, !tbaa !442
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %145, label %134, !prof !1198

134:                                              ; preds = %130
  %135 = icmp eq ptr %1, null
  br i1 %135, label %136, label %140, !prof !1199

136:                                              ; preds = %134
  %137 = icmp eq i32 %62, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %139 = tail call ptr @copy_rtx(ptr noundef nonnull %61) #22
  br label %140

140:                                              ; preds = %138, %136, %134
  %141 = phi ptr [ %61, %136 ], [ %139, %138 ], [ %61, %134 ]
  %142 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1
  %143 = getelementptr inbounds [1 x %union.rtunion_def], ptr %142, i64 0, i64 %67
  %144 = tail call zeroext i8 @validate_unshare_change(ptr noundef %1, ptr noundef nonnull %143, ptr noundef %131, i8 noundef zeroext 1) #22
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
  br i1 %154, label %155, label %57, !prof !1200, !llvm.loop !1201

155:                                              ; preds = %145
  store i32 %148, ptr %5, align 4, !tbaa !438
  %156 = icmp eq i32 %152, 0
  br i1 %156, label %167, label %157, !prof !1202

157:                                              ; preds = %155
  %158 = tail call zeroext i8 @canonicalize_change_group(ptr noundef %1, ptr noundef %153) #22
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %161, label %160, !prof !1203

160:                                              ; preds = %157
  store ptr %146, ptr %3, align 8, !tbaa !426
  store ptr %147, ptr %4, align 8, !tbaa !426
  br label %161

161:                                              ; preds = %160, %157
  %162 = phi ptr [ %147, %160 ], [ %146, %157 ]
  %163 = phi ptr [ %146, %160 ], [ %147, %157 ]
  %164 = phi ptr [ %151, %160 ], [ %150, %157 ]
  %165 = phi ptr [ %150, %160 ], [ %151, %157 ]
  %166 = tail call i32 @apply_change_group() #22
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
  %176 = load i32, ptr %175, align 4, !tbaa !438
  switch i32 %176, label %775 [
    i32 4, label %177
    i32 0, label %186
    i32 1, label %186
    i32 2, label %454
    i32 3, label %454
    i32 8, label %748
    i32 10, label %761
    i32 11, label %761
  ], !prof !1204

177:                                              ; preds = %167
  %178 = and i32 %9, 65534
  %179 = icmp eq i32 %178, 98
  %180 = icmp eq i32 %170, 0
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %775, label %182, !prof !1205

182:                                              ; preds = %177
  %183 = icmp eq ptr %174, null
  %184 = select i1 %183, ptr %172, ptr %174, !prof !1206
  %185 = tail call ptr @simplify_unary_operation(i32 noundef %10, i32 noundef %47, ptr noundef %184, i32 noundef %170) #22
  br label %775

186:                                              ; preds = %167, %167
  %187 = zext nneg i32 %47 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !442
  %190 = add i8 %189, -12
  %191 = icmp ult i8 %190, 6
  br i1 %191, label %775, label %192, !prof !1207

192:                                              ; preds = %186
  %193 = icmp eq ptr %174, null
  br i1 %193, label %196, label %194, !prof !1208

194:                                              ; preds = %192
  %195 = icmp eq ptr %173, null
  br i1 %195, label %196, label %445

196:                                              ; preds = %194, %192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %197 = and i8 %189, -2
  %198 = icmp eq i8 %197, 8
  br i1 %198, label %199, label %201, !prof !1209

199:                                              ; preds = %196
  %200 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %187
  br label %203

201:                                              ; preds = %196
  %202 = load ptr, ptr @const_true_rtx, align 8, !tbaa !426
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi ptr [ %200, %199 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %201 ]
  %205 = phi ptr [ null, %199 ], [ %202, %201 ]
  %206 = load ptr, ptr %204, align 8, !tbaa !426
  %207 = call fastcc i32 @find_comparison_args(i32 noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %208 = load i32, ptr %5, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %412, label %210, !prof !1210

210:                                              ; preds = %203
  %211 = zext i32 %208 to i64
  %212 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !442
  %214 = icmp eq i8 %213, 1
  br i1 %214, label %412, label %215, !prof !1211

215:                                              ; preds = %210
  %216 = load ptr, ptr %3, align 8
  %217 = tail call fastcc ptr @equiv_constant(ptr noundef %216) #24
  %218 = freeze ptr %217
  %219 = load ptr, ptr %4, align 8
  %220 = tail call fastcc ptr @equiv_constant(ptr noundef %219) #24
  %221 = icmp eq ptr %218, null
  %222 = icmp eq ptr %220, null
  br i1 %221, label %224, label %223, !prof !1212

223:                                              ; preds = %215
  br i1 %222, label %287, label %410, !prof !1213

224:                                              ; preds = %215
  br i1 %222, label %287, label %225, !prof !1214

225:                                              ; preds = %224
  %226 = load i32, ptr %216, align 8
  %227 = and i32 %226, 65535
  %228 = icmp eq i32 %227, 37
  br i1 %228, label %229, label %237, !prof !1215

229:                                              ; preds = %225
  %230 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %216) #24
  %231 = icmp ugt i32 %230, 52
  br i1 %231, label %232, label %237, !prof !1216

232:                                              ; preds = %229
  %233 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %230) #24
  %234 = getelementptr inbounds %struct.cse_reg_info, ptr %233, i64 0, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !447
  %236 = add i32 %235, 4736
  br label %239

237:                                              ; preds = %229, %225
  %238 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %216, i32 noundef %208) #24
  br label %239

239:                                              ; preds = %237, %232
  %240 = phi i32 [ %236, %232 ], [ %238, %237 ]
  %241 = and i32 %240, 31
  %242 = tail call fastcc ptr @lookup(ptr noundef nonnull %216, i32 noundef %241, i32 noundef %208) #24
  %243 = icmp eq ptr %242, null
  br i1 %243, label %287, label %244, !prof !1217

244:                                              ; preds = %239
  %245 = load i32, ptr %168, align 8
  %246 = and i32 %245, 65535
  %247 = icmp eq i32 %246, 37
  br i1 %247, label %250, label %248, !prof !1218

248:                                              ; preds = %244
  %249 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %168, i32 noundef 23) #24
  br label %250

250:                                              ; preds = %244, %248
  %251 = phi i32 [ %249, %248 ], [ 0, %244 ]
  %252 = getelementptr inbounds %struct.table_elt, ptr %242, i64 0, i32 6
  %253 = load ptr, ptr %252, align 8, !tbaa !426
  %254 = icmp eq ptr %253, null
  br i1 %254, label %287, label %255, !prof !1219

255:                                              ; preds = %250, %276
  %256 = phi ptr [ %280, %276 ], [ %253, %250 ]
  %257 = phi i32 [ %278, %276 ], [ %251, %250 ]
  %258 = phi ptr [ %277, %276 ], [ %168, %250 ]
  %259 = load ptr, ptr %256, align 8, !tbaa !430
  %260 = tail call i32 @exp_equiv_p(ptr noundef %259, ptr noundef %259, i32 noundef 1, i8 noundef zeroext 0) #24, !range !503
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %276, label %262, !prof !1220

262:                                              ; preds = %255
  %263 = load ptr, ptr %256, align 8, !tbaa !430
  %264 = tail call ptr @simplify_relational_operation(i32 noundef %207, i32 noundef %47, i32 noundef %208, ptr noundef %263, ptr noundef nonnull %220) #22
  %265 = icmp eq ptr %264, null
  br i1 %265, label %276, label %266, !prof !1221

266:                                              ; preds = %262
  %267 = load i32, ptr %264, align 8
  %268 = and i32 %267, 65535
  %269 = icmp eq i32 %268, 37
  br i1 %269, label %272, label %270, !prof !1222

270:                                              ; preds = %266
  %271 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %264, i32 noundef 23) #24
  br label %272

272:                                              ; preds = %266, %270
  %273 = phi i32 [ %271, %270 ], [ 0, %266 ]
  %274 = icmp slt i32 %273, %257
  br i1 %274, label %275, label %276, !prof !1223

275:                                              ; preds = %272
  br label %276

276:                                              ; preds = %272, %275, %262, %255
  %277 = phi ptr [ %258, %255 ], [ %258, %262 ], [ %264, %275 ], [ %258, %272 ]
  %278 = phi i32 [ %257, %255 ], [ %257, %262 ], [ %273, %275 ], [ %257, %272 ]
  %279 = getelementptr inbounds %struct.table_elt, ptr %256, i64 0, i32 4
  %280 = load ptr, ptr %279, align 8, !tbaa !426
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %255, !prof !1224, !llvm.loop !1225

282:                                              ; preds = %276
  %283 = icmp eq ptr %277, %168
  br i1 %283, label %287, label %284, !prof !1226

284:                                              ; preds = %282
  %285 = tail call ptr @copy_rtx(ptr noundef %277) #22
  %286 = tail call fastcc ptr @fold_rtx(ptr noundef %285, ptr noundef %1) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %779

287:                                              ; preds = %250, %239, %282, %223, %224
  %288 = phi i1 [ true, %224 ], [ true, %223 ], [ false, %282 ], [ false, %239 ], [ false, %250 ]
  %289 = load i32, ptr %216, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 37
  br i1 %291, label %292, label %308, !prof !1227

292:                                              ; preds = %287
  %293 = load i32, ptr %219, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 37
  br i1 %295, label %296, label %308, !prof !1228

296:                                              ; preds = %292
  %297 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %216) #24
  %298 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %297) #24
  %299 = getelementptr inbounds %struct.cse_reg_info, ptr %298, i64 0, i32 1
  %300 = load i32, ptr %299, align 4, !tbaa !447
  %301 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %219) #24
  %302 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %301) #24
  %303 = getelementptr inbounds %struct.cse_reg_info, ptr %302, i64 0, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !447
  %305 = icmp eq i32 %300, %304
  br i1 %305, label %410, label %306, !prof !1229

306:                                              ; preds = %296
  %307 = load i32, ptr %216, align 8
  br label %308

308:                                              ; preds = %306, %292, %287
  %309 = phi i32 [ %307, %306 ], [ %289, %292 ], [ %289, %287 ]
  %310 = and i32 %309, 65535
  %311 = icmp eq i32 %310, 37
  br i1 %311, label %312, label %320, !prof !1230

312:                                              ; preds = %308
  %313 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %216) #24
  %314 = icmp ugt i32 %313, 52
  br i1 %314, label %315, label %320, !prof !1231

315:                                              ; preds = %312
  %316 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %313) #24
  %317 = getelementptr inbounds %struct.cse_reg_info, ptr %316, i64 0, i32 1
  %318 = load i32, ptr %317, align 4, !tbaa !447
  %319 = add i32 %318, 4736
  br label %322

320:                                              ; preds = %312, %308
  %321 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %216, i32 noundef %208) #24
  br label %322

322:                                              ; preds = %320, %315
  %323 = phi i32 [ %319, %315 ], [ %321, %320 ]
  %324 = and i32 %323, 31
  %325 = tail call fastcc ptr @lookup(ptr noundef nonnull %216, i32 noundef %324, i32 noundef %208) #24
  %326 = icmp eq ptr %325, null
  br i1 %326, label %352, label %327, !prof !1232

327:                                              ; preds = %322
  %328 = load i32, ptr %219, align 8
  %329 = and i32 %328, 65535
  %330 = icmp eq i32 %329, 37
  br i1 %330, label %331, label %339, !prof !1233

331:                                              ; preds = %327
  %332 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %219) #24
  %333 = icmp ugt i32 %332, 52
  br i1 %333, label %334, label %339, !prof !1234

334:                                              ; preds = %331
  %335 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %332) #24
  %336 = getelementptr inbounds %struct.cse_reg_info, ptr %335, i64 0, i32 1
  %337 = load i32, ptr %336, align 4, !tbaa !447
  %338 = add i32 %337, 4736
  br label %341

339:                                              ; preds = %331, %327
  %340 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %219, i32 noundef %208) #24
  br label %341

341:                                              ; preds = %339, %334
  %342 = phi i32 [ %338, %334 ], [ %340, %339 ]
  %343 = and i32 %342, 31
  %344 = tail call fastcc ptr @lookup(ptr noundef nonnull %219, i32 noundef %343, i32 noundef %208) #24
  %345 = icmp eq ptr %344, null
  br i1 %345, label %352, label %346, !prof !1235

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.table_elt, ptr %325, i64 0, i32 6
  %348 = load ptr, ptr %347, align 8, !tbaa !779
  %349 = getelementptr inbounds %struct.table_elt, ptr %344, i64 0, i32 6
  %350 = load ptr, ptr %349, align 8, !tbaa !779
  %351 = icmp eq ptr %348, %350
  br i1 %351, label %410, label %352, !prof !1236

352:                                              ; preds = %346, %341, %322
  %353 = load i32, ptr %216, align 8
  %354 = and i32 %353, 65535
  %355 = icmp eq i32 %354, 37
  br i1 %355, label %356, label %410, !prof !1237

356:                                              ; preds = %352
  %357 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %216) #24
  %358 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %357) #24
  %359 = getelementptr inbounds %struct.cse_reg_info, ptr %358, i64 0, i32 1
  %360 = load i32, ptr %359, align 4, !tbaa !447
  %361 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %216) #24
  %362 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %361) #24
  %363 = getelementptr inbounds %struct.cse_reg_info, ptr %362, i64 0, i32 1
  %364 = load i32, ptr %363, align 4, !tbaa !447
  %365 = icmp sgt i32 %364, -1
  br i1 %365, label %366, label %413, !prof !1238

366:                                              ; preds = %356
  %367 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %368 = sext i32 %360 to i64
  %369 = getelementptr inbounds %struct.qty_table_elem, ptr %367, i64 %368, i32 6
  %370 = load i32, ptr %369, align 4
  %371 = and i32 %370, 65535
  %372 = tail call i32 @comparison_dominates_p(i32 noundef %371, i32 noundef %207) #22
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %381, !prof !1239

374:                                              ; preds = %366
  switch i8 %213, label %375 [
    i8 8, label %413
    i8 9, label %413
    i8 11, label %413
    i8 17, label %413
  ], !prof !1240

375:                                              ; preds = %374
  %376 = load i32, ptr %369, align 4
  %377 = and i32 %376, 65535
  %378 = tail call i32 @reverse_condition(i32 noundef %207) #22
  %379 = tail call i32 @comparison_dominates_p(i32 noundef %377, i32 noundef %378) #22
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %413, label %381, !prof !1241

381:                                              ; preds = %375, %366
  %382 = getelementptr inbounds %struct.qty_table_elem, ptr %367, i64 %368, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !1242
  %384 = tail call i32 @rtx_equal_p(ptr noundef %383, ptr noundef %219) #22
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %403, !prof !1243

386:                                              ; preds = %381
  br i1 %288, label %391, label %387, !prof !1244

387:                                              ; preds = %386
  %388 = load ptr, ptr %382, align 8, !tbaa !1242
  %389 = tail call i32 @rtx_equal_p(ptr noundef %388, ptr noundef nonnull %220) #22
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %403, !prof !1245

391:                                              ; preds = %387, %386
  %392 = load i32, ptr %219, align 8
  %393 = and i32 %392, 65535
  %394 = icmp eq i32 %393, 37
  br i1 %394, label %395, label %413, !prof !1246

395:                                              ; preds = %391
  %396 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %219) #24
  %397 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %396) #24
  %398 = getelementptr inbounds %struct.cse_reg_info, ptr %397, i64 0, i32 1
  %399 = load i32, ptr %398, align 4, !tbaa !447
  %400 = getelementptr inbounds %struct.qty_table_elem, ptr %367, i64 %368, i32 3
  %401 = load i32, ptr %400, align 8, !tbaa !1247
  %402 = icmp eq i32 %399, %401
  br i1 %402, label %403, label %413, !prof !1248

403:                                              ; preds = %395, %387, %381
  %404 = load i32, ptr %369, align 4
  %405 = and i32 %404, 65535
  %406 = tail call i32 @comparison_dominates_p(i32 noundef %405, i32 noundef %207) #22
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %414, label %408, !prof !1249

408:                                              ; preds = %403
  %409 = icmp eq ptr %205, null
  br i1 %409, label %416, label %414, !prof !1250

410:                                              ; preds = %296, %346, %352, %223
  %411 = phi ptr [ %219, %352 ], [ %219, %223 ], [ %216, %346 ], [ %216, %296 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %417

412:                                              ; preds = %210, %203
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %775

413:                                              ; preds = %356, %374, %374, %374, %374, %395, %391, %375
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %417

414:                                              ; preds = %408, %403
  %415 = phi ptr [ %206, %403 ], [ %205, %408 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %779

416:                                              ; preds = %408
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %775

417:                                              ; preds = %413, %410
  %418 = phi ptr [ %219, %413 ], [ %411, %410 ]
  %419 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !426
  %420 = icmp ne ptr %220, %419
  %421 = icmp ne ptr %218, null
  %422 = or i1 %420, %421
  br i1 %422, label %443, label %423, !prof !1251

423:                                              ; preds = %417
  %424 = tail call fastcc ptr @lookup_as_function(ptr noundef %216, i32 noundef 62) #24
  %425 = icmp eq ptr %424, null
  br i1 %425, label %445, label %426, !prof !1252

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct.rtx_def, ptr %424, i64 0, i32 1
  %428 = getelementptr inbounds %struct.rtx_def, ptr %424, i64 0, i32 1, i32 0, i32 0, i64 1
  %429 = load ptr, ptr %428, align 8, !tbaa !442
  %430 = tail call fastcc ptr @equiv_constant(ptr noundef %429) #24
  %431 = icmp eq ptr %430, null
  br i1 %431, label %445, label %432, !prof !1253

432:                                              ; preds = %426
  %433 = load i32, ptr %430, align 8
  %434 = and i32 %433, 65535
  %435 = icmp eq i32 %434, 30
  br i1 %435, label %436, label %445

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.rtx_def, ptr %430, i64 0, i32 1
  %438 = load i64, ptr %437, align 8, !tbaa !442
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %445, label %440

440:                                              ; preds = %436
  %441 = load ptr, ptr %427, align 8, !tbaa !442
  %442 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 62, i32 noundef %208, ptr noundef %441, ptr noundef nonnull %430) #22
  br label %445

443:                                              ; preds = %417
  %444 = select i1 %421, ptr %218, ptr %216, !prof !1254
  br label %445

445:                                              ; preds = %443, %440, %436, %432, %426, %423, %194
  %446 = phi ptr [ %173, %194 ], [ %220, %423 ], [ %220, %426 ], [ %220, %432 ], [ %220, %436 ], [ %220, %440 ], [ %220, %443 ]
  %447 = phi i32 [ %10, %194 ], [ %207, %423 ], [ %207, %426 ], [ %207, %432 ], [ %207, %436 ], [ %207, %440 ], [ %207, %443 ]
  %448 = phi ptr [ %171, %194 ], [ %418, %423 ], [ %418, %426 ], [ %418, %432 ], [ %418, %436 ], [ %418, %440 ], [ %418, %443 ]
  %449 = phi i32 [ %170, %194 ], [ %208, %423 ], [ %208, %426 ], [ %208, %432 ], [ %208, %436 ], [ %208, %440 ], [ %208, %443 ]
  %450 = phi ptr [ %174, %194 ], [ %216, %423 ], [ %216, %426 ], [ %216, %432 ], [ %216, %436 ], [ %442, %440 ], [ %444, %443 ]
  %451 = icmp eq ptr %446, null
  %452 = select i1 %451, ptr %448, ptr %446, !prof !1255
  %453 = tail call ptr @simplify_relational_operation(i32 noundef %447, i32 noundef %47, i32 noundef %449, ptr noundef %450, ptr noundef %452) #22
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
  ], !prof !1256

455:                                              ; preds = %454
  %456 = icmp eq ptr %173, null
  br i1 %456, label %513, label %457, !prof !1257

457:                                              ; preds = %455
  %458 = load i32, ptr %173, align 8
  %459 = and i32 %458, 65535
  %460 = icmp eq i32 %459, 44
  br i1 %460, label %461, label %513, !prof !1258

461:                                              ; preds = %457
  %462 = load i32, ptr %172, align 8
  %463 = and i32 %462, 65535
  %464 = icmp eq i32 %463, 50
  br i1 %464, label %468, label %465, !prof !1259

465:                                              ; preds = %461
  %466 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %172, i32 noundef 50) #24
  %467 = icmp eq ptr %466, null
  br i1 %467, label %484, label %468, !prof !585

468:                                              ; preds = %461, %465
  %469 = phi ptr [ %466, %465 ], [ %172, %461 ]
  %470 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1
  %471 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1, i32 0, i32 0, i64 1
  %472 = load ptr, ptr %471, align 8, !tbaa !442
  %473 = load i32, ptr %472, align 8
  %474 = and i32 %473, 65535
  %475 = icmp eq i32 %474, 44
  br i1 %475, label %476, label %484

476:                                              ; preds = %468
  %477 = getelementptr inbounds %struct.rtx_def, ptr %472, i64 0, i32 1
  %478 = load ptr, ptr %477, align 8, !tbaa !442
  %479 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !442
  %481 = icmp eq ptr %478, %480
  br i1 %481, label %482, label %484

482:                                              ; preds = %476
  %483 = load ptr, ptr %470, align 8, !tbaa !442
  br label %779

484:                                              ; preds = %476, %468, %465
  %485 = load i32, ptr %172, align 8
  %486 = and i32 %485, 65535
  %487 = icmp eq i32 %486, 35
  br i1 %487, label %491, label %488, !prof !1259

488:                                              ; preds = %484
  %489 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %172, i32 noundef 35) #24
  %490 = icmp eq ptr %489, null
  br i1 %490, label %513, label %491, !prof !585

491:                                              ; preds = %484, %488
  %492 = phi ptr [ %489, %488 ], [ %172, %484 ]
  %493 = getelementptr inbounds %struct.rtx_def, ptr %492, i64 0, i32 1
  %494 = load ptr, ptr %493, align 8, !tbaa !442
  %495 = load i32, ptr %494, align 8
  %496 = and i32 %495, 65535
  %497 = icmp eq i32 %496, 50
  br i1 %497, label %498, label %513

498:                                              ; preds = %491
  %499 = getelementptr inbounds %struct.rtx_def, ptr %494, i64 0, i32 1
  %500 = getelementptr inbounds %struct.rtx_def, ptr %494, i64 0, i32 1, i32 0, i32 0, i64 1
  %501 = load ptr, ptr %500, align 8, !tbaa !442
  %502 = load i32, ptr %501, align 8
  %503 = and i32 %502, 65535
  %504 = icmp eq i32 %503, 44
  br i1 %504, label %505, label %513

505:                                              ; preds = %498
  %506 = getelementptr inbounds %struct.rtx_def, ptr %501, i64 0, i32 1
  %507 = load ptr, ptr %506, align 8, !tbaa !442
  %508 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !442
  %510 = icmp eq ptr %507, %509
  br i1 %510, label %511, label %513

511:                                              ; preds = %505
  %512 = load ptr, ptr %499, align 8, !tbaa !442
  br label %779

513:                                              ; preds = %488, %491, %498, %505, %457, %455
  %514 = icmp eq ptr %174, null
  br i1 %514, label %571, label %515, !prof !1260

515:                                              ; preds = %513
  %516 = load i32, ptr %174, align 8
  %517 = and i32 %516, 65535
  %518 = icmp eq i32 %517, 44
  br i1 %518, label %519, label %571, !prof !1261

519:                                              ; preds = %515
  %520 = load i32, ptr %171, align 8
  %521 = and i32 %520, 65535
  %522 = icmp eq i32 %521, 50
  br i1 %522, label %526, label %523

523:                                              ; preds = %519
  %524 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %171, i32 noundef 50) #24
  %525 = icmp eq ptr %524, null
  br i1 %525, label %542, label %526

526:                                              ; preds = %519, %523
  %527 = phi ptr [ %524, %523 ], [ %171, %519 ]
  %528 = getelementptr inbounds %struct.rtx_def, ptr %527, i64 0, i32 1
  %529 = getelementptr inbounds %struct.rtx_def, ptr %527, i64 0, i32 1, i32 0, i32 0, i64 1
  %530 = load ptr, ptr %529, align 8, !tbaa !442
  %531 = load i32, ptr %530, align 8
  %532 = and i32 %531, 65535
  %533 = icmp eq i32 %532, 44
  br i1 %533, label %534, label %542

534:                                              ; preds = %526
  %535 = getelementptr inbounds %struct.rtx_def, ptr %530, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !442
  %537 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !442
  %539 = icmp eq ptr %536, %538
  br i1 %539, label %540, label %542

540:                                              ; preds = %534
  %541 = load ptr, ptr %528, align 8, !tbaa !442
  br label %779

542:                                              ; preds = %534, %526, %523
  %543 = load i32, ptr %171, align 8
  %544 = and i32 %543, 65535
  %545 = icmp eq i32 %544, 35
  br i1 %545, label %549, label %546

546:                                              ; preds = %542
  %547 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %171, i32 noundef 35) #24
  %548 = icmp eq ptr %547, null
  br i1 %548, label %571, label %549

549:                                              ; preds = %542, %546
  %550 = phi ptr [ %547, %546 ], [ %171, %542 ]
  %551 = getelementptr inbounds %struct.rtx_def, ptr %550, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !442
  %553 = load i32, ptr %552, align 8
  %554 = and i32 %553, 65535
  %555 = icmp eq i32 %554, 50
  br i1 %555, label %556, label %571

556:                                              ; preds = %549
  %557 = getelementptr inbounds %struct.rtx_def, ptr %552, i64 0, i32 1
  %558 = getelementptr inbounds %struct.rtx_def, ptr %552, i64 0, i32 1, i32 0, i32 0, i64 1
  %559 = load ptr, ptr %558, align 8, !tbaa !442
  %560 = load i32, ptr %559, align 8
  %561 = and i32 %560, 65535
  %562 = icmp eq i32 %561, 44
  br i1 %562, label %563, label %571

563:                                              ; preds = %556
  %564 = getelementptr inbounds %struct.rtx_def, ptr %559, i64 0, i32 1
  %565 = load ptr, ptr %564, align 8, !tbaa !442
  %566 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1
  %567 = load ptr, ptr %566, align 8, !tbaa !442
  %568 = icmp eq ptr %565, %567
  br i1 %568, label %569, label %571

569:                                              ; preds = %563
  %570 = load ptr, ptr %557, align 8, !tbaa !442
  br label %779

571:                                              ; preds = %546, %549, %556, %563, %515, %513
  br i1 %456, label %742, label %572, !prof !1257

572:                                              ; preds = %571
  %573 = load i32, ptr %173, align 8
  %574 = and i32 %573, 65535
  %575 = icmp eq i32 %574, 30
  br i1 %575, label %576, label %646, !prof !1262

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %578 = load i64, ptr %577, align 8, !tbaa !442
  %579 = icmp ult i64 %578, -9223372036854775807
  br i1 %579, label %646, label %580, !prof !1263

580:                                              ; preds = %576
  %581 = load i32, ptr %171, align 8
  %582 = and i32 %581, 65535
  %583 = icmp eq i32 %582, 37
  br i1 %583, label %584, label %646, !prof !1264

584:                                              ; preds = %580
  %585 = sub nsw i64 0, %578
  %586 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %585) #22
  %587 = load i32, ptr %586, align 8
  %588 = and i32 %587, 65535
  %589 = icmp eq i32 %588, 37
  br i1 %589, label %590, label %598, !prof !1265

590:                                              ; preds = %584
  %591 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %586) #24
  %592 = icmp ugt i32 %591, 52
  br i1 %592, label %593, label %598

593:                                              ; preds = %590
  %594 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %591) #24
  %595 = getelementptr inbounds %struct.cse_reg_info, ptr %594, i64 0, i32 1
  %596 = load i32, ptr %595, align 4, !tbaa !447
  %597 = add i32 %596, 4736
  br label %600

598:                                              ; preds = %590, %584
  %599 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %586, i32 noundef %47) #24
  br label %600

600:                                              ; preds = %598, %593
  %601 = phi i32 [ %597, %593 ], [ %599, %598 ]
  %602 = and i32 %601, 31
  %603 = tail call fastcc ptr @lookup(ptr noundef nonnull %586, i32 noundef %602, i32 noundef %47) #24
  %604 = icmp eq ptr %603, null
  br i1 %604, label %646, label %605

605:                                              ; preds = %600
  %606 = getelementptr inbounds %struct.table_elt, ptr %603, i64 0, i32 6
  %607 = load ptr, ptr %606, align 8, !tbaa !426
  %608 = icmp eq ptr %607, null
  br i1 %608, label %646, label %613

609:                                              ; preds = %613
  %610 = getelementptr inbounds %struct.table_elt, ptr %614, i64 0, i32 4
  %611 = load ptr, ptr %610, align 8, !tbaa !426
  %612 = icmp eq ptr %611, null
  br i1 %612, label %646, label %613, !llvm.loop !1266

613:                                              ; preds = %605, %609
  %614 = phi ptr [ %611, %609 ], [ %607, %605 ]
  %615 = load ptr, ptr %614, align 8, !tbaa !430
  %616 = load i32, ptr %615, align 8
  %617 = and i32 %616, 65535
  %618 = icmp eq i32 %617, 37
  br i1 %618, label %619, label %609

619:                                              ; preds = %613
  %620 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %615, ptr noundef null) #24
  %621 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %47, ptr noundef %172, ptr noundef %620) #22
  br label %779

622:                                              ; preds = %454
  %623 = icmp eq ptr %173, null
  br i1 %623, label %742, label %624, !prof !1267

624:                                              ; preds = %622
  %625 = load i32, ptr %173, align 8
  %626 = and i32 %625, 65535
  %627 = icmp eq i32 %626, 30
  br i1 %627, label %628, label %646, !prof !1268

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %630 = load ptr, ptr %629, align 8, !tbaa !442
  %631 = tail call fastcc ptr @lookup_as_function(ptr noundef %630, i32 noundef 49) #24
  %632 = icmp eq ptr %631, null
  br i1 %632, label %646, label %633

633:                                              ; preds = %628
  %634 = getelementptr inbounds %struct.rtx_def, ptr %631, i64 0, i32 1, i32 0, i32 0, i64 1
  %635 = load ptr, ptr %634, align 8, !tbaa !442
  %636 = load i32, ptr %635, align 8
  %637 = and i32 %636, 65535
  %638 = icmp eq i32 %637, 30
  br i1 %638, label %639, label %646

639:                                              ; preds = %633
  %640 = tail call ptr @copy_rtx(ptr noundef nonnull %631) #22
  %641 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %642 = load i64, ptr %641, align 8, !tbaa !442
  %643 = sub nsw i64 0, %642
  %644 = tail call ptr @plus_constant(ptr noundef %640, i64 noundef %643) #22
  %645 = tail call fastcc ptr @fold_rtx(ptr noundef %644, ptr noundef null) #24
  br label %779

646:                                              ; preds = %609, %605, %628, %633, %600, %580, %576, %572, %624, %454, %454, %454, %454, %454, %454, %454, %454, %454, %454, %454
  %647 = load i32, ptr %172, align 8
  %648 = and i32 %647, 65535
  %649 = icmp eq i32 %648, 37
  %650 = icmp ne ptr %173, null
  %651 = select i1 %649, i1 %650, i1 false
  br i1 %651, label %652, label %742, !prof !1269

652:                                              ; preds = %646
  %653 = load i32, ptr %173, align 8
  %654 = and i32 %653, 65535
  %655 = icmp eq i32 %654, 30
  br i1 %655, label %656, label %742, !prof !1270

656:                                              ; preds = %652
  %657 = icmp eq i32 %10, 67
  switch i16 %11, label %667 [
    i16 67, label %658
    i16 65, label %658
    i16 68, label %658
  ]

658:                                              ; preds = %656, %656, %656
  %659 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %660 = load i64, ptr %659, align 8, !tbaa !442
  %661 = zext nneg i32 %47 to i64
  %662 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %661
  %663 = load i8, ptr %662, align 1, !tbaa !442
  %664 = zext i8 %663 to i64
  %665 = shl nuw nsw i64 %664, 3
  %666 = icmp ult i64 %660, %665
  br i1 %666, label %667, label %742, !prof !1271

667:                                              ; preds = %656, %658
  %668 = phi i1 [ true, %658 ], [ false, %656 ]
  %669 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %172, i32 noundef %10) #24
  %670 = icmp eq ptr %669, null
  br i1 %670, label %742, label %671, !prof !1272

671:                                              ; preds = %667
  %672 = getelementptr inbounds %struct.rtx_def, ptr %669, i64 0, i32 1
  %673 = load ptr, ptr %672, align 8, !tbaa !442
  %674 = icmp eq ptr %673, %172
  br i1 %674, label %742, label %675, !prof !1273

675:                                              ; preds = %671
  %676 = getelementptr inbounds %struct.rtx_def, ptr %669, i64 0, i32 1, i32 0, i32 0, i64 1
  %677 = load ptr, ptr %676, align 8, !tbaa !442
  %678 = tail call fastcc ptr @fold_rtx(ptr noundef %677, ptr noundef null) #24
  %679 = tail call fastcc ptr @equiv_constant(ptr noundef %678) #24
  %680 = icmp eq ptr %679, null
  br i1 %680, label %742, label %681, !prof !1274

681:                                              ; preds = %675
  %682 = load i32, ptr %679, align 8
  %683 = and i32 %682, 65535
  %684 = icmp eq i32 %683, 30
  br i1 %684, label %685, label %742, !prof !1275

685:                                              ; preds = %681
  br i1 %668, label %686, label %700, !prof !1276

686:                                              ; preds = %685
  %687 = zext nneg i32 %47 to i64
  %688 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %687
  %689 = load i8, ptr %688, align 1, !tbaa !442
  %690 = add i8 %689, -12
  %691 = icmp ult i8 %690, 6
  br i1 %691, label %742, label %692, !prof !1277

692:                                              ; preds = %686
  %693 = getelementptr inbounds %struct.rtx_def, ptr %679, i64 0, i32 1
  %694 = load i64, ptr %693, align 8, !tbaa !442
  %695 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %687
  %696 = load i8, ptr %695, align 1, !tbaa !442
  %697 = zext i8 %696 to i64
  %698 = shl nuw nsw i64 %697, 3
  %699 = icmp ult i64 %694, %698
  br i1 %699, label %700, label %742, !prof !1278

700:                                              ; preds = %685, %692
  %701 = icmp eq i32 %10, 50
  %702 = or i1 %701, %668
  %703 = select i1 %702, i32 49, i32 %10, !prof !1279
  %704 = tail call ptr @simplify_binary_operation(i32 noundef %703, i32 noundef %47, ptr noundef nonnull %173, ptr noundef nonnull %679) #22
  %705 = icmp eq ptr %704, null
  br i1 %705, label %742, label %706, !prof !1280

706:                                              ; preds = %700
  br i1 %668, label %707, label %731, !prof !1276

707:                                              ; preds = %706
  %708 = load i32, ptr %704, align 8
  %709 = and i32 %708, 65535
  %710 = icmp eq i32 %709, 30
  br i1 %710, label %711, label %731, !prof !1281

711:                                              ; preds = %707
  %712 = getelementptr inbounds %struct.rtx_def, ptr %704, i64 0, i32 1
  %713 = load i64, ptr %712, align 8, !tbaa !442
  %714 = zext nneg i32 %47 to i64
  %715 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %714
  %716 = load i8, ptr %715, align 1, !tbaa !442
  %717 = zext i8 %716 to i64
  %718 = shl nuw nsw i64 %717, 3
  %719 = icmp slt i64 %713, %718
  br i1 %719, label %731, label %720, !prof !1281

720:                                              ; preds = %711
  br i1 %657, label %721, label %724

721:                                              ; preds = %720
  %722 = add nsw i64 %718, -1
  %723 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %722) #22
  br label %731

724:                                              ; preds = %720
  %725 = load ptr, ptr %672, align 8, !tbaa !442
  %726 = tail call i32 @side_effects_p(ptr noundef %725) #22
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %742

728:                                              ; preds = %724
  %729 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %714
  %730 = load ptr, ptr %729, align 8, !tbaa !426
  br label %779

731:                                              ; preds = %721, %711, %707, %706
  %732 = phi ptr [ %723, %721 ], [ %704, %711 ], [ %704, %707 ], [ %704, %706 ]
  %733 = load ptr, ptr %672, align 8, !tbaa !442
  %734 = tail call ptr @copy_rtx(ptr noundef %733) #22
  %735 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %172, ptr noundef %734) #22
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %739, !prof !1282

737:                                              ; preds = %731
  %738 = tail call fastcc ptr @fold_rtx(ptr noundef %734, ptr noundef %1) #24
  br label %739

739:                                              ; preds = %737, %731
  %740 = phi ptr [ %734, %731 ], [ %738, %737 ]
  %741 = tail call ptr @simplify_gen_binary(i32 noundef %10, i32 noundef %47, ptr noundef %740, ptr noundef %732) #22
  br label %779

742:                                              ; preds = %724, %700, %692, %686, %675, %681, %671, %667, %658, %622, %571, %454, %646, %652
  %743 = icmp eq ptr %174, null
  %744 = select i1 %743, ptr %172, ptr %174, !prof !1283
  %745 = icmp eq ptr %173, null
  %746 = select i1 %745, ptr %171, ptr %173, !prof !1284
  %747 = tail call ptr @simplify_binary_operation(i32 noundef %10, i32 noundef %47, ptr noundef %744, ptr noundef %746) #22
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
  %758 = load ptr, ptr %757, align 8, !tbaa !442
  %759 = tail call i32 @rtx_equal_p(ptr noundef %758, ptr noundef %173) #22
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %775, label %779

761:                                              ; preds = %167, %167
  %762 = icmp eq ptr %174, null
  %763 = select i1 %762, ptr %172, ptr %174, !prof !1285
  %764 = icmp eq ptr %173, null
  br i1 %764, label %765, label %766, !prof !1286

765:                                              ; preds = %761
  br label %766

766:                                              ; preds = %761, %765
  %767 = phi ptr [ %171, %765 ], [ %173, %761 ]
  %768 = icmp eq ptr %169, null
  br i1 %768, label %769, label %772, !prof !1287

769:                                              ; preds = %766
  %770 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1, i32 0, i32 0, i64 2
  %771 = load ptr, ptr %770, align 8, !tbaa !442
  br label %772

772:                                              ; preds = %766, %769
  %773 = phi ptr [ %771, %769 ], [ %169, %766 ]
  %774 = tail call ptr @simplify_ternary_operation(i32 noundef %10, i32 noundef %47, i32 noundef %170, ptr noundef %763, ptr noundef %767, ptr noundef %773) #22
  br label %775

775:                                              ; preds = %416, %412, %186, %167, %748, %752, %756, %177, %772, %742, %445, %182
  %776 = phi ptr [ null, %167 ], [ %774, %772 ], [ null, %756 ], [ null, %752 ], [ null, %748 ], [ %747, %742 ], [ null, %416 ], [ %453, %445 ], [ null, %177 ], [ %185, %182 ], [ null, %186 ], [ null, %412 ]
  %777 = icmp eq ptr %776, null
  %778 = select i1 %777, ptr %168, ptr %776, !prof !1288
  br label %779

779:                                              ; preds = %25, %18, %728, %739, %639, %619, %540, %569, %482, %511, %414, %284, %756, %34, %16, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %12, %2, %775
  %780 = phi ptr [ %778, %775 ], [ %645, %639 ], [ %621, %619 ], [ null, %2 ], [ %15, %12 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %16 ], [ %0, %34 ], [ %173, %756 ], [ %286, %284 ], [ %415, %414 ], [ %483, %482 ], [ %512, %511 ], [ %541, %540 ], [ %570, %569 ], [ %741, %739 ], [ %730, %728 ], [ %0, %18 ], [ %0, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret ptr %780
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1289 !PGOFuncName !1290 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !426
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8, !prof !1291

8:                                                ; preds = %3, %26
  %9 = phi ptr [ %28, %26 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.table_elt, ptr %9, i64 0, i32 10
  %11 = load i8, ptr %10, align 8
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %26, !prof !1292

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !430
  %16 = icmp eq ptr %15, %0
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %30, label %21, !prof !1293

21:                                               ; preds = %14
  %22 = icmp ne i32 %18, 37
  %23 = zext i1 %22 to i32
  %24 = tail call i32 @exp_equiv_p(ptr noundef nonnull %0, ptr noundef %15, i32 noundef %23, i8 noundef zeroext 0) #24, !range !503
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30, !prof !1294

26:                                               ; preds = %8, %21
  %27 = getelementptr inbounds %struct.table_elt, ptr %9, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !426
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %8, !prof !1295, !llvm.loop !1296

30:                                               ; preds = %21, %26, %14, %3
  %31 = phi ptr [ null, %3 ], [ null, %26 ], [ %9, %21 ], [ %9, %14 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_equiv_classes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1297 !PGOFuncName !1298 {
  %3 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !779
  %5 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !779
  %7 = icmp eq ptr %4, %6
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %91, label %10, !prof !1299

10:                                               ; preds = %2, %89
  %11 = phi ptr [ %17, %89 ], [ %6, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !430
  %13 = getelementptr inbounds %struct.table_elt, ptr %11, i64 0, i32 10
  %14 = load i8, ptr %13, align 8
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.table_elt, ptr %11, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !866
  %18 = load i32, ptr %12, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %24, label %21, !prof !1300

21:                                               ; preds = %10
  %22 = tail call i32 @exp_equiv_p(ptr noundef nonnull %12, ptr noundef nonnull %12, i32 noundef 1, i8 noundef zeroext 0) #24, !range !503
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %89, label %24, !prof !1301

24:                                               ; preds = %21, %10
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !438
  %25 = load i32, ptr %12, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %36, !prof !1300

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #24
  %30 = icmp ugt i32 %29, 52
  br i1 %30, label %31, label %36, !prof !1302

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %29) #24
  %33 = getelementptr inbounds %struct.cse_reg_info, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !447
  %35 = add i32 %34, 4736
  br label %38

36:                                               ; preds = %28, %24
  %37 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %12, i32 noundef %15) #24
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi i32 [ %35, %31 ], [ %37, %36 ]
  %40 = and i32 %39, 31
  %41 = load i32, ptr %12, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 37
  br i1 %43, label %44, label %52, !prof !1302

44:                                               ; preds = %38
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #24
  %46 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %45) #24
  %47 = getelementptr inbounds %struct.cse_reg_info, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !447
  %49 = icmp sgt i32 %48, -1
  %50 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #24
  tail call fastcc void @delete_reg_equiv(i32 noundef %50) #24
  %51 = load i32, ptr %12, align 8
  br label %52

52:                                               ; preds = %44, %38
  %53 = phi i32 [ %51, %44 ], [ %41, %38 ]
  %54 = phi i1 [ %49, %44 ], [ false, %38 ]
  %55 = and i32 %53, 65535
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %61, !prof !1300

57:                                               ; preds = %52
  %58 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #24
  %59 = icmp ugt i32 %58, 52
  br i1 %59, label %60, label %61, !prof !1302

60:                                               ; preds = %57
  tail call fastcc void @remove_pseudo_from_table(ptr noundef nonnull %12, i32 noundef %40) #24
  br label %62

61:                                               ; preds = %57, %52
  tail call fastcc void @remove_from_table(ptr noundef nonnull %11, i32 noundef %40) #24
  br label %62

62:                                               ; preds = %61, %60
  %63 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %12, ptr noundef %4, i32 noundef 0) #24, !range !503
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %64, i1 true, i1 %54
  br i1 %65, label %66, label %83, !prof !1303

66:                                               ; preds = %62
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %12) #24
  %67 = load i32, ptr %12, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %78, !prof !1302

70:                                               ; preds = %66
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #24
  %72 = icmp ugt i32 %71, 52
  br i1 %72, label %73, label %78, !prof !1302

73:                                               ; preds = %70
  %74 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %71) #24
  %75 = getelementptr inbounds %struct.cse_reg_info, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !447
  %77 = add i32 %76, 4736
  br label %80

78:                                               ; preds = %70, %66
  %79 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %12, i32 noundef %15) #24
  br label %80

80:                                               ; preds = %78, %73
  %81 = phi i32 [ %77, %73 ], [ %79, %78 ]
  %82 = and i32 %81, 31
  br label %83

83:                                               ; preds = %62, %80
  %84 = phi i32 [ %82, %80 ], [ %40, %62 ]
  %85 = tail call fastcc ptr @insert(ptr noundef nonnull %12, ptr noundef %4, i32 noundef %84, i32 noundef %15) #24
  %86 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !438
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds %struct.table_elt, ptr %85, i64 0, i32 11
  store i8 %87, ptr %88, align 1, !tbaa !698
  br label %89

89:                                               ; preds = %83, %21
  %90 = icmp eq ptr %17, null
  br i1 %90, label %91, label %10, !prof !1304, !llvm.loop !1305

91:                                               ; preds = %89, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @use_related_value(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !1306 !PGOFuncName !1307 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !1308

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !805
  %7 = icmp eq ptr %6, null
  br i1 %7, label %73, label %39, !prof !1309

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 35
  br i1 %11, label %12, label %73, !prof !1310

12:                                               ; preds = %8
  %13 = tail call ptr @get_related_value(ptr noundef nonnull %0) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15, !prof !1311

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %27, !prof !1311

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #24
  %21 = icmp ugt i32 %20, 52
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #24
  %24 = getelementptr inbounds %struct.cse_reg_info, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !447
  %26 = add i32 %25, 4736
  br label %31

27:                                               ; preds = %19, %15
  %28 = lshr i32 %16, 16
  %29 = and i32 %28, 255
  %30 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %13, i32 noundef %29) #24
  br label %31

31:                                               ; preds = %22, %27
  %32 = phi i32 [ %26, %22 ], [ %30, %27 ]
  %33 = and i32 %32, 31
  %34 = load i32, ptr %13, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = tail call fastcc ptr @lookup(ptr noundef nonnull %13, i32 noundef %33, i32 noundef %36) #24
  %38 = icmp eq ptr %37, null
  br i1 %38, label %73, label %39, !prof !1312

39:                                               ; preds = %4, %31
  %40 = phi ptr [ %37, %31 ], [ %1, %4 ]
  br label %41

41:                                               ; preds = %39, %60
  %42 = phi ptr [ %62, %60 ], [ %40, %39 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !430
  %44 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %43) #22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %60, !prof !1313

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.table_elt, ptr %42, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !426
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50, !prof !1314

50:                                               ; preds = %46, %56
  %51 = phi ptr [ %58, %56 ], [ %48, %46 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !430
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %66, label %56, !prof !1315

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.table_elt, ptr %51, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !426
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %50, !prof !1316, !llvm.loop !1317

60:                                               ; preds = %56, %46, %41
  %61 = getelementptr inbounds %struct.table_elt, ptr %42, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !805
  %63 = icmp eq ptr %62, %40
  %64 = icmp eq ptr %62, null
  %65 = or i1 %63, %64
  br i1 %65, label %73, label %41, !prof !1318

66:                                               ; preds = %50
  %67 = tail call i64 @get_integer_term(ptr noundef %0) #22
  %68 = load ptr, ptr %42, align 8, !tbaa !430
  %69 = tail call i64 @get_integer_term(ptr noundef %68) #22
  %70 = sub nsw i64 %67, %69
  %71 = load ptr, ptr %51, align 8, !tbaa !430
  %72 = tail call ptr @plus_constant(ptr noundef %71, i64 noundef %70) #22
  br label %73

73:                                               ; preds = %60, %4, %12, %8, %31, %66
  %74 = phi ptr [ %72, %66 ], [ null, %31 ], [ null, %8 ], [ null, %12 ], [ null, %4 ], [ null, %60 ]
  ret ptr %74
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @try_const_anchors(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !425 !PGOFuncName !1319 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  %9 = call fastcc zeroext i8 @compute_const_anchors(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #24, !range !541
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %2
  %12 = load i64, ptr %3, align 8, !tbaa !537
  %13 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %12) #22
  %14 = load i64, ptr %5, align 8, !tbaa !537
  %15 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %14) #22
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #24
  %21 = icmp ugt i32 %20, 52
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #24
  %24 = getelementptr inbounds %struct.cse_reg_info, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !447
  %26 = add i32 %25, 4736
  br label %29

27:                                               ; preds = %19, %11
  %28 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %13, i32 noundef %1) #24
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i32 [ %26, %22 ], [ %28, %27 ]
  %31 = and i32 %30, 31
  %32 = tail call fastcc ptr @lookup(ptr noundef nonnull %13, i32 noundef %31, i32 noundef %1) #24
  %33 = load i32, ptr %15, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #24
  %38 = icmp ugt i32 %37, 52
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %37) #24
  %41 = getelementptr inbounds %struct.cse_reg_info, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !447
  %43 = add i32 %42, 4736
  br label %46

44:                                               ; preds = %36, %29
  %45 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %15, i32 noundef %1) #24
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi i32 [ %43, %39 ], [ %45, %44 ]
  %48 = and i32 %47, 31
  %49 = tail call fastcc ptr @lookup(ptr noundef nonnull %15, i32 noundef %48, i32 noundef %1) #24
  %50 = icmp eq ptr %32, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i64, ptr %4, align 8, !tbaa !537
  %53 = call fastcc ptr @find_reg_offset_for_const(ptr noundef nonnull %32, i64 noundef %52, ptr noundef nonnull %7) #24
  %54 = icmp eq ptr %49, null
  br i1 %54, label %71, label %60

55:                                               ; preds = %46
  %56 = icmp eq ptr %49, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %55
  %58 = load i64, ptr %6, align 8, !tbaa !537
  %59 = call fastcc ptr @find_reg_offset_for_const(ptr noundef nonnull %49, i64 noundef %58, ptr noundef nonnull %8) #24
  br label %71

60:                                               ; preds = %51
  %61 = load i64, ptr %6, align 8, !tbaa !537
  %62 = call fastcc ptr @find_reg_offset_for_const(ptr noundef nonnull %49, i64 noundef %61, ptr noundef nonnull %8) #24
  %63 = icmp eq ptr %53, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = icmp eq ptr %62, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %8, align 4, !tbaa !438
  %68 = load i32, ptr %7, align 4, !tbaa !438
  %69 = icmp ugt i32 %67, %68
  %70 = select i1 %69, ptr %62, ptr %53
  br label %71

71:                                               ; preds = %51, %57, %55, %64, %60, %2, %66
  %72 = phi ptr [ %70, %66 ], [ null, %2 ], [ %62, %60 ], [ %53, %64 ], [ null, %55 ], [ %59, %57 ], [ %53, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret ptr %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @notreg_cost(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1320 !PGOFuncName !1321 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %35, !prof !1322

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !442
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %35, !prof !1323

12:                                               ; preds = %6
  %13 = lshr i32 %3, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !442
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %35, !prof !1324

19:                                               ; preds = %12
  %20 = lshr i32 %9, 16
  %21 = and i32 %20, 255
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !442
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %35, !prof !1324

26:                                               ; preds = %19
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %28 = load i8, ptr %27, align 1, !tbaa !442
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %22
  %30 = load i8, ptr %29, align 1, !tbaa !442
  %31 = icmp ult i8 %28, %30
  br i1 %31, label %32, label %35, !prof !1325

32:                                               ; preds = %26
  %33 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %0) #22
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39, !prof !1326

35:                                               ; preds = %32, %26, %19, %12, %6, %2
  %36 = load i8, ptr @optimize_this_for_speed_p, align 1, !tbaa !442
  %37 = tail call i32 @rtx_cost(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %36) #22
  %38 = shl nsw i32 %37, 1
  br label %39

39:                                               ; preds = %32, %35
  %40 = phi i32 [ %38, %35 ], [ 0, %32 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @approx_reg_cost(ptr noundef %0) unnamed_addr #0 !prof !1327 !PGOFuncName !1328 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store i32 0, ptr %3, align 4, !tbaa !438
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @approx_reg_cost_1, ptr noundef nonnull %3) #22
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %3, align 4
  %7 = select i1 %5, i32 %6, i32 2147483647, !prof !1329
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @preferable(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 !prof !1330 !PGOFuncName !1331 {
  %5 = icmp eq i32 %0, %2
  br i1 %5, label %10, label %6, !prof !1332

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 2147483647
  br i1 %7, label %21, label %8, !prof !1333

8:                                                ; preds = %6
  %9 = icmp eq i32 %2, 2147483647
  br i1 %9, label %21, label %10, !prof !1334

10:                                               ; preds = %8, %4
  %11 = icmp eq i32 %1, %3
  br i1 %11, label %16, label %12, !prof !1335

12:                                               ; preds = %10
  %13 = icmp eq i32 %1, 2147483647
  br i1 %13, label %21, label %14, !prof !1336

14:                                               ; preds = %12
  %15 = icmp eq i32 %3, 2147483647
  br i1 %15, label %21, label %16, !prof !1337

16:                                               ; preds = %14, %10
  br i1 %5, label %19, label %17, !prof !1338

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
declare ptr @delete_insn_and_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_jump_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @insert_regs(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1339 !PGOFuncName !1340 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %110 [
    i16 37, label %6
    i16 39, label %92
  ], !prof !1341

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %8 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #24
  %9 = getelementptr inbounds %struct.cse_reg_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !447
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %26, !prof !1342

12:                                               ; preds = %6
  %13 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %14 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #24
  %15 = getelementptr inbounds %struct.cse_reg_info, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !447
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %17, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %0, align 8
  %21 = xor i32 %20, %19
  %22 = and i32 %21, 16711680
  %23 = icmp ne i32 %22, 0
  %24 = icmp eq i32 %2, 0
  %25 = or i1 %24, %23
  br i1 %25, label %104, label %26, !prof !1343

26:                                               ; preds = %6, %12
  %27 = icmp eq ptr %1, null
  br i1 %27, label %67, label %28, !prof !1344

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !426
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32, !prof !1345

32:                                               ; preds = %28, %63
  %33 = phi ptr [ %65, %63 ], [ %30, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !430
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %63, !prof !1346

38:                                               ; preds = %32
  %39 = load i32, ptr %0, align 8
  %40 = xor i32 %39, %35
  %41 = and i32 %40, 16711680
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63, !prof !1347

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #24
  %45 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %44) #24
  %46 = getelementptr inbounds %struct.cse_reg_info, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !447
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %50, label %49, !prof !1347

49:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1167, ptr noundef nonnull @.str.4) #22
  br label %50

50:                                               ; preds = %43, %49
  %51 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %52 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %44) #24
  %53 = getelementptr inbounds %struct.cse_reg_info, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !447
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.qty_table_elem, ptr %51, i64 %55, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %0, align 8
  %59 = xor i32 %58, %57
  %60 = and i32 %59, 16711680
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63, !prof !1347

62:                                               ; preds = %50
  tail call fastcc void @make_regs_eqv(i32 noundef %7, i32 noundef %44) #24
  br label %104

63:                                               ; preds = %50, %32, %38
  %64 = getelementptr inbounds %struct.table_elt, ptr %33, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !426
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %32, !prof !1348, !llvm.loop !1349

67:                                               ; preds = %63, %28, %26
  %68 = icmp eq i32 %2, 0
  br i1 %68, label %69, label %88, !prof !1350

69:                                               ; preds = %67
  %70 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #24
  %71 = getelementptr inbounds %struct.cse_reg_info, ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !479
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %88, !prof !1351

74:                                               ; preds = %69
  %75 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #24
  %76 = getelementptr inbounds %struct.cse_reg_info, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !478
  %78 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #24
  %79 = getelementptr inbounds %struct.cse_reg_info, ptr %78, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !479
  %81 = add nsw i32 %80, 1
  %82 = icmp eq i32 %77, %81
  br i1 %82, label %83, label %88, !prof !1352

83:                                               ; preds = %74
  %84 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #24
  %85 = getelementptr inbounds %struct.cse_reg_info, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !478
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %85, align 4, !tbaa !478
  br label %88

88:                                               ; preds = %83, %74, %69, %67
  %89 = load i32, ptr %0, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  tail call fastcc void @make_new_qty(i32 noundef %7, i32 noundef %91) #24
  br label %104

92:                                               ; preds = %3
  %93 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !442
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %110, !prof !1353

98:                                               ; preds = %92
  %99 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %94) #24
  %100 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %99) #24
  %101 = getelementptr inbounds %struct.cse_reg_info, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !447
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %110, label %106, !prof !1354

104:                                              ; preds = %62, %88, %12, %110, %106
  %105 = phi i32 [ 1, %106 ], [ %111, %110 ], [ 1, %88 ], [ 0, %12 ], [ 1, %62 ]
  ret i32 %105

106:                                              ; preds = %98
  %107 = load ptr, ptr %93, align 8, !tbaa !442
  %108 = tail call fastcc i32 @insert_regs(ptr noundef %107, ptr noundef null, i32 noundef 0) #24, !range !503
  %109 = tail call fastcc i32 @mention_regs(ptr noundef nonnull %0) #24, !range !503
  br label %104

110:                                              ; preds = %3, %98, %92
  %111 = tail call fastcc i32 @mention_regs(ptr noundef nonnull %0) #24, !range !503
  br label %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rehash_using_reg(ptr noundef %0) unnamed_addr #0 !prof !1355 !PGOFuncName !1356 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %9, !prof !1357

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !442
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %2, %1 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %12 = and i32 %10, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %93, !prof !1358

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #24
  %16 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %15) #24
  %17 = getelementptr inbounds %struct.cse_reg_info, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !479
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %93, label %20, !prof !1359

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #24
  %22 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %21) #24
  %23 = getelementptr inbounds %struct.cse_reg_info, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !479
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #24
  %26 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %25) #24
  %27 = getelementptr inbounds %struct.cse_reg_info, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !478
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %93, !prof !1360

30:                                               ; preds = %20, %90
  %31 = phi i64 [ %91, %90 ], [ 0, %20 ]
  %32 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !426
  %34 = icmp eq ptr %33, null
  br i1 %34, label %90, label %35, !prof !1361

35:                                               ; preds = %30, %88
  %36 = phi ptr [ %38, %88 ], [ %33, %30 ]
  %37 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !662
  %39 = load ptr, ptr %36, align 8, !tbaa !430
  %40 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %11, ptr noundef %39) #22
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %88, label %42, !prof !1362

42:                                               ; preds = %35
  %43 = load ptr, ptr %36, align 8, !tbaa !430
  %44 = tail call i32 @exp_equiv_p(ptr noundef %43, ptr noundef %43, i32 noundef 1, i8 noundef zeroext 0) #24, !range !503
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %88, label %46, !prof !1363

46:                                               ; preds = %42
  %47 = load ptr, ptr %36, align 8, !tbaa !430
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %59, !prof !1363

51:                                               ; preds = %46
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #24
  %53 = icmp ugt i32 %52, 52
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %52) #24
  %56 = getelementptr inbounds %struct.cse_reg_info, ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !447
  %58 = add i32 %57, 4736
  br label %64

59:                                               ; preds = %51, %46
  %60 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 10
  %61 = load i8, ptr %60, align 8
  %62 = zext i8 %61 to i32
  %63 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %47, i32 noundef %62) #24
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i32 [ %58, %54 ], [ %63, %59 ]
  %66 = and i32 %65, 31
  %67 = zext nneg i32 %66 to i64
  %68 = icmp eq i64 %31, %67
  br i1 %68, label %88, label %69, !prof !1364

69:                                               ; preds = %64
  %70 = load ptr, ptr %37, align 8, !tbaa !662
  %71 = icmp eq ptr %70, null
  %72 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !1114
  br i1 %71, label %76, label %74, !prof !1365

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.table_elt, ptr %70, i64 0, i32 3
  store ptr %73, ptr %75, align 8, !tbaa !1114
  br label %76

76:                                               ; preds = %69, %74
  %77 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 3
  %78 = icmp eq ptr %73, null
  %79 = getelementptr inbounds %struct.table_elt, ptr %73, i64 0, i32 2
  %80 = select i1 %78, ptr %32, ptr %79, !prof !1366
  store ptr %70, ptr %80, align 8, !tbaa !426
  %81 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %67
  %82 = load ptr, ptr %81, align 8, !tbaa !426
  store ptr %82, ptr %37, align 8, !tbaa !662
  store ptr null, ptr %77, align 8, !tbaa !1114
  %83 = load ptr, ptr %81, align 8, !tbaa !426
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85, !prof !1367

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.table_elt, ptr %83, i64 0, i32 3
  store ptr %36, ptr %86, align 8, !tbaa !1114
  br label %87

87:                                               ; preds = %85, %76
  store ptr %36, ptr %81, align 8, !tbaa !426
  br label %88

88:                                               ; preds = %35, %42, %64, %87
  %89 = icmp eq ptr %38, null
  br i1 %89, label %90, label %35, !prof !1368, !llvm.loop !1369

90:                                               ; preds = %88, %30
  %91 = add nuw nsw i64 %31, 1
  %92 = icmp eq i64 %91, 32
  br i1 %92, label %93, label %30, !prof !1370, !llvm.loop !1371

93:                                               ; preds = %90, %9, %14, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @insert(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1372 !PGOFuncName !1373 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 37
  br i1 %7, label %10, label %8, !prof !1374

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %0, i32 noundef 23) #24
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ]
  %12 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %0) #24
  %13 = tail call fastcc ptr @insert_with_costs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %11, i32 noundef %12) #24
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invalidate_from_clobbers(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !722 !PGOFuncName !1375 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %46 [
    i16 25, label %4
    i16 15, label %17
  ], !prof !1376

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !442
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8, !prof !747

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %46 [
    i16 37, label %11
    i16 39, label %11
    i16 43, label %11
    i16 40, label %12
    i16 120, label %12
  ], !prof !1377

11:                                               ; preds = %8, %8, %8
  tail call fastcc void @invalidate(ptr noundef nonnull %6, i32 noundef 0) #24
  br label %46

12:                                               ; preds = %8, %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !442
  %15 = lshr i32 %9, 16
  %16 = and i32 %15, 255
  tail call fastcc void @invalidate(ptr noundef %14, i32 noundef %16) #24
  br label %46

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !442
  %20 = load i32, ptr %19, align 8, !tbaa !451
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %46, !prof !734

22:                                               ; preds = %17
  %23 = zext nneg i32 %20 to i64
  br label %24

24:                                               ; preds = %22, %44
  %25 = phi i64 [ %23, %22 ], [ %26, %44 ]
  %26 = add nsw i64 %25, -1
  %27 = load ptr, ptr %18, align 8, !tbaa !442
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !426
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 25
  br i1 %32, label %33, label %44, !prof !735

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !442
  %36 = load i32, ptr %35, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %44 [
    i16 37, label %38
    i16 39, label %38
    i16 43, label %38
    i16 40, label %39
    i16 120, label %39
  ], !prof !1378

38:                                               ; preds = %33, %33, %33
  tail call fastcc void @invalidate(ptr noundef nonnull %35, i32 noundef 0) #24
  br label %44

39:                                               ; preds = %33, %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !442
  %42 = lshr i32 %36, 16
  %43 = and i32 %42, 255
  tail call fastcc void @invalidate(ptr noundef %41, i32 noundef %43) #24
  br label %44

44:                                               ; preds = %38, %39, %33, %24
  %45 = icmp ugt i64 %25, 1
  br i1 %45, label %24, label %46, !prof !1379, !llvm.loop !1380

46:                                               ; preds = %44, %17, %1, %4, %12, %11, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @invalidate_memory() unnamed_addr #15 !prof !1381 !PGOFuncName !1382 {
  br label %1

1:                                                ; preds = %0, %17
  %2 = phi i64 [ 0, %0 ], [ %18, %17 ]
  %3 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6, !prof !1383

6:                                                ; preds = %1, %15
  %7 = phi ptr [ %9, %15 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.table_elt, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !662
  %10 = getelementptr inbounds %struct.table_elt, ptr %7, i64 0, i32 11
  %11 = load i8, ptr %10, align 1, !tbaa !698
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !1384

13:                                               ; preds = %6
  %14 = trunc i64 %2 to i32
  tail call fastcc void @remove_from_table(ptr noundef nonnull %7, i32 noundef %14) #24
  br label %15

15:                                               ; preds = %6, %13
  %16 = icmp eq ptr %9, null
  br i1 %16, label %17, label %6, !prof !1385, !llvm.loop !1386

17:                                               ; preds = %15, %1
  %18 = add nuw nsw i64 %2, 1
  %19 = icmp eq i64 %18, 32
  br i1 %19, label %20, label %1, !prof !1387, !llvm.loop !1388

20:                                               ; preds = %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @invalidate_for_call() unnamed_addr #15 !prof !1389 !PGOFuncName !1390 {
  br label %1

1:                                                ; preds = %0, %27
  %2 = phi i64 [ 0, %0 ], [ %29, %27 ]
  %3 = phi i32 [ 0, %0 ], [ %28, %27 ]
  %4 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !537
  %5 = shl nuw nsw i64 1, %2
  %6 = and i64 %4, %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %27, label %8, !prof !1391

8:                                                ; preds = %1
  %9 = trunc i64 %2 to i32
  tail call fastcc void @delete_reg_equiv(i32 noundef %9) #24
  %10 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %9) #24
  %11 = getelementptr inbounds %struct.cse_reg_info, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !478
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %21, !prof !1392

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %9) #24
  %16 = getelementptr inbounds %struct.cse_reg_info, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !478
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !478
  %19 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %9) #24
  %20 = getelementptr inbounds %struct.cse_reg_info, ptr %19, i64 0, i32 4
  store i32 -1, ptr %20, align 4, !tbaa !480
  br label %21

21:                                               ; preds = %14, %8
  %22 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !537
  %23 = and i64 %22, %5
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = or i32 %3, %25
  br label %27

27:                                               ; preds = %1, %21
  %28 = phi i32 [ %26, %21 ], [ %3, %1 ]
  %29 = add nuw nsw i64 %2, 1
  %30 = icmp eq i64 %29, 53
  br i1 %30, label %31, label %1, !prof !1393, !llvm.loop !1394

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %73, label %33, !prof !1395

33:                                               ; preds = %31, %70
  %34 = phi i64 [ %71, %70 ], [ 0, %31 ]
  %35 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !426
  %37 = icmp eq ptr %36, null
  br i1 %37, label %70, label %38, !prof !1396

38:                                               ; preds = %33, %68
  %39 = phi ptr [ %41, %68 ], [ %36, %33 ]
  %40 = getelementptr inbounds %struct.table_elt, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !662
  %42 = load ptr, ptr %39, align 8, !tbaa !430
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 37
  br i1 %45, label %46, label %68, !prof !1397

46:                                               ; preds = %38
  %47 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %42) #24
  %48 = icmp ugt i32 %47, 52
  br i1 %48, label %68, label %49, !prof !1398

49:                                               ; preds = %46
  %50 = lshr i32 %43, 16
  %51 = and i32 %50, 255
  %52 = tail call fastcc i32 @end_hard_regno(i32 noundef %51, i32 noundef %47) #24
  %53 = icmp ult i32 %47, %52
  br i1 %53, label %54, label %68, !prof !1399

54:                                               ; preds = %49
  %55 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !537
  %56 = zext nneg i32 %47 to i64
  br label %61

57:                                               ; preds = %61
  %58 = zext i32 %52 to i64
  %59 = add nuw nsw i64 %62, 1
  %60 = icmp eq i64 %59, %58
  br i1 %60, label %68, label %61, !prof !1400, !llvm.loop !1401

61:                                               ; preds = %54, %57
  %62 = phi i64 [ %56, %54 ], [ %59, %57 ]
  %63 = shl nuw i64 1, %62
  %64 = and i64 %55, %63
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %57, label %66, !prof !1402

66:                                               ; preds = %61
  %67 = trunc i64 %34 to i32
  tail call fastcc void @remove_from_table(ptr noundef nonnull %39, i32 noundef %67) #24
  br label %68

68:                                               ; preds = %57, %49, %66, %38, %46
  %69 = icmp eq ptr %41, null
  br i1 %69, label %70, label %38, !prof !1403, !llvm.loop !1404

70:                                               ; preds = %68, %33
  %71 = add nuw nsw i64 %34, 1
  %72 = icmp eq i64 %71, 32
  br i1 %72, label %73, label %33, !prof !1405, !llvm.loop !1406

73:                                               ; preds = %70, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mention_regs(ptr noundef readonly %0) unnamed_addr #0 !prof !1407 !PGOFuncName !1408 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %184, label %3, !prof !1409

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = trunc i32 %4 to i16
  switch i16 %6, label %99 [
    i16 37, label %7
    i16 39, label %44
    i16 48, label %104
  ], !prof !1410

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %10, label %14, !prof !1411

10:                                               ; preds = %7
  %11 = lshr i32 %4, 16
  %12 = and i32 %11, 255
  %13 = tail call fastcc i32 @end_hard_regno(i32 noundef %12, i32 noundef %8) #24
  br label %16

14:                                               ; preds = %7
  %15 = add i32 %8, 1
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %13, %10 ], [ %15, %14 ]
  %18 = icmp ult i32 %8, %17
  br i1 %18, label %19, label %184, !prof !1412

19:                                               ; preds = %16, %34
  %20 = phi i32 [ %42, %34 ], [ %8, %16 ]
  %21 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #24
  %22 = getelementptr inbounds %struct.cse_reg_info, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !479
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %34, !prof !1413

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #24
  %27 = getelementptr inbounds %struct.cse_reg_info, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !479
  %29 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #24
  %30 = getelementptr inbounds %struct.cse_reg_info, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !478
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %34, label %33, !prof !1414

33:                                               ; preds = %25
  tail call fastcc void @remove_invalid_refs(i32 noundef %20) #24
  br label %34

34:                                               ; preds = %33, %25, %19
  %35 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #24
  %36 = getelementptr inbounds %struct.cse_reg_info, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !478
  %38 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #24
  %39 = getelementptr inbounds %struct.cse_reg_info, ptr %38, i64 0, i32 3
  store i32 %37, ptr %39, align 4, !tbaa !479
  %40 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #24
  %41 = getelementptr inbounds %struct.cse_reg_info, ptr %40, i64 0, i32 4
  store i32 -1, ptr %41, align 4, !tbaa !480
  %42 = add i32 %20, 1
  %43 = icmp eq i32 %42, %17
  br i1 %43, label %184, label %19, !prof !1412, !llvm.loop !1415

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !442
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %99, !prof !1416

50:                                               ; preds = %44
  %51 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %46) #24
  %52 = icmp ugt i32 %51, 52
  br i1 %52, label %53, label %99, !prof !1416

53:                                               ; preds = %50
  %54 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #24
  %55 = getelementptr inbounds %struct.cse_reg_info, ptr %54, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !479
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %89, !prof !1417

58:                                               ; preds = %53
  %59 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #24
  %60 = getelementptr inbounds %struct.cse_reg_info, ptr %59, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !479
  %62 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #24
  %63 = getelementptr inbounds %struct.cse_reg_info, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !478
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %89, label %66, !prof !1418

66:                                               ; preds = %58
  %67 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #24
  %68 = getelementptr inbounds %struct.cse_reg_info, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !478
  %70 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #24
  %71 = getelementptr inbounds %struct.cse_reg_info, ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !479
  %73 = sub nsw i32 %69, %72
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %82, label %75, !prof !1419

75:                                               ; preds = %66
  %76 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #24
  %77 = getelementptr inbounds %struct.cse_reg_info, ptr %76, i64 0, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !480
  %79 = load ptr, ptr %45, align 8, !tbaa !442
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef %79) #24
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %83, label %82, !prof !1419

82:                                               ; preds = %75, %66
  tail call fastcc void @remove_invalid_refs(i32 noundef %51) #24
  br label %89

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load i32, ptr %84, align 8, !tbaa !442
  %86 = load i32, ptr %0, align 8
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  tail call fastcc void @remove_invalid_subreg_refs(i32 noundef %51, i32 noundef %85, i32 noundef %88) #24
  br label %89

89:                                               ; preds = %82, %83, %58, %53
  %90 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #24
  %91 = getelementptr inbounds %struct.cse_reg_info, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !478
  %93 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #24
  %94 = getelementptr inbounds %struct.cse_reg_info, ptr %93, i64 0, i32 3
  store i32 %92, ptr %94, align 4, !tbaa !479
  %95 = load ptr, ptr %45, align 8, !tbaa !442
  %96 = tail call fastcc i32 @rhs_regno(ptr noundef %95) #24
  %97 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #24
  %98 = getelementptr inbounds %struct.cse_reg_info, ptr %97, i64 0, i32 4
  store i32 %96, ptr %98, align 4, !tbaa !480
  br label %184

99:                                               ; preds = %44, %50, %3
  %100 = zext nneg i32 %5 to i64
  %101 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !438
  %103 = icmp ult i32 %102, 2
  br i1 %103, label %104, label %141, !prof !1420

104:                                              ; preds = %3, %99
  %105 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !442
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 37
  br i1 %109, label %110, label %122, !prof !1421

110:                                              ; preds = %104
  %111 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %106) #24
  %112 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %111) #24
  %113 = getelementptr inbounds %struct.cse_reg_info, ptr %112, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !447
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %122, label %116, !prof !1422

116:                                              ; preds = %110
  %117 = load ptr, ptr %105, align 8, !tbaa !442
  %118 = tail call fastcc i32 @insert_regs(ptr noundef %117, ptr noundef null, i32 noundef 0) #24, !range !503
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120, !prof !1423

120:                                              ; preds = %116
  %121 = load ptr, ptr %105, align 8, !tbaa !442
  tail call fastcc void @rehash_using_reg(ptr noundef %121) #24
  br label %122

122:                                              ; preds = %116, %120, %110, %104
  %123 = phi i32 [ 0, %110 ], [ 1, %120 ], [ 0, %116 ], [ 0, %104 ]
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !442
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 37
  br i1 %128, label %129, label %141, !prof !1424

129:                                              ; preds = %122
  %130 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %125) #24
  %131 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %130) #24
  %132 = getelementptr inbounds %struct.cse_reg_info, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !447
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %141, label %135, !prof !1425

135:                                              ; preds = %129
  %136 = load ptr, ptr %124, align 8, !tbaa !442
  %137 = tail call fastcc i32 @insert_regs(ptr noundef %136, ptr noundef null, i32 noundef 0) #24, !range !503
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139, !prof !1426

139:                                              ; preds = %135
  %140 = load ptr, ptr %124, align 8, !tbaa !442
  tail call fastcc void @rehash_using_reg(ptr noundef %140) #24
  br label %141

141:                                              ; preds = %122, %129, %139, %135, %99
  %142 = phi i32 [ %123, %129 ], [ 1, %139 ], [ %123, %135 ], [ %123, %122 ], [ 0, %99 ]
  %143 = zext nneg i32 %5 to i64
  %144 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !426
  %146 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %143
  %147 = load i8, ptr %146, align 1, !tbaa !442
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %184, label %149, !prof !1427

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %151 = zext i8 %147 to i64
  br label %152

152:                                              ; preds = %149, %181
  %153 = phi i64 [ %151, %149 ], [ %155, %181 ]
  %154 = phi i32 [ %142, %149 ], [ %182, %181 ]
  %155 = add nsw i64 %153, -1
  %156 = getelementptr inbounds i8, ptr %145, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !442
  switch i8 %157, label %181 [
    i8 101, label %163
    i8 69, label %158
  ], !prof !1428

158:                                              ; preds = %152
  %159 = getelementptr inbounds [1 x %union.rtunion_def], ptr %150, i64 0, i64 %155
  %160 = load ptr, ptr %159, align 8, !tbaa !442
  %161 = load i32, ptr %160, align 8, !tbaa !451
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %168, label %181

163:                                              ; preds = %152
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %150, i64 0, i64 %155
  %165 = load ptr, ptr %164, align 8, !tbaa !442
  %166 = tail call fastcc i32 @mention_regs(ptr noundef %165) #24, !range !503
  %167 = or i32 %166, %154
  br label %181

168:                                              ; preds = %158, %168
  %169 = phi i64 [ %176, %168 ], [ 0, %158 ]
  %170 = phi ptr [ %177, %168 ], [ %160, %158 ]
  %171 = phi i32 [ %175, %168 ], [ %154, %158 ]
  %172 = getelementptr inbounds %struct.rtvec_def, ptr %170, i64 0, i32 1, i64 %169
  %173 = load ptr, ptr %172, align 8, !tbaa !426
  %174 = tail call fastcc i32 @mention_regs(ptr noundef %173) #24, !range !503
  %175 = or i32 %174, %171
  %176 = add nuw nsw i64 %169, 1
  %177 = load ptr, ptr %159, align 8, !tbaa !442
  %178 = load i32, ptr %177, align 8, !tbaa !451
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %168, label %181, !llvm.loop !1429

181:                                              ; preds = %168, %158, %152, %163
  %182 = phi i32 [ %167, %163 ], [ %154, %152 ], [ %154, %158 ], [ %175, %168 ]
  %183 = icmp sgt i64 %153, 1
  br i1 %183, label %152, label %184, !prof !1430, !llvm.loop !1431

184:                                              ; preds = %34, %181, %16, %141, %1, %89
  %185 = phi i32 [ 0, %89 ], [ 0, %1 ], [ %142, %141 ], [ 0, %16 ], [ %182, %181 ], [ 0, %34 ]
  ret i32 %185
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_invalid_refs(i32 noundef %0) unnamed_addr #0 !prof !1432 !PGOFuncName !1433 {
  %2 = add i32 %0, 1
  br label %3

3:                                                ; preds = %1, %23
  %4 = phi i64 [ 0, %1 ], [ %24, %23 ]
  %5 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !426
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8, !prof !1434

8:                                                ; preds = %3, %21
  %9 = phi ptr [ %11, %21 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.table_elt, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !662
  %12 = load ptr, ptr %9, align 8, !tbaa !430
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %21, label %16, !prof !1435

16:                                               ; preds = %8
  %17 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %2, ptr noundef nonnull %12, ptr noundef null) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !1436

19:                                               ; preds = %16
  %20 = trunc i64 %4 to i32
  tail call fastcc void @remove_from_table(ptr noundef nonnull %9, i32 noundef %20) #24
  br label %21

21:                                               ; preds = %8, %16, %19
  %22 = icmp eq ptr %11, null
  br i1 %22, label %23, label %8, !prof !1437, !llvm.loop !1438

23:                                               ; preds = %21, %3
  %24 = add nuw nsw i64 %4, 1
  %25 = icmp eq i64 %24, 32
  br i1 %25, label %26, label %3, !prof !1439, !llvm.loop !1440

26:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_const_anchors(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !425 !PGOFuncName !1441 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %8 = call fastcc zeroext i8 @compute_const_anchors(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #24, !range !541
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %4, align 8, !tbaa !537
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %5, align 8, !tbaa !537
  %15 = sub nsw i64 0, %14
  tail call fastcc void @insert_const_anchor(i64 noundef %11, ptr noundef %0, i64 noundef %15, i32 noundef %2) #24
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, ptr %6, align 8, !tbaa !537
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %7, align 8, !tbaa !537
  %21 = sub nsw i64 0, %20
  tail call fastcc void @insert_const_anchor(i64 noundef %17, ptr noundef %0, i64 noundef %21, i32 noundef %2) #24
  br label %22

22:                                               ; preds = %16, %19, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @equiv_constant(ptr noundef %0) unnamed_addr #0 !prof !1442 !PGOFuncName !1443 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %28, !prof !1444

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %7 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %6) #24
  %8 = getelementptr inbounds %struct.cse_reg_info, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !447
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %28, !prof !1445

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %13 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %12) #24
  %14 = getelementptr inbounds %struct.cse_reg_info, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !447
  %16 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !1144
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !1446

21:                                               ; preds = %11
  %22 = load ptr, ptr @rtl_hooks, align 8, !tbaa !819
  %23 = load i32, ptr %0, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = tail call ptr %22(i32 noundef %25, ptr noundef nonnull %19) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %147, label %28, !prof !1447

28:                                               ; preds = %11, %1, %5, %21
  %29 = phi ptr [ %26, %21 ], [ %0, %5 ], [ %0, %1 ], [ %0, %11 ]
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !438
  %35 = icmp eq i32 %34, 9
  br i1 %35, label %147, label %36, !prof !1448

36:                                               ; preds = %28
  %37 = trunc i32 %30 to i16
  switch i16 %37, label %147 [
    i16 39, label %38
    i16 43, label %96
  ], !prof !1449

38:                                               ; preds = %36
  %39 = lshr i32 %30, 16
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !442
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %29, i32 noundef 30) #24
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %147, !prof !1450

48:                                               ; preds = %38
  %49 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %29, i32 noundef 32) #24
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %147, !prof !1450

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %29, i32 noundef 31) #24
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %147, !prof !1450

54:                                               ; preds = %51
  %55 = zext nneg i32 %40 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !442
  %58 = load i32, ptr @word_mode, align 4, !tbaa !438
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !442
  %62 = icmp ult i8 %57, %61
  br i1 %62, label %63, label %84, !prof !1451

63:                                               ; preds = %54
  %64 = zext nneg i32 %45 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !442
  %67 = icmp ult i8 %61, %66
  br i1 %67, label %68, label %84, !prof !1452

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !442
  %71 = tail call i32 @subreg_lowpart_offset(i32 noundef %40, i32 noundef %58) #22
  %72 = sub i32 %70, %71
  %73 = and i32 %72, -2147483645
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i32, ptr @word_mode, align 4, !tbaa !438
  %77 = load ptr, ptr %41, align 8, !tbaa !442
  %78 = tail call ptr @gen_rtx_SUBREG(i32 noundef %76, ptr noundef %77, i32 noundef %72) #22
  %79 = tail call fastcc ptr @lookup_as_function(ptr noundef %78, i32 noundef 30) #24
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr @rtl_hooks, align 8, !tbaa !819
  %83 = tail call ptr %82(i32 noundef %40, ptr noundef nonnull %79) #22
  br label %147

84:                                               ; preds = %75, %68, %63, %54
  %85 = load ptr, ptr %41, align 8, !tbaa !442
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 37
  br i1 %88, label %89, label %147, !prof !1450

89:                                               ; preds = %84
  %90 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %85) #24
  %91 = icmp eq ptr %90, null
  br i1 %91, label %147, label %92, !prof !1453

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load i32, ptr %93, align 8, !tbaa !442
  %95 = tail call ptr @simplify_subreg(i32 noundef %40, ptr noundef nonnull %90, i32 noundef %45, i32 noundef %94) #22
  br label %147

96:                                               ; preds = %36
  %97 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %29) #22
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !438
  %103 = icmp eq i32 %102, 9
  br i1 %103, label %147, label %104, !prof !1454

104:                                              ; preds = %96
  %105 = icmp eq i32 %99, 37
  br i1 %105, label %106, label %114, !prof !1455

106:                                              ; preds = %104
  %107 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %97) #24
  %108 = icmp ugt i32 %107, 52
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %107) #24
  %111 = getelementptr inbounds %struct.cse_reg_info, ptr %110, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !447
  %113 = add i32 %112, 4736
  br label %118

114:                                              ; preds = %106, %104
  %115 = lshr i32 %98, 16
  %116 = and i32 %115, 255
  %117 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %97, i32 noundef %116) #24
  br label %118

118:                                              ; preds = %114, %109
  %119 = phi i32 [ %113, %109 ], [ %117, %114 ]
  %120 = and i32 %119, 31
  %121 = load i32, ptr %97, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = tail call fastcc ptr @lookup(ptr noundef nonnull %97, i32 noundef %120, i32 noundef %123) #24
  %125 = icmp eq ptr %124, null
  br i1 %125, label %147, label %126, !prof !1456

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.table_elt, ptr %124, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !426
  %129 = icmp eq ptr %128, null
  br i1 %129, label %147, label %130, !prof !1457

130:                                              ; preds = %126, %143
  %131 = phi ptr [ %145, %143 ], [ %128, %126 ]
  %132 = getelementptr inbounds %struct.table_elt, ptr %131, i64 0, i32 12
  %133 = load i8, ptr %132, align 2, !tbaa !785
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %143, label %135, !prof !1458

135:                                              ; preds = %130
  %136 = load ptr, ptr %131, align 8, !tbaa !430
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !438
  %142 = icmp eq i32 %141, 9
  br i1 %142, label %147, label %143, !prof !1459

143:                                              ; preds = %130, %135
  %144 = getelementptr inbounds %struct.table_elt, ptr %131, i64 0, i32 4
  %145 = load ptr, ptr %144, align 8, !tbaa !426
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %130, !prof !1460, !llvm.loop !1461

147:                                              ; preds = %143, %135, %126, %118, %96, %36, %81, %92, %51, %48, %38, %89, %84, %21, %28
  %148 = phi ptr [ %29, %28 ], [ null, %21 ], [ %95, %92 ], [ %83, %81 ], [ %46, %38 ], [ %49, %48 ], [ %52, %51 ], [ null, %89 ], [ null, %84 ], [ null, %36 ], [ null, %118 ], [ %97, %96 ], [ null, %126 ], [ null, %143 ], [ %136, %135 ]
  ret ptr %148
}

; Function Attrs: optsize
declare zeroext i8 @canonicalize_change_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_comparison_args(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !1462 !PGOFuncName !1463 {
  %6 = load ptr, ptr %1, align 8, !tbaa !442
  %7 = load ptr, ptr %2, align 8, !tbaa !442
  %8 = load i32, ptr %6, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !426
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %15, label %118, !prof !1464

15:                                               ; preds = %5, %104
  %16 = phi i32 [ %113, %104 ], [ %10, %5 ]
  %17 = phi i32 [ %111, %104 ], [ %8, %5 ]
  %18 = phi ptr [ %110, %104 ], [ %7, %5 ]
  %19 = phi ptr [ %109, %104 ], [ %6, %5 ]
  %20 = phi i32 [ %106, %104 ], [ %0, %5 ]
  %21 = and i32 %17, 65535
  %22 = icmp eq i32 %21, 48
  br i1 %22, label %23, label %26, !prof !1465

23:                                               ; preds = %15
  %24 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !426
  %25 = icmp eq ptr %18, %24
  br i1 %25, label %95, label %26

26:                                               ; preds = %23, %15
  %27 = zext nneg i32 %21 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !438
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %32, !prof !1465

31:                                               ; preds = %26
  switch i32 %20, label %32 [
    i32 80, label %95
    i32 81, label %90
  ]

32:                                               ; preds = %26, %31
  %33 = icmp eq i32 %21, 37
  br i1 %33, label %34, label %42, !prof !1466

34:                                               ; preds = %32
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %19) #24
  %36 = icmp ugt i32 %35, 52
  br i1 %36, label %37, label %42, !prof !1467

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %35) #24
  %39 = getelementptr inbounds %struct.cse_reg_info, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !447
  %41 = add i32 %40, 4736
  br label %44

42:                                               ; preds = %34, %32
  %43 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %19, i32 noundef %16) #24
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi i32 [ %41, %37 ], [ %43, %42 ]
  %46 = and i32 %45, 31
  %47 = load i32, ptr %19, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = tail call fastcc ptr @lookup(ptr noundef nonnull %19, i32 noundef %46, i32 noundef %49) #24
  %51 = icmp eq ptr %50, null
  br i1 %51, label %118, label %52, !prof !1468

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.table_elt, ptr %50, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !779
  %55 = getelementptr inbounds %struct.table_elt, ptr %54, i64 0, i32 12
  %56 = load i8, ptr %55, align 2, !tbaa !785
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %118, !prof !1469

58:                                               ; preds = %52, %85
  %59 = phi ptr [ %86, %85 ], [ %19, %52 ]
  %60 = phi ptr [ %88, %85 ], [ %54, %52 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !430
  %62 = tail call i32 @exp_equiv_p(ptr noundef nonnull %61, ptr noundef nonnull %61, i32 noundef 1, i8 noundef zeroext 0) #24, !range !503
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %85, label %64, !prof !1470

64:                                               ; preds = %58
  %65 = load ptr, ptr %60, align 8, !tbaa !430
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %95, label %69, !prof !1471

69:                                               ; preds = %64
  switch i32 %20, label %80 [
    i32 80, label %70
    i32 81, label %75
  ], !prof !1472

70:                                               ; preds = %69
  %71 = zext nneg i32 %67 to i64
  %72 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !438
  %74 = icmp ult i32 %73, 2
  br i1 %74, label %95, label %80, !prof !1473

75:                                               ; preds = %69
  %76 = zext nneg i32 %67 to i64
  %77 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !438
  %79 = icmp ult i32 %78, 2
  br i1 %79, label %90, label %80, !prof !1474

80:                                               ; preds = %70, %69, %75
  %81 = tail call i32 @rtx_addr_can_trap_p(ptr noundef nonnull %65) #22
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85, !prof !1475

83:                                               ; preds = %80
  %84 = load ptr, ptr %60, align 8, !tbaa !430
  br label %85

85:                                               ; preds = %83, %58, %80
  %86 = phi ptr [ %84, %83 ], [ %59, %58 ], [ %59, %80 ]
  %87 = getelementptr inbounds %struct.table_elt, ptr %60, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !866
  %89 = icmp eq ptr %88, null
  br i1 %89, label %118, label %58, !prof !1476, !llvm.loop !1477

90:                                               ; preds = %75, %31
  %91 = phi ptr [ %19, %31 ], [ %59, %75 ]
  %92 = phi ptr [ %19, %31 ], [ %65, %75 ]
  %93 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %92, ptr noundef null) #22
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %118, label %104

95:                                               ; preds = %64, %70, %23, %31
  %96 = phi ptr [ %19, %31 ], [ %19, %23 ], [ %65, %70 ], [ %65, %64 ]
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 65535
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !438
  %102 = icmp ult i32 %101, 2
  br i1 %102, label %103, label %104, !prof !1478

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %90, %103, %95
  %105 = phi ptr [ %92, %90 ], [ %96, %103 ], [ %96, %95 ]
  %106 = phi i32 [ %93, %90 ], [ %98, %103 ], [ %20, %95 ]
  %107 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %108 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %107, align 8, !tbaa !442
  %110 = load ptr, ptr %108, align 8, !tbaa !442
  %111 = load i32, ptr %109, align 8
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !426
  %117 = icmp eq ptr %110, %116
  br i1 %117, label %15, label %118, !prof !1479

118:                                              ; preds = %104, %52, %44, %90, %85, %5
  %119 = phi i32 [ %0, %5 ], [ %20, %85 ], [ %20, %90 ], [ %20, %44 ], [ %20, %52 ], [ %106, %104 ]
  %120 = phi ptr [ %7, %5 ], [ %18, %85 ], [ %18, %90 ], [ %18, %44 ], [ %18, %52 ], [ %110, %104 ]
  %121 = phi ptr [ %6, %5 ], [ %86, %85 ], [ %91, %90 ], [ %19, %44 ], [ %19, %52 ], [ %109, %104 ]
  %122 = load i32, ptr %121, align 8
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  store i32 %124, ptr %3, align 4, !tbaa !438
  %125 = load i32, ptr %120, align 8
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  store i32 %127, ptr %4, align 4, !tbaa !438
  %128 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %121, ptr noundef null) #24
  store ptr %128, ptr %1, align 8, !tbaa !426
  %129 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %120, ptr noundef null) #24
  store ptr %129, ptr %2, align 8, !tbaa !426
  ret i32 %119
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @safe_hash(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1480 !PGOFuncName !1481 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %4 = call i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @simplify_relational_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @comparison_dominates_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reverse_condition(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_as_function(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1482 !PGOFuncName !1483 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %14, !prof !1484

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %8 = icmp ugt i32 %7, 52
  br i1 %8, label %9, label %14, !prof !1485

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #24
  %11 = getelementptr inbounds %struct.cse_reg_info, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !447
  %13 = add i32 %12, 4736
  br label %16

14:                                               ; preds = %6, %2
  %15 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %0, i32 noundef 0) #24
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %13, %9 ], [ %15, %14 ]
  %18 = and i32 %17, 31
  %19 = load i32, ptr %0, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = tail call fastcc ptr @lookup(ptr noundef nonnull %0, i32 noundef %18, i32 noundef %21) #24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24, !prof !1486

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.table_elt, ptr %22, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !426
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28, !prof !1487

28:                                               ; preds = %24, %39
  %29 = phi ptr [ %41, %39 ], [ %26, %24 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !430
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %39, !prof !1488

34:                                               ; preds = %28
  %35 = tail call i32 @exp_equiv_p(ptr noundef nonnull %30, ptr noundef nonnull %30, i32 noundef 1, i8 noundef zeroext 0) #24, !range !503
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !1489

37:                                               ; preds = %34
  %38 = load ptr, ptr %29, align 8, !tbaa !430
  br label %43

39:                                               ; preds = %28, %34
  %40 = getelementptr inbounds %struct.table_elt, ptr %29, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !426
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %28, !prof !1490, !llvm.loop !1491

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
define internal fastcc noundef zeroext i8 @compute_const_anchors(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #17 !prof !425 !PGOFuncName !1492 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !442
  %8 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !833
  %9 = sub i64 0, %8
  %10 = and i64 %7, %9
  store i64 %10, ptr %1, align 8, !tbaa !537
  %11 = icmp eq i64 %10, %7
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !833
  %14 = add i64 %7, -1
  %15 = add i64 %14, %13
  %16 = sub i64 0, %13
  %17 = and i64 %15, %16
  store i64 %17, ptr %3, align 8, !tbaa !537
  %18 = sub nsw i64 %7, %17
  store i64 %18, ptr %4, align 8, !tbaa !537
  %19 = load i64, ptr %1, align 8, !tbaa !537
  %20 = sub nsw i64 %7, %19
  store i64 %20, ptr %2, align 8, !tbaa !537
  br label %21

21:                                               ; preds = %5, %12
  %22 = phi i8 [ 1, %12 ], [ 0, %5 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_reg_offset_for_const(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !425 !PGOFuncName !1493 {
  %4 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !426
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
  %15 = load i32, ptr %14, align 8, !tbaa !891
  %16 = getelementptr inbounds %struct.table_elt, ptr %10, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !892
  %18 = getelementptr inbounds %struct.table_elt, ptr %8, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !891
  %20 = getelementptr inbounds %struct.table_elt, ptr %8, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !892
  %22 = tail call fastcc i32 @preferable(i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #24
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %13, %7
  %25 = load ptr, ptr %8, align 8, !tbaa !430
  %26 = load i32, ptr %25, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %61 [
    i16 37, label %45
    i16 49, label %28
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !442
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !442
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 30
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = tail call i32 @exp_equiv_p(ptr noundef nonnull %25, ptr noundef nonnull %25, i32 noundef 1, i8 noundef zeroext 0) #24, !range !503
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %8, align 8, !tbaa !430
  br label %45

45:                                               ; preds = %43, %24
  %46 = phi ptr [ %44, %43 ], [ %25, %24 ]
  %47 = tail call ptr @plus_constant(ptr noundef %46, i64 noundef %1) #22
  %48 = load i32, ptr %47, align 8
  %49 = trunc i32 %48 to i16
  switch i16 %49, label %61 [
    i16 37, label %60
    i16 49, label %50
  ]

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !442
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !442
  %55 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !833
  %56 = add i64 %55, %54
  %57 = shl i64 %55, 1
  %58 = add i64 %57, -1
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %45, %50
  store i32 %11, ptr %2, align 4, !tbaa !438
  br label %61

61:                                               ; preds = %40, %45, %60, %50, %24, %28, %34
  %62 = phi ptr [ %10, %34 ], [ %10, %28 ], [ %10, %24 ], [ %10, %40 ], [ %8, %60 ], [ %10, %50 ], [ %10, %45 ]
  %63 = phi ptr [ %9, %34 ], [ %9, %28 ], [ %9, %24 ], [ %9, %40 ], [ %47, %60 ], [ %9, %50 ], [ %9, %45 ]
  %64 = getelementptr inbounds %struct.table_elt, ptr %8, i64 0, i32 4
  %65 = add i32 %11, 1
  %66 = load ptr, ptr %64, align 8, !tbaa !426
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %7, !llvm.loop !1494

68:                                               ; preds = %13, %61, %3
  %69 = phi ptr [ null, %3 ], [ %63, %61 ], [ %9, %13 ]
  ret ptr %69
}

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @approx_reg_cost_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #17 !prof !1495 !PGOFuncName !1496 {
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5, !prof !1497

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %33, !prof !1498

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #24
  switch i32 %10, label %11 [
    i32 20, label %33
    i32 16, label %33
    i32 7, label %33
    i32 6, label %33
  ]

11:                                               ; preds = %9
  %12 = add i32 %10, -53
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %33, label %14, !prof !1499

14:                                               ; preds = %11
  %15 = icmp ult i32 %10, 53
  br i1 %15, label %16, label %30, !prof !1500

16:                                               ; preds = %14
  %17 = zext nneg i32 %10 to i64
  %18 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !442
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25, !prof !1501

21:                                               ; preds = %16
  %22 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %17
  %23 = load i8, ptr %22, align 1, !tbaa !442
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25, !prof !1502

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %17
  %27 = load i32, ptr %26, align 4, !tbaa !438
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %33

30:                                               ; preds = %14
  %31 = load i32, ptr %1, align 4, !tbaa !438
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %1, align 4, !tbaa !438
  br label %33

33:                                               ; preds = %21, %25, %2, %5, %30, %11, %9, %9, %9, %9
  %34 = phi i32 [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %11 ], [ 0, %30 ], [ %29, %25 ], [ 0, %5 ], [ 0, %2 ], [ 1, %21 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_regs_eqv(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1503 !PGOFuncName !1504 {
  %3 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1) #24
  %4 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !447
  %6 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %7 = sext i32 %5 to i64
  %8 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1) #24
  %9 = getelementptr inbounds %struct.cse_reg_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !447
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %13, label %12, !prof !1347

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 938, ptr noundef nonnull @.str.4) #22
  br label %13

13:                                               ; preds = %2, %12
  %14 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #24
  %15 = getelementptr inbounds %struct.cse_reg_info, ptr %14, i64 0, i32 1
  store i32 %5, ptr %15, align 4, !tbaa !447
  %16 = getelementptr inbounds %struct.qty_table_elem, ptr %6, i64 %7, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !923
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %6, i64 %7, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !1101
  %20 = icmp ult i32 %17, 53
  br i1 %20, label %21, label %33, !prof !1505

21:                                               ; preds = %13
  switch i32 %17, label %22 [
    i32 20, label %72
    i32 6, label %72
  ]

22:                                               ; preds = %21
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !442
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %72, !prof !781

27:                                               ; preds = %22
  %28 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %23
  %29 = load i8, ptr %28, align 1, !tbaa !442
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  %32 = icmp ugt i32 %0, 52
  br i1 %32, label %65, label %35, !prof !1506

33:                                               ; preds = %13
  %34 = icmp ugt i32 %0, 52
  br i1 %34, label %49, label %35, !prof !1506

35:                                               ; preds = %33, %31
  %36 = zext nneg i32 %0 to i64
  %37 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !438
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %35
  switch i32 %0, label %41 [
    i32 20, label %65
    i32 6, label %65
  ]

41:                                               ; preds = %40
  %42 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %36
  %43 = load i8, ptr %42, align 1, !tbaa !442
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %36
  %47 = load i8, ptr %46, align 1, !tbaa !442
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %72, label %65

49:                                               ; preds = %33
  %50 = load ptr, ptr @cse_ebb_live_out, align 8, !tbaa !426
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %50, i32 noundef %0) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !1507

53:                                               ; preds = %49
  %54 = load ptr, ptr @cse_ebb_live_out, align 8, !tbaa !426
  %55 = tail call i32 @bitmap_bit_p(ptr noundef %54, i32 noundef %17) #22
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57, !prof !1508

57:                                               ; preds = %53, %49
  %58 = load ptr, ptr @cse_ebb_live_in, align 8, !tbaa !426
  %59 = tail call i32 @bitmap_bit_p(ptr noundef %58, i32 noundef %0) #22
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %72, label %61, !prof !1509

61:                                               ; preds = %57
  %62 = load ptr, ptr @cse_ebb_live_in, align 8, !tbaa !426
  %63 = tail call i32 @bitmap_bit_p(ptr noundef %62, i32 noundef %17) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72, !prof !1510

65:                                               ; preds = %31, %40, %40, %61, %53, %45, %41
  %66 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !426
  %67 = zext i32 %17 to i64
  %68 = getelementptr inbounds %struct.reg_eqv_elem, ptr %66, i64 %67, i32 1
  store i32 %0, ptr %68, align 4, !tbaa !1097
  %69 = zext i32 %0 to i64
  %70 = getelementptr inbounds %struct.reg_eqv_elem, ptr %66, i64 %69
  store i32 %17, ptr %70, align 4, !tbaa !1099
  %71 = getelementptr inbounds %struct.reg_eqv_elem, ptr %66, i64 %69, i32 1
  store i32 -1, ptr %71, align 4, !tbaa !1097
  store i32 %0, ptr %16, align 4, !tbaa !923
  br label %115

72:                                               ; preds = %45, %21, %21, %61, %57, %35, %27, %22
  %73 = icmp ult i32 %19, 53
  %74 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !426
  br i1 %73, label %75, label %99, !prof !1511

75:                                               ; preds = %72, %97
  %76 = phi i32 [ %79, %97 ], [ %19, %72 ]
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %77, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !1097
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %99, !prof !959

81:                                               ; preds = %75
  %82 = icmp ugt i32 %0, 52
  %83 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %77
  %84 = load i32, ptr %83, align 4, !tbaa !438
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  switch i32 %76, label %87 [
    i32 20, label %99
    i32 6, label %99
  ]

87:                                               ; preds = %86
  %88 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %77
  %89 = load i8, ptr %88, align 1, !tbaa !442
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %77
  %93 = load i8, ptr %92, align 1, !tbaa !442
  %94 = icmp eq i8 %93, 0
  %95 = and i1 %82, %94
  br i1 %95, label %97, label %99, !prof !1512

96:                                               ; preds = %81
  br i1 %82, label %97, label %99, !prof !1513

97:                                               ; preds = %91, %96
  %98 = icmp ult i32 %79, 53
  br i1 %98, label %75, label %99, !prof !1514, !llvm.loop !1515

99:                                               ; preds = %96, %97, %75, %87, %91, %86, %86, %72
  %100 = phi i32 [ %19, %72 ], [ %76, %86 ], [ %76, %86 ], [ %76, %91 ], [ %76, %87 ], [ %76, %75 ], [ %79, %97 ], [ %76, %96 ]
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !1099
  %104 = zext i32 %0 to i64
  %105 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %104
  store i32 %103, ptr %105, align 4, !tbaa !1099
  %106 = icmp sgt i32 %103, -1
  br i1 %106, label %107, label %110, !prof !1513

107:                                              ; preds = %99
  %108 = zext nneg i32 %103 to i64
  %109 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %108, i32 1
  store i32 %0, ptr %109, align 4, !tbaa !1097
  br label %113

110:                                              ; preds = %99
  %111 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %112 = getelementptr inbounds %struct.qty_table_elem, ptr %111, i64 %7, i32 5
  store i32 %0, ptr %112, align 8, !tbaa !1101
  br label %113

113:                                              ; preds = %110, %107
  store i32 %0, ptr %102, align 4, !tbaa !1099
  %114 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %104, i32 1
  store i32 %100, ptr %114, align 4, !tbaa !1097
  br label %115

115:                                              ; preds = %113, %65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_new_qty(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1516 !PGOFuncName !1517 {
  %3 = load i32, ptr @next_qty, align 4, !tbaa !438
  %4 = load i32, ptr @max_qty, align 4, !tbaa !438
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %8, label %6, !prof !1518

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 911, ptr noundef nonnull @.str.4) #22
  %7 = load i32, ptr @next_qty, align 4, !tbaa !438
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %3, %2 ], [ %7, %6 ]
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @next_qty, align 4, !tbaa !438
  %11 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #24
  %12 = getelementptr inbounds %struct.cse_reg_info, ptr %11, i64 0, i32 1
  store i32 %9, ptr %12, align 4, !tbaa !447
  %13 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14
  %16 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14, i32 4
  store i32 %0, ptr %16, align 4, !tbaa !923
  %17 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14, i32 5
  store i32 %0, ptr %17, align 8, !tbaa !1101
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %1, 16
  %21 = and i32 %20, 16711680
  %22 = and i32 %19, -16777216
  %23 = or disjoint i32 %22, %21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 %23, ptr %18, align 4
  %24 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !426
  %25 = zext i32 %0 to i64
  %26 = getelementptr inbounds %struct.reg_eqv_elem, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.reg_eqv_elem, ptr %24, i64 %25, i32 1
  store i32 -1, ptr %27, align 4, !tbaa !1097
  store i32 -1, ptr %26, align 4, !tbaa !1099
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @insert_with_costs(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !prof !1372 !PGOFuncName !1519 {
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %17, !prof !1374

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %12 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %11) #24
  %13 = getelementptr inbounds %struct.cse_reg_info, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !447
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %17, label %16, !prof !1520

16:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1590, ptr noundef nonnull @.str.4) #22
  br label %17

17:                                               ; preds = %6, %10, %16
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %27, !prof !1374

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %24, label %27, !prof !1521

24:                                               ; preds = %21
  %25 = lshr i32 %18, 16
  %26 = and i32 %25, 255
  tail call fastcc void @add_to_hard_reg_set(i32 noundef %26, i32 noundef %22) #24
  br label %27

27:                                               ; preds = %24, %21, %17
  %28 = load ptr, ptr @free_element_chain, align 8, !tbaa !426
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !1522

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.table_elt, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !662
  store ptr %32, ptr @free_element_chain, align 8, !tbaa !426
  br label %35

33:                                               ; preds = %27
  %34 = tail call ptr @xmalloc(i64 noundef 80) #22
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi ptr [ %28, %30 ], [ %34, %33 ]
  store ptr %0, ptr %36, align 8, !tbaa !430
  %37 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 1
  store ptr null, ptr %37, align 8, !tbaa !700
  %38 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 8
  store i32 %4, ptr %38, align 8, !tbaa !891
  %39 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 9
  store i32 %5, ptr %39, align 4, !tbaa !892
  %40 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 4
  %41 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 5
  %42 = zext i32 %2 to i64
  %43 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  %44 = load ptr, ptr %43, align 8, !tbaa !426
  %45 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !662
  %46 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 3
  store ptr null, ptr %46, align 8, !tbaa !1114
  %47 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 7
  store ptr null, ptr %47, align 8, !tbaa !805
  %48 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 11
  store i8 0, ptr %48, align 1, !tbaa !698
  %49 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 10
  %50 = trunc i32 %3 to i8
  store i8 %50, ptr %49, align 8
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 65535
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !438
  %56 = icmp eq i32 %55, 9
  br i1 %56, label %60, label %57, !prof !1523

57:                                               ; preds = %35
  %58 = tail call fastcc zeroext i8 @fixed_base_plus_p(ptr noundef nonnull %0) #24, !range !541
  %59 = icmp ne i8 %58, 0
  br label %60

60:                                               ; preds = %57, %35
  %61 = phi i1 [ true, %35 ], [ %59, %57 ]
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 12
  store i8 %62, ptr %63, align 2, !tbaa !785
  %64 = load ptr, ptr %43, align 8, !tbaa !426
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66, !prof !1524

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.table_elt, ptr %64, i64 0, i32 3
  store ptr %36, ptr %67, align 8, !tbaa !1114
  br label %68

68:                                               ; preds = %66, %60
  store ptr %36, ptr %43, align 8, !tbaa !426
  %69 = icmp eq ptr %1, null
  br i1 %69, label %106, label %70, !prof !1525

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !779
  %73 = getelementptr inbounds %struct.table_elt, ptr %72, i64 0, i32 8
  %74 = load i32, ptr %73, align 8, !tbaa !891
  %75 = getelementptr inbounds %struct.table_elt, ptr %72, i64 0, i32 9
  %76 = load i32, ptr %75, align 4, !tbaa !892
  %77 = tail call fastcc i32 @preferable(i32 noundef %4, i32 noundef %5, i32 noundef %74, i32 noundef %76) #24
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %88, !prof !1526

79:                                               ; preds = %70
  store ptr %72, ptr %40, align 8, !tbaa !866
  %80 = getelementptr inbounds %struct.table_elt, ptr %72, i64 0, i32 5
  store ptr %36, ptr %80, align 8, !tbaa !1006
  %81 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 6
  store ptr %36, ptr %81, align 8, !tbaa !779
  br label %82

82:                                               ; preds = %79, %82
  %83 = phi ptr [ %86, %82 ], [ %72, %79 ]
  %84 = getelementptr inbounds %struct.table_elt, ptr %83, i64 0, i32 6
  store ptr %36, ptr %84, align 8, !tbaa !779
  %85 = getelementptr inbounds %struct.table_elt, ptr %83, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !866
  %87 = icmp eq ptr %86, null
  br i1 %87, label %108, label %82, !prof !1527, !llvm.loop !1528

88:                                               ; preds = %70, %93
  %89 = phi ptr [ %91, %93 ], [ %72, %70 ]
  %90 = getelementptr inbounds %struct.table_elt, ptr %89, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !866
  %92 = icmp eq ptr %91, null
  br i1 %92, label %102, label %93, !prof !1529

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.table_elt, ptr %91, i64 0, i32 8
  %95 = load i32, ptr %94, align 8, !tbaa !891
  %96 = getelementptr inbounds %struct.table_elt, ptr %91, i64 0, i32 9
  %97 = load i32, ptr %96, align 4, !tbaa !892
  %98 = tail call fastcc i32 @preferable(i32 noundef %95, i32 noundef %97, i32 noundef %4, i32 noundef %5) #24
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %88, label %100, !prof !1530, !llvm.loop !1531

100:                                              ; preds = %93
  store ptr %91, ptr %40, align 8, !tbaa !866
  %101 = getelementptr inbounds %struct.table_elt, ptr %91, i64 0, i32 5
  store ptr %36, ptr %101, align 8, !tbaa !1006
  br label %103

102:                                              ; preds = %88
  store ptr null, ptr %40, align 8, !tbaa !866
  br label %103

103:                                              ; preds = %102, %100
  %104 = getelementptr inbounds %struct.table_elt, ptr %89, i64 0, i32 4
  store ptr %89, ptr %41, align 8, !tbaa !1006
  store ptr %36, ptr %104, align 8, !tbaa !866
  %105 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 6
  store ptr %72, ptr %105, align 8, !tbaa !779
  br label %108

106:                                              ; preds = %68
  %107 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 6
  store ptr %36, ptr %107, align 8, !tbaa !779
  br label %185

108:                                              ; preds = %82, %103
  %109 = icmp ne ptr %72, null
  %110 = and i1 %61, %109
  br i1 %110, label %113, label %111, !prof !1532

111:                                              ; preds = %108
  %112 = load i32, ptr %0, align 8
  br label %138

113:                                              ; preds = %108
  %114 = load ptr, ptr %72, align 8, !tbaa !430
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp ne i32 %116, 37
  %118 = load i32, ptr %0, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 37
  %121 = select i1 %117, i1 true, i1 %120
  br i1 %121, label %138, label %122, !prof !1533

122:                                              ; preds = %113
  %123 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %114) #24
  %124 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %123) #24
  %125 = getelementptr inbounds %struct.cse_reg_info, ptr %124, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !447
  %127 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds %struct.qty_table_elem, ptr %127, i64 %128
  %130 = load ptr, ptr @rtl_hooks, align 8, !tbaa !819
  %131 = getelementptr inbounds %struct.qty_table_elem, ptr %127, i64 %128, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  %135 = tail call ptr %130(i32 noundef %134, ptr noundef nonnull %0) #22
  store ptr %135, ptr %129, align 8, !tbaa !1144
  %136 = load ptr, ptr @this_insn, align 8, !tbaa !426
  %137 = getelementptr inbounds %struct.qty_table_elem, ptr %127, i64 %128, i32 1
  store ptr %136, ptr %137, align 8, !tbaa !1534
  br label %219

138:                                              ; preds = %111, %113
  %139 = phi i32 [ %112, %111 ], [ %118, %113 ]
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 37
  %142 = and i1 %109, %141
  br i1 %142, label %143, label %185, !prof !1535

143:                                              ; preds = %138
  %144 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %146 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %145) #24
  %147 = getelementptr inbounds %struct.cse_reg_info, ptr %146, i64 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !447
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.qty_table_elem, ptr %144, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !1144
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %185, !prof !1536

153:                                              ; preds = %143
  %154 = load i8, ptr %63, align 2, !tbaa !785
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %185, !prof !1537

156:                                              ; preds = %153, %181
  %157 = phi ptr [ %183, %181 ], [ %72, %153 ]
  %158 = getelementptr inbounds %struct.table_elt, ptr %157, i64 0, i32 12
  %159 = load i8, ptr %158, align 2, !tbaa !785
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %181, label %161, !prof !1538

161:                                              ; preds = %156
  %162 = load ptr, ptr %157, align 8, !tbaa !430
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 37
  br i1 %165, label %181, label %166, !prof !1539

166:                                              ; preds = %161
  %167 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %168 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %167) #24
  %169 = getelementptr inbounds %struct.cse_reg_info, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !447
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.qty_table_elem, ptr %144, i64 %171
  %173 = load ptr, ptr @rtl_hooks, align 8, !tbaa !819
  %174 = load i32, ptr %0, align 8
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 255
  %177 = load ptr, ptr %157, align 8, !tbaa !430
  %178 = tail call ptr %173(i32 noundef %176, ptr noundef %177) #22
  store ptr %178, ptr %172, align 8, !tbaa !1144
  %179 = load ptr, ptr @this_insn, align 8, !tbaa !426
  %180 = getelementptr inbounds %struct.qty_table_elem, ptr %144, i64 %171, i32 1
  store ptr %179, ptr %180, align 8, !tbaa !1534
  br label %219

181:                                              ; preds = %156, %161
  %182 = getelementptr inbounds %struct.table_elt, ptr %157, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !866
  %184 = icmp eq ptr %183, null
  br i1 %184, label %219, label %156, !prof !1540, !llvm.loop !1541

185:                                              ; preds = %106, %153, %143, %138
  %186 = load i32, ptr %0, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 37
  br i1 %188, label %189, label %219, !prof !1542

189:                                              ; preds = %185
  %190 = load ptr, ptr @qty_table, align 8, !tbaa !426
  %191 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %192 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %191) #24
  %193 = getelementptr inbounds %struct.cse_reg_info, ptr %192, i64 0, i32 1
  %194 = load i32, ptr %193, align 4, !tbaa !447
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.qty_table_elem, ptr %190, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !1144
  %198 = icmp eq ptr %197, null
  br i1 %198, label %219, label %199, !prof !1543

199:                                              ; preds = %189
  %200 = load i32, ptr %0, align 8
  %201 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %202 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %201) #24
  %203 = getelementptr inbounds %struct.cse_reg_info, ptr %202, i64 0, i32 1
  %204 = load i32, ptr %203, align 4, !tbaa !447
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.qty_table_elem, ptr %190, i64 %205, i32 6
  %207 = load i32, ptr %206, align 4
  %208 = xor i32 %207, %200
  %209 = and i32 %208, 16711680
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %219, !prof !1544

211:                                              ; preds = %199
  %212 = load ptr, ptr @this_insn, align 8, !tbaa !426
  %213 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %214 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %213) #24
  %215 = getelementptr inbounds %struct.cse_reg_info, ptr %214, i64 0, i32 1
  %216 = load i32, ptr %215, align 4, !tbaa !447
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.qty_table_elem, ptr %190, i64 %217, i32 1
  store ptr %212, ptr %218, align 8, !tbaa !1534
  br label %219

219:                                              ; preds = %181, %166, %211, %199, %189, %185, %122
  %220 = load i32, ptr %0, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 35
  br i1 %222, label %223, label %261, !prof !1545

223:                                              ; preds = %219
  %224 = tail call ptr @get_related_value(ptr noundef nonnull %0) #22
  %225 = icmp eq ptr %224, null
  br i1 %225, label %261, label %226, !prof !1546

226:                                              ; preds = %223
  %227 = load i32, ptr %224, align 8
  %228 = and i32 %227, 65535
  %229 = icmp eq i32 %228, 37
  br i1 %229, label %230, label %238, !prof !1546

230:                                              ; preds = %226
  %231 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %224) #24
  %232 = icmp ugt i32 %231, 52
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %231) #24
  %235 = getelementptr inbounds %struct.cse_reg_info, ptr %234, i64 0, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !447
  %237 = add i32 %236, 4736
  br label %240

238:                                              ; preds = %230, %226
  %239 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %224, i32 noundef %3) #24
  br label %240

240:                                              ; preds = %238, %233
  %241 = phi i32 [ %237, %233 ], [ %239, %238 ]
  %242 = and i32 %241, 31
  %243 = tail call fastcc ptr @lookup(ptr noundef nonnull %224, i32 noundef %242, i32 noundef %3) #24
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %247, !prof !1547

245:                                              ; preds = %240
  %246 = tail call fastcc ptr @insert(ptr noundef nonnull %224, ptr noundef null, i32 noundef %242, i32 noundef %3) #24
  br label %247

247:                                              ; preds = %245, %240
  %248 = phi ptr [ %246, %245 ], [ %243, %240 ]
  %249 = getelementptr inbounds %struct.table_elt, ptr %248, i64 0, i32 7
  %250 = load ptr, ptr %249, align 8, !tbaa !805
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %253, !prof !1548

252:                                              ; preds = %247
  store ptr %248, ptr %249, align 8, !tbaa !805
  br label %253

253:                                              ; preds = %252, %247
  br label %254

254:                                              ; preds = %253, %254
  %255 = phi ptr [ %257, %254 ], [ %248, %253 ]
  %256 = getelementptr inbounds %struct.table_elt, ptr %255, i64 0, i32 7
  %257 = load ptr, ptr %256, align 8, !tbaa !805
  %258 = icmp eq ptr %257, %248
  br i1 %258, label %259, label %254, !prof !1549, !llvm.loop !1550

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.table_elt, ptr %255, i64 0, i32 7
  store ptr %248, ptr %47, align 8, !tbaa !805
  store ptr %36, ptr %260, align 8, !tbaa !805
  br label %261

261:                                              ; preds = %223, %259, %219
  ret ptr %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(i32 noundef %0, i32 noundef %1) unnamed_addr #18 !prof !1551 !PGOFuncName !1552 {
  %3 = tail call fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) #24
  %4 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !537
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ %4, %2 ], [ %10, %5 ]
  %7 = phi i32 [ %1, %2 ], [ %11, %5 ]
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw i64 1, %8
  %10 = or i64 %9, %6
  %11 = add i32 %7, 1
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %5, label %13, !prof !1553, !llvm.loop !1554

13:                                               ; preds = %5
  store i64 %10, ptr @hard_regs_in_table, align 8, !tbaa !537
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @fixed_base_plus_p(ptr noundef readonly %0) unnamed_addr #6 !prof !1555 !PGOFuncName !1556 {
  br label %2

2:                                                ; preds = %29, %1
  %3 = phi ptr [ %0, %1 ], [ %31, %29 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %32 [
    i16 37, label %6
    i16 49, label %23
  ], !prof !1557

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !426
  %8 = icmp eq ptr %7, %3
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %10 = icmp eq ptr %9, %3
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %32, label %12, !prof !1558

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !426
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %15, label %18, !prof !1559

15:                                               ; preds = %12
  %16 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !442
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %32, !prof !1560

18:                                               ; preds = %15, %12
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #24
  %20 = add i32 %19, -53
  %21 = icmp ult i32 %20, 5
  %22 = zext i1 %21 to i8
  br label %32

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !442
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 30
  br i1 %28, label %29, label %32, !prof !1561

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !442
  br label %2

32:                                               ; preds = %2, %23, %18, %15, %6
  %33 = phi i8 [ 1, %6 ], [ 1, %15 ], [ %22, %18 ], [ 0, %23 ], [ 0, %2 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_invalid_subreg_refs(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !425 !PGOFuncName !1562 {
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !442
  %7 = zext i8 %6 to i32
  %8 = add i32 %1, -1
  %9 = add i32 %8, %7
  %10 = add i32 %0, 1
  br label %11

11:                                               ; preds = %3, %54
  %12 = phi i64 [ 0, %3 ], [ %55, %54 ]
  %13 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !426
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %11
  %17 = trunc i64 %12 to i32
  br label %18

18:                                               ; preds = %16, %52
  %19 = phi ptr [ %22, %52 ], [ %14, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !430
  %21 = getelementptr inbounds %struct.table_elt, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !662
  %23 = load i32, ptr %20, align 8
  %24 = trunc i32 %23 to i16
  switch i16 %24, label %48 [
    i16 37, label %52
    i16 39, label %25
  ]

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !442
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %27) #24
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load i32, ptr %35, align 8, !tbaa !442
  %37 = lshr i32 %23, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !442
  %42 = zext i8 %41 to i32
  %43 = add i32 %36, -1
  %44 = add i32 %43, %42
  %45 = icmp ult i32 %44, %1
  %46 = icmp ugt i32 %36, %9
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %34, %18, %31, %25
  %49 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %10, ptr noundef nonnull %20, ptr noundef null) #22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call fastcc void @remove_from_table(ptr noundef nonnull %19, i32 noundef %17) #24
  br label %52

52:                                               ; preds = %18, %51, %48, %34
  %53 = icmp eq ptr %22, null
  br i1 %53, label %54, label %18, !llvm.loop !1563

54:                                               ; preds = %52, %11
  %55 = add nuw nsw i64 %12, 1
  %56 = icmp eq i64 %55, 32
  br i1 %56, label %57, label %11, !llvm.loop !1564

57:                                               ; preds = %54
  ret void
}

; Function Attrs: optsize
declare i32 @refers_to_regno_p(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_const_anchor(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !425 !PGOFuncName !1565 {
  %5 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %0) #22
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #24
  %11 = icmp ugt i32 %10, 52
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %10) #24
  %14 = getelementptr inbounds %struct.cse_reg_info, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !447
  %16 = add i32 %15, 4736
  br label %19

17:                                               ; preds = %9, %4
  %18 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %5, i32 noundef %3) #24
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %16, %12 ], [ %18, %17 ]
  %21 = and i32 %20, 31
  %22 = tail call fastcc ptr @lookup(ptr noundef nonnull %5, i32 noundef %21, i32 noundef %3) #24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @insert(ptr noundef nonnull %5, ptr noundef null, i32 noundef %21, i32 noundef %3) #24
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %22, %19 ], [ %25, %24 ]
  %28 = tail call ptr @plus_constant(ptr noundef %1, i64 noundef %2) #22
  %29 = tail call fastcc i32 @mention_regs(ptr noundef %28) #24, !range !503
  %30 = load i32, ptr %28, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %28) #24
  %35 = icmp ugt i32 %34, 52
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %34) #24
  %38 = getelementptr inbounds %struct.cse_reg_info, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !447
  %40 = add i32 %39, 4736
  br label %43

41:                                               ; preds = %33, %26
  %42 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %28, i32 noundef %3) #24
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i32 [ %40, %36 ], [ %42, %41 ]
  %45 = load i32, ptr %1, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 37
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %1, i32 noundef 23) #24
  br label %50

50:                                               ; preds = %43, %48
  %51 = phi i32 [ %49, %48 ], [ 0, %43 ]
  %52 = and i32 %44, 31
  %53 = tail call fastcc ptr @insert_with_costs(ptr noundef nonnull %28, ptr noundef %27, i32 noundef %52, i32 noundef %3, i32 noundef %51, i32 noundef 1) #24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @label_is_jump_target_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reversed_comparison_code_parts(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_jump_cond(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1566 !PGOFuncName !1567 {
  %5 = icmp eq i32 %0, 81
  br i1 %5, label %6, label %54, !prof !1568

6:                                                ; preds = %4
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %10, label %30, !prof !1569

10:                                               ; preds = %6
  %11 = lshr i32 %7, 16
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !442
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !442
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !442
  %24 = icmp ugt i8 %15, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %10
  %26 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %20, ptr noundef %3) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %16, align 8, !tbaa !442
  tail call fastcc void @record_jump_cond(i32 noundef 81, i32 noundef %1, ptr noundef %29, ptr noundef nonnull %26) #24
  br label %30

30:                                               ; preds = %6, %10, %28, %25
  %31 = load i32, ptr %3, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 39
  br i1 %33, label %34, label %112, !prof !1569

34:                                               ; preds = %30
  %35 = lshr i32 %31, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !442
  %40 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !442
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !442
  %48 = icmp ugt i8 %39, %47
  br i1 %48, label %49, label %112

49:                                               ; preds = %34
  %50 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %44, ptr noundef nonnull %2) #24
  %51 = icmp eq ptr %50, null
  br i1 %51, label %112, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %40, align 8, !tbaa !442
  tail call fastcc void @record_jump_cond(i32 noundef 81, i32 noundef %1, ptr noundef %53, ptr noundef nonnull %50) #24
  br label %112

54:                                               ; preds = %4
  %55 = icmp eq i32 %0, 80
  br i1 %55, label %56, label %112, !prof !1570

56:                                               ; preds = %54
  %57 = load i32, ptr %2, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 39
  br i1 %59, label %60, label %84, !prof !1571

60:                                               ; preds = %56
  %61 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %2) #22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %2, align 8
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !442
  %70 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !442
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !442
  %78 = icmp ult i8 %69, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %63
  %80 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %74, ptr noundef %3) #24
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %70, align 8, !tbaa !442
  tail call fastcc void @record_jump_cond(i32 noundef 80, i32 noundef %1, ptr noundef %83, ptr noundef nonnull %80) #24
  br label %84

84:                                               ; preds = %56, %60, %63, %82, %79
  %85 = load i32, ptr %3, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 39
  br i1 %87, label %88, label %112, !prof !1571

88:                                               ; preds = %84
  %89 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %3) #22
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %3, align 8
  %93 = lshr i32 %92, 16
  %94 = and i32 %93, 255
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !442
  %98 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !442
  %100 = load i32, ptr %99, align 8
  %101 = lshr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !442
  %106 = icmp ult i8 %97, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %91
  %108 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %102, ptr noundef nonnull %2) #24
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %98, align 8, !tbaa !442
  tail call fastcc void @record_jump_cond(i32 noundef 80, i32 noundef %1, ptr noundef %111, ptr noundef nonnull %108) #24
  br label %112

112:                                              ; preds = %30, %34, %52, %49, %54, %107, %110, %91, %88, %84
  store i32 0, ptr @do_not_record, align 4, !tbaa !438
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !438
  %113 = load i32, ptr %2, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 37
  br i1 %115, label %116, label %124, !prof !1572

116:                                              ; preds = %112
  %117 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #24
  %118 = icmp ugt i32 %117, 52
  br i1 %118, label %119, label %124, !prof !1573

119:                                              ; preds = %116
  %120 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %117) #24
  %121 = getelementptr inbounds %struct.cse_reg_info, ptr %120, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !447
  %123 = add i32 %122, 4736
  br label %126

124:                                              ; preds = %116, %112
  %125 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2, i32 noundef %1) #24
  br label %126

126:                                              ; preds = %124, %119
  %127 = phi i32 [ %123, %119 ], [ %125, %124 ]
  %128 = and i32 %127, 31
  %129 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !438
  %130 = load i32, ptr @do_not_record, align 4, !tbaa !438
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %352, !prof !1573

132:                                              ; preds = %126
  store i32 0, ptr @do_not_record, align 4, !tbaa !438
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !438
  %133 = load i32, ptr %3, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 37
  br i1 %135, label %136, label %144, !prof !1574

136:                                              ; preds = %132
  %137 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #24
  %138 = icmp ugt i32 %137, 52
  br i1 %138, label %139, label %144, !prof !1575

139:                                              ; preds = %136
  %140 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %137) #24
  %141 = getelementptr inbounds %struct.cse_reg_info, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !447
  %143 = add i32 %142, 4736
  br label %146

144:                                              ; preds = %136, %132
  %145 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %3, i32 noundef %1) #24
  br label %146

146:                                              ; preds = %144, %139
  %147 = phi i32 [ %143, %139 ], [ %145, %144 ]
  %148 = and i32 %147, 31
  %149 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !438
  %150 = load i32, ptr @do_not_record, align 4, !tbaa !438
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %352, !prof !1575

152:                                              ; preds = %146
  %153 = tail call fastcc ptr @lookup(ptr noundef nonnull %2, i32 noundef %128, i32 noundef %1) #24
  %154 = tail call fastcc ptr @lookup(ptr noundef nonnull %3, i32 noundef %148, i32 noundef %1) #24
  %155 = icmp ne ptr %153, null
  %156 = icmp ne ptr %154, null
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %166, !prof !1576

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.table_elt, ptr %153, i64 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !779
  %161 = getelementptr inbounds %struct.table_elt, ptr %154, i64 0, i32 6
  %162 = load ptr, ptr %161, align 8, !tbaa !779
  %163 = icmp eq ptr %160, %162
  %164 = icmp eq ptr %2, %3
  %165 = or i1 %164, %163
  br i1 %165, label %352, label %168, !prof !1577

166:                                              ; preds = %152
  %167 = icmp eq ptr %2, %3
  br i1 %167, label %352, label %168, !prof !1578

168:                                              ; preds = %158, %166
  %169 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %352, !prof !1579

171:                                              ; preds = %168
  br i1 %5, label %172, label %179, !prof !1580

172:                                              ; preds = %171
  %173 = load i32, ptr %2, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !442
  switch i8 %178, label %295 [
    i8 8, label %179
    i8 9, label %179
    i8 11, label %179
    i8 17, label %179
  ], !prof !1581

179:                                              ; preds = %172, %172, %172, %172, %171
  %180 = load i32, ptr %3, align 8
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 37
  br i1 %182, label %185, label %183, !prof !1582

183:                                              ; preds = %179
  %184 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %3) #24
  br label %185

185:                                              ; preds = %179, %183
  %186 = phi ptr [ %3, %179 ], [ %184, %183 ]
  %187 = load i32, ptr %2, align 8
  %188 = and i32 %187, 65535
  %189 = icmp ne i32 %188, 37
  %190 = icmp eq ptr %186, null
  %191 = select i1 %189, i1 true, i1 %190
  br i1 %191, label %352, label %192, !prof !1583

192:                                              ; preds = %185
  %193 = icmp eq ptr %153, null
  br i1 %193, label %194, label %241, !prof !1584

194:                                              ; preds = %192
  %195 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #24, !range !503
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %235, label %197, !prof !1585

197:                                              ; preds = %194
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %2) #24
  %198 = load i32, ptr %2, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 37
  br i1 %200, label %201, label %209

201:                                              ; preds = %197
  %202 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #24
  %203 = icmp ugt i32 %202, 52
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %202) #24
  %206 = getelementptr inbounds %struct.cse_reg_info, ptr %205, i64 0, i32 1
  %207 = load i32, ptr %206, align 4, !tbaa !447
  %208 = add i32 %207, 4736
  br label %211

209:                                              ; preds = %201, %197
  %210 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2, i32 noundef %1) #24
  br label %211

211:                                              ; preds = %209, %204
  %212 = phi i32 [ %208, %204 ], [ %210, %209 ]
  %213 = and i32 %212, 31
  %214 = load i32, ptr %186, align 8
  %215 = and i32 %214, 65535
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !438
  %219 = icmp eq i32 %218, 9
  br i1 %219, label %235, label %220

220:                                              ; preds = %211
  %221 = icmp eq i32 %215, 37
  br i1 %221, label %222, label %230

222:                                              ; preds = %220
  %223 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %186) #24
  %224 = icmp ugt i32 %223, 52
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %223) #24
  %227 = getelementptr inbounds %struct.cse_reg_info, ptr %226, i64 0, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !447
  %229 = add i32 %228, 4736
  br label %232

230:                                              ; preds = %222, %220
  %231 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %186, i32 noundef %1) #24
  br label %232

232:                                              ; preds = %230, %225
  %233 = phi i32 [ %229, %225 ], [ %231, %230 ]
  %234 = and i32 %233, 31
  br label %235

235:                                              ; preds = %211, %232, %194
  %236 = phi i32 [ %148, %211 ], [ %234, %232 ], [ %148, %194 ]
  %237 = phi i32 [ %213, %211 ], [ %213, %232 ], [ %128, %194 ]
  %238 = tail call fastcc ptr @insert(ptr noundef nonnull %2, ptr noundef null, i32 noundef %237, i32 noundef %1) #24
  %239 = trunc i32 %129 to i8
  %240 = getelementptr inbounds %struct.table_elt, ptr %238, i64 0, i32 11
  store i8 %239, ptr %240, align 1, !tbaa !698
  br label %241

241:                                              ; preds = %235, %192
  %242 = phi i32 [ %236, %235 ], [ %148, %192 ]
  %243 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #24
  %244 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %243) #24
  %245 = getelementptr inbounds %struct.cse_reg_info, ptr %244, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !447
  %247 = load ptr, ptr @qty_table, align 8, !tbaa !426
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
  br i1 %256, label %257, label %292, !prof !1586

257:                                              ; preds = %241
  %258 = tail call fastcc ptr @lookup(ptr noundef nonnull %186, i32 noundef %242, i32 noundef %1) #24
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %285, !prof !1587

260:                                              ; preds = %257
  %261 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %186, ptr noundef null, i32 noundef 0) #24, !range !503
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %280, label %263, !prof !1588

263:                                              ; preds = %260
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %186) #24
  %264 = load i32, ptr %186, align 8
  %265 = and i32 %264, 65535
  %266 = icmp eq i32 %265, 37
  br i1 %266, label %267, label %275

267:                                              ; preds = %263
  %268 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %186) #24
  %269 = icmp ugt i32 %268, 52
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %268) #24
  %272 = getelementptr inbounds %struct.cse_reg_info, ptr %271, i64 0, i32 1
  %273 = load i32, ptr %272, align 4, !tbaa !447
  %274 = add i32 %273, 4736
  br label %277

275:                                              ; preds = %267, %263
  %276 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %186, i32 noundef %1) #24
  br label %277

277:                                              ; preds = %275, %270
  %278 = phi i32 [ %274, %270 ], [ %276, %275 ]
  %279 = and i32 %278, 31
  br label %280

280:                                              ; preds = %277, %260
  %281 = phi i32 [ %279, %277 ], [ %242, %260 ]
  %282 = tail call fastcc ptr @insert(ptr noundef nonnull %186, ptr noundef null, i32 noundef %281, i32 noundef %1) #24
  %283 = trunc i32 %149 to i8
  %284 = getelementptr inbounds %struct.table_elt, ptr %282, i64 0, i32 11
  store i8 %283, ptr %284, align 1, !tbaa !698
  br label %285

285:                                              ; preds = %280, %257
  %286 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 2
  store ptr null, ptr %286, align 8, !tbaa !1242
  %287 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %186) #24
  %288 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %287) #24
  %289 = getelementptr inbounds %struct.cse_reg_info, ptr %288, i64 0, i32 1
  %290 = load i32, ptr %289, align 4, !tbaa !447
  %291 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 3
  store i32 %290, ptr %291, align 8, !tbaa !1247
  br label %352

292:                                              ; preds = %241
  %293 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 2
  store ptr %186, ptr %293, align 8, !tbaa !1242
  %294 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 3
  store i32 -1, ptr %294, align 8, !tbaa !1247
  br label %352

295:                                              ; preds = %172
  %296 = icmp eq ptr %153, null
  br i1 %296, label %297, label %322, !prof !1589

297:                                              ; preds = %295
  %298 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #24, !range !503
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %317, label %300, !prof !1590

300:                                              ; preds = %297
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %2) #24
  %301 = load i32, ptr %2, align 8
  %302 = and i32 %301, 65535
  %303 = icmp eq i32 %302, 37
  br i1 %303, label %304, label %312

304:                                              ; preds = %300
  %305 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #24
  %306 = icmp ugt i32 %305, 52
  br i1 %306, label %307, label %312

307:                                              ; preds = %304
  %308 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %305) #24
  %309 = getelementptr inbounds %struct.cse_reg_info, ptr %308, i64 0, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !447
  %311 = add i32 %310, 4736
  br label %314

312:                                              ; preds = %304, %300
  %313 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2, i32 noundef %1) #24
  br label %314

314:                                              ; preds = %312, %307
  %315 = phi i32 [ %311, %307 ], [ %313, %312 ]
  %316 = and i32 %315, 31
  br label %317

317:                                              ; preds = %314, %297
  %318 = phi i32 [ %316, %314 ], [ %128, %297 ]
  %319 = tail call fastcc ptr @insert(ptr noundef nonnull %2, ptr noundef null, i32 noundef %318, i32 noundef %1) #24
  %320 = trunc i32 %129 to i8
  %321 = getelementptr inbounds %struct.table_elt, ptr %319, i64 0, i32 11
  store i8 %320, ptr %321, align 1, !tbaa !698
  br label %322

322:                                              ; preds = %317, %295
  %323 = phi ptr [ %319, %317 ], [ %153, %295 ]
  %324 = icmp eq ptr %154, null
  br i1 %324, label %325, label %350, !prof !1591

325:                                              ; preds = %322
  %326 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #24, !range !503
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %345, label %328, !prof !1592

328:                                              ; preds = %325
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %3) #24
  %329 = load i32, ptr %3, align 8
  %330 = and i32 %329, 65535
  %331 = icmp eq i32 %330, 37
  br i1 %331, label %332, label %340

332:                                              ; preds = %328
  %333 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #24
  %334 = icmp ugt i32 %333, 52
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %333) #24
  %337 = getelementptr inbounds %struct.cse_reg_info, ptr %336, i64 0, i32 1
  %338 = load i32, ptr %337, align 4, !tbaa !447
  %339 = add i32 %338, 4736
  br label %342

340:                                              ; preds = %332, %328
  %341 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %3, i32 noundef %1) #24
  br label %342

342:                                              ; preds = %340, %335
  %343 = phi i32 [ %339, %335 ], [ %341, %340 ]
  %344 = and i32 %343, 31
  br label %345

345:                                              ; preds = %342, %325
  %346 = phi i32 [ %344, %342 ], [ %148, %325 ]
  %347 = tail call fastcc ptr @insert(ptr noundef nonnull %3, ptr noundef null, i32 noundef %346, i32 noundef %1) #24
  %348 = trunc i32 %149 to i8
  %349 = getelementptr inbounds %struct.table_elt, ptr %347, i64 0, i32 11
  store i8 %348, ptr %349, align 1, !tbaa !698
  br label %350

350:                                              ; preds = %345, %322
  %351 = phi ptr [ %347, %345 ], [ %154, %322 ]
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %323, ptr noundef nonnull %351) #24
  br label %352

352:                                              ; preds = %185, %292, %285, %158, %166, %168, %146, %126, %350
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @record_jump_cond_subreg(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !425 !PGOFuncName !1593 {
  %3 = load i32, ptr %1, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, %0
  %7 = icmp eq i32 %5, 0
  %8 = or i1 %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @lowpart_subreg(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %5) #22
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ %1, %2 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @lowpart_subreg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @delete_trivially_dead_insns(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !1594 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !442
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !1595

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 25) #22
  br label %6

6:                                                ; preds = %5, %2
  %7 = sext i32 %1 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 4) #22
  %9 = icmp eq ptr %0, null
  br i1 %9, label %21, label %10, !prof !1596

10:                                               ; preds = %6, %17
  %11 = phi ptr [ %19, %17 ], [ %0, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %17, !prof !1597

16:                                               ; preds = %10
  tail call fastcc void @count_reg_usage(ptr noundef nonnull %11, ptr noundef %8, ptr noundef null, i32 noundef 1) #24
  br label %17

17:                                               ; preds = %10, %16
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !442
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !prof !1598, !llvm.loop !1599

21:                                               ; preds = %17, %6
  %22 = tail call ptr @get_last_insn() #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24, !prof !1596

24:                                               ; preds = %21, %42
  %25 = phi i32 [ %43, %42 ], [ 0, %21 ]
  %26 = phi ptr [ %28, %42 ], [ %22, %21 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !442
  %29 = load i32, ptr %26, align 8
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -7
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %33, label %42, !prof !1597

33:                                               ; preds = %24
  %34 = tail call fastcc zeroext i8 @insn_live_p(ptr noundef nonnull %26, ptr noundef %8) #24
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %42, !prof !1600

36:                                               ; preds = %33
  %37 = tail call zeroext i8 @dbg_cnt(i32 noundef 8) #22
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39, !prof !1601

39:                                               ; preds = %36
  tail call fastcc void @count_reg_usage(ptr noundef nonnull %26, ptr noundef %8, ptr noundef null, i32 noundef -1) #24
  %40 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %26) #22
  %41 = add nsw i32 %25, 1
  br label %42

42:                                               ; preds = %24, %33, %36, %39
  %43 = phi i32 [ %25, %24 ], [ %25, %33 ], [ %41, %39 ], [ %25, %36 ]
  %44 = icmp eq ptr %28, null
  br i1 %44, label %45, label %24, !prof !1598, !llvm.loop !1602

45:                                               ; preds = %42
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48, !prof !1595

48:                                               ; preds = %45
  %49 = icmp eq i32 %43, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.8, i32 noundef %43) #24
  br label %52

52:                                               ; preds = %21, %50, %48, %45
  %53 = phi i32 [ %43, %50 ], [ 0, %48 ], [ %43, %45 ], [ 0, %21 ]
  tail call void @free(ptr noundef %8) #24
  %54 = load i8, ptr @timevar_enable, align 1, !tbaa !442
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56, !prof !1595

56:                                               ; preds = %52
  tail call void @timevar_pop_1(i32 noundef 25) #22
  br label %57

57:                                               ; preds = %56, %52
  ret i32 %53
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @count_reg_usage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1603 !PGOFuncName !1604 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %148, label %6, !prof !1605

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
  ], !prof !1606

12:                                               ; preds = %6
  %13 = icmp eq ptr %8, %7
  br i1 %13, label %148, label %14, !prof !1607

14:                                               ; preds = %12
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #24
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !438
  %19 = add nsw i32 %18, %3
  store i32 %19, ptr %17, align 4, !tbaa !438
  br label %148

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !442
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 43
  br i1 %25, label %26, label %148, !prof !1608

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !442
  br label %29

29:                                               ; preds = %44, %40, %26, %93, %60
  %30 = phi ptr [ %28, %26 ], [ %95, %93 ], [ %62, %60 ], [ %42, %40 ], [ %42, %44 ]
  %31 = phi ptr [ null, %26 ], [ null, %93 ], [ %50, %60 ], [ %7, %40 ], [ %45, %44 ]
  %32 = icmp eq ptr %30, null
  br i1 %32, label %148, label %6, !prof !1609

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !442
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 37
  br i1 %38, label %40, label %39, !prof !1610

39:                                               ; preds = %33
  tail call fastcc void @count_reg_usage(ptr noundef nonnull %35, ptr noundef %1, ptr noundef null, i32 noundef %3) #24
  br label %40

40:                                               ; preds = %39, %33
  %41 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !442
  %43 = icmp eq ptr %7, null
  br i1 %43, label %44, label %29, !prof !1611

44:                                               ; preds = %40
  %45 = load ptr, ptr %34, align 8, !tbaa !442
  br label %29

46:                                               ; preds = %6, %6, %6
  %47 = tail call zeroext i8 @insn_could_throw_p(ptr noundef nonnull %8) #22
  %48 = icmp eq i8 %47, 0
  %49 = load ptr, ptr @global_rtl, align 16
  %50 = select i1 %48, ptr %7, ptr %49, !prof !1612
  %51 = icmp eq i32 %10, 10
  br i1 %51, label %52, label %55, !prof !1613

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !442
  tail call fastcc void @count_reg_usage(ptr noundef %54, ptr noundef %1, ptr noundef %50, i32 noundef %3) #24
  br label %55

55:                                               ; preds = %52, %46
  %56 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !442
  tail call fastcc void @count_reg_usage(ptr noundef %57, ptr noundef %1, ptr noundef %50, i32 noundef %3) #24
  %58 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %8) #22
  %59 = icmp eq ptr %58, null
  br i1 %59, label %148, label %60, !prof !1614

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !442
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %29, !prof !1615

66:                                               ; preds = %60, %73
  %67 = phi ptr [ %71, %73 ], [ %62, %60 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !442
  tail call fastcc void @count_reg_usage(ptr noundef %69, ptr noundef %1, ptr noundef %50, i32 noundef %3) #24
  %70 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !442
  %72 = icmp eq ptr %71, null
  br i1 %72, label %148, label %73

73:                                               ; preds = %66
  %74 = load i32, ptr %71, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %66, label %148, !llvm.loop !1616

77:                                               ; preds = %6
  %78 = lshr i32 %9, 16
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !442
  switch i8 %79, label %85 [
    i8 4, label %92
    i8 5, label %82
  ], !prof !1617

82:                                               ; preds = %77
  %83 = load i32, ptr %81, align 8
  %84 = and i32 %83, 65535
  br label %89

85:                                               ; preds = %77
  %86 = load i32, ptr %81, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 24
  br i1 %88, label %92, label %89, !prof !1618

89:                                               ; preds = %82, %85
  %90 = phi i32 [ %84, %82 ], [ %87, %85 ]
  %91 = icmp eq i32 %90, 25
  br i1 %91, label %92, label %93

92:                                               ; preds = %77, %89, %85
  tail call fastcc void @count_reg_usage(ptr noundef %81, ptr noundef %1, ptr noundef null, i32 noundef %3) #24
  br label %93

93:                                               ; preds = %92, %89
  %94 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !442
  br label %29

96:                                               ; preds = %6
  %97 = and i32 %9, 134217728
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, ptr %7, ptr null
  %100 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !442
  %102 = load i32, ptr %101, align 8, !tbaa !451
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %148

104:                                              ; preds = %96
  %105 = zext nneg i32 %102 to i64
  br label %106

106:                                              ; preds = %104, %106
  %107 = phi i64 [ %105, %104 ], [ %108, %106 ]
  %108 = add nsw i64 %107, -1
  %109 = load ptr, ptr %100, align 8, !tbaa !442
  %110 = getelementptr inbounds %struct.rtvec_def, ptr %109, i64 0, i32 1, i64 %108
  %111 = load ptr, ptr %110, align 8, !tbaa !426
  tail call fastcc void @count_reg_usage(ptr noundef %111, ptr noundef %1, ptr noundef %99, i32 noundef %3) #24
  %112 = icmp ugt i64 %107, 1
  br i1 %112, label %106, label %148, !llvm.loop !1619

113:                                              ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6682, ptr noundef nonnull @.str.4) #22
  br label %114

114:                                              ; preds = %6, %113
  %115 = zext nneg i32 %10 to i64
  %116 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !426
  %118 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %115
  %119 = load i8, ptr %118, align 1, !tbaa !442
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %148, label %121, !prof !1620

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %123 = zext i8 %119 to i64
  br label %124

124:                                              ; preds = %121, %146
  %125 = phi i64 [ %123, %121 ], [ %126, %146 ]
  %126 = add nsw i64 %125, -1
  %127 = getelementptr inbounds i8, ptr %117, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !442
  switch i8 %128, label %146 [
    i8 101, label %129
    i8 69, label %132
  ], !prof !1621

129:                                              ; preds = %124
  %130 = getelementptr inbounds [1 x %union.rtunion_def], ptr %122, i64 0, i64 %126
  %131 = load ptr, ptr %130, align 8, !tbaa !442
  tail call fastcc void @count_reg_usage(ptr noundef %131, ptr noundef %1, ptr noundef %7, i32 noundef %3) #24
  br label %146

132:                                              ; preds = %124
  %133 = getelementptr inbounds [1 x %union.rtunion_def], ptr %122, i64 0, i64 %126
  %134 = load ptr, ptr %133, align 8, !tbaa !442
  %135 = load i32, ptr %134, align 8, !tbaa !451
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %146, !prof !1622

137:                                              ; preds = %132
  %138 = zext nneg i32 %135 to i64
  br label %139

139:                                              ; preds = %137, %139
  %140 = phi i64 [ %138, %137 ], [ %141, %139 ]
  %141 = add nsw i64 %140, -1
  %142 = load ptr, ptr %133, align 8, !tbaa !442
  %143 = getelementptr inbounds %struct.rtvec_def, ptr %142, i64 0, i32 1, i64 %141
  %144 = load ptr, ptr %143, align 8, !tbaa !426
  tail call fastcc void @count_reg_usage(ptr noundef %144, ptr noundef %1, ptr noundef %7, i32 noundef %3) #24
  %145 = icmp ugt i64 %140, 1
  br i1 %145, label %139, label %146, !prof !1623, !llvm.loop !1624

146:                                              ; preds = %139, %132, %124, %129
  %147 = icmp sgt i64 %125, 1
  br i1 %147, label %124, label %148, !prof !1625, !llvm.loop !1626

148:                                              ; preds = %29, %20, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %55, %106, %66, %73, %146, %4, %96, %114, %12, %14
  ret void
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @insn_live_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1627 !PGOFuncName !1628 {
  %3 = tail call zeroext i8 @insn_could_throw_p(ptr noundef %0) #22
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %69, !prof !1629

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !442
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %34 [
    i16 23, label %10
    i16 15, label %12
  ], !prof !1630

10:                                               ; preds = %5
  %11 = tail call fastcc zeroext i8 @set_live_p(ptr noundef nonnull %7, ptr noundef %1) #24
  br label %69

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !442
  %15 = load i32, ptr %14, align 8, !tbaa !451
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %69, !prof !1631

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %32
  %20 = phi i64 [ %18, %17 ], [ %21, %32 ]
  %21 = add nsw i64 %20, -1
  %22 = load ptr, ptr %6, align 8, !tbaa !442
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !442
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !426
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %69 [
    i16 23, label %29
    i16 25, label %32
    i16 24, label %32
  ], !prof !1632

29:                                               ; preds = %19
  %30 = tail call fastcc zeroext i8 @set_live_p(ptr noundef nonnull %26, ptr noundef %1) #24
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %69, !prof !1633

32:                                               ; preds = %19, %19, %29
  %33 = icmp ugt i64 %20, 1
  br i1 %33, label %19, label %69, !prof !1634, !llvm.loop !1635

34:                                               ; preds = %5
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 7
  br i1 %37, label %38, label %69, !prof !1636

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !442
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
  %49 = load ptr, ptr %43, align 8, !tbaa !442
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !442
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !442
  %54 = icmp eq ptr %49, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %44, %48
  %56 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !442
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44, !llvm.loop !1637

59:                                               ; preds = %55, %38
  %60 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = tail call i32 @for_each_rtx(ptr noundef nonnull %60, ptr noundef nonnull @is_dead_reg, ptr noundef %1) #22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !426
  %65 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %64) #22
  %66 = load ptr, ptr %6, align 8, !tbaa !442
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %65, ptr %67, align 8, !tbaa !442
  %68 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #22
  br label %69

69:                                               ; preds = %19, %29, %32, %44, %48, %12, %34, %63, %59, %2, %10
  %70 = phi i8 [ %11, %10 ], [ 1, %2 ], [ 1, %63 ], [ 1, %59 ], [ 1, %34 ], [ 0, %12 ], [ 0, %48 ], [ 1, %44 ], [ 1, %19 ], [ 1, %29 ], [ 0, %32 ]
  ret i8 %70
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @insn_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @set_live_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1638 !PGOFuncName !1639 {
  %3 = tail call i32 @set_noop_p(ptr noundef %0) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14, !prof !1640

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = tail call i32 @is_dead_reg(ptr noundef nonnull %6, ptr noundef %1) #24, !range !503
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !1641

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !442
  %12 = tail call i32 @side_effects_p(ptr noundef %11) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !1642

14:                                               ; preds = %9, %2
  br label %15

15:                                               ; preds = %5, %9, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %9 ], [ 1, %5 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @is_dead_reg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !1643 !PGOFuncName !1644 {
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %16, !prof !1645

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #24
  %9 = icmp ugt i32 %8, 52
  br i1 %9, label %10, label %16, !prof !1646

10:                                               ; preds = %7
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !438
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_cse() #8 !prof !1647 !PGOFuncName !1648 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !438
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_cse() #0 !prof !1647 !PGOFuncName !1649 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !1650

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !438
  tail call void @dump_flow_info(ptr noundef nonnull %1, i32 noundef %4) #22
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call ptr @get_insns() #22
  %7 = tail call i32 @max_reg_num() #22
  %8 = tail call i32 @cse_main(ptr poison, i32 noundef %7) #24, !range !1651
  %9 = load i32, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !438
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15, !prof !1652

11:                                               ; preds = %5
  %12 = load i32, ptr @flag_gcse, align 4, !tbaa !438
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i32 [ 0, %5 ], [ %14, %11 ]
  store i32 %16, ptr @cse_not_expected, align 4, !tbaa !438
  %17 = icmp eq i32 %8, 2
  br i1 %17, label %18, label %28, !prof !1653

18:                                               ; preds = %15
  %19 = load i8, ptr @timevar_enable, align 1, !tbaa !442
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !1654

21:                                               ; preds = %18
  tail call void @timevar_push_1(i32 noundef 119) #22
  br label %22

22:                                               ; preds = %21, %18
  %23 = tail call ptr @get_insns() #22
  tail call void @rebuild_jump_labels(ptr noundef %23) #22
  %24 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #22
  %25 = load i8, ptr @timevar_enable, align 1, !tbaa !442
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27, !prof !1654

27:                                               ; preds = %22
  tail call void @timevar_pop_1(i32 noundef 119) #22
  br label %35

28:                                               ; preds = %15
  %29 = icmp eq i32 %8, 1
  %30 = load i32, ptr @optimize, align 4
  %31 = icmp sgt i32 %30, 1
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %35, !prof !1655

33:                                               ; preds = %28
  %34 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #22
  br label %35

35:                                               ; preds = %33, %28, %22, %27
  ret i32 0
}

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_cse2() #8 !prof !1647 !PGOFuncName !1656 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !438
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_rerun_cse_after_loop, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !1650
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_cse2() #0 !prof !1647 !PGOFuncName !1657 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !1650

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !438
  tail call void @dump_flow_info(ptr noundef nonnull %1, i32 noundef %4) #22
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call ptr @get_insns() #22
  %7 = tail call i32 @max_reg_num() #22
  %8 = tail call i32 @cse_main(ptr poison, i32 noundef %7) #24, !range !1651
  tail call fastcc void @cse_condition_code_reg() #24
  %9 = tail call ptr @get_insns() #22
  %10 = tail call i32 @max_reg_num() #22
  %11 = tail call i32 @delete_trivially_dead_insns(ptr noundef %9, i32 noundef %10) #24
  switch i32 %8, label %24 [
    i32 2, label %12
    i32 1, label %22
  ], !prof !1658

12:                                               ; preds = %5
  %13 = load i8, ptr @timevar_enable, align 1, !tbaa !442
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !1659

15:                                               ; preds = %12
  tail call void @timevar_push_1(i32 noundef 119) #22
  br label %16

16:                                               ; preds = %15, %12
  %17 = tail call ptr @get_insns() #22
  tail call void @rebuild_jump_labels(ptr noundef %17) #22
  %18 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #22
  %19 = load i8, ptr @timevar_enable, align 1, !tbaa !442
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21, !prof !1659

21:                                               ; preds = %16
  tail call void @timevar_pop_1(i32 noundef 119) #22
  br label %24

22:                                               ; preds = %5
  %23 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #22
  br label %24

24:                                               ; preds = %5, %22, %16, %21
  store i32 1, ptr @cse_not_expected, align 4, !tbaa !438
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_condition_code_reg() unnamed_addr #0 !prof !1647 !PGOFuncName !1660 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 66), align 8, !tbaa !1661
  %4 = call zeroext i8 %3(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %124, label %6, !prof !1652

6:                                                ; preds = %0
  %7 = load i32, ptr %1, align 4, !tbaa !438
  %8 = call ptr @gen_rtx_REG(i32 noundef 2, i32 noundef %7) #22
  %9 = load i32, ptr %2, align 4, !tbaa !438
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %13, label %11, !prof !1652

11:                                               ; preds = %6
  %12 = call ptr @gen_rtx_REG(i32 noundef 2, i32 noundef %9) #22
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi ptr [ %12, %11 ], [ null, %6 ]
  %15 = load ptr, ptr @cfun, align 8, !tbaa !426
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !519
  %18 = load ptr, ptr %17, align 8, !tbaa !1662
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !1663
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !580
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %124, label %24, !prof !1664

24:                                               ; preds = %13, %115
  %25 = phi ptr [ %117, %115 ], [ %20, %13 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !442
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !572
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %115, !prof !1665

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !442
  %36 = call i32 @reg_referenced_p(ptr noundef %8, ptr noundef %35) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44, !prof !1666

38:                                               ; preds = %33
  %39 = icmp eq ptr %14, null
  br i1 %39, label %115, label %40, !prof !1667

40:                                               ; preds = %38
  %41 = load ptr, ptr %34, align 8, !tbaa !442
  %42 = call i32 @reg_referenced_p(ptr noundef nonnull %14, ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %115, label %44, !prof !1668

44:                                               ; preds = %40, %33
  %45 = phi ptr [ %8, %33 ], [ %14, %40 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !442
  %48 = icmp eq ptr %47, null
  br i1 %48, label %115, label %49, !prof !436

49:                                               ; preds = %44, %91
  %50 = phi ptr [ %93, %91 ], [ %47, %44 ]
  %51 = load ptr, ptr %26, align 8, !tbaa !442
  %52 = load ptr, ptr %51, align 8, !tbaa !1044
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !442
  %55 = icmp eq ptr %50, %54
  br i1 %55, label %115, label %56, !prof !1669

56:                                               ; preds = %49
  %57 = load i32, ptr %50, align 8
  %58 = and i32 %57, 65535
  %59 = add nsw i32 %58, -7
  %60 = icmp ult i32 %59, 4
  br i1 %60, label %61, label %91, !prof !1670

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !442
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 23
  br i1 %66, label %70, label %67, !prof !1671

67:                                               ; preds = %61
  %68 = call ptr @single_set_2(ptr noundef nonnull %50, ptr noundef nonnull %63) #22
  %69 = icmp eq ptr %68, null
  br i1 %69, label %88, label %70, !prof !1672

70:                                               ; preds = %61, %67
  %71 = phi ptr [ %68, %67 ], [ %63, %61 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !442
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %88, !prof !1673

77:                                               ; preds = %70
  %78 = call fastcc i32 @rhs_regno(ptr noundef nonnull %73) #24
  %79 = call fastcc i32 @rhs_regno(ptr noundef %45) #24
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88, !prof !1674

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !442
  %84 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !442
  %86 = call i32 @modified_between_p(ptr noundef %83, ptr noundef nonnull %50, ptr noundef %85) #22
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %115, !prof !1675

88:                                               ; preds = %77, %70, %67
  %89 = call i32 @reg_set_p(ptr noundef %45, ptr noundef nonnull %50) #22
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %115, !prof !1676

91:                                               ; preds = %88, %56
  %92 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !442
  %94 = icmp eq ptr %93, null
  br i1 %94, label %115, label %49, !prof !1677, !llvm.loop !1678

95:                                               ; preds = %81
  %96 = load i32, ptr %83, align 8
  %97 = lshr i32 %96, 16
  %98 = and i32 %97, 255
  %99 = call fastcc i32 @cse_cc_succs(ptr noundef nonnull %25, ptr noundef nonnull %25, ptr noundef %45, ptr noundef nonnull %83, i8 noundef zeroext 1) #24
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %115, label %101, !prof !1679

101:                                              ; preds = %95
  %102 = load i32, ptr %83, align 8
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  %105 = icmp eq i32 %99, %104
  br i1 %105, label %107, label %106, !prof !1680

106:                                              ; preds = %101
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 7206, ptr noundef nonnull @.str.4) #22
  br label %107

107:                                              ; preds = %101, %106
  %108 = icmp eq i32 %99, %98
  br i1 %108, label %115, label %109, !prof !1681

109:                                              ; preds = %107
  %110 = call fastcc i32 @rhs_regno(ptr noundef %45) #24
  %111 = call ptr @gen_rtx_REG(i32 noundef %99, i32 noundef %110) #22
  call fastcc void @cse_change_cc_mode_insn(ptr noundef nonnull %50, ptr noundef %111) #24
  %112 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !442
  %114 = load ptr, ptr %84, align 8, !tbaa !442
  call fastcc void @cse_change_cc_mode_insns(ptr noundef %113, ptr noundef %114, ptr noundef %111) #24
  br label %115

115:                                              ; preds = %91, %49, %88, %44, %95, %109, %107, %81, %38, %40, %24
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !1663
  %118 = load ptr, ptr @cfun, align 8, !tbaa !426
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !519
  %121 = getelementptr inbounds %struct.control_flow_graph, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !580
  %123 = icmp eq ptr %117, %122
  br i1 %123, label %124, label %24, !prof !1682, !llvm.loop !1683

124:                                              ; preds = %115, %13, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret void
}

; Function Attrs: optsize
declare i32 @reg_referenced_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @modified_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cse_cc_succs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !1684 !PGOFuncName !1685 {
  %6 = alloca ptr, align 8
  %7 = alloca [2 x ptr], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x ptr], align 16
  %10 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #23
  %11 = load i32, ptr %3, align 8
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %13 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %12) #24
  store i32 0, ptr %10, align 8, !tbaa.struct !669
  %14 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !670
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %6) #24, !range !541
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %226, label %17, !prof !1686

17:                                               ; preds = %5
  %18 = lshr i32 %11, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %17, %178
  %21 = phi i8 [ %4, %17 ], [ %182, %178 ]
  %22 = phi i8 [ 0, %17 ], [ %181, %178 ]
  %23 = phi i32 [ %19, %17 ], [ %180, %178 ]
  %24 = phi i32 [ 0, %17 ], [ %179, %178 ]
  %25 = load ptr, ptr %6, align 8, !tbaa !426
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !575
  %28 = and i32 %27, 14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %178, !prof !1687

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !579
  %33 = load ptr, ptr %32, align 8, !tbaa !654
  %34 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %33) #24
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %178, !prof !1688

36:                                               ; preds = %30
  %37 = load ptr, ptr @cfun, align 8, !tbaa !426
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !519
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !580
  %42 = icmp eq ptr %32, %41
  %43 = icmp eq ptr %32, %1
  %44 = or i1 %43, %42
  br i1 %44, label %178, label %45, !prof !1689

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !442
  %48 = getelementptr inbounds %struct.rtl_bb_info, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !572
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !442
  %52 = load ptr, ptr %47, align 8, !tbaa !442
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %168, label %54, !prof !1690

54:                                               ; preds = %45, %159
  %55 = phi ptr [ %164, %159 ], [ %52, %45 ]
  %56 = phi i8 [ %160, %159 ], [ %22, %45 ]
  %57 = phi i32 [ %161, %159 ], [ %23, %45 ]
  %58 = phi i32 [ %162, %159 ], [ %24, %45 ]
  %59 = load i32, ptr %55, align 8
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -7
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %159, !prof !1691

63:                                               ; preds = %54
  %64 = tail call i32 @modified_in_p(ptr noundef nonnull %3, ptr noundef nonnull %55) #22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %178, !prof !1692

66:                                               ; preds = %63
  %67 = load i32, ptr %55, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -7
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %156, !prof !1693

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !442
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 23
  br i1 %76, label %80, label %77, !prof !1694

77:                                               ; preds = %71
  %78 = tail call ptr @single_set_2(ptr noundef nonnull %55, ptr noundef nonnull %73) #22
  %79 = icmp eq ptr %78, null
  br i1 %79, label %156, label %80, !prof !585

80:                                               ; preds = %71, %77
  %81 = phi ptr [ %78, %77 ], [ %73, %71 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !442
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 37
  br i1 %86, label %87, label %156, !prof !1695

87:                                               ; preds = %80
  %88 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %83) #24
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #24
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %156, !prof !1696

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !442
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  %97 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef nonnull %93) #22
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %133, !prof !1697

99:                                               ; preds = %91
  %100 = load i32, ptr %3, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 48
  br i1 %102, label %103, label %178, !prof !1698

103:                                              ; preds = %99
  %104 = load ptr, ptr %92, align 8, !tbaa !442
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp ne i32 %106, 48
  %108 = icmp eq i32 %57, %96
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %178, label %110, !prof !1699

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !442
  %113 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !442
  %115 = tail call i32 @rtx_equal_p(ptr noundef %112, ptr noundef %114) #22
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %178, label %117, !prof !1700

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !442
  %120 = load ptr, ptr %92, align 8, !tbaa !442
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !442
  %123 = tail call i32 @rtx_equal_p(ptr noundef %119, ptr noundef %122) #22
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %178, label %125, !prof !1701

125:                                              ; preds = %117
  %126 = icmp eq i8 %21, 0
  %127 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 67), align 8, !tbaa !1702
  %128 = tail call i32 %127(i32 noundef %57, i32 noundef %96) #22
  %129 = icmp eq i32 %128, 0
  %130 = icmp ne i32 %128, %57
  %131 = select i1 %126, i1 %130, i1 false
  %132 = select i1 %129, i1 true, i1 %131
  br i1 %132, label %178, label %133, !prof !1703

133:                                              ; preds = %125, %91
  %134 = phi i32 [ %96, %91 ], [ %128, %125 ]
  %135 = icmp ult i32 %58, 2
  br i1 %135, label %136, label %152, !prof !1704

136:                                              ; preds = %133
  %137 = zext nneg i32 %58 to i64
  %138 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %137
  store ptr %55, ptr %138, align 8, !tbaa !426
  %139 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %137
  store i32 %96, ptr %139, align 4, !tbaa !438
  %140 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %137
  store ptr %51, ptr %140, align 8, !tbaa !426
  %141 = add nuw nsw i32 %58, 1
  %142 = icmp eq i32 %57, %134
  br i1 %142, label %159, label %143, !prof !1705

143:                                              ; preds = %136
  %144 = icmp eq i8 %21, 0
  br i1 %144, label %145, label %146, !prof !1706

145:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 7028, ptr noundef nonnull @.str.4) #22
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
  %155 = tail call ptr @delete_insn(ptr noundef nonnull %55) #22
  br label %159

156:                                              ; preds = %66, %77, %80, %87
  %157 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef nonnull %55) #22
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %154, %146, %136, %54, %156
  %160 = phi i8 [ %56, %156 ], [ 1, %154 ], [ 1, %146 ], [ 1, %136 ], [ %56, %54 ]
  %161 = phi i32 [ %57, %156 ], [ %57, %154 ], [ %134, %146 ], [ %57, %136 ], [ %57, %54 ]
  %162 = phi i32 [ %58, %156 ], [ %58, %154 ], [ %141, %146 ], [ %141, %136 ], [ %58, %54 ]
  %163 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 2
  %164 = load ptr, ptr %163, align 8, !tbaa !442
  %165 = icmp eq ptr %164, %51
  br i1 %165, label %166, label %54, !prof !1707, !llvm.loop !1708

166:                                              ; preds = %159
  %167 = load ptr, ptr %31, align 8, !tbaa !579
  br label %168

168:                                              ; preds = %166, %45
  %169 = phi ptr [ %32, %45 ], [ %167, %166 ]
  %170 = phi i32 [ %24, %45 ], [ %162, %166 ]
  %171 = phi i32 [ %23, %45 ], [ %161, %166 ]
  %172 = phi i8 [ %22, %45 ], [ %160, %166 ]
  %173 = tail call fastcc i32 @cse_cc_succs(ptr noundef %169, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext 0) #24
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175, !prof !1709

175:                                              ; preds = %168
  %176 = icmp eq i32 %173, %171
  br i1 %176, label %178, label %177, !prof !1710

177:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 7078, ptr noundef nonnull @.str.4) #22
  br label %178

178:                                              ; preds = %99, %103, %110, %117, %125, %152, %63, %156, %177, %175, %168, %30, %36, %20
  %179 = phi i32 [ %24, %20 ], [ %24, %36 ], [ %24, %30 ], [ %170, %168 ], [ %170, %175 ], [ %170, %177 ], [ %58, %156 ], [ %58, %63 ], [ %58, %152 ], [ %58, %125 ], [ %58, %117 ], [ %58, %110 ], [ %58, %103 ], [ %58, %99 ]
  %180 = phi i32 [ %23, %20 ], [ %23, %36 ], [ %23, %30 ], [ %171, %168 ], [ %171, %175 ], [ %171, %177 ], [ %57, %156 ], [ %57, %63 ], [ %57, %152 ], [ %57, %125 ], [ %57, %117 ], [ %57, %110 ], [ %57, %103 ], [ %57, %99 ]
  %181 = phi i8 [ %22, %20 ], [ %22, %36 ], [ %22, %30 ], [ %172, %168 ], [ 1, %175 ], [ 1, %177 ], [ %56, %99 ], [ %56, %103 ], [ %56, %110 ], [ %56, %117 ], [ %56, %125 ], [ 1, %152 ], [ %56, %63 ], [ %56, %156 ]
  %182 = phi i8 [ %21, %20 ], [ %21, %36 ], [ %21, %30 ], [ %21, %168 ], [ 0, %175 ], [ 0, %177 ], [ %21, %156 ], [ %21, %63 ], [ %21, %152 ], [ %21, %125 ], [ %21, %117 ], [ %21, %110 ], [ %21, %103 ], [ %21, %99 ]
  call fastcc void @ei_next(ptr noundef nonnull %10) #24
  %183 = load i32, ptr %10, align 8
  %184 = load ptr, ptr %14, align 8
  %185 = call fastcc zeroext i8 @ei_cond(i32 %183, ptr %184, ptr noundef nonnull %6) #24, !range !541
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %20, !prof !1711, !llvm.loop !1712

187:                                              ; preds = %178
  %188 = icmp eq i8 %181, 0
  br i1 %188, label %226, label %189, !prof !1713

189:                                              ; preds = %187
  %190 = icmp eq i32 %179, 0
  br i1 %190, label %226, label %191, !prof !1714

191:                                              ; preds = %189
  %192 = zext i32 %179 to i64
  br label %193

193:                                              ; preds = %191, %220
  %194 = phi i64 [ 0, %191 ], [ %224, %220 ]
  %195 = phi ptr [ null, %191 ], [ %222, %220 ]
  %196 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %194
  %197 = load i32, ptr %196, align 4, !tbaa !438
  %198 = icmp eq i32 %197, %180
  br i1 %198, label %199, label %202, !prof !1715

199:                                              ; preds = %193
  %200 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %194
  %201 = load ptr, ptr %200, align 8, !tbaa !426
  br label %220

202:                                              ; preds = %193
  %203 = icmp eq ptr %195, null
  br i1 %203, label %204, label %212, !prof !1716

204:                                              ; preds = %202
  %205 = load i32, ptr %2, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = icmp eq i32 %207, %180
  br i1 %208, label %212, label %209, !prof !1716

209:                                              ; preds = %204
  %210 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #24
  %211 = tail call ptr @gen_rtx_REG(i32 noundef %180, i32 noundef %210) #22
  br label %212

212:                                              ; preds = %204, %209, %202
  %213 = phi ptr [ %195, %202 ], [ %211, %209 ], [ %2, %204 ]
  %214 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %194
  %215 = load ptr, ptr %214, align 8, !tbaa !426
  %216 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1, i32 0, i32 0, i64 2
  %217 = load ptr, ptr %216, align 8, !tbaa !442
  %218 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %194
  %219 = load ptr, ptr %218, align 8, !tbaa !426
  tail call fastcc void @cse_change_cc_mode_insns(ptr noundef %217, ptr noundef %219, ptr noundef %213) #24
  br label %220

220:                                              ; preds = %199, %212
  %221 = phi ptr [ %215, %212 ], [ %201, %199 ]
  %222 = phi ptr [ %213, %212 ], [ %195, %199 ]
  %223 = tail call ptr @delete_insn_and_edges(ptr noundef %221) #22
  %224 = add nuw nsw i64 %194, 1
  %225 = icmp eq i64 %224, %192
  br i1 %225, label %226, label %193, !prof !1717, !llvm.loop !1718

226:                                              ; preds = %220, %5, %189, %187
  %227 = phi i32 [ 0, %187 ], [ %180, %189 ], [ 0, %5 ], [ %180, %220 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  ret i32 %227
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_change_cc_mode_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1719 !PGOFuncName !1720 {
  %3 = alloca %struct.change_cc_mode_args, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %17, !prof !1721

8:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !1722
  %9 = getelementptr inbounds %struct.change_cc_mode_args, ptr %3, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !1724
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %11 = call i32 @for_each_rtx(ptr noundef nonnull %10, ptr noundef nonnull @cse_change_cc_mode, ptr noundef nonnull %3) #22
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = call i32 @for_each_rtx(ptr noundef nonnull %12, ptr noundef nonnull @cse_change_cc_mode, ptr noundef nonnull %3) #22
  %14 = call i32 @apply_change_group() #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !1725

16:                                               ; preds = %8
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6895, ptr noundef nonnull @.str.4) #22
  br label %17

17:                                               ; preds = %2, %16, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_change_cc_mode_insns(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #0 !prof !1726 !PGOFuncName !1727 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %19, label %5, !prof !1728

5:                                                ; preds = %3, %15
  %6 = phi ptr [ %17, %15 ], [ %0, %3 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %15, !prof !1729

11:                                               ; preds = %5
  %12 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef nonnull %6) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !1730

14:                                               ; preds = %11
  tail call fastcc void @cse_change_cc_mode_insn(ptr noundef nonnull %6, ptr noundef %2) #24
  br label %15

15:                                               ; preds = %5, %14
  %16 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !442
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %5, !prof !1731, !llvm.loop !1732

19:                                               ; preds = %11, %15, %3
  ret void
}

; Function Attrs: optsize
declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cse_change_cc_mode(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !1733 !PGOFuncName !1734 {
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !1735

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %23, !prof !1736

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #24
  %11 = getelementptr inbounds %struct.change_cc_mode_args, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1724
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef %12) #24
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %23, !prof !1737

15:                                               ; preds = %9
  %16 = load i32, ptr %12, align 8
  %17 = xor i32 %16, %6
  %18 = and i32 %17, 16711680
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !1738

20:                                               ; preds = %15
  %21 = load ptr, ptr %1, align 8, !tbaa !1722
  %22 = tail call zeroext i8 @validate_change(ptr noundef %21, ptr noundef nonnull %0, ptr noundef nonnull %12, i8 noundef zeroext 1) #22
  br label %23

23:                                               ; preds = %2, %5, %9, %15, %20
  %24 = phi i32 [ -1, %20 ], [ 0, %15 ], [ 0, %9 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_cse_after_global_opts() #8 !prof !1647 !PGOFuncName !1739 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !438
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !1650
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_cse_after_global_opts() #0 !prof !1740 !PGOFuncName !1741 {
  %1 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !438
  store i32 0, ptr @flag_cse_follow_jumps, align 4, !tbaa !438
  %2 = tail call ptr @get_insns() #22
  tail call void @rebuild_jump_labels(ptr noundef %2) #22
  %3 = tail call ptr @get_insns() #22
  %4 = tail call i32 @max_reg_num() #22
  %5 = tail call i32 @cse_main(ptr poison, i32 noundef %4) #24, !range !1651
  %6 = tail call zeroext i8 @purge_all_dead_edges() #22
  %7 = tail call ptr @get_insns() #22
  %8 = tail call i32 @max_reg_num() #22
  %9 = tail call i32 @delete_trivially_dead_insns(ptr noundef %7, i32 noundef %8) #24
  %10 = load i32, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !438
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, ptr @cse_not_expected, align 4, !tbaa !438
  switch i32 %5, label %25 [
    i32 2, label %13
    i32 1, label %23
  ], !prof !1742

13:                                               ; preds = %0
  %14 = load i8, ptr @timevar_enable, align 1, !tbaa !442
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16, !prof !1743

16:                                               ; preds = %13
  tail call void @timevar_push_1(i32 noundef 119) #22
  br label %17

17:                                               ; preds = %16, %13
  %18 = tail call ptr @get_insns() #22
  tail call void @rebuild_jump_labels(ptr noundef %18) #22
  %19 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #22
  %20 = load i8, ptr @timevar_enable, align 1, !tbaa !442
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22, !prof !1743

22:                                               ; preds = %17
  tail call void @timevar_pop_1(i32 noundef 119) #22
  br label %25

23:                                               ; preds = %0
  %24 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #22
  br label %25

25:                                               ; preds = %0, %23, %17, %22
  store i32 %1, ptr @flag_cse_follow_jumps, align 4, !tbaa !438
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @purge_all_dead_edges() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { cold }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }
attributes #24 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!424}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!36 = !{ptr @hash_rtx_cb, ptr @rhs_regno, i64 13784409}
!37 = !{ptr @hash_rtx_cb, ptr @get_cse_reg_info, i64 11497833}
!38 = !{ptr @hash_rtx_cb, ptr @real_hash, i64 1835}
!39 = !{ptr @hash_rtx_cb, ptr @fixed_hash, i64 1}
!40 = !{ptr @hash_rtx_cb, ptr @hash_rtx_cb, i64 8191801}
!41 = !{ptr @hash_rtx_cb, ptr @hash_rtx_string, i64 19}
!42 = !{ptr @hash_rtx_cb, ptr @fancy_abort, i64 1}
!43 = !{ptr @get_cse_reg_info, ptr @get_cse_reg_info_1, i64 10358484}
!44 = !{ptr @hash_rtx, ptr @hash_rtx_cb, i64 17319132}
!45 = !{ptr @exp_equiv_p, ptr @rhs_regno, i64 7851298}
!46 = !{ptr @exp_equiv_p, ptr @end_hard_regno, i64 800235}
!47 = !{ptr @exp_equiv_p, ptr @get_cse_reg_info, i64 14947494}
!48 = !{ptr @exp_equiv_p, ptr @exp_equiv_p, i64 15353240}
!49 = !{ptr @exp_equiv_p, ptr @strcmp, i64 2}
!50 = !{ptr @exp_equiv_p, ptr @fancy_abort, i64 1}
!51 = !{ptr @cse_main, ptr @xmalloc, i64 44586}
!52 = !{ptr @cse_main, ptr @df_set_flags, i64 29724}
!53 = !{ptr @cse_main, ptr @df_analyze, i64 14862}
!54 = !{ptr @cse_main, ptr @get_insns, i64 14862}
!55 = !{ptr @cse_main, ptr @max_reg_num, i64 14862}
!56 = !{ptr @cse_main, ptr @reg_scan, i64 14862}
!57 = !{ptr @cse_main, ptr @init_cse_reg_info, i64 14862}
!58 = !{ptr @cse_main, ptr @init_recog, i64 14862}
!59 = !{ptr @cse_main, ptr @init_alias_analysis, i64 14862}
!60 = !{ptr @cse_main, ptr @sbitmap_alloc, i64 14862}
!61 = !{ptr @cse_main, ptr @sbitmap_zero, i64 14862}
!62 = !{ptr @cse_main, ptr @pre_and_rev_post_order_compute, i64 14862}
!63 = !{ptr @cse_main, ptr @VEC_basic_block_base_index, i64 722420}
!64 = !{ptr @cse_main, ptr @cse_find_path, i64 847187}
!65 = !{ptr @cse_main, ptr @cse_prescan_path, i64 461598}
!66 = !{ptr @cse_main, ptr @cse_dump_path, i64 1}
!67 = !{ptr @cse_main, ptr @cse_extended_basic_block, i64 456838}
!68 = !{ptr @cse_main, ptr @end_alias_analysis, i64 14862}
!69 = !{ptr @cse_main, ptr @free, i64 74310}
!70 = !{ptr @init_cse_reg_info, ptr @free, i64 7}
!71 = !{ptr @init_cse_reg_info, ptr @xmalloc, i64 9}
!72 = !{ptr @cse_find_path, ptr @SET_BIT, i64 1115953}
!73 = !{ptr @cse_find_path, ptr @fancy_abort, i64 1}
!74 = !{ptr @cse_find_path, ptr @VEC_edge_base_length, i64 607816}
!75 = !{ptr @cse_find_path, ptr @any_condjump_p, i64 601228}
!76 = !{ptr @cse_find_path, ptr @find_edge, i64 391052}
!77 = !{ptr @cse_find_path, ptr @VEC_edge_base_index, i64 1055382}
!78 = !{ptr @cse_find_path, ptr @single_pred_p, i64 662138}
!79 = !{ptr @cse_find_path, ptr @single_succ_p, i64 356256}
!80 = !{ptr @cse_find_path, ptr @single_succ_edge, i64 139560}
!81 = !{ptr @cse_extended_basic_block, ptr @xmalloc, i64 456869}
!82 = !{ptr @cse_extended_basic_block, ptr @new_basic_block, i64 456869}
!83 = !{ptr @cse_extended_basic_block, ptr @df_get_live_in, i64 456869}
!84 = !{ptr @cse_extended_basic_block, ptr @df_get_live_out, i64 456869}
!85 = !{ptr @cse_extended_basic_block, ptr @bb_has_eh_pred, i64 911944}
!86 = !{ptr @cse_extended_basic_block, ptr @df_get_artificial_defs, i64 1}
!87 = !{ptr @cse_extended_basic_block, ptr @invalidate, i64 10}
!88 = !{ptr @cse_extended_basic_block, ptr @optimize_bb_for_speed_p, i64 5272104}
!89 = !{ptr @cse_extended_basic_block, ptr @flush_hash_table, i64 11}
!90 = !{ptr @cse_extended_basic_block, ptr @cse_process_notes, i64 1797825}
!91 = !{ptr @cse_extended_basic_block, ptr @df_notes_rescan, i64 2096}
!92 = !{ptr @cse_extended_basic_block, ptr @cse_insn, i64 3860327}
!93 = !{ptr @cse_extended_basic_block, ptr @for_each_rtx, i64 3719998}
!94 = !{ptr @cse_extended_basic_block, ptr @have_eh_succ_edges, i64 1}
!95 = !{ptr @cse_extended_basic_block, ptr @purge_dead_edges, i64 1}
!96 = !{ptr @cse_extended_basic_block, ptr @find_edge, i64 455087}
!97 = !{ptr @cse_extended_basic_block, ptr @RESET_BIT, i64 13}
!98 = !{ptr @cse_extended_basic_block, ptr @single_set_2, i64 227506}
!99 = !{ptr @cse_extended_basic_block, ptr @any_condjump_p, i64 369698}
!100 = !{ptr @cse_extended_basic_block, ptr @VEC_edge_base_index, i64 578164}
!101 = !{ptr @cse_extended_basic_block, ptr @record_jump_equiv, i64 369693}
!102 = !{ptr @cse_extended_basic_block, ptr @fancy_abort, i64 1}
!103 = !{ptr @cse_extended_basic_block, ptr @free, i64 456869}
!104 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 895753}
!105 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 720875}
!106 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 202908}
!107 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!108 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 202908}
!109 = !{ptr @bb_has_eh_pred, ptr @ei_start_1, i64 911945}
!110 = !{ptr @bb_has_eh_pred, ptr @ei_cond, i64 2395669}
!111 = !{ptr @bb_has_eh_pred, ptr @ei_next, i64 1483724}
!112 = !{ptr @invalidate, ptr @rhs_regno, i64 7023585}
!113 = !{ptr @invalidate, ptr @get_cse_reg_info, i64 7803701}
!114 = !{ptr @invalidate, ptr @canon_hash, i64 1649694}
!115 = !{ptr @invalidate, ptr @delete_reg_equiv, i64 3151229}
!116 = !{ptr @invalidate, ptr @remove_pseudo_from_table, i64 1501244}
!117 = !{ptr @invalidate, ptr @end_hard_regno, i64 2095895}
!118 = !{ptr @invalidate, ptr @remove_from_table, i64 585863}
!119 = !{ptr @invalidate, ptr @invalidate, i64 20}
!120 = !{ptr @invalidate, ptr @get_addr, i64 740926}
!121 = !{ptr @invalidate, ptr @canon_rtx, i64 2309011}
!122 = !{ptr @invalidate, ptr @for_each_rtx, i64 1501337}
!123 = !{ptr @invalidate, ptr @fancy_abort, i64 1}
!124 = !{ptr @flush_hash_table, ptr @invalidate, i64 2457}
!125 = !{ptr @flush_hash_table, ptr @remove_from_table, i64 1691}
!126 = !{ptr @cse_process_notes, ptr @cse_process_notes_1, i64 2934604}
!127 = !{ptr @cse_insn, ptr @invalidate, i64 3540374}
!128 = !{ptr @cse_insn, ptr @canon_reg, i64 8430233}
!129 = !{ptr @cse_insn, ptr @apply_change_group, i64 7894531}
!130 = !{ptr @cse_insn, ptr @fold_rtx, i64 4734152}
!131 = !{ptr @cse_insn, ptr @rhs_regno, i64 11275281}
!132 = !{ptr @cse_insn, ptr @find_reg_note, i64 4679100}
!133 = !{ptr @cse_insn, ptr @rtx_equal_p, i64 6800189}
!134 = !{ptr @cse_insn, ptr @copy_rtx, i64 111795}
!135 = !{ptr @cse_insn, ptr @df_notes_rescan, i64 111795}
!136 = !{ptr @cse_insn, ptr @validate_change, i64 7197929}
!137 = !{ptr @cse_insn, ptr @get_cse_reg_info, i64 8789891}
!138 = !{ptr @cse_insn, ptr @canon_hash, i64 7322536}
!139 = !{ptr @cse_insn, ptr @lookup, i64 3952637}
!140 = !{ptr @cse_insn, ptr @merge_equiv_classes, i64 4574}
!141 = !{ptr @cse_insn, ptr @use_related_value, i64 31007}
!142 = !{ptr @cse_insn, ptr @gen_rtx_fmt_ee_stat, i64 27524}
!143 = !{ptr @cse_insn, ptr @exp_equiv_p, i64 335673}
!144 = !{ptr @cse_insn, ptr @notreg_cost, i64 2767455}
!145 = !{ptr @cse_insn, ptr @approx_reg_cost, i64 3244834}
!146 = !{ptr @cse_insn, ptr @preferable, i64 9498438}
!147 = !{ptr @cse_insn, ptr @canon_rtx, i64 8138}
!148 = !{ptr @cse_insn, ptr @nonoverlapping_memrefs_p, i64 4067}
!149 = !{ptr @cse_insn, ptr @condjump_p, i64 27}
!150 = !{ptr @cse_insn, ptr @validate_unshare_change, i64 3601548}
!151 = !{ptr @cse_insn, ptr @set_unique_reg_note, i64 11443}
!152 = !{ptr @cse_insn, ptr @delete_insn_and_edges, i64 99}
!153 = !{ptr @cse_insn, ptr @gen_jump, i64 25}
!154 = !{ptr @cse_insn, ptr @emit_jump_insn_before, i64 25}
!155 = !{ptr @cse_insn, ptr @insert_regs, i64 4526362}
!156 = !{ptr @cse_insn, ptr @rehash_using_reg, i64 2678668}
!157 = !{ptr @cse_insn, ptr @insert, i64 4953858}
!158 = !{ptr @cse_insn, ptr @invalidate_from_clobbers, i64 3901827}
!159 = !{ptr @cse_insn, ptr @invalidate_memory, i64 277357}
!160 = !{ptr @cse_insn, ptr @invalidate_for_call, i64 297387}
!161 = !{ptr @cse_insn, ptr @flush_hash_table, i64 4}
!162 = !{ptr @cse_insn, ptr @mention_regs, i64 740705}
!163 = !{ptr @cse_insn, ptr @end_hard_regno, i64 659209}
!164 = !{ptr @cse_insn, ptr @remove_invalid_refs, i64 115144}
!165 = !{ptr @cse_insn, ptr @simplify_gen_subreg, i64 79}
!166 = !{ptr @cse_insn, ptr @reg_mentioned_p, i64 1}
!167 = !{ptr @cse_insn, ptr @remove_note, i64 1}
!168 = !{ptr @check_for_label_ref, ptr @label_is_jump_target_p, i64 597735}
!169 = !{ptr @check_for_label_ref, ptr @find_reg_note, i64 2113}
!170 = !{ptr @record_jump_equiv, ptr @any_condjump_p, i64 455009}
!171 = !{ptr @record_jump_equiv, ptr @fancy_abort, i64 1}
!172 = !{ptr @record_jump_equiv, ptr @pc_set, i64 455009}
!173 = !{ptr @record_jump_equiv, ptr @fold_rtx, i64 910018}
!174 = !{ptr @record_jump_equiv, ptr @find_comparison_args, i64 455009}
!175 = !{ptr @record_jump_equiv, ptr @reversed_comparison_code_parts, i64 320203}
!176 = !{ptr @record_jump_equiv, ptr @record_jump_cond, i64 454954}
!177 = !{ptr @ei_cond, ptr @ei_end_p, i64 2928030}
!178 = !{ptr @ei_cond, ptr @ei_edge, i64 1829376}
!179 = !{ptr @ei_next, ptr @ei_container, i64 3658751}
!180 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1829376}
!181 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!182 = !{ptr @ei_end_p, ptr @ei_container, i64 5856059}
!183 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 2928030}
!184 = !{ptr @ei_edge, ptr @ei_container, i64 3658751}
!185 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1829376}
!186 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!187 = !{ptr @canon_hash, ptr @hash_rtx, i64 9925759}
!188 = !{ptr @delete_reg_equiv, ptr @get_cse_reg_info, i64 34207074}
!189 = !{ptr @remove_pseudo_from_table, ptr @lookup_for_remove, i64 1614897}
!190 = !{ptr @remove_pseudo_from_table, ptr @remove_from_table, i64 84392}
!191 = !{ptr @check_dependence, ptr @canon_true_dependence, i64 1502037}
!192 = !{ptr @lookup_for_remove, ptr @rhs_regno, i64 2017539}
!193 = !{ptr @lookup_for_remove, ptr @exp_equiv_p, i64 4}
!194 = !{ptr @cse_rtx_varies_p, ptr @rhs_regno, i64 15678}
!195 = !{ptr @cse_rtx_varies_p, ptr @get_cse_reg_info, i64 15678}
!196 = !{ptr @cse_rtx_varies_p, ptr @rtx_varies_p, i64 13272}
!197 = !{ptr @cse_process_notes_1, ptr @cse_process_notes, i64 1117451}
!198 = !{ptr @cse_process_notes_1, ptr @validate_change, i64 352950}
!199 = !{ptr @cse_process_notes_1, ptr @rhs_regno, i64 207694}
!200 = !{ptr @cse_process_notes_1, ptr @get_cse_reg_info, i64 207694}
!201 = !{ptr @cse_process_notes_1, ptr @copy_rtx, i64 1211}
!202 = !{ptr @cse_process_notes_1, ptr @canon_reg, i64 102636}
!203 = !{ptr @canon_reg, ptr @rhs_regno, i64 10261890}
!204 = !{ptr @canon_reg, ptr @get_cse_reg_info, i64 7714902}
!205 = !{ptr @canon_reg, ptr @gen_rtx_REG, i64 18}
!206 = !{ptr @canon_reg, ptr @validate_canon_reg, i64 17410760}
!207 = !{ptr @validate_canon_reg, ptr @canon_reg, i64 17410748}
!208 = !{ptr @validate_canon_reg, ptr @fancy_abort, i64 2}
!209 = !{ptr @validate_canon_reg, ptr @validate_change, i64 17410748}
!210 = !{ptr @fold_rtx, ptr @equiv_constant, i64 6189694}
!211 = !{ptr @fold_rtx, ptr @fold_rtx, i64 1250787}
!212 = !{ptr @fold_rtx, ptr @validate_change, i64 12}
!213 = !{ptr @fold_rtx, ptr @notreg_cost, i64 359227}
!214 = !{ptr @fold_rtx, ptr @validate_unshare_change, i64 17140}
!215 = !{ptr @fold_rtx, ptr @canonicalize_change_group, i64 16993}
!216 = !{ptr @fold_rtx, ptr @apply_change_group, i64 16993}
!217 = !{ptr @fold_rtx, ptr @simplify_unary_operation, i64 64085}
!218 = !{ptr @fold_rtx, ptr @find_comparison_args, i64 658436}
!219 = !{ptr @fold_rtx, ptr @rhs_regno, i64 2148587}
!220 = !{ptr @fold_rtx, ptr @get_cse_reg_info, i64 2148583}
!221 = !{ptr @fold_rtx, ptr @safe_hash, i64 608305}
!222 = !{ptr @fold_rtx, ptr @lookup, i64 1612747}
!223 = !{ptr @fold_rtx, ptr @exp_equiv_p, i64 671491}
!224 = !{ptr @fold_rtx, ptr @simplify_relational_operation, i64 1322512}
!225 = !{ptr @fold_rtx, ptr @copy_rtx, i64 2056}
!226 = !{ptr @fold_rtx, ptr @comparison_dominates_p, i64 1037832}
!227 = !{ptr @fold_rtx, ptr @reverse_condition, i64 511538}
!228 = !{ptr @fold_rtx, ptr @rtx_equal_p, i64 63252}
!229 = !{ptr @fold_rtx, ptr @lookup_as_function, i64 565911}
!230 = !{ptr @fold_rtx, ptr @gen_rtx_CONST_INT, i64 49}
!231 = !{ptr @fold_rtx, ptr @canon_reg, i64 10}
!232 = !{ptr @fold_rtx, ptr @simplify_gen_binary, i64 2062}
!233 = !{ptr @fold_rtx, ptr @simplify_binary_operation, i64 1066648}
!234 = !{ptr @fold_rtx, ptr @reg_mentioned_p, i64 2052}
!235 = !{ptr @fold_rtx, ptr @simplify_ternary_operation, i64 619826}
!236 = !{ptr @lookup, ptr @exp_equiv_p, i64 2956248}
!237 = !{ptr @merge_equiv_classes, ptr @exp_equiv_p, i64 202817}
!238 = !{ptr @merge_equiv_classes, ptr @rhs_regno, i64 552408}
!239 = !{ptr @merge_equiv_classes, ptr @get_cse_reg_info, i64 290881}
!240 = !{ptr @merge_equiv_classes, ptr @canon_hash, i64 202819}
!241 = !{ptr @merge_equiv_classes, ptr @delete_reg_equiv, i64 232167}
!242 = !{ptr @merge_equiv_classes, ptr @remove_pseudo_from_table, i64 29357}
!243 = !{ptr @merge_equiv_classes, ptr @remove_from_table, i64 202817}
!244 = !{ptr @merge_equiv_classes, ptr @insert_regs, i64 232175}
!245 = !{ptr @merge_equiv_classes, ptr @rehash_using_reg, i64 29359}
!246 = !{ptr @merge_equiv_classes, ptr @insert, i64 232175}
!247 = !{ptr @use_related_value, ptr @get_related_value, i64 26547}
!248 = !{ptr @use_related_value, ptr @rhs_regno, i64 1}
!249 = !{ptr @use_related_value, ptr @safe_hash, i64 26546}
!250 = !{ptr @use_related_value, ptr @lookup, i64 26546}
!251 = !{ptr @use_related_value, ptr @rtx_equal_p, i64 23317}
!252 = !{ptr @use_related_value, ptr @get_integer_term, i64 29902}
!253 = !{ptr @use_related_value, ptr @plus_constant, i64 14951}
!254 = !{ptr @notreg_cost, ptr @subreg_lowpart_p, i64 9114}
!255 = !{ptr @notreg_cost, ptr @rtx_cost, i64 6646083}
!256 = !{ptr @approx_reg_cost, ptr @for_each_rtx, i64 9332356}
!257 = !{ptr @insert_regs, ptr @rhs_regno, i64 2880230}
!258 = !{ptr @insert_regs, ptr @get_cse_reg_info, i64 4116356}
!259 = !{ptr @insert_regs, ptr @fancy_abort, i64 1}
!260 = !{ptr @insert_regs, ptr @make_regs_eqv, i64 135258}
!261 = !{ptr @insert_regs, ptr @make_new_qty, i64 2525201}
!262 = !{ptr @insert_regs, ptr @insert_regs, i64 2080}
!263 = !{ptr @insert_regs, ptr @mention_regs, i64 2844047}
!264 = !{ptr @rehash_using_reg, ptr @rhs_regno, i64 2885205}
!265 = !{ptr @rehash_using_reg, ptr @get_cse_reg_info, i64 2885204}
!266 = !{ptr @rehash_using_reg, ptr @reg_mentioned_p, i64 2013658}
!267 = !{ptr @rehash_using_reg, ptr @exp_equiv_p, i64 627337}
!268 = !{ptr @rehash_using_reg, ptr @safe_hash, i64 627335}
!269 = !{ptr @insert, ptr @notreg_cost, i64 3599413}
!270 = !{ptr @insert, ptr @approx_reg_cost, i64 6085116}
!271 = !{ptr @insert, ptr @insert_with_costs, i64 6085116}
!272 = !{ptr @invalidate_from_clobbers, ptr @invalidate, i64 348531}
!273 = !{ptr @invalidate_memory, ptr @remove_from_table, i64 739764}
!274 = !{ptr @invalidate_for_call, ptr @delete_reg_equiv, i64 13679710}
!275 = !{ptr @invalidate_for_call, ptr @get_cse_reg_info, i64 41039128}
!276 = !{ptr @invalidate_for_call, ptr @rhs_regno, i64 819122}
!277 = !{ptr @invalidate_for_call, ptr @end_hard_regno, i64 204984}
!278 = !{ptr @invalidate_for_call, ptr @remove_from_table, i64 130146}
!279 = !{ptr @mention_regs, ptr @rhs_regno, i64 3566464}
!280 = !{ptr @mention_regs, ptr @end_hard_regno, i64 869716}
!281 = !{ptr @mention_regs, ptr @get_cse_reg_info, i64 14932069}
!282 = !{ptr @mention_regs, ptr @remove_invalid_refs, i64 153}
!283 = !{ptr @mention_regs, ptr @remove_invalid_subreg_refs, i64 1}
!284 = !{ptr @mention_regs, ptr @insert_regs, i64 253458}
!285 = !{ptr @mention_regs, ptr @rehash_using_reg, i64 253456}
!286 = !{ptr @mention_regs, ptr @mention_regs, i64 6984427}
!287 = !{ptr @remove_invalid_refs, ptr @refers_to_regno_p, i64 738977}
!288 = !{ptr @remove_invalid_refs, ptr @remove_from_table, i64 133107}
!289 = !{ptr @equiv_constant, ptr @rhs_regno, i64 4176522}
!290 = !{ptr @equiv_constant, ptr @get_cse_reg_info, i64 4176521}
!291 = !{ptr @equiv_constant, ptr @lookup_as_function, i64 91320}
!292 = !{ptr @equiv_constant, ptr @subreg_lowpart_offset, i64 1}
!293 = !{ptr @equiv_constant, ptr @equiv_constant, i64 30437}
!294 = !{ptr @equiv_constant, ptr @simplify_subreg, i64 2}
!295 = !{ptr @equiv_constant, ptr @avoid_constant_pool_reference, i64 2089190}
!296 = !{ptr @equiv_constant, ptr @safe_hash, i64 2088730}
!297 = !{ptr @equiv_constant, ptr @lookup, i64 2088730}
!298 = !{ptr @find_comparison_args, ptr @rhs_regno, i64 1992042}
!299 = !{ptr @find_comparison_args, ptr @get_cse_reg_info, i64 577850}
!300 = !{ptr @find_comparison_args, ptr @safe_hash, i64 1507523}
!301 = !{ptr @find_comparison_args, ptr @lookup, i64 2085373}
!302 = !{ptr @find_comparison_args, ptr @exp_equiv_p, i64 2151437}
!303 = !{ptr @find_comparison_args, ptr @rtx_addr_can_trap_p, i64 636358}
!304 = !{ptr @find_comparison_args, ptr @reversed_comparison_code, i64 1}
!305 = !{ptr @find_comparison_args, ptr @fold_rtx, i64 2226906}
!306 = !{ptr @safe_hash, ptr @hash_rtx, i64 4668394}
!307 = !{ptr @lookup_as_function, ptr @rhs_regno, i64 522613}
!308 = !{ptr @lookup_as_function, ptr @get_cse_reg_info, i64 495868}
!309 = !{ptr @lookup_as_function, ptr @safe_hash, i64 161492}
!310 = !{ptr @lookup_as_function, ptr @lookup, i64 657360}
!311 = !{ptr @lookup_as_function, ptr @exp_equiv_p, i64 5628}
!312 = !{ptr @approx_reg_cost_1, ptr @rhs_regno, i64 8355622}
!313 = !{ptr @make_regs_eqv, ptr @get_cse_reg_info, i64 372204}
!314 = !{ptr @make_regs_eqv, ptr @fancy_abort, i64 1}
!315 = !{ptr @make_regs_eqv, ptr @bitmap_bit_p, i64 286627}
!316 = !{ptr @make_new_qty, ptr @fancy_abort, i64 1}
!317 = !{ptr @make_new_qty, ptr @get_cse_reg_info, i64 2464153}
!318 = !{ptr @insert_with_costs, ptr @rhs_regno, i64 7893733}
!319 = !{ptr @insert_with_costs, ptr @get_cse_reg_info, i64 5408029}
!320 = !{ptr @insert_with_costs, ptr @fancy_abort, i64 1}
!321 = !{ptr @insert_with_costs, ptr @add_to_hard_reg_set, i64 811481}
!322 = !{ptr @insert_with_costs, ptr @xmalloc, i64 1010}
!323 = !{ptr @insert_with_costs, ptr @fixed_base_plus_p, i64 5376353}
!324 = !{ptr @insert_with_costs, ptr @preferable, i64 3224821}
!325 = !{ptr @insert_with_costs, ptr @get_related_value, i64 39471}
!326 = !{ptr @insert_with_costs, ptr @safe_hash, i64 39469}
!327 = !{ptr @insert_with_costs, ptr @lookup, i64 39470}
!328 = !{ptr @insert_with_costs, ptr @insert, i64 39468}
!329 = !{ptr @add_to_hard_reg_set, ptr @end_hard_regno, i64 811481}
!330 = !{ptr @fixed_base_plus_p, ptr @rhs_regno, i64 3057370}
!331 = !{ptr @record_jump_cond, ptr @record_jump_cond_subreg, i64 2}
!332 = !{ptr @record_jump_cond, ptr @subreg_lowpart_p, i64 2}
!333 = !{ptr @record_jump_cond, ptr @rhs_regno, i64 634672}
!334 = !{ptr @record_jump_cond, ptr @get_cse_reg_info, i64 634670}
!335 = !{ptr @record_jump_cond, ptr @canon_hash, i64 517008}
!336 = !{ptr @record_jump_cond, ptr @lookup, i64 931181}
!337 = !{ptr @record_jump_cond, ptr @rtx_equal_p, i64 454935}
!338 = !{ptr @record_jump_cond, ptr @equiv_constant, i64 237866}
!339 = !{ptr @record_jump_cond, ptr @insert_regs, i64 369095}
!340 = !{ptr @record_jump_cond, ptr @rehash_using_reg, i64 4}
!341 = !{ptr @record_jump_cond, ptr @insert, i64 369095}
!342 = !{ptr @record_jump_cond, ptr @merge_equiv_classes, i64 192970}
!343 = !{ptr @delete_trivially_dead_insns, ptr @timevar_push_1, i64 1}
!344 = !{ptr @delete_trivially_dead_insns, ptr @xcalloc, i64 39708}
!345 = !{ptr @delete_trivially_dead_insns, ptr @count_reg_usage, i64 8031048}
!346 = !{ptr @delete_trivially_dead_insns, ptr @get_last_insn, i64 39708}
!347 = !{ptr @delete_trivially_dead_insns, ptr @insn_live_p, i64 7974827}
!348 = !{ptr @delete_trivially_dead_insns, ptr @dbg_cnt, i64 56222}
!349 = !{ptr @delete_trivially_dead_insns, ptr @delete_insn_and_edges, i64 56221}
!350 = !{ptr @delete_trivially_dead_insns, ptr @fprintf, i64 1}
!351 = !{ptr @delete_trivially_dead_insns, ptr @free, i64 39708}
!352 = !{ptr @delete_trivially_dead_insns, ptr @timevar_pop_1, i64 1}
!353 = !{ptr @count_reg_usage, ptr @rhs_regno, i64 10065421}
!354 = !{ptr @count_reg_usage, ptr @count_reg_usage, i64 40578913}
!355 = !{ptr @count_reg_usage, ptr @insn_could_throw_p, i64 9787703}
!356 = !{ptr @count_reg_usage, ptr @find_reg_equal_equiv_note, i64 9787703}
!357 = !{ptr @count_reg_usage, ptr @fancy_abort, i64 1}
!358 = !{ptr @insn_live_p, ptr @insn_could_throw_p, i64 7975025}
!359 = !{ptr @insn_live_p, ptr @set_live_p, i64 7309610}
!360 = !{ptr @insn_live_p, ptr @for_each_rtx, i64 1}
!361 = !{ptr @set_live_p, ptr @set_noop_p, i64 7308714}
!362 = !{ptr @set_live_p, ptr @is_dead_reg, i64 7303106}
!363 = !{ptr @set_live_p, ptr @side_effects_p, i64 52623}
!364 = !{ptr @is_dead_reg, ptr @rhs_regno, i64 4477686}
!365 = !{ptr @rest_of_handle_cse, ptr @dump_flow_info, i64 1}
!366 = !{ptr @rest_of_handle_cse, ptr @get_insns, i64 6763}
!367 = !{ptr @rest_of_handle_cse, ptr @max_reg_num, i64 6652}
!368 = !{ptr @rest_of_handle_cse, ptr @cse_main, i64 6652}
!369 = !{ptr @rest_of_handle_cse, ptr @timevar_push_1, i64 1}
!370 = !{ptr @rest_of_handle_cse, ptr @rebuild_jump_labels, i64 111}
!371 = !{ptr @rest_of_handle_cse, ptr @cleanup_cfg, i64 6651}
!372 = !{ptr @rest_of_handle_cse, ptr @timevar_pop_1, i64 1}
!373 = !{ptr @rest_of_handle_cse2, ptr @dump_flow_info, i64 1}
!374 = !{ptr @rest_of_handle_cse2, ptr @get_insns, i64 13526}
!375 = !{ptr @rest_of_handle_cse2, ptr @max_reg_num, i64 13304}
!376 = !{ptr @rest_of_handle_cse2, ptr @cse_main, i64 6652}
!377 = !{ptr @rest_of_handle_cse2, ptr @cse_condition_code_reg, i64 6652}
!378 = !{ptr @rest_of_handle_cse2, ptr @delete_trivially_dead_insns, i64 6652}
!379 = !{ptr @rest_of_handle_cse2, ptr @timevar_push_1, i64 1}
!380 = !{ptr @rest_of_handle_cse2, ptr @rebuild_jump_labels, i64 222}
!381 = !{ptr @rest_of_handle_cse2, ptr @cleanup_cfg, i64 223}
!382 = !{ptr @rest_of_handle_cse2, ptr @timevar_pop_1, i64 1}
!383 = !{ptr @cse_condition_code_reg, ptr @gen_rtx_REG, i64 14098}
!384 = !{ptr @cse_condition_code_reg, ptr @reg_referenced_p, i64 154918}
!385 = !{ptr @cse_condition_code_reg, ptr @single_set_2, i64 1}
!386 = !{ptr @cse_condition_code_reg, ptr @rhs_regno, i64 302993}
!387 = !{ptr @cse_condition_code_reg, ptr @modified_between_p, i64 150982}
!388 = !{ptr @cse_condition_code_reg, ptr @reg_set_p, i64 123}
!389 = !{ptr @cse_condition_code_reg, ptr @cse_cc_succs, i64 150981}
!390 = !{ptr @cse_condition_code_reg, ptr @fancy_abort, i64 1}
!391 = !{ptr @cse_condition_code_reg, ptr @cse_change_cc_mode_insn, i64 797}
!392 = !{ptr @cse_condition_code_reg, ptr @cse_change_cc_mode_insns, i64 797}
!393 = !{ptr @cse_cc_succs, ptr @ei_start_1, i64 186709}
!394 = !{ptr @cse_cc_succs, ptr @ei_cond, i64 532358}
!395 = !{ptr @cse_cc_succs, ptr @VEC_edge_base_length, i64 345648}
!396 = !{ptr @cse_cc_succs, ptr @modified_in_p, i64 507553}
!397 = !{ptr @cse_cc_succs, ptr @single_set_2, i64 2}
!398 = !{ptr @cse_cc_succs, ptr @rhs_regno, i64 751805}
!399 = !{ptr @cse_cc_succs, ptr @rtx_equal_p, i64 117090}
!400 = !{ptr @cse_cc_succs, ptr @fancy_abort, i64 3}
!401 = !{ptr @cse_cc_succs, ptr @delete_insn, i64 2}
!402 = !{ptr @cse_cc_succs, ptr @reg_set_p, i64 398449}
!403 = !{ptr @cse_cc_succs, ptr @cse_cc_succs, i64 45801}
!404 = !{ptr @cse_cc_succs, ptr @ei_next, i64 345649}
!405 = !{ptr @cse_cc_succs, ptr @gen_rtx_REG, i64 1}
!406 = !{ptr @cse_cc_succs, ptr @cse_change_cc_mode_insns, i64 330}
!407 = !{ptr @cse_cc_succs, ptr @delete_insn_and_edges, i64 1074}
!408 = !{ptr @cse_change_cc_mode_insn, ptr @for_each_rtx, i64 3872}
!409 = !{ptr @cse_change_cc_mode_insn, ptr @apply_change_group, i64 1936}
!410 = !{ptr @cse_change_cc_mode_insn, ptr @fancy_abort, i64 1}
!411 = !{ptr @cse_change_cc_mode_insns, ptr @reg_set_p, i64 1140}
!412 = !{ptr @cse_change_cc_mode_insns, ptr @cse_change_cc_mode_insn, i64 1135}
!413 = !{ptr @cse_change_cc_mode, ptr @rhs_regno, i64 7908}
!414 = !{ptr @cse_change_cc_mode, ptr @validate_change, i64 3066}
!415 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @get_insns, i64 4676}
!416 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @rebuild_jump_labels, i64 1560}
!417 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @max_reg_num, i64 3116}
!418 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @cse_main, i64 1558}
!419 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @purge_all_dead_edges, i64 1558}
!420 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @delete_trivially_dead_insns, i64 1558}
!421 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @timevar_push_1, i64 1}
!422 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @cleanup_cfg, i64 3}
!423 = !{ptr @rest_of_handle_cse_after_global_opts, ptr @timevar_pop_1, i64 1}
!424 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!425 = !{!"function_entry_count", i64 0}
!426 = !{!427, !427, i64 0}
!427 = !{!"any pointer", !428, i64 0}
!428 = !{!"omnipotent char", !429, i64 0}
!429 = !{!"Simple C/C++ TBAA"}
!430 = !{!431, !427, i64 0}
!431 = !{!"table_elt", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !432, i64 64, !432, i64 68, !432, i64 72, !428, i64 73, !428, i64 74, !428, i64 75}
!432 = !{!"int", !428, i64 0}
!433 = distinct !{!433, !434}
!434 = !{!"llvm.loop.mustprogress"}
!435 = !{!"function_entry_count", i64 25660828}
!436 = !{!"branch_weights", i32 1, i32 127}
!437 = !{!"branch_weights", i32 40040329, i32 1}
!438 = !{!432, !432, i64 0}
!439 = !{!"branch_weights", i32 8065537, i32 13750334, i32 176740, i32 8085724, i32 1855, i32 1, i32 1, i32 627644, i32 1777456, i32 6315664, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1239383, i32 1, i32 1, i32 1, i32 1}
!440 = !{!"branch_weights", i32 1871025481, i32 -1578514282}
!441 = !{!"branch_weights", i32 1557138212, i32 -1787165069}
!442 = !{!428, !428, i64 0}
!443 = !{!"branch_weights", i32 5023205, i32 1}
!444 = !{!"branch_weights", i32 564180, i32 4459026}
!445 = !{!"branch_weights", i32 12774637, i32 564180}
!446 = !{!"branch_weights", i32 2026597, i32 11159559}
!447 = !{!448, !432, i64 4}
!448 = !{!"cse_reg_info", !432, i64 0, !432, i64 4, !432, i64 8, !432, i64 12, !432, i64 16}
!449 = !{!"branch_weights", i32 176740, i32 1}
!450 = !{!"branch_weights", i32 1, i32 1855}
!451 = !{!452, !432, i64 0}
!452 = !{!"rtvec_def", !432, i64 0, !428, i64 8}
!453 = distinct !{!453, !434}
!454 = !{!"branch_weights", i32 1, i32 1777455}
!455 = !{!"branch_weights", i32 1777455, i32 20616315}
!456 = distinct !{!456, !434}
!457 = !{!"branch_weights", i32 1, i32 6315664}
!458 = !{!"branch_weights", i32 655693, i32 -1861090636}
!459 = !{!"branch_weights", i32 1847267152, i32 -98899583}
!460 = !{!"branch_weights", i32 63, i32 -1732386303}
!461 = !{!"branch_weights", i32 1, i32 1239383}
!462 = distinct !{!462, !434}
!463 = !{!"branch_weights", i32 1, i32 16407233, i32 1, i32 1, i32 1, i32 1, i32 1}
!464 = !{!"branch_weights", i32 8065537, i32 8341697}
!465 = distinct !{!465, !434}
!466 = !{!"branch_weights", i32 2100125697, i32 127}
!467 = distinct !{!467, !434}
!468 = !{!"function_entry_count", i64 143724765}
!469 = !{!"cse.c:rhs_regno"}
!470 = !{!"function_entry_count", i64 162776599}
!471 = !{!"cse.c:get_cse_reg_info"}
!472 = !{!448, !432, i64 0}
!473 = !{!"branch_weights", i32 152418117, i32 10358484}
!474 = !{!"cse.c:hash_rtx_string"}
!475 = distinct !{!475, !434}
!476 = !{!"function_entry_count", i64 10358483}
!477 = !{!"cse.c:get_cse_reg_info_1"}
!478 = !{!448, !432, i64 8}
!479 = !{!448, !432, i64 12}
!480 = !{!448, !432, i64 16}
!481 = !{!"function_entry_count", i64 17319132}
!482 = !{!"function_entry_count", i64 27654944}
!483 = !{!"branch_weights", i32 180985586, i32 1}
!484 = !{!"branch_weights", i32 196, i32 -1762919541}
!485 = !{!"branch_weights", i32 23604854, i32 2158709}
!486 = !{!"branch_weights", i32 23082490, i32 522365}
!487 = !{!"branch_weights", i32 6035181, i32 17047310}
!488 = !{!"branch_weights", i32 162300, i32 5872882}
!489 = !{!490, !428, i64 32}
!490 = !{!"mem_attrs", !427, i64 0, !427, i64 8, !427, i64 16, !432, i64 24, !432, i64 28, !428, i64 32}
!491 = !{!"branch_weights", i32 161521, i32 5873661}
!492 = !{!"branch_weights", i32 6035181, i32 1}
!493 = !{!"branch_weights", i32 4603159, i32 1, i32 1, i32 6230141, i32 738, i32 1, i32 1280, i32 331947, i32 3657104, i32 6035181, i32 1965117, i32 48425, i32 181996, i32 15390, i32 1306, i32 2904, i32 7815, i32 1}
!494 = !{!"branch_weights", i32 3558779, i32 98326}
!495 = !{!"branch_weights", i32 745493, i32 2813287}
!496 = !{!"branch_weights", i32 -1438081498, i32 139010066}
!497 = !{!"branch_weights", i32 3383596, i32 1}
!498 = !{!"branch_weights", i32 8307821, i32 -1491535841}
!499 = distinct !{!499, !434}
!500 = !{!"branch_weights", i32 1373388, i32 4661794}
!501 = !{!"branch_weights", i32 -1642095800, i32 1138}
!502 = !{!"branch_weights", i32 900177, i32 3761618}
!503 = !{i32 0, i32 2}
!504 = !{!"branch_weights", i32 93024, i32 2129924}
!505 = !{!"branch_weights", i32 80281, i32 2049644}
!506 = !{!"branch_weights", i32 172812, i32 493}
!507 = !{!"branch_weights", i32 -2010650334, i32 180985586}
!508 = distinct !{!508, !434}
!509 = !{!"branch_weights", i32 1, i32 3382372}
!510 = !{!"branch_weights", i32 1, i32 8168700, i32 1, i32 1, i32 7293, i32 1, i32 2273564, i32 1}
!511 = !{!"branch_weights", i32 3494304, i32 4674397}
!512 = distinct !{!512, !434}
!513 = !{!"branch_weights", i32 7247, i32 47}
!514 = !{!"branch_weights", i32 7067183, i32 3382372}
!515 = distinct !{!515, !434}
!516 = !{!"function_entry_count", i64 5386643}
!517 = !{!"cse.c:end_hard_regno"}
!518 = !{!"function_entry_count", i64 14862}
!519 = !{!520, !427, i64 8}
!520 = !{!"function", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72, !427, i64 80, !427, i64 88, !427, i64 96, !432, i64 104, !432, i64 108, !432, i64 112, !432, i64 116, !432, i64 120, !432, i64 124, !427, i64 128, !432, i64 136, !432, i64 137, !432, i64 138, !432, i64 138, !432, i64 138, !432, i64 138, !432, i64 138, !432, i64 138, !432, i64 138, !432, i64 139, !432, i64 139, !432, i64 139, !432, i64 139, !432, i64 139, !432, i64 139, !432, i64 139}
!521 = !{!522, !432, i64 32}
!522 = !{!"control_flow_graph", !427, i64 0, !427, i64 8, !427, i64 16, !432, i64 24, !432, i64 28, !432, i64 32, !427, i64 40, !432, i64 48, !428, i64 52, !428, i64 60, !432, i64 68, !432, i64 72}
!523 = !{!524, !432, i64 8}
!524 = !{!"param_info", !427, i64 0, !432, i64 8, !428, i64 12, !432, i64 16, !432, i64 20, !427, i64 24}
!525 = !{!526, !427, i64 8}
!526 = !{!"cse_basic_block_data", !432, i64 0, !432, i64 4, !427, i64 8}
!527 = !{!526, !432, i64 4}
!528 = !{!526, !432, i64 0}
!529 = !{i64 0, i64 8, !426, i64 8, i64 8, !426, i64 16, i64 8, !426, i64 24, i64 8, !426, i64 32, i64 8, !426}
!530 = !{!"branch_weights", i32 14862, i32 1}
!531 = !{!"branch_weights", i32 370753, i32 14862}
!532 = distinct !{!532, !434}
!533 = !{!522, !427, i64 16}
!534 = !{!535, !432, i64 80}
!535 = !{!"basic_block_def", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !428, i64 32, !427, i64 48, !427, i64 56, !428, i64 64, !536, i64 72, !432, i64 80, !432, i64 84, !432, i64 88, !432, i64 92, !432, i64 96}
!536 = !{!"long", !428, i64 0}
!537 = !{!536, !536, i64 0}
!538 = !{!"branch_weights", i32 339297, i32 383172}
!539 = !{!"branch_weights", i32 336854, i32 385615}
!540 = distinct !{!540, !434}
!541 = !{i8 0, i8 2}
!542 = !{!"branch_weights", i32 1, i32 385614}
!543 = !{!"branch_weights", i32 4760, i32 456870}
!544 = !{!"branch_weights", i32 456870, i32 1}
!545 = !{!"branch_weights", i32 385614, i32 76015}
!546 = distinct !{!546, !434}
!547 = !{!548, !427, i64 0}
!548 = !{!"simple_bitmap_def", !427, i64 0, !432, i64 8, !432, i64 12, !428, i64 16}
!549 = !{!"branch_weights", i32 4943930, i32 215087862}
!550 = !{!"cse.c:init_cse_reg_info"}
!551 = !{!"branch_weights", i32 9, i32 14855}
!552 = !{!"branch_weights", i32 5, i32 5}
!553 = !{!"branch_weights", i32 2, i32 4}
!554 = !{!"branch_weights", i32 7, i32 5}
!555 = distinct !{!555, !434}
!556 = !{!"branch_weights", i32 2, i32 8}
!557 = !{!"branch_weights", i32 17, i32 14847}
!558 = !{!"branch_weights", i32 17, i32 96024}
!559 = distinct !{!559, !434}
!560 = !{!"function_entry_count", i64 722467}
!561 = !{!"cse.c:VEC_basic_block_base_index"}
!562 = !{!"function_entry_count", i64 847242}
!563 = !{!"cse.c:cse_find_path"}
!564 = !{!"branch_weights", i32 385615, i32 461629}
!565 = !{!566, !427, i64 0}
!566 = !{!"branch_path", !427, i64 0}
!567 = !{!"branch_weights", i32 461629, i32 1}
!568 = !{!"branch_weights", i32 -1833385778, i32 1661774077}
!569 = !{!"branch_weights", i32 110029, i32 1}
!570 = !{!535, !427, i64 8}
!571 = !{!"branch_weights", i32 339240, i32 58}
!572 = !{!573, !427, i64 8}
!573 = !{!"rtl_bb_info", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !432, i64 32}
!574 = !{!"branch_weights", i32 1, i32 339240}
!575 = !{!576, !432, i64 48}
!576 = !{!"edge_def", !427, i64 0, !427, i64 8, !428, i64 16, !427, i64 24, !427, i64 32, !432, i64 40, !432, i64 44, !432, i64 48, !432, i64 52, !536, i64 56}
!577 = !{!"branch_weights", i32 142821, i32 196420}
!578 = !{!"branch_weights", i32 99040, i32 240201}
!579 = !{!576, !427, i64 8}
!580 = !{!522, !427, i64 8}
!581 = !{!"branch_weights", i32 1, i32 99040}
!582 = !{!"branch_weights", i32 23026, i32 76015}
!583 = !{!"branch_weights", i32 76015, i32 1}
!584 = !{!"branch_weights", i32 229268, i32 110029}
!585 = !{!"branch_weights", i32 -2147483648, i32 0}
!586 = !{!"branch_weights", i32 202325, i32 259305}
!587 = !{!"branch_weights", i32 1, i32 254674}
!588 = !{!"branch_weights", i32 259304, i32 1}
!589 = !{!"branch_weights", i32 315060, i32 202909}
!590 = !{!"branch_weights", i32 305580, i32 9481}
!591 = !{!"branch_weights", i32 45, i32 305536}
!592 = !{!"branch_weights", i32 136520, i32 169017}
!593 = !{!"branch_weights", i32 206487, i32 99050}
!594 = !{!"branch_weights", i32 0, i32 -2147483648}
!595 = !{!"branch_weights", i32 17265, i32 491180}
!596 = !{!"branch_weights", i32 227887, i32 263294}
!597 = !{!"branch_weights", i32 263294, i32 1}
!598 = !{!"branch_weights", i32 258664, i32 259304}
!599 = distinct !{!599, !434}
!600 = !{!"function_entry_count", i64 461628}
!601 = !{!"cse.c:cse_prescan_path"}
!602 = !{!"branch_weights", i32 461628, i32 1}
!603 = !{!"branch_weights", i32 1, i32 15150}
!604 = !{!"branch_weights", i32 916716, i32 5338054}
!605 = !{!"branch_weights", i32 -132296215, i32 1532195623}
!606 = !{!"branch_weights", i32 351214, i32 3550644}
!607 = !{!"branch_weights", i32 15150, i32 6224469}
!608 = distinct !{!608, !434}
!609 = !{!"branch_weights", i32 461628, i32 455088}
!610 = distinct !{!610, !434}
!611 = !{!"cse.c:cse_dump_path"}
!612 = distinct !{!612, !434}
!613 = !{!"function_entry_count", i64 456869}
!614 = !{!"cse.c:cse_extended_basic_block"}
!615 = !{!"branch_weights", i32 456869, i32 1}
!616 = !{!"branch_weights", i32 911946, i32 1}
!617 = distinct !{!617, !434}
!618 = !{!"branch_weights", i32 1, i32 11364}
!619 = !{!"branch_weights", i32 911946, i32 5328784}
!620 = !{!"branch_weights", i32 1397583037, i32 -473454750}
!621 = !{!"branch_weights", i32 11, i32 3901818}
!622 = !{!"branch_weights", i32 -186999092, i32 1502342624}
!623 = !{!"branch_weights", i32 2084676, i32 1817153}
!624 = !{!"branch_weights", i32 1815035, i32 2119}
!625 = !{!"branch_weights", i32 -1465109707, i32 233478822}
!626 = !{!"branch_weights", i32 82391370, i32 -2111036162}
!627 = !{!"branch_weights", i32 141837, i32 3759992}
!628 = !{!"branch_weights", i32 3759717, i32 276}
!629 = !{!"branch_weights", i32 11364, i32 6218001}
!630 = distinct !{!630, !434}
!631 = !{!"branch_weights", i32 455088, i32 456859}
!632 = !{!"branch_weights", i32 12, i32 455077}
!633 = !{!"branch_weights", i32 12, i32 1}
!634 = distinct !{!634, !434}
!635 = !{!"branch_weights", i32 455077, i32 456870}
!636 = !{!"branch_weights", i32 455015, i32 63}
!637 = !{!"branch_weights", i32 6, i32 455010}
!638 = !{!"branch_weights", i32 198429, i32 256582}
!639 = !{!"branch_weights", i32 455077, i32 456869}
!640 = distinct !{!640, !434}
!641 = !{!"branch_weights", i32 1, i32 456870}
!642 = !{!"function_entry_count", i64 1186549}
!643 = !{!"cse.c:SET_BIT"}
!644 = !{!"branch_weights", i32 1186550, i32 1}
!645 = !{!"function_entry_count", i64 7374039}
!646 = !{!"cse.c:VEC_edge_base_length"}
!647 = !{!"branch_weights", i32 1, i32 7374040}
!648 = !{!649, !432, i64 0}
!649 = !{!"VEC_edge_base", !432, i64 0, !432, i64 4, !428, i64 8}
!650 = !{!"function_entry_count", i64 4842900}
!651 = !{!"cse.c:VEC_edge_base_index"}
!652 = !{!"function_entry_count", i64 895753}
!653 = !{!"cse.c:single_pred_p"}
!654 = !{!535, !427, i64 0}
!655 = !{!"function_entry_count", i64 720875}
!656 = !{!"cse.c:single_succ_p"}
!657 = !{!"function_entry_count", i64 202908}
!658 = !{!"cse.c:single_succ_edge"}
!659 = !{!"branch_weights", i32 1, i32 202909}
!660 = !{!"cse.c:new_basic_block"}
!661 = !{!"branch_weights", i32 11193584, i32 3426226}
!662 = !{!431, !427, i64 16}
!663 = !{!"branch_weights", i32 3426226, i32 813463}
!664 = distinct !{!664, !434}
!665 = !{!"branch_weights", i32 456870, i32 14162939}
!666 = distinct !{!666, !434}
!667 = !{!"function_entry_count", i64 911945}
!668 = !{!"cse.c:bb_has_eh_pred"}
!669 = !{i64 0, i64 4, !438, i64 8, i64 8, !426}
!670 = !{i64 0, i64 8, !426}
!671 = !{!"branch_weights", i32 1, i32 911945}
!672 = !{!"branch_weights", i32 1483727, i32 1}
!673 = !{!"branch_weights", i32 911945, i32 571782}
!674 = distinct !{!674, !434}
!675 = !{!"cse.c:df_get_artificial_defs"}
!676 = !{!677, !427, i64 0}
!677 = !{!"df_scan_bb_info", !427, i64 0, !427, i64 8}
!678 = !{!"function_entry_count", i64 3891866}
!679 = !{!"cse.c:invalidate"}
!680 = !{!"branch_weights", i32 1, i32 3150736, i32 254, i32 1, i32 1, i32 740879}
!681 = !{!"branch_weights", i32 -1985533193, i32 -1757163293}
!682 = !{!"branch_weights", i32 1501148, i32 1649589}
!683 = !{!"branch_weights", i32 291, i32 1649298}
!684 = !{!"branch_weights", i32 291, i32 0}
!685 = distinct !{!685, !434}
!686 = !{!"branch_weights", i32 1286683, i32 362907}
!687 = !{!"branch_weights", i32 6353631, i32 5259362}
!688 = !{!"branch_weights", i32 2222813, i32 3036550}
!689 = !{!"branch_weights", i32 1776641, i32 446173}
!690 = !{!"branch_weights", i32 -1434262496, i32 1357884312}
!691 = !{!"branch_weights", i32 5259362, i32 0}
!692 = distinct !{!692, !434}
!693 = !{!"branch_weights", i32 362907, i32 11250086}
!694 = distinct !{!694, !434}
!695 = distinct !{!695, !434}
!696 = !{!"branch_weights", i32 740879, i32 1}
!697 = !{!"branch_weights", i32 11774681, i32 11933416}
!698 = !{!431, !428, i64 73}
!699 = !{!"branch_weights", i32 10432176, i32 1501241}
!700 = !{!431, !427, i64 8}
!701 = !{!"branch_weights", i32 827107, i32 674135}
!702 = !{!703, !427, i64 8}
!703 = !{!"check_dependence_data", !432, i64 0, !427, i64 8, !427, i64 16}
!704 = !{!703, !427, i64 16}
!705 = !{!703, !432, i64 0}
!706 = !{!"branch_weights", i32 1217974, i32 283268}
!707 = !{!"branch_weights", i32 11933416, i32 0}
!708 = distinct !{!708, !434}
!709 = !{!"branch_weights", i32 740879, i32 22967218}
!710 = distinct !{!710, !434}
!711 = !{!"function_entry_count", i64 12}
!712 = !{!"cse.c:flush_hash_table"}
!713 = !{!"branch_weights", i32 1, i32 384}
!714 = !{!"branch_weights", i32 2662, i32 1832}
!715 = !{!"branch_weights", i32 384, i32 4109}
!716 = distinct !{!716, !434}
!717 = !{!"branch_weights", i32 13, i32 372}
!718 = distinct !{!718, !434}
!719 = !{!"function_entry_count", i64 2934604}
!720 = !{!"cse.c:cse_process_notes"}
!721 = !{!"branch_weights", i32 2932363, i32 2243}
!722 = !{!"function_entry_count", i64 3901827}
!723 = !{!"cse.c:cse_insn"}
!724 = !{!"branch_weights", i32 297387, i32 3604442}
!725 = !{!"branch_weights", i32 195472, i32 101915}
!726 = !{!"branch_weights", i32 1, i32 101915}
!727 = !{!"branch_weights", i32 101915, i32 0}
!728 = distinct !{!728, !434}
!729 = !{!"branch_weights", i32 1542, i32 -1357675245, i32 298251233, i32 8491, i32 7133294, i32 70832918}
!730 = !{!731, !427, i64 0}
!731 = !{!"set", !427, i64 0, !427, i64 8, !427, i64 16, !432, i64 24, !432, i64 28, !427, i64 32, !428, i64 40, !428, i64 41, !432, i64 42, !427, i64 48, !432, i64 56, !427, i64 64, !427, i64 72}
!732 = !{!"branch_weights", i32 1208, i32 -116368477}
!733 = !{!"branch_weights", i32 213917, i32 3244887}
!734 = !{!"branch_weights", i32 351205, i32 1}
!735 = !{!"branch_weights", i32 349029, i32 356554}
!736 = !{!"branch_weights", i32 4227168, i32 -1406327537, i32 8272, i32 8256, i32 8240}
!737 = !{!"branch_weights", i32 351205, i32 354377}
!738 = distinct !{!738, !434}
!739 = !{!"branch_weights", i32 19, i32 -1742543676, i32 -1777454182, i32 18955672, i32 425383}
!740 = !{!"branch_weights", i32 1, i32 353868}
!741 = !{!"branch_weights", i32 2214, i32 351655}
!742 = !{!"branch_weights", i32 1, i32 2214}
!743 = !{!"branch_weights", i32 4, i32 349026}
!744 = !{!"branch_weights", i32 416, i32 2214}
!745 = !{!"branch_weights", i32 1, i32 416}
!746 = distinct !{!746, !434}
!747 = !{!"branch_weights", i32 1, i32 10}
!748 = !{!"branch_weights", i32 8400, i32 1}
!749 = !{!"branch_weights", i32 1, i32 8400}
!750 = !{!"branch_weights", i32 2136297956, i32 11185692}
!751 = !{!"branch_weights", i32 2064279, i32 1529982}
!752 = !{!"branch_weights", i32 1429181, i32 100802}
!753 = !{!"branch_weights", i32 100352, i32 451}
!754 = !{!"branch_weights", i32 1, i32 451}
!755 = !{!"branch_weights", i32 1, i32 3598754}
!756 = !{!"branch_weights", i32 -597957874, i32 328600, i32 1292, i32 328578, i32 958412008}
!757 = distinct !{!757, !434}
!758 = !{!"branch_weights", i32 3598754, i32 0}
!759 = distinct !{!759, !434}
!760 = !{!"branch_weights", i32 958851, i32 2639904}
!761 = !{!"branch_weights", i32 3498403, i32 100352}
!762 = !{!"branch_weights", i32 1, i32 100352}
!763 = !{!"branch_weights", i32 3, i32 100350}
!764 = !{!"branch_weights", i32 3, i32 1}
!765 = !{!"branch_weights", i32 1, i32 -1}
!766 = !{!731, !427, i64 8}
!767 = !{!"branch_weights", i32 817925, i32 2780830}
!768 = !{!"branch_weights", i32 627464, i32 190462}
!769 = !{!731, !432, i64 24}
!770 = !{!731, !428, i64 41}
!771 = !{!731, !428, i64 40}
!772 = !{!"branch_weights", i32 647025, i32 170901}
!773 = !{!"branch_weights", i32 617048, i32 29978}
!774 = !{!"branch_weights", i32 29978, i32 1}
!775 = !{!"branch_weights", i32 1709274533, i32 438209115}
!776 = !{!731, !427, i64 16}
!777 = !{!"branch_weights", i32 20405285, i32 2127078363}
!778 = !{!"branch_weights", i32 1832, i32 24389}
!779 = !{!431, !427, i64 48}
!780 = !{!"branch_weights", i32 24384, i32 6}
!781 = !{!"branch_weights", i32 1, i32 6}
!782 = !{!"branch_weights", i32 3573761, i32 606}
!783 = !{!"branch_weights", i32 1815845575, i32 331638073}
!784 = !{!"branch_weights", i32 1, i32 333231}
!785 = !{!431, !428, i64 74}
!786 = !{!"branch_weights", i32 609707, i32 115615}
!787 = !{!"branch_weights", i32 333231, i32 392090}
!788 = distinct !{!788, !434}
!789 = !{!"branch_weights", i32 345509, i32 3137632}
!790 = !{!"branch_weights", i32 9351, i32 3128282}
!791 = !{!"branch_weights", i32 1, i32 9351}
!792 = !{!"branch_weights", i32 2096435596, i32 51048052}
!793 = !{!"branch_weights", i32 29, i32 74557}
!794 = !{!"branch_weights", i32 1609082901, i32 538400747}
!795 = !{!"branch_weights", i32 1, i32 345537}
!796 = !{!731, !432, i64 56}
!797 = !{!731, !427, i64 48}
!798 = !{!731, !427, i64 64}
!799 = !{!"branch_weights", i32 104517766, i32 -1146126197}
!800 = !{!"branch_weights", i32 115615, i32 1}
!801 = !{!"branch_weights", i32 61652, i32 2147421996}
!802 = !{!"branch_weights", i32 461151, i32 3137604}
!803 = !{!"branch_weights", i32 29453, i32 431699}
!804 = !{!"branch_weights", i32 112811, i32 318889}
!805 = !{!431, !427, i64 56}
!806 = !{!"branch_weights", i32 111235, i32 1577}
!807 = !{!"branch_weights", i32 16406, i32 14624}
!808 = !{!"branch_weights", i32 1, i32 14624}
!809 = !{!"branch_weights", i32 341850, i32 104679}
!810 = !{!"branch_weights", i32 341850, i32 1}
!811 = !{!"branch_weights", i32 23738, i32 318113}
!812 = !{!"branch_weights", i32 2049010756, i32 -1582426036}
!813 = !{!"branch_weights", i32 1, i32 45266}
!814 = !{!"branch_weights", i32 40102, i32 1}
!815 = !{!"branch_weights", i32 1, i32 3101}
!816 = !{!"branch_weights", i32 3101, i32 5994}
!817 = distinct !{!817, !434}
!818 = !{!"branch_weights", i32 2064, i32 7032}
!819 = !{!820, !427, i64 0}
!820 = !{!"rtl_hooks", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32}
!821 = !{!"branch_weights", i32 127, i32 8832257}
!822 = distinct !{!822, !434}
!823 = !{!"branch_weights", i32 5606337, i32 2141877311}
!824 = !{!"branch_weights", i32 72367, i32 3509702}
!825 = !{!"branch_weights", i32 66582, i32 5786}
!826 = !{!"branch_weights", i32 27545, i32 39038}
!827 = !{!"branch_weights", i32 27544, i32 1}
!828 = !{!"branch_weights", i32 1, i32 53089}
!829 = !{!"branch_weights", i32 53089, i32 1}
!830 = distinct !{!830, !434}
!831 = !{!"branch_weights", i32 25545, i32 27544}
!832 = distinct !{!832, !434}
!833 = !{!834, !536, i64 1464}
!834 = !{!"gcc_target", !835, i64 0, !837, i64 368, !838, i64 664, !432, i64 744, !427, i64 752, !427, i64 760, !427, i64 768, !427, i64 776, !427, i64 784, !427, i64 792, !427, i64 800, !427, i64 808, !427, i64 816, !427, i64 824, !427, i64 832, !427, i64 840, !427, i64 848, !427, i64 856, !427, i64 864, !427, i64 872, !427, i64 880, !427, i64 888, !427, i64 896, !427, i64 904, !427, i64 912, !427, i64 920, !427, i64 928, !427, i64 936, !427, i64 944, !427, i64 952, !427, i64 960, !427, i64 968, !427, i64 976, !427, i64 984, !427, i64 992, !427, i64 1000, !427, i64 1008, !427, i64 1016, !427, i64 1024, !427, i64 1032, !427, i64 1040, !427, i64 1048, !427, i64 1056, !536, i64 1064, !536, i64 1072, !427, i64 1080, !427, i64 1088, !427, i64 1096, !427, i64 1104, !427, i64 1112, !427, i64 1120, !427, i64 1128, !427, i64 1136, !427, i64 1144, !427, i64 1152, !427, i64 1160, !427, i64 1168, !839, i64 1176, !427, i64 1232, !427, i64 1240, !427, i64 1248, !427, i64 1256, !427, i64 1264, !427, i64 1272, !427, i64 1280, !427, i64 1288, !427, i64 1296, !427, i64 1304, !427, i64 1312, !427, i64 1320, !427, i64 1328, !427, i64 1336, !427, i64 1344, !427, i64 1352, !427, i64 1360, !427, i64 1368, !427, i64 1376, !427, i64 1384, !427, i64 1392, !427, i64 1400, !427, i64 1408, !427, i64 1416, !427, i64 1424, !427, i64 1432, !427, i64 1440, !427, i64 1448, !427, i64 1456, !536, i64 1464, !840, i64 1472, !427, i64 1664, !427, i64 1672, !427, i64 1680, !427, i64 1688, !427, i64 1696, !427, i64 1704, !427, i64 1712, !427, i64 1720, !427, i64 1728, !427, i64 1736, !427, i64 1744, !427, i64 1752, !427, i64 1760, !427, i64 1768, !427, i64 1776, !841, i64 1784, !842, i64 1792, !843, i64 1896, !844, i64 1968, !427, i64 2016, !428, i64 2024, !428, i64 2025, !428, i64 2026, !428, i64 2027, !428, i64 2028, !428, i64 2029, !428, i64 2030, !428, i64 2031, !428, i64 2032, !428, i64 2033, !428, i64 2034, !428, i64 2035}
!835 = !{!"asm_out", !427, i64 0, !427, i64 8, !427, i64 16, !836, i64 24, !836, i64 56, !427, i64 88, !427, i64 96, !427, i64 104, !427, i64 112, !427, i64 120, !427, i64 128, !427, i64 136, !427, i64 144, !427, i64 152, !427, i64 160, !427, i64 168, !427, i64 176, !427, i64 184, !427, i64 192, !427, i64 200, !427, i64 208, !427, i64 216, !427, i64 224, !427, i64 232, !427, i64 240, !427, i64 248, !427, i64 256, !427, i64 264, !427, i64 272, !427, i64 280, !427, i64 288, !427, i64 296, !427, i64 304, !427, i64 312, !427, i64 320, !427, i64 328, !427, i64 336, !427, i64 344, !427, i64 352, !427, i64 360}
!836 = !{!"asm_int_op", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24}
!837 = !{!"sched", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72, !427, i64 80, !427, i64 88, !427, i64 96, !427, i64 104, !427, i64 112, !427, i64 120, !427, i64 128, !427, i64 136, !427, i64 144, !427, i64 152, !427, i64 160, !427, i64 168, !427, i64 176, !427, i64 184, !427, i64 192, !427, i64 200, !427, i64 208, !427, i64 216, !427, i64 224, !427, i64 232, !427, i64 240, !427, i64 248, !427, i64 256, !427, i64 264, !427, i64 272, !427, i64 280, !427, i64 288}
!838 = !{!"vectorize", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72}
!839 = !{!"addr_space", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48}
!840 = !{!"calls", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72, !427, i64 80, !427, i64 88, !427, i64 96, !427, i64 104, !427, i64 112, !427, i64 120, !427, i64 128, !427, i64 136, !427, i64 144, !427, i64 152, !427, i64 160, !427, i64 168, !427, i64 176, !427, i64 184}
!841 = !{!"c", !427, i64 0}
!842 = !{!"cxx", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72, !427, i64 80, !427, i64 88, !427, i64 96}
!843 = !{!"emutls", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !428, i64 64, !428, i64 65}
!844 = !{!"target_option_hooks", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40}
!845 = !{!"branch_weights", i32 3598754, i32 1}
!846 = !{!"branch_weights", i32 3593620, i32 5135}
!847 = !{!"branch_weights", i32 3149810, i32 448945}
!848 = !{!"branch_weights", i32 439484, i32 405409}
!849 = !{!"branch_weights", i32 17, i32 405393}
!850 = !{!"branch_weights", i32 165, i32 844712}
!851 = !{!"branch_weights", i32 1, i32 165}
!852 = !{!"branch_weights", i32 967339531, i32 1180144117}
!853 = !{!"branch_weights", i32 453788, i32 10513}
!854 = !{!"branch_weights", i32 5579, i32 448210}
!855 = !{!"branch_weights", i32 396037, i32 631}
!856 = !{!"branch_weights", i32 318, i32 314}
!857 = !{!"branch_weights", i32 1, i32 318}
!858 = !{!"branch_weights", i32 393730, i32 2621}
!859 = !{!"branch_weights", i32 2377, i32 245}
!860 = !{!"branch_weights", i32 1772, i32 606}
!861 = !{!"branch_weights", i32 382306, i32 13440}
!862 = !{!"branch_weights", i32 909, i32 12532}
!863 = !{!"branch_weights", i32 909, i32 1}
!864 = !{!"branch_weights", i32 314729, i32 530148}
!865 = !{!"branch_weights", i32 303145, i32 11585}
!866 = !{!431, !427, i64 32}
!867 = !{!"branch_weights", i32 844892, i32 0}
!868 = distinct !{!868, !434}
!869 = !{!"branch_weights", i32 448210, i32 3150545}
!870 = !{!"branch_weights", i32 3150537, i32 9}
!871 = !{!"branch_weights", i32 477648, i32 2672890}
!872 = !{!"branch_weights", i32 75359, i32 3523396}
!873 = !{!"branch_weights", i32 75359, i32 1}
!874 = !{!"branch_weights", i32 1, i32 75359}
!875 = !{!"branch_weights", i32 3593937, i32 4818}
!876 = !{!"branch_weights", i32 4735, i32 84}
!877 = !{!"branch_weights", i32 83, i32 4653}
!878 = !{!"branch_weights", i32 3570558, i32 28197}
!879 = !{!"branch_weights", i32 16613, i32 11585}
!880 = !{!"branch_weights", i32 1, i32 16613}
!881 = !{!"branch_weights", i32 16613, i32 1}
!882 = !{!"branch_weights", i32 16367, i32 -2113368479}
!883 = !{!"branch_weights", i32 27, i32 1}
!884 = !{!"branch_weights", i32 2708962, i32 449909}
!885 = !{!"branch_weights", i32 344569, i32 105341}
!886 = !{!"branch_weights", i32 1, i32 3608779}
!887 = !{!"branch_weights", i32 449909, i32 0}
!888 = distinct !{!888, !434}
!889 = !{!"branch_weights", i32 149, i32 449761}
!890 = !{!"branch_weights", i32 1, i32 149}
!891 = !{!431, !432, i64 64}
!892 = !{!431, !432, i64 68}
!893 = !{!"branch_weights", i32 3602741, i32 6039}
!894 = !{!"branch_weights", i32 4417, i32 1623}
!895 = !{!"branch_weights", i32 4417, i32 1}
!896 = !{!"branch_weights", i32 4336, i32 82}
!897 = !{!"branch_weights", i32 449170, i32 3155275}
!898 = !{!"branch_weights", i32 3147310, i32 7966}
!899 = !{!"branch_weights", i32 3147222, i32 89}
!900 = !{!"branch_weights", i32 3147100, i32 123}
!901 = !{!"branch_weights", i32 9805, i32 447541}
!902 = !{!"branch_weights", i32 9790, i32 16}
!903 = !{!"branch_weights", i32 7973, i32 1818}
!904 = !{!"branch_weights", i32 432589, i32 16785}
!905 = !{!"branch_weights", i32 11668, i32 5118}
!906 = !{!"branch_weights", i32 649353, i32 2959427}
!907 = !{!"branch_weights", i32 4488, i32 644866}
!908 = !{!"branch_weights", i32 416, i32 4073}
!909 = !{!"branch_weights", i32 4073, i32 1}
!910 = !{!"branch_weights", i32 1, i32 3604292}
!911 = distinct !{!911, !434}
!912 = !{!"branch_weights", i32 3599478, i32 4815}
!913 = !{!"branch_weights", i32 620762, i32 2978717}
!914 = !{!"branch_weights", i32 74, i32 620689}
!915 = !{!"branch_weights", i32 27, i32 620663}
!916 = !{!"branch_weights", i32 1, i32 27}
!917 = !{!"branch_weights", i32 25121913, i32 -1245865537}
!918 = !{!"branch_weights", i32 867479209, i32 29454, i32 29453}
!919 = !{!"branch_weights", i32 10026, i32 3594194}
!920 = !{!"branch_weights", i32 2236865, i32 1361890}
!921 = !{!"branch_weights", i32 270869, i32 1965997}
!922 = !{!"branch_weights", i32 235207, i32 35663}
!923 = !{!924, !432, i64 28}
!924 = !{!"qty_table_elem", !427, i64 0, !427, i64 8, !427, i64 16, !432, i64 24, !432, i64 28, !432, i64 32, !432, i64 36, !432, i64 38}
!925 = !{!"branch_weights", i32 233346, i32 1862}
!926 = !{!"branch_weights", i32 1094, i32 769}
!927 = !{!"branch_weights", i32 1, i32 1094}
!928 = !{!"branch_weights", i32 3584954, i32 13801}
!929 = !{!"branch_weights", i32 10848, i32 2954}
!930 = !{!"branch_weights", i32 10841, i32 8}
!931 = !{!"branch_weights", i32 404220869, i32 -1541262203}
!932 = !{!"branch_weights", i32 209657, i32 250992}
!933 = !{!"branch_weights", i32 -1931333589, i32 13103, i32 383632999}
!934 = !{!"branch_weights", i32 1, i32 29277}
!935 = !{!"branch_weights", i32 11452, i32 198206}
!936 = !{!"branch_weights", i32 -1582049533, i32 191490, i32 753, i32 191477}
!937 = distinct !{!937, !434}
!938 = !{!731, !427, i64 32}
!939 = !{!"branch_weights", i32 740876, i32 2857879}
!940 = !{!"branch_weights", i32 1, i32 740876}
!941 = !{!"branch_weights", i32 2237118, i32 1361637}
!942 = !{!"branch_weights", i32 1497966, i32 739153}
!943 = !{!731, !432, i64 28}
!944 = !{!"branch_weights", i32 1, i32 2237118}
!945 = !{!"branch_weights", i32 3594260, i32 4495}
!946 = !{!"branch_weights", i32 44859, i32 -2116121296}
!947 = !{!"branch_weights", i32 620689, i32 2977993}
!948 = !{!"branch_weights", i32 2897627, i32 701029}
!949 = !{!"branch_weights", i32 -1795074816, i32 321998720, i32 4026, i32 1707782, i32 4027, i32 4027}
!950 = !{!"branch_weights", i32 2891891, i32 5737}
!951 = !{!"branch_weights", i32 1, i32 5737}
!952 = !{!"branch_weights", i32 0, i32 3598754}
!953 = distinct !{!953, !434}
!954 = !{!"branch_weights", i32 45001832, i32 2102481816}
!955 = !{!"branch_weights", i32 30341035, i32 -1516339692}
!956 = !{!"branch_weights", i32 74547, i32 1}
!957 = !{!"branch_weights", i32 1, i32 74547}
!958 = !{!"branch_weights", i32 74541, i32 7}
!959 = !{!"branch_weights", i32 1, i32 7}
!960 = !{!"branch_weights", i32 72716, i32 1832}
!961 = !{!"branch_weights", i32 72577, i32 140}
!962 = !{!"branch_weights", i32 74546, i32 1}
!963 = distinct !{!963, !434}
!964 = !{!"branch_weights", i32 701128, i32 2897627}
!965 = !{!"branch_weights", i32 2677263, i32 220365}
!966 = !{!"branch_weights", i32 2671215, i32 6049}
!967 = !{!"branch_weights", i32 1, i32 2671215}
!968 = !{!"branch_weights", i32 327284, i32 2343932}
!969 = !{!"branch_weights", i32 2574299, i32 96917}
!970 = !{!"branch_weights", i32 2263498, i32 407718}
!971 = !{!"branch_weights", i32 1774399, i32 489100}
!972 = !{!"branch_weights", i32 253228, i32 235873}
!973 = !{!"branch_weights", i32 253178, i32 51}
!974 = !{!"branch_weights", i32 2232472, i32 438744}
!975 = !{!"branch_weights", i32 -2011501308, i32 4589186}
!976 = !{!"branch_weights", i32 880, i32 1}
!977 = !{!"branch_weights", i32 886235, i32 41306}
!978 = distinct !{!978, !434}
!979 = !{!"branch_weights", i32 740453, i32 2157175}
!980 = !{!"branch_weights", i32 295702, i32 444752}
!981 = !{!"branch_weights", i32 38766, i32 256937}
!982 = !{!"branch_weights", i32 339988, i32 167415}
!983 = !{!"branch_weights", i32 167415, i32 1}
!984 = !{!"branch_weights", i32 15077, i32 152339}
!985 = !{!"branch_weights", i32 1, i32 167415}
!986 = !{!731, !427, i64 72}
!987 = distinct !{!987, !434}
!988 = !{!"branch_weights", i32 -1728105094, i32 185370803}
!989 = !{!"branch_weights", i32 3598754, i32 303074}
!990 = !{!"branch_weights", i32 255, i32 -2091487370, i32 259481, i32 756433897, i32 510, i32 255}
!991 = distinct !{!991, !434}
!992 = !{!"branch_weights", i32 2983681, i32 918148}
!993 = !{!"branch_weights", i32 1, i32 2983681}
!994 = !{!"branch_weights", i32 297385, i32 3}
!995 = !{!"branch_weights", i32 3598754, i32 303072}
!996 = !{!"branch_weights", i32 2156922, i32 740706}
!997 = !{!"branch_weights", i32 659210, i32 1497713}
!998 = !{!"branch_weights", i32 2156921, i32 1}
!999 = !{!"branch_weights", i32 115144, i32 2041779}
!1000 = distinct !{!1000, !434}
!1001 = distinct !{!1001, !434}
!1002 = !{!"branch_weights", i32 2157175, i32 740453}
!1003 = !{!"branch_weights", i32 1, i32 740453}
!1004 = !{!"branch_weights", i32 220259, i32 2677369}
!1005 = !{!"branch_weights", i32 67226, i32 2610144}
!1006 = !{!431, !427, i64 40}
!1007 = !{!"branch_weights", i32 67226, i32 6287}
!1008 = distinct !{!1008, !434}
!1009 = !{!"branch_weights", i32 61251, i32 67226}
!1010 = !{!"branch_weights", i32 60822, i32 6833}
!1011 = distinct !{!1011, !434}
!1012 = distinct !{!1012, !434}
!1013 = !{!"branch_weights", i32 2897627, i32 1}
!1014 = !{!"branch_weights", i32 1, i32 2897627}
!1015 = !{!"branch_weights", i32 281080, i32 2616548}
!1016 = !{!"branch_weights", i32 -1615878143, i32 256000, i32 1022}
!1017 = !{!"branch_weights", i32 82, i32 169}
!1018 = !{!"branch_weights", i32 165, i32 6724}
!1019 = !{!"branch_weights", i32 350172994, i32 898655327, i32 898655327}
!1020 = !{!"branch_weights", i32 1, i32 1882934}
!1021 = !{!"branch_weights", i32 1882685, i32 250}
!1022 = !{!"branch_weights", i32 1223592, i32 659094}
!1023 = !{!"branch_weights", i32 2616548, i32 1}
!1024 = !{!"branch_weights", i32 250, i32 2616299}
!1025 = !{!"branch_weights", i32 14109, i32 6724}
!1026 = !{!"branch_weights", i32 1, i32 82}
!1027 = !{!"branch_weights", i32 1, i32 163}
!1028 = !{!"branch_weights", i32 82, i32 82}
!1029 = !{!"branch_weights", i32 26188824, i32 2121294824}
!1030 = !{!"branch_weights", i32 82, i32 1}
!1031 = !{!"branch_weights", i32 127, i32 10369}
!1032 = distinct !{!1032, !434}
!1033 = !{!"branch_weights", i32 163, i32 163}
!1034 = distinct !{!1034, !434}
!1035 = distinct !{!1035, !434}
!1036 = !{!"branch_weights", i32 3594260, i32 307567}
!1037 = !{!"branch_weights", i32 700713, i32 2893548}
!1038 = !{!"branch_weights", i32 2152843, i32 740706}
!1039 = !{!"branch_weights", i32 2152843, i32 1}
!1040 = !{!"branch_weights", i32 271519, i32 1881325}
!1041 = !{!"branch_weights", i32 81194, i32 190326}
!1042 = !{!"branch_weights", i32 81188, i32 7}
!1043 = !{!"branch_weights", i32 35423, i32 45766}
!1044 = !{!573, !427, i64 0}
!1045 = !{!"branch_weights", i32 1, i32 16514}
!1046 = !{!"branch_weights", i32 669813507, i32 458892588, i32 190678356}
!1047 = !{!"branch_weights", i32 16514, i32 12478}
!1048 = !{!"branch_weights", i32 17814, i32 17610}
!1049 = !{!"branch_weights", i32 13360, i32 4455}
!1050 = !{!"branch_weights", i32 3566, i32 9795}
!1051 = !{!"branch_weights", i32 3439, i32 128}
!1052 = !{!"branch_weights", i32 3439, i32 1}
!1053 = !{!"function_entry_count", i64 21662607}
!1054 = !{!"cse.c:check_for_label_ref"}
!1055 = !{!"branch_weights", i32 87846685, i32 -1210368261}
!1056 = !{!"branch_weights", i32 597737, i32 2114}
!1057 = !{!"branch_weights", i32 1, i32 597737}
!1058 = !{!"branch_weights", i32 2114, i32 1}
!1059 = !{!"branch_weights", i32 1, i32 2114}
!1060 = !{!"cse.c:have_eh_succ_edges"}
!1061 = distinct !{!1061, !434}
!1062 = !{!"function_entry_count", i64 11}
!1063 = !{!"cse.c:RESET_BIT"}
!1064 = !{!"function_entry_count", i64 455009}
!1065 = !{!"cse.c:record_jump_equiv"}
!1066 = !{!"branch_weights", i32 1, i32 455010}
!1067 = !{!"branch_weights", i32 320204, i32 134807}
!1068 = !{!"branch_weights", i32 134807, i32 320204}
!1069 = !{!"branch_weights", i32 55, i32 320150}
!1070 = !{!"branch_weights", i32 404062, i32 50895}
!1071 = !{!"function_entry_count", i64 1098654}
!1072 = !{!"cse.c:ei_start_1"}
!1073 = !{!"function_entry_count", i64 2928030}
!1074 = !{!"cse.c:ei_cond"}
!1075 = !{!"branch_weights", i32 1829377, i32 1098655}
!1076 = !{!"function_entry_count", i64 1829376}
!1077 = !{!"cse.c:ei_next"}
!1078 = !{!"branch_weights", i32 1, i32 1829377}
!1079 = !{!"branch_weights", i32 1829377, i32 1}
!1080 = !{!1081, !432, i64 0}
!1081 = !{!"", !432, i64 0, !427, i64 8}
!1082 = !{!"cse.c:ei_end_p"}
!1083 = !{!"branch_weights", i32 1, i32 2928031}
!1084 = !{!"cse.c:ei_edge"}
!1085 = !{!"function_entry_count", i64 13173564}
!1086 = !{!"cse.c:ei_container"}
!1087 = !{!"branch_weights", i32 1, i32 13173565}
!1088 = !{!"cse.c:df_scan_get_bb_info"}
!1089 = !{!1090, !432, i64 16}
!1090 = !{!"dataflow", !427, i64 0, !427, i64 8, !432, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !432, i64 48, !428, i64 52, !428, i64 53, !428, i64 54}
!1091 = !{!1090, !427, i64 8}
!1092 = !{!"function_entry_count", i64 9925759}
!1093 = !{!"cse.c:canon_hash"}
!1094 = !{!"function_entry_count", i64 16860139}
!1095 = !{!"cse.c:delete_reg_equiv"}
!1096 = !{!"branch_weights", i32 486796, i32 16373345}
!1097 = !{!1098, !432, i64 4}
!1098 = !{!"reg_eqv_elem", !432, i64 0, !432, i64 4}
!1099 = !{!1098, !432, i64 0}
!1100 = !{!"branch_weights", i32 479385, i32 7412}
!1101 = !{!924, !432, i64 32}
!1102 = !{!"branch_weights", i32 479785, i32 7012}
!1103 = !{!"function_entry_count", i64 1530505}
!1104 = !{!"cse.c:remove_pseudo_from_table"}
!1105 = !{!"branch_weights", i32 1446114, i32 84392}
!1106 = !{!"branch_weights", i32 84392, i32 0}
!1107 = distinct !{!1107, !434}
!1108 = !{!"function_entry_count", i64 1845422}
!1109 = !{!"cse.c:remove_from_table"}
!1110 = !{!"branch_weights", i32 1684259, i32 161165}
!1111 = !{!"branch_weights", i32 440058, i32 1405366}
!1112 = !{!"branch_weights", i32 126700, i32 0}
!1113 = distinct !{!1113, !434}
!1114 = !{!431, !427, i64 24}
!1115 = !{!"branch_weights", i32 1471197, i32 374227}
!1116 = !{!"branch_weights", i32 1720724, i32 124700}
!1117 = !{!"branch_weights", i32 1720724, i32 1}
!1118 = distinct !{!1118, !434, !1119, !1120}
!1119 = !{!"llvm.loop.isvectorized", i32 1}
!1120 = !{!"llvm.loop.unroll.runtime.disable"}
!1121 = !{!"branch_weights", i32 1844460, i32 964}
!1122 = !{!"branch_weights", i32 1, i32 964}
!1123 = !{!"branch_weights", i32 964, i32 31244}
!1124 = distinct !{!1124, !434}
!1125 = !{!"branch_weights", i32 30, i32 935}
!1126 = !{!"function_entry_count", i64 5066010}
!1127 = !{!"cse.c:check_dependence"}
!1128 = !{!"branch_weights", i32 1, i32 5066011}
!1129 = !{!"branch_weights", i32 1502038, i32 3563974}
!1130 = !{!"function_entry_count", i64 1614896}
!1131 = !{!"cse.c:lookup_for_remove"}
!1132 = !{!"branch_weights", i32 1614897, i32 1}
!1133 = !{!"branch_weights", i32 803960, i32 726546}
!1134 = !{!"branch_weights", i32 381604, i32 344943}
!1135 = !{!"branch_weights", i32 84392, i32 297213}
!1136 = !{!"branch_weights", i32 726546, i32 0}
!1137 = distinct !{!1137, !434}
!1138 = distinct !{!1138, !434}
!1139 = !{!"function_entry_count", i64 13274}
!1140 = !{!"cse.c:cse_rtx_varies_p"}
!1141 = !{!"branch_weights", i32 3855, i32 9421}
!1142 = !{!"branch_weights", i32 3442, i32 414}
!1143 = !{!"branch_weights", i32 3442, i32 1}
!1144 = !{!924, !427, i64 0}
!1145 = !{!"branch_weights", i32 5940, i32 7336}
!1146 = !{!"branch_weights", i32 5934, i32 7}
!1147 = !{!"branch_weights", i32 5914, i32 21}
!1148 = !{!"branch_weights", i32 2472, i32 3443}
!1149 = !{!"branch_weights", i32 2472, i32 1}
!1150 = !{!"branch_weights", i32 5914, i32 27}
!1151 = !{!"branch_weights", i32 1, i32 5914}
!1152 = !{!"cse.c:cse_process_notes_1"}
!1153 = !{!"branch_weights", i32 142893, i32 129623, i32 845, i32 7268, i32 1, i32 1041, i32 1, i32 1, i32 1, i32 1, i32 1, i32 59360, i32 2478967, i32 1889, i32 131, i32 99, i32 8652, i32 103848}
!1154 = !{!"branch_weights", i32 1, i32 142892}
!1155 = !{!"branch_weights", i32 100802, i32 2380054}
!1156 = !{!"branch_weights", i32 1817153, i32 663703}
!1157 = !{!"branch_weights", i32 1, i32 8880}
!1158 = !{!"branch_weights", i32 53088, i32 50761}
!1159 = !{!"branch_weights", i32 51813, i32 1276}
!1160 = !{!"branch_weights", i32 80057, i32 4225}
!1161 = !{!"branch_weights", i32 1, i32 1212}
!1162 = !{!"branch_weights", i32 284712, i32 1}
!1163 = !{!"branch_weights", i32 142892, i32 141820}
!1164 = distinct !{!1164, !434}
!1165 = !{!"function_entry_count", i64 25949488}
!1166 = !{!"cse.c:canon_reg"}
!1167 = !{!"branch_weights", i32 1, i32 25949489}
!1168 = !{!"branch_weights", i32 9633349, i32 1236998, i32 1, i32 129121, i32 5508339, i32 1051, i32 1, i32 1, i32 731790, i32 1243749, i32 1, i32 1, i32 7465099}
!1169 = !{!"branch_weights", i32 2546990, i32 4918110}
!1170 = !{!"branch_weights", i32 2796797, i32 2121314}
!1171 = !{!"branch_weights", i32 2796780, i32 18}
!1172 = !{!"branch_weights", i32 1, i32 2796797}
!1173 = !{!"branch_weights", i32 1, i32 9633348}
!1174 = !{!"branch_weights", i32 500893774, i32 -1250716149, i32 174}
!1175 = distinct !{!1175, !434}
!1176 = !{!"branch_weights", i32 10642125, i32 9633348}
!1177 = distinct !{!1177, !434}
!1178 = !{!"function_entry_count", i64 17410749}
!1179 = !{!"cse.c:validate_canon_reg"}
!1180 = !{!"branch_weights", i32 1, i32 17410750}
!1181 = !{!"branch_weights", i32 -1982236770, i32 265}
!1182 = !{!"function_entry_count", i64 9125081}
!1183 = !{!"cse.c:fold_rtx"}
!1184 = !{!"branch_weights", i32 1, i32 9125082}
!1185 = !{!"branch_weights", i32 2409017, i32 1658549, i32 4277, i32 29333, i32 1781911, i32 982, i32 1, i32 1, i32 71880, i32 854, i32 2252353, i32 618549, i32 1, i32 1, i32 297387}
!1186 = !{!"branch_weights", i32 1656779, i32 6047}
!1187 = distinct !{!1187, !434}
!1188 = !{!"branch_weights", i32 287808, i32 9580}
!1189 = !{!"branch_weights", i32 1, i32 2418595}
!1190 = !{!"branch_weights", i32 5392933, i32 1}
!1191 = !{!"branch_weights", i32 1241610, i32 264958, i32 1672757, i32 25597, i32 860, i32 1566079, i32 2385, i32 618630, i32 65, i32 1, i32 1}
!1192 = !{!"branch_weights", i32 1, i32 2418596, i32 2354511, i32 619828}
!1193 = !{!"branch_weights", i32 -1399716053, i32 8946412}
!1194 = !{!"branch_weights", i32 16573, i32 41}
!1195 = !{!"branch_weights", i32 877, i32 15737}
!1196 = !{!"branch_weights", i32 346, i32 15392}
!1197 = !{!"branch_weights", i32 49271022, i32 -1875477544}
!1198 = !{!"branch_weights", i32 5375794, i32 17140}
!1199 = !{!"branch_weights", i32 1, i32 17140}
!1200 = !{!"branch_weights", i32 2418595, i32 2974338}
!1201 = distinct !{!1201, !434}
!1202 = !{!"branch_weights", i32 2132395477, i32 15088171}
!1203 = !{!"branch_weights", i32 14700, i32 2294}
!1204 = !{!"branch_weights", i32 9580, i32 64086, i32 84263, i32 574183, i32 752978, i32 313684, i32 1, i32 619828, i32 1}
!1205 = !{!"branch_weights", i32 38677, i32 -1816249567}
!1206 = !{!"branch_weights", i32 63275, i32 812}
!1207 = !{!"branch_weights", i32 38379, i32 -81909773}
!1208 = !{!"branch_weights", i32 658445, i32 1}
!1209 = !{!"branch_weights", i32 10288, i32 -907859343}
!1210 = !{!"branch_weights", i32 1, i32 658445}
!1211 = !{!"branch_weights", i32 1391, i32 657055}
!1212 = !{!"branch_weights", i32 656959, i32 97}
!1213 = !{!"branch_weights", i32 33, i32 65}
!1214 = !{!"branch_weights", i32 254730653, i32 1892752995}
!1215 = !{!"branch_weights", i32 455461, i32 123572}
!1216 = !{!"branch_weights", i32 455461, i32 1}
!1217 = !{!"branch_weights", i32 188808, i32 266654}
!1218 = !{!"branch_weights", i32 1, i32 266654}
!1219 = !{!"branch_weights", i32 1, i32 266653}
!1220 = !{!"branch_weights", i32 4674, i32 523526}
!1221 = !{!"branch_weights", i32 520708, i32 2819}
!1222 = !{!"branch_weights", i32 1, i32 2819}
!1223 = !{!"branch_weights", i32 3, i32 2817}
!1224 = !{!"branch_weights", i32 266653, i32 261546}
!1225 = distinct !{!1225, !434}
!1226 = !{!"branch_weights", i32 2147459488, i32 24160}
!1227 = !{!"branch_weights", i32 526250, i32 130740}
!1228 = !{!"branch_weights", i32 45059, i32 481192}
!1229 = !{!"branch_weights", i32 8, i32 45052}
!1230 = !{!"branch_weights", i32 526243, i32 130740}
!1231 = !{!"branch_weights", i32 526243, i32 1}
!1232 = !{!"branch_weights", i32 224493, i32 301751}
!1233 = !{!"branch_weights", i32 18234, i32 283518}
!1234 = !{!"branch_weights", i32 18234, i32 1}
!1235 = !{!"branch_weights", i32 1, i32 43418}
!1236 = !{!"branch_weights", i32 2, i32 43417}
!1237 = !{!"branch_weights", i32 526242, i32 130740}
!1238 = !{!"branch_weights", i32 526242, i32 1}
!1239 = !{!"branch_weights", i32 511820, i32 14423}
!1240 = !{!"branch_weights", i32 -401884215, i32 1925365, i32 7609, i32 7609, i32 7610}
!1241 = !{!"branch_weights", i32 493101, i32 18468}
!1242 = !{!924, !427, i64 16}
!1243 = !{!"branch_weights", i32 32819, i32 72}
!1244 = !{!"branch_weights", i32 2454, i32 30366}
!1245 = !{!"branch_weights", i32 30366, i32 1}
!1246 = !{!"branch_weights", i32 1590, i32 31230}
!1247 = !{!924, !432, i64 24}
!1248 = !{!"branch_weights", i32 5, i32 1586}
!1249 = !{!"branch_weights", i32 61, i32 16}
!1250 = !{!"branch_weights", i32 1, i32 16}
!1251 = !{!"branch_weights", i32 1125321028, i32 1022162620}
!1252 = !{!"branch_weights", i32 311953, i32 758}
!1253 = !{!"branch_weights", i32 758, i32 1}
!1254 = !{!"branch_weights", i32 2049051568, i32 98432080}
!1255 = !{!"branch_weights", i32 77956, i32 579023}
!1256 = !{!"branch_weights", i32 663445, i32 177482, i32 11795, i32 1, i32 1, i32 1, i32 1, i32 16773, i32 101337, i32 2880, i32 15216, i32 39258, i32 25005, i32 13481}
!1257 = !{!"branch_weights", i32 35299, i32 142184}
!1258 = !{!"branch_weights", i32 168, i32 142017}
!1259 = !{!"branch_weights", i32 1, i32 168}
!1260 = !{!"branch_weights", i32 177081, i32 402}
!1261 = !{!"branch_weights", i32 1, i32 402}
!1262 = !{!"branch_weights", i32 137747, i32 4438}
!1263 = !{!"branch_weights", i32 -1927599497, i32 -2125604716}
!1264 = !{!"branch_weights", i32 49, i32 65821}
!1265 = !{!"branch_weights", i32 1, i32 49}
!1266 = distinct !{!1266, !434}
!1267 = !{!"branch_weights", i32 11787, i32 9}
!1268 = !{!"branch_weights", i32 1, i32 9}
!1269 = !{!"branch_weights", i32 1553840489, i32 593643159}
!1270 = !{!"branch_weights", i32 253030, i32 4662}
!1271 = !{!"branch_weights", i32 1926419881, i32 1492327}
!1272 = !{!"branch_weights", i32 245880, i32 7119}
!1273 = !{!"branch_weights", i32 1, i32 7119}
!1274 = !{!"branch_weights", i32 4979, i32 2141}
!1275 = !{!"branch_weights", i32 2064, i32 78}
!1276 = !{!"branch_weights", i32 261, i32 1804}
!1277 = !{!"branch_weights", i32 55976409, i32 -1883212685}
!1278 = !{!"branch_weights", i32 68121, i32 523}
!1279 = !{!"branch_weights", i32 472909, i32 3254416}
!1280 = !{!"branch_weights", i32 1, i32 2064}
!1281 = !{!"branch_weights", i32 261, i32 1}
!1282 = !{!"branch_weights", i32 2064, i32 1}
!1283 = !{!"branch_weights", i32 1043563, i32 21036}
!1284 = !{!"branch_weights", i32 171963, i32 892636}
!1285 = !{!"branch_weights", i32 619729, i32 100}
!1286 = !{!"branch_weights", i32 1, i32 619828}
!1287 = !{!"branch_weights", i32 618549, i32 1280}
!1288 = !{!"branch_weights", i32 2411970, i32 4487}
!1289 = !{!"function_entry_count", i64 10995660}
!1290 = !{!"cse.c:lookup"}
!1291 = !{!"branch_weights", i32 1754965, i32 5814629}
!1292 = !{!"branch_weights", i32 4950642, i32 863988}
!1293 = !{!"branch_weights", i32 -2062410370, i32 1558403993}
!1294 = !{!"branch_weights", i32 1524575, i32 510556}
!1295 = !{!"branch_weights", i32 5814629, i32 0}
!1296 = distinct !{!1296, !434}
!1297 = !{!"function_entry_count", i64 192987}
!1298 = !{!"cse.c:merge_equiv_classes"}
!1299 = !{!"branch_weights", i32 24123, i32 -1967206349}
!1300 = !{!"branch_weights", i32 29359, i32 202820}
!1301 = !{!"branch_weights", i32 1, i32 202820}
!1302 = !{!"branch_weights", i32 29359, i32 1}
!1303 = !{!"branch_weights", i32 372176534, i32 -1723970271}
!1304 = !{!"branch_weights", i32 192987, i32 39191}
!1305 = distinct !{!1305, !434}
!1306 = !{!"function_entry_count", i64 31028}
!1307 = !{!"cse.c:use_related_value"}
!1308 = !{!"branch_weights", i32 26550, i32 4480}
!1309 = !{!"branch_weights", i32 7, i32 4474}
!1310 = !{!"branch_weights", i32 26550, i32 1}
!1311 = !{!"branch_weights", i32 1, i32 26550}
!1312 = !{!"branch_weights", i32 1231559515, i32 915924133}
!1313 = !{!"branch_weights", i32 21786, i32 4474}
!1314 = !{!"branch_weights", i32 1, i32 7162}
!1315 = !{!"branch_weights", i32 14624, i32 21901}
!1316 = !{!"branch_weights", i32 7162, i32 29362}
!1317 = distinct !{!1317, !434}
!1318 = !{!"branch_weights", i32 12410247, i32 110604480}
!1319 = !{!"cse.c:try_const_anchors"}
!1320 = !{!"function_entry_count", i64 6655047}
!1321 = !{!"cse.c:notreg_cost"}
!1322 = !{!"branch_weights", i32 9231, i32 6645818}
!1323 = !{!"branch_weights", i32 9199, i32 33}
!1324 = !{!"branch_weights", i32 9199, i32 1}
!1325 = !{!"branch_weights", i32 9118, i32 82}
!1326 = !{!"branch_weights", i32 150, i32 8969}
!1327 = !{!"function_entry_count", i64 9332356}
!1328 = !{!"cse.c:approx_reg_cost"}
!1329 = !{!"branch_weights", i32 7784527, i32 1547831}
!1330 = !{!"function_entry_count", i64 12747616}
!1331 = !{!"cse.c:preferable"}
!1332 = !{!"branch_weights", i32 571522, i32 12176096}
!1333 = !{!"branch_weights", i32 2091, i32 12174006}
!1334 = !{!"branch_weights", i32 9393790, i32 2780217}
!1335 = !{!"branch_weights", i32 1422672, i32 1929067}
!1336 = !{!"branch_weights", i32 661451, i32 1267617}
!1337 = !{!"branch_weights", i32 40143, i32 1227475}
!1338 = !{!"branch_weights", i32 571489, i32 2078658}
!1339 = !{!"function_entry_count", i64 5585288}
!1340 = !{!"cse.c:insert_regs"}
!1341 = !{!"branch_weights", i32 -350631004, i32 -488216042, i32 5181222}
!1342 = !{!"branch_weights", i32 153021, i32 2588222}
!1343 = !{!"branch_weights", i32 -1868310802, i32 -2124907292}
!1344 = !{!"branch_weights", i32 672352, i32 1915871}
!1345 = !{!"branch_weights", i32 1, i32 1791802}
!1346 = !{!"branch_weights", i32 124069, i32 1906631}
!1347 = !{!"branch_weights", i32 124069, i32 1}
!1348 = !{!"branch_weights", i32 1791802, i32 238897}
!1349 = distinct !{!1349, !434}
!1350 = !{!"branch_weights", i32 679990, i32 1784165}
!1351 = !{!"branch_weights", i32 122469, i32 557522}
!1352 = !{!"branch_weights", i32 4, i32 122466}
!1353 = !{!"branch_weights", i32 3731, i32 1}
!1354 = !{!"branch_weights", i32 1651, i32 2081}
!1355 = !{!"function_entry_count", i64 2822268}
!1356 = !{!"cse.c:rehash_using_reg"}
!1357 = !{!"branch_weights", i32 2081, i32 2820189}
!1358 = !{!"branch_weights", i32 2588222, i32 234048}
!1359 = !{!"branch_weights", i32 2439731, i32 148492}
!1360 = !{!"branch_weights", i32 148489, i32 4}
!1361 = !{!"branch_weights", i32 2737943, i32 2013674}
!1362 = !{!"branch_weights", i32 1386333, i32 627342}
!1363 = !{!"branch_weights", i32 1, i32 627342}
!1364 = !{!"branch_weights", i32 1, i32 381570}
!1365 = !{!"branch_weights", i32 313663, i32 67908}
!1366 = !{!"branch_weights", i32 332404, i32 49167}
!1367 = !{!"branch_weights", i32 288405, i32 93166}
!1368 = !{!"branch_weights", i32 2013674, i32 0}
!1369 = distinct !{!1369, !434}
!1370 = !{!"branch_weights", i32 148489, i32 4603128}
!1371 = distinct !{!1371, !434}
!1372 = !{!"function_entry_count", i64 6085116}
!1373 = !{!"cse.c:insert"}
!1374 = !{!"branch_weights", i32 2485704, i32 3599414}
!1375 = !{!"cse.c:invalidate_from_clobbers"}
!1376 = !{!"branch_weights", i32 -912678926, i32 9525, i32 334556211}
!1377 = !{!"branch_weights", i32 1, i32 160, i32 8, i32 4, i32 2, i32 1}
!1378 = !{!"branch_weights", i32 4161551, i32 -1428796248, i32 8206, i32 32766, i32 8175, i32 8159}
!1379 = !{!"branch_weights", i32 354377, i32 351205}
!1380 = distinct !{!1380, !434}
!1381 = !{!"function_entry_count", i64 277358}
!1382 = !{!"cse.c:invalidate_memory"}
!1383 = !{!"branch_weights", i32 4837593, i32 4037864}
!1384 = !{!"branch_weights", i32 3298098, i32 739767}
!1385 = !{!"branch_weights", i32 4037864, i32 0}
!1386 = distinct !{!1386, !434}
!1387 = !{!"branch_weights", i32 277359, i32 8598098}
!1388 = distinct !{!1388, !434}
!1389 = !{!"function_entry_count", i64 297386}
!1390 = !{!"cse.c:invalidate_for_call"}
!1391 = !{!"branch_weights", i32 2081703, i32 13679757}
!1392 = !{!"branch_weights", i32 13679757, i32 1}
!1393 = !{!"branch_weights", i32 297387, i32 15464072}
!1394 = distinct !{!1394, !434}
!1395 = !{!"branch_weights", i32 181382, i32 116006}
!1396 = !{!"branch_weights", i32 2147336, i32 1564825}
!1397 = !{!"branch_weights", i32 819128, i32 745698}
!1398 = !{!"branch_weights", i32 614143, i32 204986}
!1399 = !{!"branch_weights", i32 107303, i32 1}
!1400 = !{!"branch_weights", i32 107303, i32 97683}
!1401 = distinct !{!1401, !434}
!1402 = !{!"branch_weights", i32 107304, i32 97683}
!1403 = !{!"branch_weights", i32 1564825, i32 0}
!1404 = distinct !{!1404, !434}
!1405 = !{!"branch_weights", i32 116006, i32 3596155}
!1406 = distinct !{!1406, !434}
!1407 = !{!"function_entry_count", i64 10569160}
!1408 = !{!"cse.c:mention_regs"}
!1409 = !{!"branch_weights", i32 1, i32 10569161}
!1410 = !{!"branch_weights", i32 -1306143519, i32 1235204424, i32 12555268, i32 281279955}
!1411 = !{!"branch_weights", i32 869717, i32 2019941}
!1412 = !{!"branch_weights", i32 2889656, i32 1}
!1413 = !{!"branch_weights", i32 1307082, i32 1582576}
!1414 = !{!"branch_weights", i32 1307072, i32 11}
!1415 = distinct !{!1415, !434}
!1416 = !{!"branch_weights", i32 29372, i32 1}
!1417 = !{!"branch_weights", i32 11726, i32 17647}
!1418 = !{!"branch_weights", i32 11584, i32 143}
!1419 = !{!"branch_weights", i32 1, i32 143}
!1420 = !{!"branch_weights", i32 39848, i32 6952257}
!1421 = !{!"branch_weights", i32 566516, i32 131363}
!1422 = !{!"branch_weights", i32 343150, i32 223367}
!1423 = !{!"branch_weights", i32 1, i32 223367}
!1424 = !{!"branch_weights", i32 51409, i32 646470}
!1425 = !{!"branch_weights", i32 21317, i32 30093}
!1426 = !{!"branch_weights", i32 1, i32 30093}
!1427 = !{!"branch_weights", i32 1, i32 7650133}
!1428 = !{!"branch_weights", i32 1947136281, i32 -1887180963, i32 344}
!1429 = distinct !{!1429, !434}
!1430 = !{!"branch_weights", i32 4982450, i32 7650133}
!1431 = distinct !{!1431, !434}
!1432 = !{!"function_entry_count", i64 115295}
!1433 = !{!"cse.c:remove_invalid_refs"}
!1434 = !{!"branch_weights", i32 2463210, i32 1226231}
!1435 = !{!"branch_weights", i32 487248, i32 738984}
!1436 = !{!"branch_weights", i32 605877, i32 133108}
!1437 = !{!"branch_weights", i32 1226231, i32 0}
!1438 = distinct !{!1438, !434}
!1439 = !{!"branch_weights", i32 115296, i32 3574145}
!1440 = distinct !{!1440, !434}
!1441 = !{!"cse.c:insert_const_anchors"}
!1442 = !{!"function_entry_count", i64 6458038}
!1443 = !{!"cse.c:equiv_constant"}
!1444 = !{!"branch_weights", i32 2286907, i32 4171133}
!1445 = !{!"branch_weights", i32 1889616, i32 397292}
!1446 = !{!"branch_weights", i32 1872190, i32 17427}
!1447 = !{!"branch_weights", i32 123402, i32 2147360246}
!1448 = !{!"branch_weights", i32 827802, i32 5630238}
!1449 = !{!"branch_weights", i32 -1895224858, i32 20808530, i32 1428107078}
!1450 = !{!"branch_weights", i32 30441, i32 1}
!1451 = !{!"branch_weights", i32 28454, i32 1988}
!1452 = !{!"branch_weights", i32 1, i32 28454}
!1453 = !{!"branch_weights", i32 30440, i32 2}
!1454 = !{!"branch_weights", i32 460, i32 2088733}
!1455 = !{!"branch_weights", i32 1, i32 2088733}
!1456 = !{!"branch_weights", i32 1996643, i32 1}
!1457 = !{!"branch_weights", i32 1, i32 86464}
!1458 = !{!"branch_weights", i32 185859, i32 5940}
!1459 = !{!"branch_weights", i32 5627, i32 314}
!1460 = !{!"branch_weights", i32 86464, i32 105334}
!1461 = distinct !{!1461, !434}
!1462 = !{!"function_entry_count", i64 1113453}
!1463 = !{!"cse.c:find_comparison_args"}
!1464 = !{!"branch_weights", i32 583615, i32 1}
!1465 = !{!"branch_weights", i32 1, i32 1641902}
!1466 = !{!"branch_weights", i32 1568419, i32 73484}
!1467 = !{!"branch_weights", i32 454966, i32 1113454}
!1468 = !{!"branch_weights", i32 373350892, i32 1774132756}
!1469 = !{!"branch_weights", i32 1356433, i32 17}
!1470 = !{!"branch_weights", i32 5287, i32 1581371}
!1471 = !{!"branch_weights", i32 1112064, i32 469308}
!1472 = !{!"branch_weights", i32 -1277437961, i32 -267273150, i32 -651788}
!1473 = !{!"branch_weights", i32 1, i32 166694}
!1474 = !{!"branch_weights", i32 1, i32 282248}
!1475 = !{!"branch_weights", i32 1, i32 469308}
!1476 = !{!"branch_weights", i32 529822, i32 1056835}
!1477 = distinct !{!1477, !434}
!1478 = !{!"branch_weights", i32 1, i32 1112064}
!1479 = !{!"branch_weights", i32 1058287, i32 583615}
!1480 = !{!"function_entry_count", i64 4668394}
!1481 = !{!"cse.c:safe_hash"}
!1482 = !{!"function_entry_count", i64 657360}
!1483 = !{!"cse.c:lookup_as_function"}
!1484 = !{!"branch_weights", i32 522615, i32 134747}
!1485 = !{!"branch_weights", i32 495870, i32 26746}
!1486 = !{!"branch_weights", i32 350298, i32 172318}
!1487 = !{!"branch_weights", i32 1, i32 299188}
!1488 = !{!"branch_weights", i32 7876, i32 619475}
!1489 = !{!"branch_weights", i32 1, i32 7876}
!1490 = !{!"branch_weights", i32 299188, i32 328162}
!1491 = distinct !{!1491, !434}
!1492 = !{!"cse.c:compute_const_anchors"}
!1493 = !{!"cse.c:find_reg_offset_for_const"}
!1494 = distinct !{!1494, !434}
!1495 = !{!"function_entry_count", i64 22086176}
!1496 = !{!"cse.c:approx_reg_cost_1"}
!1497 = !{!"branch_weights", i32 1, i32 22086177}
!1498 = !{!"branch_weights", i32 8355623, i32 13730555}
!1499 = !{!"branch_weights", i32 351, i32 -1732025410}
!1500 = !{!"branch_weights", i32 1547831, i32 5752200}
!1501 = !{!"branch_weights", i32 190378, i32 1357454}
!1502 = !{!"branch_weights", i32 190378, i32 1}
!1503 = !{!"function_entry_count", i64 124068}
!1504 = !{!"cse.c:make_regs_eqv"}
!1505 = !{!"branch_weights", i32 13, i32 124057}
!1506 = !{!"branch_weights", i32 124057, i32 1}
!1507 = !{!"branch_weights", i32 54218, i32 69840}
!1508 = !{!"branch_weights", i32 38539, i32 31302}
!1509 = !{!"branch_weights", i32 78302, i32 7218}
!1510 = !{!"branch_weights", i32 2003, i32 5216}
!1511 = !{!"branch_weights", i32 7, i32 83516}
!1512 = !{!"branch_weights", i32 1, i32 167059}
!1513 = !{!"branch_weights", i32 1, i32 83529}
!1514 = !{!"branch_weights", i32 0, i32 7}
!1515 = distinct !{!1515, !434}
!1516 = !{!"function_entry_count", i64 2464153}
!1517 = !{!"cse.c:make_new_qty"}
!1518 = !{!"branch_weights", i32 2464154, i32 1}
!1519 = !{!"cse.c:insert_with_costs"}
!1520 = !{!"branch_weights", i32 2485704, i32 1}
!1521 = !{!"branch_weights", i32 811482, i32 1674223}
!1522 = !{!"branch_weights", i32 1010, i32 6084108}
!1523 = !{!"branch_weights", i32 708763, i32 5376355}
!1524 = !{!"branch_weights", i32 4779659, i32 1305459}
!1525 = !{!"branch_weights", i32 3160780, i32 2924338}
!1526 = !{!"branch_weights", i32 1199408, i32 1724931}
!1527 = !{!"branch_weights", i32 1199407, i32 136096}
!1528 = distinct !{!1528, !434}
!1529 = !{!"branch_weights", i32 1527291, i32 317813}
!1530 = !{!"branch_weights", i32 120173, i32 1724931}
!1531 = distinct !{!1531, !434}
!1532 = !{!"branch_weights", i32 129577848, i32 2017905800}
!1533 = !{!"branch_weights", i32 1771910579, i32 -1010588506}
!1534 = !{!924, !427, i64 8}
!1535 = !{!"branch_weights", i32 1464309385, i32 683174263}
!1536 = !{!"branch_weights", i32 1873166, i32 42706}
!1537 = !{!"branch_weights", i32 1873166, i32 1}
!1538 = !{!"branch_weights", i32 2540066, i32 182184}
!1539 = !{!"branch_weights", i32 8, i32 182177}
!1540 = !{!"branch_weights", i32 1690990, i32 1031259}
!1541 = distinct !{!1541, !434}
!1542 = !{!"branch_weights", i32 612539, i32 3484796}
!1543 = !{!"branch_weights", i32 569834, i32 42706}
!1544 = !{!"branch_weights", i32 42706, i32 1}
!1545 = !{!"branch_weights", i32 39471, i32 6045647}
!1546 = !{!"branch_weights", i32 1, i32 39471}
!1547 = !{!"branch_weights", i32 20874, i32 1}
!1548 = !{!"branch_weights", i32 24789, i32 14683}
!1549 = !{!"branch_weights", i32 39471, i32 91760}
!1550 = distinct !{!1550, !434}
!1551 = !{!"function_entry_count", i64 811481}
!1552 = !{!"cse.c:add_to_hard_reg_set"}
!1553 = !{!"branch_weights", i32 1, i32 811482}
!1554 = distinct !{!1554, !434}
!1555 = !{!"function_entry_count", i64 5788516}
!1556 = !{!"cse.c:fixed_base_plus_p"}
!1557 = !{!"branch_weights", i32 2446756, i32 2880908, i32 460855}
!1558 = !{!"branch_weights", i32 46618895, i32 -336194264}
!1559 = !{!"branch_weights", i32 7702, i32 2839678}
!1560 = !{!"branch_weights", i32 1, i32 7702}
!1561 = !{!"branch_weights", i32 412163, i32 48693}
!1562 = !{!"cse.c:remove_invalid_subreg_refs"}
!1563 = distinct !{!1563, !434}
!1564 = distinct !{!1564, !434}
!1565 = !{!"cse.c:insert_const_anchor"}
!1566 = !{!"function_entry_count", i64 454955}
!1567 = !{!"cse.c:record_jump_cond"}
!1568 = !{!"branch_weights", i32 192983, i32 261974}
!1569 = !{!"branch_weights", i32 1, i32 192983}
!1570 = !{!"branch_weights", i32 1680777660, i32 466705988}
!1571 = !{!"branch_weights", i32 1, i32 205040}
!1572 = !{!"branch_weights", i32 360084, i32 94873}
!1573 = !{!"branch_weights", i32 360084, i32 1}
!1574 = !{!"branch_weights", i32 32825, i32 422132}
!1575 = !{!"branch_weights", i32 32825, i32 1}
!1576 = !{!"branch_weights", i32 236479752, i32 -1380329563}
!1577 = !{!"branch_weights", i32 147882, i32 -411602227}
!1578 = !{!"branch_weights", i32 4, i32 454953}
!1579 = !{!"branch_weights", i32 454953, i32 1}
!1580 = !{!"branch_weights", i32 192983, i32 261971}
!1581 = !{!"branch_weights", i32 -1772030432, i32 13073, i32 13073, i32 13073, i32 13073}
!1582 = !{!"branch_weights", i32 24098, i32 237874}
!1583 = !{!"branch_weights", i32 595344248, i32 -1132241338}
!1584 = !{!"branch_weights", i32 85226, i32 135247}
!1585 = !{!"branch_weights", i32 85226, i32 1}
!1586 = !{!"branch_weights", i32 21302, i32 199171}
!1587 = !{!"branch_weights", i32 10511, i32 10792}
!1588 = !{!"branch_weights", i32 10511, i32 1}
!1589 = !{!"branch_weights", i32 113132, i32 79852}
!1590 = !{!"branch_weights", i32 113132, i32 1}
!1591 = !{!"branch_weights", i32 160250, i32 32734}
!1592 = !{!"branch_weights", i32 160250, i32 1}
!1593 = !{!"cse.c:record_jump_cond_subreg"}
!1594 = !{!"function_entry_count", i64 39708}
!1595 = !{!"branch_weights", i32 39709, i32 1}
!1596 = !{!"branch_weights", i32 1, i32 39708}
!1597 = !{!"branch_weights", i32 -1712375652, i32 1004719797}
!1598 = !{!"branch_weights", i32 39708, i32 11037888}
!1599 = distinct !{!1599, !434}
!1600 = !{!"branch_weights", i32 56223, i32 7918804}
!1601 = !{!"branch_weights", i32 1, i32 56223}
!1602 = distinct !{!1602, !434}
!1603 = !{!"function_entry_count", i64 49716468}
!1604 = !{!"cse.c:count_reg_usage"}
!1605 = !{!"branch_weights", i32 1, i32 643510}
!1606 = !{!"branch_weights", i32 12480626, i32 8410635, i32 2367055, i32 1, i32 177819, i32 6420615, i32 1785, i32 1, i32 1, i32 1146766, i32 1306908, i32 689254, i32 7829673, i32 1, i32 643511, i32 6142183, i32 1245556, i32 210586, i32 1, i32 1}
!1607 = !{!"branch_weights", i32 151505, i32 8259131}
!1608 = !{!"branch_weights", i32 184, i32 689071}
!1609 = !{!"branch_weights", i32 643510, i32 48429449}
!1610 = !{!"branch_weights", i32 5004252, i32 2825422}
!1611 = !{!"branch_weights", i32 7370593, i32 459081}
!1612 = !{!"branch_weights", i32 7387738, i32 643511}
!1613 = !{!"branch_weights", i32 643511, i32 7387738}
!1614 = !{!"branch_weights", i32 7683244, i32 348005}
!1615 = !{!"branch_weights", i32 1, i32 348005}
!1616 = distinct !{!1616, !434}
!1617 = !{!"branch_weights", i32 -1523313334, i32 13161, i32 13161}
!1618 = !{!"branch_weights", i32 210586, i32 1}
!1619 = distinct !{!1619, !434}
!1620 = !{!"branch_weights", i32 1, i32 12480625}
!1621 = !{!"branch_weights", i32 627377134, i32 -1287084151, i32 104222997}
!1622 = !{!"branch_weights", i32 697511, i32 1}
!1623 = !{!"branch_weights", i32 758263, i32 697511}
!1624 = distinct !{!1624, !434}
!1625 = !{!"branch_weights", i32 12545846, i32 12480625}
!1626 = distinct !{!1626, !434}
!1627 = !{!"function_entry_count", i64 7975025}
!1628 = !{!"cse.c:insn_live_p"}
!1629 = !{!"branch_weights", i32 7331516, i32 643511}
!1630 = !{!"branch_weights", i32 8709085, i32 -1973649614, i32 243672203}
!1631 = !{!"branch_weights", i32 2382, i32 1}
!1632 = !{!"branch_weights", i32 4487, i32 -1170502410, i32 -1212211868, i32 30443898}
!1633 = !{!"branch_weights", i32 4390, i32 691751}
!1634 = !{!"branch_weights", i32 1387388, i32 2382}
!1635 = distinct !{!1635, !434}
!1636 = !{!"branch_weights", i32 1, i32 24809}
!1637 = distinct !{!1637, !434}
!1638 = !{!"function_entry_count", i64 7308714}
!1639 = !{!"cse.c:set_live_p"}
!1640 = !{!"branch_weights", i32 7303108, i32 5608}
!1641 = !{!"branch_weights", i32 7250486, i32 52623}
!1642 = !{!"branch_weights", i32 52623, i32 1}
!1643 = !{!"function_entry_count", i64 7303107}
!1644 = !{!"cse.c:is_dead_reg"}
!1645 = !{!"branch_weights", i32 4477687, i32 2825422}
!1646 = !{!"branch_weights", i32 3092416, i32 1385272}
!1647 = !{!"function_entry_count", i64 6652}
!1648 = !{!"cse.c:gate_handle_cse"}
!1649 = !{!"cse.c:rest_of_handle_cse"}
!1650 = !{!"branch_weights", i32 6653, i32 1}
!1651 = !{i32 0, i32 3}
!1652 = !{!"branch_weights", i32 1, i32 6653}
!1653 = !{!"branch_weights", i32 111, i32 6543}
!1654 = !{!"branch_weights", i32 111, i32 1}
!1655 = !{!"branch_weights", i32 42817393, i32 6543}
!1656 = !{!"cse.c:gate_handle_cse2"}
!1657 = !{!"cse.c:rest_of_handle_cse2"}
!1658 = !{!"branch_weights", i32 41370624, i32 1428126, i32 6432}
!1659 = !{!"branch_weights", i32 222, i32 1}
!1660 = !{!"cse.c:cse_condition_code_reg"}
!1661 = !{!834, !427, i64 1296}
!1662 = !{!522, !427, i64 0}
!1663 = !{!535, !427, i64 56}
!1664 = !{!"branch_weights", i32 1, i32 6652}
!1665 = !{!"branch_weights", i32 154110, i32 94239}
!1666 = !{!"branch_weights", i32 856, i32 153255}
!1667 = !{!"branch_weights", i32 1, i32 856}
!1668 = !{!"branch_weights", i32 856, i32 1}
!1669 = !{!"branch_weights", i32 1037, i32 153546}
!1670 = !{!"branch_weights", i32 -197237086, i32 32385390}
!1671 = !{!"branch_weights", i32 152278, i32 1}
!1672 = !{!"branch_weights", i32 2146722237, i32 761411}
!1673 = !{!"branch_weights", i32 152335, i32 6}
!1674 = !{!"branch_weights", i32 152219, i32 117}
!1675 = !{!"branch_weights", i32 152219, i32 1}
!1676 = !{!"branch_weights", i32 122, i32 1}
!1677 = !{!"branch_weights", i32 127, i32 19786369}
!1678 = distinct !{!1678, !434}
!1679 = !{!"branch_weights", i32 151155, i32 1065}
!1680 = !{!"branch_weights", i32 1065, i32 1}
!1681 = !{!"branch_weights", i32 262, i32 804}
!1682 = !{!"branch_weights", i32 6652, i32 241696}
!1683 = distinct !{!1683, !434}
!1684 = !{!"function_entry_count", i64 186709}
!1685 = !{!"cse.c:cse_cc_succs"}
!1686 = !{!"branch_weights", i32 1, i32 186709}
!1687 = !{!"branch_weights", i32 345651, i32 1}
!1688 = !{!"branch_weights", i32 165790, i32 179862}
!1689 = !{!"branch_weights", i32 3312659, i32 -865722368}
!1690 = !{!"branch_weights", i32 1, i32 34491}
!1691 = !{!"branch_weights", i32 -1908878863, i32 1561905490}
!1692 = !{!"branch_weights", i32 318394, i32 9318}
!1693 = !{!"branch_weights", i32 -380168661, i32 12294}
!1694 = !{!"branch_weights", i32 278035, i32 1}
!1695 = !{!"branch_weights", i32 233402, i32 72781}
!1696 = !{!"branch_weights", i32 58784, i32 174619}
!1697 = !{!"branch_weights", i32 58561, i32 224}
!1698 = !{!"branch_weights", i32 58561, i32 1}
!1699 = !{!"branch_weights", i32 -1519351578, i32 653892126}
!1700 = !{!"branch_weights", i32 8413, i32 2754}
!1701 = !{!"branch_weights", i32 1900, i32 855}
!1702 = !{!834, !427, i64 1304}
!1703 = !{!"branch_weights", i32 19197329, i32 -723840402}
!1704 = !{!"branch_weights", i32 1074, i32 1}
!1705 = !{!"branch_weights", i32 271, i32 804}
!1706 = !{!"branch_weights", i32 1, i32 804}
!1707 = !{!"branch_weights", i32 34491, i32 507739}
!1708 = distinct !{!1708, !434}
!1709 = !{!"branch_weights", i32 34486, i32 7}
!1710 = !{!"branch_weights", i32 7, i32 1}
!1711 = !{!"branch_weights", i32 186709, i32 158942}
!1712 = distinct !{!1712, !434}
!1713 = !{!"branch_weights", i32 2135165321, i32 12318327}
!1714 = !{!"branch_weights", i32 1, i32 1070}
!1715 = !{!"branch_weights", i32 745, i32 330}
!1716 = !{!"branch_weights", i32 330, i32 1}
!1717 = !{!"branch_weights", i32 1070, i32 4}
!1718 = distinct !{!1718, !434}
!1719 = !{!"function_entry_count", i64 1936}
!1720 = !{!"cse.c:cse_change_cc_mode_insn"}
!1721 = !{!"branch_weights", i32 -1847175173, i32 630564}
!1722 = !{!1723, !427, i64 0}
!1723 = !{!"change_cc_mode_args", !427, i64 0, !427, i64 8}
!1724 = !{!1723, !427, i64 8}
!1725 = !{!"branch_weights", i32 1, i32 1937}
!1726 = !{!"function_entry_count", i64 1132}
!1727 = !{!"cse.c:cse_change_cc_mode_insns"}
!1728 = !{!"branch_weights", i32 1, i32 1128}
!1729 = !{!"branch_weights", i32 -1418257897, i32 1261129}
!1730 = !{!"branch_weights", i32 1134, i32 5}
!1731 = !{!"branch_weights", i32 1128, i32 10}
!1732 = distinct !{!1732, !434}
!1733 = !{!"function_entry_count", i64 19512}
!1734 = !{!"cse.c:cse_change_cc_mode"}
!1735 = !{!"branch_weights", i32 1937, i32 17577}
!1736 = !{!"branch_weights", i32 3955, i32 13623}
!1737 = !{!"branch_weights", i32 3068, i32 888}
!1738 = !{!"branch_weights", i32 1, i32 3068}
!1739 = !{!"cse.c:gate_handle_cse_after_global_opts"}
!1740 = !{!"function_entry_count", i64 1558}
!1741 = !{!"cse.c:rest_of_handle_cse_after_global_opts"}
!1742 = !{!"branch_weights", i32 2427364, i32 3118, i32 1558}
!1743 = !{!"branch_weights", i32 2, i32 1}
