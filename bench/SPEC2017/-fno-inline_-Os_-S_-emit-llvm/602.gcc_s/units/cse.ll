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
define dso_local void @dump_class(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %2) #22
  %4 = load ptr, ptr @stderr, align 8, !tbaa !6
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  tail call void @print_rtl(ptr noundef %4, ptr noundef %5) #23
  %6 = load ptr, ptr @stderr, align 8, !tbaa !6
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 3, i64 1, ptr %6) #22
  %8 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %18, %11 ], [ %9, %1 ]
  %13 = load ptr, ptr @stderr, align 8, !tbaa !6
  %14 = load ptr, ptr %12, align 8, !tbaa !10
  tail call void @print_rtl(ptr noundef %13, ptr noundef %14) #23
  %15 = load ptr, ptr @stderr, align 8, !tbaa !6
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  %17 = getelementptr inbounds %struct.table_elt, ptr %12, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11, !llvm.loop !13

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
define dso_local i32 @hash_rtx_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  %9 = icmp eq ptr %0, null
  br i1 %9, label %335, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %5, null
  %12 = icmp ne ptr %3, null
  %13 = icmp eq ptr %2, null
  br label %14

14:                                               ; preds = %262, %10
  %15 = phi ptr [ %0, %10 ], [ %273, %262 ]
  %16 = phi i32 [ %1, %10 ], [ %276, %262 ]
  %17 = phi i32 [ 0, %10 ], [ %271, %262 ]
  br label %18

18:                                               ; preds = %14, %188
  %19 = phi ptr [ %15, %14 ], [ %191, %188 ]
  %20 = phi i32 [ %17, %14 ], [ %189, %188 ]
  br i1 %11, label %29, label %21

21:                                               ; preds = %18
  %22 = call i32 %5(ptr noundef nonnull %19, i32 noundef %16, ptr noundef nonnull %8, ptr noundef nonnull %7) #23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %8, align 8, !tbaa !6
  %26 = load i32, ptr %7, align 4, !tbaa !15
  %27 = call i32 @hash_rtx_cb(ptr noundef %25, i32 noundef %26, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef nonnull %5) #25
  %28 = add i32 %27, %20
  br label %335

29:                                               ; preds = %21, %18
  %30 = load i32, ptr %19, align 8
  %31 = and i32 %30, 65535
  %32 = trunc i32 %30 to i16
  switch i16 %32, label %277 [
    i16 37, label %33
    i16 39, label %78
    i16 30, label %92
    i16 32, label %99
    i16 31, label %118
    i16 33, label %126
    i16 44, label %146
    i16 45, label %153
    i16 43, label %172
    i16 24, label %193
    i16 74, label %207
    i16 75, label %207
    i16 76, label %207
    i16 77, label %207
    i16 78, label %207
    i16 79, label %207
    i16 36, label %207
    i16 46, label %207
    i16 26, label %207
    i16 19, label %207
    i16 17, label %209
  ]

33:                                               ; preds = %29
  %34 = call fastcc i32 @rhs_regno(ptr noundef nonnull %19) #25
  %35 = load i32, ptr @reload_completed, align 4
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %13, i1 true, i1 %36
  %38 = icmp ugt i32 %34, 52
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %68, label %40

40:                                               ; preds = %33
  %41 = load <4 x ptr>, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %42 = insertelement <4 x ptr> poison, ptr %19, i64 0
  %43 = shufflevector <4 x ptr> %42, <4 x ptr> poison, <4 x i32> zeroinitializer
  %44 = icmp eq <4 x ptr> %43, %41
  %45 = load ptr, ptr @pic_offset_table_rtx, align 8
  %46 = icmp eq ptr %19, %45
  %47 = freeze <4 x i1> %44
  %48 = bitcast <4 x i1> %47 to i4
  %49 = icmp ne i4 %48, 0
  %50 = select i1 %49, i1 true, i1 %46
  br i1 %50, label %68, label %51

51:                                               ; preds = %40
  %52 = zext nneg i32 %34 to i64
  %53 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !16
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %52
  %58 = load i8, ptr %57, align 1, !tbaa !16
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = lshr i32 %30, 16
  %62 = and i32 %61, 255
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !16
  %66 = icmp eq i8 %65, 1
  br i1 %66, label %68, label %67

67:                                               ; preds = %51, %60
  store i32 1, ptr %2, align 4, !tbaa !15
  br label %335

68:                                               ; preds = %40, %56, %60, %33
  %69 = add i32 %20, 4736
  %70 = icmp eq i8 %4, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = call fastcc ptr @get_cse_reg_info(i32 noundef %34) #25
  %73 = getelementptr inbounds %struct.cse_reg_info, ptr %72, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !17
  br label %75

75:                                               ; preds = %68, %71
  %76 = phi i32 [ %74, %71 ], [ %34, %68 ]
  %77 = add i32 %69, %76
  br label %335

78:                                               ; preds = %29
  %79 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !16
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 37
  br i1 %83, label %84, label %277

84:                                               ; preds = %78
  %85 = call fastcc i32 @rhs_regno(ptr noundef nonnull %80) #25
  %86 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load i32, ptr %86, align 8, !tbaa !16
  %88 = lshr i32 %87, 2
  %89 = add i32 %20, 4992
  %90 = add i32 %89, %85
  %91 = add i32 %90, %88
  br label %335

92:                                               ; preds = %29
  %93 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !16
  %95 = trunc i64 %94 to i32
  %96 = add i32 %20, 3840
  %97 = add i32 %96, %16
  %98 = add i32 %97, %95
  br label %335

99:                                               ; preds = %29
  %100 = lshr i32 %30, 16
  %101 = and i32 %100, 255
  %102 = icmp eq i32 %101, 0
  %103 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  br i1 %102, label %106, label %104

104:                                              ; preds = %99
  %105 = call i32 @real_hash(ptr noundef nonnull %103) #23
  br label %113

106:                                              ; preds = %99
  %107 = load i64, ptr %103, align 8, !tbaa !16
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load i64, ptr %109, align 8, !tbaa !16
  %111 = trunc i64 %110 to i32
  %112 = add i32 %111, %108
  br label %113

113:                                              ; preds = %106, %104
  %114 = phi i32 [ %105, %104 ], [ %112, %106 ]
  %115 = add i32 %20, 32
  %116 = add i32 %115, %101
  %117 = add i32 %116, %114
  br label %335

118:                                              ; preds = %29
  %119 = lshr i32 %30, 16
  %120 = and i32 %119, 255
  %121 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %122 = call i32 @fixed_hash(ptr noundef nonnull %121) #23
  %123 = add i32 %20, 31
  %124 = add i32 %123, %120
  %125 = add i32 %124, %122
  br label %335

126:                                              ; preds = %29
  %127 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !16
  %129 = load i32, ptr %128, align 8, !tbaa !19
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %335

131:                                              ; preds = %126
  %132 = zext nneg i32 %129 to i64
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi i64 [ 0, %131 ], [ %144, %133 ]
  %135 = phi i32 [ %20, %131 ], [ %143, %133 ]
  %136 = load ptr, ptr %127, align 8, !tbaa !16
  %137 = getelementptr inbounds %struct.rtvec_def, ptr %136, i64 0, i32 1, i64 %134
  %138 = load ptr, ptr %137, align 8, !tbaa !6
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 16
  %141 = and i32 %140, 255
  %142 = call i32 @hash_rtx_cb(ptr noundef nonnull %138, i32 noundef %141, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #25
  %143 = add i32 %142, %135
  %144 = add nuw nsw i64 %134, 1
  %145 = icmp eq i64 %144, %132
  br i1 %145, label %335, label %133, !llvm.loop !21

146:                                              ; preds = %29
  %147 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !16
  %149 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 1, i32 1
  %150 = load i32, ptr %149, align 8, !tbaa !16
  %151 = add i32 %20, 5632
  %152 = add i32 %151, %150
  br label %335

153:                                              ; preds = %29
  %154 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !16
  %156 = load i8, ptr %155, align 1, !tbaa !16
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %153, %158
  %159 = phi i8 [ %166, %158 ], [ %156, %153 ]
  %160 = phi ptr [ %162, %158 ], [ %155, %153 ]
  %161 = phi i32 [ %165, %158 ], [ 0, %153 ]
  %162 = getelementptr inbounds i8, ptr %160, i64 1
  %163 = zext i8 %159 to i32
  %164 = mul i32 %161, 129
  %165 = add i32 %164, %163
  %166 = load i8, ptr %162, align 1, !tbaa !16
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %158, !llvm.loop !22

168:                                              ; preds = %158, %153
  %169 = phi i32 [ 0, %153 ], [ %165, %158 ]
  %170 = add i32 %20, 5760
  %171 = add i32 %170, %169
  br label %335

172:                                              ; preds = %29
  br i1 %13, label %180, label %173

173:                                              ; preds = %172
  %174 = and i32 %30, 134217728
  %175 = icmp ne i32 %174, 0
  %176 = and i32 %30, 16711680
  %177 = icmp eq i32 %176, 65536
  %178 = or i1 %175, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32 1, ptr %2, align 4, !tbaa !15
  br label %335

180:                                              ; preds = %173, %172
  %181 = and i32 %30, 67108864
  %182 = icmp eq i32 %181, 0
  %183 = and i1 %12, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i32 1, ptr %3, align 4, !tbaa !15
  br label %185

185:                                              ; preds = %184, %180
  %186 = add i32 %20, 43
  %187 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  br label %188

188:                                              ; preds = %302, %185, %204
  %189 = phi i32 [ %205, %204 ], [ %186, %185 ], [ %293, %302 ]
  %190 = phi ptr [ %206, %204 ], [ %187, %185 ], [ %289, %302 ]
  %191 = load ptr, ptr %190, align 8, !tbaa !16
  %192 = icmp eq ptr %191, null
  br i1 %192, label %335, label %18

193:                                              ; preds = %29
  %194 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !16
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 134283263
  %198 = icmp eq i32 %197, 43
  br i1 %198, label %199, label %277

199:                                              ; preds = %193
  %200 = and i32 %196, 67108864
  %201 = icmp eq i32 %200, 0
  %202 = and i1 %12, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 1, ptr %3, align 4, !tbaa !15
  br label %204

204:                                              ; preds = %203, %199
  %205 = add i32 %20, 67
  %206 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  br label %188

207:                                              ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  br i1 %13, label %335, label %208

208:                                              ; preds = %207
  store i32 1, ptr %2, align 4, !tbaa !15
  br label %335

209:                                              ; preds = %29
  %210 = and i32 %30, 134217728
  %211 = icmp eq i32 %210, 0
  %212 = or i1 %13, %211
  br i1 %212, label %214, label %213

213:                                              ; preds = %209
  store i32 1, ptr %2, align 4, !tbaa !15
  br label %335

214:                                              ; preds = %209
  %215 = lshr i32 %30, 16
  %216 = and i32 %215, 255
  %217 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !16
  %219 = call fastcc i32 @hash_rtx_string(ptr noundef %218) #25
  %220 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %221 = load ptr, ptr %220, align 8, !tbaa !16
  %222 = call fastcc i32 @hash_rtx_string(ptr noundef %221) #25
  %223 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %224 = load i32, ptr %223, align 8, !tbaa !16
  %225 = add i32 %20, 17
  %226 = add i32 %225, %216
  %227 = add i32 %226, %219
  %228 = add i32 %227, %222
  %229 = add i32 %228, %224
  %230 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !16
  %232 = load i32, ptr %231, align 8, !tbaa !19
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %335, label %234

234:                                              ; preds = %214
  %235 = icmp sgt i32 %232, 1
  %236 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 2
  br i1 %235, label %239, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr %236, align 8, !tbaa !16
  br label %262

239:                                              ; preds = %234, %239
  %240 = phi i64 [ %257, %239 ], [ 1, %234 ]
  %241 = phi ptr [ %258, %239 ], [ %231, %234 ]
  %242 = phi i32 [ %256, %239 ], [ %229, %234 ]
  %243 = getelementptr inbounds %struct.rtvec_def, ptr %241, i64 0, i32 1, i64 %240
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  %245 = load i32, ptr %244, align 8
  %246 = lshr i32 %245, 16
  %247 = and i32 %246, 255
  %248 = call i32 @hash_rtx_cb(ptr noundef nonnull %244, i32 noundef %247, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #25
  %249 = load ptr, ptr %236, align 8, !tbaa !16
  %250 = getelementptr inbounds %struct.rtvec_def, ptr %249, i64 0, i32 1, i64 %240
  %251 = load ptr, ptr %250, align 8, !tbaa !6
  %252 = getelementptr inbounds %struct.rtx_def, ptr %251, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !16
  %254 = call fastcc i32 @hash_rtx_string(ptr noundef %253) #25
  %255 = add i32 %248, %242
  %256 = add i32 %255, %254
  %257 = add nuw nsw i64 %240, 1
  %258 = load ptr, ptr %230, align 8, !tbaa !16
  %259 = load i32, ptr %258, align 8, !tbaa !19
  %260 = sext i32 %259 to i64
  %261 = icmp slt i64 %257, %260
  br i1 %261, label %239, label %262, !llvm.loop !23

262:                                              ; preds = %239, %237
  %263 = phi ptr [ %238, %237 ], [ %249, %239 ]
  %264 = phi i32 [ %229, %237 ], [ %256, %239 ]
  %265 = phi ptr [ %231, %237 ], [ %258, %239 ]
  %266 = getelementptr inbounds %struct.rtvec_def, ptr %263, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !6
  %268 = getelementptr inbounds %struct.rtx_def, ptr %267, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !16
  %270 = call fastcc i32 @hash_rtx_string(ptr noundef %269) #25
  %271 = add i32 %270, %264
  %272 = getelementptr inbounds %struct.rtvec_def, ptr %265, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !6
  %274 = load i32, ptr %273, align 8
  %275 = lshr i32 %274, 16
  %276 = and i32 %275, 255
  br label %14

277:                                              ; preds = %29, %193, %78
  %278 = zext nneg i32 %31 to i64
  %279 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %278
  %280 = load i8, ptr %279, align 1, !tbaa !16
  %281 = lshr i32 %30, 16
  %282 = and i32 %281, 255
  %283 = add i32 %31, %20
  %284 = add i32 %283, %282
  %285 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %278
  %286 = load ptr, ptr %285, align 8, !tbaa !6
  %287 = icmp eq i8 %280, 0
  br i1 %287, label %335, label %288

288:                                              ; preds = %277
  %289 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %290 = zext i8 %280 to i64
  br label %291

291:                                              ; preds = %288, %332
  %292 = phi i64 [ %290, %288 ], [ %294, %332 ]
  %293 = phi i32 [ %284, %288 ], [ %333, %332 ]
  %294 = add nsw i64 %292, -1
  %295 = getelementptr inbounds i8, ptr %286, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !16
  switch i8 %296, label %331 [
    i8 101, label %302
    i8 69, label %297
    i8 115, label %322
    i8 105, label %327
    i8 48, label %332
    i8 116, label %332
  ]

297:                                              ; preds = %291
  %298 = getelementptr inbounds [1 x %union.rtunion_def], ptr %289, i64 0, i64 %294
  %299 = load ptr, ptr %298, align 8, !tbaa !16
  %300 = load i32, ptr %299, align 8, !tbaa !19
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %309, label %332

302:                                              ; preds = %291
  %303 = icmp eq i64 %294, 0
  br i1 %303, label %188, label %304

304:                                              ; preds = %302
  %305 = getelementptr inbounds [1 x %union.rtunion_def], ptr %289, i64 0, i64 %294
  %306 = load ptr, ptr %305, align 8, !tbaa !16
  %307 = call i32 @hash_rtx_cb(ptr noundef %306, i32 noundef 0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #25
  %308 = add i32 %307, %293
  br label %332

309:                                              ; preds = %297, %309
  %310 = phi i64 [ %317, %309 ], [ 0, %297 ]
  %311 = phi ptr [ %318, %309 ], [ %299, %297 ]
  %312 = phi i32 [ %316, %309 ], [ %293, %297 ]
  %313 = getelementptr inbounds %struct.rtvec_def, ptr %311, i64 0, i32 1, i64 %310
  %314 = load ptr, ptr %313, align 8, !tbaa !6
  %315 = call i32 @hash_rtx_cb(ptr noundef %314, i32 noundef 0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #25
  %316 = add i32 %315, %312
  %317 = add nuw nsw i64 %310, 1
  %318 = load ptr, ptr %298, align 8, !tbaa !16
  %319 = load i32, ptr %318, align 8, !tbaa !19
  %320 = sext i32 %319 to i64
  %321 = icmp slt i64 %317, %320
  br i1 %321, label %309, label %332, !llvm.loop !24

322:                                              ; preds = %291
  %323 = getelementptr inbounds [1 x %union.rtunion_def], ptr %289, i64 0, i64 %294
  %324 = load ptr, ptr %323, align 8, !tbaa !16
  %325 = call fastcc i32 @hash_rtx_string(ptr noundef %324) #25
  %326 = add i32 %325, %293
  br label %332

327:                                              ; preds = %291
  %328 = getelementptr inbounds [1 x %union.rtunion_def], ptr %289, i64 0, i64 %294
  %329 = load i32, ptr %328, align 8, !tbaa !16
  %330 = add i32 %329, %293
  br label %332

331:                                              ; preds = %291
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2545, ptr noundef nonnull @.str.4) #23
  br label %332

332:                                              ; preds = %309, %297, %304, %322, %327, %331, %291, %291
  %333 = phi i32 [ %293, %331 ], [ %293, %291 ], [ %293, %291 ], [ %330, %327 ], [ %326, %322 ], [ %308, %304 ], [ %293, %297 ], [ %316, %309 ]
  %334 = icmp sgt i64 %292, 1
  br i1 %334, label %291, label %335, !llvm.loop !25

335:                                              ; preds = %214, %188, %277, %332, %133, %6, %126, %67, %207, %75, %213, %208, %179, %168, %146, %118, %113, %92, %84, %24
  %336 = phi i32 [ %28, %24 ], [ 0, %213 ], [ 0, %208 ], [ 0, %179 ], [ %171, %168 ], [ %152, %146 ], [ %125, %118 ], [ %117, %113 ], [ %98, %92 ], [ %91, %84 ], [ %77, %75 ], [ 0, %67 ], [ %20, %207 ], [ %20, %126 ], [ 0, %6 ], [ %143, %133 ], [ %333, %332 ], [ %284, %277 ], [ %189, %188 ], [ %229, %214 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  ret i32 %336
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @get_cse_reg_info(i32 noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !6
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds %struct.cse_reg_info, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !26
  %6 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !15
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %9, label %8

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
define internal fastcc i32 @hash_rtx_string(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %6
  %7 = phi i8 [ %13, %6 ], [ %4, %3 ]
  %8 = phi ptr [ %10, %6 ], [ %0, %3 ]
  %9 = phi i32 [ %12, %6 ], [ 0, %3 ]
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = zext i8 %7 to i32
  %12 = add i32 %9, %11
  %13 = load i8, ptr %10, align 1, !tbaa !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !27

15:                                               ; preds = %6, %3, %1
  %16 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %12, %6 ]
  ret i32 %16
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @get_cse_reg_info_1(i32 noundef %0) unnamed_addr #7 {
  %2 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !15
  %3 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !6
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4
  store i32 %2, ptr %5, align 4, !tbaa !26
  %6 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 2
  store i32 1, ptr %6, align 4, !tbaa !28
  %7 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 3
  store i32 -1, ptr %7, align 4, !tbaa !29
  %8 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 4
  store i32 -1, ptr %8, align 4, !tbaa !30
  %9 = xor i32 %0, -1
  %10 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 %4, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call i32 @hash_rtx_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef null) #25
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @exp_equiv_p(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp ne i32 %2, 0
  %6 = icmp ne ptr %0, %1
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %278

8:                                                ; preds = %4, %136
  %9 = phi ptr [ %139, %136 ], [ %1, %4 ]
  %10 = phi ptr [ %138, %136 ], [ %0, %4 ]
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %9, null
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = icmp eq ptr %10, %9
  br label %278

16:                                               ; preds = %8
  %17 = load i32, ptr %10, align 8
  %18 = and i32 %17, 65535
  %19 = load i32, ptr %9, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %278

22:                                               ; preds = %16
  %23 = xor i32 %19, %17
  %24 = and i32 %23, 16711680
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %278

26:                                               ; preds = %22
  %27 = icmp eq i32 %18, 43
  br i1 %27, label %28, label %48

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %30, i64 0, i32 5
  %34 = load i8, ptr %33, align 8, !tbaa !31
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %28, %32
  %37 = phi i32 [ %35, %32 ], [ 0, %28 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %39, i64 0, i32 5
  %43 = load i8, ptr %42, align 8, !tbaa !31
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %36, %41
  %46 = phi i32 [ %44, %41 ], [ 0, %36 ]
  %47 = icmp eq i32 %37, %46
  br i1 %47, label %48, label %278

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
  ]

50:                                               ; preds = %48, %48, %48, %48, %48
  %51 = icmp eq ptr %10, %9
  br label %278

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !16
  %55 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !16
  %57 = icmp eq ptr %54, %56
  br label %278

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  %61 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = icmp eq ptr %60, %62
  br label %278

64:                                               ; preds = %48
  %65 = icmp eq i8 %3, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %64
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #25
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %69 = icmp eq i32 %67, %68
  br label %278

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %72 = icmp ult i32 %71, 53
  br i1 %72, label %73, label %77

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
  %84 = load i32, ptr %83, align 4, !tbaa !17
  %85 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %71) #25
  %86 = getelementptr inbounds %struct.cse_reg_info, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !17
  %88 = icmp eq i32 %84, %87
  %89 = and i1 %5, %88
  br i1 %89, label %90, label %278

90:                                               ; preds = %79
  %91 = icmp ult i32 %71, %80
  br i1 %91, label %92, label %278

92:                                               ; preds = %90, %92
  %93 = phi i32 [ %101, %92 ], [ %71, %90 ]
  %94 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %93) #25
  %95 = getelementptr inbounds %struct.cse_reg_info, ptr %94, i64 0, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !29
  %97 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %93) #25
  %98 = getelementptr inbounds %struct.cse_reg_info, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !28
  %100 = icmp eq i32 %96, %99
  %101 = add i32 %93, 1
  %102 = icmp ne i32 %101, %80
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %92, label %278, !llvm.loop !33

104:                                              ; preds = %48
  %105 = icmp eq i8 %3, 0
  br i1 %105, label %207, label %106

106:                                              ; preds = %104
  %107 = or i32 %19, %17
  %108 = and i32 %107, 134217728
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %278

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !16
  %113 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !16
  %115 = icmp eq ptr %112, %114
  br i1 %115, label %207, label %278

116:                                              ; preds = %48, %48, %48, %48, %48, %48, %48
  %117 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !16
  %119 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !16
  %121 = tail call i32 @exp_equiv_p(ptr noundef %118, ptr noundef %120, i32 noundef %2, i8 noundef zeroext %3) #25, !range !34
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !16
  %126 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !16
  %128 = tail call i32 @exp_equiv_p(ptr noundef %125, ptr noundef %127, i32 noundef %2, i8 noundef zeroext %3) #25, !range !34
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %278

130:                                              ; preds = %123, %116
  %131 = load ptr, ptr %117, align 8, !tbaa !16
  %132 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !16
  %134 = tail call i32 @exp_equiv_p(ptr noundef %131, ptr noundef %133, i32 noundef %2, i8 noundef zeroext %3) #25, !range !34
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %278, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !16
  %139 = load ptr, ptr %119, align 8, !tbaa !16
  %140 = icmp ne ptr %138, %139
  %141 = or i1 %5, %140
  br i1 %141, label %8, label %278

142:                                              ; preds = %48
  %143 = or i32 %19, %17
  %144 = and i32 %143, 134217728
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %278

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !16
  %149 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !16
  %151 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %148, ptr noundef nonnull dereferenceable(1) %150) #25
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %278

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !16
  %156 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !16
  %158 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(1) %157) #25
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %278

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %162 = load i32, ptr %161, align 8, !tbaa !16
  %163 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %164 = load i32, ptr %163, align 8, !tbaa !16
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %278

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !16
  %169 = load i32, ptr %168, align 8, !tbaa !19
  %170 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !16
  %172 = load i32, ptr %171, align 8, !tbaa !19
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
  %186 = load ptr, ptr %167, align 8, !tbaa !16
  %187 = getelementptr inbounds %struct.rtvec_def, ptr %186, i64 0, i32 1, i64 %182
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = load ptr, ptr %170, align 8, !tbaa !16
  %190 = getelementptr inbounds %struct.rtvec_def, ptr %189, i64 0, i32 1, i64 %182
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  %192 = tail call i32 @exp_equiv_p(ptr noundef %188, ptr noundef %191, i32 noundef %2, i8 noundef zeroext %3) #25, !range !34
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %278, label %194

194:                                              ; preds = %185
  %195 = load ptr, ptr %177, align 8, !tbaa !16
  %196 = getelementptr inbounds %struct.rtvec_def, ptr %195, i64 0, i32 1, i64 %182
  %197 = load ptr, ptr %196, align 8, !tbaa !6
  %198 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !16
  %200 = load ptr, ptr %178, align 8, !tbaa !16
  %201 = getelementptr inbounds %struct.rtvec_def, ptr %200, i64 0, i32 1, i64 %182
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !16
  %205 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %199, ptr noundef nonnull dereferenceable(1) %204) #25
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %180, label %278, !llvm.loop !35

207:                                              ; preds = %48, %104, %110
  %208 = zext nneg i32 %18 to i64
  %209 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  %211 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %208
  %212 = load i8, ptr %211, align 1, !tbaa !16
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %278, label %214

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %216 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %217 = zext i8 %212 to i64
  br label %218

218:                                              ; preds = %214, %276
  %219 = phi i64 [ %217, %214 ], [ %220, %276 ]
  %220 = add nsw i64 %219, -1
  %221 = getelementptr inbounds i8, ptr %210, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !16
  switch i8 %222, label %275 [
    i8 101, label %223
    i8 69, label %230
    i8 115, label %256
    i8 105, label %263
    i8 119, label %269
    i8 48, label %276
    i8 116, label %276
  ]

223:                                              ; preds = %218
  %224 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %225 = load ptr, ptr %224, align 8, !tbaa !16
  %226 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %227 = load ptr, ptr %226, align 8, !tbaa !16
  %228 = tail call i32 @exp_equiv_p(ptr noundef %225, ptr noundef %227, i32 noundef %2, i8 noundef zeroext %3) #25, !range !34
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %278, label %276

230:                                              ; preds = %218
  %231 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %232 = load ptr, ptr %231, align 8, !tbaa !16
  %233 = load i32, ptr %232, align 8, !tbaa !19
  %234 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %235 = load ptr, ptr %234, align 8, !tbaa !16
  %236 = load i32, ptr %235, align 8, !tbaa !19
  %237 = icmp eq i32 %233, %236
  br i1 %237, label %238, label %278

238:                                              ; preds = %230
  %239 = icmp sgt i32 %233, 0
  br i1 %239, label %246, label %276

240:                                              ; preds = %246
  %241 = add nuw nsw i64 %247, 1
  %242 = load ptr, ptr %231, align 8, !tbaa !16
  %243 = load i32, ptr %242, align 8, !tbaa !19
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %241, %244
  br i1 %245, label %246, label %276, !llvm.loop !36

246:                                              ; preds = %238, %240
  %247 = phi i64 [ %241, %240 ], [ 0, %238 ]
  %248 = phi ptr [ %242, %240 ], [ %232, %238 ]
  %249 = getelementptr inbounds %struct.rtvec_def, ptr %248, i64 0, i32 1, i64 %247
  %250 = load ptr, ptr %249, align 8, !tbaa !6
  %251 = load ptr, ptr %234, align 8, !tbaa !16
  %252 = getelementptr inbounds %struct.rtvec_def, ptr %251, i64 0, i32 1, i64 %247
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  %254 = tail call i32 @exp_equiv_p(ptr noundef %250, ptr noundef %253, i32 noundef %2, i8 noundef zeroext %3) #25, !range !34
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %278, label %240

256:                                              ; preds = %218
  %257 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %258 = load ptr, ptr %257, align 8, !tbaa !16
  %259 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %260 = load ptr, ptr %259, align 8, !tbaa !16
  %261 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %258, ptr noundef nonnull dereferenceable(1) %260) #25
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %276, label %278

263:                                              ; preds = %218
  %264 = getelementptr inbounds [1 x %union.rtunion_def], ptr %215, i64 0, i64 %220
  %265 = load i32, ptr %264, align 8, !tbaa !16
  %266 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %220
  %267 = load i32, ptr %266, align 8, !tbaa !16
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %276, label %278

269:                                              ; preds = %218
  %270 = getelementptr inbounds [1 x i64], ptr %215, i64 0, i64 %220
  %271 = load i64, ptr %270, align 8, !tbaa !16
  %272 = getelementptr inbounds [1 x i64], ptr %216, i64 0, i64 %220
  %273 = load i64, ptr %272, align 8, !tbaa !16
  %274 = icmp eq i64 %271, %273
  br i1 %274, label %276, label %278

275:                                              ; preds = %218
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2790, ptr noundef nonnull @.str.4) #23
  br label %276

276:                                              ; preds = %240, %238, %275, %223, %256, %263, %269, %218, %218
  %277 = icmp sgt i64 %219, 1
  br i1 %277, label %218, label %278, !llvm.loop !37

278:                                              ; preds = %136, %16, %22, %45, %130, %123, %180, %185, %194, %92, %223, %230, %256, %263, %269, %276, %246, %4, %90, %207, %79, %174, %146, %153, %160, %166, %142, %110, %106, %66, %58, %52, %50, %14
  %279 = phi i1 [ %15, %14 ], [ %69, %66 ], [ %63, %58 ], [ %57, %52 ], [ %51, %50 ], [ %88, %79 ], [ false, %106 ], [ false, %110 ], [ false, %142 ], [ false, %166 ], [ false, %160 ], [ false, %153 ], [ false, %146 ], [ true, %174 ], [ true, %207 ], [ true, %90 ], [ true, %4 ], [ false, %246 ], [ false, %223 ], [ false, %230 ], [ false, %256 ], [ false, %263 ], [ false, %269 ], [ true, %276 ], [ %100, %92 ], [ %184, %194 ], [ %184, %185 ], [ %184, %180 ], [ true, %136 ], [ false, %16 ], [ false, %22 ], [ false, %45 ], [ false, %130 ], [ true, %123 ]
  %280 = zext i1 %279 to i32
  ret i32 %280
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !16
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cse_main(ptr nocapture readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cse_basic_block_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !40
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
  %16 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.param_info, ptr %16, i64 57, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !42
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  %21 = tail call ptr @xmalloc(i64 noundef %20) #23
  %22 = getelementptr inbounds %struct.cse_basic_block_data, ptr %3, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !44
  store i8 0, ptr @cse_cfg_altered, align 1, !tbaa !16
  store i1 false, ptr @cse_jumps_altered, align 1
  store i1 false, ptr @recorded_label_ref, align 1
  %23 = getelementptr inbounds %struct.cse_basic_block_data, ptr %3, i64 0, i32 1
  store i32 0, ptr %23, align 4, !tbaa !46
  store i32 0, ptr %3, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @rtl_hooks, ptr noundef nonnull align 8 dereferenceable(40) @cse_rtl_hooks, i64 40, i1 false), !tbaa.struct !48
  tail call void @init_recog() #23
  tail call void @init_alias_analysis() #23
  %24 = sext i32 %1 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call ptr @xmalloc(i64 noundef %25) #23
  store ptr %26, ptr @reg_eqv_table, align 8, !tbaa !6
  %27 = load ptr, ptr @cfun, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !40
  %32 = tail call ptr @sbitmap_alloc(i32 noundef %31) #23
  store ptr %32, ptr @cse_visited_basic_blocks, align 8, !tbaa !6
  tail call void @sbitmap_zero(ptr noundef %32) #23
  %33 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %11, i8 noundef zeroext 0) #23
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %88

35:                                               ; preds = %2
  %36 = zext nneg i32 %33 to i64
  br label %39

37:                                               ; preds = %82, %68
  %38 = icmp sgt i32 %33, %69
  br i1 %38, label %39, label %86, !llvm.loop !49

39:                                               ; preds = %35, %37
  %40 = phi i64 [ %51, %37 ], [ 0, %35 ]
  %41 = load ptr, ptr @cfun, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !38
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !6
  %47 = shl i64 %40, 32
  %48 = ashr exact i64 %47, 32
  br label %49

49:                                               ; preds = %39, %49
  %50 = phi i64 [ %48, %39 ], [ %51, %49 ]
  %51 = add nsw i64 %50, 1
  %52 = getelementptr inbounds i32, ptr %11, i64 %50
  %53 = load i32, ptr %52, align 4, !tbaa !15
  %54 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %45, i32 noundef %53) #25
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !51
  %57 = lshr i32 %56, 6
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds %struct.simple_bitmap_def, ptr %46, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !54
  %61 = and i32 %56, 63
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw i64 1, %62
  %64 = and i64 %63, %60
  %65 = icmp ne i64 %64, 0
  %66 = icmp slt i64 %51, %36
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %49, label %68, !llvm.loop !55

68:                                               ; preds = %49
  %69 = trunc i64 %51 to i32
  %70 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !15
  %71 = call fastcc zeroext i8 @cse_find_path(ptr noundef nonnull %54, ptr noundef nonnull %3, i32 noundef %70) #25, !range !56
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %37, label %73

73:                                               ; preds = %68, %82
  call fastcc void @cse_prescan_path(ptr noundef nonnull %3) #25
  %74 = load i32, ptr %3, align 8, !tbaa !47
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = mul nsw i32 %74, 30
  store i32 %77, ptr @max_qty, align 4, !tbaa !15
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call fastcc void @cse_dump_path(ptr noundef nonnull %3, i32 noundef %74, ptr noundef nonnull %78) #25
  br label %81

81:                                               ; preds = %80, %76
  call fastcc void @cse_extended_basic_block(ptr noundef nonnull %3) #25
  br label %82

82:                                               ; preds = %81, %73
  %83 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !15
  %84 = call fastcc zeroext i8 @cse_find_path(ptr noundef %54, ptr noundef nonnull %3, i32 noundef %83) #25, !range !56
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %37, label %73, !llvm.loop !57

86:                                               ; preds = %37
  %87 = load ptr, ptr %22, align 8, !tbaa !44
  br label %88

88:                                               ; preds = %86, %2
  %89 = phi ptr [ %87, %86 ], [ %21, %2 ]
  tail call void @end_alias_analysis() #23
  %90 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !6
  tail call void @free(ptr noundef %90) #25
  tail call void @free(ptr noundef %89) #25
  %91 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !6
  %92 = load ptr, ptr %91, align 8, !tbaa !58
  tail call void @free(ptr noundef %92) #25
  tail call void @free(ptr noundef %91) #25
  tail call void @free(ptr noundef %11) #25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @rtl_hooks, ptr noundef nonnull align 8 dereferenceable(40) @general_rtl_hooks, i64 40, i1 false), !tbaa.struct !48
  %93 = load i1, ptr @cse_jumps_altered, align 1
  %94 = load i1, ptr @recorded_label_ref, align 1
  %95 = select i1 %93, i1 true, i1 %94
  %96 = load i8, ptr @cse_cfg_altered, align 1
  %97 = icmp ne i8 %96, 0
  %98 = zext i1 %97 to i32
  %99 = select i1 %95, i32 2, i32 %98
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
define internal fastcc void @init_cse_reg_info(i32 noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @cse_reg_info_table_size, align 4
  %3 = icmp ult i32 %2, %0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @cse_reg_info_table_first_uninitialized, align 4, !tbaa !15
  br label %24

6:                                                ; preds = %1
  %7 = icmp ult i32 %2, 2048
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 64, i32 %2
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %10, %8 ], [ %14, %11 ]
  %13 = icmp ult i32 %12, %0
  %14 = shl i32 %12, 1
  br i1 %13, label %11, label %15, !llvm.loop !60

15:                                               ; preds = %11, %6
  %16 = phi i32 [ %0, %6 ], [ %12, %11 ]
  %17 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %17) #25
  br label %20

20:                                               ; preds = %19, %15
  %21 = zext i32 %16 to i64
  %22 = mul nuw nsw i64 %21, 20
  %23 = tail call ptr @xmalloc(i64 noundef %22) #23
  store ptr %23, ptr @cse_reg_info_table, align 8, !tbaa !6
  store i32 %16, ptr @cse_reg_info_table_size, align 4, !tbaa !15
  store i32 0, ptr @cse_reg_info_table_first_uninitialized, align 4, !tbaa !15
  br label %24

24:                                               ; preds = %4, %20
  %25 = phi i32 [ %5, %4 ], [ 0, %20 ]
  %26 = icmp ult i32 %25, %0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !15
  %29 = add i32 %28, -1
  %30 = load ptr, ptr @cse_reg_info_table, align 8, !tbaa !6
  %31 = zext i32 %25 to i64
  %32 = zext i32 %0 to i64
  br label %33

33:                                               ; preds = %27, %33
  %34 = phi i64 [ %31, %27 ], [ %36, %33 ]
  %35 = getelementptr inbounds %struct.cse_reg_info, ptr %30, i64 %34
  store i32 %29, ptr %35, align 4, !tbaa !26
  %36 = add nuw nsw i64 %34, 1
  %37 = icmp eq i64 %36, %32
  br i1 %37, label %38, label %33, !llvm.loop !61

38:                                               ; preds = %33
  store i32 %0, ptr @cse_reg_info_table_first_uninitialized, align 4, !tbaa !15
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
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cse_find_path(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !51
  tail call fastcc void @SET_BIT(ptr noundef %4, i32 noundef %6) #25
  %7 = getelementptr inbounds %struct.cse_basic_block_data, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.cse_basic_block_data, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  br i1 %9, label %23, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %11, align 8, !tbaa !62
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6107, ptr noundef nonnull @.str.4) #23
  br label %16

16:                                               ; preds = %15, %12
  %17 = icmp eq i32 %8, 1
  br i1 %17, label %192, label %18

18:                                               ; preds = %16
  %19 = icmp sgt i32 %8, 1
  br i1 %19, label %20, label %98

20:                                               ; preds = %18
  %21 = zext nneg i32 %8 to i64
  %22 = load ptr, ptr %10, align 8, !tbaa !44
  br label %24

23:                                               ; preds = %3
  store ptr %0, ptr %11, align 8, !tbaa !62
  br label %98

24:                                               ; preds = %20, %91
  %25 = phi ptr [ %22, %20 ], [ %92, %91 ]
  %26 = phi i64 [ %21, %20 ], [ %27, %91 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds %struct.branch_path, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = getelementptr %struct.branch_path, ptr %25, i64 %26
  %31 = getelementptr %struct.branch_path, ptr %30, i64 -2
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %34) #25
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %91

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  %42 = tail call i32 @any_condjump_p(ptr noundef %41) #23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %91, label %44

44:                                               ; preds = %37
  %45 = tail call ptr @find_edge(ptr noundef nonnull %32, ptr noundef %29) #23
  %46 = icmp eq ptr %45, null
  br i1 %46, label %91, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %33, align 8, !tbaa !64
  %49 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 0) #25
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !67
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = icmp eq ptr %45, %49
  br i1 %55, label %59, label %91

56:                                               ; preds = %47
  %57 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 1) #25
  %58 = icmp eq ptr %45, %57
  br i1 %58, label %61, label %91

59:                                               ; preds = %54
  %60 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 1) #25
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi ptr [ %60, %59 ], [ %49, %56 ]
  %63 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !69
  %65 = load ptr, ptr @cfun, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !38
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !70
  %70 = icmp eq ptr %64, %69
  br i1 %70, label %91, label %71

71:                                               ; preds = %61
  %72 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %64) #25, !range !56
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !51
  %78 = lshr i32 %77, 6
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds %struct.simple_bitmap_def, ptr %75, i64 0, i32 3, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !54
  %82 = and i32 %77, 63
  %83 = zext nneg i32 %82 to i64
  %84 = shl nuw i64 1, %83
  %85 = and i64 %84, %81
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = trunc i64 %26 to i32
  tail call fastcc void @SET_BIT(ptr noundef nonnull %75, i32 noundef %77) #25
  %89 = load ptr, ptr %10, align 8, !tbaa !44
  %90 = getelementptr inbounds %struct.branch_path, ptr %89, i64 %27
  store ptr %64, ptr %90, align 8, !tbaa !62
  br label %98

91:                                               ; preds = %24, %37, %44, %54, %74, %71, %61, %56
  %92 = load ptr, ptr %10, align 8, !tbaa !44
  %93 = getelementptr inbounds %struct.branch_path, ptr %92, i64 %27
  store ptr null, ptr %93, align 8, !tbaa !62
  %94 = icmp ugt i64 %26, 2
  br i1 %94, label %24, label %95

95:                                               ; preds = %91
  %96 = trunc i64 %27 to i32
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %192, label %98

98:                                               ; preds = %18, %87, %95, %23
  %99 = phi i32 [ 1, %23 ], [ %96, %95 ], [ %88, %87 ], [ %8, %18 ]
  %100 = icmp eq i32 %2, 0
  br i1 %100, label %192, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.cse_basic_block_data, ptr %1, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !44
  %104 = sext i32 %99 to i64
  %105 = getelementptr %struct.branch_path, ptr %103, i64 %104
  %106 = getelementptr %struct.branch_path, ptr %105, i64 -1
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  %108 = icmp eq ptr %107, null
  br i1 %108, label %192, label %109

109:                                              ; preds = %101
  %110 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct.param_info, ptr %110, i64 57, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !42
  %113 = icmp slt i32 %99, %112
  br i1 %113, label %114, label %192

114:                                              ; preds = %109, %183
  %115 = phi i32 [ %185, %183 ], [ %99, %109 ]
  %116 = phi ptr [ %160, %183 ], [ %107, %109 ]
  %117 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %116) #25, !range !56
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %116) #25
  br label %154

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !64
  %124 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %123) #25
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %192

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !16
  %129 = getelementptr inbounds %struct.rtl_bb_info, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !65
  %131 = tail call i32 @any_condjump_p(ptr noundef %130) #23
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %192, label %133

133:                                              ; preds = %126
  %134 = load ptr, ptr %122, align 8, !tbaa !64
  %135 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %134, i32 noundef 0) #25
  %136 = getelementptr inbounds %struct.edge_def, ptr %135, i64 0, i32 7
  %137 = load i32, ptr %136, align 8, !tbaa !67
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.edge_def, ptr %135, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !69
  %143 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %142) #25, !range !56
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %152, label %157

145:                                              ; preds = %133
  %146 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %134, i32 noundef 1) #25
  %147 = getelementptr inbounds %struct.edge_def, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !69
  %149 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %148) #25, !range !56
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, ptr %135, ptr %146
  br label %157

152:                                              ; preds = %140
  %153 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %134, i32 noundef 1) #25
  br label %154

154:                                              ; preds = %152, %119
  %155 = phi ptr [ %120, %119 ], [ %153, %152 ]
  %156 = icmp eq ptr %155, null
  br i1 %156, label %192, label %157

157:                                              ; preds = %145, %140, %154
  %158 = phi ptr [ %155, %154 ], [ %135, %140 ], [ %151, %145 ]
  %159 = getelementptr inbounds %struct.edge_def, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !69
  %161 = load ptr, ptr @cfun, align 8, !tbaa !6
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !38
  %164 = getelementptr inbounds %struct.control_flow_graph, ptr %163, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !70
  %166 = icmp eq ptr %160, %165
  br i1 %166, label %192, label %167

167:                                              ; preds = %157
  %168 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %160) #25, !range !56
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %192, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !6
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 9
  %173 = load i32, ptr %172, align 8, !tbaa !51
  %174 = lshr i32 %173, 6
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds %struct.simple_bitmap_def, ptr %171, i64 0, i32 3, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !54
  %178 = and i32 %173, 63
  %179 = zext nneg i32 %178 to i64
  %180 = shl nuw i64 1, %179
  %181 = and i64 %180, %177
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %170
  tail call fastcc void @SET_BIT(ptr noundef nonnull %171, i32 noundef %173) #25
  %184 = load ptr, ptr %102, align 8, !tbaa !44
  %185 = add nsw i32 %115, 1
  %186 = sext i32 %115 to i64
  %187 = getelementptr inbounds %struct.branch_path, ptr %184, i64 %186
  store ptr %160, ptr %187, align 8, !tbaa !62
  %188 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %189 = getelementptr inbounds %struct.param_info, ptr %188, i64 57, i32 1
  %190 = load i32, ptr %189, align 8, !tbaa !42
  %191 = icmp slt i32 %185, %190
  br i1 %191, label %114, label %192, !llvm.loop !71

192:                                              ; preds = %183, %170, %167, %157, %154, %126, %121, %109, %101, %16, %95, %98
  %193 = phi i32 [ %99, %98 ], [ 0, %16 ], [ 0, %95 ], [ %99, %101 ], [ %99, %109 ], [ %115, %121 ], [ %115, %126 ], [ %115, %154 ], [ %115, %157 ], [ %115, %167 ], [ %115, %170 ], [ %185, %183 ]
  store i32 %193, ptr %7, align 4, !tbaa !46
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i8
  ret i8 %195
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cse_prescan_path(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !46
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %54

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %50
  %10 = phi i64 [ 0, %5 ], [ %52, %50 ]
  %11 = phi i32 [ 0, %5 ], [ %51, %50 ]
  %12 = getelementptr inbounds %struct.branch_path, ptr %7, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !16
  br label %23

23:                                               ; preds = %18, %45
  %24 = phi ptr [ %16, %18 ], [ %48, %45 ]
  %25 = phi i32 [ %11, %18 ], [ %46, %45 ]
  %26 = icmp eq ptr %24, %22
  br i1 %26, label %50, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %24, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -7
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !16
  %41 = load i32, ptr %40, align 8, !tbaa !19
  %42 = add nsw i32 %41, %25
  br label %45

43:                                               ; preds = %32
  %44 = add nsw i32 %25, 1
  br label %45

45:                                               ; preds = %27, %38, %43
  %46 = phi i32 [ %42, %38 ], [ %44, %43 ], [ %25, %27 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %23, !llvm.loop !72

50:                                               ; preds = %23, %45, %9
  %51 = phi i32 [ %11, %9 ], [ %46, %45 ], [ %25, %23 ]
  %52 = add nuw nsw i64 %10, 1
  %53 = icmp eq i64 %52, %8
  br i1 %53, label %54, label %9, !llvm.loop !73

54:                                               ; preds = %50, %1
  %55 = phi i32 [ 0, %1 ], [ %51, %50 ]
  store i32 %55, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @cse_dump_path(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #12 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %1) #25
  %5 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %18, %10 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.branch_path, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !51
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %16) #25
  %18 = add nuw nsw i64 %11, 1
  %19 = load i32, ptr %5, align 4, !tbaa !46
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %10, label %22, !llvm.loop !74

22:                                               ; preds = %10, %3
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %24 = tail call i32 @fputc(i32 noundef 10, ptr noundef %23) #25
  %25 = tail call i32 @fflush(ptr noundef %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_extended_basic_block(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = load i32, ptr @max_qty, align 4, !tbaa !15
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 40
  %8 = tail call ptr @xmalloc(i64 noundef %7) #23
  store ptr %8, ptr @qty_table, align 8, !tbaa !6
  tail call fastcc void @new_basic_block() #25
  %9 = getelementptr inbounds %struct.cse_basic_block_data, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = tail call ptr @df_get_live_in(ptr noundef %11) #23
  store ptr %12, ptr @cse_ebb_live_in, align 8, !tbaa !6
  %13 = load ptr, ptr %9, align 8, !tbaa !44
  %14 = sext i32 %4 to i64
  %15 = getelementptr %struct.branch_path, ptr %13, i64 %14
  %16 = getelementptr %struct.branch_path, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = tail call ptr @df_get_live_out(ptr noundef %17) #23
  store ptr %18, ptr @cse_ebb_live_out, align 8, !tbaa !6
  %19 = icmp sgt i32 %4, 0
  br i1 %19, label %20, label %206

20:                                               ; preds = %1, %202
  %21 = phi i64 [ %203, %202 ], [ 0, %1 ]
  %22 = phi i32 [ %161, %202 ], [ %4, %1 ]
  %23 = phi i32 [ %116, %202 ], [ 0, %1 ]
  %24 = load ptr, ptr %9, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.branch_path, ptr %24, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %26) #25, !range !56
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !51
  %32 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %31) #25
  %33 = load ptr, ptr %32, align 8, !tbaa !6
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
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  tail call fastcc void @invalidate(ptr noundef nonnull %43, i32 noundef %46) #25
  br label %47

47:                                               ; preds = %41, %35
  %48 = getelementptr inbounds ptr, ptr %37, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %35, !llvm.loop !75

51:                                               ; preds = %47, %29, %20
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = load ptr, ptr %53, align 8, !tbaa !16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %115, label %56

56:                                               ; preds = %51, %111
  %57 = phi ptr [ %113, %111 ], [ %54, %51 ]
  %58 = phi i32 [ %82, %111 ], [ %23, %51 ]
  %59 = load ptr, ptr %52, align 8, !tbaa !16
  %60 = getelementptr inbounds %struct.rtl_bb_info, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !16
  %64 = icmp eq ptr %57, %63
  br i1 %64, label %115, label %65

65:                                               ; preds = %56
  %66 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %26) #23
  store i8 %66, ptr @optimize_this_for_speed_p, align 1, !tbaa !16
  %67 = load i32, ptr %57, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -11
  %70 = icmp ult i32 %69, -3
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = add nsw i32 %58, 1
  %73 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct.param_info, ptr %73, i64 58, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !42
  %76 = icmp sgt i32 %58, %75
  br i1 %76, label %77, label %80

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
  br i1 %84, label %85, label %111

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 1, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !16
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #24
  store i8 0, ptr %2, align 1, !tbaa !16
  %90 = call fastcc ptr @cse_process_notes(ptr noundef nonnull %87, ptr noundef null, ptr noundef nonnull %2) #25
  store ptr %90, ptr %86, align 8, !tbaa !16
  %91 = load i8, ptr %2, align 1, !tbaa !16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93

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
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = icmp ne i32 %97, 10
  %102 = load i1, ptr @recorded_label_ref, align 1
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %111, label %106

104:                                              ; preds = %95
  %105 = load i1, ptr @recorded_label_ref, align 1
  br i1 %105, label %111, label %106

106:                                              ; preds = %100, %104
  %107 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 1
  %108 = tail call i32 @for_each_rtx(ptr noundef nonnull %107, ptr noundef nonnull @check_for_label_ref, ptr noundef nonnull %57) #23
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  store i1 true, ptr @recorded_label_ref, align 1
  br label %111

111:                                              ; preds = %80, %110, %106, %104, %100
  %112 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !16
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %56, !llvm.loop !76

115:                                              ; preds = %56, %111, %51
  %116 = phi i32 [ %23, %51 ], [ %82, %111 ], [ %58, %56 ]
  %117 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !15
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = tail call fastcc zeroext i8 @have_eh_succ_edges(ptr noundef nonnull %26) #25, !range !56
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = tail call zeroext i8 @purge_dead_edges(ptr noundef nonnull %26) #23
  %124 = load i8, ptr @cse_cfg_altered, align 1, !tbaa !16
  %125 = or i8 %124, %123
  store i8 %125, ptr @cse_cfg_altered, align 1, !tbaa !16
  br label %126

126:                                              ; preds = %122, %119, %115
  %127 = add nsw i32 %22, -1
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %21, %128
  br i1 %129, label %130, label %159

130:                                              ; preds = %126
  %131 = load ptr, ptr %9, align 8, !tbaa !44
  %132 = getelementptr %struct.branch_path, ptr %131, i64 %21
  %133 = getelementptr %struct.branch_path, ptr %132, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !62
  %135 = tail call ptr @find_edge(ptr noundef nonnull %26, ptr noundef %134) #23
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %159

137:                                              ; preds = %130
  %138 = load ptr, ptr @cse_visited_basic_blocks, align 8, !tbaa !6
  %139 = sext i32 %22 to i64
  %140 = load ptr, ptr %9, align 8, !tbaa !44
  br label %141

141:                                              ; preds = %137, %141
  %142 = phi ptr [ %140, %137 ], [ %149, %141 ]
  %143 = phi i64 [ %139, %137 ], [ %144, %141 ]
  %144 = add nsw i64 %143, -1
  %145 = getelementptr inbounds %struct.branch_path, ptr %142, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !62
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 9
  %148 = load i32, ptr %147, align 8, !tbaa !51
  tail call fastcc void @RESET_BIT(ptr noundef %138, i32 noundef %148) #25
  %149 = load ptr, ptr %9, align 8, !tbaa !44
  %150 = getelementptr inbounds %struct.branch_path, ptr %149, i64 %144
  store ptr null, ptr %150, align 8, !tbaa !62
  %151 = add i64 %143, 4294967294
  %152 = and i64 %151, 4294967295
  %153 = icmp eq i64 %152, %21
  br i1 %153, label %154, label %141, !llvm.loop !77

154:                                              ; preds = %141
  %155 = trunc i64 %144 to i32
  store i32 %155, ptr %3, align 4, !tbaa !46
  %156 = shl i64 %143, 32
  %157 = add i64 %156, -8589934592
  %158 = ashr exact i64 %157, 32
  br label %159

159:                                              ; preds = %130, %154, %126
  %160 = phi i64 [ %128, %130 ], [ %158, %154 ], [ %128, %126 ]
  %161 = phi i32 [ %22, %130 ], [ %155, %154 ], [ %22, %126 ]
  %162 = load ptr, ptr %52, align 8, !tbaa !16
  %163 = getelementptr inbounds %struct.rtl_bb_info, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !65
  %165 = icmp slt i64 %21, %160
  br i1 %165, label %166, label %202

166:                                              ; preds = %159
  %167 = load i32, ptr %164, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 9
  br i1 %169, label %170, label %202

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !16
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
  br i1 %181, label %202, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %9, align 8, !tbaa !44
  %184 = getelementptr %struct.branch_path, ptr %183, i64 %21
  %185 = getelementptr %struct.branch_path, ptr %184, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !62
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !64
  %189 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %188, i32 noundef 0) #25
  %190 = getelementptr inbounds %struct.edge_def, ptr %189, i64 0, i32 7
  %191 = load i32, ptr %190, align 8, !tbaa !67
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %182
  %195 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %188, i32 noundef 1) #25
  br label %196

196:                                              ; preds = %182, %194
  %197 = phi ptr [ %195, %194 ], [ %189, %182 ]
  %198 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !69
  %200 = icmp eq ptr %186, %199
  %201 = zext i1 %200 to i8
  tail call fastcc void @record_jump_equiv(ptr noundef nonnull %164, i8 noundef zeroext %201) #25
  br label %202

202:                                              ; preds = %196, %179, %176, %166, %159
  %203 = add nuw nsw i64 %21, 1
  %204 = sext i32 %161 to i64
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %20, label %206, !llvm.loop !78

206:                                              ; preds = %202, %1
  %207 = load i32, ptr @next_qty, align 4, !tbaa !15
  %208 = load i32, ptr @max_qty, align 4, !tbaa !15
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6442, ptr noundef nonnull @.str.4) #23
  br label %211

211:                                              ; preds = %206, %210
  %212 = load ptr, ptr @qty_table, align 8, !tbaa !6
  tail call void @free(ptr noundef %212) #25
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
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
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
  %15 = load i64, ptr %14, align 8, !tbaa !54
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !16
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !16
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !54
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !79
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
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #25
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #25, !range !56
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 645, ptr noundef nonnull @.str.4) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #25
  ret ptr %8
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @new_basic_block() unnamed_addr #15 {
  store i32 0, ptr @next_qty, align 4, !tbaa !15
  %1 = load i32, ptr @cse_reg_info_timestamp, align 4, !tbaa !15
  %2 = add i32 %1, 1
  store i32 %2, ptr @cse_reg_info_timestamp, align 4, !tbaa !15
  store i64 0, ptr @hard_regs_in_table, align 8, !tbaa !54
  %3 = load ptr, ptr @free_element_chain, align 8, !tbaa !6
  br label %4

4:                                                ; preds = %0, %18
  %5 = phi i64 [ 0, %0 ], [ %20, %18 ]
  %6 = phi ptr [ %3, %0 ], [ %19, %18 ]
  %7 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  store ptr null, ptr %7, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %11, %10
  %12 = phi ptr [ %8, %10 ], [ %14, %11 ]
  %13 = getelementptr inbounds %struct.table_elt, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !83

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.table_elt, ptr %12, i64 0, i32 2
  store ptr %6, ptr %17, align 8, !tbaa !82
  store ptr %8, ptr @free_element_chain, align 8, !tbaa !6
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi ptr [ %8, %16 ], [ %6, %4 ]
  %20 = add nuw nsw i64 %5, 1
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %4, !llvm.loop !84

22:                                               ; preds = %18
  ret void
}

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #25
  store i32 0, ptr %3, align 8, !tbaa.struct !85
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !86
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #25, !range !56
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #25
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #25, !range !56
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !87

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #14 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #25
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invalidate(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.check_dependence_data, align 8
  br label %4

4:                                                ; preds = %105, %2
  %5 = phi ptr [ %0, %2 ], [ %107, %105 ]
  %6 = phi i32 [ %1, %2 ], [ 0, %105 ]
  %7 = load i32, ptr %5, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %168 [
    i16 37, label %9
    i16 39, label %105
    i16 15, label %108
    i16 3, label %105
    i16 43, label %122
  ]

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #25
  %11 = and i32 %7, 65535
  %12 = icmp eq i32 %11, 37
  %13 = icmp ugt i32 %10, 52
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %10) #25
  %17 = getelementptr inbounds %struct.cse_reg_info, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !17
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
  %28 = load i32, ptr %27, align 4, !tbaa !28
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !28
  %30 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %10) #25
  %31 = getelementptr inbounds %struct.cse_reg_info, ptr %30, i64 0, i32 4
  store i32 -1, ptr %31, align 4, !tbaa !30
  br i1 %13, label %32, label %34

32:                                               ; preds = %24
  %33 = and i32 %25, 31
  tail call fastcc void @remove_pseudo_from_table(ptr noundef nonnull %5, i32 noundef %33) #25
  br label %169

34:                                               ; preds = %24
  %35 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !54
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
  store i64 %46, ptr @hard_regs_in_table, align 8, !tbaa !54
  %47 = add nuw nsw i32 %10, 1
  %48 = icmp ult i32 %47, %44
  br i1 %48, label %49, label %71

49:                                               ; preds = %34
  %50 = add nuw nsw i64 %36, 1
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ %50, %49 ], [ %68, %51 ]
  %53 = phi i64 [ %39, %49 ], [ %58, %51 ]
  %54 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !54
  %55 = shl nuw i64 1, %52
  %56 = lshr i64 %54, %52
  %57 = and i64 %56, 1
  %58 = or i64 %57, %53
  %59 = xor i64 %55, -1
  %60 = and i64 %54, %59
  store i64 %60, ptr @hard_regs_in_table, align 8, !tbaa !54
  %61 = trunc i64 %52 to i32
  tail call fastcc void @delete_reg_equiv(i32 noundef %61) #25
  %62 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %61) #25
  %63 = getelementptr inbounds %struct.cse_reg_info, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !28
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !28
  %66 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %61) #25
  %67 = getelementptr inbounds %struct.cse_reg_info, ptr %66, i64 0, i32 4
  store i32 -1, ptr %67, align 4, !tbaa !30
  %68 = add nuw nsw i64 %52, 1
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %44, %69
  br i1 %70, label %71, label %51, !llvm.loop !90

71:                                               ; preds = %51, %34
  %72 = phi i64 [ %39, %34 ], [ %58, %51 ]
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %169, label %74

74:                                               ; preds = %71, %102
  %75 = phi i64 [ %103, %102 ], [ 0, %71 ]
  %76 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = icmp eq ptr %77, null
  br i1 %78, label %102, label %79

79:                                               ; preds = %74
  %80 = trunc i64 %75 to i32
  br label %81

81:                                               ; preds = %79, %100
  %82 = phi ptr [ %84, %100 ], [ %77, %79 ]
  %83 = getelementptr inbounds %struct.table_elt, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !82
  %85 = load ptr, ptr %82, align 8, !tbaa !10
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 37
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  %90 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %85) #25
  %91 = icmp ugt i32 %90, 52
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = lshr i32 %86, 16
  %94 = and i32 %93, 255
  %95 = tail call fastcc i32 @end_hard_regno(i32 noundef %94, i32 noundef %90) #25
  %96 = icmp ugt i32 %95, %10
  %97 = icmp ult i32 %90, %44
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  tail call fastcc void @remove_from_table(ptr noundef nonnull %82, i32 noundef %80) #25
  br label %100

100:                                              ; preds = %92, %99, %81, %89
  %101 = icmp eq ptr %84, null
  br i1 %101, label %102, label %81, !llvm.loop !91

102:                                              ; preds = %100, %74
  %103 = add nuw nsw i64 %75, 1
  %104 = icmp eq i64 %103, 32
  br i1 %104, label %169, label %74, !llvm.loop !92

105:                                              ; preds = %4, %4
  %106 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !16
  br label %4

108:                                              ; preds = %4
  %109 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !16
  %111 = load i32, ptr %110, align 8, !tbaa !19
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %169

113:                                              ; preds = %108
  %114 = zext nneg i32 %111 to i64
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ %114, %113 ], [ %117, %115 ]
  %117 = add nsw i64 %116, -1
  %118 = load ptr, ptr %109, align 8, !tbaa !16
  %119 = getelementptr inbounds %struct.rtvec_def, ptr %118, i64 0, i32 1, i64 %117
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  tail call fastcc void @invalidate(ptr noundef %120, i32 noundef 0) #25
  %121 = icmp ugt i64 %116, 1
  br i1 %121, label %115, label %169, !llvm.loop !93

122:                                              ; preds = %4
  %123 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !16
  %125 = tail call ptr @get_addr(ptr noundef %124) #23
  %126 = tail call ptr @canon_rtx(ptr noundef %125) #23
  %127 = tail call ptr @canon_rtx(ptr noundef nonnull %5) #23
  %128 = icmp eq i32 %6, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i32, ptr %127, align 8
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 255
  br label %133

133:                                              ; preds = %129, %122
  %134 = phi i32 [ %132, %129 ], [ %6, %122 ]
  %135 = getelementptr inbounds %struct.check_dependence_data, ptr %3, i64 0, i32 1
  %136 = getelementptr inbounds %struct.check_dependence_data, ptr %3, i64 0, i32 2
  br label %137

137:                                              ; preds = %133, %165
  %138 = phi i64 [ 0, %133 ], [ %166, %165 ]
  %139 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = icmp eq ptr %140, null
  br i1 %141, label %165, label %142

142:                                              ; preds = %137
  %143 = trunc i64 %138 to i32
  br label %144

144:                                              ; preds = %142, %163
  %145 = phi ptr [ %147, %163 ], [ %140, %142 ]
  %146 = getelementptr inbounds %struct.table_elt, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !82
  %148 = getelementptr inbounds %struct.table_elt, ptr %145, i64 0, i32 11
  %149 = load i8, ptr %148, align 1, !tbaa !94
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  %152 = getelementptr inbounds %struct.table_elt, ptr %145, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !95
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load ptr, ptr %145, align 8, !tbaa !10
  %157 = call ptr @canon_rtx(ptr noundef %156) #23
  store ptr %157, ptr %152, align 8, !tbaa !95
  br label %158

158:                                              ; preds = %155, %151
  store ptr %127, ptr %135, align 8, !tbaa !96
  store ptr %126, ptr %136, align 8, !tbaa !98
  store i32 %134, ptr %3, align 8, !tbaa !99
  %159 = call i32 @for_each_rtx(ptr noundef nonnull %152, ptr noundef nonnull @check_dependence, ptr noundef nonnull %3) #23
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  call fastcc void @remove_from_table(ptr noundef nonnull %145, i32 noundef %143) #25
  br label %162

162:                                              ; preds = %161, %158
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  br label %163

163:                                              ; preds = %144, %162
  %164 = icmp eq ptr %147, null
  br i1 %164, label %165, label %144, !llvm.loop !100

165:                                              ; preds = %163, %137
  %166 = add nuw nsw i64 %138, 1
  %167 = icmp eq i64 %166, 32
  br i1 %167, label %169, label %137, !llvm.loop !101

168:                                              ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1992, ptr noundef nonnull @.str.4) #23
  br label %169

169:                                              ; preds = %165, %115, %102, %108, %32, %71, %168
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flush_hash_table() unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %19
  %2 = phi i64 [ 0, %0 ], [ %20, %19 ]
  %3 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = trunc i64 %2 to i32
  br label %8

8:                                                ; preds = %6, %16
  %9 = phi ptr [ %17, %16 ], [ %4, %6 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !10
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
  %17 = load ptr, ptr %3, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !102

19:                                               ; preds = %16, %1
  %20 = add nuw nsw i64 %2, 1
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %1, !llvm.loop !103

22:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cse_process_notes(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @cse_process_notes_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !16
  br label %7

7:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_insn(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  store ptr %0, ptr @this_insn, align 8, !tbaa !6
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7, %22
  %12 = phi ptr [ %26, %22 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 25
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  tail call fastcc void @invalidate(ptr noundef %20, i32 noundef 0) #25
  %21 = load ptr, ptr %13, align 8, !tbaa !16
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi ptr [ %21, %18 ], [ %14, %11 ]
  %24 = tail call fastcc ptr @canon_reg(ptr noundef %23, ptr noundef %0) #25
  store ptr %24, ptr %13, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %11, !llvm.loop !104

28:                                               ; preds = %22, %7, %1
  %29 = load i32, ptr %3, align 8
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %169 [
    i16 23, label %31
    i16 15, label %53
    i16 25, label %146
    i16 24, label %154
    i16 26, label %165
  ]

31:                                               ; preds = %28
  %32 = alloca [80 x i8], align 16
  store ptr %3, ptr %32, align 16, !tbaa !105
  %33 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = load ptr, ptr @global_rtl, align 16, !tbaa !6
  %36 = icmp eq ptr %34, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 44
  %42 = select i1 %36, i1 %41, i1 false
  br i1 %42, label %253, label %43

43:                                               ; preds = %31
  %44 = and i32 %39, 65535
  %45 = icmp eq i32 %44, 26
  br i1 %45, label %46, label %178

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %38, ptr noundef %0) #25
  %49 = tail call i32 @apply_change_group() #23
  %50 = load ptr, ptr %47, align 8, !tbaa !16
  %51 = tail call fastcc ptr @fold_rtx(ptr noundef %50, ptr noundef %0) #25
  %52 = load ptr, ptr %33, align 8, !tbaa !16
  tail call fastcc void @invalidate(ptr noundef %52, i32 noundef 0) #25
  br label %253

53:                                               ; preds = %28
  %54 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !16
  %56 = load i32, ptr %55, align 8, !tbaa !19
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, 80
  %59 = alloca i8, i64 %58, align 16
  %60 = icmp sgt i32 %56, 0
  br i1 %60, label %61, label %253

61:                                               ; preds = %53
  %62 = zext nneg i32 %56 to i64
  br label %66

63:                                               ; preds = %85
  br i1 %60, label %64, label %253

64:                                               ; preds = %63
  %65 = zext nneg i32 %56 to i64
  br label %88

66:                                               ; preds = %61, %85
  %67 = phi i64 [ 0, %61 ], [ %86, %85 ]
  %68 = load ptr, ptr %54, align 8, !tbaa !16
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 25
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !16
  %77 = load i32, ptr %76, align 8
  %78 = trunc i32 %77 to i16
  switch i16 %78, label %85 [
    i16 37, label %79
    i16 39, label %79
    i16 40, label %80
    i16 120, label %80
  ]

79:                                               ; preds = %74, %74
  tail call fastcc void @invalidate(ptr noundef nonnull %76, i32 noundef 0) #25
  br label %85

80:                                               ; preds = %74, %74
  %81 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !16
  %83 = lshr i32 %77, 16
  %84 = and i32 %83, 255
  tail call fastcc void @invalidate(ptr noundef %82, i32 noundef %84) #25
  br label %85

85:                                               ; preds = %79, %80, %74, %66
  %86 = add nuw nsw i64 %67, 1
  %87 = icmp eq i64 %86, %62
  br i1 %87, label %63, label %66, !llvm.loop !107

88:                                               ; preds = %64, %142
  %89 = phi i64 [ 0, %64 ], [ %144, %142 ]
  %90 = phi i32 [ 0, %64 ], [ %143, %142 ]
  %91 = load ptr, ptr %54, align 8, !tbaa !16
  %92 = getelementptr inbounds %struct.rtvec_def, ptr %91, i64 0, i32 1, i64 %89
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = load i32, ptr %93, align 8
  %95 = trunc i32 %94 to i16
  switch i16 %95, label %142 [
    i16 23, label %96
    i16 25, label %119
    i16 24, label %127
    i16 26, label %138
  ]

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %98 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !16
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 26
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %99, ptr noundef %0) #25
  %105 = tail call i32 @apply_change_group() #23
  %106 = load ptr, ptr %98, align 8, !tbaa !16
  %107 = tail call fastcc ptr @fold_rtx(ptr noundef %106, ptr noundef %0) #25
  %108 = load ptr, ptr %97, align 8, !tbaa !16
  tail call fastcc void @invalidate(ptr noundef %108, i32 noundef 0) #25
  br label %142

109:                                              ; preds = %96
  %110 = load ptr, ptr %97, align 8, !tbaa !16
  %111 = load ptr, ptr @global_rtl, align 16, !tbaa !6
  %112 = icmp eq ptr %110, %111
  %113 = icmp eq i32 %101, 44
  %114 = and i1 %113, %112
  br i1 %114, label %142, label %115

115:                                              ; preds = %109
  %116 = add nsw i32 %90, 1
  %117 = sext i32 %90 to i64
  %118 = getelementptr inbounds %struct.set, ptr %59, i64 %117
  store ptr %93, ptr %118, align 16, !tbaa !105
  br label %142

119:                                              ; preds = %88
  %120 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !16
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 43
  br i1 %124, label %125, label %142

125:                                              ; preds = %119
  %126 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %121, ptr noundef %0) #25
  br label %142

127:                                              ; preds = %88
  %128 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !16
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 65535
  %132 = icmp eq i32 %131, 37
  br i1 %132, label %133, label %136

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

142:                                              ; preds = %88, %133, %109, %125, %119, %138, %136, %103, %115
  %143 = phi i32 [ %90, %103 ], [ %116, %115 ], [ %90, %125 ], [ %90, %119 ], [ %90, %138 ], [ %90, %136 ], [ %90, %109 ], [ %90, %133 ], [ %90, %88 ]
  %144 = add nuw nsw i64 %89, 1
  %145 = icmp eq i64 %144, %65
  br i1 %145, label %176, label %88, !llvm.loop !108

146:                                              ; preds = %28
  %147 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !16
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 43
  br i1 %151, label %152, label %253

152:                                              ; preds = %146
  %153 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %148, ptr noundef %0) #25
  br label %253

154:                                              ; preds = %28
  %155 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !16
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 37
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %156) #25
  %162 = icmp ult i32 %161, 53
  br i1 %162, label %169, label %163

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
  br i1 %172, label %173, label %253

173:                                              ; preds = %169
  %174 = load ptr, ptr %2, align 8, !tbaa !16
  %175 = tail call fastcc ptr @canon_reg(ptr noundef %174, ptr noundef nonnull %0) #25
  br label %253

176:                                              ; preds = %142
  %177 = icmp eq i32 %143, 1
  br i1 %177, label %178, label %208

178:                                              ; preds = %43, %176
  %179 = phi ptr [ %59, %176 ], [ %32, %43 ]
  %180 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !16
  %182 = icmp eq ptr %181, null
  br i1 %182, label %210, label %183

183:                                              ; preds = %178
  %184 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #23
  %185 = icmp eq ptr %184, null
  br i1 %185, label %210, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !16
  %189 = load ptr, ptr %179, align 16, !tbaa !105
  %190 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1, i32 0, i32 0, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !16
  %192 = tail call i32 @rtx_equal_p(ptr noundef %188, ptr noundef %191) #23
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %186
  %195 = load ptr, ptr %179, align 16, !tbaa !105
  %196 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !16
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 40
  br i1 %200, label %201, label %210

201:                                              ; preds = %194, %186
  %202 = load ptr, ptr %187, align 8, !tbaa !16
  %203 = tail call fastcc ptr @canon_reg(ptr noundef %202, ptr noundef nonnull %0) #25
  %204 = tail call i32 @apply_change_group() #23
  %205 = load ptr, ptr %187, align 8, !tbaa !16
  %206 = tail call fastcc ptr @fold_rtx(ptr noundef %205, ptr noundef nonnull %0) #25
  %207 = tail call ptr @copy_rtx(ptr noundef %206) #23
  store ptr %207, ptr %187, align 8, !tbaa !16
  tail call void @df_notes_rescan(ptr noundef nonnull %0) #23
  br label %210

208:                                              ; preds = %176
  %209 = icmp sgt i32 %143, 0
  br i1 %209, label %210, label %253

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
  %219 = load ptr, ptr %218, align 8, !tbaa !105
  %220 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !16
  %222 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !16
  %224 = tail call fastcc ptr @canon_reg(ptr noundef %223, ptr noundef %0) #25
  %225 = load ptr, ptr %218, align 8, !tbaa !105
  %226 = getelementptr inbounds %struct.rtx_def, ptr %225, i64 0, i32 1, i32 0, i32 0, i64 1
  %227 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %226, ptr noundef %224, i8 noundef zeroext 1) #23
  %228 = load i32, ptr %221, align 8
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 120
  br i1 %230, label %231, label %240

231:                                              ; preds = %216
  %232 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !16
  %234 = tail call fastcc ptr @canon_reg(ptr noundef %233, ptr noundef %0) #25
  %235 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %232, ptr noundef %234, i8 noundef zeroext 1) #23
  %236 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 2
  %237 = load ptr, ptr %236, align 8, !tbaa !16
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
  ]

245:                                              ; preds = %241, %241, %241
  %246 = getelementptr inbounds %struct.rtx_def, ptr %242, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !16
  br label %241, !llvm.loop !109

248:                                              ; preds = %241
  %249 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %242, ptr noundef %0) #25
  br label %250

250:                                              ; preds = %241, %248
  %251 = add nuw nsw i64 %217, 1
  %252 = icmp eq i64 %251, %215
  br i1 %252, label %257, label %216, !llvm.loop !110

253:                                              ; preds = %31, %53, %63, %163, %169, %173, %165, %146, %152, %46, %208
  %254 = phi ptr [ %59, %208 ], [ null, %163 ], [ null, %169 ], [ null, %173 ], [ null, %165 ], [ null, %146 ], [ null, %152 ], [ %32, %46 ], [ %59, %63 ], [ %59, %53 ], [ %32, %31 ]
  %255 = phi i32 [ %143, %208 ], [ 0, %163 ], [ 0, %169 ], [ 0, %173 ], [ 0, %165 ], [ 0, %146 ], [ 0, %152 ], [ 0, %46 ], [ 0, %63 ], [ 0, %53 ], [ 0, %31 ]
  %256 = tail call i32 @apply_change_group() #23
  br label %1894

257:                                              ; preds = %250
  %258 = tail call i32 @apply_change_group() #23
  br label %259

259:                                              ; preds = %257, %1614
  %260 = phi ptr [ %1621, %1614 ], [ %0, %257 ]
  %261 = phi i32 [ %1622, %1614 ], [ 0, %257 ]
  %262 = phi ptr [ %1619, %1614 ], [ %211, %257 ]
  %263 = phi ptr [ %1618, %1614 ], [ null, %257 ]
  %264 = phi i32 [ %1617, %1614 ], [ 0, %257 ]
  %265 = phi i32 [ %1616, %1614 ], [ 0, %257 ]
  %266 = phi i32 [ %1615, %1614 ], [ 0, %257 ]
  %267 = sext i32 %261 to i64
  %268 = getelementptr inbounds %struct.set, ptr %212, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !105
  %270 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !16
  %272 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !16
  %274 = load i32, ptr %273, align 8
  %275 = lshr i32 %274, 16
  %276 = and i32 %275, 255
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %282

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
  br i1 %286, label %326, label %287

287:                                              ; preds = %282
  %288 = load i32, ptr %271, align 8
  %289 = and i32 %288, 65535
  %290 = icmp eq i32 %289, 40
  br i1 %290, label %291, label %299

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !16
  %294 = getelementptr inbounds %struct.rtx_def, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !16
  %296 = load i32, ptr %295, align 8
  %297 = lshr i32 %296, 16
  %298 = and i32 %297, 255
  br label %299

299:                                              ; preds = %291, %287
  %300 = phi i32 [ %298, %291 ], [ %283, %287 ]
  store i32 0, ptr @do_not_record, align 4, !tbaa !15
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !15
  %301 = load i32, ptr %262, align 8
  %302 = and i32 %301, 65535
  %303 = icmp eq i32 %302, 37
  br i1 %303, label %304, label %312

304:                                              ; preds = %299
  %305 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %262) #25
  %306 = icmp ugt i32 %305, 52
  br i1 %306, label %307, label %312

307:                                              ; preds = %304
  %308 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %305) #25
  %309 = getelementptr inbounds %struct.cse_reg_info, ptr %308, i64 0, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !17
  %311 = add i32 %310, 4736
  br label %314

312:                                              ; preds = %304, %299
  %313 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %262, i32 noundef %300) #25
  br label %314

314:                                              ; preds = %312, %307
  %315 = phi i32 [ %311, %307 ], [ %313, %312 ]
  %316 = and i32 %315, 31
  %317 = load i32, ptr @do_not_record, align 4, !tbaa !15
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = tail call fastcc ptr @lookup(ptr noundef nonnull %262, i32 noundef %316, i32 noundef %300) #25
  %321 = load i32, ptr @do_not_record, align 4, !tbaa !15
  br label %322

322:                                              ; preds = %319, %314
  %323 = phi i32 [ %317, %314 ], [ %321, %319 ]
  %324 = phi ptr [ %263, %314 ], [ %320, %319 ]
  %325 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !15
  br label %326

326:                                              ; preds = %322, %282
  %327 = phi i32 [ %316, %322 ], [ %266, %282 ]
  %328 = phi i32 [ %325, %322 ], [ %265, %282 ]
  %329 = phi i32 [ %323, %322 ], [ %264, %282 ]
  %330 = phi ptr [ %324, %322 ], [ %263, %282 ]
  %331 = load i32, ptr %271, align 8
  %332 = and i32 %331, 65535
  %333 = icmp eq i32 %332, 40
  %334 = select i1 %333, ptr null, ptr %262
  %335 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %273, ptr noundef %260) #25
  store i32 0, ptr @do_not_record, align 4, !tbaa !15
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !15
  %336 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 1
  store ptr %273, ptr %336, align 8, !tbaa !111
  %337 = load i32, ptr %273, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 37
  br i1 %339, label %340, label %348

340:                                              ; preds = %326
  %341 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %273) #25
  %342 = icmp ugt i32 %341, 52
  br i1 %342, label %343, label %348

343:                                              ; preds = %340
  %344 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %341) #25
  %345 = getelementptr inbounds %struct.cse_reg_info, ptr %344, i64 0, i32 1
  %346 = load i32, ptr %345, align 4, !tbaa !17
  %347 = add i32 %346, 4736
  br label %350

348:                                              ; preds = %340, %326
  %349 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %273, i32 noundef %283) #25
  br label %350

350:                                              ; preds = %348, %343
  %351 = phi i32 [ %347, %343 ], [ %349, %348 ]
  %352 = and i32 %351, 31
  %353 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 3
  store i32 %352, ptr %353, align 8, !tbaa !112
  %354 = load i32, ptr @do_not_record, align 4, !tbaa !15
  %355 = trunc i32 %354 to i8
  %356 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 7
  store i8 %355, ptr %356, align 1, !tbaa !113
  %357 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !15
  %358 = trunc i32 %357 to i8
  %359 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 6
  store i8 %358, ptr %359, align 8, !tbaa !114
  %360 = load i32, ptr %273, align 8
  %361 = and i32 %360, 65535
  %362 = icmp eq i32 %361, 43
  br i1 %362, label %363, label %374

363:                                              ; preds = %350
  %364 = tail call ptr @find_reg_note(ptr noundef %260, i32 noundef 3, ptr noundef null) #23
  %365 = icmp eq ptr %364, null
  br i1 %365, label %374, label %366

366:                                              ; preds = %363
  %367 = load i32, ptr %271, align 8
  %368 = and i32 %367, 65535
  %369 = icmp eq i32 %368, 37
  br i1 %369, label %370, label %374

370:                                              ; preds = %366
  %371 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %271) #25
  %372 = icmp ugt i32 %371, 52
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  store i8 1, ptr %356, align 1, !tbaa !113
  br label %380

374:                                              ; preds = %370, %366, %363, %350
  %375 = load i8, ptr %356, align 1, !tbaa !113
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %374
  %378 = load i32, ptr %353, align 8, !tbaa !112
  %379 = tail call fastcc ptr @lookup(ptr noundef nonnull %273, i32 noundef %378, i32 noundef %283) #25
  br label %380

380:                                              ; preds = %373, %377, %374
  %381 = phi ptr [ null, %374 ], [ %379, %377 ], [ null, %373 ]
  %382 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 2
  store ptr %381, ptr %382, align 8, !tbaa !115
  %383 = icmp ne ptr %381, null
  %384 = icmp ne ptr %334, null
  %385 = select i1 %383, i1 %384, i1 false
  %386 = icmp ne ptr %330, null
  %387 = select i1 %385, i1 %386, i1 false
  br i1 %387, label %388, label %418

388:                                              ; preds = %380
  %389 = getelementptr inbounds %struct.table_elt, ptr %381, i64 0, i32 6
  %390 = load ptr, ptr %389, align 8, !tbaa !116
  %391 = getelementptr inbounds %struct.table_elt, ptr %330, i64 0, i32 6
  %392 = load ptr, ptr %391, align 8, !tbaa !116
  %393 = icmp eq ptr %390, %392
  br i1 %393, label %421, label %394

394:                                              ; preds = %388
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %381, ptr noundef nonnull %330) #25
  %395 = load i32, ptr %262, align 8
  %396 = and i32 %395, 65535
  %397 = icmp eq i32 %396, 37
  br i1 %397, label %398, label %406

398:                                              ; preds = %394
  %399 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %262) #25
  %400 = icmp ugt i32 %399, 52
  br i1 %400, label %401, label %406

401:                                              ; preds = %398
  %402 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %399) #25
  %403 = getelementptr inbounds %struct.cse_reg_info, ptr %402, i64 0, i32 1
  %404 = load i32, ptr %403, align 4, !tbaa !17
  %405 = add i32 %404, 4736
  br label %411

406:                                              ; preds = %398, %394
  %407 = getelementptr inbounds %struct.table_elt, ptr %381, i64 0, i32 10
  %408 = load i8, ptr %407, align 8
  %409 = zext i8 %408 to i32
  %410 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %262, i32 noundef %409) #25
  br label %411

411:                                              ; preds = %406, %401
  %412 = phi i32 [ %405, %401 ], [ %410, %406 ]
  %413 = and i32 %412, 31
  %414 = getelementptr inbounds %struct.table_elt, ptr %381, i64 0, i32 10
  %415 = load i8, ptr %414, align 8
  %416 = zext i8 %415 to i32
  %417 = tail call fastcc ptr @lookup(ptr noundef nonnull %262, i32 noundef %413, i32 noundef %416) #25
  br label %421

418:                                              ; preds = %380
  %419 = select i1 %386, ptr %330, ptr %381
  %420 = icmp eq ptr %419, null
  br i1 %420, label %441, label %421

421:                                              ; preds = %388, %411, %418
  %422 = phi ptr [ %330, %418 ], [ %330, %388 ], [ %417, %411 ]
  %423 = phi i32 [ %327, %418 ], [ %327, %388 ], [ %413, %411 ]
  %424 = phi ptr [ %419, %418 ], [ %381, %388 ], [ %381, %411 ]
  %425 = phi ptr [ %334, %418 ], [ null, %388 ], [ null, %411 ]
  %426 = getelementptr inbounds %struct.table_elt, ptr %424, i64 0, i32 6
  %427 = load ptr, ptr %426, align 8, !tbaa !6
  %428 = icmp eq ptr %427, null
  br i1 %428, label %441, label %429

429:                                              ; preds = %421, %434
  %430 = phi ptr [ %436, %434 ], [ %427, %421 ]
  %431 = getelementptr inbounds %struct.table_elt, ptr %430, i64 0, i32 12
  %432 = load i8, ptr %431, align 2, !tbaa !117
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.table_elt, ptr %430, i64 0, i32 4
  %436 = load ptr, ptr %435, align 8, !tbaa !6
  %437 = icmp eq ptr %436, null
  br i1 %437, label %441, label %429, !llvm.loop !118

438:                                              ; preds = %429
  %439 = load ptr, ptr %430, align 8, !tbaa !10
  %440 = icmp eq ptr %439, null
  br i1 %440, label %441, label %479

441:                                              ; preds = %434, %421, %418, %438
  %442 = phi ptr [ %424, %438 ], [ null, %418 ], [ null, %421 ], [ null, %434 ]
  %443 = phi ptr [ %425, %438 ], [ %334, %418 ], [ %425, %421 ], [ %425, %434 ]
  %444 = phi ptr [ %424, %438 ], [ null, %418 ], [ %424, %421 ], [ %424, %434 ]
  %445 = phi i32 [ %423, %438 ], [ %327, %418 ], [ %423, %421 ], [ %423, %434 ]
  %446 = phi ptr [ %422, %438 ], [ %330, %418 ], [ %422, %421 ], [ %422, %434 ]
  %447 = phi i1 [ true, %438 ], [ false, %418 ], [ true, %421 ], [ true, %434 ]
  %448 = load i32, ptr %335, align 8
  %449 = and i32 %448, 65535
  %450 = zext nneg i32 %449 to i64
  %451 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %450
  %452 = load i32, ptr %451, align 4, !tbaa !15
  %453 = icmp eq i32 %452, 9
  br i1 %453, label %479, label %454

454:                                              ; preds = %441
  %455 = icmp eq i32 %449, 50
  br i1 %455, label %456, label %468

456:                                              ; preds = %454
  %457 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1
  %458 = load ptr, ptr %457, align 8, !tbaa !16
  %459 = load i32, ptr %458, align 8
  %460 = and i32 %459, 65535
  %461 = icmp eq i32 %460, 44
  br i1 %461, label %462, label %468

462:                                              ; preds = %456
  %463 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1, i32 0, i32 0, i64 1
  %464 = load ptr, ptr %463, align 8, !tbaa !16
  %465 = load i32, ptr %464, align 8
  %466 = and i32 %465, 65535
  %467 = icmp eq i32 %466, 44
  br i1 %467, label %479, label %468

468:                                              ; preds = %462, %456, %454
  %469 = icmp eq ptr %443, null
  br i1 %469, label %509, label %470

470:                                              ; preds = %468
  %471 = load i32, ptr %443, align 8
  %472 = and i32 %471, 65535
  %473 = zext nneg i32 %472 to i64
  %474 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %473
  %475 = load i32, ptr %474, align 4, !tbaa !15
  %476 = icmp eq i32 %475, 9
  %477 = select i1 %476, ptr %446, ptr %442
  %478 = select i1 %476, ptr %443, ptr null
  br label %479

479:                                              ; preds = %438, %470, %441, %462
  %480 = phi ptr [ %443, %462 ], [ %443, %441 ], [ %443, %470 ], [ %425, %438 ]
  %481 = phi ptr [ %444, %462 ], [ %444, %441 ], [ %444, %470 ], [ %424, %438 ]
  %482 = phi i32 [ %445, %462 ], [ %445, %441 ], [ %445, %470 ], [ %423, %438 ]
  %483 = phi ptr [ %446, %462 ], [ %446, %441 ], [ %446, %470 ], [ %422, %438 ]
  %484 = phi i1 [ %447, %462 ], [ %447, %441 ], [ %447, %470 ], [ true, %438 ]
  %485 = phi ptr [ %444, %462 ], [ %444, %441 ], [ %477, %470 ], [ %424, %438 ]
  %486 = phi ptr [ %335, %462 ], [ %335, %441 ], [ %478, %470 ], [ %439, %438 ]
  %487 = icmp ne ptr %486, null
  %488 = icmp eq ptr %485, null
  %489 = select i1 %487, i1 %488, i1 false
  br i1 %489, label %490, label %509

490:                                              ; preds = %479
  %491 = load i32, ptr %486, align 8
  %492 = and i32 %491, 65535
  %493 = icmp eq i32 %492, 37
  br i1 %493, label %494, label %502

494:                                              ; preds = %490
  %495 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %486) #25
  %496 = icmp ugt i32 %495, 52
  br i1 %496, label %497, label %502

497:                                              ; preds = %494
  %498 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %495) #25
  %499 = getelementptr inbounds %struct.cse_reg_info, ptr %498, i64 0, i32 1
  %500 = load i32, ptr %499, align 4, !tbaa !17
  %501 = add i32 %500, 4736
  br label %504

502:                                              ; preds = %494, %490
  %503 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %486, i32 noundef %283) #25
  br label %504

504:                                              ; preds = %502, %497
  %505 = phi i32 [ %501, %497 ], [ %503, %502 ]
  %506 = and i32 %505, 31
  %507 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 10
  store i32 %506, ptr %507, align 8, !tbaa !119
  %508 = tail call fastcc ptr @lookup(ptr noundef nonnull %486, i32 noundef %506, i32 noundef %283) #25
  br label %509

509:                                              ; preds = %468, %504, %479
  %510 = phi i1 [ true, %504 ], [ %487, %479 ], [ false, %468 ]
  %511 = phi ptr [ %486, %504 ], [ %486, %479 ], [ null, %468 ]
  %512 = phi i1 [ %484, %504 ], [ %484, %479 ], [ %447, %468 ]
  %513 = phi ptr [ %483, %504 ], [ %483, %479 ], [ %446, %468 ]
  %514 = phi i32 [ %482, %504 ], [ %482, %479 ], [ %445, %468 ]
  %515 = phi ptr [ %481, %504 ], [ %481, %479 ], [ %444, %468 ]
  %516 = phi ptr [ %480, %504 ], [ %480, %479 ], [ null, %468 ]
  %517 = phi ptr [ %508, %504 ], [ %485, %479 ], [ %442, %468 ]
  %518 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 9
  store ptr %511, ptr %518, align 8, !tbaa !120
  %519 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 11
  store ptr %517, ptr %519, align 8, !tbaa !121
  %520 = icmp ne ptr %517, null
  %521 = and i1 %512, %520
  br i1 %521, label %522, label %529

522:                                              ; preds = %509
  %523 = getelementptr inbounds %struct.table_elt, ptr %517, i64 0, i32 6
  %524 = load ptr, ptr %523, align 8, !tbaa !116
  %525 = getelementptr inbounds %struct.table_elt, ptr %515, i64 0, i32 6
  %526 = load ptr, ptr %525, align 8, !tbaa !116
  %527 = icmp eq ptr %524, %526
  br i1 %527, label %529, label %528

528:                                              ; preds = %522
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %515, ptr noundef nonnull %517) #25
  br label %533

529:                                              ; preds = %522, %509
  %530 = icmp eq ptr %515, null
  %531 = and i1 %530, %520
  %532 = select i1 %531, ptr %517, ptr %515
  br label %533

533:                                              ; preds = %529, %528
  %534 = phi ptr [ %515, %528 ], [ %532, %529 ]
  br i1 %510, label %535, label %647

535:                                              ; preds = %533
  %536 = load i32, ptr %511, align 8
  %537 = and i32 %536, 65535
  %538 = icmp eq i32 %537, 35
  br i1 %538, label %544, label %539

539:                                              ; preds = %535
  br i1 %520, label %540, label %579

540:                                              ; preds = %539
  %541 = getelementptr inbounds %struct.table_elt, ptr %517, i64 0, i32 7
  %542 = load ptr, ptr %541, align 8, !tbaa !122
  %543 = icmp eq ptr %542, null
  br i1 %543, label %579, label %544

544:                                              ; preds = %540, %535
  %545 = tail call fastcc ptr @use_related_value(ptr noundef nonnull %511, ptr noundef %517) #25
  %546 = icmp eq ptr %545, null
  br i1 %546, label %579, label %547

547:                                              ; preds = %544
  %548 = load i32, ptr %545, align 8
  %549 = and i32 %548, 65535
  %550 = icmp eq i32 %549, 37
  br i1 %550, label %551, label %559

551:                                              ; preds = %547
  %552 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %545) #25
  %553 = icmp ugt i32 %552, 52
  br i1 %553, label %554, label %559

554:                                              ; preds = %551
  %555 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %552) #25
  %556 = getelementptr inbounds %struct.cse_reg_info, ptr %555, i64 0, i32 1
  %557 = load i32, ptr %556, align 4, !tbaa !17
  %558 = add i32 %557, 4736
  br label %561

559:                                              ; preds = %551, %547
  %560 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %545, i32 noundef %283) #25
  br label %561

561:                                              ; preds = %559, %554
  %562 = phi i32 [ %558, %554 ], [ %560, %559 ]
  %563 = and i32 %562, 31
  %564 = tail call fastcc ptr @lookup(ptr noundef nonnull %545, i32 noundef %563, i32 noundef %283) #25
  %565 = icmp ne ptr %564, null
  %566 = icmp ne ptr %534, null
  %567 = and i1 %566, %565
  br i1 %567, label %568, label %575

568:                                              ; preds = %561
  %569 = getelementptr inbounds %struct.table_elt, ptr %534, i64 0, i32 6
  %570 = load ptr, ptr %569, align 8, !tbaa !116
  %571 = getelementptr inbounds %struct.table_elt, ptr %564, i64 0, i32 6
  %572 = load ptr, ptr %571, align 8, !tbaa !116
  %573 = icmp eq ptr %570, %572
  br i1 %573, label %579, label %574

574:                                              ; preds = %568
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %534, ptr noundef nonnull %564) #25
  br label %579

575:                                              ; preds = %561
  %576 = icmp eq ptr %534, null
  %577 = and i1 %576, %565
  %578 = select i1 %577, ptr %564, ptr %534
  br label %749

579:                                              ; preds = %539, %540, %544, %568, %574
  %580 = load i32, ptr %511, align 8
  %581 = and i32 %580, 65535
  %582 = icmp eq i32 %581, 30
  br i1 %582, label %583, label %647

583:                                              ; preds = %579
  %584 = zext nneg i32 %283 to i64
  %585 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %584
  %586 = load i8, ptr %585, align 1, !tbaa !16
  %587 = icmp eq i8 %586, 2
  br i1 %587, label %588, label %647

588:                                              ; preds = %583
  %589 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %584
  %590 = load i8, ptr %589, align 1, !tbaa !16
  %591 = icmp ult i8 %590, 4
  br i1 %591, label %592, label %647

592:                                              ; preds = %588
  %593 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %584
  %594 = load i8, ptr %593, align 1, !tbaa !16
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %647, label %596

596:                                              ; preds = %592, %642
  %597 = phi i8 [ %645, %642 ], [ %594, %592 ]
  %598 = phi ptr [ %643, %642 ], [ null, %592 ]
  %599 = zext i8 %597 to i32
  %600 = zext i8 %597 to i64
  %601 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %600
  %602 = load i8, ptr %601, align 1, !tbaa !16
  %603 = icmp ult i8 %602, 5
  %604 = icmp eq ptr %598, null
  %605 = select i1 %603, i1 %604, i1 false
  br i1 %605, label %606, label %647

606:                                              ; preds = %596
  %607 = load i32, ptr %511, align 8
  %608 = and i32 %607, 65535
  %609 = icmp eq i32 %608, 37
  br i1 %609, label %610, label %618

610:                                              ; preds = %606
  %611 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %511) #25
  %612 = icmp ugt i32 %611, 52
  br i1 %612, label %613, label %618

613:                                              ; preds = %610
  %614 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %611) #25
  %615 = getelementptr inbounds %struct.cse_reg_info, ptr %614, i64 0, i32 1
  %616 = load i32, ptr %615, align 4, !tbaa !17
  %617 = add i32 %616, 4736
  br label %620

618:                                              ; preds = %610, %606
  %619 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %511, i32 noundef %599) #25
  br label %620

620:                                              ; preds = %618, %613
  %621 = phi i32 [ %617, %613 ], [ %619, %618 ]
  %622 = and i32 %621, 31
  %623 = tail call fastcc ptr @lookup(ptr noundef nonnull %511, i32 noundef %622, i32 noundef %599) #25
  %624 = icmp eq ptr %623, null
  br i1 %624, label %642, label %625

625:                                              ; preds = %620
  %626 = getelementptr inbounds %struct.table_elt, ptr %623, i64 0, i32 6
  %627 = load ptr, ptr %626, align 8, !tbaa !6
  %628 = icmp eq ptr %627, null
  br i1 %628, label %642, label %633

629:                                              ; preds = %633
  %630 = getelementptr inbounds %struct.table_elt, ptr %634, i64 0, i32 4
  %631 = load ptr, ptr %630, align 8, !tbaa !6
  %632 = icmp eq ptr %631, null
  br i1 %632, label %642, label %633, !llvm.loop !123

633:                                              ; preds = %625, %629
  %634 = phi ptr [ %631, %629 ], [ %627, %625 ]
  %635 = load ptr, ptr %634, align 8, !tbaa !10
  %636 = load i32, ptr %635, align 8
  %637 = and i32 %636, 65535
  %638 = icmp eq i32 %637, 37
  br i1 %638, label %639, label %629

639:                                              ; preds = %633
  %640 = load ptr, ptr @rtl_hooks, align 8, !tbaa !124
  %641 = tail call ptr %640(i32 noundef %283, ptr noundef nonnull %635) #23
  br label %642

642:                                              ; preds = %629, %625, %639, %620
  %643 = phi ptr [ null, %620 ], [ %641, %639 ], [ null, %625 ], [ null, %629 ]
  %644 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %600
  %645 = load i8, ptr %644, align 1, !tbaa !16
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %647, label %596, !llvm.loop !126

647:                                              ; preds = %596, %642, %592, %533, %588, %583, %579
  %648 = phi ptr [ null, %588 ], [ null, %583 ], [ null, %579 ], [ null, %533 ], [ null, %592 ], [ %598, %596 ], [ %643, %642 ]
  %649 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !15
  %650 = icmp eq i32 %649, 0
  %651 = icmp ne ptr %648, null
  %652 = select i1 %650, i1 true, i1 %651
  br i1 %652, label %735, label %653

653:                                              ; preds = %647
  %654 = load i32, ptr %273, align 8
  %655 = and i32 %654, 65535
  %656 = icmp eq i32 %655, 61
  br i1 %656, label %657, label %735

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1
  %659 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1, i32 0, i32 0, i64 1
  %660 = load ptr, ptr %659, align 8, !tbaa !16
  %661 = load i32, ptr %660, align 8
  %662 = and i32 %661, 65535
  %663 = icmp eq i32 %662, 30
  br i1 %663, label %664, label %735

664:                                              ; preds = %657
  %665 = zext nneg i32 %283 to i64
  %666 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %665
  %667 = load i8, ptr %666, align 1, !tbaa !16
  %668 = icmp ult i8 %667, 4
  br i1 %668, label %669, label %735

669:                                              ; preds = %664
  %670 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef 0, ptr noundef null, ptr noundef nonnull %660) #23
  %671 = getelementptr inbounds %struct.rtx_def, ptr %670, i64 0, i32 1
  %672 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %665
  %673 = load i8, ptr %672, align 1, !tbaa !16
  %674 = zext i8 %673 to i64
  %675 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %674
  %676 = load i8, ptr %675, align 1, !tbaa !16
  %677 = icmp ult i8 %676, 5
  br i1 %677, label %678, label %735

678:                                              ; preds = %669, %728
  %679 = phi i64 [ %731, %728 ], [ %674, %669 ]
  %680 = phi i8 [ %730, %728 ], [ %673, %669 ]
  %681 = zext i8 %680 to i32
  %682 = load ptr, ptr @rtl_hooks, align 8, !tbaa !124
  %683 = load ptr, ptr %658, align 8, !tbaa !16
  %684 = tail call ptr %682(i32 noundef %681, ptr noundef %683) #23
  %685 = icmp eq ptr %684, null
  br i1 %685, label %728, label %686

686:                                              ; preds = %678
  %687 = load i32, ptr %670, align 8
  %688 = shl nuw nsw i32 %681, 16
  %689 = and i32 %687, -16711681
  %690 = or disjoint i32 %689, %688
  store i32 %690, ptr %670, align 8
  store ptr %684, ptr %671, align 8, !tbaa !16
  %691 = and i32 %687, 65535
  %692 = icmp eq i32 %691, 37
  br i1 %692, label %693, label %701

693:                                              ; preds = %686
  %694 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %670) #25
  %695 = icmp ugt i32 %694, 52
  br i1 %695, label %696, label %701

696:                                              ; preds = %693
  %697 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %694) #25
  %698 = getelementptr inbounds %struct.cse_reg_info, ptr %697, i64 0, i32 1
  %699 = load i32, ptr %698, align 4, !tbaa !17
  %700 = add i32 %699, 4736
  br label %703

701:                                              ; preds = %693, %686
  %702 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %670, i32 noundef %681) #25
  br label %703

703:                                              ; preds = %701, %696
  %704 = phi i32 [ %700, %696 ], [ %702, %701 ]
  %705 = and i32 %704, 31
  %706 = tail call fastcc ptr @lookup(ptr noundef nonnull %670, i32 noundef %705, i32 noundef %681) #25
  %707 = icmp eq ptr %706, null
  br i1 %707, label %728, label %708

708:                                              ; preds = %703
  %709 = getelementptr inbounds %struct.table_elt, ptr %706, i64 0, i32 6
  %710 = load ptr, ptr %709, align 8, !tbaa !6
  %711 = icmp eq ptr %710, null
  br i1 %711, label %725, label %716

712:                                              ; preds = %716
  %713 = getelementptr inbounds %struct.table_elt, ptr %717, i64 0, i32 4
  %714 = load ptr, ptr %713, align 8, !tbaa !6
  %715 = icmp eq ptr %714, null
  br i1 %715, label %725, label %716, !llvm.loop !127

716:                                              ; preds = %708, %712
  %717 = phi ptr [ %714, %712 ], [ %710, %708 ]
  %718 = load ptr, ptr %717, align 8, !tbaa !10
  %719 = load i32, ptr %718, align 8
  %720 = and i32 %719, 65535
  %721 = icmp eq i32 %720, 37
  br i1 %721, label %722, label %712

722:                                              ; preds = %716
  %723 = load ptr, ptr @rtl_hooks, align 8, !tbaa !124
  %724 = tail call ptr %723(i32 noundef %283, ptr noundef nonnull %718) #23
  br label %725

725:                                              ; preds = %712, %708, %722
  %726 = phi ptr [ %724, %722 ], [ null, %708 ], [ null, %712 ]
  %727 = icmp eq ptr %726, null
  br i1 %727, label %728, label %749

728:                                              ; preds = %725, %678, %703
  %729 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %679
  %730 = load i8, ptr %729, align 1, !tbaa !16
  %731 = zext i8 %730 to i64
  %732 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !16
  %734 = icmp ult i8 %733, 5
  br i1 %734, label %678, label %735, !llvm.loop !128

735:                                              ; preds = %728, %669, %664, %657, %653, %647
  %736 = phi ptr [ %648, %647 ], [ null, %664 ], [ null, %657 ], [ null, %653 ], [ null, %669 ], [ null, %728 ]
  %737 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !129
  %738 = icmp ne i64 %737, 0
  %739 = icmp eq ptr %736, null
  %740 = select i1 %738, i1 %739, i1 false
  %741 = and i1 %510, %740
  br i1 %741, label %742, label %749

742:                                              ; preds = %735
  %743 = load i32, ptr %511, align 8
  %744 = and i32 %743, 65535
  %745 = icmp eq i32 %744, 30
  br i1 %745, label %746, label %749

746:                                              ; preds = %742
  %747 = tail call fastcc ptr @try_const_anchors(ptr noundef nonnull %511, i32 noundef %283) #25
  %748 = icmp ne ptr %747, null
  br label %749

749:                                              ; preds = %725, %575, %746, %742, %735
  %750 = phi ptr [ %534, %746 ], [ %534, %742 ], [ %534, %735 ], [ %578, %575 ], [ %534, %725 ]
  %751 = phi i1 [ %748, %746 ], [ false, %742 ], [ false, %735 ], [ false, %575 ], [ false, %725 ]
  %752 = phi ptr [ %747, %746 ], [ null, %742 ], [ %736, %735 ], [ %545, %575 ], [ %726, %725 ]
  %753 = icmp eq ptr %273, %335
  %754 = select i1 %753, ptr null, ptr %335
  %755 = icmp eq ptr %750, null
  br i1 %755, label %876, label %756

756:                                              ; preds = %749
  %757 = getelementptr inbounds %struct.table_elt, ptr %750, i64 0, i32 6
  %758 = load ptr, ptr %757, align 8, !tbaa !116
  %759 = icmp eq ptr %758, null
  br i1 %759, label %876, label %760

760:                                              ; preds = %756, %868
  %761 = phi ptr [ %872, %868 ], [ %273, %756 ]
  %762 = phi ptr [ %871, %868 ], [ %754, %756 ]
  %763 = phi ptr [ %874, %868 ], [ %758, %756 ]
  %764 = phi ptr [ %870, %868 ], [ %516, %756 ]
  %765 = phi ptr [ %869, %868 ], [ %752, %756 ]
  %766 = load ptr, ptr %763, align 8, !tbaa !10
  %767 = load i32, ptr %766, align 8
  %768 = and i32 %767, 65535
  %769 = icmp eq i32 %768, 37
  br i1 %769, label %812, label %770

770:                                              ; preds = %760
  %771 = tail call i32 @exp_equiv_p(ptr noundef nonnull %766, ptr noundef nonnull %766, i32 noundef 1, i8 noundef zeroext 0) #25, !range !34
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %868, label %773

773:                                              ; preds = %770
  %774 = icmp eq i32 %768, 39
  br i1 %774, label %775, label %812

775:                                              ; preds = %773
  %776 = load ptr, ptr %763, align 8, !tbaa !10
  %777 = load i32, ptr %776, align 8
  %778 = lshr i32 %777, 16
  %779 = and i32 %778, 255
  %780 = zext nneg i32 %779 to i64
  %781 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %780
  %782 = load i8, ptr %781, align 1, !tbaa !16
  %783 = getelementptr inbounds %struct.rtx_def, ptr %776, i64 0, i32 1
  %784 = load ptr, ptr %783, align 8, !tbaa !16
  %785 = load i32, ptr %784, align 8
  %786 = lshr i32 %785, 16
  %787 = and i32 %786, 255
  %788 = zext nneg i32 %787 to i64
  %789 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %788
  %790 = load i8, ptr %789, align 1, !tbaa !16
  %791 = icmp ugt i8 %782, %790
  br i1 %791, label %792, label %812

792:                                              ; preds = %775
  %793 = icmp eq ptr %761, null
  br i1 %793, label %868, label %794

794:                                              ; preds = %792
  %795 = load i32, ptr %761, align 8
  %796 = and i32 %795, 65535
  %797 = icmp eq i32 %796, 39
  br i1 %797, label %798, label %868

798:                                              ; preds = %794
  %799 = lshr i32 %795, 16
  %800 = and i32 %799, 255
  %801 = icmp eq i32 %800, %779
  br i1 %801, label %802, label %868

802:                                              ; preds = %798
  %803 = getelementptr inbounds %struct.rtx_def, ptr %761, i64 0, i32 1
  %804 = load ptr, ptr %803, align 8, !tbaa !16
  %805 = load i32, ptr %804, align 8
  %806 = lshr i32 %805, 16
  %807 = and i32 %806, 255
  %808 = zext nneg i32 %807 to i64
  %809 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %808
  %810 = load i8, ptr %809, align 1, !tbaa !16
  %811 = icmp ult i8 %810, %790
  br i1 %811, label %817, label %868

812:                                              ; preds = %760, %775, %773
  %813 = icmp eq ptr %761, null
  br i1 %813, label %824, label %814

814:                                              ; preds = %812
  %815 = load i32, ptr %761, align 8
  %816 = and i32 %815, 65535
  br label %817

817:                                              ; preds = %814, %802
  %818 = phi i32 [ %816, %814 ], [ 39, %802 ]
  %819 = icmp eq i32 %818, %768
  br i1 %819, label %820, label %824

820:                                              ; preds = %817
  %821 = load ptr, ptr %763, align 8, !tbaa !10
  %822 = tail call i32 @rtx_equal_p(ptr noundef nonnull %761, ptr noundef %821) #23
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %855

824:                                              ; preds = %820, %817, %812
  %825 = icmp eq ptr %762, null
  br i1 %825, label %834, label %826

826:                                              ; preds = %824
  %827 = load i32, ptr %762, align 8
  %828 = and i32 %827, 65535
  %829 = icmp eq i32 %828, %768
  br i1 %829, label %830, label %834

830:                                              ; preds = %826
  %831 = load ptr, ptr %763, align 8, !tbaa !10
  %832 = tail call i32 @rtx_equal_p(ptr noundef nonnull %762, ptr noundef %831) #23
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %855

834:                                              ; preds = %830, %826, %824
  %835 = icmp eq ptr %764, null
  br i1 %835, label %844, label %836

836:                                              ; preds = %834
  %837 = load i32, ptr %764, align 8
  %838 = and i32 %837, 65535
  %839 = icmp eq i32 %838, %768
  br i1 %839, label %840, label %844

840:                                              ; preds = %836
  %841 = load ptr, ptr %763, align 8, !tbaa !10
  %842 = tail call i32 @rtx_equal_p(ptr noundef nonnull %764, ptr noundef %841) #23
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %844, label %855

844:                                              ; preds = %840, %836, %834
  %845 = icmp eq ptr %765, null
  br i1 %845, label %855, label %846

846:                                              ; preds = %844
  %847 = load i32, ptr %765, align 8
  %848 = and i32 %847, 65535
  %849 = icmp eq i32 %848, %768
  br i1 %849, label %850, label %855

850:                                              ; preds = %846
  %851 = load ptr, ptr %763, align 8, !tbaa !10
  %852 = tail call i32 @rtx_equal_p(ptr noundef nonnull %765, ptr noundef %851) #23
  %853 = icmp eq i32 %852, 0
  %854 = select i1 %853, ptr %765, ptr null
  br label %855

855:                                              ; preds = %850, %840, %830, %820, %844, %846
  %856 = phi ptr [ %765, %846 ], [ null, %844 ], [ %765, %820 ], [ %765, %830 ], [ %765, %840 ], [ %854, %850 ]
  %857 = phi ptr [ %764, %846 ], [ %764, %844 ], [ %764, %820 ], [ %764, %830 ], [ null, %840 ], [ %764, %850 ]
  %858 = phi ptr [ %762, %846 ], [ %762, %844 ], [ %762, %820 ], [ null, %830 ], [ %762, %840 ], [ %762, %850 ]
  %859 = phi ptr [ %761, %846 ], [ %761, %844 ], [ null, %820 ], [ %761, %830 ], [ %761, %840 ], [ %761, %850 ]
  %860 = load i32, ptr %271, align 8
  %861 = and i32 %860, 65535
  %862 = icmp eq i32 %861, %768
  br i1 %862, label %863, label %868

863:                                              ; preds = %855
  %864 = load ptr, ptr %763, align 8, !tbaa !10
  %865 = tail call i32 @rtx_equal_p(ptr noundef %864, ptr noundef nonnull %271) #23
  %866 = icmp eq i32 %865, 0
  %867 = select i1 %866, ptr %856, ptr %271
  br label %868

868:                                              ; preds = %863, %855, %792, %794, %798, %802, %770
  %869 = phi ptr [ %765, %770 ], [ %765, %802 ], [ %765, %798 ], [ %765, %794 ], [ %765, %792 ], [ %856, %855 ], [ %867, %863 ]
  %870 = phi ptr [ %764, %770 ], [ %764, %802 ], [ %764, %798 ], [ %764, %794 ], [ %764, %792 ], [ %857, %855 ], [ %857, %863 ]
  %871 = phi ptr [ %762, %770 ], [ %762, %802 ], [ %762, %798 ], [ %762, %794 ], [ %762, %792 ], [ %858, %855 ], [ %858, %863 ]
  %872 = phi ptr [ %761, %770 ], [ %761, %802 ], [ %761, %798 ], [ %761, %794 ], [ null, %792 ], [ %859, %855 ], [ %859, %863 ]
  %873 = getelementptr inbounds %struct.table_elt, ptr %763, i64 0, i32 4
  %874 = load ptr, ptr %873, align 8, !tbaa !141
  %875 = icmp eq ptr %874, null
  br i1 %875, label %876, label %760, !llvm.loop !142

876:                                              ; preds = %868, %749, %756
  %877 = phi ptr [ null, %756 ], [ null, %749 ], [ %758, %868 ]
  %878 = phi ptr [ %752, %756 ], [ %752, %749 ], [ %869, %868 ]
  %879 = phi ptr [ %516, %756 ], [ %516, %749 ], [ %870, %868 ]
  %880 = phi ptr [ %754, %756 ], [ %754, %749 ], [ %871, %868 ]
  %881 = phi ptr [ %273, %756 ], [ %273, %749 ], [ %872, %868 ]
  %882 = icmp eq ptr %881, null
  br i1 %882, label %895, label %883

883:                                              ; preds = %876
  %884 = tail call i32 @rtx_equal_p(ptr noundef nonnull %881, ptr noundef nonnull %271) #23
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %895

886:                                              ; preds = %883
  %887 = load i32, ptr %881, align 8
  %888 = and i32 %887, 65535
  %889 = icmp eq i32 %888, 37
  br i1 %889, label %892, label %890

890:                                              ; preds = %886
  %891 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %881, i32 noundef 23) #25
  br label %892

892:                                              ; preds = %886, %890
  %893 = phi i32 [ %891, %890 ], [ 0, %886 ]
  %894 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %881) #25
  br label %895

895:                                              ; preds = %883, %892, %876
  %896 = phi i32 [ %894, %892 ], [ 2147483647, %876 ], [ -1, %883 ]
  %897 = phi i32 [ %893, %892 ], [ 2147483647, %876 ], [ -1, %883 ]
  %898 = icmp ne ptr %879, null
  br i1 %898, label %899, label %911

899:                                              ; preds = %895
  %900 = tail call i32 @rtx_equal_p(ptr noundef nonnull %879, ptr noundef nonnull %271) #23
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %902, label %911

902:                                              ; preds = %899
  %903 = load i32, ptr %879, align 8
  %904 = and i32 %903, 65535
  %905 = icmp eq i32 %904, 37
  br i1 %905, label %908, label %906

906:                                              ; preds = %902
  %907 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %879, i32 noundef 23) #25
  br label %908

908:                                              ; preds = %902, %906
  %909 = phi i32 [ %907, %906 ], [ 0, %902 ]
  %910 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %879) #25
  br label %911

911:                                              ; preds = %899, %908, %895
  %912 = phi i32 [ %910, %908 ], [ 2147483647, %895 ], [ -1, %899 ]
  %913 = phi i32 [ %909, %908 ], [ 2147483647, %895 ], [ -1, %899 ]
  %914 = icmp eq ptr %880, null
  br i1 %914, label %927, label %915

915:                                              ; preds = %911
  %916 = tail call i32 @rtx_equal_p(ptr noundef nonnull %880, ptr noundef nonnull %271) #23
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %918, label %927

918:                                              ; preds = %915
  %919 = load i32, ptr %880, align 8
  %920 = and i32 %919, 65535
  %921 = icmp eq i32 %920, 37
  br i1 %921, label %924, label %922

922:                                              ; preds = %918
  %923 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %880, i32 noundef 23) #25
  br label %924

924:                                              ; preds = %918, %922
  %925 = phi i32 [ %923, %922 ], [ 0, %918 ]
  %926 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %880) #25
  br label %927

927:                                              ; preds = %915, %924, %911
  %928 = phi i32 [ %926, %924 ], [ 2147483647, %911 ], [ -1, %915 ]
  %929 = phi i32 [ %925, %924 ], [ 2147483647, %911 ], [ -1, %915 ]
  %930 = icmp eq ptr %878, null
  br i1 %930, label %948, label %931

931:                                              ; preds = %927
  %932 = tail call i32 @rtx_equal_p(ptr noundef nonnull %878, ptr noundef nonnull %271) #23
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %934, label %948

934:                                              ; preds = %931
  %935 = load i32, ptr %878, align 8
  %936 = and i32 %935, 65535
  %937 = icmp eq i32 %936, 37
  br i1 %937, label %940, label %938

938:                                              ; preds = %934
  %939 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %878, i32 noundef 23) #25
  br label %940

940:                                              ; preds = %934, %938
  %941 = phi i32 [ %939, %938 ], [ 0, %934 ]
  %942 = tail call fastcc i32 @approx_reg_cost(ptr noundef nonnull %878) #25
  %943 = icmp eq i32 %941, %897
  %944 = and i1 %898, %943
  %945 = select i1 %751, i1 %944, i1 false
  %946 = sext i1 %945 to i32
  %947 = add nsw i32 %941, %946
  br label %948

948:                                              ; preds = %940, %931, %927
  %949 = phi i32 [ 2147483647, %927 ], [ -1, %931 ], [ %942, %940 ]
  %950 = phi i32 [ 2147483647, %927 ], [ -1, %931 ], [ %947, %940 ]
  %951 = load ptr, ptr @global_rtl, align 16, !tbaa !6
  %952 = icmp eq ptr %271, %951
  %953 = and i1 %510, %952
  br i1 %953, label %954, label %959

954:                                              ; preds = %948
  %955 = load i32, ptr %511, align 8
  %956 = and i32 %955, 65535
  %957 = icmp eq i32 %956, 44
  br i1 %957, label %958, label %959

958:                                              ; preds = %954
  br label %959

959:                                              ; preds = %958, %954, %948
  %960 = phi i32 [ -1, %958 ], [ %928, %954 ], [ %928, %948 ]
  %961 = phi i32 [ -1, %958 ], [ %929, %954 ], [ %929, %948 ]
  %962 = phi ptr [ %511, %958 ], [ %880, %954 ], [ %880, %948 ]
  %963 = getelementptr inbounds %struct.rtx_def, ptr %881, i64 0, i32 1
  %964 = icmp eq ptr %962, null
  br label %965

965:                                              ; preds = %1258, %959
  %966 = phi i32 [ 2147483647, %959 ], [ %1040, %1258 ]
  %967 = phi i32 [ 2147483647, %959 ], [ %1081, %1258 ]
  %968 = phi i32 [ %950, %959 ], [ %1082, %1258 ]
  %969 = phi i32 [ %961, %959 ], [ %1083, %1258 ]
  %970 = phi i32 [ %913, %959 ], [ %1084, %1258 ]
  %971 = phi i32 [ %897, %959 ], [ %1085, %1258 ]
  %972 = phi ptr [ %877, %959 ], [ %1086, %1258 ]
  br label %973

973:                                              ; preds = %965, %1030
  %974 = phi ptr [ %1032, %1030 ], [ %972, %965 ]
  %975 = icmp eq ptr %974, null
  br i1 %975, label %1038, label %976

976:                                              ; preds = %973, %988
  %977 = phi ptr [ %990, %988 ], [ %974, %973 ]
  %978 = load ptr, ptr %977, align 8, !tbaa !10
  %979 = load i32, ptr %978, align 8
  %980 = and i32 %979, 65535
  %981 = icmp eq i32 %980, 37
  br i1 %981, label %992, label %982

982:                                              ; preds = %976
  %983 = tail call i32 @exp_equiv_p(ptr noundef nonnull %978, ptr noundef nonnull %978, i32 noundef 1, i8 noundef zeroext 0) #25, !range !34
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %988, label %985

985:                                              ; preds = %982
  %986 = load ptr, ptr %977, align 8, !tbaa !10
  %987 = load i32, ptr %986, align 8
  br label %992

988:                                              ; preds = %982
  %989 = getelementptr inbounds %struct.table_elt, ptr %977, i64 0, i32 4
  %990 = load ptr, ptr %989, align 8, !tbaa !141
  %991 = icmp eq ptr %990, null
  br i1 %991, label %1038, label %976, !llvm.loop !143

992:                                              ; preds = %976, %985
  %993 = phi i32 [ %987, %985 ], [ %979, %976 ]
  %994 = phi ptr [ %986, %985 ], [ %978, %976 ]
  %995 = and i32 %993, 65535
  %996 = icmp eq i32 %995, 39
  br i1 %996, label %997, label %1033

997:                                              ; preds = %992
  %998 = lshr i32 %993, 16
  %999 = and i32 %998, 255
  %1000 = zext nneg i32 %999 to i64
  %1001 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1000
  %1002 = load i8, ptr %1001, align 1, !tbaa !16
  %1003 = getelementptr inbounds %struct.rtx_def, ptr %994, i64 0, i32 1
  %1004 = load ptr, ptr %1003, align 8, !tbaa !16
  %1005 = load i32, ptr %1004, align 8
  %1006 = lshr i32 %1005, 16
  %1007 = and i32 %1006, 255
  %1008 = zext nneg i32 %1007 to i64
  %1009 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1008
  %1010 = load i8, ptr %1009, align 1, !tbaa !16
  %1011 = icmp ugt i8 %1002, %1010
  br i1 %1011, label %1012, label %1033

1012:                                             ; preds = %997
  br i1 %882, label %1030, label %1013

1013:                                             ; preds = %1012
  %1014 = load i32, ptr %881, align 8
  %1015 = and i32 %1014, 65535
  %1016 = icmp eq i32 %1015, 39
  br i1 %1016, label %1017, label %1030

1017:                                             ; preds = %1013
  %1018 = lshr i32 %1014, 16
  %1019 = and i32 %1018, 255
  %1020 = icmp eq i32 %1019, %999
  br i1 %1020, label %1021, label %1030

1021:                                             ; preds = %1017
  %1022 = load ptr, ptr %963, align 8, !tbaa !16
  %1023 = load i32, ptr %1022, align 8
  %1024 = lshr i32 %1023, 16
  %1025 = and i32 %1024, 255
  %1026 = zext nneg i32 %1025 to i64
  %1027 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1026
  %1028 = load i8, ptr %1027, align 1, !tbaa !16
  %1029 = icmp ult i8 %1028, %1010
  br i1 %1029, label %1033, label %1030

1030:                                             ; preds = %1021, %1017, %1013, %1012
  %1031 = getelementptr inbounds %struct.table_elt, ptr %977, i64 0, i32 4
  %1032 = load ptr, ptr %1031, align 8, !tbaa !141
  br label %973

1033:                                             ; preds = %992, %997, %1021
  %1034 = getelementptr inbounds %struct.table_elt, ptr %977, i64 0, i32 8
  %1035 = load i32, ptr %1034, align 8, !tbaa !144
  %1036 = getelementptr inbounds %struct.table_elt, ptr %977, i64 0, i32 9
  %1037 = load i32, ptr %1036, align 4, !tbaa !145
  br label %1038

1038:                                             ; preds = %973, %988, %1033
  %1039 = phi ptr [ %977, %1033 ], [ null, %988 ], [ null, %973 ]
  %1040 = phi i32 [ %1037, %1033 ], [ %966, %988 ], [ %966, %973 ]
  %1041 = phi i32 [ %1035, %1033 ], [ %967, %988 ], [ %967, %973 ]
  br i1 %964, label %1054, label %1042

1042:                                             ; preds = %1038
  %1043 = tail call fastcc i32 @preferable(i32 noundef %969, i32 noundef %960, i32 noundef %971, i32 noundef %896) #25
  %1044 = icmp slt i32 %1043, 1
  br i1 %1044, label %1045, label %1054

1045:                                             ; preds = %1042
  %1046 = tail call fastcc i32 @preferable(i32 noundef %969, i32 noundef %960, i32 noundef %970, i32 noundef %912) #25
  %1047 = icmp slt i32 %1046, 1
  br i1 %1047, label %1048, label %1054

1048:                                             ; preds = %1045
  %1049 = tail call fastcc i32 @preferable(i32 noundef %969, i32 noundef %960, i32 noundef %968, i32 noundef %949) #25
  %1050 = icmp slt i32 %1049, 1
  br i1 %1050, label %1051, label %1054

1051:                                             ; preds = %1048
  %1052 = tail call fastcc i32 @preferable(i32 noundef %969, i32 noundef %960, i32 noundef %1041, i32 noundef %1040) #25
  %1053 = icmp slt i32 %1052, 1
  br i1 %1053, label %1079, label %1054

1054:                                             ; preds = %1051, %1048, %1045, %1042, %1038
  br i1 %882, label %1064, label %1055

1055:                                             ; preds = %1054
  %1056 = tail call fastcc i32 @preferable(i32 noundef %971, i32 noundef %896, i32 noundef %970, i32 noundef %912) #25
  %1057 = icmp slt i32 %1056, 1
  br i1 %1057, label %1058, label %1064

1058:                                             ; preds = %1055
  %1059 = tail call fastcc i32 @preferable(i32 noundef %971, i32 noundef %896, i32 noundef %968, i32 noundef %949) #25
  %1060 = icmp slt i32 %1059, 1
  br i1 %1060, label %1061, label %1064

1061:                                             ; preds = %1058
  %1062 = tail call fastcc i32 @preferable(i32 noundef %971, i32 noundef %896, i32 noundef %1041, i32 noundef %1040) #25
  %1063 = icmp slt i32 %1062, 1
  br i1 %1063, label %1079, label %1064

1064:                                             ; preds = %1061, %1058, %1055, %1054
  br i1 %898, label %1065, label %1071

1065:                                             ; preds = %1064
  %1066 = tail call fastcc i32 @preferable(i32 noundef %970, i32 noundef %912, i32 noundef %968, i32 noundef %949) #25
  %1067 = icmp slt i32 %1066, 1
  br i1 %1067, label %1068, label %1071

1068:                                             ; preds = %1065
  %1069 = tail call fastcc i32 @preferable(i32 noundef %970, i32 noundef %912, i32 noundef %1041, i32 noundef %1040) #25
  %1070 = icmp slt i32 %1069, 1
  br i1 %1070, label %1079, label %1071

1071:                                             ; preds = %1068, %1065, %1064
  br i1 %930, label %1075, label %1072

1072:                                             ; preds = %1071
  %1073 = tail call fastcc i32 @preferable(i32 noundef %968, i32 noundef %949, i32 noundef %1041, i32 noundef %1040) #25
  %1074 = icmp slt i32 %1073, 1
  br i1 %1074, label %1079, label %1075

1075:                                             ; preds = %1072, %1071
  %1076 = load ptr, ptr %1039, align 8, !tbaa !10
  %1077 = getelementptr inbounds %struct.table_elt, ptr %1039, i64 0, i32 4
  %1078 = load ptr, ptr %1077, align 8, !tbaa !141
  br label %1079

1079:                                             ; preds = %1072, %1068, %1061, %1051, %1075
  %1080 = phi ptr [ %1076, %1075 ], [ %962, %1051 ], [ %881, %1061 ], [ %879, %1068 ], [ %878, %1072 ]
  %1081 = phi i32 [ 2147483647, %1075 ], [ %1041, %1051 ], [ %1041, %1061 ], [ %1041, %1068 ], [ %1041, %1072 ]
  %1082 = phi i32 [ %968, %1075 ], [ %968, %1051 ], [ %968, %1061 ], [ %968, %1068 ], [ 2147483647, %1072 ]
  %1083 = phi i32 [ %969, %1075 ], [ 2147483647, %1051 ], [ %969, %1061 ], [ %969, %1068 ], [ %969, %1072 ]
  %1084 = phi i32 [ %970, %1075 ], [ %970, %1051 ], [ %970, %1061 ], [ 2147483647, %1068 ], [ %970, %1072 ]
  %1085 = phi i32 [ %971, %1075 ], [ %971, %1051 ], [ 2147483647, %1061 ], [ %971, %1068 ], [ %971, %1072 ]
  %1086 = phi ptr [ %1078, %1075 ], [ %1039, %1051 ], [ %1039, %1061 ], [ %1039, %1068 ], [ %1039, %1072 ]
  %1087 = load i32, ptr %1080, align 8
  %1088 = and i32 %1087, 65535
  %1089 = icmp eq i32 %1088, 43
  %1090 = load ptr, ptr %268, align 8, !tbaa !105
  br i1 %1089, label %1091, label %1118

1091:                                             ; preds = %1079
  %1092 = getelementptr inbounds %struct.rtx_def, ptr %1090, i64 0, i32 1
  %1093 = load ptr, ptr %1092, align 8, !tbaa !16
  %1094 = load i32, ptr %1093, align 8
  %1095 = and i32 %1094, 65535
  %1096 = icmp eq i32 %1095, 43
  br i1 %1096, label %1097, label %1118

1097:                                             ; preds = %1091
  %1098 = and i32 %1087, 16711680
  %1099 = icmp eq i32 %1098, 65536
  br i1 %1099, label %1304, label %1100

1100:                                             ; preds = %1097
  %1101 = tail call ptr @canon_rtx(ptr noundef nonnull %1080) #23
  %1102 = load ptr, ptr %268, align 8, !tbaa !105
  %1103 = getelementptr inbounds %struct.rtx_def, ptr %1102, i64 0, i32 1
  %1104 = load ptr, ptr %1103, align 8, !tbaa !16
  %1105 = tail call ptr @canon_rtx(ptr noundef %1104) #23
  %1106 = load i32, ptr %1101, align 8
  %1107 = and i32 %1106, 65535
  %1108 = icmp eq i32 %1107, 43
  br i1 %1108, label %1109, label %1304

1109:                                             ; preds = %1100
  %1110 = load i32, ptr %1105, align 8
  %1111 = and i32 %1110, 65535
  %1112 = icmp eq i32 %1111, 43
  br i1 %1112, label %1113, label %1304

1113:                                             ; preds = %1109
  %1114 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %1101, ptr noundef nonnull %1105) #23
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1304, label %1116

1116:                                             ; preds = %1113
  %1117 = load ptr, ptr %268, align 8, !tbaa !105
  br label %1118

1118:                                             ; preds = %1116, %1091, %1079
  %1119 = phi ptr [ %1117, %1116 ], [ %1090, %1091 ], [ %1090, %1079 ]
  %1120 = getelementptr inbounds %struct.rtx_def, ptr %1119, i64 0, i32 1
  %1121 = load ptr, ptr %1120, align 8, !tbaa !16
  %1122 = load i32, ptr %1121, align 8
  %1123 = and i32 %1122, 65535
  %1124 = icmp eq i32 %1123, 120
  br i1 %1124, label %1125, label %1238

1125:                                             ; preds = %1118
  %1126 = load i32, ptr %1080, align 8
  %1127 = and i32 %1126, 65535
  %1128 = icmp eq i32 %1127, 30
  br i1 %1128, label %1129, label %1238

1129:                                             ; preds = %1125
  %1130 = getelementptr inbounds %struct.rtx_def, ptr %1121, i64 0, i32 1
  %1131 = getelementptr inbounds %struct.rtx_def, ptr %1121, i64 0, i32 1, i32 0, i32 0, i64 1
  %1132 = load ptr, ptr %1131, align 8, !tbaa !16
  %1133 = load i32, ptr %1132, align 8
  %1134 = and i32 %1133, 65535
  %1135 = icmp eq i32 %1134, 30
  br i1 %1135, label %1136, label %1238

1136:                                             ; preds = %1129
  %1137 = getelementptr inbounds %struct.rtx_def, ptr %1121, i64 0, i32 1, i32 0, i32 0, i64 2
  %1138 = load ptr, ptr %1137, align 8, !tbaa !16
  %1139 = load i32, ptr %1138, align 8
  %1140 = and i32 %1139, 65535
  %1141 = icmp eq i32 %1140, 30
  br i1 %1141, label %1142, label %1238

1142:                                             ; preds = %1136
  %1143 = load ptr, ptr %1130, align 8, !tbaa !16
  %1144 = load i32, ptr %1143, align 8
  %1145 = and i32 %1144, 65535
  %1146 = icmp eq i32 %1145, 37
  br i1 %1146, label %1147, label %1238

1147:                                             ; preds = %1142
  %1148 = lshr i32 %1122, 16
  %1149 = and i32 %1148, 255
  %1150 = zext nneg i32 %1149 to i64
  %1151 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1150
  %1152 = load i8, ptr %1151, align 1, !tbaa !16
  %1153 = zext i8 %1152 to i64
  %1154 = shl nuw nsw i64 %1153, 3
  %1155 = getelementptr inbounds %struct.rtx_def, ptr %1132, i64 0, i32 1
  %1156 = load i64, ptr %1155, align 8, !tbaa !16
  %1157 = icmp slt i64 %1154, %1156
  br i1 %1157, label %1238, label %1158

1158:                                             ; preds = %1147
  %1159 = trunc i64 %1156 to i32
  %1160 = getelementptr inbounds %struct.rtx_def, ptr %1138, i64 0, i32 1
  %1161 = load i64, ptr %1160, align 8, !tbaa !16
  %1162 = trunc i64 %1161 to i32
  %1163 = add i32 %1162, %1159
  %1164 = icmp ult i32 %1163, 65
  br i1 %1164, label %1165, label %1238

1165:                                             ; preds = %1158
  %1166 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1143) #25
  %1167 = icmp ugt i32 %1166, 52
  br i1 %1167, label %1168, label %1173

1168:                                             ; preds = %1165
  %1169 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1166) #25
  %1170 = getelementptr inbounds %struct.cse_reg_info, ptr %1169, i64 0, i32 1
  %1171 = load i32, ptr %1170, align 4, !tbaa !17
  %1172 = add i32 %1171, 4736
  br label %1177

1173:                                             ; preds = %1165
  %1174 = lshr i32 %1144, 16
  %1175 = and i32 %1174, 255
  %1176 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1143, i32 noundef %1175) #25
  br label %1177

1177:                                             ; preds = %1173, %1168
  %1178 = phi i32 [ %1172, %1168 ], [ %1176, %1173 ]
  %1179 = and i32 %1178, 31
  %1180 = load i32, ptr %1143, align 8
  %1181 = lshr i32 %1180, 16
  %1182 = and i32 %1181, 255
  %1183 = tail call fastcc ptr @lookup(ptr noundef nonnull %1143, i32 noundef %1179, i32 noundef %1182) #25
  %1184 = icmp eq ptr %1183, null
  br i1 %1184, label %1238, label %1185

1185:                                             ; preds = %1177
  %1186 = getelementptr inbounds %struct.table_elt, ptr %1183, i64 0, i32 6
  %1187 = load ptr, ptr %1186, align 8, !tbaa !6
  %1188 = icmp eq ptr %1187, null
  br i1 %1188, label %1238, label %1189

1189:                                             ; preds = %1185, %1199
  %1190 = phi ptr [ %1201, %1199 ], [ %1187, %1185 ]
  %1191 = getelementptr inbounds %struct.table_elt, ptr %1190, i64 0, i32 12
  %1192 = load i8, ptr %1191, align 2, !tbaa !117
  %1193 = icmp eq i8 %1192, 0
  br i1 %1193, label %1199, label %1194

1194:                                             ; preds = %1189
  %1195 = load ptr, ptr %1190, align 8, !tbaa !10
  %1196 = load i32, ptr %1195, align 8
  %1197 = and i32 %1196, 65535
  %1198 = icmp eq i32 %1197, 30
  br i1 %1198, label %1203, label %1199

1199:                                             ; preds = %1189, %1194
  %1200 = getelementptr inbounds %struct.table_elt, ptr %1190, i64 0, i32 4
  %1201 = load ptr, ptr %1200, align 8, !tbaa !6
  %1202 = icmp eq ptr %1201, null
  br i1 %1202, label %1238, label %1189, !llvm.loop !146

1203:                                             ; preds = %1194
  %1204 = getelementptr inbounds %struct.rtx_def, ptr %1195, i64 0, i32 1
  %1205 = load i64, ptr %1204, align 8, !tbaa !16
  %1206 = load i64, ptr %1160, align 8, !tbaa !16
  %1207 = load i64, ptr %1155, align 8, !tbaa !16
  %1208 = icmp eq i64 %1207, 64
  %1209 = shl nsw i64 -1, %1207
  %1210 = xor i64 %1209, -1
  %1211 = select i1 %1208, i64 -1, i64 %1210
  %1212 = and i64 %1206, 4294967295
  %1213 = shl i64 %1211, %1212
  %1214 = xor i64 %1213, -1
  %1215 = and i64 %1205, %1214
  %1216 = getelementptr inbounds %struct.rtx_def, ptr %1080, i64 0, i32 1
  %1217 = load i64, ptr %1216, align 8, !tbaa !16
  %1218 = and i64 %1211, %1217
  %1219 = shl i64 %1218, %1212
  %1220 = or i64 %1215, %1219
  %1221 = load i32, ptr %1143, align 8
  %1222 = lshr i32 %1221, 16
  %1223 = and i32 %1222, 255
  %1224 = tail call i64 @trunc_int_for_mode(i64 noundef %1220, i32 noundef %1223) #23
  %1225 = load ptr, ptr %268, align 8, !tbaa !105
  %1226 = getelementptr inbounds %struct.rtx_def, ptr %1225, i64 0, i32 1
  %1227 = tail call zeroext i8 @validate_unshare_change(ptr noundef %260, ptr noundef nonnull %1226, ptr noundef nonnull %1143, i8 noundef zeroext 1) #23
  %1228 = load ptr, ptr %268, align 8, !tbaa !105
  %1229 = getelementptr inbounds %struct.rtx_def, ptr %1228, i64 0, i32 1, i32 0, i32 0, i64 1
  %1230 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1224) #23
  %1231 = tail call zeroext i8 @validate_unshare_change(ptr noundef %260, ptr noundef nonnull %1229, ptr noundef %1230, i8 noundef zeroext 1) #23
  %1232 = tail call i32 @apply_change_group() #23
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1238, label %1234

1234:                                             ; preds = %1203
  %1235 = tail call ptr @find_reg_note(ptr noundef %260, i32 noundef 4, ptr noundef null) #23
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %1302, label %1237

1237:                                             ; preds = %1234
  tail call void @remove_note(ptr noundef %260, ptr noundef nonnull %1235) #23
  tail call void @df_notes_rescan(ptr noundef %260) #23
  br label %1302

1238:                                             ; preds = %1199, %1185, %1203, %1177, %1158, %1147, %1142, %1136, %1129, %1125, %1118
  br i1 %214, label %1241, label %1239

1239:                                             ; preds = %1238
  %1240 = load i32, ptr %1080, align 8
  br label %1262

1241:                                             ; preds = %1238
  %1242 = load ptr, ptr @global_rtl, align 16, !tbaa !6
  %1243 = icmp eq ptr %271, %1242
  %1244 = load i32, ptr %1080, align 8
  br i1 %1243, label %1245, label %1262

1245:                                             ; preds = %1241
  %1246 = icmp eq ptr %1080, %271
  br i1 %1246, label %1254, label %1247

1247:                                             ; preds = %1245
  %1248 = and i32 %1244, 65535
  %1249 = icmp eq i32 %1248, 44
  br i1 %1249, label %1250, label %1262

1250:                                             ; preds = %1247
  %1251 = tail call i32 @condjump_p(ptr noundef %260) #23
  %1252 = icmp eq i32 %1251, 0
  %1253 = load i32, ptr %1080, align 8
  br i1 %1252, label %1254, label %1262

1254:                                             ; preds = %1250, %1245
  %1255 = phi i32 [ %1244, %1245 ], [ %1253, %1250 ]
  %1256 = and i32 %1255, 134283263
  %1257 = icmp eq i32 %1256, 134217772
  br i1 %1257, label %1258, label %1259

1258:                                             ; preds = %1254, %1288, %1271, %1282
  br label %965

1259:                                             ; preds = %1254
  %1260 = load ptr, ptr %268, align 8, !tbaa !105
  %1261 = getelementptr inbounds %struct.rtx_def, ptr %1260, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1080, ptr %1261, align 8, !tbaa !16
  store i1 true, ptr @cse_jumps_altered, align 1
  br label %1304

1262:                                             ; preds = %1239, %1250, %1247, %1241
  %1263 = phi i32 [ %1240, %1239 ], [ %1253, %1250 ], [ %1244, %1247 ], [ %1244, %1241 ]
  %1264 = and i32 %1263, 65535
  %1265 = zext nneg i32 %1264 to i64
  %1266 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1265
  %1267 = load i32, ptr %1266, align 4, !tbaa !15
  %1268 = icmp eq i32 %1267, 9
  %1269 = icmp eq i32 %1264, 35
  %1270 = and i1 %1268, %1269
  br i1 %1270, label %1271, label %1288

1271:                                             ; preds = %1262
  %1272 = getelementptr inbounds %struct.rtx_def, ptr %1080, i64 0, i32 1
  %1273 = load ptr, ptr %1272, align 8, !tbaa !16
  %1274 = load i32, ptr %1273, align 8
  %1275 = trunc i32 %1274 to i16
  switch i16 %1275, label %1288 [
    i16 100, label %1258
    i16 50, label %1276
  ]

1276:                                             ; preds = %1271
  %1277 = getelementptr inbounds %struct.rtx_def, ptr %1273, i64 0, i32 1
  %1278 = load ptr, ptr %1277, align 8, !tbaa !16
  %1279 = load i32, ptr %1278, align 8
  %1280 = and i32 %1279, 65535
  %1281 = icmp eq i32 %1280, 44
  br i1 %1281, label %1282, label %1288

1282:                                             ; preds = %1276
  %1283 = getelementptr inbounds %struct.rtx_def, ptr %1273, i64 0, i32 1, i32 0, i32 0, i64 1
  %1284 = load ptr, ptr %1283, align 8, !tbaa !16
  %1285 = load i32, ptr %1284, align 8
  %1286 = and i32 %1285, 65535
  %1287 = icmp eq i32 %1286, 44
  br i1 %1287, label %1258, label %1288

1288:                                             ; preds = %1271, %1282, %1276, %1262
  %1289 = load ptr, ptr %268, align 8, !tbaa !105
  %1290 = getelementptr inbounds %struct.rtx_def, ptr %1289, i64 0, i32 1, i32 0, i32 0, i64 1
  %1291 = tail call zeroext i8 @validate_unshare_change(ptr noundef %260, ptr noundef nonnull %1290, ptr noundef nonnull %1080, i8 noundef zeroext 0) #23
  %1292 = icmp eq i8 %1291, 0
  br i1 %1292, label %1258, label %1293

1293:                                             ; preds = %1288
  %1294 = load ptr, ptr %268, align 8, !tbaa !105
  %1295 = getelementptr inbounds %struct.rtx_def, ptr %1294, i64 0, i32 1, i32 0, i32 0, i64 1
  %1296 = load ptr, ptr %1295, align 8, !tbaa !16
  %1297 = tail call fastcc ptr @canon_reg(ptr noundef %1296, ptr noundef %260) #25
  %1298 = load ptr, ptr %268, align 8, !tbaa !105
  %1299 = getelementptr inbounds %struct.rtx_def, ptr %1298, i64 0, i32 1, i32 0, i32 0, i64 1
  %1300 = tail call zeroext i8 @validate_change(ptr noundef %260, ptr noundef nonnull %1299, ptr noundef %1297, i8 noundef zeroext 1) #23
  %1301 = tail call i32 @apply_change_group() #23
  br label %1304

1302:                                             ; preds = %1234, %1237
  %1303 = add nsw i32 %261, -1
  br label %1614

1304:                                             ; preds = %1113, %1097, %1109, %1100, %1259, %1293
  %1305 = load ptr, ptr %268, align 8, !tbaa !105
  %1306 = getelementptr inbounds %struct.rtx_def, ptr %1305, i64 0, i32 1, i32 0, i32 0, i64 1
  %1307 = load ptr, ptr %1306, align 8, !tbaa !16
  %1308 = load i32, ptr %271, align 8
  %1309 = and i32 %1308, 65535
  %1310 = icmp eq i32 %1309, 37
  br i1 %1310, label %1311, label %1403

1311:                                             ; preds = %1304
  %1312 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %271) #25
  %1313 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1312) #25
  %1314 = getelementptr inbounds %struct.cse_reg_info, ptr %1313, i64 0, i32 1
  %1315 = load i32, ptr %1314, align 4, !tbaa !17
  %1316 = icmp sgt i32 %1315, -1
  br i1 %1316, label %1317, label %1403

1317:                                             ; preds = %1311
  %1318 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %271) #25
  %1319 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1318) #25
  %1320 = getelementptr inbounds %struct.cse_reg_info, ptr %1319, i64 0, i32 1
  %1321 = load i32, ptr %1320, align 4, !tbaa !17
  %1322 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %1323 = sext i32 %1321 to i64
  %1324 = getelementptr inbounds %struct.qty_table_elem, ptr %1322, i64 %1323, i32 6
  %1325 = load i32, ptr %1324, align 4
  %1326 = load i32, ptr %271, align 8
  %1327 = xor i32 %1326, %1325
  %1328 = and i32 %1327, 16711680
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1330, label %1403

1330:                                             ; preds = %1317
  %1331 = getelementptr inbounds %struct.qty_table_elem, ptr %1322, i64 %1323, i32 4
  %1332 = load i32, ptr %1331, align 4, !tbaa !147
  %1333 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %271) #25
  %1334 = icmp eq i32 %1332, %1333
  br i1 %1334, label %1403, label %1335

1335:                                             ; preds = %1330
  %1336 = load i32, ptr %1307, align 8
  %1337 = and i32 %1336, 65535
  %1338 = icmp eq i32 %1337, 37
  br i1 %1338, label %1339, label %1403

1339:                                             ; preds = %1335
  %1340 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1307) #25
  %1341 = icmp eq i32 %1340, %1333
  br i1 %1341, label %1342, label %1403

1342:                                             ; preds = %1339
  %1343 = load ptr, ptr %336, align 8, !tbaa !111
  %1344 = load i32, ptr %1343, align 8
  %1345 = and i32 %1344, 65535
  %1346 = icmp eq i32 %1345, 37
  br i1 %1346, label %1347, label %1350

1347:                                             ; preds = %1342
  %1348 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1343) #25
  %1349 = icmp ugt i32 %1348, 52
  br i1 %1349, label %1350, label %1403

1350:                                             ; preds = %1347, %1342
  %1351 = and i32 %1326, 65535
  %1352 = icmp ne i32 %1351, 37
  %1353 = icmp ugt i32 %1333, 52
  %1354 = or i1 %1352, %1353
  br i1 %1354, label %1355, label %1403

1355:                                             ; preds = %1350
  %1356 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1333) #25
  %1357 = getelementptr inbounds %struct.cse_reg_info, ptr %1356, i64 0, i32 1
  %1358 = load i32, ptr %1357, align 4, !tbaa !17
  %1359 = sext i32 %1358 to i64
  %1360 = getelementptr inbounds %struct.qty_table_elem, ptr %1322, i64 %1359, i32 4
  %1361 = load i32, ptr %1360, align 4, !tbaa !147
  %1362 = icmp sgt i32 %1361, 52
  br i1 %1362, label %1363, label %1368

1363:                                             ; preds = %1355
  %1364 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !6
  %1365 = zext nneg i32 %1361 to i64
  %1366 = getelementptr inbounds ptr, ptr %1364, i64 %1365
  %1367 = load ptr, ptr %1366, align 8, !tbaa !6
  br label %1373

1368:                                             ; preds = %1355
  %1369 = load i32, ptr %1307, align 8
  %1370 = lshr i32 %1369, 16
  %1371 = and i32 %1370, 255
  %1372 = tail call ptr @gen_rtx_REG(i32 noundef %1371, i32 noundef %1361) #23
  br label %1373

1373:                                             ; preds = %1368, %1363
  %1374 = phi ptr [ %1367, %1363 ], [ %1372, %1368 ]
  %1375 = load ptr, ptr %268, align 8, !tbaa !105
  %1376 = getelementptr inbounds %struct.rtx_def, ptr %1375, i64 0, i32 1, i32 0, i32 0, i64 1
  %1377 = tail call zeroext i8 @validate_change(ptr noundef %260, ptr noundef nonnull %1376, ptr noundef %1374, i8 noundef zeroext 0) #23
  %1378 = icmp ne i8 %1377, 0
  %1379 = and i1 %510, %1378
  %1380 = select i1 %1378, ptr %1374, ptr %1307
  br i1 %1379, label %1381, label %1403

1381:                                             ; preds = %1373
  %1382 = load i32, ptr %511, align 8
  %1383 = and i32 %1382, 65535
  %1384 = icmp eq i32 %1383, 37
  br i1 %1384, label %1387, label %1385

1385:                                             ; preds = %1381
  %1386 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %511, i32 noundef 23) #25
  br label %1387

1387:                                             ; preds = %1381, %1385
  %1388 = phi i32 [ %1386, %1385 ], [ 0, %1381 ]
  %1389 = load i32, ptr %1374, align 8
  %1390 = and i32 %1389, 65535
  %1391 = icmp eq i32 %1390, 37
  br i1 %1391, label %1394, label %1392

1392:                                             ; preds = %1387
  %1393 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %1374, i32 noundef 23) #25
  br label %1394

1394:                                             ; preds = %1387, %1392
  %1395 = phi i32 [ %1393, %1392 ], [ 0, %1387 ]
  %1396 = icmp slt i32 %1388, %1395
  br i1 %1396, label %1397, label %1403

1397:                                             ; preds = %1394
  %1398 = load ptr, ptr %268, align 8, !tbaa !105
  %1399 = getelementptr inbounds %struct.rtx_def, ptr %1398, i64 0, i32 1, i32 0, i32 0, i64 1
  %1400 = tail call zeroext i8 @validate_change(ptr noundef %260, ptr noundef nonnull %1399, ptr noundef nonnull %511, i8 noundef zeroext 0) #23
  %1401 = icmp eq i8 %1400, 0
  %1402 = select i1 %1401, ptr %1374, ptr %511
  br label %1403

1403:                                             ; preds = %1350, %1397, %1317, %1330, %1335, %1339, %1347, %1373, %1394, %1311, %1304
  %1404 = phi ptr [ %1307, %1311 ], [ %1307, %1304 ], [ %1307, %1347 ], [ %1307, %1339 ], [ %1307, %1335 ], [ %1307, %1330 ], [ %1307, %1317 ], [ %1374, %1394 ], [ %1380, %1373 ], [ %1402, %1397 ], [ %1307, %1350 ]
  %1405 = load ptr, ptr %336, align 8, !tbaa !111
  %1406 = icmp eq ptr %1404, %1405
  br i1 %1406, label %1429, label %1407

1407:                                             ; preds = %1403
  store i32 0, ptr @do_not_record, align 4, !tbaa !15
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !15
  store ptr %1404, ptr %336, align 8, !tbaa !111
  %1408 = load i32, ptr %1404, align 8
  %1409 = and i32 %1408, 65535
  %1410 = icmp eq i32 %1409, 37
  br i1 %1410, label %1411, label %1419

1411:                                             ; preds = %1407
  %1412 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1404) #25
  %1413 = icmp ugt i32 %1412, 52
  br i1 %1413, label %1414, label %1419

1414:                                             ; preds = %1411
  %1415 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1412) #25
  %1416 = getelementptr inbounds %struct.cse_reg_info, ptr %1415, i64 0, i32 1
  %1417 = load i32, ptr %1416, align 4, !tbaa !17
  %1418 = add i32 %1417, 4736
  br label %1421

1419:                                             ; preds = %1411, %1407
  %1420 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1404, i32 noundef %283) #25
  br label %1421

1421:                                             ; preds = %1419, %1414
  %1422 = phi i32 [ %1418, %1414 ], [ %1420, %1419 ]
  %1423 = and i32 %1422, 31
  store i32 %1423, ptr %353, align 8, !tbaa !112
  %1424 = load i32, ptr @do_not_record, align 4, !tbaa !15
  %1425 = trunc i32 %1424 to i8
  store i8 %1425, ptr %356, align 1, !tbaa !113
  %1426 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !15
  %1427 = trunc i32 %1426 to i8
  store i8 %1427, ptr %359, align 8, !tbaa !114
  %1428 = tail call fastcc ptr @lookup(ptr noundef nonnull %1404, i32 noundef %1423, i32 noundef %283) #25
  store ptr %1428, ptr %382, align 8, !tbaa !115
  br label %1429

1429:                                             ; preds = %1421, %1403
  %1430 = and i1 %214, %510
  br i1 %1430, label %1431, label %1462

1431:                                             ; preds = %1429
  %1432 = load i32, ptr %271, align 8
  %1433 = and i32 %1432, 65535
  %1434 = icmp eq i32 %1433, 37
  br i1 %1434, label %1435, label %1462

1435:                                             ; preds = %1431
  %1436 = load i32, ptr %511, align 8
  %1437 = trunc i32 %1436 to i16
  switch i16 %1437, label %1456 [
    i16 37, label %1462
    i16 35, label %1438
  ]

1438:                                             ; preds = %1435
  %1439 = getelementptr inbounds %struct.rtx_def, ptr %511, i64 0, i32 1
  %1440 = load ptr, ptr %1439, align 8, !tbaa !16
  %1441 = load i32, ptr %1440, align 8
  %1442 = and i32 %1441, 65535
  %1443 = icmp eq i32 %1442, 50
  br i1 %1443, label %1444, label %1456

1444:                                             ; preds = %1438
  %1445 = getelementptr inbounds %struct.rtx_def, ptr %1440, i64 0, i32 1
  %1446 = load ptr, ptr %1445, align 8, !tbaa !16
  %1447 = load i32, ptr %1446, align 8
  %1448 = and i32 %1447, 65535
  %1449 = icmp eq i32 %1448, 44
  br i1 %1449, label %1450, label %1456

1450:                                             ; preds = %1444
  %1451 = getelementptr inbounds %struct.rtx_def, ptr %1440, i64 0, i32 1, i32 0, i32 0, i64 1
  %1452 = load ptr, ptr %1451, align 8, !tbaa !16
  %1453 = load i32, ptr %1452, align 8
  %1454 = and i32 %1453, 65535
  %1455 = icmp eq i32 %1454, 44
  br i1 %1455, label %1462, label %1456

1456:                                             ; preds = %1435, %1450, %1444, %1438
  %1457 = tail call i32 @rtx_equal_p(ptr noundef %1404, ptr noundef nonnull %511) #23
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1459, label %1462

1459:                                             ; preds = %1456
  %1460 = tail call ptr @copy_rtx(ptr noundef nonnull %511) #23
  %1461 = tail call ptr @set_unique_reg_note(ptr noundef %260, i32 noundef 4, ptr noundef %1460) #23
  tail call void @df_notes_rescan(ptr noundef %260) #23
  br label %1462

1462:                                             ; preds = %1435, %1456, %1459, %1450, %1431, %1429
  %1463 = phi ptr [ %511, %1435 ], [ %511, %1450 ], [ %511, %1456 ], [ %1460, %1459 ], [ %511, %1431 ], [ %511, %1429 ]
  store i32 0, ptr @do_not_record, align 4, !tbaa !15
  br label %1464

1464:                                             ; preds = %1468, %1462
  %1465 = phi ptr [ %271, %1462 ], [ %1470, %1468 ]
  %1466 = load i32, ptr %1465, align 8
  %1467 = trunc i32 %1466 to i16
  switch i16 %1467, label %1471 [
    i16 39, label %1468
    i16 120, label %1468
    i16 40, label %1468
  ]

1468:                                             ; preds = %1464, %1464, %1464
  %1469 = getelementptr inbounds %struct.rtx_def, ptr %1465, i64 0, i32 1
  %1470 = load ptr, ptr %1469, align 8, !tbaa !16
  br label %1464, !llvm.loop !149

1471:                                             ; preds = %1464
  %1472 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 5
  store ptr %1465, ptr %1472, align 8, !tbaa !150
  %1473 = load i32, ptr %1465, align 8
  %1474 = and i32 %1473, 65535
  %1475 = icmp eq i32 %1474, 43
  br i1 %1475, label %1476, label %1494

1476:                                             ; preds = %1471
  %1477 = getelementptr inbounds %struct.rtx_def, ptr %1465, i64 0, i32 1
  %1478 = load ptr, ptr %1477, align 8, !tbaa !16
  %1479 = load i32, ptr %1478, align 8
  %1480 = and i32 %1479, 65535
  %1481 = zext nneg i32 %1480 to i64
  %1482 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1481
  %1483 = load i32, ptr %1482, align 4, !tbaa !15
  %1484 = icmp eq i32 %1483, 12
  br i1 %1484, label %1485, label %1491

1485:                                             ; preds = %1476
  %1486 = getelementptr inbounds %struct.rtx_def, ptr %1478, i64 0, i32 1
  %1487 = load ptr, ptr %1486, align 8, !tbaa !16
  %1488 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !6
  %1489 = icmp eq ptr %1487, %1488
  br i1 %1489, label %1490, label %1491

1490:                                             ; preds = %1485
  tail call fastcc void @invalidate(ptr noundef %1487, i32 noundef 0) #25
  br label %1491

1491:                                             ; preds = %1490, %1485, %1476
  %1492 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %1465, ptr noundef %260) #25
  %1493 = load i32, ptr %1492, align 8
  br label %1494

1494:                                             ; preds = %1491, %1471
  %1495 = phi i32 [ %1493, %1491 ], [ %1473, %1471 ]
  %1496 = phi ptr [ %1492, %1491 ], [ %1465, %1471 ]
  %1497 = and i32 %1495, 65535
  %1498 = icmp eq i32 %1497, 37
  br i1 %1498, label %1499, label %1507

1499:                                             ; preds = %1494
  %1500 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1496) #25
  %1501 = icmp ugt i32 %1500, 52
  br i1 %1501, label %1502, label %1507

1502:                                             ; preds = %1499
  %1503 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1500) #25
  %1504 = getelementptr inbounds %struct.cse_reg_info, ptr %1503, i64 0, i32 1
  %1505 = load i32, ptr %1504, align 4, !tbaa !17
  %1506 = add i32 %1505, 4736
  br label %1509

1507:                                             ; preds = %1499, %1494
  %1508 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1496, i32 noundef %283) #25
  br label %1509

1509:                                             ; preds = %1507, %1502
  %1510 = phi i32 [ %1506, %1502 ], [ %1508, %1507 ]
  %1511 = and i32 %1510, 31
  %1512 = getelementptr inbounds %struct.set, ptr %212, i64 %267, i32 4
  store i32 %1511, ptr %1512, align 4, !tbaa !151
  %1513 = load ptr, ptr %268, align 8, !tbaa !105
  %1514 = getelementptr inbounds %struct.rtx_def, ptr %1513, i64 0, i32 1
  %1515 = load ptr, ptr %1514, align 8, !tbaa !16
  %1516 = load i32, ptr %1515, align 8
  %1517 = and i32 %1516, 65535
  %1518 = icmp eq i32 %1517, 120
  br i1 %1518, label %1519, label %1542

1519:                                             ; preds = %1509
  %1520 = getelementptr inbounds %struct.rtx_def, ptr %1515, i64 0, i32 1, i32 0, i32 0, i64 1
  %1521 = load ptr, ptr %1520, align 8, !tbaa !16
  %1522 = icmp eq ptr %1463, null
  br i1 %1522, label %1541, label %1523

1523:                                             ; preds = %1519
  %1524 = load i32, ptr %1463, align 8
  %1525 = and i32 %1524, 65535
  %1526 = icmp eq i32 %1525, 30
  br i1 %1526, label %1527, label %1541

1527:                                             ; preds = %1523
  %1528 = load i32, ptr %1521, align 8
  %1529 = and i32 %1528, 65535
  %1530 = icmp eq i32 %1529, 30
  br i1 %1530, label %1531, label %1541

1531:                                             ; preds = %1527
  %1532 = getelementptr inbounds %struct.rtx_def, ptr %1521, i64 0, i32 1
  %1533 = load i64, ptr %1532, align 8, !tbaa !16
  %1534 = icmp slt i64 %1533, 64
  br i1 %1534, label %1535, label %1541

1535:                                             ; preds = %1531
  %1536 = getelementptr inbounds %struct.rtx_def, ptr %1463, i64 0, i32 1
  %1537 = load i64, ptr %1536, align 8, !tbaa !16
  %1538 = shl nsw i64 -1, %1533
  %1539 = and i64 %1537, %1538
  %1540 = icmp eq i64 %1539, 0
  br i1 %1540, label %1592, label %1541

1541:                                             ; preds = %1535, %1531, %1527, %1523, %1519
  store ptr null, ptr %382, align 8, !tbaa !115
  store i8 1, ptr %356, align 1, !tbaa !113
  br label %1592

1542:                                             ; preds = %1509
  %1543 = load ptr, ptr @global_rtl, align 16, !tbaa !6
  br i1 %214, label %1544, label %1550

1544:                                             ; preds = %1542
  %1545 = icmp eq ptr %1496, %1543
  %1546 = icmp eq ptr %1404, %1543
  %1547 = and i1 %1545, %1546
  br i1 %1547, label %1548, label %1550

1548:                                             ; preds = %1544
  %1549 = tail call ptr @delete_insn_and_edges(ptr noundef %260) #23
  store i1 true, ptr @cse_jumps_altered, align 1
  store ptr null, ptr %268, align 8, !tbaa !105
  br label %1614

1550:                                             ; preds = %1544, %1542
  %1551 = icmp eq ptr %1496, %1543
  br i1 %1551, label %1552, label %1578

1552:                                             ; preds = %1550
  %1553 = load i32, ptr %1404, align 8
  %1554 = and i32 %1553, 134283263
  %1555 = icmp eq i32 %1554, 44
  br i1 %1555, label %1556, label %1578

1556:                                             ; preds = %1552
  br i1 %214, label %1557, label %1574

1557:                                             ; preds = %1556
  %1558 = getelementptr inbounds %struct.rtx_def, ptr %1404, i64 0, i32 1
  %1559 = load ptr, ptr %1558, align 8, !tbaa !16
  %1560 = tail call ptr @gen_jump(ptr noundef %1559) #23
  %1561 = tail call ptr @emit_jump_insn_before(ptr noundef %1560, ptr noundef %260) #23
  %1562 = load ptr, ptr %1558, align 8, !tbaa !16
  %1563 = getelementptr inbounds %struct.rtx_def, ptr %1561, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %1562, ptr %1563, align 8, !tbaa !16
  %1564 = getelementptr inbounds %struct.rtx_def, ptr %1562, i64 0, i32 1, i32 0, i32 2
  %1565 = load i32, ptr %1564, align 8, !tbaa !16
  %1566 = add nsw i32 %1565, 1
  store i32 %1566, ptr %1564, align 8, !tbaa !16
  %1567 = tail call ptr @find_reg_note(ptr noundef %260, i32 noundef 28, ptr noundef null) #23
  %1568 = icmp eq ptr %1567, null
  br i1 %1568, label %1572, label %1569

1569:                                             ; preds = %1557
  %1570 = getelementptr inbounds %struct.rtx_def, ptr %1567, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %1570, align 8, !tbaa !16
  %1571 = getelementptr inbounds %struct.rtx_def, ptr %1561, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %1567, ptr %1571, align 8, !tbaa !16
  br label %1572

1572:                                             ; preds = %1569, %1557
  %1573 = tail call ptr @delete_insn_and_edges(ptr noundef %260) #23
  br label %1576

1574:                                             ; preds = %1556
  %1575 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 1, i32 1
  store i32 -1, ptr %1575, align 8, !tbaa !16
  br label %1576

1576:                                             ; preds = %1574, %1572
  %1577 = phi ptr [ %1561, %1572 ], [ %260, %1574 ]
  store i1 true, ptr @cse_jumps_altered, align 1
  store ptr null, ptr %268, align 8, !tbaa !105
  br label %1614

1578:                                             ; preds = %1552, %1550
  %1579 = load i32, ptr @do_not_record, align 4, !tbaa !15
  %1580 = icmp eq i32 %1579, 0
  br i1 %1580, label %1592, label %1581

1581:                                             ; preds = %1578
  %1582 = load i32, ptr %1496, align 8
  %1583 = trunc i32 %1582 to i16
  switch i16 %1583, label %1591 [
    i16 37, label %1584
    i16 39, label %1584
    i16 43, label %1585
    i16 40, label %1586
    i16 120, label %1586
  ]

1584:                                             ; preds = %1581, %1581
  tail call fastcc void @invalidate(ptr noundef nonnull %1496, i32 noundef 0) #25
  br label %1591

1585:                                             ; preds = %1581
  tail call fastcc void @invalidate(ptr noundef nonnull %1496, i32 noundef 0) #25
  br label %1591

1586:                                             ; preds = %1581, %1581
  %1587 = getelementptr inbounds %struct.rtx_def, ptr %1496, i64 0, i32 1
  %1588 = load ptr, ptr %1587, align 8, !tbaa !16
  %1589 = lshr i32 %1582, 16
  %1590 = and i32 %1589, 255
  tail call fastcc void @invalidate(ptr noundef %1588, i32 noundef %1590) #25
  br label %1591

1591:                                             ; preds = %1581, %1585, %1586, %1584
  store ptr null, ptr %268, align 8, !tbaa !105
  br label %1614

1592:                                             ; preds = %1578, %1535, %1541
  %1593 = phi ptr [ %513, %1535 ], [ null, %1541 ], [ %513, %1578 ]
  %1594 = phi ptr [ %262, %1535 ], [ null, %1541 ], [ %262, %1578 ]
  %1595 = load ptr, ptr %1514, align 8, !tbaa !16
  %1596 = icmp eq ptr %1496, %1595
  br i1 %1596, label %1614, label %1597

1597:                                             ; preds = %1592
  %1598 = load i32, ptr %1595, align 8
  %1599 = and i32 %1598, 65535
  %1600 = icmp eq i32 %1599, 37
  br i1 %1600, label %1601, label %1609

1601:                                             ; preds = %1597
  %1602 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1595) #25
  %1603 = icmp ugt i32 %1602, 52
  br i1 %1603, label %1604, label %1609

1604:                                             ; preds = %1601
  %1605 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1602) #25
  %1606 = getelementptr inbounds %struct.cse_reg_info, ptr %1605, i64 0, i32 1
  %1607 = load i32, ptr %1606, align 4, !tbaa !17
  %1608 = add i32 %1607, 4736
  br label %1611

1609:                                             ; preds = %1601, %1597
  %1610 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1595, i32 noundef %283) #25
  br label %1611

1611:                                             ; preds = %1609, %1604
  %1612 = phi i32 [ %1608, %1604 ], [ %1610, %1609 ]
  %1613 = and i32 %1612, 31
  store i32 %1613, ptr %1512, align 4, !tbaa !151
  br label %1614

1614:                                             ; preds = %1576, %1591, %1548, %1592, %1611, %1302
  %1615 = phi i32 [ 0, %1302 ], [ %514, %1611 ], [ %514, %1592 ], [ %514, %1548 ], [ %514, %1591 ], [ %514, %1576 ]
  %1616 = phi i32 [ 0, %1302 ], [ %328, %1611 ], [ %328, %1592 ], [ %328, %1548 ], [ %328, %1591 ], [ %328, %1576 ]
  %1617 = phi i32 [ 0, %1302 ], [ %329, %1611 ], [ %329, %1592 ], [ %329, %1548 ], [ %329, %1591 ], [ %329, %1576 ]
  %1618 = phi ptr [ null, %1302 ], [ %1593, %1611 ], [ %1593, %1592 ], [ %513, %1548 ], [ %513, %1591 ], [ %513, %1576 ]
  %1619 = phi ptr [ null, %1302 ], [ %1594, %1611 ], [ %1594, %1592 ], [ %262, %1548 ], [ %262, %1591 ], [ %262, %1576 ]
  %1620 = phi i32 [ %1303, %1302 ], [ %261, %1611 ], [ %261, %1592 ], [ %261, %1548 ], [ %261, %1591 ], [ %261, %1576 ]
  %1621 = phi ptr [ %260, %1302 ], [ %260, %1611 ], [ %260, %1592 ], [ %260, %1548 ], [ %260, %1591 ], [ %1577, %1576 ]
  %1622 = add nsw i32 %1620, 1
  %1623 = icmp slt i32 %1622, %213
  br i1 %1623, label %259, label %1624, !llvm.loop !152

1624:                                             ; preds = %1614
  %1625 = icmp ne ptr %1619, null
  %1626 = icmp eq ptr %1618, null
  %1627 = select i1 %1625, i1 %1626, i1 false
  br i1 %1627, label %1628, label %1701

1628:                                             ; preds = %1624
  %1629 = load ptr, ptr %212, align 8, !tbaa !105
  %1630 = icmp eq ptr %1629, null
  %1631 = icmp ne i32 %1617, 0
  %1632 = select i1 %1630, i1 true, i1 %1631
  br i1 %1632, label %1701, label %1633

1633:                                             ; preds = %1628
  %1634 = getelementptr inbounds %struct.rtx_def, ptr %1629, i64 0, i32 1
  %1635 = load ptr, ptr %1634, align 8, !tbaa !16
  %1636 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1619, ptr noundef %1635) #23
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %1638, label %1701

1638:                                             ; preds = %1633
  %1639 = getelementptr inbounds %struct.set, ptr %212, i64 0, i32 2
  %1640 = load ptr, ptr %1639, align 8, !tbaa !115
  %1641 = load ptr, ptr %212, align 8, !tbaa !105
  %1642 = getelementptr inbounds %struct.rtx_def, ptr %1641, i64 0, i32 1
  %1643 = load ptr, ptr %1642, align 8, !tbaa !16
  %1644 = load i32, ptr %1643, align 8
  %1645 = and i32 %1644, 65535
  %1646 = icmp eq i32 %1645, 40
  br i1 %1646, label %1647, label %1653

1647:                                             ; preds = %1638
  %1648 = getelementptr inbounds %struct.rtx_def, ptr %1643, i64 0, i32 1
  %1649 = load ptr, ptr %1648, align 8, !tbaa !16
  %1650 = getelementptr inbounds %struct.rtx_def, ptr %1649, i64 0, i32 1
  %1651 = load ptr, ptr %1650, align 8, !tbaa !16
  %1652 = load i32, ptr %1651, align 8
  br label %1653

1653:                                             ; preds = %1647, %1638
  %1654 = phi ptr [ null, %1647 ], [ %1640, %1638 ]
  %1655 = phi i32 [ %1652, %1647 ], [ %1644, %1638 ]
  %1656 = lshr i32 %1655, 16
  %1657 = and i32 %1656, 255
  %1658 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %1619, ptr noundef %1654, i32 noundef 0) #25, !range !34
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1677, label %1660

1660:                                             ; preds = %1653
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %1619) #25
  %1661 = load i32, ptr %1619, align 8
  %1662 = and i32 %1661, 65535
  %1663 = icmp eq i32 %1662, 37
  br i1 %1663, label %1664, label %1672

1664:                                             ; preds = %1660
  %1665 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1619) #25
  %1666 = icmp ugt i32 %1665, 52
  br i1 %1666, label %1667, label %1672

1667:                                             ; preds = %1664
  %1668 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1665) #25
  %1669 = getelementptr inbounds %struct.cse_reg_info, ptr %1668, i64 0, i32 1
  %1670 = load i32, ptr %1669, align 4, !tbaa !17
  %1671 = add i32 %1670, 4736
  br label %1674

1672:                                             ; preds = %1664, %1660
  %1673 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1619, i32 noundef %1657) #25
  br label %1674

1674:                                             ; preds = %1672, %1667
  %1675 = phi i32 [ %1671, %1667 ], [ %1673, %1672 ]
  %1676 = and i32 %1675, 31
  br label %1677

1677:                                             ; preds = %1674, %1653
  %1678 = phi i32 [ %1676, %1674 ], [ %1615, %1653 ]
  %1679 = tail call fastcc ptr @insert(ptr noundef nonnull %1619, ptr noundef %1654, i32 noundef %1678, i32 noundef %1657) #25
  %1680 = trunc i32 %1616 to i8
  %1681 = getelementptr inbounds %struct.table_elt, ptr %1679, i64 0, i32 11
  store i8 %1680, ptr %1681, align 1, !tbaa !94
  %1682 = zext nneg i32 %213 to i64
  br label %1683

1683:                                             ; preds = %1677, %1698
  %1684 = phi i64 [ 0, %1677 ], [ %1699, %1698 ]
  %1685 = getelementptr inbounds %struct.set, ptr %212, i64 %1684
  %1686 = load ptr, ptr %1685, align 8, !tbaa !105
  %1687 = icmp eq ptr %1686, null
  br i1 %1687, label %1698, label %1688

1688:                                             ; preds = %1683
  %1689 = getelementptr inbounds %struct.set, ptr %212, i64 %1684, i32 2
  %1690 = load ptr, ptr %1689, align 8, !tbaa !115
  %1691 = icmp eq ptr %1690, null
  br i1 %1691, label %1692, label %1698

1692:                                             ; preds = %1688
  %1693 = getelementptr inbounds %struct.rtx_def, ptr %1686, i64 0, i32 1, i32 0, i32 0, i64 1
  %1694 = load ptr, ptr %1693, align 8, !tbaa !16
  %1695 = tail call i32 @rtx_equal_p(ptr noundef %1694, ptr noundef nonnull %1619) #23
  %1696 = icmp eq i32 %1695, 0
  br i1 %1696, label %1698, label %1697

1697:                                             ; preds = %1692
  store ptr %1679, ptr %1689, align 8, !tbaa !115
  br label %1698

1698:                                             ; preds = %1683, %1688, %1692, %1697
  %1699 = add nuw nsw i64 %1684, 1
  %1700 = icmp eq i64 %1699, %1682
  br i1 %1700, label %1701, label %1683, !llvm.loop !153

1701:                                             ; preds = %1698, %1624, %1628, %1633
  %1702 = phi i32 [ %1615, %1628 ], [ %1615, %1633 ], [ %1615, %1624 ], [ %1678, %1698 ]
  %1703 = phi ptr [ null, %1628 ], [ null, %1633 ], [ %1618, %1624 ], [ %1679, %1698 ]
  %1704 = icmp eq ptr %1703, null
  %1705 = zext nneg i32 %213 to i64
  br label %1708

1706:                                             ; preds = %1806
  %1707 = zext nneg i32 %213 to i64
  br label %1809

1708:                                             ; preds = %1701, %1806
  %1709 = phi i64 [ 0, %1701 ], [ %1807, %1806 ]
  %1710 = getelementptr inbounds %struct.set, ptr %212, i64 %1709
  %1711 = load ptr, ptr %1710, align 8, !tbaa !105
  %1712 = icmp eq ptr %1711, null
  br i1 %1712, label %1801, label %1713

1713:                                             ; preds = %1708
  %1714 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 7
  %1715 = load i8, ptr %1714, align 1, !tbaa !113
  %1716 = icmp eq i8 %1715, 0
  br i1 %1716, label %1717, label %1801

1717:                                             ; preds = %1713
  %1718 = getelementptr inbounds %struct.rtx_def, ptr %1711, i64 0, i32 1
  %1719 = getelementptr inbounds %struct.rtx_def, ptr %1711, i64 0, i32 1, i32 0, i32 0, i64 1
  %1720 = load ptr, ptr %1719, align 8, !tbaa !16
  %1721 = load ptr, ptr %1718, align 8, !tbaa !16
  %1722 = tail call i32 @rtx_equal_p(ptr noundef %1720, ptr noundef %1721) #23
  %1723 = icmp eq i32 %1722, 0
  br i1 %1723, label %1724, label %1801

1724:                                             ; preds = %1717
  %1725 = load ptr, ptr %1710, align 8, !tbaa !105
  %1726 = getelementptr inbounds %struct.rtx_def, ptr %1725, i64 0, i32 1
  %1727 = load ptr, ptr %1726, align 8, !tbaa !16
  %1728 = load i32, ptr %1727, align 8
  %1729 = and i32 %1728, 65535
  %1730 = icmp eq i32 %1729, 40
  br i1 %1730, label %1731, label %1734

1731:                                             ; preds = %1724
  %1732 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 2
  store ptr %1703, ptr %1732, align 8, !tbaa !115
  %1733 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 3
  store i32 %1702, ptr %1733, align 8, !tbaa !112
  br label %1806

1734:                                             ; preds = %1724
  %1735 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 1
  %1736 = load ptr, ptr %1735, align 8, !tbaa !111
  %1737 = load i32, ptr %1736, align 8
  %1738 = lshr i32 %1737, 16
  %1739 = and i32 %1738, 255
  %1740 = icmp eq i32 %1739, 0
  %1741 = lshr i32 %1728, 16
  %1742 = and i32 %1741, 255
  %1743 = select i1 %1740, i32 %1742, i32 %1739
  br i1 %1704, label %1744, label %1747

1744:                                             ; preds = %1734
  %1745 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 11
  %1746 = load ptr, ptr %1745, align 8, !tbaa !121
  br label %1747

1747:                                             ; preds = %1744, %1734
  %1748 = phi ptr [ %1703, %1734 ], [ %1746, %1744 ]
  %1749 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 2
  %1750 = load ptr, ptr %1749, align 8, !tbaa !115
  %1751 = icmp eq ptr %1750, null
  br i1 %1751, label %1752, label %1782

1752:                                             ; preds = %1747
  %1753 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %1736, ptr noundef %1748, i32 noundef 0) #25, !range !34
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %1755, label %1758

1755:                                             ; preds = %1752
  %1756 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 3
  %1757 = load i32, ptr %1756, align 8, !tbaa !112
  br label %1776

1758:                                             ; preds = %1752
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %1736) #25
  %1759 = load i32, ptr %1736, align 8
  %1760 = and i32 %1759, 65535
  %1761 = icmp eq i32 %1760, 37
  br i1 %1761, label %1762, label %1770

1762:                                             ; preds = %1758
  %1763 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1736) #25
  %1764 = icmp ugt i32 %1763, 52
  br i1 %1764, label %1765, label %1770

1765:                                             ; preds = %1762
  %1766 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1763) #25
  %1767 = getelementptr inbounds %struct.cse_reg_info, ptr %1766, i64 0, i32 1
  %1768 = load i32, ptr %1767, align 4, !tbaa !17
  %1769 = add i32 %1768, 4736
  br label %1772

1770:                                             ; preds = %1762, %1758
  %1771 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1736, i32 noundef %1743) #25
  br label %1772

1772:                                             ; preds = %1770, %1765
  %1773 = phi i32 [ %1769, %1765 ], [ %1771, %1770 ]
  %1774 = and i32 %1773, 31
  %1775 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 3
  store i32 %1774, ptr %1775, align 8, !tbaa !112
  br label %1776

1776:                                             ; preds = %1755, %1772
  %1777 = phi i32 [ %1757, %1755 ], [ %1774, %1772 ]
  %1778 = tail call fastcc ptr @insert(ptr noundef nonnull %1736, ptr noundef %1748, i32 noundef %1777, i32 noundef %1743) #25
  %1779 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 6
  %1780 = load i8, ptr %1779, align 8, !tbaa !114
  %1781 = getelementptr inbounds %struct.table_elt, ptr %1778, i64 0, i32 11
  store i8 %1780, ptr %1781, align 1, !tbaa !94
  store ptr %1778, ptr %1749, align 8, !tbaa !115
  br label %1782

1782:                                             ; preds = %1776, %1747
  %1783 = phi ptr [ %1778, %1776 ], [ %1748, %1747 ]
  %1784 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 9
  %1785 = load ptr, ptr %1784, align 8, !tbaa !120
  %1786 = icmp eq ptr %1785, null
  br i1 %1786, label %1806, label %1787

1787:                                             ; preds = %1782
  %1788 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 11
  %1789 = load ptr, ptr %1788, align 8, !tbaa !121
  %1790 = icmp ne ptr %1789, null
  %1791 = icmp eq ptr %1736, %1785
  %1792 = or i1 %1791, %1790
  br i1 %1792, label %1806, label %1793

1793:                                             ; preds = %1787
  %1794 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1785, ptr noundef nonnull %1736) #23
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1796, label %1806

1796:                                             ; preds = %1793
  %1797 = load ptr, ptr %1784, align 8, !tbaa !120
  %1798 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 10
  %1799 = load i32, ptr %1798, align 8, !tbaa !119
  %1800 = tail call fastcc ptr @insert(ptr noundef %1797, ptr noundef %1783, i32 noundef %1799, i32 noundef %1743) #25
  store ptr %1800, ptr %1749, align 8, !tbaa !115
  br label %1806

1801:                                             ; preds = %1717, %1713, %1708
  %1802 = getelementptr inbounds %struct.set, ptr %212, i64 %1709, i32 2
  %1803 = load ptr, ptr %1802, align 8, !tbaa !115
  %1804 = icmp eq ptr %1803, null
  br i1 %1804, label %1805, label %1806

1805:                                             ; preds = %1801
  store ptr %1703, ptr %1802, align 8, !tbaa !115
  br label %1806

1806:                                             ; preds = %1782, %1787, %1793, %1796, %1731, %1805, %1801
  %1807 = add nuw nsw i64 %1709, 1
  %1808 = icmp eq i64 %1807, %1705
  br i1 %1808, label %1706, label %1708, !llvm.loop !154

1809:                                             ; preds = %1706, %1891
  %1810 = phi i64 [ 0, %1706 ], [ %1892, %1891 ]
  %1811 = getelementptr inbounds %struct.set, ptr %212, i64 %1810
  %1812 = load ptr, ptr %1811, align 8, !tbaa !105
  %1813 = icmp eq ptr %1812, null
  br i1 %1813, label %1891, label %1814

1814:                                             ; preds = %1809
  %1815 = getelementptr inbounds %struct.set, ptr %212, i64 %1810, i32 5
  %1816 = load ptr, ptr %1815, align 8, !tbaa !150
  %1817 = load i32, ptr %1816, align 8
  %1818 = and i32 %1817, 65535
  %1819 = icmp eq i32 %1818, 43
  br i1 %1819, label %1820, label %1888

1820:                                             ; preds = %1814
  %1821 = getelementptr inbounds %struct.rtx_def, ptr %1816, i64 0, i32 1
  %1822 = load ptr, ptr %1821, align 8, !tbaa !16
  %1823 = load i32, ptr %1822, align 8
  %1824 = lshr i32 %1823, 16
  %1825 = and i32 %1824, 255
  %1826 = and i32 %1823, 65535
  %1827 = icmp eq i32 %1826, 37
  br i1 %1827, label %1828, label %1836

1828:                                             ; preds = %1820
  %1829 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1822) #25
  %1830 = icmp ugt i32 %1829, 52
  br i1 %1830, label %1831, label %1836

1831:                                             ; preds = %1828
  %1832 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1829) #25
  %1833 = getelementptr inbounds %struct.cse_reg_info, ptr %1832, i64 0, i32 1
  %1834 = load i32, ptr %1833, align 4, !tbaa !17
  %1835 = add i32 %1834, 4736
  br label %1838

1836:                                             ; preds = %1828, %1820
  %1837 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1822, i32 noundef %1825) #25
  br label %1838

1838:                                             ; preds = %1836, %1831
  %1839 = phi i32 [ %1835, %1831 ], [ %1837, %1836 ]
  %1840 = and i32 %1839, 31
  %1841 = tail call fastcc ptr @lookup(ptr noundef nonnull %1822, i32 noundef %1840, i32 noundef %1825) #25
  %1842 = icmp eq ptr %1841, null
  br i1 %1842, label %1843, label %1888

1843:                                             ; preds = %1838
  %1844 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %1822, ptr noundef null, i32 noundef 0) #25, !range !34
  %1845 = icmp eq i32 %1844, 0
  br i1 %1845, label %1885, label %1846

1846:                                             ; preds = %1843
  %1847 = load ptr, ptr %1811, align 8, !tbaa !105
  %1848 = getelementptr inbounds %struct.rtx_def, ptr %1847, i64 0, i32 1
  %1849 = load ptr, ptr %1848, align 8, !tbaa !16
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %1822) #25
  %1850 = load i32, ptr %1822, align 8
  %1851 = and i32 %1850, 65535
  %1852 = icmp eq i32 %1851, 37
  br i1 %1852, label %1853, label %1861

1853:                                             ; preds = %1846
  %1854 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1822) #25
  %1855 = icmp ugt i32 %1854, 52
  br i1 %1855, label %1856, label %1861

1856:                                             ; preds = %1853
  %1857 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1854) #25
  %1858 = getelementptr inbounds %struct.cse_reg_info, ptr %1857, i64 0, i32 1
  %1859 = load i32, ptr %1858, align 4, !tbaa !17
  %1860 = add i32 %1859, 4736
  br label %1863

1861:                                             ; preds = %1853, %1846
  %1862 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1822, i32 noundef %1825) #25
  br label %1863

1863:                                             ; preds = %1861, %1856
  %1864 = phi i32 [ %1860, %1856 ], [ %1862, %1861 ]
  %1865 = and i32 %1864, 31
  %1866 = load i32, ptr %1849, align 8
  %1867 = and i32 %1866, 65535
  %1868 = icmp eq i32 %1867, 37
  br i1 %1868, label %1869, label %1877

1869:                                             ; preds = %1863
  %1870 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1849) #25
  %1871 = icmp ugt i32 %1870, 52
  br i1 %1871, label %1872, label %1877

1872:                                             ; preds = %1869
  %1873 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1870) #25
  %1874 = getelementptr inbounds %struct.cse_reg_info, ptr %1873, i64 0, i32 1
  %1875 = load i32, ptr %1874, align 4, !tbaa !17
  %1876 = add i32 %1875, 4736
  br label %1881

1877:                                             ; preds = %1869, %1863
  %1878 = lshr i32 %1866, 16
  %1879 = and i32 %1878, 255
  %1880 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %1849, i32 noundef %1879) #25
  br label %1881

1881:                                             ; preds = %1877, %1872
  %1882 = phi i32 [ %1876, %1872 ], [ %1880, %1877 ]
  %1883 = and i32 %1882, 31
  %1884 = getelementptr inbounds %struct.set, ptr %212, i64 %1810, i32 4
  store i32 %1883, ptr %1884, align 4, !tbaa !151
  br label %1885

1885:                                             ; preds = %1881, %1843
  %1886 = phi i32 [ %1865, %1881 ], [ %1840, %1843 ]
  %1887 = tail call fastcc ptr @insert(ptr noundef nonnull %1822, ptr noundef null, i32 noundef %1886, i32 noundef %1825) #25
  br label %1888

1888:                                             ; preds = %1814, %1838, %1885
  %1889 = phi ptr [ %1841, %1838 ], [ %1887, %1885 ], [ null, %1814 ]
  %1890 = getelementptr inbounds %struct.set, ptr %212, i64 %1810, i32 12
  store ptr %1889, ptr %1890, align 8, !tbaa !155
  br label %1891

1891:                                             ; preds = %1888, %1809
  %1892 = add nuw nsw i64 %1810, 1
  %1893 = icmp eq i64 %1892, %1707
  br i1 %1893, label %1894, label %1809, !llvm.loop !156

1894:                                             ; preds = %1891, %253
  %1895 = phi ptr [ %0, %253 ], [ %1621, %1891 ]
  %1896 = phi i1 [ false, %253 ], [ true, %1891 ]
  %1897 = phi ptr [ %254, %253 ], [ %212, %1891 ]
  %1898 = phi i32 [ %255, %253 ], [ %213, %1891 ]
  %1899 = phi i1 [ false, %253 ], [ %214, %1891 ]
  tail call fastcc void @invalidate_from_clobbers(ptr noundef nonnull %3) #25
  %1900 = load i32, ptr %1895, align 8
  %1901 = and i32 %1900, 65535
  %1902 = icmp eq i32 %1901, 10
  br i1 %1902, label %1903, label %1908

1903:                                             ; preds = %1894
  %1904 = and i32 %1900, -2080374784
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1906, label %1907

1906:                                             ; preds = %1903
  tail call fastcc void @invalidate_memory() #25
  br label %1907

1907:                                             ; preds = %1906, %1903
  tail call fastcc void @invalidate_for_call() #25
  br label %1908

1908:                                             ; preds = %1907, %1894
  br i1 %1896, label %1909, label %1931

1909:                                             ; preds = %1908
  %1910 = zext nneg i32 %1898 to i64
  br label %1911

1911:                                             ; preds = %1909, %1928
  %1912 = phi i64 [ 0, %1909 ], [ %1929, %1928 ]
  %1913 = getelementptr inbounds %struct.set, ptr %1897, i64 %1912
  %1914 = load ptr, ptr %1913, align 8, !tbaa !105
  %1915 = icmp eq ptr %1914, null
  br i1 %1915, label %1928, label %1916

1916:                                             ; preds = %1911
  %1917 = getelementptr inbounds %struct.rtx_def, ptr %1914, i64 0, i32 1
  %1918 = load ptr, ptr %1917, align 8, !tbaa !16
  %1919 = load i32, ptr %1918, align 8
  %1920 = trunc i32 %1919 to i16
  switch i16 %1920, label %1928 [
    i16 37, label %1921
    i16 39, label %1921
    i16 43, label %1922
    i16 40, label %1923
    i16 120, label %1923
  ]

1921:                                             ; preds = %1916, %1916
  tail call fastcc void @invalidate(ptr noundef nonnull %1918, i32 noundef 0) #25
  br label %1928

1922:                                             ; preds = %1916
  tail call fastcc void @invalidate(ptr noundef nonnull %1918, i32 noundef 0) #25
  br label %1928

1923:                                             ; preds = %1916, %1916
  %1924 = getelementptr inbounds %struct.rtx_def, ptr %1918, i64 0, i32 1
  %1925 = load ptr, ptr %1924, align 8, !tbaa !16
  %1926 = lshr i32 %1919, 16
  %1927 = and i32 %1926, 255
  tail call fastcc void @invalidate(ptr noundef %1925, i32 noundef %1927) #25
  br label %1928

1928:                                             ; preds = %1921, %1923, %1922, %1916, %1911
  %1929 = add nuw nsw i64 %1912, 1
  %1930 = icmp eq i64 %1929, %1910
  br i1 %1930, label %1931, label %1911, !llvm.loop !157

1931:                                             ; preds = %1928, %1908
  %1932 = load i32, ptr %1895, align 8
  %1933 = and i32 %1932, 65535
  %1934 = icmp eq i32 %1933, 8
  br i1 %1934, label %1935, label %1943

1935:                                             ; preds = %1931
  %1936 = getelementptr inbounds %struct.rtx_def, ptr %1895, i64 1
  %1937 = load ptr, ptr %1936, align 8, !tbaa !16
  %1938 = load i32, ptr %1937, align 8
  %1939 = and i32 %1938, 134283263
  %1940 = icmp eq i32 %1939, 134217745
  br i1 %1940, label %1941, label %1943

1941:                                             ; preds = %1935
  tail call fastcc void @flush_hash_table() #25
  %1942 = load i32, ptr %1895, align 8
  br label %1943

1943:                                             ; preds = %1941, %1935, %1931
  %1944 = phi i32 [ %1942, %1941 ], [ %1932, %1935 ], [ %1932, %1931 ]
  %1945 = and i32 %1944, 65535
  %1946 = icmp eq i32 %1945, 10
  br i1 %1946, label %1947, label %1951

1947:                                             ; preds = %1943
  %1948 = tail call ptr @find_reg_note(ptr noundef nonnull %1895, i32 noundef 30, ptr noundef null) #23
  %1949 = icmp eq ptr %1948, null
  br i1 %1949, label %1951, label %1950

1950:                                             ; preds = %1947
  tail call fastcc void @flush_hash_table() #25
  br label %2411

1951:                                             ; preds = %1947, %1943
  br i1 %1896, label %1952, label %2300

1952:                                             ; preds = %1951
  %1953 = zext nneg i32 %1898 to i64
  br label %1957

1954:                                             ; preds = %1994
  br i1 %1896, label %1955, label %2300

1955:                                             ; preds = %1954
  %1956 = zext nneg i32 %1898 to i64
  br label %2000

1957:                                             ; preds = %1952, %1994
  %1958 = phi i64 [ 0, %1952 ], [ %1995, %1994 ]
  %1959 = getelementptr inbounds %struct.set, ptr %1897, i64 %1958
  %1960 = load ptr, ptr %1959, align 8, !tbaa !105
  %1961 = icmp eq ptr %1960, null
  br i1 %1961, label %1994, label %1962

1962:                                             ; preds = %1957
  %1963 = getelementptr inbounds %struct.rtx_def, ptr %1960, i64 0, i32 1
  %1964 = load ptr, ptr %1963, align 8, !tbaa !16
  %1965 = load i32, ptr %1964, align 8
  %1966 = and i32 %1965, 65535
  %1967 = icmp eq i32 %1966, 37
  br i1 %1967, label %1970, label %1968

1968:                                             ; preds = %1962
  %1969 = tail call fastcc i32 @mention_regs(ptr noundef nonnull %1964) #25, !range !34
  br label %1994

1970:                                             ; preds = %1962
  %1971 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1964) #25
  %1972 = icmp ult i32 %1971, 53
  br i1 %1972, label %1973, label %1977

1973:                                             ; preds = %1970
  %1974 = lshr i32 %1965, 16
  %1975 = and i32 %1974, 255
  %1976 = tail call fastcc i32 @end_hard_regno(i32 noundef %1975, i32 noundef %1971) #25
  br label %1979

1977:                                             ; preds = %1970
  %1978 = add i32 %1971, 1
  br label %1979

1979:                                             ; preds = %1977, %1973
  %1980 = phi i32 [ %1976, %1973 ], [ %1978, %1977 ]
  %1981 = icmp ult i32 %1971, %1980
  br i1 %1981, label %1982, label %1994

1982:                                             ; preds = %1979, %1991
  %1983 = phi i32 [ %1992, %1991 ], [ %1971, %1979 ]
  %1984 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1983) #25
  %1985 = getelementptr inbounds %struct.cse_reg_info, ptr %1984, i64 0, i32 3
  %1986 = load i32, ptr %1985, align 4, !tbaa !29
  %1987 = icmp sgt i32 %1986, -1
  br i1 %1987, label %1988, label %1991

1988:                                             ; preds = %1982
  tail call fastcc void @remove_invalid_refs(i32 noundef %1983) #25
  %1989 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1983) #25
  %1990 = getelementptr inbounds %struct.cse_reg_info, ptr %1989, i64 0, i32 3
  store i32 -1, ptr %1990, align 4, !tbaa !29
  br label %1991

1991:                                             ; preds = %1982, %1988
  %1992 = add i32 %1983, 1
  %1993 = icmp eq i32 %1992, %1980
  br i1 %1993, label %1994, label %1982, !llvm.loop !158

1994:                                             ; preds = %1991, %1979, %1968, %1957
  %1995 = add nuw nsw i64 %1958, 1
  %1996 = icmp eq i64 %1995, %1953
  br i1 %1996, label %1954, label %1957, !llvm.loop !159

1997:                                             ; preds = %2037
  br i1 %1896, label %1998, label %2300

1998:                                             ; preds = %1997
  %1999 = zext nneg i32 %1898 to i64
  br label %2040

2000:                                             ; preds = %1955, %2037
  %2001 = phi i64 [ 0, %1955 ], [ %2038, %2037 ]
  %2002 = getelementptr inbounds %struct.set, ptr %1897, i64 %2001
  %2003 = load ptr, ptr %2002, align 8, !tbaa !105
  %2004 = icmp eq ptr %2003, null
  br i1 %2004, label %2037, label %2005

2005:                                             ; preds = %2000
  %2006 = getelementptr inbounds %struct.set, ptr %1897, i64 %2001, i32 12
  %2007 = load ptr, ptr %2006, align 8, !tbaa !155
  %2008 = icmp eq ptr %2007, null
  br i1 %2008, label %2014, label %2009

2009:                                             ; preds = %2005
  %2010 = getelementptr inbounds %struct.table_elt, ptr %2007, i64 0, i32 6
  %2011 = load ptr, ptr %2010, align 8, !tbaa !116
  %2012 = icmp eq ptr %2011, null
  br i1 %2012, label %2013, label %2014

2013:                                             ; preds = %2009
  store ptr null, ptr %2002, align 8, !tbaa !105
  br label %2037

2014:                                             ; preds = %2009, %2005
  %2015 = getelementptr inbounds %struct.set, ptr %1897, i64 %2001, i32 2
  %2016 = load ptr, ptr %2015, align 8, !tbaa !115
  %2017 = icmp eq ptr %2016, null
  br i1 %2017, label %2037, label %2018

2018:                                             ; preds = %2014
  %2019 = getelementptr inbounds %struct.table_elt, ptr %2016, i64 0, i32 6
  %2020 = load ptr, ptr %2019, align 8, !tbaa !116
  %2021 = icmp eq ptr %2020, null
  br i1 %2021, label %2022, label %2037

2022:                                             ; preds = %2018, %2022
  %2023 = phi ptr [ %2025, %2022 ], [ %2016, %2018 ]
  %2024 = getelementptr inbounds %struct.table_elt, ptr %2023, i64 0, i32 5
  %2025 = load ptr, ptr %2024, align 8, !tbaa !160
  %2026 = icmp eq ptr %2025, null
  br i1 %2026, label %2027, label %2022, !llvm.loop !161

2027:                                             ; preds = %2022, %2032
  %2028 = phi ptr [ %2034, %2032 ], [ %2023, %2022 ]
  %2029 = getelementptr inbounds %struct.table_elt, ptr %2028, i64 0, i32 6
  %2030 = load ptr, ptr %2029, align 8, !tbaa !116
  %2031 = icmp eq ptr %2030, null
  br i1 %2031, label %2032, label %2036

2032:                                             ; preds = %2027
  %2033 = getelementptr inbounds %struct.table_elt, ptr %2028, i64 0, i32 4
  %2034 = load ptr, ptr %2033, align 8, !tbaa !141
  %2035 = icmp eq ptr %2034, null
  br i1 %2035, label %2036, label %2027, !llvm.loop !162

2036:                                             ; preds = %2027, %2032
  store ptr %2030, ptr %2015, align 8, !tbaa !115
  br label %2037

2037:                                             ; preds = %2000, %2014, %2018, %2036, %2013
  %2038 = add nuw nsw i64 %2001, 1
  %2039 = icmp eq i64 %2038, %1956
  br i1 %2039, label %1997, label %2000, !llvm.loop !163

2040:                                             ; preds = %1998, %2297
  %2041 = phi i64 [ 0, %1998 ], [ %2298, %2297 ]
  %2042 = getelementptr inbounds %struct.set, ptr %1897, i64 %2041
  %2043 = load ptr, ptr %2042, align 8, !tbaa !105
  %2044 = icmp eq ptr %2043, null
  br i1 %2044, label %2297, label %2045

2045:                                             ; preds = %2040
  %2046 = getelementptr inbounds %struct.rtx_def, ptr %2043, i64 0, i32 1
  %2047 = load ptr, ptr %2046, align 8, !tbaa !16
  %2048 = load i32, ptr @flag_float_store, align 4, !tbaa !15
  %2049 = icmp ne i32 %2048, 0
  %2050 = load i32, ptr %2047, align 8
  %2051 = and i32 %2050, 65535
  %2052 = icmp eq i32 %2051, 43
  %2053 = select i1 %2049, i1 %2052, i1 false
  br i1 %2053, label %2054, label %2060

2054:                                             ; preds = %2045
  %2055 = lshr i32 %2050, 16
  %2056 = and i32 %2055, 255
  %2057 = zext nneg i32 %2056 to i64
  %2058 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2057
  %2059 = load i8, ptr %2058, align 1, !tbaa !16
  switch i8 %2059, label %2060 [
    i8 8, label %2297
    i8 9, label %2297
    i8 11, label %2297
    i8 17, label %2297
  ]

2060:                                             ; preds = %2054, %2045
  %2061 = lshr i32 %2050, 16
  %2062 = and i32 %2061, 255
  %2063 = icmp eq i32 %2062, 1
  br i1 %2063, label %2297, label %2064

2064:                                             ; preds = %2060
  %2065 = getelementptr inbounds %struct.set, ptr %1897, i64 %2041, i32 2
  %2066 = load ptr, ptr %2065, align 8, !tbaa !115
  %2067 = icmp eq ptr %2066, null
  br i1 %2067, label %2297, label %2068

2068:                                             ; preds = %2064
  %2069 = trunc i32 %2050 to i16
  switch i16 %2069, label %2096 [
    i16 39, label %2070
    i16 40, label %2089
  ]

2070:                                             ; preds = %2068
  %2071 = zext nneg i32 %2062 to i64
  %2072 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2071
  %2073 = load i8, ptr %2072, align 1, !tbaa !16
  %2074 = getelementptr inbounds %struct.rtx_def, ptr %2047, i64 0, i32 1
  %2075 = load ptr, ptr %2074, align 8, !tbaa !16
  %2076 = load i32, ptr %2075, align 8
  %2077 = lshr i32 %2076, 16
  %2078 = and i32 %2077, 255
  %2079 = zext nneg i32 %2078 to i64
  %2080 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2079
  %2081 = load i8, ptr %2080, align 1, !tbaa !16
  %2082 = icmp ugt i8 %2073, %2081
  br i1 %2082, label %2083, label %2099

2083:                                             ; preds = %2070
  %2084 = getelementptr inbounds %struct.set, ptr %1897, i64 %2041, i32 1
  %2085 = load ptr, ptr %2084, align 8, !tbaa !111
  %2086 = load i32, ptr %2085, align 8
  %2087 = and i32 %2086, 65534
  %2088 = icmp eq i32 %2087, 98
  br i1 %2088, label %2297, label %2099

2089:                                             ; preds = %2068
  %2090 = getelementptr inbounds %struct.rtx_def, ptr %2047, i64 0, i32 1
  %2091 = load ptr, ptr %2090, align 8, !tbaa !16
  %2092 = getelementptr inbounds %struct.rtx_def, ptr %2091, i64 0, i32 1
  %2093 = load ptr, ptr %2092, align 8, !tbaa !16
  %2094 = load i32, ptr %2093, align 8
  %2095 = trunc i32 %2094 to i16
  br label %2096

2096:                                             ; preds = %2068, %2089
  %2097 = phi i16 [ %2069, %2068 ], [ %2095, %2089 ]
  %2098 = phi ptr [ %2047, %2068 ], [ %2093, %2089 ]
  switch i16 %2097, label %2123 [
    i16 37, label %2099
    i16 39, label %2099
  ]

2099:                                             ; preds = %2083, %2070, %2096, %2096
  %2100 = phi ptr [ %2098, %2096 ], [ %2098, %2096 ], [ %2047, %2070 ], [ %2047, %2083 ]
  %2101 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2100, ptr noundef nonnull %2066, i32 noundef 1) #25, !range !34
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2123, label %2103

2103:                                             ; preds = %2099
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %2100) #25
  %2104 = load i32, ptr %2100, align 8
  %2105 = and i32 %2104, 65535
  %2106 = icmp eq i32 %2105, 37
  br i1 %2106, label %2107, label %2115

2107:                                             ; preds = %2103
  %2108 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2100) #25
  %2109 = icmp ugt i32 %2108, 52
  br i1 %2109, label %2110, label %2115

2110:                                             ; preds = %2107
  %2111 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2108) #25
  %2112 = getelementptr inbounds %struct.cse_reg_info, ptr %2111, i64 0, i32 1
  %2113 = load i32, ptr %2112, align 4, !tbaa !17
  %2114 = add i32 %2113, 4736
  br label %2119

2115:                                             ; preds = %2107, %2103
  %2116 = lshr i32 %2104, 16
  %2117 = and i32 %2116, 255
  %2118 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2100, i32 noundef %2117) #25
  br label %2119

2119:                                             ; preds = %2115, %2110
  %2120 = phi i32 [ %2114, %2110 ], [ %2118, %2115 ]
  %2121 = and i32 %2120, 31
  %2122 = getelementptr inbounds %struct.set, ptr %1897, i64 %2041, i32 4
  store i32 %2121, ptr %2122, align 4, !tbaa !151
  br label %2123

2123:                                             ; preds = %2096, %2099, %2119
  %2124 = phi ptr [ %2098, %2096 ], [ %2100, %2099 ], [ %2100, %2119 ]
  %2125 = load ptr, ptr %2065, align 8, !tbaa !115
  %2126 = getelementptr inbounds %struct.set, ptr %1897, i64 %2041, i32 4
  %2127 = load i32, ptr %2126, align 4, !tbaa !151
  %2128 = load i32, ptr %2124, align 8
  %2129 = lshr i32 %2128, 16
  %2130 = and i32 %2129, 255
  %2131 = tail call fastcc ptr @insert(ptr noundef nonnull %2124, ptr noundef %2125, i32 noundef %2127, i32 noundef %2130) #25
  %2132 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !129
  %2133 = icmp eq i64 %2132, 0
  br i1 %2133, label %2153, label %2134

2134:                                             ; preds = %2123
  %2135 = load i32, ptr %2124, align 8
  %2136 = and i32 %2135, 65535
  %2137 = icmp eq i32 %2136, 37
  br i1 %2137, label %2138, label %2153

2138:                                             ; preds = %2134
  %2139 = lshr i32 %2135, 16
  %2140 = and i32 %2139, 255
  %2141 = zext nneg i32 %2140 to i64
  %2142 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2141
  %2143 = load i8, ptr %2142, align 1, !tbaa !16
  %2144 = and i8 %2143, -2
  %2145 = icmp eq i8 %2144, 2
  br i1 %2145, label %2146, label %2153

2146:                                             ; preds = %2138
  %2147 = load ptr, ptr %2065, align 8, !tbaa !115
  %2148 = load ptr, ptr %2147, align 8, !tbaa !10
  %2149 = load i32, ptr %2148, align 8
  %2150 = and i32 %2149, 65535
  %2151 = icmp eq i32 %2150, 30
  br i1 %2151, label %2152, label %2153

2152:                                             ; preds = %2146
  tail call fastcc void @insert_const_anchors(ptr noundef nonnull %2124, ptr noundef nonnull %2148, i32 noundef %2140) #25
  br label %2153

2153:                                             ; preds = %2138, %2152, %2146, %2134, %2123
  %2154 = getelementptr inbounds %struct.set, ptr %1897, i64 %2041, i32 5
  %2155 = load ptr, ptr %2154, align 8, !tbaa !150
  %2156 = load i32, ptr %2155, align 8
  %2157 = and i32 %2156, 67174399
  %2158 = icmp eq i32 %2157, 43
  %2159 = zext i1 %2158 to i8
  %2160 = getelementptr inbounds %struct.table_elt, ptr %2131, i64 0, i32 11
  store i8 %2159, ptr %2160, align 1, !tbaa !94
  %2161 = load i32, ptr %2124, align 8
  %2162 = and i32 %2161, 65535
  %2163 = icmp eq i32 %2162, 39
  br i1 %2163, label %2164, label %2297

2164:                                             ; preds = %2153
  %2165 = getelementptr inbounds %struct.rtx_def, ptr %2124, i64 0, i32 1
  %2166 = load ptr, ptr %2165, align 8, !tbaa !16
  %2167 = load i32, ptr %2166, align 8
  %2168 = lshr i32 %2167, 16
  %2169 = and i32 %2168, 255
  %2170 = zext nneg i32 %2169 to i64
  %2171 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2170
  %2172 = load i8, ptr %2171, align 1, !tbaa !16
  %2173 = zext i8 %2172 to i16
  %2174 = add nsw i16 %2173, -1
  %2175 = sdiv i16 %2174, 4
  %2176 = lshr i32 %2161, 16
  %2177 = and i32 %2176, 255
  %2178 = zext nneg i32 %2177 to i64
  %2179 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2178
  %2180 = load i8, ptr %2179, align 1, !tbaa !16
  %2181 = zext i8 %2180 to i16
  %2182 = add nsw i16 %2181, -1
  %2183 = sdiv i16 %2182, 4
  %2184 = icmp ne i16 %2175, %2183
  %2185 = icmp ult i8 %2180, %2172
  %2186 = or i1 %2185, %2184
  br i1 %2186, label %2297, label %2187

2187:                                             ; preds = %2164
  %2188 = load ptr, ptr %2065, align 8, !tbaa !115
  %2189 = icmp eq ptr %2188, null
  br i1 %2189, label %2297, label %2190

2190:                                             ; preds = %2187
  %2191 = getelementptr inbounds %struct.table_elt, ptr %2188, i64 0, i32 6
  %2192 = load ptr, ptr %2191, align 8, !tbaa !6
  %2193 = icmp eq ptr %2192, null
  br i1 %2193, label %2297, label %2194

2194:                                             ; preds = %2190, %2292
  %2195 = phi ptr [ %2295, %2292 ], [ %2192, %2190 ]
  %2196 = phi ptr [ %2293, %2292 ], [ null, %2190 ]
  %2197 = load ptr, ptr %2195, align 8, !tbaa !10
  %2198 = load i32, ptr %2197, align 8
  %2199 = and i32 %2198, 65535
  %2200 = icmp eq i32 %2199, 37
  br i1 %2200, label %2207, label %2201

2201:                                             ; preds = %2194
  %2202 = tail call i32 @exp_equiv_p(ptr noundef nonnull %2197, ptr noundef nonnull %2197, i32 noundef 1, i8 noundef zeroext 0) #25, !range !34
  %2203 = icmp eq i32 %2202, 0
  br i1 %2203, label %2292, label %2204

2204:                                             ; preds = %2201
  %2205 = load ptr, ptr %2195, align 8, !tbaa !10
  %2206 = load i32, ptr %2205, align 8
  br label %2207

2207:                                             ; preds = %2204, %2194
  %2208 = phi i32 [ %2206, %2204 ], [ %2198, %2194 ]
  %2209 = phi ptr [ %2205, %2204 ], [ %2197, %2194 ]
  %2210 = lshr i32 %2208, 16
  %2211 = and i32 %2210, 255
  %2212 = icmp eq i32 %2211, %2169
  br i1 %2212, label %2221, label %2213

2213:                                             ; preds = %2207
  %2214 = load i32, ptr %2124, align 8
  %2215 = lshr i32 %2214, 16
  %2216 = and i32 %2215, 255
  %2217 = tail call ptr @simplify_gen_subreg(i32 noundef %2169, ptr noundef nonnull %2209, i32 noundef %2216, i32 noundef 0) #23
  %2218 = icmp eq ptr %2217, null
  br i1 %2218, label %2292, label %2219

2219:                                             ; preds = %2213
  %2220 = load i32, ptr %2217, align 8
  br label %2221

2221:                                             ; preds = %2219, %2207
  %2222 = phi i32 [ %2220, %2219 ], [ %2208, %2207 ]
  %2223 = phi ptr [ %2217, %2219 ], [ %2209, %2207 ]
  %2224 = and i32 %2222, 65535
  %2225 = icmp eq i32 %2224, 37
  br i1 %2225, label %2226, label %2234

2226:                                             ; preds = %2221
  %2227 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2223) #25
  %2228 = icmp ugt i32 %2227, 52
  br i1 %2228, label %2229, label %2234

2229:                                             ; preds = %2226
  %2230 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2227) #25
  %2231 = getelementptr inbounds %struct.cse_reg_info, ptr %2230, i64 0, i32 1
  %2232 = load i32, ptr %2231, align 4, !tbaa !17
  %2233 = add i32 %2232, 4736
  br label %2236

2234:                                             ; preds = %2226, %2221
  %2235 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2223, i32 noundef %2169) #25
  br label %2236

2236:                                             ; preds = %2234, %2229
  %2237 = phi i32 [ %2233, %2229 ], [ %2235, %2234 ]
  %2238 = and i32 %2237, 31
  %2239 = tail call fastcc ptr @lookup(ptr noundef nonnull %2223, i32 noundef %2238, i32 noundef %2169) #25
  %2240 = icmp eq ptr %2239, null
  br i1 %2240, label %2241, label %2267

2241:                                             ; preds = %2236
  %2242 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2223, ptr noundef %2196, i32 noundef 0) #25, !range !34
  %2243 = icmp eq i32 %2242, 0
  br i1 %2243, label %2261, label %2244

2244:                                             ; preds = %2241
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %2223) #25
  %2245 = load i32, ptr %2223, align 8
  %2246 = and i32 %2245, 65535
  %2247 = icmp eq i32 %2246, 37
  br i1 %2247, label %2248, label %2256

2248:                                             ; preds = %2244
  %2249 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2223) #25
  %2250 = icmp ugt i32 %2249, 52
  br i1 %2250, label %2251, label %2256

2251:                                             ; preds = %2248
  %2252 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2249) #25
  %2253 = getelementptr inbounds %struct.cse_reg_info, ptr %2252, i64 0, i32 1
  %2254 = load i32, ptr %2253, align 4, !tbaa !17
  %2255 = add i32 %2254, 4736
  br label %2258

2256:                                             ; preds = %2248, %2244
  %2257 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2223, i32 noundef %2169) #25
  br label %2258

2258:                                             ; preds = %2256, %2251
  %2259 = phi i32 [ %2255, %2251 ], [ %2257, %2256 ]
  %2260 = and i32 %2259, 31
  br label %2261

2261:                                             ; preds = %2258, %2241
  %2262 = phi i32 [ %2260, %2258 ], [ %2238, %2241 ]
  %2263 = tail call fastcc ptr @insert(ptr noundef nonnull %2223, ptr noundef %2196, i32 noundef %2262, i32 noundef %2169) #25
  %2264 = getelementptr inbounds %struct.table_elt, ptr %2195, i64 0, i32 11
  %2265 = load i8, ptr %2264, align 1, !tbaa !94
  %2266 = getelementptr inbounds %struct.table_elt, ptr %2263, i64 0, i32 11
  store i8 %2265, ptr %2266, align 1, !tbaa !94
  br label %2274

2267:                                             ; preds = %2236
  %2268 = icmp eq ptr %2196, null
  br i1 %2268, label %2274, label %2269

2269:                                             ; preds = %2267
  %2270 = getelementptr inbounds %struct.table_elt, ptr %2239, i64 0, i32 6
  %2271 = load ptr, ptr %2270, align 8, !tbaa !116
  %2272 = icmp eq ptr %2196, %2271
  br i1 %2272, label %2274, label %2273

2273:                                             ; preds = %2269
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %2239, ptr noundef nonnull %2196) #25
  br label %2274

2274:                                             ; preds = %2267, %2269, %2273, %2261
  %2275 = phi ptr [ %2263, %2261 ], [ %2239, %2273 ], [ %2239, %2269 ], [ %2239, %2267 ]
  %2276 = getelementptr inbounds %struct.table_elt, ptr %2275, i64 0, i32 6
  %2277 = load ptr, ptr %2276, align 8, !tbaa !6
  %2278 = icmp eq ptr %2277, null
  br i1 %2278, label %2292, label %2279

2279:                                             ; preds = %2274, %2288
  %2280 = phi ptr [ %2290, %2288 ], [ %2277, %2274 ]
  %2281 = load ptr, ptr %2280, align 8, !tbaa !10
  %2282 = load i32, ptr %2281, align 8
  %2283 = and i32 %2282, 65535
  %2284 = icmp eq i32 %2283, 37
  br i1 %2284, label %2292, label %2285

2285:                                             ; preds = %2279
  %2286 = tail call i32 @exp_equiv_p(ptr noundef nonnull %2281, ptr noundef nonnull %2281, i32 noundef 1, i8 noundef zeroext 0) #25, !range !34
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2288, label %2292

2288:                                             ; preds = %2285
  %2289 = getelementptr inbounds %struct.table_elt, ptr %2280, i64 0, i32 4
  %2290 = load ptr, ptr %2289, align 8, !tbaa !6
  %2291 = icmp eq ptr %2290, null
  br i1 %2291, label %2292, label %2279, !llvm.loop !164

2292:                                             ; preds = %2279, %2288, %2285, %2274, %2213, %2201
  %2293 = phi ptr [ %2196, %2201 ], [ %2196, %2213 ], [ null, %2274 ], [ %2280, %2279 ], [ null, %2288 ], [ %2280, %2285 ]
  %2294 = getelementptr inbounds %struct.table_elt, ptr %2195, i64 0, i32 4
  %2295 = load ptr, ptr %2294, align 8, !tbaa !6
  %2296 = icmp eq ptr %2295, null
  br i1 %2296, label %2297, label %2194, !llvm.loop !165

2297:                                             ; preds = %2292, %2190, %2083, %2054, %2054, %2054, %2054, %2064, %2060, %2187, %2164, %2153, %2040
  %2298 = add nuw nsw i64 %2041, 1
  %2299 = icmp eq i64 %2298, %1999
  br i1 %2299, label %2300, label %2040, !llvm.loop !166

2300:                                             ; preds = %2297, %1951, %1954, %1997
  br i1 %1899, label %2301, label %2411

2301:                                             ; preds = %2300
  %2302 = load ptr, ptr %1897, align 8, !tbaa !105
  %2303 = icmp eq ptr %2302, null
  br i1 %2303, label %2411, label %2304

2304:                                             ; preds = %2301
  %2305 = getelementptr inbounds %struct.rtx_def, ptr %2302, i64 0, i32 1
  %2306 = load ptr, ptr %2305, align 8, !tbaa !16
  %2307 = load i32, ptr %2306, align 8
  %2308 = and i32 %2307, 65535
  %2309 = icmp eq i32 %2308, 37
  br i1 %2309, label %2310, label %2411

2310:                                             ; preds = %2304
  %2311 = getelementptr inbounds %struct.rtx_def, ptr %1895, i64 0, i32 1, i32 0, i32 0, i64 1
  %2312 = load ptr, ptr %2311, align 8, !tbaa !16
  %2313 = getelementptr inbounds %struct.rtx_def, ptr %2312, i64 0, i32 1, i32 0, i32 0, i64 2
  %2314 = load ptr, ptr %2313, align 8, !tbaa !16
  %2315 = icmp eq ptr %2314, %1895
  br i1 %2315, label %2316, label %2411

2316:                                             ; preds = %2310
  %2317 = getelementptr inbounds %struct.rtx_def, ptr %2302, i64 0, i32 1, i32 0, i32 0, i64 1
  %2318 = load ptr, ptr %2317, align 8, !tbaa !16
  %2319 = load i32, ptr %2318, align 8
  %2320 = and i32 %2319, 65535
  %2321 = icmp eq i32 %2320, 37
  br i1 %2321, label %2322, label %2411

2322:                                             ; preds = %2316
  %2323 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2318) #25
  %2324 = icmp ugt i32 %2323, 52
  br i1 %2324, label %2325, label %2411

2325:                                             ; preds = %2322
  %2326 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2323) #25
  %2327 = getelementptr inbounds %struct.cse_reg_info, ptr %2326, i64 0, i32 1
  %2328 = load i32, ptr %2327, align 4, !tbaa !17
  %2329 = icmp sgt i32 %2328, -1
  br i1 %2329, label %2330, label %2411

2330:                                             ; preds = %2325
  %2331 = load ptr, ptr %1897, align 8, !tbaa !105
  %2332 = getelementptr inbounds %struct.rtx_def, ptr %2331, i64 0, i32 1, i32 0, i32 0, i64 1
  %2333 = load ptr, ptr %2332, align 8, !tbaa !16
  %2334 = tail call fastcc i32 @rhs_regno(ptr noundef %2333) #25
  %2335 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %2334) #25
  %2336 = getelementptr inbounds %struct.cse_reg_info, ptr %2335, i64 0, i32 1
  %2337 = load i32, ptr %2336, align 4, !tbaa !17
  %2338 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %2339 = sext i32 %2337 to i64
  %2340 = getelementptr inbounds %struct.qty_table_elem, ptr %2338, i64 %2339, i32 4
  %2341 = load i32, ptr %2340, align 4, !tbaa !147
  %2342 = load ptr, ptr %1897, align 8, !tbaa !105
  %2343 = getelementptr inbounds %struct.rtx_def, ptr %2342, i64 0, i32 1
  %2344 = load ptr, ptr %2343, align 8, !tbaa !16
  %2345 = tail call fastcc i32 @rhs_regno(ptr noundef %2344) #25
  %2346 = icmp eq i32 %2341, %2345
  br i1 %2346, label %2347, label %2411

2347:                                             ; preds = %2330
  %2348 = getelementptr inbounds %struct.rtx_def, ptr %1895, i64 0, i32 1, i32 0, i32 1
  %2349 = load ptr, ptr %2348, align 8, !tbaa !16
  %2350 = getelementptr inbounds %struct.basic_block_def, ptr %2349, i64 0, i32 7
  %2351 = load ptr, ptr %2350, align 8, !tbaa !16
  %2352 = load ptr, ptr %2351, align 8, !tbaa !167
  %2353 = load ptr, ptr %2311, align 8, !tbaa !16
  %2354 = icmp eq ptr %2353, %2352
  br i1 %2354, label %2363, label %2355

2355:                                             ; preds = %2347, %2359
  %2356 = phi ptr [ %2361, %2359 ], [ %2353, %2347 ]
  %2357 = load i32, ptr %2356, align 8
  %2358 = trunc i32 %2357 to i16
  switch i16 %2358, label %2363 [
    i16 13, label %2359
    i16 7, label %2359
  ]

2359:                                             ; preds = %2355, %2355
  %2360 = getelementptr inbounds %struct.rtx_def, ptr %2356, i64 0, i32 1, i32 0, i32 0, i64 1
  %2361 = load ptr, ptr %2360, align 8, !tbaa !16
  %2362 = icmp eq ptr %2361, %2352
  br i1 %2362, label %2363, label %2355

2363:                                             ; preds = %2359, %2355, %2347
  %2364 = phi ptr [ %2352, %2347 ], [ %2356, %2355 ], [ %2352, %2359 ]
  %2365 = load i32, ptr %2364, align 8
  %2366 = and i32 %2365, 65535
  %2367 = icmp eq i32 %2366, 8
  br i1 %2367, label %2368, label %2411

2368:                                             ; preds = %2363
  %2369 = getelementptr inbounds %struct.rtx_def, ptr %2364, i64 1
  %2370 = load ptr, ptr %2369, align 8, !tbaa !16
  %2371 = load i32, ptr %2370, align 8
  %2372 = and i32 %2371, 65535
  %2373 = icmp eq i32 %2372, 23
  br i1 %2373, label %2374, label %2411

2374:                                             ; preds = %2368
  %2375 = getelementptr inbounds %struct.rtx_def, ptr %2370, i64 0, i32 1
  %2376 = load ptr, ptr %2375, align 8, !tbaa !16
  %2377 = getelementptr inbounds %struct.rtx_def, ptr %2342, i64 0, i32 1, i32 0, i32 0, i64 1
  %2378 = load ptr, ptr %2377, align 8, !tbaa !16
  %2379 = icmp eq ptr %2376, %2378
  br i1 %2379, label %2380, label %2411

2380:                                             ; preds = %2374
  %2381 = tail call ptr @find_reg_note(ptr noundef nonnull %2364, i32 noundef 3, ptr noundef null) #23
  %2382 = icmp eq ptr %2381, null
  br i1 %2382, label %2383, label %2411

2383:                                             ; preds = %2380
  %2384 = load ptr, ptr %1897, align 8, !tbaa !105
  %2385 = getelementptr inbounds %struct.rtx_def, ptr %2384, i64 0, i32 1
  %2386 = load ptr, ptr %2385, align 8, !tbaa !16
  %2387 = getelementptr inbounds %struct.rtx_def, ptr %2384, i64 0, i32 1, i32 0, i32 0, i64 1
  %2388 = load ptr, ptr %2387, align 8, !tbaa !16
  %2389 = load ptr, ptr %2369, align 8, !tbaa !16
  %2390 = getelementptr inbounds %struct.rtx_def, ptr %2389, i64 0, i32 1
  %2391 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2364, ptr noundef nonnull %2390, ptr noundef %2386, i8 noundef zeroext 1) #23
  %2392 = load ptr, ptr %1897, align 8, !tbaa !105
  %2393 = getelementptr inbounds %struct.rtx_def, ptr %2392, i64 0, i32 1
  %2394 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1895, ptr noundef nonnull %2393, ptr noundef %2388, i8 noundef zeroext 1) #23
  %2395 = load ptr, ptr %1897, align 8, !tbaa !105
  %2396 = getelementptr inbounds %struct.rtx_def, ptr %2395, i64 0, i32 1, i32 0, i32 0, i64 1
  %2397 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1895, ptr noundef nonnull %2396, ptr noundef %2386, i8 noundef zeroext 1) #23
  %2398 = tail call i32 @apply_change_group() #23
  %2399 = tail call ptr @find_reg_note(ptr noundef nonnull %1895, i32 noundef 4, ptr noundef null) #23
  %2400 = icmp eq ptr %2399, null
  br i1 %2400, label %2411, label %2401

2401:                                             ; preds = %2383
  %2402 = getelementptr inbounds %struct.rtx_def, ptr %2399, i64 0, i32 1
  %2403 = load ptr, ptr %2402, align 8, !tbaa !16
  %2404 = tail call i32 @reg_mentioned_p(ptr noundef %2386, ptr noundef %2403) #23
  %2405 = icmp eq i32 %2404, 0
  br i1 %2405, label %2406, label %2410

2406:                                             ; preds = %2401
  %2407 = load ptr, ptr %2402, align 8, !tbaa !16
  %2408 = tail call i32 @rtx_equal_p(ptr noundef %2388, ptr noundef %2407) #23
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %2411, label %2410

2410:                                             ; preds = %2406, %2401
  tail call void @remove_note(ptr noundef nonnull %1895, ptr noundef nonnull %2399) #23
  br label %2411

2411:                                             ; preds = %2330, %2383, %2406, %2410, %2380, %2374, %2368, %2363, %2300, %2301, %2304, %2310, %2316, %2322, %2325, %1950
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @check_for_label_ref(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 134283263
  %6 = icmp eq i32 %5, 44
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = tail call zeroext i8 @label_is_jump_target_p(ptr noundef %13, ptr noundef nonnull %1) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8, !tbaa !6
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi ptr [ %17, %16 ], [ %3, %7 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

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
define internal fastcc noundef zeroext i8 @have_eh_succ_edges(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #25
  store i32 0, ptr %3, align 8, !tbaa.struct !85
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !86
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #25, !range !56
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1, %15
  %10 = load ptr, ptr %2, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %3) #25
  %16 = load i32, ptr %3, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc zeroext i8 @ei_cond(i32 %16, ptr %17, ptr noundef nonnull %2) #25, !range !56
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !168

20:                                               ; preds = %9, %15, %1
  %21 = phi i8 [ 0, %1 ], [ 0, %15 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret i8 %21
}

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
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
  %15 = load i64, ptr %14, align 8, !tbaa !54
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !16
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !16
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !54
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_jump_equiv(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
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
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3906, ptr noundef nonnull @.str.4) #23
  br label %10

10:                                               ; preds = %2, %9
  %11 = tail call ptr @pc_set(ptr noundef %0) #23
  %12 = icmp eq i8 %1, 0
  %13 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = load ptr, ptr @global_rtl, align 16, !tbaa !6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = select i1 %12, ptr %16, ptr %17
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = icmp eq ptr %19, %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = tail call fastcc ptr @fold_rtx(ptr noundef %27, ptr noundef %0) #25
  store ptr %28, ptr %3, align 8, !tbaa !6
  %29 = load ptr, ptr %21, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = tail call fastcc ptr @fold_rtx(ptr noundef %33, ptr noundef %0) #25
  store ptr %34, ptr %4, align 8, !tbaa !6
  %35 = call fastcc i32 @find_comparison_args(i32 noundef %25, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %36 = load ptr, ptr %3, align 8, !tbaa !6
  %37 = load ptr, ptr %4, align 8, !tbaa !6
  br i1 %20, label %41, label %38

38:                                               ; preds = %10
  %39 = tail call i32 @reversed_comparison_code_parts(i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %0) #23
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38, %10
  %42 = phi i32 [ %35, %10 ], [ %39, %38 ]
  %43 = load i32, ptr %5, align 4, !tbaa !15
  %44 = load i32, ptr %6, align 4, !tbaa !15
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %43, i32 %44
  tail call fastcc void @record_jump_cond(i32 noundef %42, i32 noundef %46, ptr noundef %36, ptr noundef %37) #25
  br label %47

47:                                               ; preds = %38, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #16 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #25, !range !56
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #25
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #25
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #25
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.4) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !169
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !169
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #25
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #25
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.4) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !171
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @canon_hash(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @do_not_record, ptr noundef nonnull @hash_arg_in_memory, i8 noundef zeroext 1) #25
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delete_reg_equiv(i32 noundef %0) unnamed_addr #5 {
  %2 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #25
  %3 = getelementptr inbounds %struct.cse_reg_info, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %5 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #25
  %6 = getelementptr inbounds %struct.cse_reg_info, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !17
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %11 = sext i32 %4 to i64
  %12 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !6
  %13 = zext i32 %0 to i64
  %14 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %13, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !174
  %17 = load i32, ptr %14, align 4, !tbaa !176
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %22, label %19

19:                                               ; preds = %9
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %20, i32 1
  store i32 %16, ptr %21, align 4, !tbaa !174
  br label %24

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.qty_table_elem, ptr %10, i64 %11, i32 5
  store i32 %16, ptr %23, align 8, !tbaa !177
  br label %24

24:                                               ; preds = %22, %19
  %25 = icmp eq i32 %16, -1
  %26 = getelementptr inbounds %struct.qty_table_elem, ptr %10, i64 %11, i32 4
  %27 = sext i32 %16 to i64
  %28 = getelementptr inbounds %struct.reg_eqv_elem, ptr %12, i64 %27
  %29 = select i1 %25, ptr %26, ptr %28
  store i32 %17, ptr %29, align 4, !tbaa !15
  %30 = xor i32 %0, -1
  %31 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #25
  %32 = getelementptr inbounds %struct.cse_reg_info, ptr %31, i64 0, i32 1
  store i32 %30, ptr %32, align 4, !tbaa !17
  br label %33

33:                                               ; preds = %1, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_pseudo_from_table(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @lookup_for_remove(ptr noundef %0, i32 noundef %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call fastcc void @remove_from_table(ptr noundef nonnull %6, i32 noundef %1) #25
  %7 = tail call fastcc ptr @lookup_for_remove(ptr noundef %0, i32 noundef %1) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !178

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @remove_from_table(ptr noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  store ptr null, ptr %3, align 8, !tbaa !116
  %4 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  %6 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = icmp eq ptr %5, null
  br i1 %10, label %22, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.table_elt, ptr %7, i64 0, i32 5
  store ptr %5, ptr %12, align 8, !tbaa !160
  %13 = icmp eq ptr %5, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %9
  %15 = getelementptr inbounds %struct.table_elt, ptr %5, i64 0, i32 4
  store ptr %7, ptr %15, align 8, !tbaa !141
  br label %22

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %20, %16 ], [ %7, %11 ]
  %18 = getelementptr inbounds %struct.table_elt, ptr %17, i64 0, i32 6
  store ptr %7, ptr %18, align 8, !tbaa !116
  %19 = getelementptr inbounds %struct.table_elt, ptr %17, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !141
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !179

22:                                               ; preds = %16, %9, %14
  %23 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !180
  %25 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.table_elt, ptr %26, i64 0, i32 3
  store ptr %24, ptr %29, align 8, !tbaa !180
  br label %30

30:                                               ; preds = %28, %22
  %31 = icmp eq ptr %24, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.table_elt, ptr %24, i64 0, i32 2
  br label %58

34:                                               ; preds = %30
  %35 = zext i32 %1 to i64
  %36 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %58, label %39

39:                                               ; preds = %34
  %40 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %41 = shufflevector <2 x ptr> %40, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %55, %39
  %43 = phi i64 [ 0, %39 ], [ %56, %55 ]
  %44 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %43
  %45 = load <2 x ptr>, ptr %44, align 16, !tbaa !6
  %46 = icmp eq <2 x ptr> %45, %41
  %47 = extractelement <2 x i1> %46, i64 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %43
  store ptr %26, ptr %49, align 16, !tbaa !6
  br label %50

50:                                               ; preds = %48, %42
  %51 = extractelement <2 x i1> %46, i64 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = or disjoint i64 %43, 1
  %54 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %53
  store ptr %26, ptr %54, align 8, !tbaa !6
  br label %55

55:                                               ; preds = %52, %50
  %56 = add nuw i64 %43, 2
  %57 = icmp eq i64 %56, 32
  br i1 %57, label %60, label %42, !llvm.loop !181

58:                                               ; preds = %34, %32
  %59 = phi ptr [ %33, %32 ], [ %36, %34 ]
  store ptr %26, ptr %59, align 8, !tbaa !6
  br label %60

60:                                               ; preds = %55, %58
  %61 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !122
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %62, %0
  %65 = or i1 %63, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %60, %66
  %67 = phi ptr [ %69, %66 ], [ %62, %60 ]
  %68 = getelementptr inbounds %struct.table_elt, ptr %67, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !122
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %71, label %66, !llvm.loop !184

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.table_elt, ptr %67, i64 0, i32 7
  %73 = icmp eq ptr %62, %67
  %74 = select i1 %73, ptr null, ptr %62
  store ptr %74, ptr %72, align 8, !tbaa !122
  br label %75

75:                                               ; preds = %71, %60
  %76 = load ptr, ptr @free_element_chain, align 8, !tbaa !6
  store ptr %76, ptr %25, align 8, !tbaa !82
  store ptr %0, ptr @free_element_chain, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @check_dependence(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 43
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.check_dependence_data, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = load i32, ptr %1, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.check_dependence_data, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = tail call i32 @canon_true_dependence(ptr noundef %11, i32 noundef %12, ptr noundef %14, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @cse_rtx_varies_p) #23
  br label %16

16:                                               ; preds = %2, %5, %9
  %17 = phi i32 [ %15, %9 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_for_remove(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %6, %21
  %13 = phi ptr [ %23, %21 ], [ %10, %6 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #25
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %45, label %21

21:                                               ; preds = %12, %18
  %22 = getelementptr inbounds %struct.table_elt, ptr %13, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %12, !llvm.loop !185

25:                                               ; preds = %2
  %26 = zext nneg i32 %1 to i64
  %27 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %25, %41
  %31 = phi ptr [ %43, %41 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.table_elt, ptr %31, i64 0, i32 10
  %33 = load i8, ptr %32, align 8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !10
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @exp_equiv_p(ptr noundef nonnull %0, ptr noundef %36, i32 noundef 0, i8 noundef zeroext 0) #25, !range !34
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30, %38
  %42 = getelementptr inbounds %struct.table_elt, ptr %31, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %30, !llvm.loop !186

45:                                               ; preds = %38, %35, %41, %18, %21, %25, %6
  %46 = phi ptr [ null, %6 ], [ null, %25 ], [ %13, %18 ], [ null, %21 ], [ %31, %38 ], [ %31, %35 ], [ null, %41 ]
  ret ptr %46
}

; Function Attrs: optsize
declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @cse_rtx_varies_p(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %9 = getelementptr inbounds %struct.cse_reg_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !17
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %0, align 8
  br label %31

14:                                               ; preds = %6
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %16 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %15) #25
  %17 = getelementptr inbounds %struct.cse_reg_info, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !17
  %19 = load ptr, ptr @qty_table, align 8, !tbaa !6
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
  %29 = load ptr, ptr %28, align 8, !tbaa !187
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
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %72

42:                                               ; preds = %35
  %43 = load ptr, ptr %36, align 8, !tbaa !16
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %43) #25
  %49 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %48) #25
  %50 = getelementptr inbounds %struct.cse_reg_info, ptr %49, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !17
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load ptr, ptr %36, align 8, !tbaa !16
  %55 = tail call fastcc i32 @rhs_regno(ptr noundef %54) #25
  %56 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %55) #25
  %57 = getelementptr inbounds %struct.cse_reg_info, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !17
  %59 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %60 = sext i32 %58 to i64
  %61 = load ptr, ptr %36, align 8, !tbaa !16
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.qty_table_elem, ptr %59, i64 %60, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, %62
  %66 = and i32 %65, 16711680
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.qty_table_elem, ptr %59, i64 %60
  %70 = load ptr, ptr %69, align 8, !tbaa !187
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %140

72:                                               ; preds = %68, %53, %47, %42, %35, %31
  %73 = load i32, ptr %0, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 49
  br i1 %75, label %76, label %138

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !16
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %138

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !16
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %88, label %138

88:                                               ; preds = %82
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %78) #25
  %90 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %89) #25
  %91 = getelementptr inbounds %struct.cse_reg_info, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !17
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %138

94:                                               ; preds = %88
  %95 = load ptr, ptr %83, align 8, !tbaa !16
  %96 = tail call fastcc i32 @rhs_regno(ptr noundef %95) #25
  %97 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %96) #25
  %98 = getelementptr inbounds %struct.cse_reg_info, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !17
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %101, label %138

101:                                              ; preds = %94
  %102 = load ptr, ptr %77, align 8, !tbaa !16
  %103 = tail call fastcc i32 @rhs_regno(ptr noundef %102) #25
  %104 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %103) #25
  %105 = getelementptr inbounds %struct.cse_reg_info, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !17
  %107 = load ptr, ptr %83, align 8, !tbaa !16
  %108 = tail call fastcc i32 @rhs_regno(ptr noundef %107) #25
  %109 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %108) #25
  %110 = getelementptr inbounds %struct.cse_reg_info, ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !17
  %112 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %113 = sext i32 %106 to i64
  %114 = sext i32 %111 to i64
  %115 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %114
  %116 = load ptr, ptr %77, align 8, !tbaa !16
  %117 = load i32, ptr %116, align 8
  %118 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %113, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = xor i32 %119, %117
  %121 = and i32 %120, 16711680
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %101
  %124 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %113
  %125 = load ptr, ptr %124, align 8, !tbaa !187
  %126 = icmp eq ptr %125, null
  br i1 %126, label %138, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %83, align 8, !tbaa !16
  %129 = load i32, ptr %128, align 8
  %130 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %114, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = xor i32 %131, %129
  %133 = and i32 %132, 16711680
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load ptr, ptr %115, align 8, !tbaa !187
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
define internal fastcc ptr @cse_process_notes_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
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
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %93, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = zext i8 %12 to i64
  br label %80

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = tail call fastcc ptr @cse_process_notes(ptr noundef %19, ptr noundef nonnull %0, ptr noundef %2) #25
  %21 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef %20, i8 noundef zeroext 0) #23
  br label %93

22:                                               ; preds = %3, %3
  %23 = and i32 %4, 16711680
  %24 = icmp eq i32 %23, 262144
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = tail call fastcc ptr @cse_process_notes(ptr noundef %27, ptr noundef null, ptr noundef %2) #25
  store ptr %28, ptr %26, align 8, !tbaa !16
  br label %29

29:                                               ; preds = %25, %22
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %93, label %33

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @cse_process_notes(ptr noundef nonnull %31, ptr noundef null, ptr noundef %2) #25
  store ptr %34, ptr %30, align 8, !tbaa !16
  br label %93

35:                                               ; preds = %3, %3, %3
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = tail call fastcc ptr @cse_process_notes(ptr noundef %37, ptr noundef %1, ptr noundef %2) #25
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 16711680
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %93, label %42

42:                                               ; preds = %35
  %43 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %36, ptr noundef nonnull %38, i8 noundef zeroext 0) #23
  br label %93

44:                                               ; preds = %3
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %46 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %45) #25
  %47 = getelementptr inbounds %struct.cse_reg_info, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !17
  %49 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %50 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %49) #25
  %51 = getelementptr inbounds %struct.cse_reg_info, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !17
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %78

54:                                               ; preds = %44
  %55 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %56 = sext i32 %48 to i64
  %57 = getelementptr inbounds %struct.qty_table_elem, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !187
  %59 = icmp eq ptr %58, null
  br i1 %59, label %78, label %60

60:                                               ; preds = %54
  %61 = load i32, ptr %58, align 8
  %62 = and i32 %61, 65535
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !15
  %66 = icmp eq i32 %65, 9
  %67 = icmp eq i32 %62, 37
  %68 = or i1 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load ptr, ptr @rtl_hooks, align 8, !tbaa !124
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
  %83 = load i8, ptr %82, align 1, !tbaa !16
  %84 = icmp eq i8 %83, 101
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %81
  %87 = load ptr, ptr %86, align 8, !tbaa !16
  %88 = tail call fastcc ptr @cse_process_notes(ptr noundef %87, ptr noundef %1, ptr noundef %2) #25
  %89 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %86, ptr noundef %88, i8 noundef zeroext 0) #23
  br label %90

90:                                               ; preds = %80, %85
  %91 = add nuw nsw i64 %81, 1
  %92 = icmp eq i64 %91, %16
  br i1 %92, label %93, label %80, !llvm.loop !188

93:                                               ; preds = %90, %10, %76, %35, %42, %29, %33, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %78, %17
  %94 = phi ptr [ %79, %78 ], [ %77, %76 ], [ %0, %17 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %33 ], [ %0, %29 ], [ %0, %42 ], [ %0, %35 ], [ %0, %10 ], [ %0, %90 ]
  ret ptr %94
}

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @canon_reg(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %75, label %4

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
  ]

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %75, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %8) #25
  %12 = getelementptr inbounds %struct.cse_reg_info, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %75

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %17 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %16) #25
  %18 = getelementptr inbounds %struct.cse_reg_info, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !17
  %20 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.qty_table_elem, ptr %20, i64 %21, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !147
  %24 = icmp sgt i32 %23, 52
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !6
  %27 = zext nneg i32 %23 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  br label %75

30:                                               ; preds = %15
  %31 = sext i32 %23 to i64
  %32 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %75, label %35

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
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %75, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = zext i8 %47 to i64
  br label %52

52:                                               ; preds = %49, %73
  %53 = phi i64 [ %51, %49 ], [ %54, %73 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds i8, ptr %45, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !16
  switch i8 %56, label %73 [
    i8 101, label %62
    i8 69, label %57
  ]

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !16
  %60 = load i32, ptr %59, align 8, !tbaa !19
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
  %69 = load ptr, ptr %58, align 8, !tbaa !16
  %70 = load i32, ptr %69, align 8, !tbaa !19
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %64, label %73, !llvm.loop !189

73:                                               ; preds = %64, %57, %52, %62
  %74 = icmp sgt i64 %53, 1
  br i1 %74, label %52, label %75, !llvm.loop !190

75:                                               ; preds = %73, %41, %10, %7, %30, %35, %25, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %2
  %76 = phi ptr [ null, %2 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %4 ], [ %0, %10 ], [ %0, %7 ], [ %29, %25 ], [ %40, %35 ], [ %0, %30 ], [ %0, %41 ], [ %0, %73 ]
  ret ptr %76
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @validate_canon_reg(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %3, ptr noundef %1) #25
  %7 = icmp ne ptr %1, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %11, label %10

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
define internal fastcc ptr @fold_rtx(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %7 = icmp eq ptr %0, null
  br i1 %7, label %774, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = trunc i32 %9 to i16
  switch i16 %11, label %45 [
    i16 43, label %12
    i16 39, label %12
    i16 35, label %774
    i16 30, label %774
    i16 32, label %774
    i16 31, label %774
    i16 33, label %774
    i16 45, label %774
    i16 44, label %774
    i16 37, label %774
    i16 36, label %774
    i16 3, label %774
    i16 17, label %16
    i16 26, label %34
  ]

12:                                               ; preds = %8, %8
  %13 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %0) #25
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %0, ptr %13
  br label %774

16:                                               ; preds = %8
  %17 = icmp eq ptr %1, null
  br i1 %17, label %774, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = load i32, ptr %20, align 8, !tbaa !19
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %774

23:                                               ; preds = %18
  %24 = zext nneg i32 %21 to i64
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %24, %23 ], [ %27, %25 ]
  %27 = add nsw i64 %26, -1
  %28 = load ptr, ptr %19, align 8, !tbaa !16
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = tail call fastcc ptr @fold_rtx(ptr noundef %30, ptr noundef nonnull %1) #25
  %32 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1, ptr noundef nonnull %29, ptr noundef %31, i8 noundef zeroext 0) #23
  %33 = icmp ugt i64 %26, 1
  br i1 %33, label %25, label %774, !llvm.loop !191

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !16
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !15
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %774, label %45

45:                                               ; preds = %8, %34
  %46 = lshr i32 %9, 16
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %10 to i64
  %49 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %48
  %52 = load i8, ptr %51, align 1, !tbaa !16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 0, ptr %5, align 4, !tbaa !15
  br label %167

55:                                               ; preds = %45
  %56 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %48
  %57 = add nsw i32 %10, -107
  %58 = icmp ult i32 %57, -9
  %59 = icmp ne ptr %1, null
  %60 = zext i8 %52 to i64
  br label %61

61:                                               ; preds = %55, %145
  %62 = phi ptr [ undef, %55 ], [ %146, %145 ]
  %63 = phi ptr [ undef, %55 ], [ %147, %145 ]
  %64 = phi i64 [ %60, %55 ], [ %71, %145 ]
  %65 = phi ptr [ %0, %55 ], [ %153, %145 ]
  %66 = phi i32 [ 0, %55 ], [ %152, %145 ]
  %67 = phi ptr [ null, %55 ], [ %151, %145 ]
  %68 = phi ptr [ null, %55 ], [ %150, %145 ]
  %69 = phi ptr [ null, %55 ], [ %149, %145 ]
  %70 = phi i32 [ 0, %55 ], [ %148, %145 ]
  %71 = add nsw i64 %64, -1
  %72 = getelementptr inbounds i8, ptr %50, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !16
  %74 = icmp eq i8 %73, 101
  br i1 %74, label %75, label %145

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %77 = getelementptr inbounds [1 x %union.rtunion_def], ptr %76, i64 0, i64 %71
  %78 = load ptr, ptr %77, align 8, !tbaa !16
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = trunc i32 %79 to i16
  switch i16 %82, label %85 [
    i16 43, label %83
    i16 37, label %83
    i16 39, label %83
    i16 35, label %88
    i16 30, label %88
    i16 45, label %88
    i16 44, label %88
    i16 32, label %88
    i16 31, label %88
    i16 33, label %88
  ]

83:                                               ; preds = %75, %75, %75
  %84 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %78) #25
  br label %88

85:                                               ; preds = %75
  %86 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %78, ptr noundef %1) #25
  %87 = tail call fastcc ptr @equiv_constant(ptr noundef %86) #25
  br label %88

88:                                               ; preds = %75, %75, %75, %75, %75, %75, %75, %85, %83
  %89 = phi ptr [ %87, %85 ], [ %84, %83 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ]
  %90 = phi ptr [ %86, %85 ], [ %78, %83 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ], [ %78, %75 ]
  %91 = trunc i64 %64 to i32
  switch i32 %91, label %95 [
    i32 1, label %92
    i32 2, label %93
    i32 3, label %94
  ]

92:                                               ; preds = %88
  store ptr %90, ptr %3, align 8, !tbaa !6
  br label %95

93:                                               ; preds = %88
  store ptr %90, ptr %4, align 8, !tbaa !6
  br label %95

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %88, %94, %93, %92
  %96 = phi ptr [ %62, %88 ], [ %62, %94 ], [ %90, %93 ], [ %62, %92 ]
  %97 = phi ptr [ %63, %88 ], [ %63, %94 ], [ %63, %93 ], [ %90, %92 ]
  %98 = phi i32 [ %70, %88 ], [ %70, %94 ], [ %70, %93 ], [ %81, %92 ]
  %99 = phi ptr [ %69, %88 ], [ %89, %94 ], [ %69, %93 ], [ %69, %92 ]
  %100 = phi ptr [ %68, %88 ], [ %68, %94 ], [ %89, %93 ], [ %68, %92 ]
  %101 = phi ptr [ %67, %88 ], [ %67, %94 ], [ %67, %93 ], [ %89, %92 ]
  %102 = icmp eq ptr %89, null
  %103 = icmp eq ptr %89, %90
  %104 = or i1 %102, %103
  br i1 %104, label %131, label %105

105:                                              ; preds = %95
  %106 = load i32, ptr %89, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 37
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %89, i32 noundef %10) #25
  br label %111

111:                                              ; preds = %105, %109
  %112 = phi i32 [ %110, %109 ], [ 0, %105 ]
  %113 = load i32, ptr %90, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 37
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %90, i32 noundef %10) #25
  br label %118

118:                                              ; preds = %111, %116
  %119 = phi i32 [ %117, %116 ], [ 0, %111 ]
  %120 = icmp sgt i32 %112, %119
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = load i32, ptr %56, align 4, !tbaa !15
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i32, ptr %89, align 8
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  %128 = icmp eq i32 %127, %98
  %129 = select i1 %128, i1 true, i1 %58
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %121
  br label %131

131:                                              ; preds = %124, %130, %118, %95
  %132 = phi ptr [ %89, %130 ], [ %90, %118 ], [ %90, %95 ], [ %90, %124 ]
  %133 = load ptr, ptr %77, align 8, !tbaa !16
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %145, label %135

135:                                              ; preds = %131
  %136 = icmp ne i32 %66, 0
  %137 = select i1 %59, i1 true, i1 %136
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = tail call ptr @copy_rtx(ptr noundef nonnull %65) #23
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi ptr [ %65, %135 ], [ %139, %138 ]
  %142 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1
  %143 = getelementptr inbounds [1 x %union.rtunion_def], ptr %142, i64 0, i64 %71
  %144 = tail call zeroext i8 @validate_unshare_change(ptr noundef %1, ptr noundef nonnull %143, ptr noundef %132, i8 noundef zeroext 1) #23
  br label %145

145:                                              ; preds = %140, %131, %61
  %146 = phi ptr [ %62, %61 ], [ %96, %131 ], [ %96, %140 ]
  %147 = phi ptr [ %63, %61 ], [ %97, %131 ], [ %97, %140 ]
  %148 = phi i32 [ %70, %61 ], [ %98, %131 ], [ %98, %140 ]
  %149 = phi ptr [ %69, %61 ], [ %99, %131 ], [ %99, %140 ]
  %150 = phi ptr [ %68, %61 ], [ %100, %131 ], [ %100, %140 ]
  %151 = phi ptr [ %67, %61 ], [ %101, %131 ], [ %101, %140 ]
  %152 = phi i32 [ %66, %61 ], [ %66, %131 ], [ 1, %140 ]
  %153 = phi ptr [ %65, %61 ], [ %65, %131 ], [ %141, %140 ]
  %154 = icmp eq i64 %71, 0
  br i1 %154, label %155, label %61, !llvm.loop !192

155:                                              ; preds = %145
  store i32 %148, ptr %5, align 4, !tbaa !15
  %156 = icmp eq i32 %152, 0
  br i1 %156, label %167, label %157

157:                                              ; preds = %155
  %158 = tail call zeroext i8 @canonicalize_change_group(ptr noundef %1, ptr noundef %153) #23
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  store ptr %146, ptr %3, align 8, !tbaa !6
  store ptr %147, ptr %4, align 8, !tbaa !6
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
  %176 = load i32, ptr %175, align 4, !tbaa !15
  switch i32 %176, label %770 [
    i32 4, label %177
    i32 0, label %186
    i32 1, label %186
    i32 2, label %451
    i32 3, label %451
    i32 8, label %745
    i32 10, label %758
    i32 11, label %758
  ]

177:                                              ; preds = %167
  %178 = and i32 %9, 65534
  %179 = icmp eq i32 %178, 98
  %180 = icmp eq i32 %170, 0
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %770, label %182

182:                                              ; preds = %177
  %183 = icmp eq ptr %174, null
  %184 = select i1 %183, ptr %172, ptr %174
  %185 = tail call ptr @simplify_unary_operation(i32 noundef %10, i32 noundef %47, ptr noundef %184, i32 noundef %170) #23
  br label %770

186:                                              ; preds = %167, %167
  %187 = zext nneg i32 %47 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !16
  %190 = add i8 %189, -12
  %191 = icmp ult i8 %190, 6
  br i1 %191, label %770, label %192

192:                                              ; preds = %186
  %193 = icmp eq ptr %174, null
  %194 = icmp eq ptr %173, null
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %196, label %442

196:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  %197 = and i8 %189, -2
  %198 = icmp eq i8 %197, 8
  %199 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %187
  %200 = load ptr, ptr @const_true_rtx, align 8
  %201 = select i1 %198, ptr %199, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64)
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = call fastcc i32 @find_comparison_args(i32 noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %204 = load i32, ptr %5, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %409, label %206

206:                                              ; preds = %196
  %207 = zext i32 %204 to i64
  %208 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !16
  %210 = icmp eq i8 %209, 1
  br i1 %210, label %409, label %211

211:                                              ; preds = %206
  %212 = load ptr, ptr %3, align 8
  %213 = tail call fastcc ptr @equiv_constant(ptr noundef %212) #25
  %214 = freeze ptr %213
  %215 = load ptr, ptr %4, align 8
  %216 = tail call fastcc ptr @equiv_constant(ptr noundef %215) #25
  %217 = icmp eq ptr %214, null
  %218 = icmp eq ptr %216, null
  %219 = select i1 %217, i1 true, i1 %218
  br i1 %219, label %220, label %407

220:                                              ; preds = %211
  br i1 %218, label %284, label %221

221:                                              ; preds = %220
  %222 = load i32, ptr %212, align 8
  %223 = and i32 %222, 65535
  %224 = icmp eq i32 %223, 37
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %212) #25
  %227 = icmp ugt i32 %226, 52
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %226) #25
  %230 = getelementptr inbounds %struct.cse_reg_info, ptr %229, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !17
  %232 = add i32 %231, 4736
  br label %235

233:                                              ; preds = %225, %221
  %234 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %212, i32 noundef %204) #25
  br label %235

235:                                              ; preds = %233, %228
  %236 = phi i32 [ %232, %228 ], [ %234, %233 ]
  %237 = and i32 %236, 31
  %238 = tail call fastcc ptr @lookup(ptr noundef nonnull %212, i32 noundef %237, i32 noundef %204) #25
  %239 = icmp eq ptr %238, null
  br i1 %239, label %284, label %240

240:                                              ; preds = %235
  %241 = load i32, ptr %168, align 8
  %242 = and i32 %241, 65535
  %243 = icmp eq i32 %242, 37
  br i1 %243, label %246, label %244

244:                                              ; preds = %240
  %245 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %168, i32 noundef 23) #25
  br label %246

246:                                              ; preds = %240, %244
  %247 = phi i32 [ %245, %244 ], [ 0, %240 ]
  %248 = getelementptr inbounds %struct.table_elt, ptr %238, i64 0, i32 6
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = icmp eq ptr %249, null
  br i1 %250, label %284, label %251

251:                                              ; preds = %246, %273
  %252 = phi ptr [ %277, %273 ], [ %249, %246 ]
  %253 = phi i32 [ %275, %273 ], [ %247, %246 ]
  %254 = phi ptr [ %274, %273 ], [ %168, %246 ]
  %255 = load ptr, ptr %252, align 8, !tbaa !10
  %256 = tail call i32 @exp_equiv_p(ptr noundef %255, ptr noundef %255, i32 noundef 1, i8 noundef zeroext 0) #25, !range !34
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %273, label %258

258:                                              ; preds = %251
  %259 = load ptr, ptr %252, align 8, !tbaa !10
  %260 = tail call ptr @simplify_relational_operation(i32 noundef %203, i32 noundef %47, i32 noundef %204, ptr noundef %259, ptr noundef nonnull %216) #23
  %261 = icmp eq ptr %260, null
  br i1 %261, label %273, label %262

262:                                              ; preds = %258
  %263 = load i32, ptr %260, align 8
  %264 = and i32 %263, 65535
  %265 = icmp eq i32 %264, 37
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = tail call fastcc i32 @notreg_cost(ptr noundef nonnull %260, i32 noundef 23) #25
  br label %268

268:                                              ; preds = %262, %266
  %269 = phi i32 [ %267, %266 ], [ 0, %262 ]
  %270 = icmp slt i32 %269, %253
  %271 = select i1 %270, ptr %260, ptr %254
  %272 = tail call i32 @llvm.smin.i32(i32 %269, i32 %253)
  br label %273

273:                                              ; preds = %258, %251, %268
  %274 = phi ptr [ %271, %268 ], [ %254, %251 ], [ %254, %258 ]
  %275 = phi i32 [ %272, %268 ], [ %253, %251 ], [ %253, %258 ]
  %276 = getelementptr inbounds %struct.table_elt, ptr %252, i64 0, i32 4
  %277 = load ptr, ptr %276, align 8, !tbaa !6
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %251, !llvm.loop !193

279:                                              ; preds = %273
  %280 = icmp eq ptr %274, %168
  br i1 %280, label %284, label %281

281:                                              ; preds = %279
  %282 = tail call ptr @copy_rtx(ptr noundef %274) #23
  %283 = tail call fastcc ptr @fold_rtx(ptr noundef %282, ptr noundef %1) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %774

284:                                              ; preds = %246, %235, %279, %220
  %285 = load i32, ptr %212, align 8
  %286 = and i32 %285, 65535
  %287 = icmp eq i32 %286, 37
  br i1 %287, label %288, label %304

288:                                              ; preds = %284
  %289 = load i32, ptr %215, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 37
  br i1 %291, label %292, label %304

292:                                              ; preds = %288
  %293 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %212) #25
  %294 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %293) #25
  %295 = getelementptr inbounds %struct.cse_reg_info, ptr %294, i64 0, i32 1
  %296 = load i32, ptr %295, align 4, !tbaa !17
  %297 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %215) #25
  %298 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %297) #25
  %299 = getelementptr inbounds %struct.cse_reg_info, ptr %298, i64 0, i32 1
  %300 = load i32, ptr %299, align 4, !tbaa !17
  %301 = icmp eq i32 %296, %300
  br i1 %301, label %407, label %302

302:                                              ; preds = %292
  %303 = load i32, ptr %212, align 8
  br label %304

304:                                              ; preds = %302, %288, %284
  %305 = phi i32 [ %303, %302 ], [ %285, %288 ], [ %285, %284 ]
  %306 = and i32 %305, 65535
  %307 = icmp eq i32 %306, 37
  br i1 %307, label %308, label %316

308:                                              ; preds = %304
  %309 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %212) #25
  %310 = icmp ugt i32 %309, 52
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %309) #25
  %313 = getelementptr inbounds %struct.cse_reg_info, ptr %312, i64 0, i32 1
  %314 = load i32, ptr %313, align 4, !tbaa !17
  %315 = add i32 %314, 4736
  br label %318

316:                                              ; preds = %308, %304
  %317 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %212, i32 noundef %204) #25
  br label %318

318:                                              ; preds = %316, %311
  %319 = phi i32 [ %315, %311 ], [ %317, %316 ]
  %320 = and i32 %319, 31
  %321 = tail call fastcc ptr @lookup(ptr noundef nonnull %212, i32 noundef %320, i32 noundef %204) #25
  %322 = icmp eq ptr %321, null
  br i1 %322, label %348, label %323

323:                                              ; preds = %318
  %324 = load i32, ptr %215, align 8
  %325 = and i32 %324, 65535
  %326 = icmp eq i32 %325, 37
  br i1 %326, label %327, label %335

327:                                              ; preds = %323
  %328 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %215) #25
  %329 = icmp ugt i32 %328, 52
  br i1 %329, label %330, label %335

330:                                              ; preds = %327
  %331 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %328) #25
  %332 = getelementptr inbounds %struct.cse_reg_info, ptr %331, i64 0, i32 1
  %333 = load i32, ptr %332, align 4, !tbaa !17
  %334 = add i32 %333, 4736
  br label %337

335:                                              ; preds = %327, %323
  %336 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %215, i32 noundef %204) #25
  br label %337

337:                                              ; preds = %335, %330
  %338 = phi i32 [ %334, %330 ], [ %336, %335 ]
  %339 = and i32 %338, 31
  %340 = tail call fastcc ptr @lookup(ptr noundef nonnull %215, i32 noundef %339, i32 noundef %204) #25
  %341 = icmp eq ptr %340, null
  br i1 %341, label %348, label %342

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct.table_elt, ptr %321, i64 0, i32 6
  %344 = load ptr, ptr %343, align 8, !tbaa !116
  %345 = getelementptr inbounds %struct.table_elt, ptr %340, i64 0, i32 6
  %346 = load ptr, ptr %345, align 8, !tbaa !116
  %347 = icmp eq ptr %344, %346
  br i1 %347, label %407, label %348

348:                                              ; preds = %342, %337, %318
  %349 = load i32, ptr %212, align 8
  %350 = and i32 %349, 65535
  %351 = icmp eq i32 %350, 37
  br i1 %351, label %352, label %407

352:                                              ; preds = %348
  %353 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %212) #25
  %354 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %353) #25
  %355 = getelementptr inbounds %struct.cse_reg_info, ptr %354, i64 0, i32 1
  %356 = load i32, ptr %355, align 4, !tbaa !17
  %357 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %212) #25
  %358 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %357) #25
  %359 = getelementptr inbounds %struct.cse_reg_info, ptr %358, i64 0, i32 1
  %360 = load i32, ptr %359, align 4, !tbaa !17
  %361 = icmp sgt i32 %360, -1
  br i1 %361, label %362, label %410

362:                                              ; preds = %352
  %363 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %364 = sext i32 %356 to i64
  %365 = getelementptr inbounds %struct.qty_table_elem, ptr %363, i64 %364, i32 6
  %366 = load i32, ptr %365, align 4
  %367 = and i32 %366, 65535
  %368 = tail call i32 @comparison_dominates_p(i32 noundef %367, i32 noundef %203) #23
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %377

370:                                              ; preds = %362
  switch i8 %209, label %371 [
    i8 8, label %410
    i8 9, label %410
    i8 11, label %410
    i8 17, label %410
  ]

371:                                              ; preds = %370
  %372 = load i32, ptr %365, align 4
  %373 = and i32 %372, 65535
  %374 = tail call i32 @reverse_condition(i32 noundef %203) #23
  %375 = tail call i32 @comparison_dominates_p(i32 noundef %373, i32 noundef %374) #23
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %410, label %377

377:                                              ; preds = %371, %362
  %378 = getelementptr inbounds %struct.qty_table_elem, ptr %363, i64 %364, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !194
  %380 = tail call i32 @rtx_equal_p(ptr noundef %379, ptr noundef %215) #23
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %399

382:                                              ; preds = %377
  br i1 %218, label %387, label %383

383:                                              ; preds = %382
  %384 = load ptr, ptr %378, align 8, !tbaa !194
  %385 = tail call i32 @rtx_equal_p(ptr noundef %384, ptr noundef nonnull %216) #23
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %399

387:                                              ; preds = %383, %382
  %388 = load i32, ptr %215, align 8
  %389 = and i32 %388, 65535
  %390 = icmp eq i32 %389, 37
  br i1 %390, label %391, label %410

391:                                              ; preds = %387
  %392 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %215) #25
  %393 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %392) #25
  %394 = getelementptr inbounds %struct.cse_reg_info, ptr %393, i64 0, i32 1
  %395 = load i32, ptr %394, align 4, !tbaa !17
  %396 = getelementptr inbounds %struct.qty_table_elem, ptr %363, i64 %364, i32 3
  %397 = load i32, ptr %396, align 8, !tbaa !195
  %398 = icmp eq i32 %395, %397
  br i1 %398, label %399, label %410

399:                                              ; preds = %391, %383, %377
  %400 = load i32, ptr %365, align 4
  %401 = and i32 %400, 65535
  %402 = tail call i32 @comparison_dominates_p(i32 noundef %401, i32 noundef %203) #23
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %411, label %404

404:                                              ; preds = %399
  %405 = icmp eq ptr %200, null
  %406 = select i1 %198, i1 true, i1 %405
  br i1 %406, label %413, label %411

407:                                              ; preds = %292, %342, %348, %211
  %408 = phi ptr [ %215, %348 ], [ %215, %211 ], [ %212, %342 ], [ %212, %292 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %414

409:                                              ; preds = %206, %196
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %770

410:                                              ; preds = %352, %370, %370, %370, %370, %391, %387, %371
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %414

411:                                              ; preds = %404, %399
  %412 = phi ptr [ %202, %399 ], [ %200, %404 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %774

413:                                              ; preds = %404
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %770

414:                                              ; preds = %410, %407
  %415 = phi ptr [ %215, %410 ], [ %408, %407 ]
  %416 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %417 = icmp ne ptr %216, %416
  %418 = icmp ne ptr %214, null
  %419 = or i1 %418, %417
  br i1 %419, label %440, label %420

420:                                              ; preds = %414
  %421 = tail call fastcc ptr @lookup_as_function(ptr noundef %212, i32 noundef 62) #25
  %422 = icmp eq ptr %421, null
  br i1 %422, label %440, label %423

423:                                              ; preds = %420
  %424 = getelementptr inbounds %struct.rtx_def, ptr %421, i64 0, i32 1
  %425 = getelementptr inbounds %struct.rtx_def, ptr %421, i64 0, i32 1, i32 0, i32 0, i64 1
  %426 = load ptr, ptr %425, align 8, !tbaa !16
  %427 = tail call fastcc ptr @equiv_constant(ptr noundef %426) #25
  %428 = icmp eq ptr %427, null
  br i1 %428, label %440, label %429

429:                                              ; preds = %423
  %430 = load i32, ptr %427, align 8
  %431 = and i32 %430, 65535
  %432 = icmp eq i32 %431, 30
  br i1 %432, label %433, label %440

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.rtx_def, ptr %427, i64 0, i32 1
  %435 = load i64, ptr %434, align 8, !tbaa !16
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %433
  %438 = load ptr, ptr %424, align 8, !tbaa !16
  %439 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 62, i32 noundef %204, ptr noundef %438, ptr noundef nonnull %427) #23
  br label %442

440:                                              ; preds = %420, %423, %429, %433, %414
  %441 = select i1 %418, ptr %214, ptr %212
  br label %442

442:                                              ; preds = %440, %192, %437
  %443 = phi i32 [ %204, %437 ], [ %170, %192 ], [ %204, %440 ]
  %444 = phi ptr [ %415, %437 ], [ %171, %192 ], [ %415, %440 ]
  %445 = phi ptr [ %216, %437 ], [ %173, %192 ], [ %216, %440 ]
  %446 = phi i32 [ %203, %437 ], [ %10, %192 ], [ %203, %440 ]
  %447 = phi ptr [ %439, %437 ], [ %174, %192 ], [ %441, %440 ]
  %448 = icmp eq ptr %445, null
  %449 = select i1 %448, ptr %444, ptr %445
  %450 = tail call ptr @simplify_relational_operation(i32 noundef %446, i32 noundef %47, i32 noundef %443, ptr noundef %447, ptr noundef %449) #23
  br label %770

451:                                              ; preds = %167, %167
  switch i16 %11, label %739 [
    i16 49, label %452
    i16 50, label %619
    i16 70, label %643
    i16 71, label %643
    i16 72, label %643
    i16 73, label %643
    i16 62, label %643
    i16 61, label %643
    i16 63, label %643
    i16 52, label %643
    i16 65, label %643
    i16 68, label %643
    i16 67, label %643
  ]

452:                                              ; preds = %451
  %453 = icmp eq ptr %173, null
  br i1 %453, label %510, label %454

454:                                              ; preds = %452
  %455 = load i32, ptr %173, align 8
  %456 = and i32 %455, 65535
  %457 = icmp eq i32 %456, 44
  br i1 %457, label %458, label %510

458:                                              ; preds = %454
  %459 = load i32, ptr %172, align 8
  %460 = and i32 %459, 65535
  %461 = icmp eq i32 %460, 50
  br i1 %461, label %465, label %462

462:                                              ; preds = %458
  %463 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %172, i32 noundef 50) #25
  %464 = icmp eq ptr %463, null
  br i1 %464, label %481, label %465

465:                                              ; preds = %458, %462
  %466 = phi ptr [ %463, %462 ], [ %172, %458 ]
  %467 = getelementptr inbounds %struct.rtx_def, ptr %466, i64 0, i32 1
  %468 = getelementptr inbounds %struct.rtx_def, ptr %466, i64 0, i32 1, i32 0, i32 0, i64 1
  %469 = load ptr, ptr %468, align 8, !tbaa !16
  %470 = load i32, ptr %469, align 8
  %471 = and i32 %470, 65535
  %472 = icmp eq i32 %471, 44
  br i1 %472, label %473, label %481

473:                                              ; preds = %465
  %474 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !16
  %476 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !16
  %478 = icmp eq ptr %475, %477
  br i1 %478, label %479, label %481

479:                                              ; preds = %473
  %480 = load ptr, ptr %467, align 8, !tbaa !16
  br label %774

481:                                              ; preds = %473, %465, %462
  %482 = load i32, ptr %172, align 8
  %483 = and i32 %482, 65535
  %484 = icmp eq i32 %483, 35
  br i1 %484, label %488, label %485

485:                                              ; preds = %481
  %486 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %172, i32 noundef 35) #25
  %487 = icmp eq ptr %486, null
  br i1 %487, label %510, label %488

488:                                              ; preds = %481, %485
  %489 = phi ptr [ %486, %485 ], [ %172, %481 ]
  %490 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !16
  %492 = load i32, ptr %491, align 8
  %493 = and i32 %492, 65535
  %494 = icmp eq i32 %493, 50
  br i1 %494, label %495, label %510

495:                                              ; preds = %488
  %496 = getelementptr inbounds %struct.rtx_def, ptr %491, i64 0, i32 1
  %497 = getelementptr inbounds %struct.rtx_def, ptr %491, i64 0, i32 1, i32 0, i32 0, i64 1
  %498 = load ptr, ptr %497, align 8, !tbaa !16
  %499 = load i32, ptr %498, align 8
  %500 = and i32 %499, 65535
  %501 = icmp eq i32 %500, 44
  br i1 %501, label %502, label %510

502:                                              ; preds = %495
  %503 = getelementptr inbounds %struct.rtx_def, ptr %498, i64 0, i32 1
  %504 = load ptr, ptr %503, align 8, !tbaa !16
  %505 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %506 = load ptr, ptr %505, align 8, !tbaa !16
  %507 = icmp eq ptr %504, %506
  br i1 %507, label %508, label %510

508:                                              ; preds = %502
  %509 = load ptr, ptr %496, align 8, !tbaa !16
  br label %774

510:                                              ; preds = %485, %488, %495, %502, %454, %452
  %511 = icmp eq ptr %174, null
  br i1 %511, label %568, label %512

512:                                              ; preds = %510
  %513 = load i32, ptr %174, align 8
  %514 = and i32 %513, 65535
  %515 = icmp eq i32 %514, 44
  br i1 %515, label %516, label %568

516:                                              ; preds = %512
  %517 = load i32, ptr %171, align 8
  %518 = and i32 %517, 65535
  %519 = icmp eq i32 %518, 50
  br i1 %519, label %523, label %520

520:                                              ; preds = %516
  %521 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %171, i32 noundef 50) #25
  %522 = icmp eq ptr %521, null
  br i1 %522, label %539, label %523

523:                                              ; preds = %516, %520
  %524 = phi ptr [ %521, %520 ], [ %171, %516 ]
  %525 = getelementptr inbounds %struct.rtx_def, ptr %524, i64 0, i32 1
  %526 = getelementptr inbounds %struct.rtx_def, ptr %524, i64 0, i32 1, i32 0, i32 0, i64 1
  %527 = load ptr, ptr %526, align 8, !tbaa !16
  %528 = load i32, ptr %527, align 8
  %529 = and i32 %528, 65535
  %530 = icmp eq i32 %529, 44
  br i1 %530, label %531, label %539

531:                                              ; preds = %523
  %532 = getelementptr inbounds %struct.rtx_def, ptr %527, i64 0, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !16
  %534 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !16
  %536 = icmp eq ptr %533, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %531
  %538 = load ptr, ptr %525, align 8, !tbaa !16
  br label %774

539:                                              ; preds = %531, %523, %520
  %540 = load i32, ptr %171, align 8
  %541 = and i32 %540, 65535
  %542 = icmp eq i32 %541, 35
  br i1 %542, label %546, label %543

543:                                              ; preds = %539
  %544 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %171, i32 noundef 35) #25
  %545 = icmp eq ptr %544, null
  br i1 %545, label %568, label %546

546:                                              ; preds = %539, %543
  %547 = phi ptr [ %544, %543 ], [ %171, %539 ]
  %548 = getelementptr inbounds %struct.rtx_def, ptr %547, i64 0, i32 1
  %549 = load ptr, ptr %548, align 8, !tbaa !16
  %550 = load i32, ptr %549, align 8
  %551 = and i32 %550, 65535
  %552 = icmp eq i32 %551, 50
  br i1 %552, label %553, label %568

553:                                              ; preds = %546
  %554 = getelementptr inbounds %struct.rtx_def, ptr %549, i64 0, i32 1
  %555 = getelementptr inbounds %struct.rtx_def, ptr %549, i64 0, i32 1, i32 0, i32 0, i64 1
  %556 = load ptr, ptr %555, align 8, !tbaa !16
  %557 = load i32, ptr %556, align 8
  %558 = and i32 %557, 65535
  %559 = icmp eq i32 %558, 44
  br i1 %559, label %560, label %568

560:                                              ; preds = %553
  %561 = getelementptr inbounds %struct.rtx_def, ptr %556, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !16
  %563 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1
  %564 = load ptr, ptr %563, align 8, !tbaa !16
  %565 = icmp eq ptr %562, %564
  br i1 %565, label %566, label %568

566:                                              ; preds = %560
  %567 = load ptr, ptr %554, align 8, !tbaa !16
  br label %774

568:                                              ; preds = %543, %546, %553, %560, %512, %510
  br i1 %453, label %739, label %569

569:                                              ; preds = %568
  %570 = load i32, ptr %173, align 8
  %571 = and i32 %570, 65535
  %572 = icmp eq i32 %571, 30
  br i1 %572, label %573, label %643

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %575 = load i64, ptr %574, align 8, !tbaa !16
  %576 = icmp ult i64 %575, -9223372036854775807
  br i1 %576, label %643, label %577

577:                                              ; preds = %573
  %578 = load i32, ptr %171, align 8
  %579 = and i32 %578, 65535
  %580 = icmp eq i32 %579, 37
  br i1 %580, label %581, label %643

581:                                              ; preds = %577
  %582 = sub nsw i64 0, %575
  %583 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %582) #23
  %584 = load i32, ptr %583, align 8
  %585 = and i32 %584, 65535
  %586 = icmp eq i32 %585, 37
  br i1 %586, label %587, label %595

587:                                              ; preds = %581
  %588 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %583) #25
  %589 = icmp ugt i32 %588, 52
  br i1 %589, label %590, label %595

590:                                              ; preds = %587
  %591 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %588) #25
  %592 = getelementptr inbounds %struct.cse_reg_info, ptr %591, i64 0, i32 1
  %593 = load i32, ptr %592, align 4, !tbaa !17
  %594 = add i32 %593, 4736
  br label %597

595:                                              ; preds = %587, %581
  %596 = tail call fastcc i32 @safe_hash(ptr noundef nonnull %583, i32 noundef %47) #25
  br label %597

597:                                              ; preds = %595, %590
  %598 = phi i32 [ %594, %590 ], [ %596, %595 ]
  %599 = and i32 %598, 31
  %600 = tail call fastcc ptr @lookup(ptr noundef nonnull %583, i32 noundef %599, i32 noundef %47) #25
  %601 = icmp eq ptr %600, null
  br i1 %601, label %643, label %602

602:                                              ; preds = %597
  %603 = getelementptr inbounds %struct.table_elt, ptr %600, i64 0, i32 6
  %604 = load ptr, ptr %603, align 8, !tbaa !6
  %605 = icmp eq ptr %604, null
  br i1 %605, label %643, label %610

606:                                              ; preds = %610
  %607 = getelementptr inbounds %struct.table_elt, ptr %611, i64 0, i32 4
  %608 = load ptr, ptr %607, align 8, !tbaa !6
  %609 = icmp eq ptr %608, null
  br i1 %609, label %643, label %610, !llvm.loop !196

610:                                              ; preds = %602, %606
  %611 = phi ptr [ %608, %606 ], [ %604, %602 ]
  %612 = load ptr, ptr %611, align 8, !tbaa !10
  %613 = load i32, ptr %612, align 8
  %614 = and i32 %613, 65535
  %615 = icmp eq i32 %614, 37
  br i1 %615, label %616, label %606

616:                                              ; preds = %610
  %617 = tail call fastcc ptr @canon_reg(ptr noundef nonnull %612, ptr noundef null) #25
  %618 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %47, ptr noundef %172, ptr noundef %617) #23
  br label %774

619:                                              ; preds = %451
  %620 = icmp eq ptr %173, null
  br i1 %620, label %739, label %621

621:                                              ; preds = %619
  %622 = load i32, ptr %173, align 8
  %623 = and i32 %622, 65535
  %624 = icmp eq i32 %623, 30
  br i1 %624, label %625, label %643

625:                                              ; preds = %621
  %626 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %627 = load ptr, ptr %626, align 8, !tbaa !16
  %628 = tail call fastcc ptr @lookup_as_function(ptr noundef %627, i32 noundef 49) #25
  %629 = icmp eq ptr %628, null
  br i1 %629, label %643, label %630

630:                                              ; preds = %625
  %631 = getelementptr inbounds %struct.rtx_def, ptr %628, i64 0, i32 1, i32 0, i32 0, i64 1
  %632 = load ptr, ptr %631, align 8, !tbaa !16
  %633 = load i32, ptr %632, align 8
  %634 = and i32 %633, 65535
  %635 = icmp eq i32 %634, 30
  br i1 %635, label %636, label %643

636:                                              ; preds = %630
  %637 = tail call ptr @copy_rtx(ptr noundef nonnull %628) #23
  %638 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %639 = load i64, ptr %638, align 8, !tbaa !16
  %640 = sub nsw i64 0, %639
  %641 = tail call ptr @plus_constant(ptr noundef %637, i64 noundef %640) #23
  %642 = tail call fastcc ptr @fold_rtx(ptr noundef %641, ptr noundef null) #25
  br label %774

643:                                              ; preds = %606, %602, %625, %630, %597, %577, %573, %569, %621, %451, %451, %451, %451, %451, %451, %451, %451, %451, %451, %451
  %644 = load i32, ptr %172, align 8
  %645 = and i32 %644, 65535
  %646 = icmp eq i32 %645, 37
  %647 = icmp ne ptr %173, null
  %648 = select i1 %646, i1 %647, i1 false
  br i1 %648, label %649, label %739

649:                                              ; preds = %643
  %650 = load i32, ptr %173, align 8
  %651 = and i32 %650, 65535
  %652 = icmp eq i32 %651, 30
  br i1 %652, label %653, label %739

653:                                              ; preds = %649
  %654 = icmp eq i32 %10, 67
  switch i16 %11, label %664 [
    i16 67, label %655
    i16 65, label %655
    i16 68, label %655
  ]

655:                                              ; preds = %653, %653, %653
  %656 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %657 = load i64, ptr %656, align 8, !tbaa !16
  %658 = zext nneg i32 %47 to i64
  %659 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %658
  %660 = load i8, ptr %659, align 1, !tbaa !16
  %661 = zext i8 %660 to i64
  %662 = shl nuw nsw i64 %661, 3
  %663 = icmp ult i64 %657, %662
  br i1 %663, label %664, label %739

664:                                              ; preds = %653, %655
  %665 = phi i1 [ true, %655 ], [ false, %653 ]
  %666 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %172, i32 noundef %10) #25
  %667 = icmp eq ptr %666, null
  br i1 %667, label %739, label %668

668:                                              ; preds = %664
  %669 = getelementptr inbounds %struct.rtx_def, ptr %666, i64 0, i32 1
  %670 = load ptr, ptr %669, align 8, !tbaa !16
  %671 = icmp eq ptr %670, %172
  br i1 %671, label %739, label %672

672:                                              ; preds = %668
  %673 = getelementptr inbounds %struct.rtx_def, ptr %666, i64 0, i32 1, i32 0, i32 0, i64 1
  %674 = load ptr, ptr %673, align 8, !tbaa !16
  %675 = tail call fastcc ptr @fold_rtx(ptr noundef %674, ptr noundef null) #25
  %676 = tail call fastcc ptr @equiv_constant(ptr noundef %675) #25
  %677 = icmp eq ptr %676, null
  br i1 %677, label %739, label %678

678:                                              ; preds = %672
  %679 = load i32, ptr %676, align 8
  %680 = and i32 %679, 65535
  %681 = icmp eq i32 %680, 30
  br i1 %681, label %682, label %739

682:                                              ; preds = %678
  br i1 %665, label %683, label %697

683:                                              ; preds = %682
  %684 = zext nneg i32 %47 to i64
  %685 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %684
  %686 = load i8, ptr %685, align 1, !tbaa !16
  %687 = add i8 %686, -12
  %688 = icmp ult i8 %687, 6
  br i1 %688, label %739, label %689

689:                                              ; preds = %683
  %690 = getelementptr inbounds %struct.rtx_def, ptr %676, i64 0, i32 1
  %691 = load i64, ptr %690, align 8, !tbaa !16
  %692 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %684
  %693 = load i8, ptr %692, align 1, !tbaa !16
  %694 = zext i8 %693 to i64
  %695 = shl nuw nsw i64 %694, 3
  %696 = icmp ult i64 %691, %695
  br i1 %696, label %697, label %739

697:                                              ; preds = %682, %689
  %698 = icmp eq i32 %10, 50
  %699 = or i1 %698, %665
  %700 = select i1 %699, i32 49, i32 %10
  %701 = tail call ptr @simplify_binary_operation(i32 noundef %700, i32 noundef %47, ptr noundef nonnull %173, ptr noundef nonnull %676) #23
  %702 = icmp eq ptr %701, null
  br i1 %702, label %739, label %703

703:                                              ; preds = %697
  br i1 %665, label %704, label %728

704:                                              ; preds = %703
  %705 = load i32, ptr %701, align 8
  %706 = and i32 %705, 65535
  %707 = icmp eq i32 %706, 30
  br i1 %707, label %708, label %728

708:                                              ; preds = %704
  %709 = getelementptr inbounds %struct.rtx_def, ptr %701, i64 0, i32 1
  %710 = load i64, ptr %709, align 8, !tbaa !16
  %711 = zext nneg i32 %47 to i64
  %712 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %711
  %713 = load i8, ptr %712, align 1, !tbaa !16
  %714 = zext i8 %713 to i64
  %715 = shl nuw nsw i64 %714, 3
  %716 = icmp slt i64 %710, %715
  br i1 %716, label %728, label %717

717:                                              ; preds = %708
  br i1 %654, label %718, label %721

718:                                              ; preds = %717
  %719 = add nsw i64 %715, -1
  %720 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %719) #23
  br label %728

721:                                              ; preds = %717
  %722 = load ptr, ptr %669, align 8, !tbaa !16
  %723 = tail call i32 @side_effects_p(ptr noundef %722) #23
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %739

725:                                              ; preds = %721
  %726 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %711
  %727 = load ptr, ptr %726, align 8, !tbaa !6
  br label %774

728:                                              ; preds = %718, %708, %704, %703
  %729 = phi ptr [ %720, %718 ], [ %701, %708 ], [ %701, %704 ], [ %701, %703 ]
  %730 = load ptr, ptr %669, align 8, !tbaa !16
  %731 = tail call ptr @copy_rtx(ptr noundef %730) #23
  %732 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %172, ptr noundef %731) #23
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %734, label %736

734:                                              ; preds = %728
  %735 = tail call fastcc ptr @fold_rtx(ptr noundef %731, ptr noundef %1) #25
  br label %736

736:                                              ; preds = %734, %728
  %737 = phi ptr [ %731, %728 ], [ %735, %734 ]
  %738 = tail call ptr @simplify_gen_binary(i32 noundef %10, i32 noundef %47, ptr noundef %737, ptr noundef %729) #23
  br label %774

739:                                              ; preds = %721, %697, %689, %683, %672, %678, %668, %664, %655, %619, %568, %451, %643, %649
  %740 = icmp eq ptr %174, null
  %741 = select i1 %740, ptr %172, ptr %174
  %742 = icmp eq ptr %173, null
  %743 = select i1 %742, ptr %171, ptr %173
  %744 = tail call ptr @simplify_binary_operation(i32 noundef %10, i32 noundef %47, ptr noundef %741, ptr noundef %743) #23
  br label %770

745:                                              ; preds = %167
  %746 = icmp eq i32 %10, 122
  %747 = icmp ne ptr %174, null
  %748 = select i1 %746, i1 %747, i1 false
  br i1 %748, label %749, label %770

749:                                              ; preds = %745
  %750 = load i32, ptr %174, align 8
  %751 = and i32 %750, 65535
  %752 = icmp eq i32 %751, 121
  br i1 %752, label %753, label %770

753:                                              ; preds = %749
  %754 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1
  %755 = load ptr, ptr %754, align 8, !tbaa !16
  %756 = tail call i32 @rtx_equal_p(ptr noundef %755, ptr noundef %173) #23
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %770, label %774

758:                                              ; preds = %167, %167
  %759 = icmp eq ptr %174, null
  %760 = select i1 %759, ptr %172, ptr %174
  %761 = icmp eq ptr %173, null
  %762 = select i1 %761, ptr %171, ptr %173
  %763 = icmp eq ptr %169, null
  br i1 %763, label %764, label %767

764:                                              ; preds = %758
  %765 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1, i32 0, i32 0, i64 2
  %766 = load ptr, ptr %765, align 8, !tbaa !16
  br label %767

767:                                              ; preds = %758, %764
  %768 = phi ptr [ %766, %764 ], [ %169, %758 ]
  %769 = tail call ptr @simplify_ternary_operation(i32 noundef %10, i32 noundef %47, i32 noundef %170, ptr noundef %760, ptr noundef %762, ptr noundef %768) #23
  br label %770

770:                                              ; preds = %413, %409, %186, %167, %745, %749, %753, %177, %767, %739, %442, %182
  %771 = phi ptr [ null, %167 ], [ %769, %767 ], [ null, %753 ], [ null, %749 ], [ null, %745 ], [ %744, %739 ], [ null, %413 ], [ %450, %442 ], [ null, %177 ], [ %185, %182 ], [ null, %186 ], [ null, %409 ]
  %772 = icmp eq ptr %771, null
  %773 = select i1 %772, ptr %168, ptr %771
  br label %774

774:                                              ; preds = %25, %18, %725, %736, %636, %616, %537, %566, %479, %508, %411, %281, %753, %34, %16, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %12, %2, %770
  %775 = phi ptr [ %773, %770 ], [ %642, %636 ], [ %618, %616 ], [ null, %2 ], [ %15, %12 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %8 ], [ %0, %16 ], [ %0, %34 ], [ %173, %753 ], [ %283, %281 ], [ %412, %411 ], [ %480, %479 ], [ %509, %508 ], [ %538, %537 ], [ %567, %566 ], [ %738, %736 ], [ %727, %725 ], [ %0, %18 ], [ %0, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret ptr %775
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %3, %26
  %9 = phi ptr [ %28, %26 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.table_elt, ptr %9, i64 0, i32 10
  %11 = load i8, ptr %10, align 8
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !10
  %16 = icmp eq ptr %15, %0
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  %22 = icmp ne i32 %18, 37
  %23 = zext i1 %22 to i32
  %24 = tail call i32 @exp_equiv_p(ptr noundef nonnull %0, ptr noundef %15, i32 noundef %23, i8 noundef zeroext 0) #25, !range !34
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %8, %21
  %27 = getelementptr inbounds %struct.table_elt, ptr %9, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %8, !llvm.loop !197

30:                                               ; preds = %21, %26, %14, %3
  %31 = phi ptr [ null, %3 ], [ null, %26 ], [ %9, %21 ], [ %9, %14 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_equiv_classes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp eq ptr %4, %6
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %91, label %10

10:                                               ; preds = %2, %89
  %11 = phi ptr [ %17, %89 ], [ %6, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.table_elt, ptr %11, i64 0, i32 10
  %14 = load i8, ptr %13, align 8
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.table_elt, ptr %11, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !141
  %18 = load i32, ptr %12, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  %22 = tail call i32 @exp_equiv_p(ptr noundef nonnull %12, ptr noundef nonnull %12, i32 noundef 1, i8 noundef zeroext 0) #25, !range !34
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %89, label %24

24:                                               ; preds = %21, %10
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !15
  %25 = load i32, ptr %12, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %30 = icmp ugt i32 %29, 52
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %29) #25
  %33 = getelementptr inbounds %struct.cse_reg_info, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !17
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
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %46 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %45) #25
  %47 = getelementptr inbounds %struct.cse_reg_info, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !17
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
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %59 = icmp ugt i32 %58, 52
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call fastcc void @remove_pseudo_from_table(ptr noundef nonnull %12, i32 noundef %40) #25
  br label %62

61:                                               ; preds = %57, %52
  tail call fastcc void @remove_from_table(ptr noundef nonnull %11, i32 noundef %40) #25
  br label %62

62:                                               ; preds = %61, %60
  %63 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %12, ptr noundef %4, i32 noundef 0) #25, !range !34
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %64, i1 true, i1 %54
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  tail call fastcc void @rehash_using_reg(ptr noundef nonnull %12) #25
  %67 = load i32, ptr %12, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %72 = icmp ugt i32 %71, 52
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %71) #25
  %75 = getelementptr inbounds %struct.cse_reg_info, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !17
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
  %86 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !15
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds %struct.table_elt, ptr %85, i64 0, i32 11
  store i8 %87, ptr %88, align 1, !tbaa !94
  br label %89

89:                                               ; preds = %83, %21
  %90 = icmp eq ptr %17, null
  br i1 %90, label %91, label %10, !llvm.loop !198

91:                                               ; preds = %89, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @use_related_value(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %73, label %39

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 35
  br i1 %11, label %12, label %73

12:                                               ; preds = %8
  %13 = tail call ptr @get_related_value(ptr noundef nonnull %0) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #25
  %21 = icmp ugt i32 %20, 52
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %24 = getelementptr inbounds %struct.cse_reg_info, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !17
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
  br i1 %38, label %73, label %39

39:                                               ; preds = %4, %31
  %40 = phi ptr [ %37, %31 ], [ %1, %4 ]
  br label %41

41:                                               ; preds = %39, %60
  %42 = phi ptr [ %62, %60 ], [ %40, %39 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !10
  %44 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %43) #23
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.table_elt, ptr %42, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %46, %56
  %51 = phi ptr [ %58, %56 ], [ %48, %46 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !10
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %66, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.table_elt, ptr %51, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %50, !llvm.loop !199

60:                                               ; preds = %56, %46, %41
  %61 = getelementptr inbounds %struct.table_elt, ptr %42, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !122
  %63 = icmp eq ptr %62, %40
  %64 = icmp eq ptr %62, null
  %65 = or i1 %63, %64
  br i1 %65, label %73, label %41

66:                                               ; preds = %50
  %67 = tail call i64 @get_integer_term(ptr noundef %0) #23
  %68 = load ptr, ptr %42, align 8, !tbaa !10
  %69 = tail call i64 @get_integer_term(ptr noundef %68) #23
  %70 = sub nsw i64 %67, %69
  %71 = load ptr, ptr %51, align 8, !tbaa !10
  %72 = tail call ptr @plus_constant(ptr noundef %71, i64 noundef %70) #23
  br label %73

73:                                               ; preds = %60, %4, %12, %8, %31, %66
  %74 = phi ptr [ %72, %66 ], [ null, %31 ], [ null, %8 ], [ null, %12 ], [ null, %4 ], [ null, %60 ]
  ret ptr %74
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @try_const_anchors(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
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
  %9 = call fastcc zeroext i8 @compute_const_anchors(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #25, !range !56
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %2
  %12 = load i64, ptr %3, align 8, !tbaa !54
  %13 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %12) #23
  %14 = load i64, ptr %5, align 8, !tbaa !54
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
  %25 = load i32, ptr %24, align 4, !tbaa !17
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
  %42 = load i32, ptr %41, align 4, !tbaa !17
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
  %52 = load i64, ptr %4, align 8, !tbaa !54
  %53 = call fastcc ptr @find_reg_offset_for_const(ptr noundef nonnull %32, i64 noundef %52, ptr noundef nonnull %7) #25
  %54 = icmp eq ptr %49, null
  br i1 %54, label %71, label %60

55:                                               ; preds = %46
  %56 = icmp eq ptr %49, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %55
  %58 = load i64, ptr %6, align 8, !tbaa !54
  %59 = call fastcc ptr @find_reg_offset_for_const(ptr noundef nonnull %49, i64 noundef %58, ptr noundef nonnull %8) #25
  br label %71

60:                                               ; preds = %51
  %61 = load i64, ptr %6, align 8, !tbaa !54
  %62 = call fastcc ptr @find_reg_offset_for_const(ptr noundef nonnull %49, i64 noundef %61, ptr noundef nonnull %8) #25
  %63 = icmp eq ptr %53, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = icmp eq ptr %62, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %8, align 4, !tbaa !15
  %68 = load i32, ptr %7, align 4, !tbaa !15
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
define internal fastcc i32 @notreg_cost(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = lshr i32 %3, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !16
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = lshr i32 %9, 16
  %21 = and i32 %20, 255
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !16
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %28 = load i8, ptr %27, align 1, !tbaa !16
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %22
  %30 = load i8, ptr %29, align 1, !tbaa !16
  %31 = icmp ult i8 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %0) #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %26, %19, %12, %6, %2
  %36 = load i8, ptr @optimize_this_for_speed_p, align 1, !tbaa !16
  %37 = tail call i32 @rtx_cost(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %36) #23
  %38 = shl nsw i32 %37, 1
  br label %39

39:                                               ; preds = %32, %35
  %40 = phi i32 [ %38, %35 ], [ 0, %32 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @approx_reg_cost(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !tbaa !15
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @approx_reg_cost_1, ptr noundef nonnull %3) #23
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %3, align 4
  %7 = select i1 %5, i32 %6, i32 2147483647
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @preferable(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 {
  %5 = icmp eq i32 %0, %2
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 2147483647
  br i1 %7, label %21, label %8

8:                                                ; preds = %6
  %9 = icmp eq i32 %2, 2147483647
  br i1 %9, label %21, label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq i32 %1, %3
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %1, 2147483647
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %3, 2147483647
  br i1 %15, label %21, label %16

16:                                               ; preds = %14, %10
  br i1 %5, label %19, label %17

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
define internal fastcc i32 @insert_regs(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %110 [
    i16 37, label %6
    i16 39, label %92
  ]

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %9 = getelementptr inbounds %struct.cse_reg_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !17
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %26

12:                                               ; preds = %6
  %13 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %14 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %15 = getelementptr inbounds %struct.cse_reg_info, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %17, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %0, align 8
  %21 = xor i32 %20, %19
  %22 = and i32 %21, 16711680
  %23 = icmp ne i32 %22, 0
  %24 = icmp eq i32 %2, 0
  %25 = or i1 %24, %23
  br i1 %25, label %104, label %26

26:                                               ; preds = %6, %12
  %27 = icmp eq ptr %1, null
  br i1 %27, label %67, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32

32:                                               ; preds = %28, %63
  %33 = phi ptr [ %65, %63 ], [ %30, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load i32, ptr %0, align 8
  %40 = xor i32 %39, %35
  %41 = and i32 %40, 16711680
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #25
  %45 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %44) #25
  %46 = getelementptr inbounds %struct.cse_reg_info, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !17
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1167, ptr noundef nonnull @.str.4) #23
  br label %50

50:                                               ; preds = %43, %49
  %51 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %52 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %44) #25
  %53 = getelementptr inbounds %struct.cse_reg_info, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !17
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.qty_table_elem, ptr %51, i64 %55, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %0, align 8
  %59 = xor i32 %58, %57
  %60 = and i32 %59, 16711680
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  tail call fastcc void @make_regs_eqv(i32 noundef %7, i32 noundef %44) #25
  br label %104

63:                                               ; preds = %50, %32, %38
  %64 = getelementptr inbounds %struct.table_elt, ptr %33, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %32, !llvm.loop !200

67:                                               ; preds = %63, %28, %26
  %68 = icmp eq i32 %2, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %67
  %70 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %71 = getelementptr inbounds %struct.cse_reg_info, ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !29
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %76 = getelementptr inbounds %struct.cse_reg_info, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !28
  %78 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %79 = getelementptr inbounds %struct.cse_reg_info, ptr %78, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !29
  %81 = add nsw i32 %80, 1
  %82 = icmp eq i32 %77, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %85 = getelementptr inbounds %struct.cse_reg_info, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !28
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %85, align 4, !tbaa !28
  br label %88

88:                                               ; preds = %83, %74, %69, %67
  %89 = load i32, ptr %0, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  tail call fastcc void @make_new_qty(i32 noundef %7, i32 noundef %91) #25
  br label %104

92:                                               ; preds = %3
  %93 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !16
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %94) #25
  %100 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %99) #25
  %101 = getelementptr inbounds %struct.cse_reg_info, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !17
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %110, label %106

104:                                              ; preds = %62, %88, %12, %110, %106
  %105 = phi i32 [ 1, %106 ], [ %111, %110 ], [ 1, %88 ], [ 0, %12 ], [ 1, %62 ]
  ret i32 %105

106:                                              ; preds = %98
  %107 = load ptr, ptr %93, align 8, !tbaa !16
  %108 = tail call fastcc i32 @insert_regs(ptr noundef %107, ptr noundef null, i32 noundef 0) #25, !range !34
  %109 = tail call fastcc i32 @mention_regs(ptr noundef nonnull %0) #25, !range !34
  br label %104

110:                                              ; preds = %3, %98, %92
  %111 = tail call fastcc i32 @mention_regs(ptr noundef nonnull %0) #25, !range !34
  br label %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rehash_using_reg(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %2, %1 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %12 = and i32 %10, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %93

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #25
  %16 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %15) #25
  %17 = getelementptr inbounds %struct.cse_reg_info, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !29
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %93, label %20

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #25
  %22 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %21) #25
  %23 = getelementptr inbounds %struct.cse_reg_info, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !29
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #25
  %26 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %25) #25
  %27 = getelementptr inbounds %struct.cse_reg_info, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !28
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %20, %90
  %31 = phi i64 [ %91, %90 ], [ 0, %20 ]
  %32 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %90, label %35

35:                                               ; preds = %30, %88
  %36 = phi ptr [ %38, %88 ], [ %33, %30 ]
  %37 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !82
  %39 = load ptr, ptr %36, align 8, !tbaa !10
  %40 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %11, ptr noundef %39) #23
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %88, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %36, align 8, !tbaa !10
  %44 = tail call i32 @exp_equiv_p(ptr noundef %43, ptr noundef %43, i32 noundef 1, i8 noundef zeroext 0) #25, !range !34
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %88, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %36, align 8, !tbaa !10
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #25
  %53 = icmp ugt i32 %52, 52
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %52) #25
  %56 = getelementptr inbounds %struct.cse_reg_info, ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !17
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
  br i1 %68, label %88, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %37, align 8, !tbaa !82
  %71 = icmp eq ptr %70, null
  %72 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !180
  br i1 %71, label %76, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.table_elt, ptr %70, i64 0, i32 3
  store ptr %73, ptr %75, align 8, !tbaa !180
  br label %76

76:                                               ; preds = %69, %74
  %77 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 3
  %78 = icmp eq ptr %73, null
  %79 = getelementptr inbounds %struct.table_elt, ptr %73, i64 0, i32 2
  %80 = select i1 %78, ptr %32, ptr %79
  store ptr %70, ptr %80, align 8, !tbaa !6
  %81 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %67
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  store ptr %82, ptr %37, align 8, !tbaa !82
  store ptr null, ptr %77, align 8, !tbaa !180
  %83 = load ptr, ptr %81, align 8, !tbaa !6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.table_elt, ptr %83, i64 0, i32 3
  store ptr %36, ptr %86, align 8, !tbaa !180
  br label %87

87:                                               ; preds = %85, %76
  store ptr %36, ptr %81, align 8, !tbaa !6
  br label %88

88:                                               ; preds = %35, %42, %64, %87
  %89 = icmp eq ptr %38, null
  br i1 %89, label %90, label %35, !llvm.loop !201

90:                                               ; preds = %88, %30
  %91 = add nuw nsw i64 %31, 1
  %92 = icmp eq i64 %91, 32
  br i1 %92, label %93, label %30, !llvm.loop !202

93:                                               ; preds = %90, %9, %14, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @insert(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 37
  br i1 %7, label %10, label %8

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
define internal fastcc void @invalidate_from_clobbers(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %46 [
    i16 25, label %4
    i16 15, label %17
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !16
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
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = lshr i32 %9, 16
  %16 = and i32 %15, 255
  tail call fastcc void @invalidate(ptr noundef %14, i32 noundef %16) #25
  br label %46

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = load i32, ptr %19, align 8, !tbaa !19
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = zext nneg i32 %20 to i64
  br label %24

24:                                               ; preds = %22, %44
  %25 = phi i64 [ %23, %22 ], [ %26, %44 ]
  %26 = add nsw i64 %25, -1
  %27 = load ptr, ptr %18, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 25
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !16
  %36 = load i32, ptr %35, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %44 [
    i16 37, label %38
    i16 39, label %38
    i16 43, label %38
    i16 40, label %39
    i16 120, label %39
  ]

38:                                               ; preds = %33, %33, %33
  tail call fastcc void @invalidate(ptr noundef nonnull %35, i32 noundef 0) #25
  br label %44

39:                                               ; preds = %33, %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !16
  %42 = lshr i32 %36, 16
  %43 = and i32 %42, 255
  tail call fastcc void @invalidate(ptr noundef %41, i32 noundef %43) #25
  br label %44

44:                                               ; preds = %38, %39, %33, %24
  %45 = icmp ugt i64 %25, 1
  br i1 %45, label %24, label %46, !llvm.loop !203

46:                                               ; preds = %44, %17, %1, %4, %12, %11, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @invalidate_memory() unnamed_addr #15 {
  br label %1

1:                                                ; preds = %0, %18
  %2 = phi i64 [ 0, %0 ], [ %19, %18 ]
  %3 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = trunc i64 %2 to i32
  br label %8

8:                                                ; preds = %6, %16
  %9 = phi ptr [ %11, %16 ], [ %4, %6 ]
  %10 = getelementptr inbounds %struct.table_elt, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = getelementptr inbounds %struct.table_elt, ptr %9, i64 0, i32 11
  %13 = load i8, ptr %12, align 1, !tbaa !94
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call fastcc void @remove_from_table(ptr noundef nonnull %9, i32 noundef %7) #25
  br label %16

16:                                               ; preds = %8, %15
  %17 = icmp eq ptr %11, null
  br i1 %17, label %18, label %8, !llvm.loop !204

18:                                               ; preds = %16, %1
  %19 = add nuw nsw i64 %2, 1
  %20 = icmp eq i64 %19, 32
  br i1 %20, label %21, label %1, !llvm.loop !205

21:                                               ; preds = %18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @invalidate_for_call() unnamed_addr #15 {
  br label %1

1:                                                ; preds = %0, %27
  %2 = phi i64 [ 0, %0 ], [ %29, %27 ]
  %3 = phi i32 [ 0, %0 ], [ %28, %27 ]
  %4 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !54
  %5 = shl nuw nsw i64 1, %2
  %6 = and i64 %4, %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = trunc i64 %2 to i32
  tail call fastcc void @delete_reg_equiv(i32 noundef %9) #25
  %10 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %9) #25
  %11 = getelementptr inbounds %struct.cse_reg_info, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !28
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %9) #25
  %16 = getelementptr inbounds %struct.cse_reg_info, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !28
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !28
  %19 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %9) #25
  %20 = getelementptr inbounds %struct.cse_reg_info, ptr %19, i64 0, i32 4
  store i32 -1, ptr %20, align 4, !tbaa !30
  br label %21

21:                                               ; preds = %14, %8
  %22 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !54
  %23 = and i64 %22, %5
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = or i32 %3, %25
  br label %27

27:                                               ; preds = %1, %21
  %28 = phi i32 [ %26, %21 ], [ %3, %1 ]
  %29 = add nuw nsw i64 %2, 1
  %30 = icmp eq i64 %29, 53
  br i1 %30, label %31, label %1, !llvm.loop !206

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %74, label %33

33:                                               ; preds = %31, %71
  %34 = phi i64 [ %72, %71 ], [ 0, %31 ]
  %35 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %71, label %38

38:                                               ; preds = %33
  %39 = trunc i64 %34 to i32
  br label %40

40:                                               ; preds = %38, %69
  %41 = phi ptr [ %43, %69 ], [ %36, %38 ]
  %42 = getelementptr inbounds %struct.table_elt, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = load ptr, ptr %41, align 8, !tbaa !10
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 37
  br i1 %47, label %48, label %69

48:                                               ; preds = %40
  %49 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %44) #25
  %50 = icmp ugt i32 %49, 52
  br i1 %50, label %69, label %51

51:                                               ; preds = %48
  %52 = lshr i32 %45, 16
  %53 = and i32 %52, 255
  %54 = tail call fastcc i32 @end_hard_regno(i32 noundef %53, i32 noundef %49) #25
  %55 = icmp ult i32 %49, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !54
  %58 = zext nneg i32 %49 to i64
  %59 = zext i32 %54 to i64
  br label %63

60:                                               ; preds = %63
  %61 = add nuw nsw i64 %64, 1
  %62 = icmp eq i64 %61, %59
  br i1 %62, label %69, label %63, !llvm.loop !207

63:                                               ; preds = %56, %60
  %64 = phi i64 [ %58, %56 ], [ %61, %60 ]
  %65 = shl nuw i64 1, %64
  %66 = and i64 %57, %65
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %60, label %68

68:                                               ; preds = %63
  tail call fastcc void @remove_from_table(ptr noundef nonnull %41, i32 noundef %39) #25
  br label %69

69:                                               ; preds = %60, %51, %68, %40, %48
  %70 = icmp eq ptr %43, null
  br i1 %70, label %71, label %40, !llvm.loop !208

71:                                               ; preds = %69, %33
  %72 = add nuw nsw i64 %34, 1
  %73 = icmp eq i64 %72, 32
  br i1 %73, label %74, label %33, !llvm.loop !209

74:                                               ; preds = %71, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mention_regs(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %184, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = trunc i32 %4 to i16
  switch i16 %6, label %99 [
    i16 37, label %7
    i16 39, label %44
    i16 48, label %104
  ]

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %10, label %14

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
  br i1 %18, label %19, label %184

19:                                               ; preds = %16, %34
  %20 = phi i32 [ %42, %34 ], [ %8, %16 ]
  %21 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %22 = getelementptr inbounds %struct.cse_reg_info, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !29
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %27 = getelementptr inbounds %struct.cse_reg_info, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !29
  %29 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %30 = getelementptr inbounds %struct.cse_reg_info, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !28
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  tail call fastcc void @remove_invalid_refs(i32 noundef %20) #25
  br label %34

34:                                               ; preds = %33, %25, %19
  %35 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %36 = getelementptr inbounds %struct.cse_reg_info, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !28
  %38 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %39 = getelementptr inbounds %struct.cse_reg_info, ptr %38, i64 0, i32 3
  store i32 %37, ptr %39, align 4, !tbaa !29
  %40 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %20) #25
  %41 = getelementptr inbounds %struct.cse_reg_info, ptr %40, i64 0, i32 4
  store i32 -1, ptr %41, align 4, !tbaa !30
  %42 = add i32 %20, 1
  %43 = icmp eq i32 %42, %17
  br i1 %43, label %184, label %19, !llvm.loop !210

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %99

50:                                               ; preds = %44
  %51 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %46) #25
  %52 = icmp ugt i32 %51, 52
  br i1 %52, label %53, label %99

53:                                               ; preds = %50
  %54 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %55 = getelementptr inbounds %struct.cse_reg_info, ptr %54, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !29
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %89

58:                                               ; preds = %53
  %59 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %60 = getelementptr inbounds %struct.cse_reg_info, ptr %59, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !29
  %62 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %63 = getelementptr inbounds %struct.cse_reg_info, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !28
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %89, label %66

66:                                               ; preds = %58
  %67 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %68 = getelementptr inbounds %struct.cse_reg_info, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !28
  %70 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %71 = getelementptr inbounds %struct.cse_reg_info, ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !29
  %73 = sub nsw i32 %69, %72
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %82, label %75

75:                                               ; preds = %66
  %76 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %77 = getelementptr inbounds %struct.cse_reg_info, ptr %76, i64 0, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !30
  %79 = load ptr, ptr %45, align 8, !tbaa !16
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef %79) #25
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %75, %66
  tail call fastcc void @remove_invalid_refs(i32 noundef %51) #25
  br label %89

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load i32, ptr %84, align 8, !tbaa !16
  %86 = load i32, ptr %0, align 8
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  tail call fastcc void @remove_invalid_subreg_refs(i32 noundef %51, i32 noundef %85, i32 noundef %88) #25
  br label %89

89:                                               ; preds = %82, %83, %58, %53
  %90 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %91 = getelementptr inbounds %struct.cse_reg_info, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !28
  %93 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %94 = getelementptr inbounds %struct.cse_reg_info, ptr %93, i64 0, i32 3
  store i32 %92, ptr %94, align 4, !tbaa !29
  %95 = load ptr, ptr %45, align 8, !tbaa !16
  %96 = tail call fastcc i32 @rhs_regno(ptr noundef %95) #25
  %97 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %51) #25
  %98 = getelementptr inbounds %struct.cse_reg_info, ptr %97, i64 0, i32 4
  store i32 %96, ptr %98, align 4, !tbaa !30
  br label %184

99:                                               ; preds = %44, %50, %3
  %100 = zext nneg i32 %5 to i64
  %101 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !15
  %103 = icmp ult i32 %102, 2
  br i1 %103, label %104, label %141

104:                                              ; preds = %3, %99
  %105 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !16
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 37
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %106) #25
  %112 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %111) #25
  %113 = getelementptr inbounds %struct.cse_reg_info, ptr %112, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !17
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %105, align 8, !tbaa !16
  %118 = tail call fastcc i32 @insert_regs(ptr noundef %117, ptr noundef null, i32 noundef 0) #25, !range !34
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %105, align 8, !tbaa !16
  tail call fastcc void @rehash_using_reg(ptr noundef %121) #25
  br label %122

122:                                              ; preds = %116, %120, %110, %104
  %123 = phi i32 [ 0, %110 ], [ 1, %120 ], [ 0, %116 ], [ 0, %104 ]
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !16
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 37
  br i1 %128, label %129, label %141

129:                                              ; preds = %122
  %130 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %125) #25
  %131 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %130) #25
  %132 = getelementptr inbounds %struct.cse_reg_info, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !17
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load ptr, ptr %124, align 8, !tbaa !16
  %137 = tail call fastcc i32 @insert_regs(ptr noundef %136, ptr noundef null, i32 noundef 0) #25, !range !34
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %124, align 8, !tbaa !16
  tail call fastcc void @rehash_using_reg(ptr noundef %140) #25
  br label %141

141:                                              ; preds = %122, %129, %139, %135, %99
  %142 = phi i32 [ %123, %129 ], [ 1, %139 ], [ %123, %135 ], [ %123, %122 ], [ 0, %99 ]
  %143 = zext nneg i32 %5 to i64
  %144 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %143
  %147 = load i8, ptr %146, align 1, !tbaa !16
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %184, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %151 = zext i8 %147 to i64
  br label %152

152:                                              ; preds = %149, %181
  %153 = phi i64 [ %151, %149 ], [ %155, %181 ]
  %154 = phi i32 [ %142, %149 ], [ %182, %181 ]
  %155 = add nsw i64 %153, -1
  %156 = getelementptr inbounds i8, ptr %145, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !16
  switch i8 %157, label %181 [
    i8 101, label %163
    i8 69, label %158
  ]

158:                                              ; preds = %152
  %159 = getelementptr inbounds [1 x %union.rtunion_def], ptr %150, i64 0, i64 %155
  %160 = load ptr, ptr %159, align 8, !tbaa !16
  %161 = load i32, ptr %160, align 8, !tbaa !19
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %168, label %181

163:                                              ; preds = %152
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %150, i64 0, i64 %155
  %165 = load ptr, ptr %164, align 8, !tbaa !16
  %166 = tail call fastcc i32 @mention_regs(ptr noundef %165) #25, !range !34
  %167 = or i32 %166, %154
  br label %181

168:                                              ; preds = %158, %168
  %169 = phi i64 [ %176, %168 ], [ 0, %158 ]
  %170 = phi ptr [ %177, %168 ], [ %160, %158 ]
  %171 = phi i32 [ %175, %168 ], [ %154, %158 ]
  %172 = getelementptr inbounds %struct.rtvec_def, ptr %170, i64 0, i32 1, i64 %169
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = tail call fastcc i32 @mention_regs(ptr noundef %173) #25, !range !34
  %175 = or i32 %174, %171
  %176 = add nuw nsw i64 %169, 1
  %177 = load ptr, ptr %159, align 8, !tbaa !16
  %178 = load i32, ptr %177, align 8, !tbaa !19
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %168, label %181, !llvm.loop !211

181:                                              ; preds = %168, %158, %152, %163
  %182 = phi i32 [ %167, %163 ], [ %154, %152 ], [ %154, %158 ], [ %175, %168 ]
  %183 = icmp sgt i64 %153, 1
  br i1 %183, label %152, label %184, !llvm.loop !212

184:                                              ; preds = %34, %181, %16, %141, %1, %89
  %185 = phi i32 [ 0, %89 ], [ 0, %1 ], [ %142, %141 ], [ 0, %16 ], [ %182, %181 ], [ 0, %34 ]
  ret i32 %185
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_invalid_refs(i32 noundef %0) unnamed_addr #0 {
  %2 = add i32 %0, 1
  br label %3

3:                                                ; preds = %1, %24
  %4 = phi i64 [ 0, %1 ], [ %25, %24 ]
  %5 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = trunc i64 %4 to i32
  br label %10

10:                                               ; preds = %8, %22
  %11 = phi ptr [ %13, %22 ], [ %6, %8 ]
  %12 = getelementptr inbounds %struct.table_elt, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = load ptr, ptr %11, align 8, !tbaa !10
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = tail call i32 @refers_to_regno_p(i32 noundef %0, i32 noundef %2, ptr noundef nonnull %14, ptr noundef null) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call fastcc void @remove_from_table(ptr noundef nonnull %11, i32 noundef %9) #25
  br label %22

22:                                               ; preds = %10, %18, %21
  %23 = icmp eq ptr %13, null
  br i1 %23, label %24, label %10, !llvm.loop !213

24:                                               ; preds = %22, %3
  %25 = add nuw nsw i64 %4, 1
  %26 = icmp eq i64 %25, 32
  br i1 %26, label %27, label %3, !llvm.loop !214

27:                                               ; preds = %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_const_anchors(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %8 = call fastcc zeroext i8 @compute_const_anchors(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #25, !range !56
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %4, align 8, !tbaa !54
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %5, align 8, !tbaa !54
  %15 = sub nsw i64 0, %14
  tail call fastcc void @insert_const_anchor(i64 noundef %11, ptr noundef %0, i64 noundef %15, i32 noundef %2) #25
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, ptr %6, align 8, !tbaa !54
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %7, align 8, !tbaa !54
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
define internal fastcc ptr @equiv_constant(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %7 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %6) #25
  %8 = getelementptr inbounds %struct.cse_reg_info, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !17
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %13 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %12) #25
  %14 = getelementptr inbounds %struct.cse_reg_info, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !187
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr @rtl_hooks, align 8, !tbaa !124
  %23 = load i32, ptr %0, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = tail call ptr %22(i32 noundef %25, ptr noundef nonnull %19) #23
  %27 = icmp eq ptr %26, null
  br i1 %27, label %147, label %28

28:                                               ; preds = %11, %1, %5, %21
  %29 = phi ptr [ %26, %21 ], [ %0, %5 ], [ %0, %1 ], [ %0, %11 ]
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !15
  %35 = icmp eq i32 %34, 9
  br i1 %35, label %147, label %36

36:                                               ; preds = %28
  %37 = trunc i32 %30 to i16
  switch i16 %37, label %147 [
    i16 39, label %38
    i16 43, label %96
  ]

38:                                               ; preds = %36
  %39 = lshr i32 %30, 16
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %29, i32 noundef 30) #25
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %147

48:                                               ; preds = %38
  %49 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %29, i32 noundef 32) #25
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %147

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @lookup_as_function(ptr noundef nonnull %29, i32 noundef 31) #25
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %147

54:                                               ; preds = %51
  %55 = zext nneg i32 %40 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !16
  %58 = load i32, ptr @word_mode, align 4, !tbaa !15
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !16
  %62 = icmp ult i8 %57, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %54
  %64 = zext nneg i32 %45 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !16
  %67 = icmp ult i8 %61, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !16
  %71 = tail call i32 @subreg_lowpart_offset(i32 noundef %40, i32 noundef %58) #23
  %72 = sub i32 %70, %71
  %73 = and i32 %72, -2147483645
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i32, ptr @word_mode, align 4, !tbaa !15
  %77 = load ptr, ptr %41, align 8, !tbaa !16
  %78 = tail call ptr @gen_rtx_SUBREG(i32 noundef %76, ptr noundef %77, i32 noundef %72) #23
  %79 = tail call fastcc ptr @lookup_as_function(ptr noundef %78, i32 noundef 30) #25
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr @rtl_hooks, align 8, !tbaa !124
  %83 = tail call ptr %82(i32 noundef %40, ptr noundef nonnull %79) #23
  br label %147

84:                                               ; preds = %75, %68, %63, %54
  %85 = load ptr, ptr %41, align 8, !tbaa !16
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 37
  br i1 %88, label %89, label %147

89:                                               ; preds = %84
  %90 = tail call fastcc ptr @equiv_constant(ptr noundef nonnull %85) #25
  %91 = icmp eq ptr %90, null
  br i1 %91, label %147, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load i32, ptr %93, align 8, !tbaa !16
  %95 = tail call ptr @simplify_subreg(i32 noundef %40, ptr noundef nonnull %90, i32 noundef %45, i32 noundef %94) #23
  br label %147

96:                                               ; preds = %36
  %97 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %29) #23
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !15
  %103 = icmp eq i32 %102, 9
  br i1 %103, label %147, label %104

104:                                              ; preds = %96
  %105 = icmp eq i32 %99, 37
  br i1 %105, label %106, label %114

106:                                              ; preds = %104
  %107 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %97) #25
  %108 = icmp ugt i32 %107, 52
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %107) #25
  %111 = getelementptr inbounds %struct.cse_reg_info, ptr %110, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !17
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
  br i1 %125, label %147, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.table_elt, ptr %124, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = icmp eq ptr %128, null
  br i1 %129, label %147, label %130

130:                                              ; preds = %126, %143
  %131 = phi ptr [ %145, %143 ], [ %128, %126 ]
  %132 = getelementptr inbounds %struct.table_elt, ptr %131, i64 0, i32 12
  %133 = load i8, ptr %132, align 2, !tbaa !117
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %131, align 8, !tbaa !10
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !15
  %142 = icmp eq i32 %141, 9
  br i1 %142, label %147, label %143

143:                                              ; preds = %130, %135
  %144 = getelementptr inbounds %struct.table_elt, ptr %131, i64 0, i32 4
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %130, !llvm.loop !215

147:                                              ; preds = %143, %135, %126, %118, %96, %36, %81, %92, %51, %48, %38, %89, %84, %21, %28
  %148 = phi ptr [ %29, %28 ], [ null, %21 ], [ %95, %92 ], [ %83, %81 ], [ %46, %38 ], [ %49, %48 ], [ %52, %51 ], [ null, %89 ], [ null, %84 ], [ null, %36 ], [ null, %118 ], [ %97, %96 ], [ null, %126 ], [ null, %143 ], [ %136, %135 ]
  ret ptr %148
}

; Function Attrs: optsize
declare zeroext i8 @canonicalize_change_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_comparison_args(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = load ptr, ptr %1, align 8, !tbaa !16
  %7 = load ptr, ptr %2, align 8, !tbaa !16
  %8 = load i32, ptr %6, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %15, label %118

15:                                               ; preds = %5, %104
  %16 = phi i32 [ %113, %104 ], [ %10, %5 ]
  %17 = phi i32 [ %111, %104 ], [ %8, %5 ]
  %18 = phi ptr [ %110, %104 ], [ %7, %5 ]
  %19 = phi ptr [ %109, %104 ], [ %6, %5 ]
  %20 = phi i32 [ %106, %104 ], [ %0, %5 ]
  %21 = and i32 %17, 65535
  %22 = icmp eq i32 %21, 48
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %24 = icmp eq ptr %18, %23
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %95, label %26

26:                                               ; preds = %15
  %27 = zext nneg i32 %21 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !15
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  switch i32 %20, label %32 [
    i32 80, label %95
    i32 81, label %90
  ]

32:                                               ; preds = %26, %31
  %33 = icmp eq i32 %21, 37
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %19) #25
  %36 = icmp ugt i32 %35, 52
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %35) #25
  %39 = getelementptr inbounds %struct.cse_reg_info, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !17
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
  br i1 %51, label %118, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.table_elt, ptr %50, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  %55 = getelementptr inbounds %struct.table_elt, ptr %54, i64 0, i32 12
  %56 = load i8, ptr %55, align 2, !tbaa !117
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %118

58:                                               ; preds = %52, %85
  %59 = phi ptr [ %86, %85 ], [ %19, %52 ]
  %60 = phi ptr [ %88, %85 ], [ %54, %52 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !10
  %62 = tail call i32 @exp_equiv_p(ptr noundef nonnull %61, ptr noundef nonnull %61, i32 noundef 1, i8 noundef zeroext 0) #25, !range !34
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %60, align 8, !tbaa !10
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %95, label %69

69:                                               ; preds = %64
  switch i32 %20, label %80 [
    i32 80, label %70
    i32 81, label %75
  ]

70:                                               ; preds = %69
  %71 = zext nneg i32 %67 to i64
  %72 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !15
  %74 = icmp ult i32 %73, 2
  br i1 %74, label %95, label %80

75:                                               ; preds = %69
  %76 = zext nneg i32 %67 to i64
  %77 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !15
  %79 = icmp ult i32 %78, 2
  br i1 %79, label %90, label %80

80:                                               ; preds = %70, %69, %75
  %81 = tail call i32 @rtx_addr_can_trap_p(ptr noundef nonnull %65) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load ptr, ptr %60, align 8, !tbaa !10
  br label %85

85:                                               ; preds = %83, %58, %80
  %86 = phi ptr [ %84, %83 ], [ %59, %58 ], [ %59, %80 ]
  %87 = getelementptr inbounds %struct.table_elt, ptr %60, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !141
  %89 = icmp eq ptr %88, null
  br i1 %89, label %118, label %58, !llvm.loop !216

90:                                               ; preds = %75, %31
  %91 = phi ptr [ %19, %31 ], [ %59, %75 ]
  %92 = phi ptr [ %19, %31 ], [ %65, %75 ]
  %93 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %92, ptr noundef null) #23
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %118, label %104

95:                                               ; preds = %64, %70, %15, %31
  %96 = phi ptr [ %19, %31 ], [ %19, %15 ], [ %65, %70 ], [ %65, %64 ]
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 65535
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !15
  %102 = icmp ult i32 %101, 2
  %103 = select i1 %102, i32 %98, i32 %20
  br label %104

104:                                              ; preds = %90, %95
  %105 = phi ptr [ %92, %90 ], [ %96, %95 ]
  %106 = phi i32 [ %93, %90 ], [ %103, %95 ]
  %107 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %108 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %107, align 8, !tbaa !16
  %110 = load ptr, ptr %108, align 8, !tbaa !16
  %111 = load i32, ptr %109, align 8
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = icmp eq ptr %110, %116
  br i1 %117, label %15, label %118

118:                                              ; preds = %104, %52, %44, %90, %85, %5
  %119 = phi i32 [ %0, %5 ], [ %20, %85 ], [ %20, %90 ], [ %20, %44 ], [ %20, %52 ], [ %106, %104 ]
  %120 = phi ptr [ %7, %5 ], [ %18, %85 ], [ %18, %90 ], [ %18, %44 ], [ %18, %52 ], [ %110, %104 ]
  %121 = phi ptr [ %6, %5 ], [ %86, %85 ], [ %91, %90 ], [ %19, %44 ], [ %19, %52 ], [ %109, %104 ]
  %122 = load i32, ptr %121, align 8
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  store i32 %124, ptr %3, align 4, !tbaa !15
  %125 = load i32, ptr %120, align 8
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  store i32 %127, ptr %4, align 4, !tbaa !15
  %128 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %121, ptr noundef null) #25
  store ptr %128, ptr %1, align 8, !tbaa !6
  %129 = tail call fastcc ptr @fold_rtx(ptr noundef nonnull %120, ptr noundef null) #25
  store ptr %129, ptr %2, align 8, !tbaa !6
  ret i32 %119
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @safe_hash(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
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
define internal fastcc ptr @lookup_as_function(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = icmp ugt i32 %7, 52
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %7) #25
  %11 = getelementptr inbounds %struct.cse_reg_info, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !17
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
  br i1 %23, label %43, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.table_elt, ptr %22, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %24, %39
  %29 = phi ptr [ %41, %39 ], [ %26, %24 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = tail call i32 @exp_equiv_p(ptr noundef nonnull %30, ptr noundef nonnull %30, i32 noundef 1, i8 noundef zeroext 0) #25, !range !34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %29, align 8, !tbaa !10
  br label %43

39:                                               ; preds = %28, %34
  %40 = getelementptr inbounds %struct.table_elt, ptr %29, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %28, !llvm.loop !217

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
define internal fastcc noundef zeroext i8 @compute_const_anchors(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #17 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !16
  %8 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !129
  %9 = sub i64 0, %8
  %10 = and i64 %7, %9
  store i64 %10, ptr %1, align 8, !tbaa !54
  %11 = icmp eq i64 %10, %7
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !129
  %14 = add i64 %7, -1
  %15 = add i64 %14, %13
  %16 = sub i64 0, %13
  %17 = and i64 %15, %16
  store i64 %17, ptr %3, align 8, !tbaa !54
  %18 = sub nsw i64 %7, %17
  store i64 %18, ptr %4, align 8, !tbaa !54
  %19 = load i64, ptr %1, align 8, !tbaa !54
  %20 = sub nsw i64 %7, %19
  store i64 %20, ptr %2, align 8, !tbaa !54
  br label %21

21:                                               ; preds = %5, %12
  %22 = phi i8 [ 1, %12 ], [ 0, %5 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_reg_offset_for_const(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.table_elt, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !6
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
  %15 = load i32, ptr %14, align 8, !tbaa !144
  %16 = getelementptr inbounds %struct.table_elt, ptr %10, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !145
  %18 = getelementptr inbounds %struct.table_elt, ptr %8, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !144
  %20 = getelementptr inbounds %struct.table_elt, ptr %8, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !145
  %22 = tail call fastcc i32 @preferable(i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #25
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %13, %7
  %25 = load ptr, ptr %8, align 8, !tbaa !10
  %26 = load i32, ptr %25, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %61 [
    i16 37, label %45
    i16 49, label %28
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !16
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 30
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = tail call i32 @exp_equiv_p(ptr noundef nonnull %25, ptr noundef nonnull %25, i32 noundef 1, i8 noundef zeroext 0) #25, !range !34
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %8, align 8, !tbaa !10
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
  %52 = load ptr, ptr %51, align 8, !tbaa !16
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !16
  %55 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 87), align 8, !tbaa !129
  %56 = add i64 %55, %54
  %57 = shl i64 %55, 1
  %58 = add i64 %57, -1
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %45, %50
  store i32 %11, ptr %2, align 4, !tbaa !15
  br label %61

61:                                               ; preds = %40, %45, %60, %50, %24, %28, %34
  %62 = phi ptr [ %10, %34 ], [ %10, %28 ], [ %10, %24 ], [ %10, %40 ], [ %8, %60 ], [ %10, %50 ], [ %10, %45 ]
  %63 = phi ptr [ %9, %34 ], [ %9, %28 ], [ %9, %24 ], [ %9, %40 ], [ %47, %60 ], [ %9, %50 ], [ %9, %45 ]
  %64 = getelementptr inbounds %struct.table_elt, ptr %8, i64 0, i32 4
  %65 = add i32 %11, 1
  %66 = load ptr, ptr %64, align 8, !tbaa !6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %7, !llvm.loop !218

68:                                               ; preds = %13, %61, %3
  %69 = phi ptr [ null, %3 ], [ %63, %61 ], [ %9, %13 ]
  ret ptr %69
}

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @approx_reg_cost_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %33

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
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = icmp ult i32 %10, 53
  br i1 %15, label %16, label %30

16:                                               ; preds = %14
  %17 = zext nneg i32 %10 to i64
  %18 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %17
  %23 = load i8, ptr %22, align 1, !tbaa !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %17
  %27 = load i32, ptr %26, align 4, !tbaa !15
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %33

30:                                               ; preds = %14
  %31 = load i32, ptr %1, align 4, !tbaa !15
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %1, align 4, !tbaa !15
  br label %33

33:                                               ; preds = %21, %25, %2, %5, %30, %11, %9, %9, %9, %9
  %34 = phi i32 [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %11 ], [ 0, %30 ], [ %29, %25 ], [ 0, %5 ], [ 0, %2 ], [ 1, %21 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_regs_eqv(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1) #25
  %4 = getelementptr inbounds %struct.cse_reg_info, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !17
  %6 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %7 = sext i32 %5 to i64
  %8 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %1) #25
  %9 = getelementptr inbounds %struct.cse_reg_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !17
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 938, ptr noundef nonnull @.str.4) #23
  br label %13

13:                                               ; preds = %2, %12
  %14 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #25
  %15 = getelementptr inbounds %struct.cse_reg_info, ptr %14, i64 0, i32 1
  store i32 %5, ptr %15, align 4, !tbaa !17
  %16 = getelementptr inbounds %struct.qty_table_elem, ptr %6, i64 %7, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !147
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %6, i64 %7, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !177
  %20 = icmp ult i32 %17, 53
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  switch i32 %17, label %22 [
    i32 20, label %72
    i32 6, label %72
  ]

22:                                               ; preds = %21
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %23
  %29 = load i8, ptr %28, align 1, !tbaa !16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  %32 = icmp ugt i32 %0, 52
  br i1 %32, label %65, label %35

33:                                               ; preds = %13
  %34 = icmp ugt i32 %0, 52
  br i1 %34, label %49, label %35

35:                                               ; preds = %33, %31
  %36 = zext nneg i32 %0 to i64
  %37 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %35
  switch i32 %0, label %41 [
    i32 20, label %65
    i32 6, label %65
  ]

41:                                               ; preds = %40
  %42 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %36
  %43 = load i8, ptr %42, align 1, !tbaa !16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %36
  %47 = load i8, ptr %46, align 1, !tbaa !16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %72, label %65

49:                                               ; preds = %33
  %50 = load ptr, ptr @cse_ebb_live_out, align 8, !tbaa !6
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %50, i32 noundef %0) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @cse_ebb_live_out, align 8, !tbaa !6
  %55 = tail call i32 @bitmap_bit_p(ptr noundef %54, i32 noundef %17) #23
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %53, %49
  %58 = load ptr, ptr @cse_ebb_live_in, align 8, !tbaa !6
  %59 = tail call i32 @bitmap_bit_p(ptr noundef %58, i32 noundef %0) #23
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @cse_ebb_live_in, align 8, !tbaa !6
  %63 = tail call i32 @bitmap_bit_p(ptr noundef %62, i32 noundef %17) #23
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %31, %40, %40, %61, %53, %45, %41
  %66 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !6
  %67 = zext i32 %17 to i64
  %68 = getelementptr inbounds %struct.reg_eqv_elem, ptr %66, i64 %67, i32 1
  store i32 %0, ptr %68, align 4, !tbaa !174
  %69 = zext i32 %0 to i64
  %70 = getelementptr inbounds %struct.reg_eqv_elem, ptr %66, i64 %69
  store i32 %17, ptr %70, align 4, !tbaa !176
  %71 = getelementptr inbounds %struct.reg_eqv_elem, ptr %66, i64 %69, i32 1
  store i32 -1, ptr %71, align 4, !tbaa !174
  store i32 %0, ptr %16, align 4, !tbaa !147
  br label %116

72:                                               ; preds = %45, %21, %21, %61, %57, %35, %27, %22
  %73 = icmp ult i32 %19, 53
  %74 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !6
  br i1 %73, label %75, label %100

75:                                               ; preds = %72
  %76 = icmp ugt i32 %0, 52
  br label %77

77:                                               ; preds = %75, %98
  %78 = phi i32 [ %19, %75 ], [ %81, %98 ]
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %79, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !174
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %79
  %85 = load i32, ptr %84, align 4, !tbaa !15
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %83
  switch i32 %78, label %88 [
    i32 20, label %100
    i32 6, label %100
  ]

88:                                               ; preds = %87
  %89 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %79
  %90 = load i8, ptr %89, align 1, !tbaa !16
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %79
  %94 = load i8, ptr %93, align 1, !tbaa !16
  %95 = icmp eq i8 %94, 0
  %96 = and i1 %76, %95
  br i1 %96, label %98, label %100

97:                                               ; preds = %83
  br i1 %76, label %98, label %100

98:                                               ; preds = %92, %97
  %99 = icmp ult i32 %81, 53
  br i1 %99, label %77, label %100, !llvm.loop !219

100:                                              ; preds = %97, %98, %77, %88, %92, %87, %87, %72
  %101 = phi i32 [ %19, %72 ], [ %78, %87 ], [ %78, %87 ], [ %78, %92 ], [ %78, %88 ], [ %78, %77 ], [ %81, %98 ], [ %78, %97 ]
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !176
  %105 = zext i32 %0 to i64
  %106 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %105
  store i32 %104, ptr %106, align 4, !tbaa !176
  %107 = icmp sgt i32 %104, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = zext nneg i32 %104 to i64
  %110 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %109, i32 1
  store i32 %0, ptr %110, align 4, !tbaa !174
  br label %114

111:                                              ; preds = %100
  %112 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %113 = getelementptr inbounds %struct.qty_table_elem, ptr %112, i64 %7, i32 5
  store i32 %0, ptr %113, align 8, !tbaa !177
  br label %114

114:                                              ; preds = %111, %108
  store i32 %0, ptr %103, align 4, !tbaa !176
  %115 = getelementptr inbounds %struct.reg_eqv_elem, ptr %74, i64 %105, i32 1
  store i32 %101, ptr %115, align 4, !tbaa !174
  br label %116

116:                                              ; preds = %114, %65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_new_qty(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @next_qty, align 4, !tbaa !15
  %4 = load i32, ptr @max_qty, align 4, !tbaa !15
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 911, ptr noundef nonnull @.str.4) #23
  %7 = load i32, ptr @next_qty, align 4, !tbaa !15
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %3, %2 ], [ %7, %6 ]
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @next_qty, align 4, !tbaa !15
  %11 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %0) #25
  %12 = getelementptr inbounds %struct.cse_reg_info, ptr %11, i64 0, i32 1
  store i32 %9, ptr %12, align 4, !tbaa !17
  %13 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14
  %16 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14, i32 4
  store i32 %0, ptr %16, align 4, !tbaa !147
  %17 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14, i32 5
  store i32 %0, ptr %17, align 8, !tbaa !177
  %18 = getelementptr inbounds %struct.qty_table_elem, ptr %13, i64 %14, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %1, 16
  %21 = and i32 %20, 16711680
  %22 = and i32 %19, -16777216
  %23 = or disjoint i32 %22, %21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 %23, ptr %18, align 4
  %24 = load ptr, ptr @reg_eqv_table, align 8, !tbaa !6
  %25 = zext i32 %0 to i64
  %26 = getelementptr inbounds %struct.reg_eqv_elem, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.reg_eqv_elem, ptr %24, i64 %25, i32 1
  store i32 -1, ptr %27, align 4, !tbaa !174
  store i32 -1, ptr %26, align 4, !tbaa !176
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @insert_with_costs(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %12 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %11) #25
  %13 = getelementptr inbounds %struct.cse_reg_info, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1590, ptr noundef nonnull @.str.4) #23
  br label %17

17:                                               ; preds = %6, %10, %16
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = lshr i32 %18, 16
  %26 = and i32 %25, 255
  tail call fastcc void @add_to_hard_reg_set(i32 noundef %26, i32 noundef %22) #25
  br label %27

27:                                               ; preds = %24, %21, %17
  %28 = load ptr, ptr @free_element_chain, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.table_elt, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  store ptr %32, ptr @free_element_chain, align 8, !tbaa !6
  br label %35

33:                                               ; preds = %27
  %34 = tail call ptr @xmalloc(i64 noundef 80) #23
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi ptr [ %28, %30 ], [ %34, %33 ]
  store ptr %0, ptr %36, align 8, !tbaa !10
  %37 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 1
  store ptr null, ptr %37, align 8, !tbaa !95
  %38 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 8
  store i32 %4, ptr %38, align 8, !tbaa !144
  %39 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 9
  store i32 %5, ptr %39, align 4, !tbaa !145
  %40 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 4
  %41 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 5
  %42 = zext i32 %2 to i64
  %43 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !82
  %46 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 3
  store ptr null, ptr %46, align 8, !tbaa !180
  %47 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 7
  store ptr null, ptr %47, align 8, !tbaa !122
  %48 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 11
  store i8 0, ptr %48, align 1, !tbaa !94
  %49 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 10
  %50 = trunc i32 %3 to i8
  store i8 %50, ptr %49, align 8
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 65535
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !15
  %56 = icmp eq i32 %55, 9
  br i1 %56, label %60, label %57

57:                                               ; preds = %35
  %58 = tail call fastcc zeroext i8 @fixed_base_plus_p(ptr noundef nonnull %0) #25, !range !56
  %59 = icmp ne i8 %58, 0
  br label %60

60:                                               ; preds = %57, %35
  %61 = phi i1 [ true, %35 ], [ %59, %57 ]
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 12
  store i8 %62, ptr %63, align 2, !tbaa !117
  %64 = load ptr, ptr %43, align 8, !tbaa !6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.table_elt, ptr %64, i64 0, i32 3
  store ptr %36, ptr %67, align 8, !tbaa !180
  br label %68

68:                                               ; preds = %66, %60
  store ptr %36, ptr %43, align 8, !tbaa !6
  %69 = icmp eq ptr %1, null
  br i1 %69, label %106, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.table_elt, ptr %1, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !116
  %73 = getelementptr inbounds %struct.table_elt, ptr %72, i64 0, i32 8
  %74 = load i32, ptr %73, align 8, !tbaa !144
  %75 = getelementptr inbounds %struct.table_elt, ptr %72, i64 0, i32 9
  %76 = load i32, ptr %75, align 4, !tbaa !145
  %77 = tail call fastcc i32 @preferable(i32 noundef %4, i32 noundef %5, i32 noundef %74, i32 noundef %76) #25
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  store ptr %72, ptr %40, align 8, !tbaa !141
  %80 = getelementptr inbounds %struct.table_elt, ptr %72, i64 0, i32 5
  store ptr %36, ptr %80, align 8, !tbaa !160
  %81 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 6
  store ptr %36, ptr %81, align 8, !tbaa !116
  br label %82

82:                                               ; preds = %79, %82
  %83 = phi ptr [ %86, %82 ], [ %72, %79 ]
  %84 = getelementptr inbounds %struct.table_elt, ptr %83, i64 0, i32 6
  store ptr %36, ptr %84, align 8, !tbaa !116
  %85 = getelementptr inbounds %struct.table_elt, ptr %83, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !141
  %87 = icmp eq ptr %86, null
  br i1 %87, label %108, label %82, !llvm.loop !220

88:                                               ; preds = %70, %93
  %89 = phi ptr [ %91, %93 ], [ %72, %70 ]
  %90 = getelementptr inbounds %struct.table_elt, ptr %89, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !141
  %92 = icmp eq ptr %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.table_elt, ptr %91, i64 0, i32 8
  %95 = load i32, ptr %94, align 8, !tbaa !144
  %96 = getelementptr inbounds %struct.table_elt, ptr %91, i64 0, i32 9
  %97 = load i32, ptr %96, align 4, !tbaa !145
  %98 = tail call fastcc i32 @preferable(i32 noundef %95, i32 noundef %97, i32 noundef %4, i32 noundef %5) #25
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %88, label %100, !llvm.loop !221

100:                                              ; preds = %93
  store ptr %91, ptr %40, align 8, !tbaa !141
  %101 = getelementptr inbounds %struct.table_elt, ptr %91, i64 0, i32 5
  store ptr %36, ptr %101, align 8, !tbaa !160
  br label %103

102:                                              ; preds = %88
  store ptr null, ptr %40, align 8, !tbaa !141
  br label %103

103:                                              ; preds = %102, %100
  %104 = getelementptr inbounds %struct.table_elt, ptr %89, i64 0, i32 4
  store ptr %89, ptr %41, align 8, !tbaa !160
  store ptr %36, ptr %104, align 8, !tbaa !141
  %105 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 6
  store ptr %72, ptr %105, align 8, !tbaa !116
  br label %108

106:                                              ; preds = %68
  %107 = getelementptr inbounds %struct.table_elt, ptr %36, i64 0, i32 6
  store ptr %36, ptr %107, align 8, !tbaa !116
  br label %185

108:                                              ; preds = %82, %103
  %109 = icmp ne ptr %72, null
  %110 = and i1 %61, %109
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %0, align 8
  br label %138

113:                                              ; preds = %108
  %114 = load ptr, ptr %72, align 8, !tbaa !10
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp ne i32 %116, 37
  %118 = load i32, ptr %0, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 37
  %121 = select i1 %117, i1 true, i1 %120
  br i1 %121, label %138, label %122

122:                                              ; preds = %113
  %123 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %114) #25
  %124 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %123) #25
  %125 = getelementptr inbounds %struct.cse_reg_info, ptr %124, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !17
  %127 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds %struct.qty_table_elem, ptr %127, i64 %128
  %130 = load ptr, ptr @rtl_hooks, align 8, !tbaa !124
  %131 = getelementptr inbounds %struct.qty_table_elem, ptr %127, i64 %128, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  %135 = tail call ptr %130(i32 noundef %134, ptr noundef nonnull %0) #23
  store ptr %135, ptr %129, align 8, !tbaa !187
  %136 = load ptr, ptr @this_insn, align 8, !tbaa !6
  %137 = getelementptr inbounds %struct.qty_table_elem, ptr %127, i64 %128, i32 1
  store ptr %136, ptr %137, align 8, !tbaa !222
  br label %219

138:                                              ; preds = %111, %113
  %139 = phi i32 [ %112, %111 ], [ %118, %113 ]
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 37
  %142 = and i1 %109, %141
  br i1 %142, label %143, label %185

143:                                              ; preds = %138
  %144 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %146 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %145) #25
  %147 = getelementptr inbounds %struct.cse_reg_info, ptr %146, i64 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !17
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.qty_table_elem, ptr %144, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !187
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %185

153:                                              ; preds = %143
  %154 = load i8, ptr %63, align 2, !tbaa !117
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %185

156:                                              ; preds = %153, %181
  %157 = phi ptr [ %183, %181 ], [ %72, %153 ]
  %158 = getelementptr inbounds %struct.table_elt, ptr %157, i64 0, i32 12
  %159 = load i8, ptr %158, align 2, !tbaa !117
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %181, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr %157, align 8, !tbaa !10
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 37
  br i1 %165, label %181, label %166

166:                                              ; preds = %161
  %167 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %168 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %167) #25
  %169 = getelementptr inbounds %struct.cse_reg_info, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !17
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.qty_table_elem, ptr %144, i64 %171
  %173 = load ptr, ptr @rtl_hooks, align 8, !tbaa !124
  %174 = load i32, ptr %0, align 8
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 255
  %177 = load ptr, ptr %157, align 8, !tbaa !10
  %178 = tail call ptr %173(i32 noundef %176, ptr noundef %177) #23
  store ptr %178, ptr %172, align 8, !tbaa !187
  %179 = load ptr, ptr @this_insn, align 8, !tbaa !6
  %180 = getelementptr inbounds %struct.qty_table_elem, ptr %144, i64 %171, i32 1
  store ptr %179, ptr %180, align 8, !tbaa !222
  br label %219

181:                                              ; preds = %156, %161
  %182 = getelementptr inbounds %struct.table_elt, ptr %157, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !141
  %184 = icmp eq ptr %183, null
  br i1 %184, label %219, label %156, !llvm.loop !223

185:                                              ; preds = %106, %153, %143, %138
  %186 = load i32, ptr %0, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 37
  br i1 %188, label %189, label %219

189:                                              ; preds = %185
  %190 = load ptr, ptr @qty_table, align 8, !tbaa !6
  %191 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %192 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %191) #25
  %193 = getelementptr inbounds %struct.cse_reg_info, ptr %192, i64 0, i32 1
  %194 = load i32, ptr %193, align 4, !tbaa !17
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.qty_table_elem, ptr %190, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !187
  %198 = icmp eq ptr %197, null
  br i1 %198, label %219, label %199

199:                                              ; preds = %189
  %200 = load i32, ptr %0, align 8
  %201 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %202 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %201) #25
  %203 = getelementptr inbounds %struct.cse_reg_info, ptr %202, i64 0, i32 1
  %204 = load i32, ptr %203, align 4, !tbaa !17
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.qty_table_elem, ptr %190, i64 %205, i32 6
  %207 = load i32, ptr %206, align 4
  %208 = xor i32 %207, %200
  %209 = and i32 %208, 16711680
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %199
  %212 = load ptr, ptr @this_insn, align 8, !tbaa !6
  %213 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %214 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %213) #25
  %215 = getelementptr inbounds %struct.cse_reg_info, ptr %214, i64 0, i32 1
  %216 = load i32, ptr %215, align 4, !tbaa !17
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.qty_table_elem, ptr %190, i64 %217, i32 1
  store ptr %212, ptr %218, align 8, !tbaa !222
  br label %219

219:                                              ; preds = %181, %166, %211, %199, %189, %185, %122
  %220 = load i32, ptr %0, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 35
  br i1 %222, label %223, label %261

223:                                              ; preds = %219
  %224 = tail call ptr @get_related_value(ptr noundef nonnull %0) #23
  %225 = icmp eq ptr %224, null
  br i1 %225, label %261, label %226

226:                                              ; preds = %223
  %227 = load i32, ptr %224, align 8
  %228 = and i32 %227, 65535
  %229 = icmp eq i32 %228, 37
  br i1 %229, label %230, label %238

230:                                              ; preds = %226
  %231 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %224) #25
  %232 = icmp ugt i32 %231, 52
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %231) #25
  %235 = getelementptr inbounds %struct.cse_reg_info, ptr %234, i64 0, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !17
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
  br i1 %244, label %245, label %247

245:                                              ; preds = %240
  %246 = tail call fastcc ptr @insert(ptr noundef nonnull %224, ptr noundef null, i32 noundef %242, i32 noundef %3) #25
  br label %247

247:                                              ; preds = %245, %240
  %248 = phi ptr [ %246, %245 ], [ %243, %240 ]
  %249 = getelementptr inbounds %struct.table_elt, ptr %248, i64 0, i32 7
  %250 = load ptr, ptr %249, align 8, !tbaa !122
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %253

252:                                              ; preds = %247
  store ptr %248, ptr %249, align 8, !tbaa !122
  br label %253

253:                                              ; preds = %252, %247
  br label %254

254:                                              ; preds = %253, %254
  %255 = phi ptr [ %257, %254 ], [ %248, %253 ]
  %256 = getelementptr inbounds %struct.table_elt, ptr %255, i64 0, i32 7
  %257 = load ptr, ptr %256, align 8, !tbaa !122
  %258 = icmp eq ptr %257, %248
  br i1 %258, label %259, label %254, !llvm.loop !224

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.table_elt, ptr %255, i64 0, i32 7
  store ptr %248, ptr %47, align 8, !tbaa !122
  store ptr %36, ptr %260, align 8, !tbaa !122
  br label %261

261:                                              ; preds = %223, %259, %219
  ret ptr %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(i32 noundef %0, i32 noundef %1) unnamed_addr #18 {
  %3 = tail call fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) #25
  %4 = load i64, ptr @hard_regs_in_table, align 8, !tbaa !54
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ %4, %2 ], [ %10, %5 ]
  %7 = phi i32 [ %1, %2 ], [ %11, %5 ]
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw i64 1, %8
  %10 = or i64 %9, %6
  %11 = add i32 %7, 1
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %5, label %13, !llvm.loop !225

13:                                               ; preds = %5
  store i64 %10, ptr @hard_regs_in_table, align 8, !tbaa !54
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @fixed_base_plus_p(ptr noundef readonly %0) unnamed_addr #6 {
  br label %2

2:                                                ; preds = %29, %1
  %3 = phi ptr [ %0, %1 ], [ %31, %29 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %32 [
    i16 37, label %6
    i16 49, label %23
  ]

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !6
  %8 = icmp eq ptr %7, %3
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %10 = icmp eq ptr %9, %3
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %32, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !6
  %14 = icmp eq ptr %13, %3
  %15 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %32, label %18

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  %20 = add i32 %19, -53
  %21 = icmp ult i32 %20, 5
  %22 = zext i1 %21 to i8
  br label %32

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 30
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  br label %2

32:                                               ; preds = %2, %23, %18, %12, %6
  %33 = phi i8 [ 1, %6 ], [ 1, %12 ], [ %22, %18 ], [ 0, %23 ], [ 0, %2 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_invalid_subreg_refs(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !16
  %7 = zext i8 %6 to i32
  %8 = add i32 %1, -1
  %9 = add i32 %8, %7
  %10 = add i32 %0, 1
  br label %11

11:                                               ; preds = %3, %54
  %12 = phi i64 [ 0, %3 ], [ %55, %54 ]
  %13 = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %11
  %17 = trunc i64 %12 to i32
  br label %18

18:                                               ; preds = %16, %52
  %19 = phi ptr [ %22, %52 ], [ %14, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.table_elt, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = load i32, ptr %20, align 8
  %24 = trunc i32 %23 to i16
  switch i16 %24, label %48 [
    i16 37, label %52
    i16 39, label %25
  ]

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !16
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
  %36 = load i32, ptr %35, align 8, !tbaa !16
  %37 = lshr i32 %23, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !16
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
  br i1 %53, label %54, label %18, !llvm.loop !226

54:                                               ; preds = %52, %11
  %55 = add nuw nsw i64 %12, 1
  %56 = icmp eq i64 %55, 32
  br i1 %56, label %57, label %11, !llvm.loop !227

57:                                               ; preds = %54
  ret void
}

; Function Attrs: optsize
declare i32 @refers_to_regno_p(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_const_anchor(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
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
  %15 = load i32, ptr %14, align 4, !tbaa !17
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
  %29 = tail call fastcc i32 @mention_regs(ptr noundef %28) #25, !range !34
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
  %39 = load i32, ptr %38, align 4, !tbaa !17
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
define internal fastcc void @record_jump_cond(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %0, 81
  br i1 %5, label %6, label %54

6:                                                ; preds = %4
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = lshr i32 %7, 16
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !16
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !16
  %24 = icmp ugt i8 %15, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %10
  %26 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %20, ptr noundef %3) #25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %16, align 8, !tbaa !16
  tail call fastcc void @record_jump_cond(i32 noundef 81, i32 noundef %1, ptr noundef %29, ptr noundef nonnull %26) #25
  br label %30

30:                                               ; preds = %6, %10, %28, %25
  %31 = load i32, ptr %3, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 39
  br i1 %33, label %34, label %112

34:                                               ; preds = %30
  %35 = lshr i32 %31, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !16
  %40 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !16
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !16
  %48 = icmp ugt i8 %39, %47
  br i1 %48, label %49, label %112

49:                                               ; preds = %34
  %50 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %44, ptr noundef nonnull %2) #25
  %51 = icmp eq ptr %50, null
  br i1 %51, label %112, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %40, align 8, !tbaa !16
  tail call fastcc void @record_jump_cond(i32 noundef 81, i32 noundef %1, ptr noundef %53, ptr noundef nonnull %50) #25
  br label %112

54:                                               ; preds = %4
  %55 = icmp eq i32 %0, 80
  br i1 %55, label %56, label %112

56:                                               ; preds = %54
  %57 = load i32, ptr %2, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 39
  br i1 %59, label %60, label %84

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
  %69 = load i8, ptr %68, align 1, !tbaa !16
  %70 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !16
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !16
  %78 = icmp ult i8 %69, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %63
  %80 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %74, ptr noundef %3) #25
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %70, align 8, !tbaa !16
  tail call fastcc void @record_jump_cond(i32 noundef 80, i32 noundef %1, ptr noundef %83, ptr noundef nonnull %80) #25
  br label %84

84:                                               ; preds = %56, %60, %63, %82, %79
  %85 = load i32, ptr %3, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 39
  br i1 %87, label %88, label %112

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
  %97 = load i8, ptr %96, align 1, !tbaa !16
  %98 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !16
  %100 = load i32, ptr %99, align 8
  %101 = lshr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !16
  %106 = icmp ult i8 %97, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %91
  %108 = tail call fastcc ptr @record_jump_cond_subreg(i32 noundef %102, ptr noundef nonnull %2) #25
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %98, align 8, !tbaa !16
  tail call fastcc void @record_jump_cond(i32 noundef 80, i32 noundef %1, ptr noundef %111, ptr noundef nonnull %108) #25
  br label %112

112:                                              ; preds = %30, %34, %52, %49, %54, %107, %110, %91, %88, %84
  store i32 0, ptr @do_not_record, align 4, !tbaa !15
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !15
  %113 = load i32, ptr %2, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 37
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %118 = icmp ugt i32 %117, 52
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %117) #25
  %121 = getelementptr inbounds %struct.cse_reg_info, ptr %120, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !17
  %123 = add i32 %122, 4736
  br label %126

124:                                              ; preds = %116, %112
  %125 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %2, i32 noundef %1) #25
  br label %126

126:                                              ; preds = %124, %119
  %127 = phi i32 [ %123, %119 ], [ %125, %124 ]
  %128 = and i32 %127, 31
  %129 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !15
  %130 = load i32, ptr @do_not_record, align 4, !tbaa !15
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %352

132:                                              ; preds = %126
  store i32 0, ptr @do_not_record, align 4, !tbaa !15
  store i32 0, ptr @hash_arg_in_memory, align 4, !tbaa !15
  %133 = load i32, ptr %3, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 37
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  %138 = icmp ugt i32 %137, 52
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %137) #25
  %141 = getelementptr inbounds %struct.cse_reg_info, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !17
  %143 = add i32 %142, 4736
  br label %146

144:                                              ; preds = %136, %132
  %145 = tail call fastcc i32 @canon_hash(ptr noundef nonnull %3, i32 noundef %1) #25
  br label %146

146:                                              ; preds = %144, %139
  %147 = phi i32 [ %143, %139 ], [ %145, %144 ]
  %148 = and i32 %147, 31
  %149 = load i32, ptr @hash_arg_in_memory, align 4, !tbaa !15
  %150 = load i32, ptr @do_not_record, align 4, !tbaa !15
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %352

152:                                              ; preds = %146
  %153 = tail call fastcc ptr @lookup(ptr noundef nonnull %2, i32 noundef %128, i32 noundef %1) #25
  %154 = tail call fastcc ptr @lookup(ptr noundef nonnull %3, i32 noundef %148, i32 noundef %1) #25
  %155 = icmp ne ptr %153, null
  %156 = icmp ne ptr %154, null
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.table_elt, ptr %153, i64 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !116
  %161 = getelementptr inbounds %struct.table_elt, ptr %154, i64 0, i32 6
  %162 = load ptr, ptr %161, align 8, !tbaa !116
  %163 = icmp eq ptr %160, %162
  %164 = icmp eq ptr %2, %3
  %165 = or i1 %164, %163
  br i1 %165, label %352, label %168

166:                                              ; preds = %152
  %167 = icmp eq ptr %2, %3
  br i1 %167, label %352, label %168

168:                                              ; preds = %158, %166
  %169 = tail call i32 @rtx_equal_p(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %352

171:                                              ; preds = %168
  br i1 %5, label %172, label %179

172:                                              ; preds = %171
  %173 = load i32, ptr %2, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !16
  switch i8 %178, label %295 [
    i8 8, label %179
    i8 9, label %179
    i8 11, label %179
    i8 17, label %179
  ]

179:                                              ; preds = %172, %172, %172, %172, %171
  %180 = load i32, ptr %3, align 8
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 37
  br i1 %182, label %185, label %183

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
  br i1 %191, label %352, label %192

192:                                              ; preds = %185
  %193 = icmp eq ptr %153, null
  br i1 %193, label %194, label %241

194:                                              ; preds = %192
  %195 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #25, !range !34
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %235, label %197

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
  %207 = load i32, ptr %206, align 4, !tbaa !17
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
  %218 = load i32, ptr %217, align 4, !tbaa !15
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
  %228 = load i32, ptr %227, align 4, !tbaa !17
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
  store i8 %239, ptr %240, align 1, !tbaa !94
  br label %241

241:                                              ; preds = %235, %192
  %242 = phi i32 [ %236, %235 ], [ %148, %192 ]
  %243 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %244 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %243) #25
  %245 = getelementptr inbounds %struct.cse_reg_info, ptr %244, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !17
  %247 = load ptr, ptr @qty_table, align 8, !tbaa !6
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
  br i1 %256, label %257, label %292

257:                                              ; preds = %241
  %258 = tail call fastcc ptr @lookup(ptr noundef nonnull %186, i32 noundef %242, i32 noundef %1) #25
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %285

260:                                              ; preds = %257
  %261 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %186, ptr noundef null, i32 noundef 0) #25, !range !34
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
  %273 = load i32, ptr %272, align 4, !tbaa !17
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
  store i8 %283, ptr %284, align 1, !tbaa !94
  br label %285

285:                                              ; preds = %280, %257
  %286 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 2
  store ptr null, ptr %286, align 8, !tbaa !194
  %287 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %186) #25
  %288 = tail call fastcc ptr @get_cse_reg_info(i32 noundef %287) #25
  %289 = getelementptr inbounds %struct.cse_reg_info, ptr %288, i64 0, i32 1
  %290 = load i32, ptr %289, align 4, !tbaa !17
  %291 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 3
  store i32 %290, ptr %291, align 8, !tbaa !195
  br label %352

292:                                              ; preds = %241
  %293 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 2
  store ptr %186, ptr %293, align 8, !tbaa !194
  %294 = getelementptr inbounds %struct.qty_table_elem, ptr %247, i64 %248, i32 3
  store i32 -1, ptr %294, align 8, !tbaa !195
  br label %352

295:                                              ; preds = %172
  %296 = icmp eq ptr %153, null
  br i1 %296, label %297, label %322

297:                                              ; preds = %295
  %298 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #25, !range !34
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %317, label %300

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
  %310 = load i32, ptr %309, align 4, !tbaa !17
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
  store i8 %320, ptr %321, align 1, !tbaa !94
  br label %322

322:                                              ; preds = %317, %295
  %323 = phi ptr [ %319, %317 ], [ %153, %295 ]
  %324 = icmp eq ptr %154, null
  br i1 %324, label %325, label %350

325:                                              ; preds = %322
  %326 = tail call fastcc i32 @insert_regs(ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #25, !range !34
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %345, label %328

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
  %338 = load i32, ptr %337, align 4, !tbaa !17
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
  store i8 %348, ptr %349, align 1, !tbaa !94
  br label %350

350:                                              ; preds = %345, %322
  %351 = phi ptr [ %347, %345 ], [ %154, %322 ]
  tail call fastcc void @merge_equiv_classes(ptr noundef nonnull %323, ptr noundef nonnull %351) #25
  br label %352

352:                                              ; preds = %185, %292, %285, %158, %166, %168, %146, %126, %350
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @record_jump_cond_subreg(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @delete_trivially_dead_insns(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 25) #23
  br label %6

6:                                                ; preds = %5, %2
  %7 = sext i32 %1 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 4) #23
  %9 = icmp eq ptr %0, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6, %17
  %11 = phi ptr [ %19, %17 ], [ %0, %6 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call fastcc void @count_reg_usage(ptr noundef nonnull %11, ptr noundef %8, ptr noundef null, i32 noundef 1) #25
  br label %17

17:                                               ; preds = %10, %16
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !228

21:                                               ; preds = %17, %6
  %22 = tail call ptr @get_last_insn() #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %21, %42
  %25 = phi i32 [ %43, %42 ], [ 0, %21 ]
  %26 = phi ptr [ %28, %42 ], [ %22, %21 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = load i32, ptr %26, align 8
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -7
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = tail call fastcc zeroext i8 @insn_live_p(ptr noundef nonnull %26, ptr noundef %8) #25
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = tail call zeroext i8 @dbg_cnt(i32 noundef 8) #23
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  tail call fastcc void @count_reg_usage(ptr noundef nonnull %26, ptr noundef %8, ptr noundef null, i32 noundef -1) #25
  %40 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %26) #23
  %41 = add nsw i32 %25, 1
  br label %42

42:                                               ; preds = %24, %33, %36, %39
  %43 = phi i32 [ %25, %24 ], [ %25, %33 ], [ %41, %39 ], [ %25, %36 ]
  %44 = icmp eq ptr %28, null
  br i1 %44, label %45, label %24, !llvm.loop !229

45:                                               ; preds = %42
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %47 = icmp ne ptr %46, null
  %48 = icmp ne i32 %43, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.8, i32 noundef %43) #25
  br label %52

52:                                               ; preds = %21, %50, %45
  %53 = phi i32 [ %43, %50 ], [ %43, %45 ], [ 0, %21 ]
  tail call void @free(ptr noundef %8) #25
  %54 = load i8, ptr @timevar_enable, align 1, !tbaa !16
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

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
define internal fastcc void @count_reg_usage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %148, label %6

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
  ]

12:                                               ; preds = %6
  %13 = icmp eq ptr %8, %7
  br i1 %13, label %148, label %14

14:                                               ; preds = %12
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #25
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !15
  %19 = add nsw i32 %18, %3
  store i32 %19, ptr %17, align 4, !tbaa !15
  br label %148

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !16
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 43
  br i1 %25, label %26, label %148

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  br label %29

29:                                               ; preds = %44, %40, %26, %93, %60
  %30 = phi ptr [ %28, %26 ], [ %95, %93 ], [ %62, %60 ], [ %42, %40 ], [ %42, %44 ]
  %31 = phi ptr [ null, %26 ], [ null, %93 ], [ %50, %60 ], [ %7, %40 ], [ %45, %44 ]
  %32 = icmp eq ptr %30, null
  br i1 %32, label %148, label %6

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !16
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 37
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call fastcc void @count_reg_usage(ptr noundef nonnull %35, ptr noundef %1, ptr noundef null, i32 noundef %3) #25
  br label %40

40:                                               ; preds = %39, %33
  %41 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  %43 = icmp eq ptr %7, null
  br i1 %43, label %44, label %29

44:                                               ; preds = %40
  %45 = load ptr, ptr %34, align 8, !tbaa !16
  br label %29

46:                                               ; preds = %6, %6, %6
  %47 = tail call zeroext i8 @insn_could_throw_p(ptr noundef nonnull %8) #23
  %48 = icmp eq i8 %47, 0
  %49 = load ptr, ptr @global_rtl, align 16
  %50 = select i1 %48, ptr %7, ptr %49
  %51 = icmp eq i32 %10, 10
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !16
  tail call fastcc void @count_reg_usage(ptr noundef %54, ptr noundef %1, ptr noundef %50, i32 noundef %3) #25
  br label %55

55:                                               ; preds = %52, %46
  %56 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !16
  tail call fastcc void @count_reg_usage(ptr noundef %57, ptr noundef %1, ptr noundef %50, i32 noundef %3) #25
  %58 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %8) #23
  %59 = icmp eq ptr %58, null
  br i1 %59, label %148, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %29

66:                                               ; preds = %60, %73
  %67 = phi ptr [ %71, %73 ], [ %62, %60 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  tail call fastcc void @count_reg_usage(ptr noundef %69, ptr noundef %1, ptr noundef %50, i32 noundef %3) #25
  %70 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %148, label %73

73:                                               ; preds = %66
  %74 = load i32, ptr %71, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %66, label %148, !llvm.loop !230

77:                                               ; preds = %6
  %78 = lshr i32 %9, 16
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !16
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
  %95 = load ptr, ptr %94, align 8, !tbaa !16
  br label %29

96:                                               ; preds = %6
  %97 = and i32 %9, 134217728
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, ptr %7, ptr null
  %100 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !16
  %102 = load i32, ptr %101, align 8, !tbaa !19
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %148

104:                                              ; preds = %96
  %105 = zext nneg i32 %102 to i64
  br label %106

106:                                              ; preds = %104, %106
  %107 = phi i64 [ %105, %104 ], [ %108, %106 ]
  %108 = add nsw i64 %107, -1
  %109 = load ptr, ptr %100, align 8, !tbaa !16
  %110 = getelementptr inbounds %struct.rtvec_def, ptr %109, i64 0, i32 1, i64 %108
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  tail call fastcc void @count_reg_usage(ptr noundef %111, ptr noundef %1, ptr noundef %99, i32 noundef %3) #25
  %112 = icmp ugt i64 %107, 1
  br i1 %112, label %106, label %148, !llvm.loop !231

113:                                              ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6682, ptr noundef nonnull @.str.4) #23
  br label %114

114:                                              ; preds = %6, %113
  %115 = zext nneg i32 %10 to i64
  %116 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %115
  %119 = load i8, ptr %118, align 1, !tbaa !16
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %148, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %123 = zext i8 %119 to i64
  br label %124

124:                                              ; preds = %121, %146
  %125 = phi i64 [ %123, %121 ], [ %126, %146 ]
  %126 = add nsw i64 %125, -1
  %127 = getelementptr inbounds i8, ptr %117, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !16
  switch i8 %128, label %146 [
    i8 101, label %129
    i8 69, label %132
  ]

129:                                              ; preds = %124
  %130 = getelementptr inbounds [1 x %union.rtunion_def], ptr %122, i64 0, i64 %126
  %131 = load ptr, ptr %130, align 8, !tbaa !16
  tail call fastcc void @count_reg_usage(ptr noundef %131, ptr noundef %1, ptr noundef %7, i32 noundef %3) #25
  br label %146

132:                                              ; preds = %124
  %133 = getelementptr inbounds [1 x %union.rtunion_def], ptr %122, i64 0, i64 %126
  %134 = load ptr, ptr %133, align 8, !tbaa !16
  %135 = load i32, ptr %134, align 8, !tbaa !19
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = zext nneg i32 %135 to i64
  br label %139

139:                                              ; preds = %137, %139
  %140 = phi i64 [ %138, %137 ], [ %141, %139 ]
  %141 = add nsw i64 %140, -1
  %142 = load ptr, ptr %133, align 8, !tbaa !16
  %143 = getelementptr inbounds %struct.rtvec_def, ptr %142, i64 0, i32 1, i64 %141
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  tail call fastcc void @count_reg_usage(ptr noundef %144, ptr noundef %1, ptr noundef %7, i32 noundef %3) #25
  %145 = icmp ugt i64 %140, 1
  br i1 %145, label %139, label %146, !llvm.loop !232

146:                                              ; preds = %139, %132, %124, %129
  %147 = icmp sgt i64 %125, 1
  br i1 %147, label %124, label %148, !llvm.loop !233

148:                                              ; preds = %29, %20, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %55, %106, %66, %73, %146, %4, %96, %114, %12, %14
  ret void
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @insn_live_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i8 @insn_could_throw_p(ptr noundef %0) #23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %69

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %34 [
    i16 23, label %10
    i16 15, label %12
  ]

10:                                               ; preds = %5
  %11 = tail call fastcc zeroext i8 @set_live_p(ptr noundef nonnull %7, ptr noundef %1) #25
  br label %69

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = load i32, ptr %14, align 8, !tbaa !19
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %32
  %20 = phi i64 [ %18, %17 ], [ %21, %32 ]
  %21 = add nsw i64 %20, -1
  %22 = load ptr, ptr %6, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %69 [
    i16 23, label %29
    i16 25, label %32
    i16 24, label %32
  ]

29:                                               ; preds = %19
  %30 = tail call fastcc zeroext i8 @set_live_p(ptr noundef nonnull %26, ptr noundef %1) #25
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %19, %19, %29
  %33 = icmp ugt i64 %20, 1
  br i1 %33, label %19, label %69, !llvm.loop !234

34:                                               ; preds = %5
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 7
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !16
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
  %49 = load ptr, ptr %43, align 8, !tbaa !16
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !16
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = icmp eq ptr %49, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %44, %48
  %56 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44, !llvm.loop !235

59:                                               ; preds = %55, %38
  %60 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = tail call i32 @for_each_rtx(ptr noundef nonnull %60, ptr noundef nonnull @is_dead_reg, ptr noundef %1) #23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %65 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %64) #23
  %66 = load ptr, ptr %6, align 8, !tbaa !16
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %65, ptr %67, align 8, !tbaa !16
  %68 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #23
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
define internal fastcc noundef zeroext i8 @set_live_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i32 @set_noop_p(ptr noundef %0) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = tail call i32 @is_dead_reg(ptr noundef nonnull %6, ptr noundef %1) #25, !range !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = tail call i32 @side_effects_p(ptr noundef %11) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  br label %15

15:                                               ; preds = %5, %9, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %9 ], [ 1, %5 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @is_dead_reg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  %9 = icmp ugt i32 %8, 52
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !15
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
define internal zeroext i8 @gate_handle_cse() #8 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !15
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_cse() #0 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !15
  tail call void @dump_flow_info(ptr noundef nonnull %1, i32 noundef %4) #23
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call ptr @get_insns() #23
  %7 = tail call i32 @max_reg_num() #23
  %8 = tail call i32 @cse_main(ptr poison, i32 noundef %7) #25, !range !236
  %9 = load i32, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !15
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr @flag_gcse, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  %14 = zext i1 %13 to i32
  store i32 %14, ptr @cse_not_expected, align 4, !tbaa !15
  %15 = icmp eq i32 %8, 2
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load i8, ptr @timevar_enable, align 1, !tbaa !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @timevar_push_1(i32 noundef 119) #23
  br label %20

20:                                               ; preds = %19, %16
  %21 = tail call ptr @get_insns() #23
  tail call void @rebuild_jump_labels(ptr noundef %21) #23
  %22 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  %23 = load i8, ptr @timevar_enable, align 1, !tbaa !16
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
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  br label %33

33:                                               ; preds = %31, %26, %20, %25
  ret i32 0
}

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_cse2() #8 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !15
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_rerun_cse_after_loop, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_cse2() #0 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !15
  tail call void @dump_flow_info(ptr noundef nonnull %1, i32 noundef %4) #23
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call ptr @get_insns() #23
  %7 = tail call i32 @max_reg_num() #23
  %8 = tail call i32 @cse_main(ptr poison, i32 noundef %7) #25, !range !236
  tail call fastcc void @cse_condition_code_reg() #25
  %9 = tail call ptr @get_insns() #23
  %10 = tail call i32 @max_reg_num() #23
  %11 = tail call i32 @delete_trivially_dead_insns(ptr noundef %9, i32 noundef %10) #25
  switch i32 %8, label %24 [
    i32 2, label %12
    i32 1, label %22
  ]

12:                                               ; preds = %5
  %13 = load i8, ptr @timevar_enable, align 1, !tbaa !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @timevar_push_1(i32 noundef 119) #23
  br label %16

16:                                               ; preds = %15, %12
  %17 = tail call ptr @get_insns() #23
  tail call void @rebuild_jump_labels(ptr noundef %17) #23
  %18 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  %19 = load i8, ptr @timevar_enable, align 1, !tbaa !16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  tail call void @timevar_pop_1(i32 noundef 119) #23
  br label %24

22:                                               ; preds = %5
  %23 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  br label %24

24:                                               ; preds = %5, %22, %16, %21
  store i32 1, ptr @cse_not_expected, align 4, !tbaa !15
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_condition_code_reg() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 66), align 8, !tbaa !237
  %4 = call zeroext i8 %3(ptr noundef nonnull %1, ptr noundef nonnull %2) #23
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %125, label %6

6:                                                ; preds = %0
  %7 = load i32, ptr %1, align 4, !tbaa !15
  %8 = call ptr @gen_rtx_REG(i32 noundef 2, i32 noundef %7) #23
  %9 = load i32, ptr %2, align 4, !tbaa !15
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = call ptr @gen_rtx_REG(i32 noundef 2, i32 noundef %9) #23
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi ptr [ %12, %11 ], [ null, %6 ]
  %15 = load ptr, ptr @cfun, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = load ptr, ptr %17, align 8, !tbaa !238
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !239
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %125, label %24

24:                                               ; preds = %13
  %25 = icmp eq ptr %14, null
  br label %26

26:                                               ; preds = %24, %116
  %27 = phi ptr [ %20, %24 ], [ %118, %116 ]
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.rtl_bb_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %35, label %116

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = call i32 @reg_referenced_p(ptr noundef %8, ptr noundef %37) #23
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  br i1 %25, label %116, label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr %36, align 8, !tbaa !16
  %43 = call i32 @reg_referenced_p(ptr noundef nonnull %14, ptr noundef %42) #23
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %116, label %45

45:                                               ; preds = %41, %35
  %46 = phi ptr [ %8, %35 ], [ %14, %41 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %116, label %50

50:                                               ; preds = %45, %92
  %51 = phi ptr [ %94, %92 ], [ %48, %45 ]
  %52 = load ptr, ptr %28, align 8, !tbaa !16
  %53 = load ptr, ptr %52, align 8, !tbaa !167
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !16
  %56 = icmp eq ptr %51, %55
  br i1 %56, label %116, label %57

57:                                               ; preds = %50
  %58 = load i32, ptr %51, align 8
  %59 = and i32 %58, 65535
  %60 = add nsw i32 %59, -7
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !16
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 23
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = call ptr @single_set_2(ptr noundef nonnull %51, ptr noundef nonnull %64) #23
  %70 = icmp eq ptr %69, null
  br i1 %70, label %89, label %71

71:                                               ; preds = %62, %68
  %72 = phi ptr [ %69, %68 ], [ %64, %62 ]
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !16
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 37
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = call fastcc i32 @rhs_regno(ptr noundef nonnull %74) #25
  %80 = call fastcc i32 @rhs_regno(ptr noundef %46) #25
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !16
  %85 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !16
  %87 = call i32 @modified_between_p(ptr noundef %84, ptr noundef nonnull %51, ptr noundef %86) #23
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %116

89:                                               ; preds = %78, %71, %68
  %90 = call i32 @reg_set_p(ptr noundef %46, ptr noundef nonnull %51) #23
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %89, %57
  %93 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %116, label %50, !llvm.loop !240

96:                                               ; preds = %82
  %97 = load i32, ptr %84, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = call fastcc i32 @cse_cc_succs(ptr noundef nonnull %27, ptr noundef nonnull %27, ptr noundef %46, ptr noundef nonnull %84, i8 noundef zeroext 1) #25
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %96
  %103 = load i32, ptr %84, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = icmp eq i32 %100, %105
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 7206, ptr noundef nonnull @.str.4) #23
  br label %108

108:                                              ; preds = %102, %107
  %109 = icmp eq i32 %100, %99
  br i1 %109, label %116, label %110

110:                                              ; preds = %108
  %111 = call fastcc i32 @rhs_regno(ptr noundef %46) #25
  %112 = call ptr @gen_rtx_REG(i32 noundef %100, i32 noundef %111) #23
  call fastcc void @cse_change_cc_mode_insn(ptr noundef nonnull %51, ptr noundef %112) #25
  %113 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %114 = load ptr, ptr %113, align 8, !tbaa !16
  %115 = load ptr, ptr %85, align 8, !tbaa !16
  call fastcc void @cse_change_cc_mode_insns(ptr noundef %114, ptr noundef %115, ptr noundef %112) #25
  br label %116

116:                                              ; preds = %92, %50, %89, %45, %96, %110, %108, %82, %40, %41, %26
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !239
  %119 = load ptr, ptr @cfun, align 8, !tbaa !6
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !38
  %122 = getelementptr inbounds %struct.control_flow_graph, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !70
  %124 = icmp eq ptr %118, %123
  br i1 %124, label %125, label %26, !llvm.loop !241

125:                                              ; preds = %116, %13, %0
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
define internal fastcc i32 @cse_cc_succs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
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
  store i32 0, ptr %10, align 8, !tbaa.struct !85
  %14 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !86
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %6) #25, !range !56
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %226, label %17

17:                                               ; preds = %5
  %18 = lshr i32 %11, 16
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %21 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %22

22:                                               ; preds = %17, %178
  %23 = phi i8 [ %4, %17 ], [ %182, %178 ]
  %24 = phi i8 [ 0, %17 ], [ %181, %178 ]
  %25 = phi i32 [ %19, %17 ], [ %180, %178 ]
  %26 = phi i32 [ 0, %17 ], [ %179, %178 ]
  %27 = load ptr, ptr %6, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !67
  %30 = and i32 %29, 14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %178

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  %35 = load ptr, ptr %34, align 8, !tbaa !81
  %36 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %35) #25
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %178

38:                                               ; preds = %32
  %39 = load ptr, ptr @cfun, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = icmp eq ptr %34, %43
  %45 = icmp eq ptr %34, %1
  %46 = or i1 %45, %44
  br i1 %46, label %178, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !16
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = load ptr, ptr %49, align 8, !tbaa !16
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %168, label %56

56:                                               ; preds = %47
  %57 = icmp eq i8 %23, 0
  br label %58

58:                                               ; preds = %56, %159
  %59 = phi ptr [ %54, %56 ], [ %164, %159 ]
  %60 = phi i8 [ %24, %56 ], [ %160, %159 ]
  %61 = phi i32 [ %25, %56 ], [ %161, %159 ]
  %62 = phi i32 [ %26, %56 ], [ %162, %159 ]
  %63 = load i32, ptr %59, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %159

67:                                               ; preds = %58
  %68 = tail call i32 @modified_in_p(ptr noundef nonnull %3, ptr noundef nonnull %59) #23
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %178

70:                                               ; preds = %67
  %71 = load i32, ptr %59, align 8
  %72 = and i32 %71, 65535
  %73 = add nsw i32 %72, -7
  %74 = icmp ult i32 %73, 4
  br i1 %74, label %75, label %156

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !16
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 23
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = tail call ptr @single_set_2(ptr noundef nonnull %59, ptr noundef nonnull %77) #23
  %83 = icmp eq ptr %82, null
  br i1 %83, label %156, label %84

84:                                               ; preds = %75, %81
  %85 = phi ptr [ %82, %81 ], [ %77, %75 ]
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !16
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 37
  br i1 %90, label %91, label %156

91:                                               ; preds = %84
  %92 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %87) #25
  %93 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #25
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %156

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !16
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  %101 = tail call i32 @rtx_equal_p(ptr noundef nonnull %3, ptr noundef nonnull %97) #23
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %95
  %104 = load i32, ptr %3, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 48
  br i1 %106, label %107, label %178

107:                                              ; preds = %103
  %108 = load ptr, ptr %96, align 8, !tbaa !16
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp ne i32 %110, 48
  %112 = icmp eq i32 %61, %100
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %178, label %114

114:                                              ; preds = %107
  %115 = load ptr, ptr %20, align 8, !tbaa !16
  %116 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !16
  %118 = tail call i32 @rtx_equal_p(ptr noundef %115, ptr noundef %117) #23
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %178, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %21, align 8, !tbaa !16
  %122 = load ptr, ptr %96, align 8, !tbaa !16
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !16
  %125 = tail call i32 @rtx_equal_p(ptr noundef %121, ptr noundef %124) #23
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %178, label %127

127:                                              ; preds = %120
  %128 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 67), align 8, !tbaa !242
  %129 = tail call i32 %128(i32 noundef %61, i32 noundef %100) #23
  %130 = icmp eq i32 %129, 0
  %131 = icmp ne i32 %129, %61
  %132 = select i1 %57, i1 %131, i1 false
  %133 = select i1 %130, i1 true, i1 %132
  br i1 %133, label %178, label %134

134:                                              ; preds = %127, %95
  %135 = phi i32 [ %100, %95 ], [ %129, %127 ]
  %136 = icmp ult i32 %62, 2
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = zext nneg i32 %62 to i64
  %139 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %138
  store ptr %59, ptr %139, align 8, !tbaa !6
  %140 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %138
  store i32 %100, ptr %140, align 4, !tbaa !15
  %141 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %138
  store ptr %53, ptr %141, align 8, !tbaa !6
  %142 = add nuw nsw i32 %62, 1
  %143 = icmp eq i32 %61, %135
  br i1 %143, label %159, label %144

144:                                              ; preds = %137
  br i1 %57, label %145, label %146

145:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 7028, ptr noundef nonnull @.str.4) #23
  br label %146

146:                                              ; preds = %144, %145
  %147 = load i32, ptr %3, align 8
  %148 = shl i32 %135, 16
  %149 = and i32 %148, 16711680
  %150 = and i32 %147, -16711681
  %151 = or disjoint i32 %150, %149
  store i32 %151, ptr %3, align 8
  br label %159

152:                                              ; preds = %134
  %153 = icmp eq i32 %100, %61
  br i1 %153, label %154, label %178

154:                                              ; preds = %152
  %155 = tail call ptr @delete_insn(ptr noundef nonnull %59) #23
  br label %159

156:                                              ; preds = %70, %81, %84, %91
  %157 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef nonnull %59) #23
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %154, %146, %137, %58, %156
  %160 = phi i8 [ %60, %156 ], [ 1, %154 ], [ 1, %146 ], [ 1, %137 ], [ %60, %58 ]
  %161 = phi i32 [ %61, %156 ], [ %61, %154 ], [ %135, %146 ], [ %61, %137 ], [ %61, %58 ]
  %162 = phi i32 [ %62, %156 ], [ %62, %154 ], [ %142, %146 ], [ %142, %137 ], [ %62, %58 ]
  %163 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %164 = load ptr, ptr %163, align 8, !tbaa !16
  %165 = icmp eq ptr %164, %53
  br i1 %165, label %166, label %58, !llvm.loop !243

166:                                              ; preds = %159
  %167 = load ptr, ptr %33, align 8, !tbaa !69
  br label %168

168:                                              ; preds = %166, %47
  %169 = phi ptr [ %34, %47 ], [ %167, %166 ]
  %170 = phi i32 [ %26, %47 ], [ %162, %166 ]
  %171 = phi i32 [ %25, %47 ], [ %161, %166 ]
  %172 = phi i8 [ %24, %47 ], [ %160, %166 ]
  %173 = tail call fastcc i32 @cse_cc_succs(ptr noundef %169, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext 0) #25
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %168
  %176 = icmp eq i32 %173, %171
  br i1 %176, label %178, label %177

177:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 7078, ptr noundef nonnull @.str.4) #23
  br label %178

178:                                              ; preds = %103, %107, %114, %120, %127, %152, %67, %156, %177, %175, %168, %32, %38, %22
  %179 = phi i32 [ %26, %22 ], [ %26, %38 ], [ %26, %32 ], [ %170, %168 ], [ %170, %175 ], [ %170, %177 ], [ %62, %156 ], [ %62, %67 ], [ %62, %152 ], [ %62, %127 ], [ %62, %120 ], [ %62, %114 ], [ %62, %107 ], [ %62, %103 ]
  %180 = phi i32 [ %25, %22 ], [ %25, %38 ], [ %25, %32 ], [ %171, %168 ], [ %171, %175 ], [ %171, %177 ], [ %61, %156 ], [ %61, %67 ], [ %61, %152 ], [ %61, %127 ], [ %61, %120 ], [ %61, %114 ], [ %61, %107 ], [ %61, %103 ]
  %181 = phi i8 [ %24, %22 ], [ %24, %38 ], [ %24, %32 ], [ %172, %168 ], [ 1, %175 ], [ 1, %177 ], [ %60, %103 ], [ %60, %107 ], [ %60, %114 ], [ %60, %120 ], [ %60, %127 ], [ 1, %152 ], [ %60, %67 ], [ %60, %156 ]
  %182 = phi i8 [ %23, %22 ], [ %23, %38 ], [ %23, %32 ], [ %23, %168 ], [ 0, %175 ], [ 0, %177 ], [ %23, %156 ], [ %23, %67 ], [ %23, %152 ], [ %23, %127 ], [ %23, %120 ], [ %23, %114 ], [ %23, %107 ], [ %23, %103 ]
  call fastcc void @ei_next(ptr noundef nonnull %10) #25
  %183 = load i32, ptr %10, align 8
  %184 = load ptr, ptr %14, align 8
  %185 = call fastcc zeroext i8 @ei_cond(i32 %183, ptr %184, ptr noundef nonnull %6) #25, !range !56
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %22, !llvm.loop !244

187:                                              ; preds = %178
  %188 = icmp eq i8 %181, 0
  br i1 %188, label %226, label %189

189:                                              ; preds = %187
  %190 = icmp eq i32 %179, 0
  br i1 %190, label %226, label %191

191:                                              ; preds = %189
  %192 = zext i32 %179 to i64
  br label %193

193:                                              ; preds = %191, %220
  %194 = phi i64 [ 0, %191 ], [ %224, %220 ]
  %195 = phi ptr [ null, %191 ], [ %222, %220 ]
  %196 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %194
  %197 = load i32, ptr %196, align 4, !tbaa !15
  %198 = icmp eq i32 %197, %180
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %194
  %201 = load ptr, ptr %200, align 8, !tbaa !6
  br label %220

202:                                              ; preds = %193
  %203 = icmp eq ptr %195, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %202
  %205 = load i32, ptr %2, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = icmp eq i32 %207, %180
  br i1 %208, label %212, label %209

209:                                              ; preds = %204
  %210 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %211 = tail call ptr @gen_rtx_REG(i32 noundef %180, i32 noundef %210) #23
  br label %212

212:                                              ; preds = %204, %209, %202
  %213 = phi ptr [ %195, %202 ], [ %211, %209 ], [ %2, %204 ]
  %214 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %194
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  %216 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1, i32 0, i32 0, i64 2
  %217 = load ptr, ptr %216, align 8, !tbaa !16
  %218 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %194
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  tail call fastcc void @cse_change_cc_mode_insns(ptr noundef %217, ptr noundef %219, ptr noundef %213) #25
  br label %220

220:                                              ; preds = %199, %212
  %221 = phi ptr [ %215, %212 ], [ %201, %199 ]
  %222 = phi ptr [ %213, %212 ], [ %195, %199 ]
  %223 = tail call ptr @delete_insn_and_edges(ptr noundef %221) #23
  %224 = add nuw nsw i64 %194, 1
  %225 = icmp eq i64 %224, %192
  br i1 %225, label %226, label %193, !llvm.loop !245

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
define internal fastcc void @cse_change_cc_mode_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.change_cc_mode_args, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !246
  %9 = getelementptr inbounds %struct.change_cc_mode_args, ptr %3, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !248
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %11 = call i32 @for_each_rtx(ptr noundef nonnull %10, ptr noundef nonnull @cse_change_cc_mode, ptr noundef nonnull %3) #23
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = call i32 @for_each_rtx(ptr noundef nonnull %12, ptr noundef nonnull @cse_change_cc_mode, ptr noundef nonnull %3) #23
  %14 = call i32 @apply_change_group() #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 6895, ptr noundef nonnull @.str.4) #23
  br label %17

17:                                               ; preds = %2, %16, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cse_change_cc_mode_insns(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %19, label %5

5:                                                ; preds = %3, %15
  %6 = phi ptr [ %17, %15 ], [ %0, %3 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef nonnull %6) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  tail call fastcc void @cse_change_cc_mode_insn(ptr noundef nonnull %6, ptr noundef %2) #25
  br label %15

15:                                               ; preds = %5, %14
  %16 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %5, !llvm.loop !249

19:                                               ; preds = %11, %15, %3
  ret void
}

; Function Attrs: optsize
declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cse_change_cc_mode(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  %11 = getelementptr inbounds %struct.change_cc_mode_args, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !248
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef %12) #25
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load i32, ptr %12, align 8
  %17 = xor i32 %16, %6
  %18 = and i32 %17, 16711680
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %1, align 8, !tbaa !246
  %22 = tail call zeroext i8 @validate_change(ptr noundef %21, ptr noundef nonnull %0, ptr noundef nonnull %12, i8 noundef zeroext 1) #23
  br label %23

23:                                               ; preds = %2, %5, %9, %15, %20
  %24 = phi i32 [ -1, %20 ], [ 0, %15 ], [ 0, %9 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_cse_after_global_opts() #8 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !15
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_cse_after_global_opts() #0 {
  %1 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !15
  store i32 0, ptr @flag_cse_follow_jumps, align 4, !tbaa !15
  %2 = tail call ptr @get_insns() #23
  tail call void @rebuild_jump_labels(ptr noundef %2) #23
  %3 = tail call ptr @get_insns() #23
  %4 = tail call i32 @max_reg_num() #23
  %5 = tail call i32 @cse_main(ptr poison, i32 noundef %4) #25, !range !236
  %6 = tail call zeroext i8 @purge_all_dead_edges() #23
  %7 = tail call ptr @get_insns() #23
  %8 = tail call i32 @max_reg_num() #23
  %9 = tail call i32 @delete_trivially_dead_insns(ptr noundef %7, i32 noundef %8) #25
  %10 = load i32, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !15
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, ptr @cse_not_expected, align 4, !tbaa !15
  switch i32 %5, label %25 [
    i32 2, label %13
    i32 1, label %23
  ]

13:                                               ; preds = %0
  %14 = load i8, ptr @timevar_enable, align 1, !tbaa !16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @timevar_push_1(i32 noundef 119) #23
  br label %17

17:                                               ; preds = %16, %13
  %18 = tail call ptr @get_insns() #23
  tail call void @rebuild_jump_labels(ptr noundef %18) #23
  %19 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  %20 = load i8, ptr @timevar_enable, align 1, !tbaa !16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  tail call void @timevar_pop_1(i32 noundef 119) #23
  br label %25

23:                                               ; preds = %0
  %24 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #23
  br label %25

25:                                               ; preds = %0, %23, %17, %22
  store i32 %1, ptr @flag_cse_follow_jumps, align 4, !tbaa !15
  ret i32 0
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
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { cold }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind }
attributes #25 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"table_elt", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !12, i64 64, !12, i64 68, !12, i64 72, !8, i64 73, !8, i64 74, !8, i64 75}
!12 = !{!"int", !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!12, !12, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!18, !12, i64 4}
!18 = !{!"cse_reg_info", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16}
!19 = !{!20, !12, i64 0}
!20 = !{!"rtvec_def", !12, i64 0, !8, i64 8}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = !{!18, !12, i64 0}
!27 = distinct !{!27, !14}
!28 = !{!18, !12, i64 8}
!29 = !{!18, !12, i64 12}
!30 = !{!18, !12, i64 16}
!31 = !{!32, !8, i64 32}
!32 = !{!"mem_attrs", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !8, i64 32}
!33 = distinct !{!33, !14}
!34 = !{i32 0, i32 2}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = !{!39, !7, i64 8}
!39 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!40 = !{!41, !12, i64 32}
!41 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 60, !12, i64 68, !12, i64 72}
!42 = !{!43, !12, i64 8}
!43 = !{!"param_info", !7, i64 0, !12, i64 8, !8, i64 12, !12, i64 16, !12, i64 20, !7, i64 24}
!44 = !{!45, !7, i64 8}
!45 = !{!"cse_basic_block_data", !12, i64 0, !12, i64 4, !7, i64 8}
!46 = !{!45, !12, i64 4}
!47 = !{!45, !12, i64 0}
!48 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 8, !6, i64 32, i64 8, !6}
!49 = distinct !{!49, !14}
!50 = !{!41, !7, i64 16}
!51 = !{!52, !12, i64 80}
!52 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !53, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!53 = !{!"long", !8, i64 0}
!54 = !{!53, !53, i64 0}
!55 = distinct !{!55, !14}
!56 = !{i8 0, i8 2}
!57 = distinct !{!57, !14}
!58 = !{!59, !7, i64 0}
!59 = !{!"simple_bitmap_def", !7, i64 0, !12, i64 8, !12, i64 12, !8, i64 16}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = !{!63, !7, i64 0}
!63 = !{!"branch_path", !7, i64 0}
!64 = !{!52, !7, i64 8}
!65 = !{!66, !7, i64 8}
!66 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32}
!67 = !{!68, !12, i64 48}
!68 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !53, i64 56}
!69 = !{!68, !7, i64 8}
!70 = !{!41, !7, i64 8}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = !{!80, !12, i64 0}
!80 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !8, i64 8}
!81 = !{!52, !7, i64 0}
!82 = !{!11, !7, i64 16}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !14}
!85 = !{i64 0, i64 4, !15, i64 8, i64 8, !6}
!86 = !{i64 0, i64 8, !6}
!87 = distinct !{!87, !14}
!88 = !{!89, !7, i64 0}
!89 = !{!"df_scan_bb_info", !7, i64 0, !7, i64 8}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = !{!11, !8, i64 73}
!95 = !{!11, !7, i64 8}
!96 = !{!97, !7, i64 8}
!97 = !{!"check_dependence_data", !12, i64 0, !7, i64 8, !7, i64 16}
!98 = !{!97, !7, i64 16}
!99 = !{!97, !12, i64 0}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = !{!106, !7, i64 0}
!106 = !{!"set", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !7, i64 32, !8, i64 40, !8, i64 41, !12, i64 42, !7, i64 48, !12, i64 56, !7, i64 64, !7, i64 72}
!107 = distinct !{!107, !14}
!108 = distinct !{!108, !14}
!109 = distinct !{!109, !14}
!110 = distinct !{!110, !14}
!111 = !{!106, !7, i64 8}
!112 = !{!106, !12, i64 24}
!113 = !{!106, !8, i64 41}
!114 = !{!106, !8, i64 40}
!115 = !{!106, !7, i64 16}
!116 = !{!11, !7, i64 48}
!117 = !{!11, !8, i64 74}
!118 = distinct !{!118, !14}
!119 = !{!106, !12, i64 56}
!120 = !{!106, !7, i64 48}
!121 = !{!106, !7, i64 64}
!122 = !{!11, !7, i64 56}
!123 = distinct !{!123, !14}
!124 = !{!125, !7, i64 0}
!125 = !{!"rtl_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = !{!130, !53, i64 1464}
!130 = !{!"gcc_target", !131, i64 0, !133, i64 368, !134, i64 664, !12, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !53, i64 1064, !53, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !135, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !53, i64 1464, !136, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !137, i64 1784, !138, i64 1792, !139, i64 1896, !140, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!131 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !132, i64 24, !132, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!132 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!133 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!134 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!135 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!136 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!137 = !{!"c", !7, i64 0}
!138 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!139 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!140 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!141 = !{!11, !7, i64 32}
!142 = distinct !{!142, !14}
!143 = distinct !{!143, !14}
!144 = !{!11, !12, i64 64}
!145 = !{!11, !12, i64 68}
!146 = distinct !{!146, !14}
!147 = !{!148, !12, i64 28}
!148 = !{!"qty_table_elem", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 38}
!149 = distinct !{!149, !14}
!150 = !{!106, !7, i64 32}
!151 = !{!106, !12, i64 28}
!152 = distinct !{!152, !14}
!153 = distinct !{!153, !14}
!154 = distinct !{!154, !14}
!155 = !{!106, !7, i64 72}
!156 = distinct !{!156, !14}
!157 = distinct !{!157, !14}
!158 = distinct !{!158, !14}
!159 = distinct !{!159, !14}
!160 = !{!11, !7, i64 40}
!161 = distinct !{!161, !14}
!162 = distinct !{!162, !14}
!163 = distinct !{!163, !14}
!164 = distinct !{!164, !14}
!165 = distinct !{!165, !14}
!166 = distinct !{!166, !14}
!167 = !{!66, !7, i64 0}
!168 = distinct !{!168, !14}
!169 = !{!170, !12, i64 0}
!170 = !{!"", !12, i64 0, !7, i64 8}
!171 = !{!172, !12, i64 16}
!172 = !{!"dataflow", !7, i64 0, !7, i64 8, !12, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!173 = !{!172, !7, i64 8}
!174 = !{!175, !12, i64 4}
!175 = !{!"reg_eqv_elem", !12, i64 0, !12, i64 4}
!176 = !{!175, !12, i64 0}
!177 = !{!148, !12, i64 32}
!178 = distinct !{!178, !14}
!179 = distinct !{!179, !14}
!180 = !{!11, !7, i64 24}
!181 = distinct !{!181, !14, !182, !183}
!182 = !{!"llvm.loop.isvectorized", i32 1}
!183 = !{!"llvm.loop.unroll.runtime.disable"}
!184 = distinct !{!184, !14}
!185 = distinct !{!185, !14}
!186 = distinct !{!186, !14}
!187 = !{!148, !7, i64 0}
!188 = distinct !{!188, !14}
!189 = distinct !{!189, !14}
!190 = distinct !{!190, !14}
!191 = distinct !{!191, !14}
!192 = distinct !{!192, !14}
!193 = distinct !{!193, !14}
!194 = !{!148, !7, i64 16}
!195 = !{!148, !12, i64 24}
!196 = distinct !{!196, !14}
!197 = distinct !{!197, !14}
!198 = distinct !{!198, !14}
!199 = distinct !{!199, !14}
!200 = distinct !{!200, !14}
!201 = distinct !{!201, !14}
!202 = distinct !{!202, !14}
!203 = distinct !{!203, !14}
!204 = distinct !{!204, !14}
!205 = distinct !{!205, !14}
!206 = distinct !{!206, !14}
!207 = distinct !{!207, !14}
!208 = distinct !{!208, !14}
!209 = distinct !{!209, !14}
!210 = distinct !{!210, !14}
!211 = distinct !{!211, !14}
!212 = distinct !{!212, !14}
!213 = distinct !{!213, !14}
!214 = distinct !{!214, !14}
!215 = distinct !{!215, !14}
!216 = distinct !{!216, !14}
!217 = distinct !{!217, !14}
!218 = distinct !{!218, !14}
!219 = distinct !{!219, !14}
!220 = distinct !{!220, !14}
!221 = distinct !{!221, !14}
!222 = !{!148, !7, i64 8}
!223 = distinct !{!223, !14}
!224 = distinct !{!224, !14}
!225 = distinct !{!225, !14}
!226 = distinct !{!226, !14}
!227 = distinct !{!227, !14}
!228 = distinct !{!228, !14}
!229 = distinct !{!229, !14}
!230 = distinct !{!230, !14}
!231 = distinct !{!231, !14}
!232 = distinct !{!232, !14}
!233 = distinct !{!233, !14}
!234 = distinct !{!234, !14}
!235 = distinct !{!235, !14}
!236 = !{i32 0, i32 3}
!237 = !{!130, !7, i64 1296}
!238 = !{!41, !7, i64 0}
!239 = !{!52, !7, i64 56}
!240 = distinct !{!240, !14}
!241 = distinct !{!241, !14}
!242 = !{!130, !7, i64 1304}
!243 = distinct !{!243, !14}
!244 = distinct !{!244, !14}
!245 = distinct !{!245, !14}
!246 = !{!247, !7, i64 0}
!247 = !{!"change_cc_mode_args", !7, i64 0, !7, i64 8}
!248 = !{!247, !7, i64 8}
!249 = distinct !{!249, !14}
