; ModuleID = 'reginfo.c'
source_filename = "reginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.reg_pref = type { i8, i8, i8 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_reg_info = type { ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.subregs_of_mode_node = type { i32, [87 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@reg_alloc_order = dso_local local_unnamed_addr global [53 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52], align 16
@.str = private unnamed_addr constant [3 x i8] c"ax\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"dx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"bx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"st(1)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"st(2)\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"st(3)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"st(4)\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"st(5)\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"st(6)\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"st(7)\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"argp\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"fpsr\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"fpcr\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"xmm0\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"xmm1\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"xmm2\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"xmm3\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"xmm4\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"xmm5\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"xmm6\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"xmm7\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"mm0\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"mm1\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"mm2\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"mm3\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"mm4\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"mm5\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"mm6\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"mm7\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"r8\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"r9\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"r10\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"r11\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"r12\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"r13\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"r14\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"r15\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"xmm8\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"xmm9\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"xmm10\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"xmm11\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"xmm12\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"xmm13\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"xmm14\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"xmm15\00", align 1
@reg_names = dso_local local_unnamed_addr global [53 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], align 16
@.str.53 = private unnamed_addr constant [8 x i8] c"NO_REGS\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"AREG\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"DREG\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"CREG\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"BREG\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"SIREG\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"DIREG\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"AD_REGS\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"CLOBBERED_REGS\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"Q_REGS\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"NON_Q_REGS\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"INDEX_REGS\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"LEGACY_REGS\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"GENERAL_REGS\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"FP_TOP_REG\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"FP_SECOND_REG\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"FLOAT_REGS\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"SSE_FIRST_REG\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"SSE_REGS\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"MMX_REGS\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"FP_TOP_SSE_REGS\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"FP_SECOND_SSE_REGS\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"FLOAT_SSE_REGS\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"FLOAT_INT_REGS\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"INT_SSE_REGS\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"FLOAT_INT_SSE_REGS\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"ALL_REGS\00", align 1
@reg_class_names = dso_local local_unnamed_addr global [27 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], align 16
@reg_class_contents = dso_local local_unnamed_addr global [27 x i64] zeroinitializer, align 16
@int_reg_class_contents = internal unnamed_addr constant [27 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 16, i32 0], [2 x i32] [i32 32, i32 0], [2 x i32] [i32 3, i32 0], [2 x i32] [i32 7, i32 0], [2 x i32] [i32 15, i32 0], [2 x i32] [i32 1114352, i32 8160], [2 x i32] [i32 127, i32 8160], [2 x i32] [i32 1114367, i32 0], [2 x i32] [i32 1114367, i32 8160], [2 x i32] [i32 256, i32 0], [2 x i32] [i32 512, i32 0], [2 x i32] [i32 65280, i32 0], [2 x i32] [i32 2097152, i32 0], [2 x i32] [i32 534773760, i32 2088960], [2 x i32] [i32 -536870912, i32 31], [2 x i32] [i32 534774016, i32 2088960], [2 x i32] [i32 534774272, i32 2088960], [2 x i32] [i32 534839040, i32 4186112], [2 x i32] [i32 131071, i32 8160], [2 x i32] [i32 534839551, i32 2097120], [2 x i32] [i32 534904831, i32 2097120], [2 x i32] [i32 -1, i32 2097151]], align 16
@fixed_regs = dso_local local_unnamed_addr global [53 x i8] zeroinitializer, align 16
@initial_fixed_regs = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02", align 16
@call_used_regs = dso_local local_unnamed_addr global [53 x i8] zeroinitializer, align 16
@initial_call_used_regs = internal unnamed_addr constant [53 x i8] c"\01\01\01\00\03\03\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\01\01\01\01\01\01\01\01", align 16
@global_regs = dso_local local_unnamed_addr global [53 x i8] zeroinitializer, align 16
@init_move_cost.last_move_cost = internal unnamed_addr global [27 x [27 x i16]] zeroinitializer, align 16
@have_regs_of_mode = dso_local local_unnamed_addr global [87 x i8] zeroinitializer, align 16
@.str.80 = private unnamed_addr constant [10 x i8] c"reginfo.c\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@contains_reg_of_mode = dso_local local_unnamed_addr global [27 x [87 x i8]] zeroinitializer, align 16
@last_mode_for_init_move_cost = internal unnamed_addr global i32 0, align 4
@move_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@may_move_in_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@may_move_out_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@reg_class_subclasses = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@saved_fixed_regs = internal unnamed_addr global [53 x i8] zeroinitializer, align 16
@saved_call_used_regs = internal unnamed_addr global [53 x i8] zeroinitializer, align 16
@saved_reg_names = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@hard_regno_nregs = dso_local local_unnamed_addr global [53 x [87 x i8]] zeroinitializer, align 16
@reg_raw_mode = dso_local local_unnamed_addr global [53 x i32] zeroinitializer, align 16
@word_mode = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@top_of_stack = internal global [87 x ptr] zeroinitializer, align 16
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@fix_register.what_option = internal unnamed_addr constant [2 x [2 x ptr]] [[2 x ptr] [ptr @.str.82, ptr @.str.83], [2 x ptr] [ptr @.str.84, ptr @.str.85]], align 16
@.str.82 = private unnamed_addr constant [11 x i8] c"call-saved\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"call-used\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"no-such-option\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"can't use '%s' as a %s register\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"unknown register name: %s\00", align 1
@no_global_reg_vars = internal unnamed_addr global i1 false, align 4
@.str.88 = private unnamed_addr constant [55 x i8] c"global register variable follows a function definition\00", align 1
@.str.89 = private unnamed_addr constant [48 x i8] c"register used for two global register variables\00", align 1
@.str.90 = private unnamed_addr constant [58 x i8] c"call-clobbered register used for global register variable\00", align 1
@regs_invalidated_by_call = dso_local local_unnamed_addr global i64 0, align 8
@regs_invalidated_by_call_regset = dso_local local_unnamed_addr global ptr null, align 8
@fixed_reg_set = dso_local local_unnamed_addr global i64 0, align 8
@call_used_reg_set = dso_local local_unnamed_addr global i64 0, align 8
@call_fixed_reg_set = dso_local local_unnamed_addr global i64 0, align 8
@reg_pref = internal unnamed_addr global ptr null, align 8
@reg_info_size = internal unnamed_addr global i32 0, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@.str.91 = private unnamed_addr constant [8 x i8] c"reginfo\00", align 1
@pass_reginfo_init = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.91, ptr null, ptr @reginfo_init, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@subregs_of_mode = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@gt_ggc_r_gt_reginfo_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @top_of_stack, i64 87, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16
@max_regno = dso_local local_unnamed_addr global i32 0, align 4
@inv_reg_alloc_order = dso_local local_unnamed_addr global [53 x i32] zeroinitializer, align 16
@reg_class_size = dso_local local_unnamed_addr global [27 x i32] zeroinitializer, align 16
@reg_class_subunion = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@reg_class_superunion = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@persistent_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@flag_pic = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@df = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !64 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !65
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !64 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !65
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #26
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #26
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !64 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !65
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #26
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !64 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !65
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !64 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #26
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !64 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #26
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #26
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !64 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #26
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !64 {
  %2 = load i32, ptr %0, align 8, !tbaa !79
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !64 {
  %2 = load i32, ptr %0, align 8, !tbaa !79
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !64 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #26
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !64 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #26
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !64 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #26
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !81

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @reg_set_to_hard_reg_set(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !84 {
  %3 = load ptr, ptr %1, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @bitmap_zero_bits, ptr %3, !prof !87
  %6 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !88
  %8 = shl i32 %7, 7
  %9 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !90
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = or disjoint i32 %8, %12
  br label %14

14:                                               ; preds = %77, %2
  %15 = phi i64 [ %10, %2 ], [ %82, %77 ]
  %16 = phi i32 [ 0, %2 ], [ %71, %77 ]
  %17 = phi i32 [ %13, %2 ], [ %83, %77 ]
  %18 = phi ptr [ %5, %2 ], [ %73, %77 ]
  %19 = icmp eq i64 %15, 0
  br i1 %19, label %34, label %20, !prof !91

20:                                               ; preds = %48, %14
  %21 = phi i64 [ %15, %14 ], [ %53, %48 ]
  %22 = phi i32 [ %16, %14 ], [ %49, %48 ]
  %23 = phi i32 [ %17, %14 ], [ %50, %48 ]
  %24 = phi ptr [ %18, %14 ], [ %41, %48 ]
  %25 = and i64 %21, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %69, !prof !92

27:                                               ; preds = %20, %27
  %28 = phi i32 [ %31, %27 ], [ %23, %20 ]
  %29 = phi i64 [ %30, %27 ], [ %21, %20 ]
  %30 = lshr exact i64 %29, 1
  %31 = add i32 %28, 1
  %32 = and i64 %29, 2
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %27, label %69, !prof !93, !llvm.loop !94

34:                                               ; preds = %14
  %35 = add i32 %17, 63
  %36 = and i32 %35, -64
  %37 = add i32 %16, 1
  br label %38

38:                                               ; preds = %65, %34
  %39 = phi i64 [ %15, %34 ], [ %60, %65 ]
  %40 = phi i32 [ %36, %34 ], [ %68, %65 ]
  %41 = phi ptr [ %18, %34 ], [ %63, %65 ]
  %42 = phi i32 [ %37, %34 ], [ 0, %65 ]
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %59, label %44, !prof !95

44:                                               ; preds = %38
  %45 = add i32 %40, 128
  %46 = shl i32 %42, 6
  %47 = sub i32 %45, %46
  br label %48

48:                                               ; preds = %44, %55
  %49 = phi i32 [ %57, %55 ], [ %42, %44 ]
  %50 = phi i32 [ %56, %55 ], [ %40, %44 ]
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds %struct.bitmap_element_def, ptr %41, i64 0, i32 3, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !90
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %20, !prof !96

55:                                               ; preds = %48
  %56 = add i32 %50, 64
  %57 = add i32 %49, 1
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %48, !prof !97, !llvm.loop !98

59:                                               ; preds = %55, %38
  %60 = phi i64 [ %39, %38 ], [ %53, %55 ]
  %61 = phi i32 [ %40, %38 ], [ %47, %55 ]
  %62 = phi i32 [ %42, %38 ], [ 2, %55 ]
  %63 = load ptr, ptr %41, align 8, !tbaa !99
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65, !prof !100

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.bitmap_element_def, ptr %63, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !88
  %68 = shl i32 %67, 7
  br label %38, !llvm.loop !101

69:                                               ; preds = %59, %27, %20
  %70 = phi i64 [ %21, %20 ], [ %30, %27 ], [ %60, %59 ]
  %71 = phi i32 [ %22, %20 ], [ %22, %27 ], [ %62, %59 ]
  %72 = phi i32 [ %23, %20 ], [ %31, %27 ], [ %61, %59 ]
  %73 = phi ptr [ %24, %20 ], [ %24, %27 ], [ %63, %59 ]
  %74 = phi i1 [ false, %20 ], [ false, %27 ], [ true, %59 ]
  %75 = icmp ugt i32 %72, 52
  %76 = select i1 %74, i1 true, i1 %75, !prof !102
  br i1 %76, label %84, label %77, !prof !103

77:                                               ; preds = %69
  %78 = zext nneg i32 %72 to i64
  %79 = shl nuw nsw i64 1, %78
  %80 = load i64, ptr %0, align 8, !tbaa !90
  %81 = or i64 %80, %79
  store i64 %81, ptr %0, align 8, !tbaa !90
  %82 = lshr i64 %70, 1
  %83 = add i32 %72, 1
  br label %14, !llvm.loop !104

84:                                               ; preds = %69
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_reg_sets() local_unnamed_addr #10 !prof !105 {
  br label %1

1:                                                ; preds = %0, %22
  %2 = phi i64 [ 0, %0 ], [ %23, %22 ]
  %3 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2
  store i64 0, ptr %3, align 8, !tbaa !90
  br label %4

4:                                                ; preds = %1, %19
  %5 = phi i64 [ 0, %1 ], [ %20, %19 ]
  %6 = lshr i64 %5, 5
  %7 = and i64 %6, 134217727
  %8 = getelementptr inbounds [27 x [2 x i32]], ptr @int_reg_class_contents, i64 0, i64 %2, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  %10 = trunc i64 %5 to i32
  %11 = and i32 %10, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !106

15:                                               ; preds = %4
  %16 = shl nuw i64 1, %5
  %17 = load i64, ptr %3, align 8, !tbaa !90
  %18 = or i64 %17, %16
  store i64 %18, ptr %3, align 8, !tbaa !90
  br label %19

19:                                               ; preds = %4, %15
  %20 = add nuw nsw i64 %5, 1
  %21 = icmp eq i64 %20, 53
  br i1 %21, label %22, label %4, !prof !107, !llvm.loop !108

22:                                               ; preds = %19
  %23 = add nuw nsw i64 %2, 1
  %24 = icmp eq i64 %23, 27
  br i1 %24, label %25, label %1, !prof !109, !llvm.loop !110

25:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @fixed_regs, ptr noundef nonnull align 16 dereferenceable(53) @initial_fixed_regs, i64 53, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @call_used_regs, ptr noundef nonnull align 16 dereferenceable(53) @initial_call_used_regs, i64 53, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @global_regs, i8 0, i64 53, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define dso_local void @init_move_cost(i32 noundef %0) local_unnamed_addr #13 !prof !111 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x i8], ptr @have_regs_of_mode, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !76
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !112

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 268, ptr noundef nonnull @.str.81) #26
  br label %7

7:                                                ; preds = %1, %6
  br label %8

8:                                                ; preds = %7, %38
  %9 = phi i64 [ %40, %38 ], [ 0, %7 ]
  %10 = phi i8 [ %39, %38 ], [ 1, %7 ]
  %11 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %9, i64 %2
  %12 = load i8, ptr %11, align 1, !tbaa !76
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %38, label %14, !prof !113

14:                                               ; preds = %8
  %15 = trunc i64 %9 to i32
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi i64 [ %36, %27 ], [ 0, %14 ]
  %18 = phi i8 [ %34, %27 ], [ %10, %14 ]
  %19 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %17, i64 %2
  %20 = load i8, ptr %19, align 1, !tbaa !76
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22, !prof !114

22:                                               ; preds = %16
  %23 = trunc i64 %17 to i32
  %24 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %15, i32 noundef %23) #26
  %25 = icmp slt i32 %24, 65535
  br i1 %25, label %27, label %26, !prof !115

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 280, ptr noundef nonnull @.str.81) #26
  br label %27

27:                                               ; preds = %16, %26, %22
  %28 = phi i32 [ %24, %22 ], [ %24, %26 ], [ 65535, %16 ]
  %29 = getelementptr inbounds [27 x [27 x i16]], ptr @init_move_cost.last_move_cost, i64 0, i64 %9, i64 %17
  %30 = load i16, ptr %29, align 2, !tbaa !116
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %28, %31
  %33 = and i8 %18, 1
  %34 = select i1 %32, i8 %33, i8 0, !prof !117
  %35 = trunc i32 %28 to i16
  store i16 %35, ptr %29, align 2, !tbaa !116
  %36 = add nuw nsw i64 %17, 1
  %37 = icmp eq i64 %36, 27
  br i1 %37, label %38, label %16, !prof !118, !llvm.loop !119

38:                                               ; preds = %27, %8
  %39 = phi i8 [ %10, %8 ], [ %34, %27 ]
  %40 = add nuw nsw i64 %9, 1
  %41 = icmp eq i64 %40, 27
  br i1 %41, label %42, label %8, !prof !120, !llvm.loop !121

42:                                               ; preds = %38
  %43 = icmp ne i8 %39, 0
  %44 = load i32, ptr @last_mode_for_init_move_cost, align 4
  %45 = icmp ne i32 %44, -1
  %46 = select i1 %43, i1 %45, i1 false, !prof !112
  br i1 %46, label %47, label %58, !prof !112

47:                                               ; preds = %42
  %48 = sext i32 %44 to i64
  %49 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !65
  %51 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %2
  store ptr %50, ptr %51, align 8, !tbaa !65
  %52 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  %54 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %2
  store ptr %53, ptr %54, align 8, !tbaa !65
  %55 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %48
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %2
  store ptr %56, ptr %57, align 8, !tbaa !65
  br label %192

58:                                               ; preds = %42
  store i32 %0, ptr @last_mode_for_init_move_cost, align 4, !tbaa !80
  %59 = tail call ptr @xmalloc(i64 noundef 1458) #26
  %60 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %2
  store ptr %59, ptr %60, align 8, !tbaa !65
  %61 = tail call ptr @xmalloc(i64 noundef 1458) #26
  %62 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %2
  store ptr %61, ptr %62, align 8, !tbaa !65
  %63 = tail call ptr @xmalloc(i64 noundef 1458) #26
  %64 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %2
  store ptr %63, ptr %64, align 8, !tbaa !65
  br label %65

65:                                               ; preds = %58, %189
  %66 = phi i64 [ 0, %58 ], [ %190, %189 ]
  %67 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %66, i64 %2
  %68 = load i8, ptr %67, align 1, !tbaa !76
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %75, label %70, !prof !113

70:                                               ; preds = %65
  %71 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %66
  %72 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %66
  %73 = icmp eq i64 %66, 26
  %74 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %66
  br label %78

75:                                               ; preds = %65
  %76 = load ptr, ptr %60, align 8, !tbaa !65
  %77 = load ptr, ptr %62, align 8, !tbaa !65
  br label %182

78:                                               ; preds = %70, %179
  %79 = phi i64 [ 0, %70 ], [ %180, %179 ]
  %80 = getelementptr inbounds [27 x [27 x i16]], ptr @init_move_cost.last_move_cost, i64 0, i64 %66, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !116
  %82 = icmp eq i16 %81, -1
  br i1 %82, label %83, label %89, !prof !114

83:                                               ; preds = %78
  %84 = load ptr, ptr %60, align 8, !tbaa !65
  %85 = getelementptr inbounds [27 x i16], ptr %84, i64 %66, i64 %79
  store i16 -1, ptr %85, align 2, !tbaa !116
  %86 = load ptr, ptr %62, align 8, !tbaa !65
  %87 = getelementptr inbounds [27 x i16], ptr %86, i64 %66, i64 %79
  store i16 -1, ptr %87, align 2, !tbaa !116
  %88 = getelementptr inbounds [27 x i16], ptr %63, i64 %66, i64 %79
  store i16 -1, ptr %88, align 2, !tbaa !116
  br label %179

89:                                               ; preds = %78
  %90 = zext i16 %81 to i32
  %91 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %79
  %92 = load i32, ptr %91, align 4, !tbaa !80
  %93 = icmp eq i32 %92, 27
  br i1 %93, label %116, label %94, !prof !122

94:                                               ; preds = %89, %111
  %95 = phi i32 [ %114, %111 ], [ %92, %89 ]
  %96 = phi ptr [ %113, %111 ], [ %91, %89 ]
  %97 = phi i32 [ %112, %111 ], [ %90, %89 ]
  %98 = zext i32 %95 to i64
  %99 = icmp eq i64 %66, %98
  br i1 %99, label %111, label %100, !prof !123

100:                                              ; preds = %94
  %101 = zext i32 %95 to i64
  %102 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %101, i64 %2
  %103 = load i8, ptr %102, align 1, !tbaa !76
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %111, label %105, !prof !124

105:                                              ; preds = %100
  %106 = load ptr, ptr %60, align 8, !tbaa !65
  %107 = getelementptr inbounds [27 x i16], ptr %106, i64 %66, i64 %101
  %108 = load i16, ptr %107, align 2, !tbaa !116
  %109 = zext i16 %108 to i32
  %110 = tail call i32 @llvm.smax.i32(i32 %97, i32 %109)
  br label %111

111:                                              ; preds = %94, %100, %105
  %112 = phi i32 [ %110, %105 ], [ %97, %100 ], [ %97, %94 ]
  %113 = getelementptr inbounds i32, ptr %96, i64 1
  %114 = load i32, ptr %113, align 4, !tbaa !80
  %115 = icmp eq i32 %114, 27
  br i1 %115, label %116, label %94, !prof !125, !llvm.loop !126

116:                                              ; preds = %111, %89
  %117 = phi i32 [ %90, %89 ], [ %112, %111 ]
  %118 = load i32, ptr %71, align 4, !tbaa !80
  %119 = icmp eq i32 %118, 27
  br i1 %119, label %142, label %120, !prof !122

120:                                              ; preds = %116, %137
  %121 = phi i32 [ %140, %137 ], [ %118, %116 ]
  %122 = phi ptr [ %139, %137 ], [ %71, %116 ]
  %123 = phi i32 [ %138, %137 ], [ %117, %116 ]
  %124 = zext i32 %121 to i64
  %125 = icmp eq i64 %79, %124
  br i1 %125, label %137, label %126, !prof !123

126:                                              ; preds = %120
  %127 = zext i32 %121 to i64
  %128 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %127, i64 %2
  %129 = load i8, ptr %128, align 1, !tbaa !76
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %137, label %131, !prof !124

131:                                              ; preds = %126
  %132 = load ptr, ptr %60, align 8, !tbaa !65
  %133 = getelementptr inbounds [27 x i16], ptr %132, i64 %127, i64 %79
  %134 = load i16, ptr %133, align 2, !tbaa !116
  %135 = zext i16 %134 to i32
  %136 = tail call i32 @llvm.smax.i32(i32 %123, i32 %135)
  br label %137

137:                                              ; preds = %120, %126, %131
  %138 = phi i32 [ %136, %131 ], [ %123, %126 ], [ %123, %120 ]
  %139 = getelementptr inbounds i32, ptr %122, i64 1
  %140 = load i32, ptr %139, align 4, !tbaa !80
  %141 = icmp eq i32 %140, 27
  br i1 %141, label %142, label %120, !prof !125, !llvm.loop !127

142:                                              ; preds = %137, %116
  %143 = phi i32 [ %117, %116 ], [ %138, %137 ]
  %144 = trunc i32 %143 to i16
  %145 = load ptr, ptr %60, align 8, !tbaa !65
  %146 = getelementptr inbounds [27 x i16], ptr %145, i64 %66, i64 %79
  store i16 %144, ptr %146, align 2, !tbaa !116
  %147 = icmp eq i64 %66, %79
  %148 = icmp eq i64 %79, 26
  %149 = or i1 %147, %148
  br i1 %149, label %158, label %150, !prof !128

150:                                              ; preds = %142
  %151 = load i64, ptr %72, align 8, !tbaa !90
  %152 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %79
  %153 = load i64, ptr %152, align 8, !tbaa !90
  %154 = xor i64 %153, -1
  %155 = and i64 %151, %154
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  br label %158

158:                                              ; preds = %142, %150
  %159 = phi i32 [ 1, %142 ], [ %157, %150 ]
  %160 = icmp eq i32 %159, 0
  %161 = load ptr, ptr %62, align 8, !tbaa !65
  %162 = getelementptr inbounds [27 x i16], ptr %161, i64 %66, i64 %79
  %163 = select i1 %160, i16 %144, i16 0, !prof !129
  store i16 %163, ptr %162, align 2, !tbaa !116
  %164 = or i1 %73, %147
  br i1 %164, label %173, label %165, !prof !128

165:                                              ; preds = %158
  %166 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %79
  %167 = load i64, ptr %166, align 8, !tbaa !90
  %168 = load i64, ptr %74, align 8, !tbaa !90
  %169 = xor i64 %168, -1
  %170 = and i64 %167, %169
  %171 = icmp eq i64 %170, 0
  %172 = zext i1 %171 to i32
  br label %173

173:                                              ; preds = %158, %165
  %174 = phi i32 [ 1, %158 ], [ %172, %165 ]
  %175 = icmp eq i32 %174, 0
  %176 = getelementptr inbounds [27 x i16], ptr %63, i64 %66, i64 %79
  br i1 %175, label %178, label %177, !prof !129

177:                                              ; preds = %173
  store i16 0, ptr %176, align 2, !tbaa !116
  br label %179

178:                                              ; preds = %173
  store i16 %144, ptr %176, align 2, !tbaa !116
  br label %179

179:                                              ; preds = %177, %178, %83
  %180 = add nuw nsw i64 %79, 1
  %181 = icmp eq i64 %180, 27
  br i1 %181, label %189, label %78, !prof !118, !llvm.loop !130

182:                                              ; preds = %75, %182
  %183 = phi i64 [ 0, %75 ], [ %187, %182 ]
  %184 = getelementptr inbounds [27 x i16], ptr %76, i64 %66, i64 %183
  store i16 -1, ptr %184, align 2, !tbaa !116
  %185 = getelementptr inbounds [27 x i16], ptr %77, i64 %66, i64 %183
  store i16 -1, ptr %185, align 2, !tbaa !116
  %186 = getelementptr inbounds [27 x i16], ptr %63, i64 %66, i64 %183
  store i16 -1, ptr %186, align 2, !tbaa !116
  %187 = add nuw nsw i64 %183, 1
  %188 = icmp eq i64 %187, 27
  br i1 %188, label %189, label %182, !prof !131, !llvm.loop !132

189:                                              ; preds = %179, %182
  %190 = add nuw nsw i64 %66, 1
  %191 = icmp eq i64 %190, 27
  br i1 %191, label %192, label %65, !prof !120, !llvm.loop !133

192:                                              ; preds = %189, %47
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @reg_class_subset_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !134 {
  %3 = icmp eq i32 %0, %1
  %4 = icmp eq i32 %1, 26
  %5 = or i1 %3, %4
  br i1 %5, label %17, label %6, !prof !135

6:                                                ; preds = %2
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !90
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !90
  %13 = xor i64 %12, -1
  %14 = and i64 %9, %13
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %6, %2
  %18 = phi i32 [ 1, %2 ], [ %16, %6 ]
  ret i32 %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @save_register_info() local_unnamed_addr #15 !prof !105 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @saved_fixed_regs, ptr noundef nonnull align 16 dereferenceable(53) @fixed_regs, i64 53, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @saved_call_used_regs, ptr noundef nonnull align 16 dereferenceable(53) @call_used_regs, i64 53, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @saved_reg_names, ptr noundef nonnull align 16 dereferenceable(424) @reg_names, i64 424, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_reg_modes_target() local_unnamed_addr #13 !prof !105 {
  br label %1

1:                                                ; preds = %0, %37
  %2 = phi i64 [ 0, %0 ], [ %38, %37 ]
  %3 = and i64 %2, 56
  %4 = icmp eq i64 %3, 8
  %5 = add nsw i64 %2, -21
  %6 = icmp ult i64 %5, 8
  %7 = select i1 %4, i1 true, i1 %6, !prof !136
  %8 = add nsw i64 %2, -45
  %9 = icmp ult i64 %8, 8
  %10 = select i1 %7, i1 true, i1 %9, !prof !137
  %11 = add nsw i64 %2, -29
  %12 = icmp ult i64 %11, 8
  %13 = select i1 %10, i1 true, i1 %12, !prof !138
  br label %14

14:                                               ; preds = %1, %31
  %15 = phi i64 [ 0, %1 ], [ %35, %31 ]
  br i1 %13, label %16, label %22, !prof !139

16:                                               ; preds = %14
  %17 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %18 = load i8, ptr %17, align 1, !tbaa !76
  %19 = and i8 %18, -2
  %20 = icmp eq i8 %19, 10
  %21 = select i1 %20, i16 2, i16 1, !prof !140
  br label %31

22:                                               ; preds = %14
  %23 = trunc i64 %15 to i32
  switch i32 %23, label %24 [
    i32 40, label %31
    i32 53, label %30
  ], !prof !141

24:                                               ; preds = %22
  %25 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %26 = load i8, ptr %25, align 1, !tbaa !76
  %27 = zext i8 %26 to i16
  %28 = add nuw nsw i16 %27, 3
  %29 = lshr i16 %28, 2
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %22, %30, %24, %16
  %32 = phi i16 [ %21, %16 ], [ 3, %22 ], [ %29, %24 ], [ 6, %30 ]
  %33 = trunc i16 %32 to i8
  %34 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %2, i64 %15
  store i8 %33, ptr %34, align 1, !tbaa !76
  %35 = add nuw nsw i64 %15, 1
  %36 = icmp eq i64 %35, 87
  br i1 %36, label %37, label %14, !prof !142, !llvm.loop !143

37:                                               ; preds = %31
  %38 = add nuw nsw i64 %2, 1
  %39 = icmp eq i64 %38, 53
  br i1 %39, label %40, label %1, !prof !144, !llvm.loop !145

40:                                               ; preds = %37, %52
  %41 = phi i64 [ %53, %52 ], [ 0, %37 ]
  %42 = trunc i64 %41 to i32
  %43 = tail call i32 @choose_hard_reg_mode(i32 noundef %42, i32 noundef 1, i8 zeroext poison)
  %44 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %41
  store i32 %43, ptr %44, align 4, !tbaa !80
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %52, !prof !146

46:                                               ; preds = %40
  %47 = icmp eq i64 %41, 0
  %48 = add nsw i64 %41, -1
  %49 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %48
  %50 = select i1 %47, ptr @word_mode, ptr %49
  %51 = load i32, ptr %50, align 4, !tbaa !80
  store i32 %51, ptr %44, align 4, !tbaa !80
  br label %52

52:                                               ; preds = %40, %46
  %53 = add nuw nsw i64 %41, 1
  %54 = icmp eq i64 %53, 53
  br i1 %54, label %55, label %40, !prof !144, !llvm.loop !147

55:                                               ; preds = %52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @choose_hard_reg_mode(i32 noundef %0, i32 noundef %1, i8 zeroext %2) local_unnamed_addr #13 !prof !148 {
  %4 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !76
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %26, label %6, !prof !149

6:                                                ; preds = %3
  %7 = zext i32 %0 to i64
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi i8 [ %4, %6 ], [ %24, %21 ]
  %10 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %11 = zext i8 %9 to i64
  %12 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %7, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !76
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %21, !prof !150

16:                                               ; preds = %8
  %17 = zext i8 %9 to i32
  %18 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %17) #26
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 %10, i32 %17, !prof !151
  br label %21

21:                                               ; preds = %16, %8
  %22 = phi i32 [ %10, %8 ], [ %20, %16 ]
  %23 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %11
  %24 = load i8, ptr %23, align 1, !tbaa !76
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %8, !prof !152, !llvm.loop !153

26:                                               ; preds = %21, %3
  %27 = phi i32 [ 0, %3 ], [ %22, %21 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %124, !prof !154

29:                                               ; preds = %26
  %30 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !76
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %52, label %32, !prof !155

32:                                               ; preds = %29
  %33 = zext i32 %0 to i64
  br label %34

34:                                               ; preds = %32, %47
  %35 = phi i8 [ %30, %32 ], [ %50, %47 ]
  %36 = phi i32 [ 0, %32 ], [ %48, %47 ]
  %37 = zext i8 %35 to i64
  %38 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %33, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !76
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, %1
  br i1 %41, label %42, label %47, !prof !156

42:                                               ; preds = %34
  %43 = zext i8 %35 to i32
  %44 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %43) #26
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 %36, i32 %43, !prof !157
  br label %47

47:                                               ; preds = %42, %34
  %48 = phi i32 [ %36, %34 ], [ %46, %42 ]
  %49 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %37
  %50 = load i8, ptr %49, align 1, !tbaa !76
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %34, !prof !158, !llvm.loop !159

52:                                               ; preds = %47, %29
  %53 = phi i32 [ 0, %29 ], [ %48, %47 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %124, !prof !160

55:                                               ; preds = %52
  %56 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 17), align 1, !tbaa !76
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %78, label %58, !prof !149

58:                                               ; preds = %55
  %59 = zext i32 %0 to i64
  br label %60

60:                                               ; preds = %58, %73
  %61 = phi i8 [ %56, %58 ], [ %76, %73 ]
  %62 = phi i32 [ 0, %58 ], [ %74, %73 ]
  %63 = zext i8 %61 to i64
  %64 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %59, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !76
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, %1
  br i1 %67, label %68, label %73, !prof !161

68:                                               ; preds = %60
  %69 = zext i8 %61 to i32
  %70 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %69) #26
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i32 %62, i32 %69
  br label %73

73:                                               ; preds = %68, %60
  %74 = phi i32 [ %62, %60 ], [ %72, %68 ]
  %75 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %63
  %76 = load i8, ptr %75, align 1, !tbaa !76
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %60, !prof !162, !llvm.loop !163

78:                                               ; preds = %73, %55
  %79 = phi i32 [ 0, %55 ], [ %74, %73 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %124, !prof !164

81:                                               ; preds = %78
  %82 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 12), align 4, !tbaa !76
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %104, label %84, !prof !149

84:                                               ; preds = %81
  %85 = zext i32 %0 to i64
  br label %86

86:                                               ; preds = %84, %99
  %87 = phi i8 [ %82, %84 ], [ %102, %99 ]
  %88 = phi i32 [ 0, %84 ], [ %100, %99 ]
  %89 = zext i8 %87 to i64
  %90 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %85, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !76
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, %1
  br i1 %93, label %94, label %99, !prof !165

94:                                               ; preds = %86
  %95 = zext i8 %87 to i32
  %96 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %95) #26
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i32 %88, i32 %95, !prof !166
  br label %99

99:                                               ; preds = %94, %86
  %100 = phi i32 [ %88, %86 ], [ %98, %94 ]
  %101 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %89
  %102 = load i8, ptr %101, align 1, !tbaa !76
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %86, !prof !167, !llvm.loop !168

104:                                              ; preds = %99, %81
  %105 = phi i32 [ 0, %81 ], [ %100, %99 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %124, !prof !164

107:                                              ; preds = %104
  %108 = zext i32 %0 to i64
  br label %109

109:                                              ; preds = %107, %119
  %110 = phi i64 [ 2, %107 ], [ %120, %119 ]
  %111 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %108, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !76
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, %1
  br i1 %114, label %115, label %119, !prof !164

115:                                              ; preds = %109
  %116 = trunc i64 %110 to i32
  %117 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %116) #26
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %122, !prof !112

119:                                              ; preds = %109, %115
  %120 = add nuw nsw i64 %110, 1
  %121 = icmp eq i64 %120, 87
  br i1 %121, label %124, label %109, !prof !112, !llvm.loop !169

122:                                              ; preds = %115
  %123 = trunc i64 %110 to i32
  br label %124

124:                                              ; preds = %122, %119, %104, %78, %52, %26
  %125 = phi i32 [ %27, %26 ], [ %53, %52 ], [ %79, %78 ], [ %105, %104 ], [ %123, %122 ], [ 0, %119 ]
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define dso_local void @init_regs() local_unnamed_addr #13 !prof !105 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @fixed_regs, ptr noundef nonnull align 16 dereferenceable(53) @saved_fixed_regs, i64 53, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @call_used_regs, ptr noundef nonnull align 16 dereferenceable(53) @saved_call_used_regs, i64 53, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @reg_names, ptr noundef nonnull align 16 dereferenceable(424) @saved_reg_names, i64 424, i1 false)
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %3 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %5
  %7 = trunc i64 %2 to i32
  store i32 %7, ptr %6, align 4, !tbaa !80
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 53
  br i1 %9, label %10, label %1, !prof !144, !llvm.loop !170

10:                                               ; preds = %1
  tail call void @ix86_conditional_register_usage() #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @reg_class_size, i8 0, i64 108, i1 false)
  br label %11

11:                                               ; preds = %10, %27
  %12 = phi i64 [ 0, %10 ], [ %28, %27 ]
  %13 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !90
  %15 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %12
  br label %16

16:                                               ; preds = %11, %24
  %17 = phi i64 [ 0, %11 ], [ %25, %24 ]
  %18 = shl nuw nsw i64 1, %17
  %19 = and i64 %14, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21, !prof !106

21:                                               ; preds = %16
  %22 = load i32, ptr %15, align 4, !tbaa !80
  %23 = add i32 %22, 1
  store i32 %23, ptr %15, align 4, !tbaa !80
  br label %24

24:                                               ; preds = %21, %16
  %25 = add nuw nsw i64 %17, 1
  %26 = icmp eq i64 %25, 53
  br i1 %26, label %27, label %16, !prof !107, !llvm.loop !171

27:                                               ; preds = %24
  %28 = add nuw nsw i64 %12, 1
  %29 = icmp eq i64 %28, 27
  br i1 %29, label %30, label %11, !prof !109, !llvm.loop !172

30:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2916) @reg_class_subunion, i8 0, i64 2916, i1 false)
  br label %31

31:                                               ; preds = %30, %64
  %32 = phi i64 [ 0, %30 ], [ %65, %64 ]
  %33 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !90
  br label %35

35:                                               ; preds = %31, %61
  %36 = phi i64 [ 0, %31 ], [ %62, %61 ]
  %37 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !90
  %39 = or i64 %38, %34
  %40 = xor i64 %39, -1
  %41 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %32, i64 %36
  br label %42

42:                                               ; preds = %35, %58
  %43 = phi i64 [ 0, %35 ], [ %59, %58 ]
  %44 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !90
  %46 = and i64 %45, %40
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58, !prof !173

48:                                               ; preds = %42
  %49 = load i32, ptr %41, align 4, !tbaa !80
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !90
  %53 = xor i64 %52, -1
  %54 = and i64 %45, %53
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %58, label %56, !prof !174

56:                                               ; preds = %48
  %57 = trunc i64 %43 to i32
  store i32 %57, ptr %41, align 4, !tbaa !80
  br label %58

58:                                               ; preds = %56, %48, %42
  %59 = add nuw nsw i64 %43, 1
  %60 = icmp eq i64 %59, 27
  br i1 %60, label %61, label %42, !prof !175, !llvm.loop !176

61:                                               ; preds = %58
  %62 = add nuw nsw i64 %36, 1
  %63 = icmp eq i64 %62, 27
  br i1 %63, label %64, label %35, !prof !177, !llvm.loop !178

64:                                               ; preds = %61
  %65 = add nuw nsw i64 %32, 1
  %66 = icmp eq i64 %65, 27
  br i1 %66, label %67, label %31, !prof !109, !llvm.loop !179

67:                                               ; preds = %64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2916) @reg_class_superunion, i8 0, i64 2916, i1 false)
  br label %68

68:                                               ; preds = %67, %94
  %69 = phi i64 [ 0, %67 ], [ %95, %94 ]
  %70 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !90
  br label %72

72:                                               ; preds = %68, %89
  %73 = phi i64 [ 0, %68 ], [ %92, %89 ]
  %74 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !90
  %76 = or i64 %75, %71
  br label %77

77:                                               ; preds = %72, %84
  %78 = phi i64 [ 0, %72 ], [ %85, %84 ]
  %79 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !90
  %81 = xor i64 %80, -1
  %82 = and i64 %76, %81
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %87, label %84, !prof !180

84:                                               ; preds = %77
  %85 = add nuw nsw i64 %78, 1
  %86 = icmp eq i64 %85, 27
  br i1 %86, label %89, label %77, !prof !181, !llvm.loop !182

87:                                               ; preds = %77
  %88 = trunc i64 %78 to i32
  br label %89

89:                                               ; preds = %84, %87
  %90 = phi i32 [ %88, %87 ], [ 27, %84 ]
  %91 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_superunion, i64 0, i64 %69, i64 %73
  store i32 %90, ptr %91, align 4, !tbaa !80
  %92 = add nuw nsw i64 %73, 1
  %93 = icmp eq i64 %92, 27
  br i1 %93, label %94, label %72, !prof !177, !llvm.loop !183

94:                                               ; preds = %89
  %95 = add nuw nsw i64 %69, 1
  %96 = icmp eq i64 %95, 27
  br i1 %96, label %97, label %68, !prof !109, !llvm.loop !184

97:                                               ; preds = %94, %104
  %98 = phi i64 [ %105, %104 ], [ 0, %94 ]
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i64 [ 0, %97 ], [ %102, %99 ]
  %101 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %98, i64 %100
  store i32 27, ptr %101, align 4, !tbaa !80
  %102 = add nuw nsw i64 %100, 1
  %103 = icmp eq i64 %102, 27
  br i1 %103, label %104, label %99, !prof !177, !llvm.loop !185

104:                                              ; preds = %99
  %105 = add nuw nsw i64 %98, 1
  %106 = icmp eq i64 %105, 27
  br i1 %106, label %107, label %97, !prof !109, !llvm.loop !186

107:                                              ; preds = %104, %133
  %108 = phi i64 [ %134, %133 ], [ 0, %104 ]
  %109 = add nsw i64 %108, -1
  %110 = icmp ult i64 %109, 25
  br i1 %110, label %111, label %133, !prof !187

111:                                              ; preds = %107
  %112 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %108
  %113 = load i64, ptr %112, align 8, !tbaa !90
  %114 = trunc i64 %108 to i32
  br label %115

115:                                              ; preds = %111, %131
  %116 = phi i64 [ %108, %111 ], [ %117, %131 ]
  %117 = add nuw nsw i64 %116, 1
  %118 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !90
  %120 = xor i64 %119, -1
  %121 = and i64 %113, %120
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %131, !prof !188

123:                                              ; preds = %115
  %124 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %117
  br label %125

125:                                              ; preds = %125, %123
  %126 = phi ptr [ %124, %123 ], [ %129, %125 ]
  %127 = load i32, ptr %126, align 4, !tbaa !80
  %128 = icmp eq i32 %127, 27
  %129 = getelementptr inbounds i32, ptr %126, i64 1
  br i1 %128, label %130, label %125, !prof !189, !llvm.loop !190

130:                                              ; preds = %125
  store i32 %114, ptr %126, align 4, !tbaa !80
  br label %131

131:                                              ; preds = %130, %115
  %132 = icmp eq i64 %117, 26
  br i1 %132, label %133, label %115, !prof !191, !llvm.loop !192

133:                                              ; preds = %131, %107
  %134 = add nuw nsw i64 %108, 1
  %135 = icmp eq i64 %134, 27
  br i1 %135, label %136, label %107, !prof !109, !llvm.loop !193

136:                                              ; preds = %133
  store i64 0, ptr @fixed_reg_set, align 8, !tbaa !90
  store i64 0, ptr @call_used_reg_set, align 8, !tbaa !90
  store i64 0, ptr @call_fixed_reg_set, align 8, !tbaa !90
  store i64 0, ptr @regs_invalidated_by_call, align 8, !tbaa !90
  %137 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !65
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %141, !prof !194

139:                                              ; preds = %136
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @persistent_obstack) #26
  %140 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @persistent_obstack) #26
  store ptr %140, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !65
  br label %142

141:                                              ; preds = %136
  tail call void @bitmap_clear(ptr noundef nonnull %137) #26
  br label %142

142:                                              ; preds = %141, %139
  br label %143

143:                                              ; preds = %142, %201
  %144 = phi i64 [ %202, %201 ], [ 0, %142 ]
  %145 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !76
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %153, label %148, !prof !195

148:                                              ; preds = %143
  %149 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %144
  %150 = load i8, ptr %149, align 1, !tbaa !76
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %153, !prof !196

152:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 519, ptr noundef nonnull @.str.81) #26
  br label %153

153:                                              ; preds = %152, %148, %143
  %154 = load i8, ptr %145, align 1, !tbaa !76
  %155 = icmp ne i8 %154, 0
  br i1 %155, label %156, label %160, !prof !197

156:                                              ; preds = %153
  %157 = shl nuw nsw i64 1, %144
  %158 = load i64, ptr @fixed_reg_set, align 8, !tbaa !90
  %159 = or i64 %158, %157
  store i64 %159, ptr @fixed_reg_set, align 8, !tbaa !90
  br label %160

160:                                              ; preds = %156, %153
  %161 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %144
  %162 = load i8, ptr %161, align 1, !tbaa !76
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %168, label %164, !prof !198

164:                                              ; preds = %160
  %165 = shl nuw nsw i64 1, %144
  %166 = load i64, ptr @call_used_reg_set, align 8, !tbaa !90
  %167 = or i64 %166, %165
  store i64 %167, ptr @call_used_reg_set, align 8, !tbaa !90
  br label %168

168:                                              ; preds = %164, %160
  %169 = icmp eq i64 %144, 7
  br i1 %169, label %201, label %170, !prof !144

170:                                              ; preds = %168
  %171 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %144
  %172 = load i8, ptr %171, align 1, !tbaa !76
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %194, !prof !199

174:                                              ; preds = %170
  %175 = trunc i64 %144 to i32
  switch i32 %175, label %177 [
    i32 20, label %201
    i32 6, label %201
    i32 16, label %176
  ], !prof !200

176:                                              ; preds = %174
  br i1 %155, label %201, label %177, !prof !194

177:                                              ; preds = %176, %174
  %178 = load i32, ptr @flag_pic, align 4, !tbaa !80
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %187, label %180, !prof !201

180:                                              ; preds = %177
  %181 = load i32, ptr @reload_completed, align 4, !tbaa !80
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !65
  %185 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !76
  br label %187

187:                                              ; preds = %183, %180, %177
  %188 = phi i32 [ -1, %177 ], [ %186, %183 ], [ 3, %180 ]
  %189 = zext i32 %188 to i64
  %190 = icmp eq i64 %144, %189
  br i1 %190, label %191, label %193, !prof !202

191:                                              ; preds = %187
  %192 = or i1 %155, %163
  br i1 %192, label %201, label %194, !prof !203

193:                                              ; preds = %187
  br i1 %163, label %201, label %194, !prof !204

194:                                              ; preds = %193, %191, %170
  %195 = shl nuw nsw i64 1, %144
  %196 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !90
  %197 = or i64 %196, %195
  store i64 %197, ptr @regs_invalidated_by_call, align 8, !tbaa !90
  %198 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !65
  %199 = trunc i64 %144 to i32
  %200 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %198, i32 noundef %199) #26
  br label %201

201:                                              ; preds = %194, %191, %193, %174, %176, %174, %168
  %202 = add nuw nsw i64 %144, 1
  %203 = icmp eq i64 %202, 53
  br i1 %203, label %204, label %143, !prof !144, !llvm.loop !205

204:                                              ; preds = %201
  %205 = load i64, ptr @fixed_reg_set, align 8, !tbaa !90
  store i64 %205, ptr @call_fixed_reg_set, align 8, !tbaa !90
  %206 = load i64, ptr @call_used_reg_set, align 8, !tbaa !90
  br label %207

207:                                              ; preds = %204, %222
  %208 = phi i64 [ 0, %204 ], [ %226, %222 ]
  %209 = phi i64 [ %205, %204 ], [ %225, %222 ]
  %210 = phi i64 [ %206, %204 ], [ %224, %222 ]
  %211 = phi i64 [ %205, %204 ], [ %223, %222 ]
  %212 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %208
  %213 = load i8, ptr %212, align 1, !tbaa !76
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %222, label %215, !prof !206

215:                                              ; preds = %207
  %216 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %208
  store i8 1, ptr %216, align 1, !tbaa !76
  %217 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %208
  store i8 1, ptr %217, align 1, !tbaa !76
  %218 = shl nuw nsw i64 1, %208
  %219 = or i64 %209, %218
  store i64 %219, ptr @fixed_reg_set, align 8, !tbaa !90
  %220 = or i64 %210, %218
  store i64 %220, ptr @call_used_reg_set, align 8, !tbaa !90
  %221 = or i64 %211, %218
  store i64 %221, ptr @call_fixed_reg_set, align 8, !tbaa !90
  br label %222

222:                                              ; preds = %215, %207
  %223 = phi i64 [ %221, %215 ], [ %211, %207 ]
  %224 = phi i64 [ %220, %215 ], [ %210, %207 ]
  %225 = phi i64 [ %219, %215 ], [ %209, %207 ]
  %226 = add nuw nsw i64 %208, 1
  %227 = icmp eq i64 %226, 53
  br i1 %227, label %228, label %207, !prof !144, !llvm.loop !207

228:                                              ; preds = %222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(87) @have_regs_of_mode, i8 0, i64 87, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2349) @contains_reg_of_mode, i8 0, i64 2349, i1 false)
  br label %229

229:                                              ; preds = %228, %295
  %230 = phi i64 [ 0, %228 ], [ %296, %295 ]
  %231 = trunc i64 %230 to i32
  br label %238

232:                                              ; preds = %251
  %233 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8
  %234 = icmp eq i64 %230, 40
  %235 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %230
  %236 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %230
  %237 = getelementptr inbounds [87 x i8], ptr @have_regs_of_mode, i64 0, i64 %230
  br label %255

238:                                              ; preds = %229, %251
  %239 = phi i64 [ 0, %229 ], [ %253, %251 ]
  %240 = phi i64 [ 0, %229 ], [ %252, %251 ]
  %241 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %239
  %242 = load i8, ptr %241, align 1, !tbaa !76
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %251, !prof !208

244:                                              ; preds = %238
  %245 = trunc i64 %239 to i32
  %246 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %245, i32 noundef %231) #26
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %251, label %248, !prof !209

248:                                              ; preds = %244
  %249 = shl nuw nsw i64 1, %239
  %250 = or i64 %249, %240
  br label %251

251:                                              ; preds = %248, %244, %238
  %252 = phi i64 [ %240, %238 ], [ %250, %248 ], [ %240, %244 ]
  %253 = add nuw nsw i64 %239, 1
  %254 = icmp eq i64 %253, 53
  br i1 %254, label %232, label %238, !prof !210, !llvm.loop !211

255:                                              ; preds = %232, %292
  %256 = phi i64 [ 0, %232 ], [ %293, %292 ]
  %257 = trunc i64 %256 to i32
  switch i32 %257, label %258 [
    i32 26, label %264
    i32 13, label %264
  ], !prof !212

258:                                              ; preds = %255
  %259 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %256
  %260 = load i64, ptr %259, align 8, !tbaa !90
  %261 = and i64 %233, %260
  %262 = icmp ne i64 %261, 0
  %263 = zext i1 %262 to i32
  br label %264

264:                                              ; preds = %255, %258, %255
  %265 = phi i32 [ %263, %258 ], [ 1, %255 ], [ 1, %255 ]
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %272, !prof !213

267:                                              ; preds = %264
  %268 = load i8, ptr %236, align 1, !tbaa !76
  %269 = and i8 %268, -2
  %270 = icmp eq i8 %269, 10
  %271 = select i1 %270, i32 2, i32 1, !prof !214
  br label %280

272:                                              ; preds = %264
  br i1 %234, label %276, label %273, !prof !215

273:                                              ; preds = %272
  %274 = load i8, ptr %235, align 1, !tbaa !76
  %275 = zext i8 %274 to i32
  br label %276

276:                                              ; preds = %273, %272
  %277 = phi i32 [ %275, %273 ], [ 12, %272 ]
  %278 = add nuw nsw i32 %277, 3
  %279 = lshr i32 %278, 2
  br label %280

280:                                              ; preds = %276, %267
  %281 = phi i32 [ %271, %267 ], [ %279, %276 ]
  %282 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %256
  %283 = load i32, ptr %282, align 4, !tbaa !80
  %284 = icmp ugt i32 %281, %283
  br i1 %284, label %292, label %285, !prof !216

285:                                              ; preds = %280
  %286 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %256
  %287 = load i64, ptr %286, align 8, !tbaa !90
  %288 = and i64 %287, %252
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %292, label %290, !prof !217

290:                                              ; preds = %285
  %291 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %256, i64 %230
  store i8 1, ptr %291, align 1, !tbaa !76
  store i8 1, ptr %237, align 1, !tbaa !76
  br label %292

292:                                              ; preds = %290, %285, %280
  %293 = add nuw nsw i64 %256, 1
  %294 = icmp eq i64 %293, 27
  br i1 %294, label %295, label %255, !prof !218, !llvm.loop !219

295:                                              ; preds = %292
  %296 = add nuw nsw i64 %230, 1
  %297 = icmp eq i64 %296, 87
  br i1 %297, label %298, label %229, !prof !220, !llvm.loop !221

298:                                              ; preds = %295, %322
  %299 = phi i64 [ %323, %322 ], [ 0, %295 ]
  %300 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %299
  %301 = load ptr, ptr %300, align 8, !tbaa !65
  %302 = icmp eq ptr %301, null
  br i1 %302, label %322, label %303, !prof !222

303:                                              ; preds = %298
  %304 = icmp eq i64 %299, 0
  br i1 %304, label %313, label %305

305:                                              ; preds = %303, %310
  %306 = phi i64 [ %311, %310 ], [ 0, %303 ]
  %307 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !65
  %309 = icmp eq ptr %301, %308
  br i1 %309, label %313, label %310

310:                                              ; preds = %305
  %311 = add nuw nsw i64 %306, 1
  %312 = icmp eq i64 %311, %299
  br i1 %312, label %313, label %305, !llvm.loop !223

313:                                              ; preds = %310, %305, %303
  %314 = phi i64 [ 0, %303 ], [ %299, %310 ], [ %306, %305 ]
  %315 = and i64 %314, 4294967295
  %316 = icmp eq i64 %299, %315
  br i1 %316, label %317, label %322

317:                                              ; preds = %313
  tail call void @free(ptr noundef %301)
  %318 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %299
  %319 = load ptr, ptr %318, align 8, !tbaa !65
  tail call void @free(ptr noundef %319)
  %320 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %299
  %321 = load ptr, ptr %320, align 8, !tbaa !65
  tail call void @free(ptr noundef %321)
  br label %322

322:                                              ; preds = %313, %317, %298
  %323 = add nuw nsw i64 %299, 1
  %324 = icmp eq i64 %323, 87
  br i1 %324, label %325, label %298, !prof !220, !llvm.loop !224

325:                                              ; preds = %322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @move_cost, i8 0, i64 696, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @may_move_in_cost, i8 0, i64 696, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @may_move_out_cost, i8 0, i64 696, i1 false)
  store i32 -1, ptr @last_mode_for_init_move_cost, align 4, !tbaa !80
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @reinit_regs() local_unnamed_addr #16 !prof !64 {
  tail call void @init_regs()
  tail call void @ira_init() #26
  ret void
}

declare void @ira_init() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @init_fake_stack_mems() local_unnamed_addr #13 !prof !105 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %7, %1 ]
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !65
  %4 = trunc i64 %2 to i32
  %5 = tail call ptr @gen_rtx_MEM(i32 noundef %4, ptr noundef %3) #26
  %6 = getelementptr inbounds [87 x ptr], ptr @top_of_stack, i64 0, i64 %2
  store ptr %5, ptr %6, align 8, !tbaa !65
  %7 = add nuw nsw i64 %2, 1
  %8 = icmp eq i64 %7, 87
  br i1 %8, label %9, label %1, !prof !220, !llvm.loop !225

9:                                                ; preds = %1
  ret void
}

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @memory_move_secondary_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #16 !prof !64 {
  br label %4

4:                                                ; preds = %22, %3
  %5 = phi i32 [ 0, %3 ], [ %23, %22 ]
  %6 = phi i32 [ %1, %3 ], [ %12, %22 ]
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [87 x ptr], ptr @top_of_stack, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = icmp ne i32 %2, 0
  %11 = zext i1 %10 to i8
  %12 = tail call i32 @secondary_reload_class(i8 noundef zeroext %11, i32 noundef %6, i32 noundef %0, ptr noundef %9) #26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  br i1 %10, label %15, label %17

15:                                               ; preds = %14
  %16 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %12, i32 noundef %6) #26
  br label %19

17:                                               ; preds = %14
  %18 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %6, i32 noundef %12) #26
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = icmp eq i32 %12, %6
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = add nsw i32 %5, %20
  br label %4

24:                                               ; preds = %19, %4
  %25 = phi i32 [ 0, %4 ], [ %20, %19 ]
  %26 = add nsw i32 %5, %25
  ret i32 %26
}

declare i32 @secondary_reload_class(i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @fix_register(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #16 !prof !64 {
  %4 = tail call i32 @decode_reg_name(ptr noundef %0) #26
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = and i32 %4, 2147483646
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = sext i32 %1 to i64
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds [2 x [2 x ptr]], ptr @fix_register.what_option, i64 0, i64 %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.86, ptr noundef %0, ptr noundef %17) #26
  br label %26

18:                                               ; preds = %9, %6
  %19 = trunc i32 %1 to i8
  %20 = zext nneg i32 %4 to i64
  %21 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %20
  store i8 %19, ptr %21, align 1, !tbaa !76
  %22 = trunc i32 %2 to i8
  %23 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %20
  store i8 %22, ptr %23, align 1, !tbaa !76
  br label %26

24:                                               ; preds = %3
  %25 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.87, ptr noundef %0) #26
  br label %26

26:                                               ; preds = %13, %18, %24
  ret void
}

declare i32 @decode_reg_name(ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @globalize_reg(i32 noundef %0) local_unnamed_addr #16 !prof !64 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !76
  %5 = icmp eq i8 %4, 0
  %6 = load i1, ptr @no_global_reg_vars, align 4
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.88) #26
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %2
  %11 = load i8, ptr %10, align 1, !tbaa !76
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.89) #26
  br label %45

15:                                               ; preds = %9
  %16 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %2
  %17 = load i8, ptr %16, align 1, !tbaa !76
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr %3, align 1, !tbaa !76
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.90) #26
  br label %24

24:                                               ; preds = %22, %19, %15
  store i8 1, ptr %10, align 1, !tbaa !76
  %25 = icmp eq i32 %0, 7
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = zext nneg i32 %0 to i64
  %28 = shl nuw i64 1, %27
  %29 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !90
  %30 = or i64 %29, %28
  store i64 %30, ptr @regs_invalidated_by_call, align 8, !tbaa !90
  %31 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !65
  %32 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %31, i32 noundef %0) #26
  br label %33

33:                                               ; preds = %26, %24
  %34 = load i8, ptr %3, align 1, !tbaa !76
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  store i8 1, ptr %16, align 1, !tbaa !76
  store i8 1, ptr %3, align 1, !tbaa !76
  %37 = zext nneg i32 %0 to i64
  %38 = shl nuw i64 1, %37
  %39 = load i64, ptr @fixed_reg_set, align 8, !tbaa !90
  %40 = or i64 %39, %38
  store i64 %40, ptr @fixed_reg_set, align 8, !tbaa !90
  %41 = load i64, ptr @call_used_reg_set, align 8, !tbaa !90
  %42 = or i64 %41, %38
  store i64 %42, ptr @call_used_reg_set, align 8, !tbaa !90
  %43 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !90
  %44 = or i64 %43, %38
  store i64 %44, ptr @call_fixed_reg_set, align 8, !tbaa !90
  tail call void @init_regs()
  tail call void @ira_init() #26
  br label %45

45:                                               ; preds = %33, %36, %13
  ret void
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @reg_preferred_class(i32 noundef %0) local_unnamed_addr #17 !prof !226 {
  %2 = load ptr, ptr @reg_pref, align 8, !tbaa !65
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !227

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.reg_pref, ptr %2, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !228
  %8 = sext i8 %7 to i32
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 13, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @reg_alternate_class(i32 noundef %0) local_unnamed_addr #18 !prof !230 {
  %2 = load ptr, ptr @reg_pref, align 8, !tbaa !65
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !231

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.reg_pref, ptr %2, i64 %5, i32 1
  %7 = load i8, ptr %6, align 1, !tbaa !232
  %8 = sext i8 %7 to i32
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 26, %1 ]
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @reg_cover_class(i32 noundef %0) local_unnamed_addr #19 !prof !64 {
  %2 = load ptr, ptr @reg_pref, align 8, !tbaa !65
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.reg_pref, ptr %2, i64 %5, i32 2
  %7 = load i8, ptr %6, align 1, !tbaa !233
  %8 = sext i8 %7 to i32
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @resize_reg_info() local_unnamed_addr #13 !prof !234 {
  %1 = load ptr, ptr @reg_pref, align 8, !tbaa !65
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %22, !prof !235

3:                                                ; preds = %0
  %4 = tail call i32 @max_reg_num() #26
  store i32 %4, ptr @reg_info_size, align 4, !tbaa !80
  %5 = load ptr, ptr @reg_pref, align 8, !tbaa !65
  %6 = icmp ne ptr %5, null
  %7 = load ptr, ptr @reg_renumber, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8, !prof !196
  br i1 %9, label %10, label %11, !prof !196

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 948, ptr noundef nonnull @.str.81) #26
  br label %11

11:                                               ; preds = %3, %10
  %12 = load i32, ptr @reg_info_size, align 4, !tbaa !80
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 1
  %15 = tail call ptr @xmalloc(i64 noundef %14) #26
  store ptr %15, ptr @reg_renumber, align 8, !tbaa !65
  %16 = load i32, ptr @reg_info_size, align 4, !tbaa !80
  %17 = sext i32 %16 to i64
  %18 = tail call ptr @xcalloc(i64 noundef %17, i64 noundef 3) #26
  store ptr %18, ptr @reg_pref, align 8, !tbaa !65
  %19 = load ptr, ptr @reg_renumber, align 8, !tbaa !65
  %20 = load i32, ptr @reg_info_size, align 4, !tbaa !80
  %21 = sext i32 %20 to i64
  br label %54

22:                                               ; preds = %0
  %23 = load i32, ptr @reg_info_size, align 4, !tbaa !80
  %24 = tail call i32 @max_reg_num() #26
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %58, label %26, !prof !236

26:                                               ; preds = %22
  %27 = load i32, ptr @reg_info_size, align 4, !tbaa !80
  %28 = tail call i32 @max_reg_num() #26
  store i32 %28, ptr @reg_info_size, align 4, !tbaa !80
  %29 = load ptr, ptr @reg_pref, align 8, !tbaa !65
  %30 = icmp ne ptr %29, null
  %31 = load ptr, ptr @reg_renumber, align 8
  %32 = icmp ne ptr %31, null
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 971, ptr noundef nonnull @.str.81) #26
  br label %35

35:                                               ; preds = %26, %34
  %36 = load ptr, ptr @reg_renumber, align 8, !tbaa !65
  %37 = load i32, ptr @reg_info_size, align 4, !tbaa !80
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 1
  %40 = tail call ptr @xrealloc(ptr noundef %36, i64 noundef %39) #26
  store ptr %40, ptr @reg_renumber, align 8, !tbaa !65
  %41 = load ptr, ptr @reg_pref, align 8, !tbaa !65
  %42 = load i32, ptr @reg_info_size, align 4, !tbaa !80
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 3
  %45 = tail call ptr @xrealloc(ptr noundef %41, i64 noundef %44) #26
  store ptr %45, ptr @reg_pref, align 8, !tbaa !65
  %46 = sext i32 %27 to i64
  %47 = getelementptr inbounds %struct.reg_pref, ptr %45, i64 %46
  %48 = load i32, ptr @reg_info_size, align 4, !tbaa !80
  %49 = sub nsw i32 %48, %27
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %47, i8 -1, i64 %51, i1 false)
  %52 = load ptr, ptr @reg_renumber, align 8, !tbaa !65
  %53 = getelementptr inbounds i16, ptr %52, i64 %46
  br label %54

54:                                               ; preds = %11, %35
  %55 = phi i64 [ %50, %35 ], [ %21, %11 ]
  %56 = phi ptr [ %53, %35 ], [ %19, %11 ]
  %57 = shl nsw i64 %55, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %56, i8 -1, i64 %57, i1 false)
  br label %58

58:                                               ; preds = %54, %22
  %59 = phi i8 [ 0, %22 ], [ 1, %54 ]
  ret i8 %59
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_reg_info() local_unnamed_addr #20 !prof !237 {
  %1 = load ptr, ptr @reg_pref, align 8, !tbaa !65
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !196

3:                                                ; preds = %0
  tail call void @free(ptr noundef %1)
  store ptr null, ptr @reg_pref, align 8, !tbaa !65
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @reg_renumber, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !196

7:                                                ; preds = %4
  tail call void @free(ptr noundef %5)
  store ptr null, ptr @reg_renumber, align 8, !tbaa !65
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #21

; Function Attrs: nounwind uwtable
define internal noundef i32 @reginfo_init() #13 !prof !237 !PGOFuncName !238 {
  %1 = load ptr, ptr @df, align 8, !tbaa !65
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !196

3:                                                ; preds = %0
  tail call void @df_compute_regs_ever_live(i8 noundef zeroext 1) #26
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @reg_pref, align 8, !tbaa !65
  store i1 true, ptr @no_global_reg_vars, align 4
  ret i32 1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @setup_reg_classes(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #22 !prof !239 {
  %5 = load ptr, ptr @reg_pref, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7, !prof !240

7:                                                ; preds = %4
  %8 = load i32, ptr @reg_info_size, align 4, !tbaa !80
  %9 = tail call i32 @max_reg_num() #26
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %12, label %11, !prof !241

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 1043, ptr noundef nonnull @.str.81) #26
  br label %12

12:                                               ; preds = %7, %11
  %13 = trunc i32 %1 to i8
  %14 = load ptr, ptr @reg_pref, align 8, !tbaa !65
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds %struct.reg_pref, ptr %14, i64 %15
  store i8 %13, ptr %16, align 1, !tbaa !228
  %17 = trunc i32 %2 to i8
  %18 = getelementptr inbounds %struct.reg_pref, ptr %14, i64 %15, i32 1
  store i8 %17, ptr %18, align 1, !tbaa !232
  %19 = trunc i32 %3 to i8
  %20 = getelementptr inbounds %struct.reg_pref, ptr %14, i64 %15, i32 2
  store i8 %19, ptr %20, align 1, !tbaa !233
  br label %21

21:                                               ; preds = %4, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @reg_scan(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 !prof !242 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !76
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !243

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 40) #26
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq ptr %0, null
  br i1 %7, label %25, label %8, !prof !244

8:                                                ; preds = %6, %21
  %9 = phi ptr [ %23, %21 ], [ %0, %6 ]
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -7
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %21, !prof !245

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  tail call fastcc void @reg_scan_mark_refs(ptr noundef %16, ptr noundef nonnull %9)
  %17 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !246

20:                                               ; preds = %14
  tail call fastcc void @reg_scan_mark_refs(ptr noundef nonnull %18, ptr noundef nonnull %9)
  br label %21

21:                                               ; preds = %8, %20, %14
  %22 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !prof !247, !llvm.loop !248

25:                                               ; preds = %21, %6
  %26 = load i8, ptr @timevar_enable, align 1, !tbaa !76
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !243

28:                                               ; preds = %25
  tail call void @timevar_pop_1(i32 noundef 40) #26
  br label %29

29:                                               ; preds = %28, %25
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @reg_scan_mark_refs(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #22 !prof !249 !PGOFuncName !250 {
  br label %3

3:                                                ; preds = %19, %15, %29, %2
  %4 = phi ptr [ %0, %2 ], [ %31, %29 ], [ %17, %15 ], [ %21, %19 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %165, label %6, !prof !251

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = trunc i32 %7 to i16
  switch i16 %9, label %128 [
    i16 35, label %165
    i16 30, label %165
    i16 32, label %165
    i16 31, label %165
    i16 33, label %165
    i16 46, label %165
    i16 36, label %165
    i16 45, label %165
    i16 44, label %165
    i16 20, label %165
    i16 21, label %165
    i16 37, label %165
    i16 3, label %10
    i16 4, label %19
    i16 25, label %23
    i16 23, label %32
  ], !prof !252

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !253

14:                                               ; preds = %10
  tail call fastcc void @reg_scan_mark_refs(ptr noundef nonnull %12, ptr noundef %1)
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %165, label %3, !prof !254

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  %22 = icmp eq ptr %21, null
  br i1 %22, label %165, label %3, !prof !255

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !76
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %29, label %165, !prof !256

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  br label %3

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br label %34

34:                                               ; preds = %39, %32
  %35 = phi ptr [ %33, %32 ], [ %40, %39 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  %37 = load i32, ptr %36, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %41 [
    i16 39, label %39
    i16 40, label %39
    i16 99, label %39
  ], !prof !257

39:                                               ; preds = %34, %34, %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  br label %34, !llvm.loop !258

41:                                               ; preds = %34
  %42 = load ptr, ptr %33, align 8, !tbaa !76
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 37
  br i1 %45, label %46, label %107, !prof !259

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !76
  %49 = icmp ugt i32 %48, 52
  br i1 %49, label %50, label %107, !prof !260

50:                                               ; preds = %46
  %51 = load ptr, ptr @df, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !261
  %54 = zext i32 %48 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = getelementptr inbounds %struct.df_reg_info, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !264
  %59 = icmp eq i32 %58, 1
  %60 = and i32 %43, 1207959552
  %61 = icmp eq i32 %60, 0
  %62 = and i1 %61, %59
  br i1 %62, label %63, label %107, !prof !266

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !76
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 1073807359
  %68 = icmp eq i32 %67, 1073741861
  br i1 %68, label %103, label %69, !prof !267

69:                                               ; preds = %63
  %70 = trunc i32 %66 to i16
  switch i16 %70, label %95 [
    i16 49, label %71
    i16 122, label %71
    i16 35, label %103
    i16 45, label %103
    i16 44, label %103
    i16 121, label %84
  ], !prof !268

71:                                               ; preds = %69, %69
  %72 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !76
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 30
  br i1 %76, label %77, label %83, !prof !269

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !76
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 1073807359
  %82 = icmp eq i32 %81, 1073741861
  br i1 %82, label %103, label %83, !prof !270

83:                                               ; preds = %77, %71
  switch i16 %70, label %95 [
    i16 35, label %103
    i16 45, label %103
    i16 44, label %103
    i16 121, label %84
    i16 49, label %90
    i16 122, label %90
  ], !prof !271

84:                                               ; preds = %69, %83
  %85 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !76
  %87 = load i32, ptr %86, align 8
  %88 = trunc i32 %87 to i16
  switch i16 %88, label %89 [
    i16 35, label %103
    i16 45, label %103
    i16 44, label %103
  ]

89:                                               ; preds = %84
  switch i16 %70, label %95 [
    i16 49, label %90
    i16 122, label %90
  ], !prof !272

90:                                               ; preds = %89, %83, %83, %89
  %91 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !76
  %93 = load i32, ptr %92, align 8
  %94 = trunc i32 %93 to i16
  switch i16 %94, label %95 [
    i16 35, label %103
    i16 45, label %103
    i16 44, label %103
  ], !prof !273

95:                                               ; preds = %90, %69, %83, %89
  %96 = tail call ptr @find_reg_note(ptr noundef %1, i32 noundef 4, ptr noundef null) #26
  %97 = icmp eq ptr %96, null
  br i1 %97, label %107, label %98, !prof !274

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !76
  %101 = load i32, ptr %100, align 8
  %102 = trunc i32 %101 to i16
  switch i16 %102, label %107 [
    i16 35, label %103
    i16 45, label %103
    i16 44, label %103
  ], !prof !275

103:                                              ; preds = %98, %98, %90, %90, %90, %69, %69, %69, %83, %83, %83, %84, %84, %98, %84, %77, %63
  %104 = load ptr, ptr %33, align 8, !tbaa !76
  %105 = load i32, ptr %104, align 8
  %106 = or i32 %105, 1073741824
  store i32 %106, ptr %104, align 8
  br label %107

107:                                              ; preds = %98, %103, %95, %50, %46, %41
  %108 = load i32, ptr %36, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 37
  br i1 %110, label %111, label %128, !prof !259

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !76
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %128, !prof !276

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %117

117:                                              ; preds = %125, %115
  %118 = phi ptr [ %116, %115 ], [ %126, %125 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !76
  %120 = load i32, ptr %119, align 8
  %121 = trunc i32 %120 to i16
  switch i16 %121, label %127 [
    i16 98, label %125
    i16 99, label %125
    i16 100, label %125
    i16 39, label %122
  ], !prof !277

122:                                              ; preds = %117
  %123 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %119) #26
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %117, %117, %117, %122
  %126 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  br label %117, !llvm.loop !278

127:                                              ; preds = %122, %117
  tail call void @set_reg_attrs_from_value(ptr noundef nonnull %36, ptr noundef nonnull %119) #26
  br label %128

128:                                              ; preds = %107, %111, %127, %6
  %129 = zext nneg i32 %8 to i64
  %130 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !65
  %132 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %129
  %133 = load i8, ptr %132, align 1, !tbaa !76
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %165, label %135, !prof !279

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %137 = zext i8 %133 to i64
  br label %138

138:                                              ; preds = %135, %163
  %139 = phi i64 [ %137, %135 ], [ %140, %163 ]
  %140 = add nsw i64 %139, -1
  %141 = getelementptr inbounds i8, ptr %131, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !76
  switch i8 %142, label %163 [
    i8 101, label %143
    i8 69, label %146
  ], !prof !280

143:                                              ; preds = %138
  %144 = getelementptr inbounds [1 x %union.rtunion_def], ptr %136, i64 0, i64 %140
  %145 = load ptr, ptr %144, align 8, !tbaa !76
  tail call fastcc void @reg_scan_mark_refs(ptr noundef %145, ptr noundef %1)
  br label %163

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %148 = getelementptr inbounds [1 x %union.rtunion_def], ptr %147, i64 0, i64 %140
  %149 = load ptr, ptr %148, align 8, !tbaa !76
  %150 = icmp eq ptr %149, null
  br i1 %150, label %163, label %151, !prof !281

151:                                              ; preds = %146
  %152 = load i32, ptr %149, align 8, !tbaa !282
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %163, !prof !284

154:                                              ; preds = %151
  %155 = zext nneg i32 %152 to i64
  br label %156

156:                                              ; preds = %154, %156
  %157 = phi i64 [ %155, %154 ], [ %158, %156 ]
  %158 = add nsw i64 %157, -1
  %159 = load ptr, ptr %148, align 8, !tbaa !76
  %160 = getelementptr inbounds %struct.rtvec_def, ptr %159, i64 0, i32 1, i64 %158
  %161 = load ptr, ptr %160, align 8, !tbaa !65
  tail call fastcc void @reg_scan_mark_refs(ptr noundef %161, ptr noundef %1)
  %162 = icmp sgt i64 %157, 1
  br i1 %162, label %156, label %163, !prof !285, !llvm.loop !286

163:                                              ; preds = %156, %151, %138, %143, %146
  %164 = icmp sgt i64 %139, 1
  br i1 %164, label %138, label %165, !prof !287, !llvm.loop !288

165:                                              ; preds = %163, %128, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %15, %19, %23, %6, %3
  ret void
}

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @reg_classes_intersect_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !289 {
  %3 = icmp eq i32 %0, %1
  %4 = icmp eq i32 %0, 26
  %5 = or i1 %4, %3
  %6 = icmp eq i32 %1, 26
  %7 = or i1 %6, %5
  br i1 %7, label %18, label %8, !prof !290

8:                                                ; preds = %2
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !90
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !90
  %15 = and i64 %14, %11
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi i32 [ 1, %2 ], [ %17, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local void @init_subregs_of_mode() local_unnamed_addr #13 !prof !237 {
  %1 = load ptr, ptr @subregs_of_mode, align 8, !tbaa !65
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !236

3:                                                ; preds = %0
  tail call void @htab_empty(ptr noundef nonnull %1) #26
  br label %6

4:                                                ; preds = %0
  %5 = tail call ptr @htab_create(i64 noundef 100, ptr noundef nonnull @som_hash, ptr noundef nonnull @som_eq, ptr noundef nonnull @free) #26
  store ptr %5, ptr @subregs_of_mode, align 8, !tbaa !65
  br label %6

6:                                                ; preds = %4, %3
  %7 = load ptr, ptr @cfun, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !291
  %10 = load ptr, ptr %9, align 8, !tbaa !293
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !295
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !297
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %51, label %16, !prof !298

16:                                               ; preds = %6, %42
  %17 = phi ptr [ %44, %42 ], [ %12, %6 ]
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22, !prof !299

22:                                               ; preds = %16, %38
  %23 = phi ptr [ %40, %38 ], [ %20, %16 ]
  %24 = load ptr, ptr %18, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !300
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %42, label %30, !prof !302

30:                                               ; preds = %22
  %31 = load i32, ptr %23, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %38, !prof !303

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  tail call fastcc void @find_subregs_of_mode(ptr noundef %37)
  br label %38

38:                                               ; preds = %30, %35
  %39 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %22, !prof !304, !llvm.loop !305

42:                                               ; preds = %38, %22, %16
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !295
  %45 = load ptr, ptr @cfun, align 8, !tbaa !65
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !291
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !297
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %51, label %16, !prof !306, !llvm.loop !307

51:                                               ; preds = %42, %6
  ret void
}

declare void @htab_empty(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @som_hash(ptr nocapture noundef readonly %0) #23 !prof !64 {
  %2 = load i32, ptr %0, align 4, !tbaa !308
  ret i32 %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @som_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #24 !prof !310 !PGOFuncName !311 {
  %3 = load i32, ptr %0, align 4, !tbaa !308
  %4 = load i32, ptr %1, align 4, !tbaa !308
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @find_subregs_of_mode(ptr nocapture noundef readonly %0) unnamed_addr #22 !prof !312 !PGOFuncName !313 {
  %2 = alloca %struct.subregs_of_mode_node, align 4
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq i32 %4, 39
  br i1 %8, label %9, label %39, !prof !314

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %2) #26
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %38, !prof !315

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !76
  %18 = lshr i32 %3, 16
  %19 = and i32 %18, 255
  %20 = icmp ult i32 %17, 53
  br i1 %20, label %38, label %21, !prof !316

21:                                               ; preds = %15
  %22 = and i32 %17, -8
  store i32 %22, ptr %2, align 4, !tbaa !308
  %23 = load ptr, ptr @subregs_of_mode, align 8, !tbaa !65
  %24 = call ptr @htab_find_slot_with_hash(ptr noundef %23, ptr noundef nonnull %2, i32 noundef %22, i32 noundef 1) #26
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29, !prof !317

27:                                               ; preds = %21
  %28 = call ptr @xcalloc(i64 noundef 1, i64 noundef 92) #26
  store i32 %22, ptr %28, align 4, !tbaa !308
  store ptr %28, ptr %24, align 8, !tbaa !65
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %28, %27 ], [ %25, %21 ]
  %31 = and i32 %17, 7
  %32 = shl nuw nsw i32 1, %31
  %33 = zext nneg i32 %19 to i64
  %34 = getelementptr inbounds %struct.subregs_of_mode_node, ptr %30, i64 0, i32 1, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !76
  %36 = trunc i32 %32 to i8
  %37 = or i8 %35, %36
  store i8 %37, ptr %34, align 1, !tbaa !76
  br label %38

38:                                               ; preds = %9, %15, %29
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %2) #26
  br label %39

39:                                               ; preds = %38, %1
  %40 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %5
  %41 = load i8, ptr %40, align 1, !tbaa !76
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %71, label %43, !prof !318

43:                                               ; preds = %39
  %44 = zext i8 %41 to i64
  br label %45

45:                                               ; preds = %43, %69
  %46 = phi i64 [ %44, %43 ], [ %47, %69 ]
  %47 = add nsw i64 %46, -1
  %48 = getelementptr inbounds i8, ptr %7, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !76
  switch i8 %49, label %69 [
    i8 101, label %50
    i8 69, label %54
  ], !prof !319

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %51, i64 0, i64 %47
  %53 = load ptr, ptr %52, align 8, !tbaa !76
  call fastcc void @find_subregs_of_mode(ptr noundef %53)
  br label %69

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %56 = getelementptr inbounds [1 x %union.rtunion_def], ptr %55, i64 0, i64 %47
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  %58 = load i32, ptr %57, align 8, !tbaa !282
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %69, !prof !320

60:                                               ; preds = %54
  %61 = zext nneg i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ %61, %60 ], [ %64, %62 ]
  %64 = add nsw i64 %63, -1
  %65 = load ptr, ptr %56, align 8, !tbaa !76
  %66 = getelementptr inbounds %struct.rtvec_def, ptr %65, i64 0, i32 1, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  call fastcc void @find_subregs_of_mode(ptr noundef %67)
  %68 = icmp sgt i64 %63, 1
  br i1 %68, label %62, label %69, !prof !321, !llvm.loop !322

69:                                               ; preds = %62, %54, %45, %50
  %70 = icmp sgt i64 %46, 1
  br i1 %70, label %45, label %71, !prof !323, !llvm.loop !324

71:                                               ; preds = %69, %39
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @invalid_mode_change_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #22 !prof !325 {
  %4 = alloca %struct.subregs_of_mode_node, align 4
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %4) #26
  %5 = load ptr, ptr @subregs_of_mode, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !326

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 1353, ptr noundef nonnull @.str.81) #26
  br label %8

8:                                                ; preds = %3, %7
  %9 = and i32 %0, -8
  store i32 %9, ptr %4, align 4, !tbaa !308
  %10 = load ptr, ptr @subregs_of_mode, align 8, !tbaa !65
  %11 = call ptr @htab_find_with_hash(ptr noundef %10, ptr noundef nonnull %4, i32 noundef %9) #26
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13, !prof !327

13:                                               ; preds = %8
  %14 = and i32 %0, 7
  %15 = shl nuw nsw i32 1, %14
  br label %16

16:                                               ; preds = %13, %27
  %17 = phi i64 [ 0, %13 ], [ %28, %27 ]
  %18 = getelementptr inbounds %struct.subregs_of_mode_node, ptr %11, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !76
  %20 = zext i8 %19 to i32
  %21 = and i32 %15, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !328

23:                                               ; preds = %16
  %24 = trunc i64 %17 to i32
  %25 = call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %2, i32 noundef %24, i32 noundef %1) #26
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30, !prof !329

27:                                               ; preds = %16, %23
  %28 = add nuw nsw i64 %17, 1
  %29 = icmp eq i64 %28, 87
  br i1 %29, label %30, label %16, !prof !330, !llvm.loop !331

30:                                               ; preds = %27, %23, %8
  %31 = phi i8 [ 0, %8 ], [ 1, %23 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %4) #26
  ret i8 %31
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @finish_subregs_of_mode() local_unnamed_addr #13 !prof !237 {
  %1 = load ptr, ptr @subregs_of_mode, align 8, !tbaa !65
  tail call void @htab_delete(ptr noundef %1) #26
  store ptr null, ptr @subregs_of_mode, align 8, !tbaa !65
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

declare void @ix86_conditional_register_usage() local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @df_compute_regs_ever_live(i8 noundef zeroext) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

declare void @set_reg_attrs_from_value(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!63}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @init_move_cost, ptr @ix86_register_move_cost, i64 578}
!36 = !{ptr @init_move_cost, ptr @xmalloc, i64 6}
!37 = !{ptr @init_reg_modes_target, ptr @choose_hard_reg_mode, i64 53}
!38 = !{ptr @choose_hard_reg_mode, ptr @ix86_hard_regno_mode_ok, i64 388}
!39 = !{ptr @init_regs, ptr @ix86_conditional_register_usage, i64 1}
!40 = !{ptr @init_regs, ptr @bitmap_obstack_initialize, i64 1}
!41 = !{ptr @init_regs, ptr @bitmap_obstack_alloc_stat, i64 1}
!42 = !{ptr @init_regs, ptr @bitmap_set_bit, i64 46}
!43 = !{ptr @init_regs, ptr @ix86_hard_regno_mode_ok, i64 1305}
!44 = !{ptr @init_fake_stack_mems, ptr @gen_rtx_MEM, i64 87}
!45 = !{ptr @resize_reg_info, ptr @max_reg_num, i64 76}
!46 = !{ptr @resize_reg_info, ptr @xmalloc, i64 38}
!47 = !{ptr @resize_reg_info, ptr @xcalloc, i64 38}
!48 = !{ptr @free_reg_info, ptr @free, i64 76}
!49 = !{ptr @reginfo_init, ptr @df_compute_regs_ever_live, i64 38}
!50 = !{ptr @setup_reg_classes, ptr @max_reg_num, i64 107433}
!51 = !{ptr @reg_scan, ptr @reg_scan_mark_refs, i64 2029618}
!52 = !{ptr @reg_scan_mark_refs, ptr @reg_scan_mark_refs, i64 6985901}
!53 = !{ptr @reg_scan_mark_refs, ptr @find_reg_note, i64 262176}
!54 = !{ptr @reg_scan_mark_refs, ptr @set_reg_attrs_from_value, i64 613227}
!55 = !{ptr @init_subregs_of_mode, ptr @htab_create, i64 38}
!56 = !{ptr @init_subregs_of_mode, ptr @find_subregs_of_mode, i64 621180}
!57 = !{ptr @find_subregs_of_mode, ptr @htab_find_slot_with_hash, i64 202}
!58 = !{ptr @find_subregs_of_mode, ptr @xcalloc, i64 162}
!59 = !{ptr @find_subregs_of_mode, ptr @find_subregs_of_mode, i64 2787910}
!60 = !{ptr @invalid_mode_change_p, ptr @htab_find_with_hash, i64 4727052}
!61 = !{ptr @invalid_mode_change_p, ptr @ix86_cannot_change_mode_class, i64 8888}
!62 = !{ptr @finish_subregs_of_mode, ptr @htab_delete, i64 38}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!70, !66, i64 8}
!70 = !{!"_IO_FILE", !71, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !71, i64 112, !71, i64 116, !72, i64 120, !73, i64 128, !67, i64 130, !67, i64 131, !66, i64 136, !72, i64 144, !66, i64 152, !66, i64 160, !66, i64 168, !66, i64 176, !72, i64 184, !71, i64 192, !67, i64 196}
!71 = !{!"int", !67, i64 0}
!72 = !{!"long", !67, i64 0}
!73 = !{!"short", !67, i64 0}
!74 = !{!70, !66, i64 16}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!67, !67, i64 0}
!77 = !{!70, !66, i64 40}
!78 = !{!70, !66, i64 48}
!79 = !{!70, !71, i64 0}
!80 = !{!71, !71, i64 0}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!"function_entry_count", i64 1306249}
!85 = !{!86, !66, i64 0}
!86 = !{!"bitmap_head_def", !66, i64 0, !66, i64 8, !71, i64 16, !66, i64 24}
!87 = !{!"branch_weights", i32 332547, i32 973702}
!88 = !{!89, !71, i64 16}
!89 = !{!"bitmap_element_def", !66, i64 0, !66, i64 8, !71, i64 16, !67, i64 24}
!90 = !{!72, !72, i64 0}
!91 = !{!"branch_weights", i32 1098230, i32 2504185}
!92 = !{!"branch_weights", i32 3044798, i32 1}
!93 = !{!"branch_weights", i32 24185267, i32 3044798}
!94 = distinct !{!94, !82, !83}
!95 = !{!"branch_weights", i32 1, i32 1023666}
!96 = !{!"branch_weights", i32 1255784, i32 540614}
!97 = !{!"branch_weights", i32 1023666, i32 772732}
!98 = distinct !{!98, !82, !83}
!99 = !{!89, !66, i64 0}
!100 = !{!"branch_weights", i32 557616, i32 466051}
!101 = distinct !{!101, !83}
!102 = !{!"branch_weights", i32 557616, i32 3044799}
!103 = !{!"branch_weights", i32 1306249, i32 2296166}
!104 = distinct !{!104, !82, !83}
!105 = !{!"function_entry_count", i64 1}
!106 = !{!"branch_weights", i32 1114, i32 317}
!107 = !{!"branch_weights", i32 27, i32 1404}
!108 = distinct !{!108, !82, !83}
!109 = !{!"branch_weights", i32 1, i32 26}
!110 = distinct !{!110, !82, !83}
!111 = !{!"function_entry_count", i64 2}
!112 = !{!"branch_weights", i32 0, i32 2}
!113 = !{!"branch_weights", i32 20, i32 34}
!114 = !{!"branch_weights", i32 340, i32 578}
!115 = !{!"branch_weights", i32 578, i32 0}
!116 = !{!73, !73, i64 0}
!117 = !{!"branch_weights", i32 339, i32 579}
!118 = !{!"branch_weights", i32 34, i32 884}
!119 = distinct !{!119, !82, !83}
!120 = !{!"branch_weights", i32 2, i32 52}
!121 = distinct !{!121, !82, !83}
!122 = !{!"branch_weights", i32 1, i32 577}
!123 = !{!"branch_weights", i32 184, i32 3692}
!124 = !{!"branch_weights", i32 748, i32 2944}
!125 = !{!"branch_weights", i32 577, i32 3299}
!126 = distinct !{!126, !82, !83}
!127 = distinct !{!127, !82, !83}
!128 = !{!"branch_weights", i32 66, i32 512}
!129 = !{!"branch_weights", i32 360, i32 218}
!130 = distinct !{!130, !82, !83}
!131 = !{!"branch_weights", i32 20, i32 520}
!132 = distinct !{!132, !82, !83}
!133 = distinct !{!133, !82, !83}
!134 = !{!"function_entry_count", i64 710748}
!135 = !{!"branch_weights", i32 22138, i32 688610}
!136 = !{!"branch_weights", i32 696, i32 3915}
!137 = !{!"branch_weights", i32 1392, i32 3219}
!138 = !{!"branch_weights", i32 2088, i32 2523}
!139 = !{!"branch_weights", i32 2784, i32 1827}
!140 = !{!"branch_weights", i32 320, i32 2464}
!141 = !{!"branch_weights", i32 1785, i32 21, i32 21}
!142 = !{!"branch_weights", i32 53, i32 4558}
!143 = distinct !{!143, !82, !83}
!144 = !{!"branch_weights", i32 1, i32 52}
!145 = distinct !{!145, !82, !83}
!146 = !{!"branch_weights", i32 0, i32 53}
!147 = distinct !{!147, !82, !83}
!148 = !{!"function_entry_count", i64 64}
!149 = !{!"branch_weights", i32 1, i32 127}
!150 = !{!"branch_weights", i32 312, i32 72}
!151 = !{!"branch_weights", i32 182, i32 130}
!152 = !{!"branch_weights", i32 127, i32 641}
!153 = distinct !{!153, !82, !83}
!154 = !{!"branch_weights", i32 18, i32 46}
!155 = !{!"branch_weights", i32 1, i32 143}
!156 = !{!"branch_weights", i32 66, i32 6}
!157 = !{!"branch_weights", i32 18, i32 48}
!158 = !{!"branch_weights", i32 143, i32 433}
!159 = distinct !{!159, !82, !83}
!160 = !{!"branch_weights", i32 2, i32 16}
!161 = !{!"branch_weights", i32 0, i32 18}
!162 = !{!"branch_weights", i32 127, i32 1025}
!163 = distinct !{!163, !82, !83}
!164 = !{!"branch_weights", i32 2, i32 0}
!165 = !{!"branch_weights", i32 8, i32 38}
!166 = !{!"branch_weights", i32 8, i32 0}
!167 = !{!"branch_weights", i32 127, i32 2817}
!168 = distinct !{!168, !82, !83}
!169 = distinct !{!169, !82, !83}
!170 = distinct !{!170, !82, !83}
!171 = distinct !{!171, !82, !83}
!172 = distinct !{!172, !82, !83}
!173 = !{!"branch_weights", i32 8101, i32 11582}
!174 = !{!"branch_weights", i32 729, i32 7372}
!175 = !{!"branch_weights", i32 729, i32 18954}
!176 = distinct !{!176, !82, !83}
!177 = !{!"branch_weights", i32 27, i32 702}
!178 = distinct !{!178, !82, !83}
!179 = distinct !{!179, !82, !83}
!180 = !{!"branch_weights", i32 729, i32 14795}
!181 = !{!"branch_weights", i32 0, i32 15524}
!182 = distinct !{!182, !82, !83}
!183 = distinct !{!183, !82, !83}
!184 = distinct !{!184, !82, !83}
!185 = distinct !{!185, !82, !83}
!186 = distinct !{!186, !82, !83}
!187 = !{!"branch_weights", i32 5382, i32 234}
!188 = !{!"branch_weights", i32 130, i32 195}
!189 = !{!"branch_weights", i32 130, i32 823}
!190 = distinct !{!190, !82, !83}
!191 = !{!"branch_weights", i32 207, i32 2393}
!192 = distinct !{!192, !82, !83}
!193 = distinct !{!193, !82, !83}
!194 = !{!"branch_weights", i32 1, i32 0}
!195 = !{!"branch_weights", i32 15, i32 38}
!196 = !{!"branch_weights", i32 0, i32 38}
!197 = !{!"branch_weights", i32 38, i32 15}
!198 = !{!"branch_weights", i32 4, i32 49}
!199 = !{!"branch_weights", i32 52, i32 0}
!200 = !{!"branch_weights", i32 49, i32 1, i32 1, i32 1}
!201 = !{!"branch_weights", i32 49, i32 0}
!202 = !{!"branch_weights", i32 0, i32 49}
!203 = !{!"branch_weights", i32 52, i32 46}
!204 = !{!"branch_weights", i32 3, i32 46}
!205 = distinct !{!205, !82, !83}
!206 = !{!"branch_weights", i32 53, i32 0}
!207 = distinct !{!207, !82, !83}
!208 = !{!"branch_weights", i32 1305, i32 3306}
!209 = !{!"branch_weights", i32 1103, i32 202}
!210 = !{!"branch_weights", i32 87, i32 4524}
!211 = distinct !{!211, !82, !83}
!212 = !{!"branch_weights", i32 2175, i32 87, i32 87}
!213 = !{!"branch_weights", i32 870, i32 1479}
!214 = !{!"branch_weights", i32 100, i32 770}
!215 = !{!"branch_weights", i32 17, i32 1462}
!216 = !{!"branch_weights", i32 552, i32 1797}
!217 = !{!"branch_weights", i32 1493, i32 304}
!218 = !{!"branch_weights", i32 87, i32 2262}
!219 = distinct !{!219, !82, !83}
!220 = !{!"branch_weights", i32 1, i32 86}
!221 = distinct !{!221, !82, !83}
!222 = !{!"branch_weights", i32 87, i32 0}
!223 = distinct !{!223, !82, !83}
!224 = distinct !{!224, !82, !83}
!225 = distinct !{!225, !82, !83}
!226 = !{!"function_entry_count", i64 1081706}
!227 = !{!"branch_weights", i32 1198, i32 1080508}
!228 = !{!229, !67, i64 0}
!229 = !{!"reg_pref", !67, i64 0, !67, i64 1, !67, i64 2}
!230 = !{!"function_entry_count", i64 1208}
!231 = !{!"branch_weights", i32 0, i32 1208}
!232 = !{!229, !67, i64 1}
!233 = !{!229, !67, i64 2}
!234 = !{!"function_entry_count", i64 76}
!235 = !{!"branch_weights", i32 38, i32 38}
!236 = !{!"branch_weights", i32 38, i32 0}
!237 = !{!"function_entry_count", i64 38}
!238 = !{!"reginfo.c;reginfo_init"}
!239 = !{!"function_entry_count", i64 107433}
!240 = !{!"branch_weights", i32 0, i32 107433}
!241 = !{!"branch_weights", i32 107433, i32 0}
!242 = !{!"function_entry_count", i64 78}
!243 = !{!"branch_weights", i32 78, i32 0}
!244 = !{!"branch_weights", i32 1, i32 155}
!245 = !{!"branch_weights", i32 1381272, i32 538360}
!246 = !{!"branch_weights", i32 732923, i32 648349}
!247 = !{!"branch_weights", i32 155, i32 3839109}
!248 = distinct !{!248, !82, !83}
!249 = !{!"function_entry_count", i64 9056845}
!250 = !{!"reginfo.c;reg_scan_mark_refs"}
!251 = !{!"branch_weights", i32 0, i32 9056845}
!252 = !{!"branch_weights", i32 1724121, i32 21843, i32 1451123, i32 0, i32 0, i32 0, i32 0, i32 597042, i32 274212, i32 298593, i32 0, i32 0, i32 2439501, i32 829043, i32 27, i32 44648, i32 1376692}
!253 = !{!"branch_weights", i32 0, i32 829043}
!254 = !{!"branch_weights", i32 648326, i32 180717}
!255 = !{!"branch_weights", i32 23, i32 4}
!256 = !{!"branch_weights", i32 0, i32 44648}
!257 = !{!"branch_weights", i32 1376692, i32 0, i32 0, i32 0}
!258 = distinct !{!258, !82, !83}
!259 = !{!"branch_weights", i32 914569, i32 462123}
!260 = !{!"branch_weights", i32 439627, i32 474942}
!261 = !{!262, !66, i64 216}
!262 = !{!"df", !67, i64 0, !67, i64 64, !66, i64 128, !263, i64 136, !263, i64 176, !66, i64 216, !66, i64 224, !66, i64 232, !71, i64 240, !71, i64 244, !66, i64 248, !71, i64 256, !71, i64 260, !66, i64 264, !66, i64 272, !66, i64 280, !66, i64 288, !66, i64 296, !66, i64 304, !66, i64 312, !66, i64 320, !66, i64 328, !66, i64 336, !71, i64 344, !71, i64 348, !66, i64 352, !71, i64 360, !71, i64 364, !67, i64 365, !67, i64 366}
!263 = !{!"df_ref_info", !66, i64 0, !66, i64 8, !66, i64 16, !71, i64 24, !71, i64 28, !71, i64 32, !71, i64 36}
!264 = !{!265, !71, i64 8}
!265 = !{!"df_reg_info", !66, i64 0, !71, i64 8}
!266 = !{!"branch_weights", i32 -1889472295, i32 1710251757}
!267 = !{!"branch_weights", i32 0, i32 256945}
!268 = !{!"branch_weights", i32 -453589061, i32 100233477, i32 0, i32 0, i32 0, i32 0, i32 0}
!269 = !{!"branch_weights", i32 5494, i32 1040}
!270 = !{!"branch_weights", i32 0, i32 5494}
!271 = !{!"branch_weights", i32 -273601397, i32 0, i32 0, i32 0, i32 0, i32 104929914, i32 0}
!272 = !{!"branch_weights", i32 250411, i32 6534, i32 0}
!273 = !{!"branch_weights", i32 6534, i32 0, i32 0, i32 0}
!274 = !{!"branch_weights", i32 247475, i32 9470}
!275 = !{!"branch_weights", i32 9470, i32 0, i32 0, i32 0}
!276 = !{!"branch_weights", i32 600991, i32 313578}
!277 = !{!"branch_weights", i32 600991, i32 0, i32 769, i32 0, i32 0}
!278 = distinct !{!278, !82, !83}
!279 = !{!"branch_weights", i32 1, i32 3100812}
!280 = !{!"branch_weights", i32 481273, i32 5928068, i32 44696}
!281 = !{!"branch_weights", i32 0, i32 44696}
!282 = !{!283, !71, i64 0}
!283 = !{!"rtvec_def", !71, i64 0, !67, i64 8}
!284 = !{!"branch_weights", i32 44695, i32 1}
!285 = !{!"branch_weights", i32 44697, i32 44695}
!286 = distinct !{!286, !82, !83}
!287 = !{!"branch_weights", i32 3353225, i32 3100812}
!288 = distinct !{!288, !82, !83}
!289 = !{!"function_entry_count", i64 2778037}
!290 = !{!"branch_weights", i32 283260, i32 2494777}
!291 = !{!292, !66, i64 8}
!292 = !{!"function", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !71, i64 104, !71, i64 108, !71, i64 112, !71, i64 116, !71, i64 120, !71, i64 124, !66, i64 128, !71, i64 136, !71, i64 137, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139}
!293 = !{!294, !66, i64 0}
!294 = !{!"control_flow_graph", !66, i64 0, !66, i64 8, !66, i64 16, !71, i64 24, !71, i64 28, !71, i64 32, !66, i64 40, !71, i64 48, !67, i64 52, !67, i64 60, !71, i64 68, !71, i64 72}
!295 = !{!296, !66, i64 56}
!296 = !{!"basic_block_def", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !67, i64 32, !66, i64 48, !66, i64 56, !67, i64 64, !72, i64 72, !71, i64 80, !71, i64 84, !71, i64 88, !71, i64 92, !71, i64 96}
!297 = !{!294, !66, i64 8}
!298 = !{!"branch_weights", i32 1, i32 151}
!299 = !{!"branch_weights", i32 1, i32 247}
!300 = !{!301, !66, i64 8}
!301 = !{!"rtl_bb_info", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !71, i64 32}
!302 = !{!"branch_weights", i32 155623, i32 893503}
!303 = !{!"branch_weights", i32 623676, i32 269827}
!304 = !{!"branch_weights", i32 247, i32 8392761}
!305 = distinct !{!305, !82, !83}
!306 = !{!"branch_weights", i32 151, i32 622465}
!307 = distinct !{!307, !82, !83}
!308 = !{!309, !71, i64 0}
!309 = !{!"subregs_of_mode_node", !71, i64 0, !67, i64 4}
!310 = !{!"function_entry_count", i64 315520}
!311 = !{!"reginfo.c;som_eq"}
!312 = !{!"function_entry_count", i64 3411586}
!313 = !{!"reginfo.c;find_subregs_of_mode"}
!314 = !{!"branch_weights", i32 202, i32 3411384}
!315 = !{!"branch_weights", i32 202, i32 0}
!316 = !{!"branch_weights", i32 0, i32 202}
!317 = !{!"branch_weights", i32 162, i32 40}
!318 = !{!"branch_weights", i32 1, i32 3411585}
!319 = !{!"branch_weights", i32 3954888, i32 2771068, i32 8421}
!320 = !{!"branch_weights", i32 8420, i32 1}
!321 = !{!"branch_weights", i32 8422, i32 8420}
!322 = distinct !{!322, !82, !83}
!323 = !{!"branch_weights", i32 3322792, i32 3411585}
!324 = distinct !{!324, !82, !83}
!325 = !{!"function_entry_count", i64 4727052}
!326 = !{!"branch_weights", i32 0, i32 4727052}
!327 = !{!"branch_weights", i32 4707252, i32 19800}
!328 = !{!"branch_weights", i32 1713712, i32 8888}
!329 = !{!"branch_weights", i32 8888, i32 0}
!330 = !{!"branch_weights", i32 19800, i32 1702800}
!331 = distinct !{!331, !82, !83}
