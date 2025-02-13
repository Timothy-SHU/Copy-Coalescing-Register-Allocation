; ModuleID = 'reginfo.c'
source_filename = "reginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
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

@max_regno = dso_local local_unnamed_addr global i32 0, align 4
@fixed_regs = dso_local local_unnamed_addr global [53 x i8] zeroinitializer, align 16
@fixed_reg_set = dso_local local_unnamed_addr global i64 0, align 8
@call_used_regs = dso_local local_unnamed_addr global [53 x i8] zeroinitializer, align 16
@call_used_reg_set = dso_local local_unnamed_addr global i64 0, align 8
@call_fixed_reg_set = dso_local local_unnamed_addr global i64 0, align 8
@global_regs = dso_local local_unnamed_addr global [53 x i8] zeroinitializer, align 16
@regs_invalidated_by_call = dso_local local_unnamed_addr global i64 0, align 8
@regs_invalidated_by_call_regset = dso_local local_unnamed_addr global ptr null, align 8
@inv_reg_alloc_order = dso_local local_unnamed_addr global [53 x i32] zeroinitializer, align 16
@reg_class_contents = dso_local local_unnamed_addr global [27 x i64] zeroinitializer, align 16
@reg_class_size = dso_local local_unnamed_addr global [27 x i32] zeroinitializer, align 16
@reg_class_subclasses = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@reg_class_subunion = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@reg_class_superunion = dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16
@reg_raw_mode = dso_local local_unnamed_addr global [53 x i32] zeroinitializer, align 16
@have_regs_of_mode = dso_local local_unnamed_addr global [87 x i8] zeroinitializer, align 16
@contains_reg_of_mode = dso_local local_unnamed_addr global [27 x [87 x i8]] zeroinitializer, align 16
@move_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@may_move_in_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@may_move_out_cost = dso_local local_unnamed_addr global [87 x ptr] zeroinitializer, align 16
@hard_regno_nregs = dso_local local_unnamed_addr global [53 x [87 x i8]] zeroinitializer, align 16
@reg_alloc_order = dso_local local_unnamed_addr global [53 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52], align 16
@reg_names = dso_local local_unnamed_addr global [53 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], align 16
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
@reg_class_names = dso_local local_unnamed_addr global [27 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], align 16
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
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@int_reg_class_contents = internal unnamed_addr constant [27 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 16, i32 0], [2 x i32] [i32 32, i32 0], [2 x i32] [i32 3, i32 0], [2 x i32] [i32 7, i32 0], [2 x i32] [i32 15, i32 0], [2 x i32] [i32 1114352, i32 8160], [2 x i32] [i32 127, i32 8160], [2 x i32] [i32 1114367, i32 0], [2 x i32] [i32 1114367, i32 8160], [2 x i32] [i32 256, i32 0], [2 x i32] [i32 512, i32 0], [2 x i32] [i32 65280, i32 0], [2 x i32] [i32 2097152, i32 0], [2 x i32] [i32 534773760, i32 2088960], [2 x i32] [i32 -536870912, i32 31], [2 x i32] [i32 534774016, i32 2088960], [2 x i32] [i32 534774272, i32 2088960], [2 x i32] [i32 534839040, i32 4186112], [2 x i32] [i32 131071, i32 8160], [2 x i32] [i32 534839551, i32 2097120], [2 x i32] [i32 534904831, i32 2097120], [2 x i32] [i32 -1, i32 2097151]], align 16
@initial_fixed_regs = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02", align 16
@initial_call_used_regs = internal unnamed_addr constant [53 x i8] c"\01\01\01\00\03\03\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\01\01\01\01\01\01\01\01", align 16
@init_move_cost.last_move_cost = internal unnamed_addr global [27 x [27 x i16]] zeroinitializer, align 16
@.str.80 = private unnamed_addr constant [10 x i8] c"reginfo.c\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@last_mode_for_init_move_cost = internal unnamed_addr global i32 0, align 4
@saved_fixed_regs = internal unnamed_addr global [53 x i8] zeroinitializer, align 16
@saved_call_used_regs = internal unnamed_addr global [53 x i8] zeroinitializer, align 16
@saved_reg_names = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@persistent_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@flag_pic = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
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
@reg_pref = internal unnamed_addr global ptr null, align 8
@reg_info_size = internal unnamed_addr global i32 0, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@pass_reginfo_init = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.91, ptr null, ptr @reginfo_init, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.91 = private unnamed_addr constant [8 x i8] c"reginfo\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@subregs_of_mode = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@gt_ggc_r_gt_reginfo_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @top_of_stack, i64 87, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @reg_set_to_hard_reg_set(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !91 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #18
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !92
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7, !prof !93

7:                                                ; preds = %2, %10
  %8 = load i32, ptr %3, align 4, !tbaa !94
  %9 = icmp ugt i32 %8, 52
  br i1 %9, label %17, label %10, !prof !98

10:                                               ; preds = %7
  %11 = zext nneg i32 %8 to i64
  %12 = shl nuw nsw i64 1, %11
  %13 = load i64, ptr %0, align 8, !tbaa !99
  %14 = or i64 %13, %12
  store i64 %14, ptr %0, align 8, !tbaa !99
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !92
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %7, !prof !101, !llvm.loop !102

17:                                               ; preds = %7, %10, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !91 !PGOFuncName !104 {
  %4 = load ptr, ptr %1, align 8, !tbaa !105
  store ptr %4, ptr %0, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !110
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !111

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !108
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !112
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !114
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !115
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !94
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !116 !PGOFuncName !117 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !115
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !118

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !119

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !94
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !120, !llvm.loop !121

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !94
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !94
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !114
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !108
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !114
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !122

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !99
  store i64 %35, ptr %3, align 8, !tbaa !115
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !123

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !94
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !94
  %40 = load i32, ptr %23, align 8, !tbaa !114
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !114
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !124, !llvm.loop !125

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !126
  store ptr %44, ptr %0, align 8, !tbaa !108
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !127

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !112
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !94
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !115
  store i32 %16, ptr %1, align 4, !tbaa !94
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #3 !prof !128 !PGOFuncName !129 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !115
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !115
  %6 = load i32, ptr %1, align 4, !tbaa !94
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_reg_sets() local_unnamed_addr #4 !prof !130 {
  br label %1

1:                                                ; preds = %0, %23
  %2 = phi i64 [ 0, %0 ], [ %24, %23 ]
  %3 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2
  store i64 0, ptr %3, align 8, !tbaa !99
  br label %4

4:                                                ; preds = %1, %19
  %5 = phi i64 [ 0, %1 ], [ %20, %19 ]
  %6 = phi i64 [ 0, %1 ], [ %21, %19 ]
  %7 = trunc i64 %6 to i32
  %8 = lshr i64 %6, 5
  %9 = and i64 %8, 134217727
  %10 = getelementptr inbounds [27 x [2 x i32]], ptr @int_reg_class_contents, i64 0, i64 %2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !94
  %12 = and i32 %7, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16, !prof !131

16:                                               ; preds = %4
  %17 = shl nuw nsw i64 1, %6
  %18 = or i64 %5, %17
  store i64 %18, ptr %3, align 8, !tbaa !99
  br label %19

19:                                               ; preds = %4, %16
  %20 = phi i64 [ %5, %4 ], [ %18, %16 ]
  %21 = add nuw nsw i64 %6, 1
  %22 = icmp eq i64 %21, 53
  br i1 %22, label %23, label %4, !prof !132, !llvm.loop !133

23:                                               ; preds = %19
  %24 = add nuw nsw i64 %2, 1
  %25 = icmp eq i64 %24, 27
  br i1 %25, label %26, label %1, !prof !134, !llvm.loop !135

26:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @fixed_regs, ptr noundef nonnull align 16 dereferenceable(53) @initial_fixed_regs, i64 53, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @call_used_regs, ptr noundef nonnull align 16 dereferenceable(53) @initial_call_used_regs, i64 53, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @global_regs, i8 0, i64 53, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_move_cost(i32 noundef %0) local_unnamed_addr #7 !prof !136 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x i8], ptr @have_regs_of_mode, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !137
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !138

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 268, ptr noundef nonnull @.str.81) #19
  br label %7

7:                                                ; preds = %1, %6
  br label %8

8:                                                ; preds = %7, %38
  %9 = phi i64 [ %40, %38 ], [ 0, %7 ]
  %10 = phi i8 [ %39, %38 ], [ 1, %7 ]
  %11 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %9, i64 %2
  %12 = load i8, ptr %11, align 1, !tbaa !137
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %38, label %14, !prof !139

14:                                               ; preds = %8
  %15 = trunc i64 %9 to i32
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi i64 [ 0, %14 ], [ %36, %27 ]
  %18 = phi i8 [ %10, %14 ], [ %34, %27 ]
  %19 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %17, i64 %2
  %20 = load i8, ptr %19, align 1, !tbaa !137
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22, !prof !140

22:                                               ; preds = %16
  %23 = trunc i64 %17 to i32
  %24 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %15, i32 noundef %23) #19
  %25 = icmp slt i32 %24, 65535
  br i1 %25, label %27, label %26, !prof !141

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 280, ptr noundef nonnull @.str.81) #19
  br label %27

27:                                               ; preds = %16, %26, %22
  %28 = phi i32 [ %24, %22 ], [ %24, %26 ], [ 65535, %16 ]
  %29 = getelementptr inbounds [27 x [27 x i16]], ptr @init_move_cost.last_move_cost, i64 0, i64 %9, i64 %17
  %30 = load i16, ptr %29, align 2, !tbaa !142
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %28, %31
  %33 = and i8 %18, 1
  %34 = select i1 %32, i8 %33, i8 0
  %35 = trunc i32 %28 to i16
  store i16 %35, ptr %29, align 2, !tbaa !142
  %36 = add nuw nsw i64 %17, 1
  %37 = icmp eq i64 %36, 27
  br i1 %37, label %38, label %16, !prof !144, !llvm.loop !145

38:                                               ; preds = %27, %8
  %39 = phi i8 [ %10, %8 ], [ %34, %27 ]
  %40 = add nuw nsw i64 %9, 1
  %41 = icmp eq i64 %40, 27
  br i1 %41, label %42, label %8, !prof !146, !llvm.loop !147

42:                                               ; preds = %38
  %43 = icmp ne i8 %39, 0
  %44 = load i32, ptr @last_mode_for_init_move_cost, align 4
  %45 = icmp ne i32 %44, -1
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %58, !prof !148

47:                                               ; preds = %42
  %48 = sext i32 %44 to i64
  %49 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !149
  %51 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %2
  store ptr %50, ptr %51, align 8, !tbaa !149
  %52 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !149
  %54 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %2
  store ptr %53, ptr %54, align 8, !tbaa !149
  %55 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %48
  %56 = load ptr, ptr %55, align 8, !tbaa !149
  %57 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %2
  store ptr %56, ptr %57, align 8, !tbaa !149
  br label %166

58:                                               ; preds = %42
  store i32 %0, ptr @last_mode_for_init_move_cost, align 4, !tbaa !94
  %59 = tail call ptr @xmalloc(i64 noundef 1458) #19
  %60 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %2
  store ptr %59, ptr %60, align 8, !tbaa !149
  %61 = tail call ptr @xmalloc(i64 noundef 1458) #19
  %62 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %2
  store ptr %61, ptr %62, align 8, !tbaa !149
  %63 = tail call ptr @xmalloc(i64 noundef 1458) #19
  %64 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %2
  store ptr %63, ptr %64, align 8, !tbaa !149
  br label %65

65:                                               ; preds = %58, %163
  %66 = phi i64 [ 0, %58 ], [ %164, %163 ]
  %67 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %66, i64 %2
  %68 = load i8, ptr %67, align 1, !tbaa !137
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70, !prof !139

70:                                               ; preds = %65
  %71 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %66
  %72 = trunc i64 %66 to i32
  br label %76

73:                                               ; preds = %65
  %74 = load ptr, ptr %60, align 8, !tbaa !149
  %75 = load ptr, ptr %62, align 8, !tbaa !149
  br label %156

76:                                               ; preds = %70, %151
  %77 = phi i64 [ 0, %70 ], [ %154, %151 ]
  %78 = getelementptr inbounds [27 x [27 x i16]], ptr @init_move_cost.last_move_cost, i64 0, i64 %66, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !142
  %80 = icmp eq i16 %79, -1
  br i1 %80, label %81, label %86, !prof !140

81:                                               ; preds = %76
  %82 = load ptr, ptr %60, align 8, !tbaa !149
  %83 = getelementptr inbounds [27 x i16], ptr %82, i64 %66, i64 %77
  store i16 -1, ptr %83, align 2, !tbaa !142
  %84 = load ptr, ptr %62, align 8, !tbaa !149
  %85 = getelementptr inbounds [27 x i16], ptr %84, i64 %66, i64 %77
  store i16 -1, ptr %85, align 2, !tbaa !142
  br label %151

86:                                               ; preds = %76
  %87 = zext i16 %79 to i32
  %88 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %77
  %89 = load i32, ptr %88, align 4, !tbaa !94
  %90 = icmp eq i32 %89, 27
  br i1 %90, label %112, label %91, !prof !150

91:                                               ; preds = %86, %107
  %92 = phi i32 [ %110, %107 ], [ %89, %86 ]
  %93 = phi ptr [ %109, %107 ], [ %88, %86 ]
  %94 = phi i32 [ %108, %107 ], [ %87, %86 ]
  %95 = zext i32 %92 to i64
  %96 = icmp eq i64 %66, %95
  br i1 %96, label %107, label %97, !prof !151

97:                                               ; preds = %91
  %98 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %95, i64 %2
  %99 = load i8, ptr %98, align 1, !tbaa !137
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %107, label %101, !prof !152

101:                                              ; preds = %97
  %102 = load ptr, ptr %60, align 8, !tbaa !149
  %103 = getelementptr inbounds [27 x i16], ptr %102, i64 %66, i64 %95
  %104 = load i16, ptr %103, align 2, !tbaa !142
  %105 = zext i16 %104 to i32
  %106 = tail call i32 @llvm.smax.i32(i32 %94, i32 %105)
  br label %107

107:                                              ; preds = %91, %97, %101
  %108 = phi i32 [ %106, %101 ], [ %94, %97 ], [ %94, %91 ]
  %109 = getelementptr inbounds i32, ptr %93, i64 1
  %110 = load i32, ptr %109, align 4, !tbaa !94
  %111 = icmp eq i32 %110, 27
  br i1 %111, label %112, label %91, !prof !153, !llvm.loop !154

112:                                              ; preds = %107, %86
  %113 = phi i32 [ %87, %86 ], [ %108, %107 ]
  %114 = load i32, ptr %71, align 4, !tbaa !94
  %115 = icmp eq i32 %114, 27
  br i1 %115, label %137, label %116, !prof !150

116:                                              ; preds = %112, %132
  %117 = phi i32 [ %135, %132 ], [ %114, %112 ]
  %118 = phi ptr [ %134, %132 ], [ %71, %112 ]
  %119 = phi i32 [ %133, %132 ], [ %113, %112 ]
  %120 = zext i32 %117 to i64
  %121 = icmp eq i64 %77, %120
  br i1 %121, label %132, label %122, !prof !151

122:                                              ; preds = %116
  %123 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %120, i64 %2
  %124 = load i8, ptr %123, align 1, !tbaa !137
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %132, label %126, !prof !152

126:                                              ; preds = %122
  %127 = load ptr, ptr %60, align 8, !tbaa !149
  %128 = getelementptr inbounds [27 x i16], ptr %127, i64 %120, i64 %77
  %129 = load i16, ptr %128, align 2, !tbaa !142
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @llvm.smax.i32(i32 %119, i32 %130)
  br label %132

132:                                              ; preds = %116, %122, %126
  %133 = phi i32 [ %131, %126 ], [ %119, %122 ], [ %119, %116 ]
  %134 = getelementptr inbounds i32, ptr %118, i64 1
  %135 = load i32, ptr %134, align 4, !tbaa !94
  %136 = icmp eq i32 %135, 27
  br i1 %136, label %137, label %116, !prof !153, !llvm.loop !155

137:                                              ; preds = %132, %112
  %138 = phi i32 [ %113, %112 ], [ %133, %132 ]
  %139 = trunc i32 %138 to i16
  %140 = load ptr, ptr %60, align 8, !tbaa !149
  %141 = getelementptr inbounds [27 x i16], ptr %140, i64 %66, i64 %77
  store i16 %139, ptr %141, align 2, !tbaa !142
  %142 = trunc i64 %77 to i32
  %143 = tail call i32 @reg_class_subset_p(i32 noundef %72, i32 noundef %142) #18, !range !156
  %144 = icmp eq i32 %143, 0
  %145 = load ptr, ptr %62, align 8, !tbaa !149
  %146 = getelementptr inbounds [27 x i16], ptr %145, i64 %66, i64 %77
  %147 = select i1 %144, i16 %139, i16 0, !prof !157
  store i16 %147, ptr %146, align 2, !tbaa !142
  %148 = tail call i32 @reg_class_subset_p(i32 noundef %142, i32 noundef %72) #18, !range !156
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i16 %139, i16 0, !prof !157
  br label %151

151:                                              ; preds = %137, %81
  %152 = phi i16 [ -1, %81 ], [ %150, %137 ]
  %153 = getelementptr inbounds [27 x i16], ptr %63, i64 %66, i64 %77
  store i16 %152, ptr %153, align 2, !tbaa !142
  %154 = add nuw nsw i64 %77, 1
  %155 = icmp eq i64 %154, 27
  br i1 %155, label %163, label %76, !prof !144, !llvm.loop !158

156:                                              ; preds = %73, %156
  %157 = phi i64 [ 0, %73 ], [ %161, %156 ]
  %158 = getelementptr inbounds [27 x i16], ptr %74, i64 %66, i64 %157
  store i16 -1, ptr %158, align 2, !tbaa !142
  %159 = getelementptr inbounds [27 x i16], ptr %75, i64 %66, i64 %157
  store i16 -1, ptr %159, align 2, !tbaa !142
  %160 = getelementptr inbounds [27 x i16], ptr %63, i64 %66, i64 %157
  store i16 -1, ptr %160, align 2, !tbaa !142
  %161 = add nuw nsw i64 %157, 1
  %162 = icmp eq i64 %161, 27
  br i1 %162, label %163, label %156, !prof !159, !llvm.loop !160

163:                                              ; preds = %151, %156
  %164 = add nuw nsw i64 %66, 1
  %165 = icmp eq i64 %164, 27
  br i1 %165, label %166, label %65, !prof !146, !llvm.loop !161

166:                                              ; preds = %163, %47
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @reg_class_subset_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !162 {
  %3 = icmp eq i32 %0, %1
  %4 = icmp eq i32 %1, 26
  %5 = or i1 %3, %4
  br i1 %5, label %15, label %6, !prof !163

6:                                                ; preds = %2
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !99
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !99
  %13 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %9, i64 noundef %12) #18, !range !92
  %14 = zext nneg i8 %13 to i32
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 1, %2 ], [ %14, %6 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @save_register_info() local_unnamed_addr #10 !prof !130 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @saved_fixed_regs, ptr noundef nonnull align 16 dereferenceable(53) @fixed_regs, i64 53, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @saved_call_used_regs, ptr noundef nonnull align 16 dereferenceable(53) @call_used_regs, i64 53, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @saved_reg_names, ptr noundef nonnull align 16 dereferenceable(424) @reg_names, i64 424, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_reg_modes_target() local_unnamed_addr #7 !prof !130 {
  br label %1

1:                                                ; preds = %0, %38
  %2 = phi i64 [ 0, %0 ], [ %39, %38 ]
  %3 = and i64 %2, 56
  %4 = icmp eq i64 %3, 8
  %5 = add nsw i64 %2, -21
  %6 = icmp ult i64 %5, 8
  %7 = select i1 %4, i1 true, i1 %6
  %8 = add nsw i64 %2, -45
  %9 = icmp ult i64 %8, 8
  %10 = select i1 %7, i1 true, i1 %9
  %11 = add nsw i64 %2, -29
  %12 = icmp ult i64 %11, 8
  %13 = select i1 %10, i1 true, i1 %12
  br label %14

14:                                               ; preds = %1, %32
  %15 = phi i64 [ 0, %1 ], [ %36, %32 ]
  br i1 %13, label %16, label %23, !prof !164

16:                                               ; preds = %14
  %17 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %18 = load i8, ptr %17, align 1, !tbaa !137
  %19 = freeze i8 %18
  %20 = and i8 %19, -2
  %21 = icmp eq i8 %20, 10
  %22 = select i1 %21, i16 2, i16 1, !prof !165
  br label %32

23:                                               ; preds = %14
  %24 = trunc i64 %15 to i32
  switch i32 %24, label %25 [
    i32 40, label %32
    i32 53, label %31
  ], !prof !166

25:                                               ; preds = %23
  %26 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %27 = load i8, ptr %26, align 1, !tbaa !137
  %28 = zext i8 %27 to i16
  %29 = add nuw nsw i16 %28, 3
  %30 = lshr i16 %29, 2
  br label %32

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %16, %23, %31, %25
  %33 = phi i16 [ 3, %23 ], [ %30, %25 ], [ 6, %31 ], [ %22, %16 ]
  %34 = trunc i16 %33 to i8
  %35 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %2, i64 %15
  store i8 %34, ptr %35, align 1, !tbaa !137
  %36 = add nuw nsw i64 %15, 1
  %37 = icmp eq i64 %36, 87
  br i1 %37, label %38, label %14, !prof !167, !llvm.loop !168

38:                                               ; preds = %32
  %39 = add nuw nsw i64 %2, 1
  %40 = icmp eq i64 %39, 53
  br i1 %40, label %41, label %1, !prof !169, !llvm.loop !170

41:                                               ; preds = %38, %53
  %42 = phi i64 [ %54, %53 ], [ 0, %38 ]
  %43 = trunc i64 %42 to i32
  %44 = tail call i32 @choose_hard_reg_mode(i32 noundef %43, i32 noundef 1, i8 zeroext poison) #18
  %45 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %42
  store i32 %44, ptr %45, align 4, !tbaa !94
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %53, !prof !171

47:                                               ; preds = %41
  %48 = icmp eq i64 %42, 0
  %49 = add nsw i64 %42, -1
  %50 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %49
  %51 = select i1 %48, ptr @word_mode, ptr %50
  %52 = load i32, ptr %51, align 4, !tbaa !94
  store i32 %52, ptr %45, align 4, !tbaa !94
  br label %53

53:                                               ; preds = %41, %47
  %54 = add nuw nsw i64 %42, 1
  %55 = icmp eq i64 %54, 53
  br i1 %55, label %56, label %41, !prof !169, !llvm.loop !172

56:                                               ; preds = %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @choose_hard_reg_mode(i32 noundef %0, i32 noundef %1, i8 zeroext %2) local_unnamed_addr #7 !prof !173 {
  %4 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !137
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6, !prof !174

6:                                                ; preds = %3
  %7 = zext i32 %0 to i64
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi i8 [ %4, %6 ], [ %24, %21 ]
  %10 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %11 = zext i8 %9 to i64
  %12 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %7, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !137
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %21, !prof !175

16:                                               ; preds = %8
  %17 = zext i8 %9 to i32
  %18 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %17) #19
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 %10, i32 %17, !prof !176
  br label %21

21:                                               ; preds = %16, %8
  %22 = phi i32 [ %10, %8 ], [ %20, %16 ]
  %23 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %11
  %24 = load i8, ptr %23, align 1, !tbaa !137
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %8, !prof !177, !llvm.loop !178

26:                                               ; preds = %21
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %28, label %118, !prof !179

28:                                               ; preds = %3, %26
  %29 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !137
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %53, label %31, !prof !180

31:                                               ; preds = %28
  %32 = zext i32 %0 to i64
  br label %33

33:                                               ; preds = %31, %46
  %34 = phi i8 [ %29, %31 ], [ %49, %46 ]
  %35 = phi i32 [ 0, %31 ], [ %47, %46 ]
  %36 = zext i8 %34 to i64
  %37 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %32, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !137
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %46, !prof !181

41:                                               ; preds = %33
  %42 = zext i8 %34 to i32
  %43 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %42) #19
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i32 %35, i32 %42, !prof !182
  br label %46

46:                                               ; preds = %41, %33
  %47 = phi i32 [ %35, %33 ], [ %45, %41 ]
  %48 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %36
  %49 = load i8, ptr %48, align 1, !tbaa !137
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %33, !prof !183, !llvm.loop !184

51:                                               ; preds = %46
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %53, label %118, !prof !185

53:                                               ; preds = %28, %51
  %54 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 17), align 1, !tbaa !137
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %78, label %56, !prof !186

56:                                               ; preds = %53
  %57 = zext i32 %0 to i64
  br label %58

58:                                               ; preds = %56, %71
  %59 = phi i8 [ %54, %56 ], [ %74, %71 ]
  %60 = phi i32 [ 0, %56 ], [ %72, %71 ]
  %61 = zext i8 %59 to i64
  %62 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %57, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !137
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, %1
  br i1 %65, label %66, label %71, !prof !187

66:                                               ; preds = %58
  %67 = zext i8 %59 to i32
  %68 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %67) #19
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i32 %60, i32 %67
  br label %71

71:                                               ; preds = %66, %58
  %72 = phi i32 [ %60, %58 ], [ %70, %66 ]
  %73 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %61
  %74 = load i8, ptr %73, align 1, !tbaa !137
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %58, !prof !188, !llvm.loop !189

76:                                               ; preds = %71
  %77 = icmp eq i32 %72, 0
  br i1 %77, label %78, label %118, !prof !190

78:                                               ; preds = %53, %76
  %79 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 12), align 4, !tbaa !137
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %103, label %81, !prof !186

81:                                               ; preds = %78
  %82 = zext i32 %0 to i64
  br label %83

83:                                               ; preds = %81, %96
  %84 = phi i8 [ %79, %81 ], [ %99, %96 ]
  %85 = phi i32 [ 0, %81 ], [ %97, %96 ]
  %86 = zext i8 %84 to i64
  %87 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %82, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !137
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, %1
  br i1 %90, label %91, label %96, !prof !191

91:                                               ; preds = %83
  %92 = zext i8 %84 to i32
  %93 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %92) #19
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 %85, i32 %92, !prof !192
  br label %96

96:                                               ; preds = %91, %83
  %97 = phi i32 [ %85, %83 ], [ %95, %91 ]
  %98 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %86
  %99 = load i8, ptr %98, align 1, !tbaa !137
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %83, !prof !193, !llvm.loop !194

101:                                              ; preds = %96
  %102 = icmp eq i32 %97, 0
  br i1 %102, label %103, label %118, !prof !190

103:                                              ; preds = %78, %101
  %104 = zext i32 %0 to i64
  br label %105

105:                                              ; preds = %103, %115
  %106 = phi i64 [ 2, %103 ], [ %116, %115 ]
  %107 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %104, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !137
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, %1
  br i1 %110, label %111, label %115, !prof !195

111:                                              ; preds = %105
  %112 = trunc i64 %106 to i32
  %113 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %112) #19
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %118, !prof !196

115:                                              ; preds = %105, %111
  %116 = add nuw nsw i64 %106, 1
  %117 = icmp eq i64 %116, 87
  br i1 %117, label %118, label %105, !prof !197, !llvm.loop !198

118:                                              ; preds = %115, %111, %101, %76, %51, %26
  %119 = phi i32 [ %22, %26 ], [ %47, %51 ], [ %72, %76 ], [ %97, %101 ], [ 0, %115 ], [ %112, %111 ]
  ret i32 %119
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_regs() local_unnamed_addr #7 !prof !130 {
  tail call fastcc void @init_reg_sets_1() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_reg_sets_1() unnamed_addr #7 !prof !130 !PGOFuncName !199 {
  tail call fastcc void @restore_register_info() #18
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %3 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !94
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %5
  %7 = trunc i64 %2 to i32
  store i32 %7, ptr %6, align 4, !tbaa !94
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 53
  br i1 %9, label %10, label %1, !prof !169, !llvm.loop !200

10:                                               ; preds = %1
  tail call void @ix86_conditional_register_usage() #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @reg_class_size, i8 0, i64 108, i1 false)
  br label %11

11:                                               ; preds = %10, %27
  %12 = phi i64 [ 0, %10 ], [ %28, %27 ]
  %13 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %12
  br label %16

16:                                               ; preds = %11, %24
  %17 = phi i64 [ 0, %11 ], [ %25, %24 ]
  %18 = shl nuw nsw i64 1, %17
  %19 = and i64 %14, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21, !prof !131

21:                                               ; preds = %16
  %22 = load i32, ptr %15, align 4, !tbaa !94
  %23 = add i32 %22, 1
  store i32 %23, ptr %15, align 4, !tbaa !94
  br label %24

24:                                               ; preds = %16, %21
  %25 = add nuw nsw i64 %17, 1
  %26 = icmp eq i64 %25, 53
  br i1 %26, label %27, label %16, !prof !132, !llvm.loop !201

27:                                               ; preds = %24
  %28 = add nuw nsw i64 %12, 1
  %29 = icmp eq i64 %28, 27
  br i1 %29, label %30, label %11, !prof !134, !llvm.loop !202

30:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2916) @reg_class_subunion, i8 0, i64 2916, i1 false)
  br label %31

31:                                               ; preds = %30, %62
  %32 = phi i64 [ 0, %30 ], [ %63, %62 ]
  %33 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !99
  br label %35

35:                                               ; preds = %31, %59
  %36 = phi i64 [ 0, %31 ], [ %60, %59 ]
  %37 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !99
  %39 = or i64 %38, %34
  %40 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %32, i64 %36
  br label %41

41:                                               ; preds = %35, %56
  %42 = phi i64 [ 0, %35 ], [ %57, %56 ]
  %43 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !99
  %45 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %44, i64 noundef %39) #18, !range !92
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %56, label %47, !prof !203

47:                                               ; preds = %41
  %48 = load i32, ptr %40, align 4, !tbaa !94
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !99
  %52 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %44, i64 noundef %51) #18, !range !92
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56, !prof !204

54:                                               ; preds = %47
  %55 = trunc i64 %42 to i32
  store i32 %55, ptr %40, align 4, !tbaa !94
  br label %56

56:                                               ; preds = %41, %47, %54
  %57 = add nuw nsw i64 %42, 1
  %58 = icmp eq i64 %57, 27
  br i1 %58, label %59, label %41, !prof !205, !llvm.loop !206

59:                                               ; preds = %56
  %60 = add nuw nsw i64 %36, 1
  %61 = icmp eq i64 %60, 27
  br i1 %61, label %62, label %35, !prof !207, !llvm.loop !208

62:                                               ; preds = %59
  %63 = add nuw nsw i64 %32, 1
  %64 = icmp eq i64 %63, 27
  br i1 %64, label %65, label %31, !prof !134, !llvm.loop !209

65:                                               ; preds = %62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2916) @reg_class_superunion, i8 0, i64 2916, i1 false)
  br label %66

66:                                               ; preds = %65, %91
  %67 = phi i64 [ 0, %65 ], [ %92, %91 ]
  %68 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !99
  br label %70

70:                                               ; preds = %66, %86
  %71 = phi i64 [ 0, %66 ], [ %89, %86 ]
  %72 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !99
  %74 = or i64 %73, %69
  br label %75

75:                                               ; preds = %70, %81
  %76 = phi i64 [ 0, %70 ], [ %82, %81 ]
  %77 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !99
  %79 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %74, i64 noundef %78) #18, !range !92
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %84, !prof !210

81:                                               ; preds = %75
  %82 = add nuw nsw i64 %76, 1
  %83 = icmp eq i64 %82, 27
  br i1 %83, label %86, label %75, !prof !211, !llvm.loop !212

84:                                               ; preds = %75
  %85 = trunc i64 %76 to i32
  br label %86

86:                                               ; preds = %81, %84
  %87 = phi i32 [ %85, %84 ], [ 27, %81 ]
  %88 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_superunion, i64 0, i64 %67, i64 %71
  store i32 %87, ptr %88, align 4, !tbaa !94
  %89 = add nuw nsw i64 %71, 1
  %90 = icmp eq i64 %89, 27
  br i1 %90, label %91, label %70, !prof !207, !llvm.loop !213

91:                                               ; preds = %86
  %92 = add nuw nsw i64 %67, 1
  %93 = icmp eq i64 %92, 27
  br i1 %93, label %94, label %66, !prof !134, !llvm.loop !214

94:                                               ; preds = %91, %122
  %95 = phi i64 [ %123, %122 ], [ 0, %91 ]
  br label %96

96:                                               ; preds = %118, %94
  %97 = phi i64 [ 0, %94 ], [ %119, %118 ]
  %98 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %94 ], [ %120, %118 ]
  %99 = icmp ult <4 x i64> %98, <i64 27, i64 27, i64 27, i64 27>
  %100 = extractelement <4 x i1> %99, i64 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %95, i64 %97
  store i32 27, ptr %102, align 4, !tbaa !94
  br label %103

103:                                              ; preds = %101, %96
  %104 = extractelement <4 x i1> %99, i64 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = or disjoint i64 %97, 1
  %107 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %95, i64 %106
  store i32 27, ptr %107, align 4, !tbaa !94
  br label %108

108:                                              ; preds = %105, %103
  %109 = extractelement <4 x i1> %99, i64 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = or disjoint i64 %97, 2
  %112 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %95, i64 %111
  store i32 27, ptr %112, align 4, !tbaa !94
  br label %113

113:                                              ; preds = %110, %108
  %114 = extractelement <4 x i1> %99, i64 3
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = or disjoint i64 %97, 3
  %117 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %95, i64 %116
  store i32 27, ptr %117, align 4, !tbaa !94
  br label %118

118:                                              ; preds = %115, %113
  %119 = add i64 %97, 4
  %120 = add <4 x i64> %98, <i64 4, i64 4, i64 4, i64 4>
  %121 = icmp eq i64 %119, 28
  br i1 %121, label %122, label %96, !prof !215, !llvm.loop !216

122:                                              ; preds = %118
  %123 = add nuw nsw i64 %95, 1
  %124 = icmp eq i64 %123, 27
  br i1 %124, label %125, label %94, !prof !134, !llvm.loop !219

125:                                              ; preds = %122, %150
  %126 = phi i64 [ %151, %150 ], [ 0, %122 ]
  %127 = add nsw i64 %126, -1
  %128 = icmp ult i64 %127, 25
  br i1 %128, label %129, label %150, !prof !220

129:                                              ; preds = %125
  %130 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %126
  %131 = load i64, ptr %130, align 8, !tbaa !99
  %132 = trunc i64 %126 to i32
  br label %133

133:                                              ; preds = %129, %148
  %134 = phi i64 [ %126, %129 ], [ %135, %148 ]
  %135 = add nuw nsw i64 %134, 1
  %136 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !99
  %138 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %131, i64 noundef %137) #18, !range !92
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %148, label %140, !prof !221

140:                                              ; preds = %133
  %141 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subclasses, i64 0, i64 %135
  br label %142

142:                                              ; preds = %142, %140
  %143 = phi ptr [ %141, %140 ], [ %146, %142 ]
  %144 = load i32, ptr %143, align 4, !tbaa !94
  %145 = icmp eq i32 %144, 27
  %146 = getelementptr inbounds i32, ptr %143, i64 1
  br i1 %145, label %147, label %142, !prof !222, !llvm.loop !223

147:                                              ; preds = %142
  store i32 %132, ptr %143, align 4, !tbaa !94
  br label %148

148:                                              ; preds = %133, %147
  %149 = icmp eq i64 %135, 26
  br i1 %149, label %150, label %133, !prof !224, !llvm.loop !225

150:                                              ; preds = %148, %125
  %151 = add nuw nsw i64 %126, 1
  %152 = icmp eq i64 %151, 27
  br i1 %152, label %153, label %125, !prof !134, !llvm.loop !226

153:                                              ; preds = %150
  store i64 0, ptr @fixed_reg_set, align 8, !tbaa !99
  store i64 0, ptr @call_used_reg_set, align 8, !tbaa !99
  store i64 0, ptr @call_fixed_reg_set, align 8, !tbaa !99
  store i64 0, ptr @regs_invalidated_by_call, align 8, !tbaa !99
  %154 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !149
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %158, !prof !227

156:                                              ; preds = %153
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @persistent_obstack) #19
  %157 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @persistent_obstack) #19
  store ptr %157, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !149
  br label %159

158:                                              ; preds = %153
  tail call void @bitmap_clear(ptr noundef nonnull %154) #19
  br label %159

159:                                              ; preds = %158, %156
  br label %160

160:                                              ; preds = %159, %222
  %161 = phi i64 [ %223, %222 ], [ 0, %159 ]
  %162 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !137
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %176, label %165, !prof !228

165:                                              ; preds = %160
  %166 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %161
  %167 = load i8, ptr %166, align 1, !tbaa !137
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %172, !prof !229

169:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 519, ptr noundef nonnull @.str.81) #19
  %170 = load i8, ptr %162, align 1, !tbaa !137
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %176, label %172, !prof !230

172:                                              ; preds = %165, %169
  %173 = shl nuw nsw i64 1, %161
  %174 = load i64, ptr @fixed_reg_set, align 8, !tbaa !99
  %175 = or i64 %174, %173
  store i64 %175, ptr @fixed_reg_set, align 8, !tbaa !99
  br label %176

176:                                              ; preds = %160, %172, %169
  %177 = phi i1 [ false, %172 ], [ true, %169 ], [ true, %160 ]
  %178 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %161
  %179 = load i8, ptr %178, align 1, !tbaa !137
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %181, label %185, !prof !231

181:                                              ; preds = %176
  %182 = shl nuw nsw i64 1, %161
  %183 = load i64, ptr @call_used_reg_set, align 8, !tbaa !99
  %184 = or i64 %183, %182
  store i64 %184, ptr @call_used_reg_set, align 8, !tbaa !99
  br label %185

185:                                              ; preds = %181, %176
  %186 = icmp eq i64 %161, 7
  br i1 %186, label %222, label %187, !prof !232

187:                                              ; preds = %185
  %188 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %161
  %189 = load i8, ptr %188, align 1, !tbaa !137
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %198, label %191, !prof !233

191:                                              ; preds = %187
  %192 = shl nuw nsw i64 1, %161
  %193 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !99
  %194 = or i64 %193, %192
  store i64 %194, ptr @regs_invalidated_by_call, align 8, !tbaa !99
  %195 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !149
  %196 = trunc i64 %161 to i32
  %197 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %195, i32 noundef %196) #19
  br label %222

198:                                              ; preds = %187
  %199 = trunc i64 %161 to i32
  switch i32 %199, label %201 [
    i32 20, label %222
    i32 6, label %222
    i32 16, label %200
  ], !prof !234

200:                                              ; preds = %198
  br i1 %177, label %201, label %222, !prof !197

201:                                              ; preds = %198, %200
  %202 = load i32, ptr @flag_pic, align 4, !tbaa !94
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %210, label %204, !prof !235

204:                                              ; preds = %201
  %205 = load i32, ptr @reload_completed, align 4, !tbaa !94
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207, !prof !235

207:                                              ; preds = %204
  %208 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !149
  %209 = tail call fastcc i32 @rhs_regno(ptr noundef %208) #18
  br label %210

210:                                              ; preds = %207, %204, %201
  %211 = phi i32 [ -1, %201 ], [ %209, %207 ], [ 3, %204 ]
  %212 = zext i32 %211 to i64
  %213 = icmp ne i64 %161, %212
  %214 = or i1 %177, %213
  %215 = and i1 %180, %214
  br i1 %215, label %216, label %222, !prof !236

216:                                              ; preds = %210
  %217 = shl nuw nsw i64 1, %161
  %218 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !99
  %219 = or i64 %218, %217
  store i64 %219, ptr @regs_invalidated_by_call, align 8, !tbaa !99
  %220 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !149
  %221 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %220, i32 noundef %199) #19
  br label %222

222:                                              ; preds = %210, %198, %198, %185, %200, %216, %191
  %223 = add nuw nsw i64 %161, 1
  %224 = icmp eq i64 %223, 53
  br i1 %224, label %225, label %160, !prof !169, !llvm.loop !237

225:                                              ; preds = %222
  %226 = load i64, ptr @fixed_reg_set, align 8, !tbaa !99
  store i64 %226, ptr @call_fixed_reg_set, align 8, !tbaa !99
  %227 = load i64, ptr @call_used_reg_set, align 8, !tbaa !99
  br label %228

228:                                              ; preds = %225, %243
  %229 = phi i64 [ 0, %225 ], [ %247, %243 ]
  %230 = phi i64 [ %226, %225 ], [ %246, %243 ]
  %231 = phi i64 [ %227, %225 ], [ %245, %243 ]
  %232 = phi i64 [ %226, %225 ], [ %244, %243 ]
  %233 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %229
  %234 = load i8, ptr %233, align 1, !tbaa !137
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %243, label %236, !prof !238

236:                                              ; preds = %228
  %237 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %229
  store i8 1, ptr %237, align 1, !tbaa !137
  %238 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %229
  store i8 1, ptr %238, align 1, !tbaa !137
  %239 = shl nuw nsw i64 1, %229
  %240 = or i64 %230, %239
  store i64 %240, ptr @fixed_reg_set, align 8, !tbaa !99
  %241 = or i64 %231, %239
  store i64 %241, ptr @call_used_reg_set, align 8, !tbaa !99
  %242 = or i64 %232, %239
  store i64 %242, ptr @call_fixed_reg_set, align 8, !tbaa !99
  br label %243

243:                                              ; preds = %228, %236
  %244 = phi i64 [ %232, %228 ], [ %242, %236 ]
  %245 = phi i64 [ %231, %228 ], [ %241, %236 ]
  %246 = phi i64 [ %230, %228 ], [ %240, %236 ]
  %247 = add nuw nsw i64 %229, 1
  %248 = icmp eq i64 %247, 53
  br i1 %248, label %249, label %228, !prof !169, !llvm.loop !239

249:                                              ; preds = %243
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(87) @have_regs_of_mode, i8 0, i64 87, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2349) @contains_reg_of_mode, i8 0, i64 2349, i1 false)
  br label %250

250:                                              ; preds = %249, %308
  %251 = phi i64 [ 0, %249 ], [ %309, %308 ]
  %252 = trunc i64 %251 to i32
  br label %258

253:                                              ; preds = %271
  %254 = icmp eq i64 %251, 40
  %255 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %251
  %256 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %251
  %257 = getelementptr inbounds [87 x i8], ptr @have_regs_of_mode, i64 0, i64 %251
  br label %275

258:                                              ; preds = %250, %271
  %259 = phi i64 [ 0, %250 ], [ %273, %271 ]
  %260 = phi i64 [ 0, %250 ], [ %272, %271 ]
  %261 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %259
  %262 = load i8, ptr %261, align 1, !tbaa !137
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %271, !prof !240

264:                                              ; preds = %258
  %265 = trunc i64 %259 to i32
  %266 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %265, i32 noundef %252) #19
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %271, label %268, !prof !241

268:                                              ; preds = %264
  %269 = shl nuw nsw i64 1, %259
  %270 = or i64 %269, %260
  br label %271

271:                                              ; preds = %258, %264, %268
  %272 = phi i64 [ %260, %258 ], [ %270, %268 ], [ %260, %264 ]
  %273 = add nuw nsw i64 %259, 1
  %274 = icmp eq i64 %273, 53
  br i1 %274, label %253, label %258, !prof !242, !llvm.loop !243

275:                                              ; preds = %253, %305
  %276 = phi i64 [ 0, %253 ], [ %306, %305 ]
  %277 = trunc i64 %276 to i32
  %278 = tail call i32 @reg_classes_intersect_p(i32 noundef %277, i32 noundef 13) #18, !range !156
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %285, !prof !244

280:                                              ; preds = %275
  %281 = load i8, ptr %256, align 1, !tbaa !137
  %282 = and i8 %281, -2
  %283 = icmp eq i8 %282, 10
  %284 = select i1 %283, i32 2, i32 1
  br label %293

285:                                              ; preds = %275
  br i1 %254, label %289, label %286, !prof !245

286:                                              ; preds = %285
  %287 = load i8, ptr %255, align 1, !tbaa !137
  %288 = zext i8 %287 to i32
  br label %289

289:                                              ; preds = %285, %286
  %290 = phi i32 [ %288, %286 ], [ 12, %285 ]
  %291 = add nuw nsw i32 %290, 3
  %292 = lshr i32 %291, 2
  br label %293

293:                                              ; preds = %289, %280
  %294 = phi i32 [ %284, %280 ], [ %292, %289 ]
  %295 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %276
  %296 = load i32, ptr %295, align 4, !tbaa !94
  %297 = icmp ugt i32 %294, %296
  br i1 %297, label %305, label %298, !prof !246

298:                                              ; preds = %293
  %299 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %276
  %300 = load i64, ptr %299, align 8, !tbaa !99
  %301 = tail call fastcc zeroext i8 @hard_reg_set_intersect_p(i64 noundef %272, i64 noundef %300) #18, !range !92
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %305, label %303, !prof !247

303:                                              ; preds = %298
  %304 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %276, i64 %251
  store i8 1, ptr %304, align 1, !tbaa !137
  store i8 1, ptr %257, align 1, !tbaa !137
  br label %305

305:                                              ; preds = %293, %298, %303
  %306 = add nuw nsw i64 %276, 1
  %307 = icmp eq i64 %306, 27
  br i1 %307, label %308, label %275, !prof !248, !llvm.loop !249

308:                                              ; preds = %305
  %309 = add nuw nsw i64 %251, 1
  %310 = icmp eq i64 %309, 87
  br i1 %310, label %311, label %250, !prof !250, !llvm.loop !251

311:                                              ; preds = %308, %335
  %312 = phi i64 [ %336, %335 ], [ 0, %308 ]
  %313 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !149
  %315 = icmp eq ptr %314, null
  br i1 %315, label %335, label %316, !prof !252

316:                                              ; preds = %311
  %317 = icmp eq i64 %312, 0
  br i1 %317, label %326, label %318

318:                                              ; preds = %316, %323
  %319 = phi i64 [ %324, %323 ], [ 0, %316 ]
  %320 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !149
  %322 = icmp eq ptr %314, %321
  br i1 %322, label %326, label %323

323:                                              ; preds = %318
  %324 = add nuw nsw i64 %319, 1
  %325 = icmp eq i64 %324, %312
  br i1 %325, label %326, label %318, !llvm.loop !253

326:                                              ; preds = %318, %323, %316
  %327 = phi i64 [ 0, %316 ], [ %312, %323 ], [ %319, %318 ]
  %328 = and i64 %327, 4294967295
  %329 = icmp eq i64 %312, %328
  br i1 %329, label %330, label %335

330:                                              ; preds = %326
  tail call void @free(ptr noundef %314) #18
  %331 = getelementptr inbounds [87 x ptr], ptr @may_move_in_cost, i64 0, i64 %312
  %332 = load ptr, ptr %331, align 8, !tbaa !149
  tail call void @free(ptr noundef %332) #18
  %333 = getelementptr inbounds [87 x ptr], ptr @may_move_out_cost, i64 0, i64 %312
  %334 = load ptr, ptr %333, align 8, !tbaa !149
  tail call void @free(ptr noundef %334) #18
  br label %335

335:                                              ; preds = %311, %330, %326
  %336 = add nuw nsw i64 %312, 1
  %337 = icmp eq i64 %336, 87
  br i1 %337, label %338, label %311, !prof !250, !llvm.loop !254

338:                                              ; preds = %335
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @move_cost, i8 0, i64 696, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @may_move_in_cost, i8 0, i64 696, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @may_move_out_cost, i8 0, i64 696, i1 false)
  store i32 -1, ptr @last_mode_for_init_move_cost, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @restore_register_info() unnamed_addr #10 !prof !130 !PGOFuncName !255 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @fixed_regs, ptr noundef nonnull align 16 dereferenceable(53) @saved_fixed_regs, i64 53, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @call_used_regs, ptr noundef nonnull align 16 dereferenceable(53) @saved_call_used_regs, i64 53, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @reg_names, ptr noundef nonnull align 16 dereferenceable(424) @saved_reg_names, i64 424, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @ix86_conditional_register_usage() local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_subset_p(i64 noundef %0, i64 noundef %1) unnamed_addr #11 !prof !256 !PGOFuncName !257 {
  %3 = xor i64 %1, -1
  %4 = and i64 %3, %0
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !258 !PGOFuncName !259 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !137
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @reg_classes_intersect_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !260 {
  %3 = icmp eq i32 %0, %1
  %4 = icmp eq i32 %0, 26
  %5 = or i1 %4, %3
  %6 = icmp eq i32 %1, 26
  %7 = or i1 %6, %5
  br i1 %7, label %17, label %8, !prof !261

8:                                                ; preds = %2
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !99
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !99
  %15 = tail call fastcc zeroext i8 @hard_reg_set_intersect_p(i64 noundef %11, i64 noundef %14) #18, !range !92
  %16 = zext nneg i8 %15 to i32
  br label %17

17:                                               ; preds = %8, %2
  %18 = phi i32 [ 1, %2 ], [ %16, %8 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_intersect_p(i64 noundef %0, i64 noundef %1) unnamed_addr #11 !prof !262 !PGOFuncName !263 {
  %3 = and i64 %1, %0
  %4 = icmp ne i64 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reinit_regs() local_unnamed_addr #7 !prof !264 {
  tail call void @init_regs() #18
  tail call void @ira_init() #19
  ret void
}

; Function Attrs: optsize
declare void @ira_init() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_fake_stack_mems() local_unnamed_addr #7 !prof !130 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %7, %1 ]
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !149
  %4 = trunc i64 %2 to i32
  %5 = tail call ptr @gen_rtx_MEM(i32 noundef %4, ptr noundef %3) #19
  %6 = getelementptr inbounds [87 x ptr], ptr @top_of_stack, i64 0, i64 %2
  store ptr %5, ptr %6, align 8, !tbaa !149
  %7 = add nuw nsw i64 %2, 1
  %8 = icmp eq i64 %7, 87
  br i1 %8, label %9, label %1, !prof !250, !llvm.loop !265

9:                                                ; preds = %1
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @memory_move_secondary_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 !prof !264 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @top_of_stack, i64 0, i64 %4
  %6 = icmp ne i32 %2, 0
  %7 = zext i1 %6 to i8
  %8 = load ptr, ptr %5, align 8, !tbaa !149
  %9 = tail call i32 @secondary_reload_class(i8 noundef zeroext %7, i32 noundef %1, i32 noundef %0, ptr noundef %8) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %3, %22
  %12 = phi i32 [ %25, %22 ], [ %9, %3 ]
  %13 = phi i32 [ %12, %22 ], [ %1, %3 ]
  %14 = phi i32 [ %23, %22 ], [ 0, %3 ]
  br i1 %6, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %12, i32 noundef %13) #19
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %13, i32 noundef %12) #19
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = icmp eq i32 %12, %13
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = add nsw i32 %20, %14
  %24 = load ptr, ptr %5, align 8, !tbaa !149
  %25 = tail call i32 @secondary_reload_class(i8 noundef zeroext %7, i32 noundef %12, i32 noundef %0, ptr noundef %24) #19
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %11

27:                                               ; preds = %19, %22
  %28 = phi i32 [ %23, %22 ], [ %14, %19 ]
  %29 = phi i32 [ 0, %22 ], [ %20, %19 ]
  %30 = add nsw i32 %29, %28
  br label %31

31:                                               ; preds = %27, %3
  %32 = phi i32 [ 0, %3 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: optsize
declare i32 @secondary_reload_class(i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fix_register(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 !prof !264 {
  %4 = tail call i32 @decode_reg_name(ptr noundef %0) #19
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
  %17 = load ptr, ptr %16, align 8, !tbaa !149
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.86, ptr noundef %0, ptr noundef %17) #19
  br label %26

18:                                               ; preds = %9, %6
  %19 = trunc i32 %1 to i8
  %20 = zext nneg i32 %4 to i64
  %21 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %20
  store i8 %19, ptr %21, align 1, !tbaa !137
  %22 = trunc i32 %2 to i8
  %23 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %20
  store i8 %22, ptr %23, align 1, !tbaa !137
  br label %26

24:                                               ; preds = %3
  %25 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.87, ptr noundef %0) #19
  br label %26

26:                                               ; preds = %13, %18, %24
  ret void
}

; Function Attrs: optsize
declare i32 @decode_reg_name(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @globalize_reg(i32 noundef %0) local_unnamed_addr #7 !prof !264 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !137
  %5 = icmp eq i8 %4, 0
  %6 = load i1, ptr @no_global_reg_vars, align 4
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.88) #19
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %2
  %11 = load i8, ptr %10, align 1, !tbaa !137
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.89) #19
  br label %45

15:                                               ; preds = %9
  %16 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %2
  %17 = load i8, ptr %16, align 1, !tbaa !137
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr %3, align 1, !tbaa !137
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.90) #19
  br label %24

24:                                               ; preds = %22, %19, %15
  store i8 1, ptr %10, align 1, !tbaa !137
  %25 = icmp eq i32 %0, 7
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = zext nneg i32 %0 to i64
  %28 = shl nuw i64 1, %27
  %29 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !99
  %30 = or i64 %29, %28
  store i64 %30, ptr @regs_invalidated_by_call, align 8, !tbaa !99
  %31 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !149
  %32 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %31, i32 noundef %0) #19
  br label %33

33:                                               ; preds = %26, %24
  %34 = load i8, ptr %3, align 1, !tbaa !137
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  store i8 1, ptr %16, align 1, !tbaa !137
  store i8 1, ptr %3, align 1, !tbaa !137
  %37 = zext nneg i32 %0 to i64
  %38 = shl nuw i64 1, %37
  %39 = load i64, ptr @fixed_reg_set, align 8, !tbaa !99
  %40 = or i64 %39, %38
  store i64 %40, ptr @fixed_reg_set, align 8, !tbaa !99
  %41 = load i64, ptr @call_used_reg_set, align 8, !tbaa !99
  %42 = or i64 %41, %38
  store i64 %42, ptr @call_used_reg_set, align 8, !tbaa !99
  %43 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !99
  %44 = or i64 %43, %38
  store i64 %44, ptr @call_fixed_reg_set, align 8, !tbaa !99
  tail call void @reinit_regs() #18
  br label %45

45:                                               ; preds = %33, %36, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @reg_preferred_class(i32 noundef %0) local_unnamed_addr #14 !prof !266 {
  %2 = load ptr, ptr @reg_pref, align 8, !tbaa !149
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !267

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.reg_pref, ptr %2, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !268
  %8 = sext i8 %7 to i32
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 13, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @reg_alternate_class(i32 noundef %0) local_unnamed_addr #14 !prof !270 {
  %2 = load ptr, ptr @reg_pref, align 8, !tbaa !149
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !271

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.reg_pref, ptr %2, i64 %5, i32 1
  %7 = load i8, ptr %6, align 1, !tbaa !272
  %8 = sext i8 %7 to i32
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 26, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @reg_cover_class(i32 noundef %0) local_unnamed_addr #14 !prof !273 {
  %2 = load ptr, ptr @reg_pref, align 8, !tbaa !149
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !274

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.reg_pref, ptr %2, i64 %5, i32 2
  %7 = load i8, ptr %6, align 1, !tbaa !275
  %8 = sext i8 %7 to i32
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @resize_reg_info() local_unnamed_addr #7 !prof !276 {
  %1 = load ptr, ptr @reg_pref, align 8, !tbaa !149
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !277

3:                                                ; preds = %0
  tail call fastcc void @allocate_reg_info() #18
  br label %39

4:                                                ; preds = %0
  %5 = load i32, ptr @reg_info_size, align 4, !tbaa !94
  %6 = tail call i32 @max_reg_num() #19
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %39, label %8, !prof !278

8:                                                ; preds = %4
  %9 = load i32, ptr @reg_info_size, align 4, !tbaa !94
  %10 = tail call i32 @max_reg_num() #19
  store i32 %10, ptr @reg_info_size, align 4, !tbaa !94
  %11 = load ptr, ptr @reg_pref, align 8, !tbaa !149
  %12 = icmp ne ptr %11, null
  %13 = load ptr, ptr @reg_renumber, align 8
  %14 = icmp ne ptr %13, null
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %19, label %16, !prof !279

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 971, ptr noundef nonnull @.str.81) #19
  %17 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  %18 = load i32, ptr @reg_info_size, align 4, !tbaa !94
  br label %19

19:                                               ; preds = %8, %16
  %20 = phi i32 [ %10, %8 ], [ %18, %16 ]
  %21 = phi ptr [ %13, %8 ], [ %17, %16 ]
  %22 = sext i32 %20 to i64
  %23 = shl nsw i64 %22, 1
  %24 = tail call ptr @xrealloc(ptr noundef %21, i64 noundef %23) #19
  store ptr %24, ptr @reg_renumber, align 8, !tbaa !149
  %25 = load ptr, ptr @reg_pref, align 8, !tbaa !149
  %26 = load i32, ptr @reg_info_size, align 4, !tbaa !94
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 3
  %29 = tail call ptr @xrealloc(ptr noundef %25, i64 noundef %28) #19
  store ptr %29, ptr @reg_pref, align 8, !tbaa !149
  %30 = sext i32 %9 to i64
  %31 = getelementptr inbounds %struct.reg_pref, ptr %29, i64 %30
  %32 = load i32, ptr @reg_info_size, align 4, !tbaa !94
  %33 = sub nsw i32 %32, %9
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %31, i8 -1, i64 %35, i1 false)
  %36 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  %37 = getelementptr inbounds i16, ptr %36, i64 %30
  %38 = shl nsw i64 %34, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %37, i8 -1, i64 %38, i1 false)
  br label %39

39:                                               ; preds = %4, %19, %3
  %40 = phi i8 [ 1, %3 ], [ 1, %19 ], [ 0, %4 ]
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @allocate_reg_info() unnamed_addr #7 !prof !280 !PGOFuncName !281 {
  %1 = tail call i32 @max_reg_num() #19
  store i32 %1, ptr @reg_info_size, align 4, !tbaa !94
  %2 = load ptr, ptr @reg_pref, align 8, !tbaa !149
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @reg_renumber, align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %9, !prof !282

7:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 948, ptr noundef nonnull @.str.81) #19
  %8 = load i32, ptr @reg_info_size, align 4, !tbaa !94
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi i32 [ %1, %0 ], [ %8, %7 ]
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 1
  %13 = tail call ptr @xmalloc(i64 noundef %12) #19
  store ptr %13, ptr @reg_renumber, align 8, !tbaa !149
  %14 = load i32, ptr @reg_info_size, align 4, !tbaa !94
  %15 = sext i32 %14 to i64
  %16 = tail call ptr @xcalloc(i64 noundef %15, i64 noundef 3) #19
  store ptr %16, ptr @reg_pref, align 8, !tbaa !149
  %17 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  %18 = load i32, ptr @reg_info_size, align 4, !tbaa !94
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %17, i8 -1, i64 %20, i1 false)
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_reg_info() local_unnamed_addr #15 !prof !280 {
  %1 = load ptr, ptr @reg_pref, align 8, !tbaa !149
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !283

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #18
  store ptr null, ptr @reg_pref, align 8, !tbaa !149
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @reg_renumber, align 8, !tbaa !149
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !283

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #18
  store ptr null, ptr @reg_renumber, align 8, !tbaa !149
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reginfo_init() #7 !prof !280 !PGOFuncName !284 {
  %1 = load ptr, ptr @df, align 8, !tbaa !149
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !283

3:                                                ; preds = %0
  tail call void @df_compute_regs_ever_live(i8 noundef zeroext 1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @reg_pref, align 8, !tbaa !149
  store i1 true, ptr @no_global_reg_vars, align 4
  ret i32 1
}

; Function Attrs: optsize
declare void @df_compute_regs_ever_live(i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setup_reg_classes(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 !prof !285 {
  %5 = load ptr, ptr @reg_pref, align 8, !tbaa !149
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7, !prof !286

7:                                                ; preds = %4
  %8 = load i32, ptr @reg_info_size, align 4, !tbaa !94
  %9 = tail call i32 @max_reg_num() #19
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %12, label %11, !prof !287

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 1043, ptr noundef nonnull @.str.81) #19
  br label %12

12:                                               ; preds = %7, %11
  %13 = trunc i32 %1 to i8
  %14 = load ptr, ptr @reg_pref, align 8, !tbaa !149
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds %struct.reg_pref, ptr %14, i64 %15
  store i8 %13, ptr %16, align 1, !tbaa !268
  %17 = trunc i32 %2 to i8
  %18 = getelementptr inbounds %struct.reg_pref, ptr %14, i64 %15, i32 1
  store i8 %17, ptr %18, align 1, !tbaa !272
  %19 = trunc i32 %3 to i8
  %20 = getelementptr inbounds %struct.reg_pref, ptr %14, i64 %15, i32 2
  store i8 %19, ptr %20, align 1, !tbaa !275
  br label %21

21:                                               ; preds = %4, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reg_scan(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 !prof !288 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !137
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !289

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 40) #19
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq ptr %0, null
  br i1 %7, label %25, label %8, !prof !290

8:                                                ; preds = %6, %21
  %9 = phi ptr [ %23, %21 ], [ %0, %6 ]
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -7
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %21, !prof !291

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  tail call fastcc void @reg_scan_mark_refs(ptr noundef %16, ptr noundef nonnull %9) #18
  %17 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !137
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !292

20:                                               ; preds = %14
  tail call fastcc void @reg_scan_mark_refs(ptr noundef nonnull %18, ptr noundef nonnull %9) #18
  br label %21

21:                                               ; preds = %8, %20, %14
  %22 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !137
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !prof !293, !llvm.loop !294

25:                                               ; preds = %21, %6
  %26 = load i8, ptr @timevar_enable, align 1, !tbaa !137
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !289

28:                                               ; preds = %25
  tail call void @timevar_pop_1(i32 noundef 40) #19
  br label %29

29:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reg_scan_mark_refs(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #7 !prof !295 !PGOFuncName !296 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %162, label %4, !prof !297

4:                                                ; preds = %2, %30
  %5 = phi ptr [ %31, %30 ], [ %0, %2 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %125 [
    i16 35, label %162
    i16 30, label %162
    i16 32, label %162
    i16 31, label %162
    i16 33, label %162
    i16 46, label %162
    i16 36, label %162
    i16 45, label %162
    i16 44, label %162
    i16 20, label %162
    i16 21, label %162
    i16 37, label %162
    i16 3, label %8
    i16 4, label %17
    i16 25, label %21
    i16 23, label %33
  ], !prof !298

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !299

12:                                               ; preds = %8
  tail call fastcc void @reg_scan_mark_refs(ptr noundef nonnull %10, ptr noundef %1) #18
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  %16 = icmp eq ptr %15, null
  br i1 %16, label %162, label %30, !prof !300

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !137
  %20 = icmp eq ptr %19, null
  br i1 %20, label %162, label %30, !prof !301

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !137
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 43
  br i1 %26, label %27, label %162, !prof !302

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !137
  br label %30

30:                                               ; preds = %27, %13, %17
  %31 = phi ptr [ %29, %27 ], [ %15, %13 ], [ %19, %17 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %162, label %4, !prof !303

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  br label %35

35:                                               ; preds = %40, %33
  %36 = phi ptr [ %34, %33 ], [ %41, %40 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !137
  %38 = load i32, ptr %37, align 8
  %39 = trunc i32 %38 to i16
  switch i16 %39, label %42 [
    i16 39, label %40
    i16 40, label %40
    i16 99, label %40
  ], !prof !304

40:                                               ; preds = %35, %35, %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  br label %35, !llvm.loop !305

42:                                               ; preds = %35
  %43 = load ptr, ptr %34, align 8, !tbaa !137
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %104, !prof !306

47:                                               ; preds = %42
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %43) #18
  %49 = icmp ugt i32 %48, 52
  br i1 %49, label %50, label %104, !prof !307

50:                                               ; preds = %47
  %51 = load ptr, ptr @df, align 8, !tbaa !149
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !308
  %54 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %43) #18
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !149
  %58 = getelementptr inbounds %struct.df_reg_info, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !311
  %60 = icmp eq i32 %59, 1
  %61 = and i32 %44, 1207959552
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %62, %60
  br i1 %63, label %64, label %104, !prof !313

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !137
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 1073807359
  %69 = icmp eq i32 %68, 1073741861
  br i1 %69, label %100, label %70, !prof !314

70:                                               ; preds = %64
  %71 = trunc i32 %67 to i16
  switch i16 %71, label %92 [
    i16 49, label %72
    i16 122, label %72
    i16 35, label %100
    i16 45, label %100
    i16 44, label %100
    i16 121, label %85
  ], !prof !315

72:                                               ; preds = %70, %70
  %73 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !137
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 30
  br i1 %77, label %78, label %84, !prof !316

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !137
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 1073807359
  %83 = icmp eq i32 %82, 1073741861
  br i1 %83, label %100, label %84, !prof !317

84:                                               ; preds = %78, %72
  switch i16 %71, label %92 [
    i16 122, label %90
    i16 49, label %90
    i16 121, label %85
  ], !prof !318

85:                                               ; preds = %84, %70
  %86 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !137
  %88 = load i32, ptr %87, align 8
  %89 = trunc i32 %88 to i16
  switch i16 %89, label %92 [
    i16 35, label %100
    i16 45, label %100
    i16 44, label %100
  ]

90:                                               ; preds = %84, %84
  %91 = trunc i32 %75 to i16
  switch i16 %91, label %92 [
    i16 35, label %100
    i16 45, label %100
    i16 44, label %100
  ], !prof !319

92:                                               ; preds = %70, %84, %85, %90
  %93 = tail call ptr @find_reg_note(ptr noundef %1, i32 noundef 4, ptr noundef null) #19
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95, !prof !320

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !137
  %98 = load i32, ptr %97, align 8
  %99 = trunc i32 %98 to i16
  switch i16 %99, label %104 [
    i16 35, label %100
    i16 45, label %100
    i16 44, label %100
  ], !prof !321

100:                                              ; preds = %70, %70, %70, %95, %95, %95, %90, %90, %90, %85, %85, %85, %78, %64
  %101 = load ptr, ptr %34, align 8, !tbaa !137
  %102 = load i32, ptr %101, align 8
  %103 = or i32 %102, 1073741824
  store i32 %103, ptr %101, align 8
  br label %104

104:                                              ; preds = %95, %100, %92, %50, %47, %42
  %105 = load i32, ptr %37, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 37
  br i1 %107, label %108, label %125, !prof !322

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %110 = load ptr, ptr %109, align 8, !tbaa !137
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %125, !prof !323

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %114

114:                                              ; preds = %122, %112
  %115 = phi ptr [ %113, %112 ], [ %123, %122 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !137
  %117 = load i32, ptr %116, align 8
  %118 = trunc i32 %117 to i16
  switch i16 %118, label %124 [
    i16 98, label %122
    i16 99, label %122
    i16 100, label %122
    i16 39, label %119
  ], !prof !324

119:                                              ; preds = %114
  %120 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %116) #19
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122, !prof !325

122:                                              ; preds = %114, %114, %114, %119
  %123 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  br label %114, !llvm.loop !326

124:                                              ; preds = %114, %119
  tail call void @set_reg_attrs_from_value(ptr noundef nonnull %37, ptr noundef nonnull %116) #19
  br label %125

125:                                              ; preds = %4, %104, %108, %124
  %126 = and i32 %6, 65535
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !149
  %130 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %127
  %131 = load i8, ptr %130, align 1, !tbaa !137
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %162, label %133, !prof !327

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %135 = zext i8 %131 to i64
  br label %136

136:                                              ; preds = %133, %160
  %137 = phi i64 [ %135, %133 ], [ %138, %160 ]
  %138 = add nsw i64 %137, -1
  %139 = getelementptr inbounds i8, ptr %129, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !137
  switch i8 %140, label %160 [
    i8 101, label %141
    i8 69, label %144
  ], !prof !328

141:                                              ; preds = %136
  %142 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %138
  %143 = load ptr, ptr %142, align 8, !tbaa !137
  tail call fastcc void @reg_scan_mark_refs(ptr noundef %143, ptr noundef %1) #18
  br label %160

144:                                              ; preds = %136
  %145 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %138
  %146 = load ptr, ptr %145, align 8, !tbaa !137
  %147 = icmp eq ptr %146, null
  br i1 %147, label %160, label %148, !prof !329

148:                                              ; preds = %144
  %149 = load i32, ptr %146, align 8, !tbaa !330
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %160, !prof !332

151:                                              ; preds = %148
  %152 = zext nneg i32 %149 to i64
  br label %153

153:                                              ; preds = %151, %153
  %154 = phi i64 [ %152, %151 ], [ %155, %153 ]
  %155 = add nsw i64 %154, -1
  %156 = load ptr, ptr %145, align 8, !tbaa !137
  %157 = getelementptr inbounds %struct.rtvec_def, ptr %156, i64 0, i32 1, i64 %155
  %158 = load ptr, ptr %157, align 8, !tbaa !149
  tail call fastcc void @reg_scan_mark_refs(ptr noundef %158, ptr noundef %1) #18
  %159 = icmp ugt i64 %154, 1
  br i1 %159, label %153, label %160, !prof !333, !llvm.loop !334

160:                                              ; preds = %153, %148, %136, %141, %144
  %161 = icmp sgt i64 %137, 1
  br i1 %161, label %136, label %162, !prof !335, !llvm.loop !336

162:                                              ; preds = %30, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %21, %17, %13, %160, %2, %125
  ret void
}

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @set_reg_attrs_from_value(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_subregs_of_mode() local_unnamed_addr #7 !prof !280 {
  %1 = load ptr, ptr @subregs_of_mode, align 8, !tbaa !149
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !337

3:                                                ; preds = %0
  tail call void @htab_empty(ptr noundef nonnull %1) #19
  br label %6

4:                                                ; preds = %0
  %5 = tail call ptr @htab_create(i64 noundef 100, ptr noundef nonnull @som_hash, ptr noundef nonnull @som_eq, ptr noundef nonnull @free) #19
  store ptr %5, ptr @subregs_of_mode, align 8, !tbaa !149
  br label %6

6:                                                ; preds = %4, %3
  %7 = load ptr, ptr @cfun, align 8, !tbaa !149
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !338
  %10 = load ptr, ptr %9, align 8, !tbaa !340
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !342
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !344
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %54, label %16, !prof !345

16:                                               ; preds = %6, %45
  %17 = phi ptr [ %46, %45 ], [ %7, %6 ]
  %18 = phi ptr [ %48, %45 ], [ %12, %6 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !137
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23, !prof !346

23:                                               ; preds = %16, %39
  %24 = phi ptr [ %41, %39 ], [ %21, %16 ]
  %25 = load ptr, ptr %19, align 8, !tbaa !137
  %26 = getelementptr inbounds %struct.rtl_bb_info, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !347
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !137
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %43, label %31, !prof !349

31:                                               ; preds = %23
  %32 = load i32, ptr %24, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %39, !prof !350

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !137
  tail call fastcc void @find_subregs_of_mode(ptr noundef %38) #18
  br label %39

39:                                               ; preds = %31, %36
  %40 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !137
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %23, !prof !351, !llvm.loop !352

43:                                               ; preds = %23, %39
  %44 = load ptr, ptr @cfun, align 8, !tbaa !149
  br label %45

45:                                               ; preds = %43, %16
  %46 = phi ptr [ %44, %43 ], [ %17, %16 ]
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !342
  %49 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !338
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !344
  %53 = icmp eq ptr %48, %52
  br i1 %53, label %54, label %16, !prof !353, !llvm.loop !354

54:                                               ; preds = %45, %6
  ret void
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @som_hash(ptr nocapture noundef readonly %0) #12 !prof !264 !PGOFuncName !355 {
  %2 = load i32, ptr %0, align 4, !tbaa !356
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @som_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !358 !PGOFuncName !359 {
  %3 = load i32, ptr %0, align 4, !tbaa !356
  %4 = load i32, ptr %1, align 4, !tbaa !356
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_subregs_of_mode(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !360 !PGOFuncName !361 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = icmp eq i32 %3, 39
  br i1 %7, label %8, label %9, !prof !362

8:                                                ; preds = %1
  tail call fastcc void @record_subregs_of_mode(ptr noundef nonnull %0) #18
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %4
  %11 = load i8, ptr %10, align 1, !tbaa !137
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %41, label %13, !prof !363

13:                                               ; preds = %9
  %14 = zext i8 %11 to i64
  br label %15

15:                                               ; preds = %13, %39
  %16 = phi i64 [ %14, %13 ], [ %17, %39 ]
  %17 = add nsw i64 %16, -1
  %18 = getelementptr inbounds i8, ptr %6, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !137
  switch i8 %19, label %39 [
    i8 101, label %20
    i8 69, label %24
  ], !prof !364

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !137
  tail call fastcc void @find_subregs_of_mode(ptr noundef %23) #18
  br label %39

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds [1 x %union.rtunion_def], ptr %25, i64 0, i64 %17
  %27 = load ptr, ptr %26, align 8, !tbaa !137
  %28 = load i32, ptr %27, align 8, !tbaa !330
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39, !prof !365

30:                                               ; preds = %24
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr %26, align 8, !tbaa !137
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !149
  tail call fastcc void @find_subregs_of_mode(ptr noundef %37) #18
  %38 = icmp ugt i64 %33, 1
  br i1 %38, label %32, label %39, !prof !366, !llvm.loop !367

39:                                               ; preds = %32, %24, %15, %20
  %40 = icmp sgt i64 %16, 1
  br i1 %40, label %15, label %41, !prof !368, !llvm.loop !369

41:                                               ; preds = %39, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_subregs_of_mode(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !370 !PGOFuncName !371 {
  %2 = alloca %struct.subregs_of_mode_node, align 4
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %2) #17
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 37
  br i1 %7, label %8, label %31, !prof !372

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #18
  %10 = load i32, ptr %0, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp ult i32 %9, 53
  br i1 %13, label %31, label %14, !prof !373

14:                                               ; preds = %8
  %15 = and i32 %9, -8
  store i32 %15, ptr %2, align 4, !tbaa !356
  %16 = load ptr, ptr @subregs_of_mode, align 8, !tbaa !149
  %17 = call ptr @htab_find_slot_with_hash(ptr noundef %16, ptr noundef nonnull %2, i32 noundef %15, i32 noundef 1) #19
  %18 = load ptr, ptr %17, align 8, !tbaa !149
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22, !prof !374

20:                                               ; preds = %14
  %21 = call ptr @xcalloc(i64 noundef 1, i64 noundef 92) #19
  store i32 %15, ptr %21, align 4, !tbaa !356
  store ptr %21, ptr %17, align 8, !tbaa !149
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %21, %20 ], [ %18, %14 ]
  %24 = and i32 %9, 7
  %25 = shl nuw nsw i32 1, %24
  %26 = zext nneg i32 %12 to i64
  %27 = getelementptr inbounds %struct.subregs_of_mode_node, ptr %23, i64 0, i32 1, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !137
  %29 = trunc i32 %25 to i8
  %30 = or i8 %28, %29
  store i8 %30, ptr %27, align 1, !tbaa !137
  br label %31

31:                                               ; preds = %8, %1, %22
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @invalid_mode_change_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 !prof !375 {
  %4 = alloca %struct.subregs_of_mode_node, align 4
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %4) #17
  %5 = load ptr, ptr @subregs_of_mode, align 8, !tbaa !149
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !376

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.80, i32 noundef 1353, ptr noundef nonnull @.str.81) #19
  %8 = load ptr, ptr @subregs_of_mode, align 8, !tbaa !149
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %5, %3 ], [ %8, %7 ]
  %11 = and i32 %0, -8
  store i32 %11, ptr %4, align 4, !tbaa !356
  %12 = call ptr @htab_find_with_hash(ptr noundef %10, ptr noundef nonnull %4, i32 noundef %11) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14, !prof !377

14:                                               ; preds = %9
  %15 = and i32 %0, 7
  %16 = shl nuw nsw i32 1, %15
  br label %17

17:                                               ; preds = %14, %28
  %18 = phi i64 [ 0, %14 ], [ %29, %28 ]
  %19 = getelementptr inbounds %struct.subregs_of_mode_node, ptr %12, i64 0, i32 1, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !137
  %21 = zext i8 %20 to i32
  %22 = and i32 %16, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !378

24:                                               ; preds = %17
  %25 = trunc i64 %18 to i32
  %26 = call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %2, i32 noundef %25, i32 noundef %1) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31, !prof !379

28:                                               ; preds = %17, %24
  %29 = add nuw nsw i64 %18, 1
  %30 = icmp eq i64 %29, 87
  br i1 %30, label %31, label %17, !prof !380, !llvm.loop !381

31:                                               ; preds = %28, %24, %9
  %32 = phi i8 [ 0, %9 ], [ 0, %28 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %4) #17
  ret i8 %32
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_subregs_of_mode() local_unnamed_addr #7 !prof !280 {
  %1 = load ptr, ptr @subregs_of_mode, align 8, !tbaa !149
  tail call void @htab_delete(ptr noundef %1) #19
  store ptr null, ptr @subregs_of_mode, align 8, !tbaa !149
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #8

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!90}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!36 = !{ptr @reg_set_to_hard_reg_set, ptr @bmp_iter_set_init, i64 6160109}
!37 = !{ptr @reg_set_to_hard_reg_set, ptr @bmp_iter_set, i64 11391005}
!38 = !{ptr @reg_set_to_hard_reg_set, ptr @bmp_iter_next, i64 5230896}
!39 = !{ptr @init_move_cost, ptr @fancy_abort, i64 2}
!40 = !{ptr @init_move_cost, ptr @ix86_register_move_cost, i64 1539}
!41 = !{ptr @init_move_cost, ptr @xmalloc, i64 18}
!42 = !{ptr @init_move_cost, ptr @reg_class_subset_p, i64 2886}
!43 = !{ptr @reg_class_subset_p, ptr @hard_reg_set_subset_p, i64 3733011}
!44 = !{ptr @init_reg_modes_target, ptr @choose_hard_reg_mode, i64 27}
!45 = !{ptr @choose_hard_reg_mode, ptr @ix86_hard_regno_mode_ok, i64 380}
!46 = !{ptr @init_regs, ptr @init_reg_sets_1, i64 1}
!47 = !{ptr @init_reg_sets_1, ptr @restore_register_info, i64 1}
!48 = !{ptr @init_reg_sets_1, ptr @ix86_conditional_register_usage, i64 1}
!49 = !{ptr @init_reg_sets_1, ptr @hard_reg_set_subset_p, i64 21803}
!50 = !{ptr @init_reg_sets_1, ptr @bitmap_obstack_initialize, i64 1}
!51 = !{ptr @init_reg_sets_1, ptr @bitmap_obstack_alloc_stat, i64 1}
!52 = !{ptr @init_reg_sets_1, ptr @bitmap_set_bit, i64 4}
!53 = !{ptr @init_reg_sets_1, ptr @ix86_hard_regno_mode_ok, i64 653}
!54 = !{ptr @init_reg_sets_1, ptr @reg_classes_intersect_p, i64 1175}
!55 = !{ptr @init_reg_sets_1, ptr @hard_reg_set_intersect_p, i64 1174}
!56 = !{ptr @reg_classes_intersect_p, ptr @hard_reg_set_intersect_p, i64 6805929}
!57 = !{ptr @init_fake_stack_mems, ptr @gen_rtx_MEM, i64 44}
!58 = !{ptr @resize_reg_info, ptr @allocate_reg_info, i64 6652}
!59 = !{ptr @resize_reg_info, ptr @max_reg_num, i64 9603}
!60 = !{ptr @resize_reg_info, ptr @fancy_abort, i64 2}
!61 = !{ptr @resize_reg_info, ptr @xrealloc, i64 2952}
!62 = !{ptr @allocate_reg_info, ptr @max_reg_num, i64 6652}
!63 = !{ptr @allocate_reg_info, ptr @fancy_abort, i64 2}
!64 = !{ptr @allocate_reg_info, ptr @xmalloc, i64 6652}
!65 = !{ptr @allocate_reg_info, ptr @xcalloc, i64 6652}
!66 = !{ptr @free_reg_info, ptr @free, i64 13302}
!67 = !{ptr @reginfo_init, ptr @df_compute_regs_ever_live, i64 6651}
!68 = !{ptr @setup_reg_classes, ptr @max_reg_num, i64 321547}
!69 = !{ptr @setup_reg_classes, ptr @fancy_abort, i64 1}
!70 = !{ptr @reg_scan, ptr @timevar_push_1, i64 1}
!71 = !{ptr @reg_scan, ptr @reg_scan_mark_refs, i64 4470196}
!72 = !{ptr @reg_scan, ptr @timevar_pop_1, i64 1}
!73 = !{ptr @reg_scan_mark_refs, ptr @reg_scan_mark_refs, i64 16408522}
!74 = !{ptr @reg_scan_mark_refs, ptr @rhs_regno, i64 3156925}
!75 = !{ptr @reg_scan_mark_refs, ptr @find_reg_note, i64 434654}
!76 = !{ptr @reg_scan_mark_refs, ptr @subreg_lowpart_p, i64 502}
!77 = !{ptr @reg_scan_mark_refs, ptr @set_reg_attrs_from_value, i64 1109298}
!78 = !{ptr @init_subregs_of_mode, ptr @htab_empty, i64 1}
!79 = !{ptr @init_subregs_of_mode, ptr @htab_create, i64 6651}
!80 = !{ptr @init_subregs_of_mode, ptr @find_subregs_of_mode, i64 1059283}
!81 = !{ptr @find_subregs_of_mode, ptr @record_subregs_of_mode, i64 4587}
!82 = !{ptr @find_subregs_of_mode, ptr @find_subregs_of_mode, i64 5034136}
!83 = !{ptr @record_subregs_of_mode, ptr @rhs_regno, i64 4585}
!84 = !{ptr @record_subregs_of_mode, ptr @htab_find_slot_with_hash, i64 4584}
!85 = !{ptr @record_subregs_of_mode, ptr @xcalloc, i64 3451}
!86 = !{ptr @invalid_mode_change_p, ptr @fancy_abort, i64 1}
!87 = !{ptr @invalid_mode_change_p, ptr @htab_find_with_hash, i64 14133234}
!88 = !{ptr @invalid_mode_change_p, ptr @ix86_cannot_change_mode_class, i64 207583}
!89 = !{ptr @finish_subregs_of_mode, ptr @htab_delete, i64 6652}
!90 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!91 = !{!"function_entry_count", i64 6160109}
!92 = !{i8 0, i8 2}
!93 = !{!"branch_weights", i32 1, i32 1202149}
!94 = !{!95, !95, i64 0}
!95 = !{!"int", !96, i64 0}
!96 = !{!"omnipotent char", !97, i64 0}
!97 = !{!"Simple C/C++ TBAA"}
!98 = !{!"branch_weights", i32 4957961, i32 4707255}
!99 = !{!100, !100, i64 0}
!100 = !{!"long", !96, i64 0}
!101 = !{!"branch_weights", i32 1202149, i32 8463066}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!"reginfo.c:bmp_iter_set_init"}
!105 = !{!106, !107, i64 0}
!106 = !{!"bitmap_head_def", !107, i64 0, !107, i64 8, !95, i64 16, !107, i64 24}
!107 = !{!"any pointer", !96, i64 0}
!108 = !{!109, !107, i64 0}
!109 = !{!"", !107, i64 0, !107, i64 8, !95, i64 16, !100, i64 24}
!110 = !{!109, !107, i64 8}
!111 = !{!"branch_weights", i32 813917, i32 5346194}
!112 = !{!113, !95, i64 16}
!113 = !{!"bitmap_element_def", !107, i64 0, !107, i64 8, !95, i64 16, !96, i64 24}
!114 = !{!109, !95, i64 16}
!115 = !{!109, !100, i64 24}
!116 = !{!"function_entry_count", i64 10867363}
!117 = !{!"reginfo.c:bmp_iter_set"}
!118 = !{!"branch_weights", i32 4766578, i32 6100787}
!119 = !{!"branch_weights", i32 9665214, i32 1}
!120 = !{!"branch_weights", i32 174729886, i32 9665214}
!121 = distinct !{!121, !103}
!122 = !{!"branch_weights", i32 1, i32 2852474}
!123 = !{!"branch_weights", i32 3385775, i32 3564429}
!124 = !{!"branch_weights", i32 2852474, i32 4097729}
!125 = distinct !{!125, !103}
!126 = !{!113, !107, i64 0}
!127 = !{!"branch_weights", i32 1202150, i32 1650326}
!128 = !{!"function_entry_count", i64 4707254}
!129 = !{!"reginfo.c:bmp_iter_next"}
!130 = !{!"function_entry_count", i64 1}
!131 = !{!"branch_weights", i32 1115, i32 318}
!132 = !{!"branch_weights", i32 28, i32 1404}
!133 = distinct !{!133, !103}
!134 = !{!"branch_weights", i32 2, i32 26}
!135 = distinct !{!135, !103}
!136 = !{!"function_entry_count", i64 6}
!137 = !{!96, !96, i64 0}
!138 = !{!"branch_weights", i32 1, i32 7}
!139 = !{!"branch_weights", i32 61, i32 103}
!140 = !{!"branch_weights", i32 949, i32 1807}
!141 = !{!"branch_weights", i32 1807, i32 1}
!142 = !{!143, !143, i64 0}
!143 = !{!"short", !96, i64 0}
!144 = !{!"branch_weights", i32 103, i32 2652}
!145 = distinct !{!145, !103}
!146 = !{!"branch_weights", i32 7, i32 156}
!147 = distinct !{!147, !103}
!148 = !{!"branch_weights", i32 1, i32 15}
!149 = !{!107, !107, i64 0}
!150 = !{!"branch_weights", i32 1, i32 1806}
!151 = !{!"branch_weights", i32 495, i32 11735}
!152 = !{!"branch_weights", i32 3369, i32 8367}
!153 = !{!"branch_weights", i32 1806, i32 10423}
!154 = distinct !{!154, !103}
!155 = distinct !{!155, !103}
!156 = !{i32 0, i32 2}
!157 = !{!"branch_weights", i32 1211, i32 597}
!158 = distinct !{!158, !103}
!159 = !{!"branch_weights", i32 61, i32 1560}
!160 = distinct !{!160, !103}
!161 = distinct !{!161, !103}
!162 = !{!"function_entry_count", i64 5055086}
!163 = !{!"branch_weights", i32 1204976087, i32 -892598450}
!164 = !{!"branch_weights", i32 -1585680750, i32 1775473366}
!165 = !{!"branch_weights", i32 -1, i32 0}
!166 = !{!"branch_weights", i32 6615184, i32 57068, i32 56584}
!167 = !{!"branch_weights", i32 54, i32 4558}
!168 = distinct !{!168, !103}
!169 = !{!"branch_weights", i32 2, i32 52}
!170 = distinct !{!170, !103}
!171 = !{!"branch_weights", i32 1, i32 54}
!172 = distinct !{!172, !103}
!173 = !{!"function_entry_count", i64 64}
!174 = !{!"branch_weights", i32 1, i32 129}
!175 = !{!"branch_weights", i32 313, i32 73}
!176 = !{!"branch_weights", i32 183, i32 131}
!177 = !{!"branch_weights", i32 129, i32 641}
!178 = distinct !{!178, !103}
!179 = !{!"branch_weights", i32 606360194, i32 1541123454}
!180 = !{!"branch_weights", i32 1, i32 151}
!181 = !{!"branch_weights", i32 67, i32 7}
!182 = !{!"branch_weights", i32 19, i32 49}
!183 = !{!"branch_weights", i32 151, i32 433}
!184 = distinct !{!184, !103}
!185 = !{!"branch_weights", i32 310034062, i32 1837449586}
!186 = !{!"branch_weights", i32 1, i32 191}
!187 = !{!"branch_weights", i32 1, i32 19}
!188 = !{!"branch_weights", i32 191, i32 1025}
!189 = distinct !{!189, !103}
!190 = !{!"branch_weights", i32 1607801894, i32 539681754}
!191 = !{!"branch_weights", i32 9, i32 39}
!192 = !{!"branch_weights", i32 9, i32 1}
!193 = !{!"branch_weights", i32 191, i32 2817}
!194 = distinct !{!194, !103}
!195 = !{!"branch_weights", i32 3, i32 1}
!196 = !{!"branch_weights", i32 1, i32 3}
!197 = !{!"branch_weights", i32 1, i32 2}
!198 = distinct !{!198, !103}
!199 = !{!"reginfo.c:init_reg_sets_1"}
!200 = distinct !{!200, !103}
!201 = distinct !{!201, !103}
!202 = distinct !{!202, !103}
!203 = !{!"branch_weights", i32 11583, i32 8102}
!204 = !{!"branch_weights", i32 7373, i32 730}
!205 = !{!"branch_weights", i32 730, i32 18954}
!206 = distinct !{!206, !103}
!207 = !{!"branch_weights", i32 28, i32 702}
!208 = distinct !{!208, !103}
!209 = distinct !{!209, !103}
!210 = !{!"branch_weights", i32 14796, i32 730}
!211 = !{!"branch_weights", i32 1, i32 15524}
!212 = distinct !{!212, !103}
!213 = distinct !{!213, !103}
!214 = distinct !{!214, !103}
!215 = !{!"branch_weights", i32 28, i32 140}
!216 = distinct !{!216, !103, !217, !218}
!217 = !{!"llvm.loop.isvectorized", i32 1}
!218 = !{!"llvm.loop.unroll.runtime.disable"}
!219 = distinct !{!219, !103}
!220 = !{!"branch_weights", i32 5805, i32 459}
!221 = !{!"branch_weights", i32 196, i32 131}
!222 = !{!"branch_weights", i32 131, i32 824}
!223 = distinct !{!223, !103}
!224 = !{!"branch_weights", i32 215, i32 2393}
!225 = distinct !{!225, !103}
!226 = distinct !{!226, !103}
!227 = !{!"branch_weights", i32 2, i32 1}
!228 = !{!"branch_weights", i32 16, i32 39}
!229 = !{!"branch_weights", i32 1, i32 39}
!230 = !{!"branch_weights", i32 0, i32 -2147483648}
!231 = !{!"branch_weights", i32 50, i32 5}
!232 = !{!"branch_weights", i32 2, i32 53}
!233 = !{!"branch_weights", i32 53, i32 1}
!234 = !{!"branch_weights", i32 50, i32 52, i32 52, i32 2}
!235 = !{!"branch_weights", i32 50, i32 1}
!236 = !{!"branch_weights", i32 47, i32 55}
!237 = distinct !{!237, !103}
!238 = !{!"branch_weights", i32 54, i32 1}
!239 = distinct !{!239, !103}
!240 = !{!"branch_weights", i32 1306, i32 3307}
!241 = !{!"branch_weights", i32 1104, i32 203}
!242 = !{!"branch_weights", i32 88, i32 4524}
!243 = distinct !{!243, !103}
!244 = !{!"branch_weights", i32 871, i32 1480}
!245 = !{!"branch_weights", i32 18, i32 794}
!246 = !{!"branch_weights", i32 1, i32 1798}
!247 = !{!"branch_weights", i32 1494, i32 305}
!248 = !{!"branch_weights", i32 88, i32 2262}
!249 = distinct !{!249, !103}
!250 = !{!"branch_weights", i32 2, i32 86}
!251 = distinct !{!251, !103}
!252 = !{!"branch_weights", i32 88, i32 1}
!253 = distinct !{!253, !103}
!254 = distinct !{!254, !103}
!255 = !{!"reginfo.c:restore_register_info"}
!256 = !{!"function_entry_count", i64 3776645}
!257 = !{!"reginfo.c:hard_reg_set_subset_p"}
!258 = !{!"function_entry_count", i64 3103473}
!259 = !{!"reginfo.c:rhs_regno"}
!260 = !{!"function_entry_count", i64 7959556}
!261 = !{!"branch_weights", i32 388836158, i32 -2000991804}
!262 = !{!"function_entry_count", i64 6807729}
!263 = !{!"reginfo.c:hard_reg_set_intersect_p"}
!264 = !{!"function_entry_count", i64 0}
!265 = distinct !{!265, !103}
!266 = !{!"function_entry_count", i64 3118529}
!267 = !{!"branch_weights", i32 45105, i32 3073426}
!268 = !{!269, !96, i64 0}
!269 = !{!"reg_pref", !96, i64 0, !96, i64 1, !96, i64 2}
!270 = !{!"function_entry_count", i64 361925}
!271 = !{!"branch_weights", i32 1, i32 361926}
!272 = !{!269, !96, i64 1}
!273 = !{!"function_entry_count", i64 34156}
!274 = !{!"branch_weights", i32 1, i32 34157}
!275 = !{!269, !96, i64 2}
!276 = !{!"function_entry_count", i64 14779}
!277 = !{!"branch_weights", i32 6653, i32 8128}
!278 = !{!"branch_weights", i32 6653, i32 1476}
!279 = !{!"branch_weights", i32 2178576, i32 2953}
!280 = !{!"function_entry_count", i64 6652}
!281 = !{!"reginfo.c:allocate_reg_info"}
!282 = !{!"branch_weights", i32 13307, i32 44262409}
!283 = !{!"branch_weights", i32 1, i32 6653}
!284 = !{!"reginfo.c:reginfo_init"}
!285 = !{!"function_entry_count", i64 321548}
!286 = !{!"branch_weights", i32 1, i32 321549}
!287 = !{!"branch_weights", i32 321549, i32 1}
!288 = !{!"function_entry_count", i64 14862}
!289 = !{!"branch_weights", i32 14863, i32 1}
!290 = !{!"branch_weights", i32 1, i32 14862}
!291 = !{!"branch_weights", i32 -1341519943, i32 1091981978}
!292 = !{!"branch_weights", i32 1586316, i32 1442090}
!293 = !{!"branch_weights", i32 14862, i32 4133241}
!294 = distinct !{!294, !103}
!295 = !{!"function_entry_count", i64 21127815}
!296 = !{!"reginfo.c:reg_scan_mark_refs"}
!297 = !{!"branch_weights", i32 1, i32 127}
!298 = !{!"branch_weights", i32 4719189, i32 55077, i32 3120821, i32 823, i32 1, i32 1, i32 1, i32 855738, i32 428505, i32 431189, i32 1, i32 1, i32 6289498, i32 1990657, i32 1889, i32 285443, i32 2948998}
!299 = !{!"branch_weights", i32 1, i32 1990657}
!300 = !{!"branch_weights", i32 1441156, i32 549502}
!301 = !{!"branch_weights", i32 935, i32 955}
!302 = !{!"branch_weights", i32 4, i32 285440}
!303 = !{!"branch_weights", i32 127, i32 -1590606975}
!304 = !{!"branch_weights", i32 -1309353856, i32 226798, i32 1011, i32 226781}
!305 = distinct !{!305, !103}
!306 = !{!"branch_weights", i32 1901202, i32 1047797}
!307 = !{!"branch_weights", i32 1197687, i32 703516}
!308 = !{!309, !107, i64 216}
!309 = !{!"df", !96, i64 0, !96, i64 64, !107, i64 128, !310, i64 136, !310, i64 176, !107, i64 216, !107, i64 224, !107, i64 232, !95, i64 240, !95, i64 244, !107, i64 248, !95, i64 256, !95, i64 260, !107, i64 264, !107, i64 272, !107, i64 280, !107, i64 288, !107, i64 296, !107, i64 304, !107, i64 312, !107, i64 320, !107, i64 328, !107, i64 336, !95, i64 344, !95, i64 348, !107, i64 352, !95, i64 360, !95, i64 364, !96, i64 365, !96, i64 366}
!310 = !{!"df_ref_info", !107, i64 0, !107, i64 8, !107, i64 16, !95, i64 24, !95, i64 28, !95, i64 32, !95, i64 36}
!311 = !{!312, !95, i64 8}
!312 = !{!"df_reg_info", !107, i64 0, !95, i64 8}
!313 = !{!"branch_weights", i32 1879694710, i32 -1031304793}
!314 = !{!"branch_weights", i32 21452677, i32 -525468378}
!315 = !{!"branch_weights", i32 -930094802, i32 431564042, i32 8723, i32 276019, i32 520495, i32 7885, i32 7886}
!316 = !{!"branch_weights", i32 33399, i32 16067}
!317 = !{!"branch_weights", i32 282537718, i32 832688282}
!318 = !{!"branch_weights", i32 -1187376681, i32 330404661, i32 330404661, i32 8832}
!319 = !{!"branch_weights", i32 -102918305, i32 1536224, i32 5837509, i32 102409}
!320 = !{!"branch_weights", i32 377446, i32 49158}
!321 = !{!"branch_weights", i32 -669761374, i32 73749, i32 73747, i32 73746}
!322 = !{!"branch_weights", i32 1901425, i32 1047574}
!323 = !{!"branch_weights", i32 1088905, i32 812521}
!324 = !{!"branch_weights", i32 -1751428293, i32 2485369, i32 42225572, i32 630685, i32 1151583}
!325 = !{!"branch_weights", i32 1088905, i32 19901}
!326 = distinct !{!326, !103}
!327 = !{!"branch_weights", i32 1, i32 7668185}
!328 = !{!"branch_weights", i32 364448081, i32 -1191931407, i32 65920437}
!329 = !{!"branch_weights", i32 1, i32 287604}
!330 = !{!331, !95, i64 0}
!331 = !{!"rtvec_def", !95, i64 0, !96, i64 8}
!332 = !{!"branch_weights", i32 287603, i32 1}
!333 = !{!"branch_weights", i32 290392, i32 287603}
!334 = distinct !{!334, !103}
!335 = !{!"branch_weights", i32 7747681, i32 7668185}
!336 = distinct !{!336, !103}
!337 = !{!"branch_weights", i32 6653, i32 1}
!338 = !{!339, !107, i64 8}
!339 = !{!"function", !107, i64 0, !107, i64 8, !107, i64 16, !107, i64 24, !107, i64 32, !107, i64 40, !107, i64 48, !107, i64 56, !107, i64 64, !107, i64 72, !107, i64 80, !107, i64 88, !107, i64 96, !95, i64 104, !95, i64 108, !95, i64 112, !95, i64 116, !95, i64 120, !95, i64 124, !107, i64 128, !95, i64 136, !95, i64 137, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139}
!340 = !{!341, !107, i64 0}
!341 = !{!"control_flow_graph", !107, i64 0, !107, i64 8, !107, i64 16, !95, i64 24, !95, i64 28, !95, i64 32, !107, i64 40, !95, i64 48, !96, i64 52, !96, i64 60, !95, i64 68, !95, i64 72}
!342 = !{!343, !107, i64 56}
!343 = !{!"basic_block_def", !107, i64 0, !107, i64 8, !107, i64 16, !107, i64 24, !96, i64 32, !107, i64 48, !107, i64 56, !96, i64 64, !100, i64 72, !95, i64 80, !95, i64 84, !95, i64 88, !95, i64 92, !95, i64 96}
!344 = !{!341, !107, i64 8}
!345 = !{!"branch_weights", i32 1, i32 6652}
!346 = !{!"branch_weights", i32 1, i32 5699}
!347 = !{!348, !107, i64 8}
!348 = !{!"rtl_bb_info", !107, i64 0, !107, i64 8, !107, i64 16, !107, i64 24, !95, i64 32}
!349 = !{!"branch_weights", i32 257175, i32 1536489}
!350 = !{!"branch_weights", i32 -1888460381, i32 1017781174}
!351 = !{!"branch_weights", i32 5699, i32 1782265}
!352 = distinct !{!352, !103}
!353 = !{!"branch_weights", i32 6652, i32 250523}
!354 = distinct !{!354, !103}
!355 = !{!"reginfo.c:som_hash"}
!356 = !{!357, !95, i64 0}
!357 = !{!"subregs_of_mode_node", !95, i64 0, !96, i64 4}
!358 = !{!"function_entry_count", i64 1272224}
!359 = !{!"reginfo.c:som_eq"}
!360 = !{!"function_entry_count", i64 6113940}
!361 = !{!"reginfo.c:find_subregs_of_mode"}
!362 = !{!"branch_weights", i32 4587, i32 6109355}
!363 = !{!"branch_weights", i32 1, i32 6113940}
!364 = !{!"branch_weights", i32 -956614912, i32 -2079709385, i32 34097805}
!365 = !{!"branch_weights", i32 75155, i32 1}
!366 = !{!"branch_weights", i32 76266, i32 75155}
!367 = distinct !{!367, !103}
!368 = !{!"branch_weights", i32 6202093, i32 6113940}
!369 = distinct !{!369, !103}
!370 = !{!"function_entry_count", i64 4586}
!371 = !{!"reginfo.c:record_subregs_of_mode"}
!372 = !{!"branch_weights", i32 4587, i32 1}
!373 = !{!"branch_weights", i32 1, i32 4587}
!374 = !{!"branch_weights", i32 3454, i32 1134}
!375 = !{!"function_entry_count", i64 14133234}
!376 = !{!"branch_weights", i32 1, i32 14133235}
!377 = !{!"branch_weights", i32 13513825, i32 619411}
!378 = !{!"branch_weights", i32 53681089, i32 207583}
!379 = !{!"branch_weights", i32 207583, i32 1}
!380 = !{!"branch_weights", i32 619411, i32 53269260}
!381 = distinct !{!381, !103}
