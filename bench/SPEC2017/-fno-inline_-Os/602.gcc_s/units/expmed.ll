; ModuleID = 'expmed.c'
source_filename = "expmed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.insn_data = type { ptr, %union.anon, ptr, ptr, i8, i8, i8, i8 }
%union.anon = type { ptr }
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
%struct.real_value = type { i32, [3 x i64] }
%struct.alg_hash_entry = type { i64, i32, i32, %struct.mult_cost, i8 }
%struct.mult_cost = type { i16, i16 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.anon = type { %struct.rtx_def, [2 x %union.rtunion_def], %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.algorithm = type { %struct.mult_cost, i16, [32 x i32], [32 x i8] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@zero_cost = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@add_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@neg_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@mul_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@sdiv_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@udiv_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@sdiv_pow2_cheap = internal unnamed_addr global [2 x [87 x i8]] zeroinitializer, align 16
@smod_pow2_cheap = internal unnamed_addr global [2 x [87 x i8]] zeroinitializer, align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mul_widen_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@mul_highpart_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@shift_cost = internal unnamed_addr global [2 x [87 x [32 x i32]]] zeroinitializer, align 16
@shiftsub1_cost = internal unnamed_addr global [2 x [87 x [32 x i32]]] zeroinitializer, align 16
@shiftsub0_cost = internal unnamed_addr global [2 x [87 x [32 x i32]]] zeroinitializer, align 16
@shiftadd_cost = internal unnamed_addr global [2 x [87 x [32 x i32]]] zeroinitializer, align 16
@optab_table = external global [159 x %struct.optab_d], align 16
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@.str = private unnamed_addr constant [9 x i8] c"expmed.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@word_mode = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@byte_mode = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@volatile_ok = external local_unnamed_addr global i32, align 4
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_trapv = external local_unnamed_addr global i32, align 4
@dconst2 = external global %struct.real_value, align 8
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@alg_hash = internal unnamed_addr global [1031 x %struct.alg_hash_entry] zeroinitializer, align 16
@optimize = external local_unnamed_addr global i32, align 4
@expand_divmod.last_div_const = internal unnamed_addr global i64 0, align 8
@ix86_branch_cost = external local_unnamed_addr global i32, align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@switch.table.mode_for_extraction = private unnamed_addr constant [3 x ptr] [ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2181), ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2179), ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2180)], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_expmed() local_unnamed_addr #0 !prof !319 {
  %1 = alloca %struct.anon, align 8
  %2 = alloca [32 x ptr], align 16
  %3 = alloca [32 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 936, ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #8
  br label %4

4:                                                ; preds = %0, %4
  %5 = phi i64 [ 1, %0 ], [ %11, %4 ]
  %6 = shl nuw nsw i64 1, %5
  %7 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %6) #9
  %8 = getelementptr inbounds [32 x ptr], ptr %2, i64 0, i64 %5
  store ptr %7, ptr %8, align 8, !tbaa !320
  %9 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #9
  %10 = getelementptr inbounds [32 x ptr], ptr %3, i64 0, i64 %5
  store ptr %9, ptr %10, align 8, !tbaa !320
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %13, label %4, !prof !324, !llvm.loop !325

13:                                               ; preds = %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(936) %1, i8 0, i64 936, i1 false)
  store i32 37, ptr %1, align 8
  %14 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #10
  call void @df_ref_change_reg_with_loc(i32 noundef %14, i32 noundef 58, ptr noundef nonnull %1) #9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  store i32 58, ptr %15, align 8, !tbaa !327
  %16 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, -65536
  %19 = or disjoint i32 %18, 49
  store i32 %19, ptr %16, align 8
  %20 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !327
  %21 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %21, align 8, !tbaa !327
  %22 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, -65536
  %25 = or disjoint i32 %24, 51
  store i32 %25, ptr %22, align 8
  %26 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 4, i32 1
  store ptr %1, ptr %26, align 8, !tbaa !327
  %27 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -65536
  %30 = or disjoint i32 %29, 52
  store i32 %30, ptr %27, align 8
  %31 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 5, i32 1
  store ptr %1, ptr %31, align 8, !tbaa !327
  %32 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 5, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %32, align 8, !tbaa !327
  %33 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 7
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, -65536
  %36 = or disjoint i32 %35, 55
  store i32 %36, ptr %33, align 8
  %37 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 7, i32 1
  store ptr %1, ptr %37, align 8, !tbaa !327
  %38 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 7, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %38, align 8, !tbaa !327
  %39 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, -65536
  %42 = or disjoint i32 %41, 59
  store i32 %42, ptr %39, align 8
  %43 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 9, i32 1
  store ptr %1, ptr %43, align 8, !tbaa !327
  %44 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 9, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %44, align 8, !tbaa !327
  %45 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 12
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, -65536
  %48 = or disjoint i32 %47, 55
  store i32 %48, ptr %45, align 8
  %49 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 12, i32 1
  store ptr %1, ptr %49, align 8, !tbaa !327
  %50 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 32) #9
  %51 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 12, i32 1, i32 0, i32 0, i64 1
  store ptr %50, ptr %51, align 8, !tbaa !327
  %52 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 14
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, -65536
  %55 = or disjoint i32 %54, 58
  store i32 %55, ptr %52, align 8
  %56 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 14, i32 1
  store ptr %1, ptr %56, align 8, !tbaa !327
  %57 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 14, i32 1, i32 0, i32 0, i64 1
  store ptr %50, ptr %57, align 8, !tbaa !327
  %58 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 11
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, -65536
  %61 = or disjoint i32 %60, 99
  store i32 %61, ptr %58, align 8
  %62 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 11, i32 1
  store ptr %1, ptr %62, align 8, !tbaa !327
  %63 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 16
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, -65536
  %66 = or disjoint i32 %65, 52
  store i32 %66, ptr %63, align 8
  %67 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 16, i32 1
  store ptr %58, ptr %67, align 8, !tbaa !327
  %68 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 16, i32 1, i32 0, i32 0, i64 1
  store ptr %58, ptr %68, align 8, !tbaa !327
  %69 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 18
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, -65536
  %72 = or disjoint i32 %71, 68
  store i32 %72, ptr %69, align 8
  %73 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 18, i32 1
  store ptr %63, ptr %73, align 8, !tbaa !327
  %74 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 20
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, -65536
  %77 = or disjoint i32 %76, 100
  store i32 %77, ptr %74, align 8
  %78 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 20, i32 1
  store ptr %69, ptr %78, align 8, !tbaa !327
  %79 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 21
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, -65536
  %82 = or disjoint i32 %81, 65
  store i32 %82, ptr %79, align 8
  %83 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 21, i32 1
  store ptr %1, ptr %83, align 8, !tbaa !327
  %84 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 23
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, -65536
  %87 = or disjoint i32 %86, 52
  store i32 %87, ptr %84, align 8
  %88 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 23, i32 1
  store ptr %1, ptr %88, align 8, !tbaa !327
  %89 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 25
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, -65536
  %92 = or disjoint i32 %91, 49
  store i32 %92, ptr %89, align 8
  %93 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 25, i32 1
  store ptr %84, ptr %93, align 8, !tbaa !327
  %94 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 25, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %94, align 8, !tbaa !327
  %95 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 27
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, -65536
  %98 = or disjoint i32 %97, 50
  store i32 %98, ptr %95, align 8
  %99 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 27, i32 1
  store ptr %84, ptr %99, align 8, !tbaa !327
  %100 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 27, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %100, align 8, !tbaa !327
  %101 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 29
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, -65536
  %104 = or disjoint i32 %103, 50
  store i32 %104, ptr %101, align 8
  %105 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 29, i32 1
  store ptr %1, ptr %105, align 8, !tbaa !327
  %106 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 29, i32 1, i32 0, i32 0, i64 1
  store ptr %84, ptr %106, align 8, !tbaa !327
  %107 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %108 = icmp eq i8 %107, 0
  %109 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 18, i32 1, i32 0, i32 0, i64 1
  %110 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 21, i32 1, i32 0, i32 0, i64 1
  %111 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 23, i32 1, i32 0, i32 0, i64 1
  br label %112

112:                                              ; preds = %13, %246
  %113 = phi i1 [ true, %13 ], [ false, %246 ]
  %114 = phi i64 [ 0, %13 ], [ 1, %246 ]
  %115 = trunc i64 %114 to i8
  store i8 %115, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !328
  %116 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %117 = call i32 @rtx_cost(ptr noundef %116, i32 noundef 23, i8 noundef zeroext %115) #9
  %118 = getelementptr inbounds [2 x i32], ptr @zero_cost, i64 0, i64 %114
  store i32 %117, ptr %118, align 4, !tbaa !339
  br i1 %108, label %246, label %120, !prof !340

119:                                              ; preds = %230, %215
  br i1 %191, label %246, label %120, !prof !341, !llvm.loop !342

120:                                              ; preds = %112, %119
  %121 = phi i8 [ %190, %119 ], [ %107, %112 ]
  %122 = zext i8 %121 to i32
  %123 = load i32, ptr %1, align 8
  %124 = shl nuw nsw i32 %122, 16
  %125 = and i32 %123, -16711681
  %126 = or disjoint i32 %125, %124
  store i32 %126, ptr %1, align 8
  %127 = load i32, ptr %16, align 8
  %128 = and i32 %127, -16711681
  %129 = or disjoint i32 %128, %124
  store i32 %129, ptr %16, align 8
  %130 = load i32, ptr %22, align 8
  %131 = and i32 %130, -16711681
  %132 = or disjoint i32 %131, %124
  store i32 %132, ptr %22, align 8
  %133 = load i32, ptr %27, align 8
  %134 = and i32 %133, -16711681
  %135 = or disjoint i32 %134, %124
  store i32 %135, ptr %27, align 8
  %136 = load i32, ptr %33, align 8
  %137 = and i32 %136, -16711681
  %138 = or disjoint i32 %137, %124
  store i32 %138, ptr %33, align 8
  %139 = load i32, ptr %39, align 8
  %140 = and i32 %139, -16711681
  %141 = or disjoint i32 %140, %124
  store i32 %141, ptr %39, align 8
  %142 = load i32, ptr %45, align 8
  %143 = and i32 %142, -16711681
  %144 = or disjoint i32 %143, %124
  store i32 %144, ptr %45, align 8
  %145 = load i32, ptr %52, align 8
  %146 = and i32 %145, -16711681
  %147 = or disjoint i32 %146, %124
  store i32 %147, ptr %52, align 8
  %148 = load i32, ptr %74, align 8
  %149 = and i32 %148, -16711681
  %150 = or disjoint i32 %149, %124
  store i32 %150, ptr %74, align 8
  %151 = load i32, ptr %79, align 8
  %152 = and i32 %151, -16711681
  %153 = or disjoint i32 %152, %124
  store i32 %153, ptr %79, align 8
  %154 = load i32, ptr %84, align 8
  %155 = and i32 %154, -16711681
  %156 = or disjoint i32 %155, %124
  store i32 %156, ptr %84, align 8
  %157 = load i32, ptr %89, align 8
  %158 = and i32 %157, -16711681
  %159 = or disjoint i32 %158, %124
  store i32 %159, ptr %89, align 8
  %160 = load i32, ptr %95, align 8
  %161 = and i32 %160, -16711681
  %162 = or disjoint i32 %161, %124
  store i32 %162, ptr %95, align 8
  %163 = load i32, ptr %101, align 8
  %164 = and i32 %163, -16711681
  %165 = or disjoint i32 %164, %124
  store i32 %165, ptr %101, align 8
  %166 = call i32 @rtx_cost(ptr noundef nonnull %16, i32 noundef 23, i8 noundef zeroext %115) #9
  %167 = zext i8 %121 to i64
  %168 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %114, i64 %167
  store i32 %166, ptr %168, align 4, !tbaa !339
  %169 = call i32 @rtx_cost(ptr noundef nonnull %22, i32 noundef 23, i8 noundef zeroext %115) #9
  %170 = getelementptr inbounds [2 x [87 x i32]], ptr @neg_cost, i64 0, i64 %114, i64 %167
  store i32 %169, ptr %170, align 4, !tbaa !339
  %171 = call i32 @rtx_cost(ptr noundef nonnull %27, i32 noundef 23, i8 noundef zeroext %115) #9
  %172 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_cost, i64 0, i64 %114, i64 %167
  store i32 %171, ptr %172, align 4, !tbaa !339
  %173 = call i32 @rtx_cost(ptr noundef nonnull %33, i32 noundef 23, i8 noundef zeroext %115) #9
  %174 = getelementptr inbounds [2 x [87 x i32]], ptr @sdiv_cost, i64 0, i64 %114, i64 %167
  store i32 %173, ptr %174, align 4, !tbaa !339
  %175 = call i32 @rtx_cost(ptr noundef nonnull %39, i32 noundef 23, i8 noundef zeroext %115) #9
  %176 = getelementptr inbounds [2 x [87 x i32]], ptr @udiv_cost, i64 0, i64 %114, i64 %167
  store i32 %175, ptr %176, align 4, !tbaa !339
  %177 = call i32 @rtx_cost(ptr noundef nonnull %45, i32 noundef 23, i8 noundef zeroext %115) #9
  %178 = load i32, ptr %168, align 4, !tbaa !339
  %179 = shl nsw i32 %178, 1
  %180 = icmp sle i32 %177, %179
  %181 = zext i1 %180 to i8
  %182 = getelementptr inbounds [2 x [87 x i8]], ptr @sdiv_pow2_cheap, i64 0, i64 %114, i64 %167
  store i8 %181, ptr %182, align 1, !tbaa !327
  %183 = call i32 @rtx_cost(ptr noundef nonnull %52, i32 noundef 23, i8 noundef zeroext %115) #9
  %184 = load i32, ptr %168, align 4, !tbaa !339
  %185 = shl nsw i32 %184, 2
  %186 = icmp sle i32 %183, %185
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds [2 x [87 x i8]], ptr @smod_pow2_cheap, i64 0, i64 %114, i64 %167
  store i8 %187, ptr %188, align 1, !tbaa !327
  %189 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %167
  %190 = load i8, ptr %189, align 1, !tbaa !327
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %215, label %192, !prof !343

192:                                              ; preds = %120
  %193 = zext i8 %190 to i32
  %194 = load i32, ptr %58, align 8
  %195 = shl nuw nsw i32 %193, 16
  %196 = and i32 %194, -16711681
  %197 = or disjoint i32 %196, %195
  store i32 %197, ptr %58, align 8
  %198 = load i32, ptr %63, align 8
  %199 = and i32 %198, -16711681
  %200 = or disjoint i32 %199, %195
  store i32 %200, ptr %63, align 8
  %201 = load i32, ptr %69, align 8
  %202 = and i32 %201, -16711681
  %203 = or disjoint i32 %202, %195
  store i32 %203, ptr %69, align 8
  %204 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %167
  %205 = load i8, ptr %204, align 1, !tbaa !327
  %206 = zext i8 %205 to i64
  %207 = shl nuw nsw i64 %206, 3
  %208 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %207) #9
  store ptr %208, ptr %109, align 8, !tbaa !327
  %209 = call i32 @rtx_cost(ptr noundef nonnull %63, i32 noundef 23, i8 noundef zeroext %115) #9
  %210 = zext i8 %190 to i64
  %211 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_widen_cost, i64 0, i64 %114, i64 %210
  store i32 %209, ptr %211, align 4, !tbaa !339
  %212 = call i32 @rtx_cost(ptr noundef nonnull %74, i32 noundef 23, i8 noundef zeroext %115) #9
  %213 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_highpart_cost, i64 0, i64 %114, i64 %167
  store i32 %212, ptr %213, align 4, !tbaa !339
  %214 = load i32, ptr %168, align 4, !tbaa !339
  br label %215

215:                                              ; preds = %192, %120
  %216 = phi i32 [ %214, %192 ], [ %184, %120 ]
  %217 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %114, i64 %167
  store i32 0, ptr %217, align 16, !tbaa !339
  %218 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub1_cost, i64 0, i64 %114, i64 %167
  store i32 %216, ptr %218, align 16, !tbaa !339
  %219 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %114, i64 %167
  store i32 %216, ptr %219, align 16, !tbaa !339
  %220 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %114, i64 %167
  store i32 %216, ptr %220, align 16, !tbaa !339
  %221 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %167
  %222 = load i8, ptr %221, align 1, !tbaa !327
  %223 = icmp ugt i8 %222, 4
  %224 = zext i8 %222 to i32
  %225 = shl nuw nsw i32 %224, 3
  %226 = select i1 %223, i32 32, i32 %225, !prof !344
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %119, label %228, !prof !345

228:                                              ; preds = %215
  %229 = zext nneg i32 %226 to i64
  br label %230

230:                                              ; preds = %228, %230
  %231 = phi i64 [ 1, %228 ], [ %244, %230 ]
  %232 = getelementptr inbounds [32 x ptr], ptr %3, i64 0, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !320
  store ptr %233, ptr %110, align 8, !tbaa !327
  %234 = getelementptr inbounds [32 x ptr], ptr %2, i64 0, i64 %231
  %235 = load ptr, ptr %234, align 8, !tbaa !320
  store ptr %235, ptr %111, align 8, !tbaa !327
  %236 = call i32 @rtx_cost(ptr noundef nonnull %79, i32 noundef 23, i8 noundef zeroext %115) #9
  %237 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %114, i64 %167, i64 %231
  store i32 %236, ptr %237, align 4, !tbaa !339
  %238 = call i32 @rtx_cost(ptr noundef nonnull %89, i32 noundef 23, i8 noundef zeroext %115) #9
  %239 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %114, i64 %167, i64 %231
  store i32 %238, ptr %239, align 4, !tbaa !339
  %240 = call i32 @rtx_cost(ptr noundef nonnull %95, i32 noundef 23, i8 noundef zeroext %115) #9
  %241 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %114, i64 %167, i64 %231
  store i32 %240, ptr %241, align 4, !tbaa !339
  %242 = call i32 @rtx_cost(ptr noundef nonnull %101, i32 noundef 23, i8 noundef zeroext %115) #9
  %243 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub1_cost, i64 0, i64 %114, i64 %167, i64 %231
  store i32 %242, ptr %243, align 4, !tbaa !339
  %244 = add nuw nsw i64 %231, 1
  %245 = icmp eq i64 %244, %229
  br i1 %245, label %119, label %230, !prof !346, !llvm.loop !347

246:                                              ; preds = %119, %112
  br i1 %113, label %112, label %247, !prof !348, !llvm.loop !349

247:                                              ; preds = %246
  call void @default_rtl_profile() #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 936, ptr nonnull %1) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !319 !PGOFuncName !350 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !327
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @negate_rtx(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !351 {
  %3 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %0, ptr noundef %1, i32 noundef %0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !352

5:                                                ; preds = %2
  %6 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %1, ptr noundef null, i32 noundef 0) #9
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_unop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mode_for_extraction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !353 {
  %3 = icmp ult i32 %0, 3
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 334, ptr noundef nonnull @.str.1) #9
  br label %9

5:                                                ; preds = %2
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [3 x ptr], ptr @switch.table.mode_for_extraction, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi ptr [ undef, %4 ], [ %8, %5 ]
  %11 = icmp eq i32 %1, -1
  br i1 %11, label %23, label %12, !prof !354

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.insn_data, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !355
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 %15, i32 2
  %17 = load i16, ptr %16, align 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %21, !prof !357

19:                                               ; preds = %12
  %20 = load i32, ptr @word_mode, align 4, !tbaa !339
  br label %23

21:                                               ; preds = %12
  %22 = zext i16 %17 to i32
  br label %23

23:                                               ; preds = %9, %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ], [ 0, %9 ]
  ret i32 %24
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @store_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !358 {
  %6 = tail call fastcc zeroext i8 @store_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext 1) #10, !range !359
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !360

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 856, ptr noundef nonnull @.str.1) #9
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @store_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !prof !361 !PGOFuncName !362 {
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 43
  %10 = tail call i32 @mode_for_extraction(i32 noundef 0, i32 noundef 3) #10
  br label %11

11:                                               ; preds = %16, %6
  %12 = phi ptr [ %0, %6 ], [ %23, %16 ]
  %13 = phi i64 [ %2, %6 ], [ %22, %16 ]
  %14 = load i32, ptr %12, align 8
  %15 = trunc i32 %14 to i16
  switch i16 %15, label %33 [
    i16 39, label %16
    i16 37, label %24
  ], !prof !363

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load i32, ptr %18, align 8, !tbaa !327
  %20 = shl nsw i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = add i64 %13, %21
  %23 = load ptr, ptr %17, align 8, !tbaa !327
  br label %11, !llvm.loop !364

24:                                               ; preds = %11
  %25 = lshr i32 %14, 16
  %26 = and i32 %25, 255
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !327
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 3
  %32 = icmp ult i64 %13, %31
  br i1 %32, label %37, label %545, !prof !365

33:                                               ; preds = %11
  %34 = lshr i32 %14, 16
  %35 = and i32 %34, 255
  %36 = zext nneg i32 %35 to i64
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i64 [ %36, %33 ], [ %27, %24 ]
  %39 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !327
  %41 = add i8 %40, -12
  %42 = icmp ult i8 %41, 6
  br i1 %42, label %43, label %119, !prof !366

43:                                               ; preds = %37
  %44 = and i32 %14, 65535
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %119, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 %38
  %48 = load i32, ptr %47, align 4, !tbaa !367
  %49 = icmp eq i32 %48, 2956
  br i1 %49, label %119, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %52 = load i8, ptr %51, align 1, !tbaa !327
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, %3
  br i1 %54, label %55, label %119

55:                                               ; preds = %50
  %56 = zext i8 %52 to i64
  %57 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !327
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 3
  %61 = icmp eq i64 %60, %1
  br i1 %61, label %62, label %119

62:                                               ; preds = %55
  %63 = urem i64 %13, %1
  %64 = udiv i64 %13, %1
  %65 = icmp eq i64 %63, 0
  br i1 %65, label %66, label %119

66:                                               ; preds = %62
  %67 = shl i64 %64, 32
  %68 = ashr exact i64 %67, 32
  %69 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %68) #9
  %70 = sext i32 %48 to i64
  %71 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %70, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !355
  %73 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 0, i32 2
  %74 = load i16, ptr %73, align 8
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 1, i32 2
  %77 = load i16, ptr %76, align 8
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 2, i32 2
  %80 = load i16, ptr %79, align 8
  %81 = zext i16 %80 to i32
  tail call void @start_sequence() #9
  %82 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !369
  %84 = tail call i32 %83(ptr noundef %4, i32 noundef %78) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %66
  %87 = tail call ptr @copy_to_mode_reg(i32 noundef %78, ptr noundef %4) #9
  br label %88

88:                                               ; preds = %86, %66
  %89 = phi ptr [ %4, %66 ], [ %87, %86 ]
  %90 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !369
  %92 = tail call i32 %91(ptr noundef %69, i32 noundef %81) #9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = tail call ptr @copy_to_mode_reg(i32 noundef %78, ptr noundef %69) #9
  br label %96

96:                                               ; preds = %94, %88
  %97 = phi ptr [ %69, %88 ], [ %95, %94 ]
  %98 = load ptr, ptr %72, align 8, !tbaa !369
  %99 = tail call i32 %98(ptr noundef nonnull %12, i32 noundef %75) #9
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr %82, align 8, !tbaa !369
  %103 = tail call i32 %102(ptr noundef %89, i32 noundef %78) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %90, align 8, !tbaa !369
  %107 = tail call i32 %106(ptr noundef %97, i32 noundef %81) #9
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %101, %96
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 453, ptr noundef nonnull @.str.1) #9
  br label %110

110:                                              ; preds = %105, %109
  %111 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %70, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !371
  %113 = tail call ptr (ptr, ...) %112(ptr noundef nonnull %12, ptr noundef %89, ptr noundef %97) #9
  %114 = tail call ptr @get_insns() #9
  tail call void @end_sequence() #9
  %115 = icmp eq ptr %113, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = tail call ptr @emit_insn(ptr noundef %114) #9
  %118 = tail call ptr @emit_insn(ptr noundef nonnull %113) #9
  br label %545

119:                                              ; preds = %110, %37, %62, %55, %50, %46, %43
  %120 = select i1 %9, i64 3, i64 5
  %121 = lshr i64 %13, %120
  %122 = select i1 %9, i64 7, i64 31
  %123 = and i64 %13, %122
  %124 = lshr i64 %13, 3
  %125 = and i64 %124, 3
  %126 = shl nuw nsw i64 %121, 2
  %127 = or disjoint i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i64 %123, 0
  br i1 %129, label %132, label %130, !prof !372

130:                                              ; preds = %119
  %131 = load i32, ptr %12, align 8
  br label %167

132:                                              ; preds = %119
  %133 = zext i32 %3 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !327
  %136 = zext i8 %135 to i64
  %137 = shl nuw nsw i64 %136, 3
  %138 = icmp eq i64 %137, %1
  %139 = load i32, ptr %12, align 8
  br i1 %138, label %140, label %167, !prof !373

140:                                              ; preds = %132
  %141 = and i32 %139, 65535
  %142 = icmp eq i32 %141, 43
  br i1 %142, label %156, label %143, !prof !374

143:                                              ; preds = %140
  %144 = icmp ugt i8 %135, 3
  br i1 %144, label %152, label %145, !prof !374

145:                                              ; preds = %143
  %146 = lshr i32 %139, 16
  %147 = and i32 %146, 255
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !327
  %151 = icmp eq i8 %150, %135
  br i1 %151, label %152, label %167

152:                                              ; preds = %145, %143
  %153 = zext i8 %135 to i32
  %154 = srem i32 %128, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %167, !prof !375

156:                                              ; preds = %140
  %157 = tail call ptr @adjust_address_1(ptr noundef nonnull %12, i32 noundef %3, i64 noundef %121, i32 noundef 1, i32 noundef 1) #9
  br label %164

158:                                              ; preds = %152
  %159 = lshr i32 %139, 16
  %160 = and i32 %159, 255
  %161 = icmp eq i32 %160, %3
  br i1 %161, label %164, label %162, !prof !376

162:                                              ; preds = %158
  %163 = tail call ptr @simplify_gen_subreg(i32 noundef %3, ptr noundef nonnull %12, i32 noundef %160, i32 noundef %128) #9
  br label %164

164:                                              ; preds = %158, %162, %156
  %165 = phi ptr [ %157, %156 ], [ %163, %162 ], [ %12, %158 ]
  %166 = tail call ptr @emit_move_insn(ptr noundef %165, ptr noundef %4) #9
  br label %545

167:                                              ; preds = %130, %152, %145, %132
  %168 = phi i32 [ %131, %130 ], [ %139, %152 ], [ %139, %145 ], [ %139, %132 ]
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 255
  %171 = tail call i32 @int_mode_for_mode(i32 noundef %170) #9
  %172 = load i32, ptr %12, align 8
  %173 = lshr i32 %172, 16
  %174 = and i32 %173, 255
  %175 = icmp eq i32 %171, %174
  br i1 %175, label %187, label %176, !prof !377

176:                                              ; preds = %167
  %177 = and i32 %172, 65535
  %178 = icmp eq i32 %177, 43
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = tail call ptr @adjust_address_1(ptr noundef nonnull %12, i32 noundef %171, i64 noundef 0, i32 noundef 1, i32 noundef 1) #9
  br label %187

181:                                              ; preds = %176
  %182 = icmp eq i32 %171, 1
  br i1 %182, label %183, label %184

183:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 508, ptr noundef nonnull @.str.1) #9
  br label %184

184:                                              ; preds = %181, %183
  %185 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %186 = tail call ptr %185(i32 noundef %171, ptr noundef nonnull %12) #9
  br label %187

187:                                              ; preds = %179, %184, %167
  %188 = phi ptr [ %180, %179 ], [ %186, %184 ], [ %12, %167 ]
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 43
  br i1 %191, label %192, label %196, !prof !380

192:                                              ; preds = %187
  %193 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %188) #9
  tail call void @set_mem_alias_set(ptr noundef %193, i32 noundef 0) #9
  tail call void @set_mem_expr(ptr noundef %193, ptr noundef null) #9
  %194 = load i32, ptr %193, align 8
  %195 = and i32 %194, 65535
  br label %196

196:                                              ; preds = %192, %187
  %197 = phi i32 [ %195, %192 ], [ %190, %187 ]
  %198 = phi ptr [ %193, %192 ], [ %188, %187 ]
  %199 = icmp ne i32 %197, 43
  %200 = and i1 %129, %199
  br i1 %200, label %201, label %262, !prof !381

201:                                              ; preds = %196
  %202 = zext i32 %3 to i64
  %203 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !327
  %205 = zext i8 %204 to i64
  %206 = shl nuw nsw i64 %205, 3
  %207 = icmp eq i64 %206, %1
  br i1 %207, label %208, label %262, !prof !382

208:                                              ; preds = %201
  %209 = sext i32 %3 to i64
  %210 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 61, i32 4, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !367
  %212 = icmp eq i32 %211, 2956
  br i1 %212, label %262, label %213

213:                                              ; preds = %208
  %214 = tail call ptr @get_last_insn() #9
  %215 = load i32, ptr %4, align 8
  %216 = trunc i32 %215 to i16
  switch i16 %216, label %220 [
    i16 30, label %217
    i16 37, label %217
    i16 45, label %222
    i16 44, label %222
    i16 35, label %222
  ]

217:                                              ; preds = %213, %213
  %218 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %219 = tail call ptr %218(i32 noundef %3, ptr noundef nonnull %4) #9
  br label %222

220:                                              ; preds = %213
  %221 = tail call ptr @convert_to_mode(i32 noundef %3, ptr noundef nonnull %4, i32 noundef 0) #9
  br label %222

222:                                              ; preds = %213, %213, %213, %220, %217
  %223 = phi ptr [ %219, %217 ], [ %221, %220 ], [ %4, %213 ], [ %4, %213 ], [ %4, %213 ]
  %224 = sext i32 %211 to i64
  %225 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %224, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !355
  %227 = getelementptr inbounds %struct.insn_operand_data, ptr %226, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !369
  %229 = tail call i32 %228(ptr noundef %223, i32 noundef %3) #9
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %222
  %232 = tail call ptr @copy_to_mode_reg(i32 noundef %3, ptr noundef %223) #9
  br label %233

233:                                              ; preds = %231, %222
  %234 = phi ptr [ %223, %222 ], [ %232, %231 ]
  %235 = load i32, ptr %198, align 8
  %236 = and i32 %235, 65535
  %237 = icmp eq i32 %236, 39
  br i1 %237, label %238, label %252

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !327
  %241 = load i32, ptr %240, align 8
  %242 = lshr i32 %241, 16
  %243 = and i32 %242, 255
  %244 = icmp eq i32 %243, %3
  br i1 %244, label %252, label %245

245:                                              ; preds = %238
  %246 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %202
  %247 = load i8, ptr %246, align 1, !tbaa !327
  %248 = and i8 %247, -2
  %249 = icmp eq i8 %248, 2
  br i1 %249, label %252, label %250

250:                                              ; preds = %245
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 563, ptr noundef nonnull @.str.1) #9
  %251 = load ptr, ptr %239, align 8, !tbaa !327
  br label %252

252:                                              ; preds = %250, %238, %245, %233
  %253 = phi ptr [ %198, %233 ], [ %240, %245 ], [ %240, %238 ], [ %251, %250 ]
  %254 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %224, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !371
  %256 = tail call ptr @gen_rtx_SUBREG(i32 noundef %3, ptr noundef %253, i32 noundef %128) #9
  %257 = tail call ptr (ptr, ...) %255(ptr noundef %256, ptr noundef %234) #9
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %252
  tail call void @delete_insns_since(ptr noundef %214) #9
  br label %262

260:                                              ; preds = %252
  %261 = tail call ptr @emit_insn(ptr noundef nonnull %257) #9
  br label %545

262:                                              ; preds = %259, %208, %201, %196
  %263 = phi ptr [ %4, %208 ], [ %4, %201 ], [ %4, %196 ], [ %234, %259 ]
  %264 = icmp ugt i64 %1, 32
  br i1 %264, label %265, label %298, !prof !383

265:                                              ; preds = %262
  %266 = add i64 %1, 31
  %267 = lshr i64 %266, 5
  %268 = trunc i64 %267 to i32
  %269 = load i32, ptr %263, align 8
  %270 = lshr i32 %269, 16
  %271 = and i32 %270, 255
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %265
  %274 = shl i32 %268, 5
  %275 = tail call i32 @smallest_mode_for_size(i32 noundef %274, i32 noundef 2) #9
  br label %276

276:                                              ; preds = %273, %265
  %277 = phi i32 [ %275, %273 ], [ %271, %265 ]
  %278 = tail call ptr @get_last_insn() #9
  %279 = icmp eq i32 %268, 0
  br i1 %279, label %545, label %280

280:                                              ; preds = %276
  %281 = and i64 %267, 4294967295
  br label %285

282:                                              ; preds = %285
  %283 = add nuw nsw i64 %286, 1
  %284 = icmp eq i64 %283, %281
  br i1 %284, label %545, label %285, !llvm.loop !384

285:                                              ; preds = %280, %282
  %286 = phi i64 [ 0, %280 ], [ %283, %282 ]
  %287 = trunc i64 %286 to i32
  %288 = shl i64 %286, 5
  %289 = tail call ptr @operand_subword_force(ptr noundef nonnull %263, i32 noundef %287, i32 noundef %277) #9
  %290 = and i64 %288, 4294967264
  %291 = sub i64 %1, %290
  %292 = tail call i64 @llvm.umin.i64(i64 %291, i64 32)
  %293 = add i64 %13, %290
  %294 = load i32, ptr @word_mode, align 4, !tbaa !339
  %295 = tail call fastcc zeroext i8 @store_bit_field_1(ptr noundef nonnull %198, i64 noundef %292, i64 noundef %293, i32 noundef %294, ptr noundef %289, i8 noundef zeroext %5) #10, !range !359
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %297, label %282

297:                                              ; preds = %285
  tail call void @delete_insns_since(ptr noundef %278) #9
  br label %545

298:                                              ; preds = %262
  %299 = load i32, ptr %198, align 8
  %300 = and i32 %299, 65535
  %301 = icmp eq i32 %300, 43
  br i1 %301, label %336, label %302, !prof !380

302:                                              ; preds = %298
  %303 = icmp eq i64 %121, 0
  br i1 %303, label %304, label %311, !prof !385

304:                                              ; preds = %302
  %305 = lshr i32 %299, 16
  %306 = and i32 %305, 255
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %307
  %309 = load i8, ptr %308, align 1, !tbaa !327
  %310 = icmp ugt i8 %309, 4
  br i1 %310, label %311, label %336, !prof !386

311:                                              ; preds = %304, %302
  %312 = trunc i32 %299 to i16
  switch i16 %312, label %328 [
    i16 37, label %331
    i16 39, label %313
  ]

313:                                              ; preds = %311
  %314 = lshr i32 %299, 16
  %315 = and i32 %314, 255
  %316 = zext nneg i32 %315 to i64
  %317 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !327
  %319 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !327
  %321 = load i32, ptr %320, align 8
  %322 = lshr i32 %321, 16
  %323 = and i32 %322, 255
  %324 = zext nneg i32 %323 to i64
  %325 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !327
  %327 = icmp eq i8 %318, %326
  br i1 %327, label %331, label %328

328:                                              ; preds = %311, %313
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 648, ptr noundef nonnull @.str.1) #9
  %329 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !327
  br label %331

331:                                              ; preds = %328, %313, %311
  %332 = phi ptr [ %198, %311 ], [ %320, %313 ], [ %330, %328 ]
  %333 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 0) #9
  %334 = trunc i64 %126 to i32
  %335 = tail call ptr @gen_rtx_SUBREG(i32 noundef %333, ptr noundef %332, i32 noundef %334) #9
  br label %336

336:                                              ; preds = %304, %331, %298
  %337 = phi ptr [ %198, %298 ], [ %335, %331 ], [ %198, %304 ]
  %338 = phi i64 [ %121, %298 ], [ 0, %331 ], [ 0, %304 ]
  %339 = load i32, ptr %263, align 8
  %340 = lshr i32 %339, 16
  %341 = and i32 %340, 255
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %359, label %343, !prof !387

343:                                              ; preds = %336
  %344 = zext nneg i32 %341 to i64
  %345 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !327
  %347 = and i8 %346, -2
  %348 = icmp eq i8 %347, 2
  br i1 %348, label %359, label %349, !prof !388

349:                                              ; preds = %343
  %350 = tail call i32 @int_mode_for_mode(i32 noundef %341) #9
  %351 = tail call ptr @gen_reg_rtx(i32 noundef %350) #9
  %352 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %353 = load i32, ptr %263, align 8
  %354 = lshr i32 %353, 16
  %355 = and i32 %354, 255
  %356 = tail call ptr %352(i32 noundef %355, ptr noundef %351) #9
  %357 = tail call ptr @emit_move_insn(ptr noundef %356, ptr noundef nonnull %263) #9
  %358 = load i32, ptr %351, align 8
  br label %359

359:                                              ; preds = %343, %349, %336
  %360 = phi i32 [ %358, %349 ], [ %339, %336 ], [ %339, %343 ]
  %361 = phi ptr [ %351, %349 ], [ %263, %336 ], [ %263, %343 ]
  %362 = and i32 %360, 16711680
  %363 = icmp ne i32 %362, 65536
  %364 = icmp ne i64 %1, 0
  %365 = and i1 %364, %363
  br i1 %365, label %366, label %482, !prof !389

366:                                              ; preds = %359
  %367 = zext i32 %10 to i64
  %368 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !327
  %370 = zext i8 %369 to i64
  %371 = shl nuw nsw i64 %370, 3
  %372 = icmp ult i64 %371, %1
  br i1 %372, label %482, label %373, !prof !383

373:                                              ; preds = %366
  %374 = load i32, ptr %337, align 8
  %375 = trunc i32 %374 to i16
  switch i16 %375, label %379 [
    i16 37, label %376
    i16 39, label %376
  ], !prof !390

376:                                              ; preds = %373, %373
  %377 = add nuw nsw i64 %123, %1
  %378 = icmp ugt i64 %377, %371
  br i1 %378, label %482, label %379, !prof !386

379:                                              ; preds = %373, %376
  %380 = load ptr, ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2181, i32 3), align 8, !tbaa !355
  %381 = getelementptr inbounds %struct.insn_operand_data, ptr %380, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !369
  %383 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1) #9
  %384 = tail call i32 %382(ptr noundef %383, i32 noundef 0) #9
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %482, label %386, !prof !377

386:                                              ; preds = %379
  %387 = tail call fastcc zeroext i8 @check_predicate_volatile_ok(i32 noundef 2181, i32 noundef 0, ptr noundef nonnull %337, i32 noundef 0) #10
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %482, label %389

389:                                              ; preds = %386
  %390 = tail call ptr @get_last_insn() #9
  %391 = load i32, ptr %337, align 8
  %392 = and i32 %391, 65535
  %393 = icmp eq i32 %392, 43
  br i1 %393, label %394, label %398

394:                                              ; preds = %389
  %395 = load i32, ptr @byte_mode, align 4, !tbaa !339
  %396 = tail call ptr @adjust_address_1(ptr noundef nonnull %337, i32 noundef %395, i64 noundef %338, i32 noundef 1, i32 noundef 1) #9
  %397 = load i32, ptr %396, align 8
  br label %398

398:                                              ; preds = %394, %389
  %399 = phi i32 [ %397, %394 ], [ %391, %389 ]
  %400 = phi ptr [ %396, %394 ], [ %337, %389 ]
  %401 = and i32 %399, 65535
  %402 = icmp eq i32 %401, 39
  br i1 %402, label %403, label %410

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.rtx_def, ptr %400, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !327
  %406 = getelementptr inbounds %struct.rtx_def, ptr %400, i64 0, i32 1, i32 0, i32 0, i64 1
  %407 = load i32, ptr %406, align 8, !tbaa !327
  %408 = tail call ptr @gen_rtx_SUBREG(i32 noundef %10, ptr noundef %405, i32 noundef %407) #9
  %409 = load i32, ptr %408, align 8
  br label %410

410:                                              ; preds = %403, %398
  %411 = phi i32 [ %409, %403 ], [ %399, %398 ]
  %412 = phi ptr [ %408, %403 ], [ %400, %398 ]
  %413 = and i32 %411, 65535
  %414 = icmp eq i32 %413, 37
  br i1 %414, label %415, label %421

415:                                              ; preds = %410
  %416 = lshr i32 %411, 16
  %417 = and i32 %416, 255
  %418 = icmp eq i32 %417, %10
  br i1 %418, label %421, label %419

419:                                              ; preds = %415
  %420 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %10, ptr noundef nonnull %412) #9
  br label %421

421:                                              ; preds = %419, %415, %410
  %422 = phi ptr [ %420, %419 ], [ %412, %415 ], [ %412, %410 ]
  %423 = load i8, ptr %368, align 1, !tbaa !327
  %424 = load i32, ptr %361, align 8
  %425 = lshr i32 %424, 16
  %426 = and i32 %425, 255
  %427 = icmp eq i32 %426, %10
  br i1 %427, label %465, label %428

428:                                              ; preds = %421
  %429 = zext nneg i32 %426 to i64
  %430 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %429
  %431 = load i8, ptr %430, align 1, !tbaa !327
  %432 = zext i8 %431 to i64
  %433 = shl nuw nsw i64 %432, 3
  %434 = icmp ult i64 %433, %1
  br i1 %434, label %452, label %435

435:                                              ; preds = %428
  %436 = icmp ult i8 %431, %423
  br i1 %436, label %437, label %449

437:                                              ; preds = %435
  %438 = tail call ptr @simplify_subreg(i32 noundef %10, ptr noundef nonnull %361, i32 noundef %426, i32 noundef 0) #9
  %439 = icmp eq ptr %438, null
  br i1 %439, label %440, label %465

440:                                              ; preds = %437
  %441 = load i32, ptr %361, align 8
  %442 = lshr i32 %441, 16
  %443 = and i32 %442, 255
  %444 = tail call ptr @force_reg(i32 noundef %443, ptr noundef nonnull %361) #9
  %445 = load i32, ptr %361, align 8
  %446 = lshr i32 %445, 16
  %447 = and i32 %446, 255
  %448 = tail call ptr @simplify_gen_subreg(i32 noundef %10, ptr noundef %444, i32 noundef %447, i32 noundef 0) #9
  br label %465

449:                                              ; preds = %435
  %450 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %451 = tail call ptr %450(i32 noundef %10, ptr noundef nonnull %361) #9
  br label %465

452:                                              ; preds = %428
  %453 = and i32 %424, 65535
  %454 = icmp eq i32 %453, 30
  br i1 %454, label %455, label %459

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 0, i32 1
  %457 = load i64, ptr %456, align 8, !tbaa !327
  %458 = tail call ptr @gen_int_mode(i64 noundef %457, i32 noundef %10) #9
  br label %465

459:                                              ; preds = %452
  %460 = zext nneg i32 %453 to i64
  %461 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !339
  %463 = icmp eq i32 %462, 9
  br i1 %463, label %465, label %464

464:                                              ; preds = %459
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 765, ptr noundef nonnull @.str.1) #9
  br label %465

465:                                              ; preds = %437, %440, %464, %459, %449, %455, %421
  %466 = phi ptr [ %451, %449 ], [ %458, %455 ], [ %361, %459 ], [ %361, %464 ], [ %361, %421 ], [ %438, %437 ], [ %448, %440 ]
  %467 = getelementptr inbounds %struct.insn_operand_data, ptr %380, i64 3
  %468 = load ptr, ptr %467, align 8, !tbaa !369
  %469 = tail call i32 %468(ptr noundef %466, i32 noundef %10) #9
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %465
  %472 = tail call ptr @force_reg(i32 noundef %10, ptr noundef %466) #9
  br label %473

473:                                              ; preds = %471, %465
  %474 = phi ptr [ %466, %465 ], [ %472, %471 ]
  %475 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1) #9
  %476 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %123) #9
  %477 = tail call ptr @gen_insv(ptr noundef %422, ptr noundef %475, ptr noundef %476, ptr noundef %474) #9
  %478 = icmp eq ptr %477, null
  br i1 %478, label %479, label %480

479:                                              ; preds = %473
  tail call void @delete_insns_since(ptr noundef %390) #9
  br label %482

480:                                              ; preds = %473
  %481 = tail call ptr @emit_insn(ptr noundef nonnull %477) #9
  br label %545

482:                                              ; preds = %479, %386, %379, %376, %366, %359
  %483 = load i32, ptr %337, align 8
  %484 = and i32 %483, 65535
  %485 = icmp eq i32 %484, 43
  br i1 %485, label %486, label %542, !prof !380

486:                                              ; preds = %482
  %487 = lshr i32 %483, 16
  %488 = and i32 %487, 255
  %489 = icmp eq i32 %488, 1
  br i1 %489, label %500, label %490, !prof !391

490:                                              ; preds = %486
  %491 = icmp eq i32 %10, 87
  br i1 %491, label %516, label %492, !prof !392

492:                                              ; preds = %490
  %493 = zext nneg i32 %488 to i64
  %494 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !327
  %496 = zext i32 %10 to i64
  %497 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !327
  %499 = icmp ugt i8 %495, %498
  br i1 %499, label %500, label %516, !prof !393

500:                                              ; preds = %492, %486
  %501 = trunc i64 %1 to i32
  %502 = trunc i64 %13 to i32
  %503 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1, i32 0, i32 0, i64 1
  %504 = load ptr, ptr %503, align 8, !tbaa !327
  %505 = icmp eq ptr %504, null
  br i1 %505, label %509, label %506, !prof !394

506:                                              ; preds = %500
  %507 = getelementptr inbounds %struct.mem_attrs, ptr %504, i64 0, i32 4
  %508 = load i32, ptr %507, align 4, !tbaa !395
  br label %509

509:                                              ; preds = %500, %506
  %510 = phi i32 [ %508, %506 ], [ 8, %500 ]
  %511 = icmp eq i32 %10, 87
  %512 = select i1 %511, i32 0, i32 %10, !prof !394
  %513 = lshr i32 %483, 27
  %514 = and i32 %513, 1
  %515 = tail call i32 @get_best_mode(i32 noundef %501, i32 noundef %502, i32 noundef %510, i32 noundef %512, i32 noundef %514) #9
  br label %516

516:                                              ; preds = %490, %492, %509
  %517 = phi i32 [ %515, %509 ], [ %488, %492 ], [ %488, %490 ]
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %542, label %519, !prof !386

519:                                              ; preds = %516
  %520 = zext i32 %517 to i64
  %521 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !327
  %523 = zext i32 %3 to i64
  %524 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !327
  %526 = icmp ult i8 %522, %525
  br i1 %526, label %542, label %527, !prof !386

527:                                              ; preds = %519
  %528 = tail call ptr @get_last_insn() #9
  %529 = load i8, ptr %521, align 1, !tbaa !327
  %530 = zext i8 %529 to i64
  %531 = shl nuw nsw i64 %530, 3
  %532 = udiv i64 %13, %531
  %533 = mul i64 %532, %530
  %534 = urem i64 %13, %531
  %535 = tail call ptr @adjust_address_1(ptr noundef nonnull %337, i32 noundef %517, i64 noundef %533, i32 noundef 1, i32 noundef 1) #9
  %536 = tail call ptr @copy_to_reg(ptr noundef %535) #9
  %537 = tail call fastcc zeroext i8 @store_bit_field_1(ptr noundef %536, i64 noundef %1, i64 noundef %534, i32 noundef %3, ptr noundef nonnull %263, i8 noundef zeroext 0) #10, !range !359
  %538 = icmp eq i8 %537, 0
  br i1 %538, label %539, label %540, !prof !385

539:                                              ; preds = %527
  tail call void @delete_insns_since(ptr noundef %528) #9
  br label %542

540:                                              ; preds = %527
  %541 = tail call ptr @emit_move_insn(ptr noundef %535, ptr noundef %536) #9
  br label %545

542:                                              ; preds = %539, %516, %519, %482
  %543 = icmp eq i8 %5, 0
  br i1 %543, label %545, label %544, !prof !380

544:                                              ; preds = %542
  tail call fastcc void @store_fixed_bit_field(ptr noundef nonnull %337, i64 noundef %338, i64 noundef %1, i64 noundef %123, ptr noundef nonnull %361) #10
  br label %545

545:                                              ; preds = %282, %276, %540, %480, %297, %260, %116, %542, %24, %544, %164
  %546 = phi i8 [ 1, %164 ], [ 1, %544 ], [ 1, %480 ], [ 1, %260 ], [ 1, %116 ], [ 1, %24 ], [ 1, %540 ], [ 0, %542 ], [ 0, %297 ], [ 1, %276 ], [ 1, %282 ]
  ret i8 %546
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_to_mode_reg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @int_mode_for_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_insns_since(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @operand_subword_force(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @check_predicate_volatile_ok(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !397 !PGOFuncName !398 {
  %5 = load i32, ptr @volatile_ok, align 4, !tbaa !339
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %6, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !355
  %9 = zext nneg i32 %1 to i64
  %10 = getelementptr inbounds %struct.insn_operand_data, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !369
  %12 = tail call i32 %11(ptr noundef %2, i32 noundef %3) #9
  %13 = trunc i32 %12 to i8
  %14 = and i32 %5, 255
  store i32 %14, ptr @volatile_ok, align 4, !tbaa !339
  ret i8 %13
}

; Function Attrs: optsize
declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_insv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_best_mode(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_fixed_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !399 !PGOFuncName !400 {
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %15 [
    i16 37, label %8
    i16 39, label %8
  ], !prof !401

8:                                                ; preds = %5, %5
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 888, ptr noundef nonnull @.str.1) #9
  br label %11

11:                                               ; preds = %8, %10
  %12 = add i64 %3, %2
  %13 = icmp ugt i64 %12, 32
  br i1 %13, label %14, label %69

14:                                               ; preds = %11
  tail call fastcc void @store_split_bit_field(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %3, ptr noundef %4) #10
  br label %162

15:                                               ; preds = %5
  %16 = lshr i32 %6, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !327
  %21 = icmp eq i8 %20, 0
  %22 = load i32, ptr @word_mode, align 4, !tbaa !339
  br i1 %21, label %28, label %23, !prof !391

23:                                               ; preds = %15
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !327
  %27 = icmp ugt i8 %20, %26
  br i1 %27, label %28, label %29, !prof !393

28:                                               ; preds = %23, %15
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i32 [ %22, %28 ], [ %17, %23 ]
  %31 = trunc i64 %2 to i32
  %32 = shl nuw i64 %1, 3
  %33 = add i64 %32, %3
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !327
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38, !prof !386

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.mem_attrs, ptr %36, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !395
  br label %41

41:                                               ; preds = %29, %38
  %42 = phi i32 [ %40, %38 ], [ 8, %29 ]
  %43 = lshr i32 %6, 27
  %44 = and i32 %43, 1
  %45 = tail call i32 @get_best_mode(i32 noundef %31, i32 noundef %34, i32 noundef %42, i32 noundef %30, i32 noundef %44) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48, !prof !386

47:                                               ; preds = %41
  tail call fastcc void @store_split_bit_field(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %33, ptr noundef %4) #10
  br label %162

48:                                               ; preds = %41
  %49 = zext i32 %45 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !327
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 3
  %54 = icmp ugt i64 %53, %3
  br i1 %54, label %61, label %55, !prof !385

55:                                               ; preds = %48
  %56 = udiv i64 %3, %53
  %57 = mul nuw nsw i64 %56, %52
  %58 = add nuw nsw i64 %57, %1
  %59 = shl nuw nsw i64 %57, 3
  %60 = sub nsw i64 %3, %59
  br label %61

61:                                               ; preds = %55, %48
  %62 = phi i64 [ %58, %55 ], [ %1, %48 ]
  %63 = phi i64 [ %60, %55 ], [ %3, %48 ]
  %64 = urem i64 %62, %52
  %65 = shl nuw nsw i64 %64, 3
  %66 = add nsw i64 %65, %63
  %67 = sub i64 %62, %64
  %68 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %45, i64 noundef %67, i32 noundef 1, i32 noundef 1) #9
  br label %69

69:                                               ; preds = %11, %61
  %70 = phi i64 [ %3, %11 ], [ %66, %61 ]
  %71 = phi ptr [ %0, %11 ], [ %68, %61 ]
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = load i32, ptr %4, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 30
  br i1 %77, label %78, label %96, !prof !402

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !327
  %81 = icmp ult i64 %2, 64
  %82 = shl nsw i64 -1, %2
  %83 = xor i64 %82, -1
  %84 = select i1 %81, i64 %83, i64 -1, !prof !403
  %85 = and i64 %80, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %135, !prof !404

87:                                               ; preds = %78
  br i1 %81, label %88, label %91, !prof !405

88:                                               ; preds = %87
  %89 = or i64 %80, %82
  %90 = icmp eq i64 %89, -1
  br i1 %90, label %95, label %135, !prof !406

91:                                               ; preds = %87
  %92 = icmp eq i64 %2, 64
  %93 = icmp eq i64 %80, -1
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %135, !prof !407

95:                                               ; preds = %91, %88
  br label %135

96:                                               ; preds = %69
  %97 = lshr i32 %75, 16
  %98 = and i32 %97, 255
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !327
  %102 = zext i8 %101 to i64
  %103 = shl nuw nsw i64 %102, 3
  %104 = icmp eq i64 %103, %2
  br i1 %104, label %113, label %105, !prof !408

105:                                              ; preds = %96
  %106 = add i64 %70, %2
  %107 = zext nneg i32 %74 to i64
  %108 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !327
  %110 = zext i8 %109 to i64
  %111 = shl nuw nsw i64 %110, 3
  %112 = icmp ne i64 %106, %111
  br label %113

113:                                              ; preds = %105, %96
  %114 = phi i1 [ false, %96 ], [ %112, %105 ]
  %115 = icmp eq i32 %98, %74
  br i1 %115, label %118, label %116, !prof !409

116:                                              ; preds = %113
  %117 = tail call ptr @convert_to_mode(i32 noundef %74, ptr noundef nonnull %4, i32 noundef 1) #9
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi ptr [ %117, %116 ], [ %4, %113 ]
  br i1 %114, label %120, label %124, !prof !410

120:                                              ; preds = %118
  %121 = trunc i64 %2 to i32
  %122 = tail call fastcc ptr @mask_rtx(i32 noundef %74, i32 noundef 0, i32 noundef %121, i32 noundef 0) #10
  %123 = tail call ptr @expand_binop(i32 noundef %74, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %119, ptr noundef %122, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  br label %124

124:                                              ; preds = %120, %118
  %125 = phi ptr [ %123, %120 ], [ %119, %118 ]
  %126 = icmp eq i64 %70, 0
  br i1 %126, label %130, label %127, !prof !411

127:                                              ; preds = %124
  %128 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %70) #9
  %129 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %74, ptr noundef %125, ptr noundef %128, ptr noundef null, i32 noundef 1) #10
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi ptr [ %125, %124 ], [ %129, %127 ]
  %132 = tail call ptr @force_reg(i32 noundef %74, ptr noundef nonnull %71) #9
  %133 = trunc i64 %70 to i32
  %134 = trunc i64 %2 to i32
  br label %141

135:                                              ; preds = %88, %95, %91, %78
  %136 = phi i1 [ false, %95 ], [ true, %91 ], [ true, %78 ], [ true, %88 ]
  %137 = trunc i64 %70 to i32
  %138 = trunc i64 %2 to i32
  %139 = tail call fastcc ptr @lshift_value(i32 noundef %74, ptr noundef nonnull %4, i32 noundef %137, i32 noundef %138) #10
  %140 = tail call ptr @force_reg(i32 noundef %74, ptr noundef nonnull %71) #9
  br i1 %136, label %141, label %150, !prof !412

141:                                              ; preds = %130, %135
  %142 = phi i32 [ %134, %130 ], [ %138, %135 ]
  %143 = phi i32 [ %133, %130 ], [ %137, %135 ]
  %144 = phi ptr [ %132, %130 ], [ %140, %135 ]
  %145 = phi i1 [ true, %130 ], [ %86, %135 ]
  %146 = phi ptr [ %131, %130 ], [ %139, %135 ]
  %147 = tail call fastcc ptr @mask_rtx(i32 noundef %74, i32 noundef %143, i32 noundef %142, i32 noundef 1) #10
  %148 = tail call ptr @expand_binop(i32 noundef %74, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %144, ptr noundef %147, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %149 = tail call ptr @force_reg(i32 noundef %74, ptr noundef %148) #9
  br i1 %145, label %151, label %156, !prof !413

150:                                              ; preds = %135
  br i1 %86, label %151, label %156, !prof !413

151:                                              ; preds = %141, %150
  %152 = phi ptr [ %149, %141 ], [ %140, %150 ]
  %153 = phi ptr [ %146, %141 ], [ %139, %150 ]
  %154 = tail call ptr @expand_binop(i32 noundef %74, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %152, ptr noundef %153, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %155 = tail call ptr @force_reg(i32 noundef %74, ptr noundef %154) #9
  br label %156

156:                                              ; preds = %141, %151, %150
  %157 = phi ptr [ %140, %150 ], [ %155, %151 ], [ %149, %141 ]
  %158 = icmp eq ptr %71, %157
  br i1 %158, label %162, label %159, !prof !386

159:                                              ; preds = %156
  %160 = tail call ptr @copy_rtx(ptr noundef nonnull %71) #9
  %161 = tail call ptr @emit_move_insn(ptr noundef %160, ptr noundef %157) #9
  br label %162

162:                                              ; preds = %156, %159, %47, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_split_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !414 !PGOFuncName !415 {
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %16
    i16 39, label %16
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !327
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !395
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 32)
  %15 = zext nneg i32 %14 to i64
  br label %16

16:                                               ; preds = %11, %7, %4, %4
  %17 = phi i64 [ 32, %4 ], [ 32, %4 ], [ 8, %7 ], [ %15, %11 ]
  %18 = load i32, ptr %3, align 8
  %19 = and i32 %18, 65535
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !339
  %23 = icmp ne i32 %22, 9
  %24 = icmp eq i32 %19, 30
  %25 = or i1 %23, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %16
  %27 = load i32, ptr @word_mode, align 4, !tbaa !339
  %28 = tail call ptr @gen_lowpart_common(i32 noundef %27, ptr noundef nonnull %3) #9
  %29 = icmp eq ptr %28, null
  %30 = icmp eq ptr %28, %3
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, ptr @word_mode, align 4, !tbaa !339
  %34 = load i32, ptr %3, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 %33, i32 %36
  %39 = tail call ptr @force_reg(i32 noundef %38, ptr noundef nonnull %3) #9
  %40 = tail call ptr @gen_lowpart_common(i32 noundef %33, ptr noundef %39) #9
  br label %41

41:                                               ; preds = %32, %26, %16
  %42 = phi ptr [ %3, %16 ], [ %40, %32 ], [ %28, %26 ]
  %43 = icmp eq i64 %1, 0
  br i1 %43, label %97, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %48

48:                                               ; preds = %44, %89
  %49 = phi i64 [ 0, %44 ], [ %95, %89 ]
  %50 = add i64 %49, %2
  %51 = udiv i64 %50, %17
  %52 = urem i64 %50, %17
  %53 = sub i64 %1, %49
  %54 = sub nsw i64 %17, %52
  %55 = tail call i64 @llvm.umin.i64(i64 %53, i64 %54)
  %56 = tail call i64 @llvm.umin.i64(i64 %55, i64 32)
  %57 = load i32, ptr %42, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 30
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load i64, ptr %45, align 8, !tbaa !327
  %62 = lshr i64 %61, %49
  %63 = shl nsw i64 -1, %56
  %64 = xor i64 %63, -1
  %65 = and i64 %62, %64
  %66 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %65) #9
  br label %70

67:                                               ; preds = %48
  %68 = load i32, ptr @word_mode, align 4, !tbaa !339
  %69 = tail call fastcc ptr @extract_fixed_bit_field(i32 noundef %68, ptr noundef nonnull %42, i64 noundef 0, i64 noundef %56, i64 noundef %49, ptr noundef null, i32 noundef 1) #10
  br label %70

70:                                               ; preds = %67, %60
  %71 = phi ptr [ %66, %60 ], [ %69, %67 ]
  %72 = load i32, ptr %0, align 8
  %73 = trunc i32 %72 to i16
  switch i16 %73, label %89 [
    i16 39, label %74
    i16 37, label %84
  ]

74:                                               ; preds = %70
  %75 = load i32, ptr %47, align 8, !tbaa !327
  %76 = lshr i32 %75, 2
  %77 = trunc i64 %51 to i32
  %78 = add i32 %76, %77
  %79 = load ptr, ptr %46, align 8, !tbaa !327
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = tail call ptr @operand_subword_force(ptr noundef nonnull %79, i32 noundef %78, i32 noundef %82) #9
  br label %89

84:                                               ; preds = %70
  %85 = trunc i64 %51 to i32
  %86 = lshr i32 %72, 16
  %87 = and i32 %86, 255
  %88 = tail call ptr @operand_subword_force(ptr noundef nonnull %0, i32 noundef %85, i32 noundef %87) #9
  br label %89

89:                                               ; preds = %70, %84, %74
  %90 = phi ptr [ %83, %74 ], [ %88, %84 ], [ %0, %70 ]
  %91 = phi i64 [ 0, %74 ], [ 0, %84 ], [ %51, %70 ]
  %92 = mul i64 %91, %17
  %93 = lshr i64 %92, 3
  tail call fastcc void @store_fixed_bit_field(ptr noundef %90, i64 noundef %93, i64 noundef %56, i64 noundef %52, ptr noundef %71) #10
  %94 = add nuw nsw i64 %56, %49
  %95 = and i64 %94, 4294967295
  %96 = icmp ult i64 %95, %1
  br i1 %96, label %48, label %97, !llvm.loop !416

97:                                               ; preds = %89, %41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lshift_value(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !417 !PGOFuncName !418 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !327
  %7 = icmp slt i32 %3, 64
  %8 = zext nneg i32 %3 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = select i1 %7, i64 %10, i64 -1, !prof !403
  %12 = and i64 %6, %11
  %13 = icmp slt i32 %2, 64
  br i1 %13, label %14, label %22, !prof !403

14:                                               ; preds = %4
  %15 = zext nneg i32 %2 to i64
  %16 = shl i64 %12, %15
  %17 = icmp sgt i32 %2, 0
  %18 = sub nsw i32 64, %2
  %19 = zext nneg i32 %18 to i64
  %20 = lshr i64 %12, %19
  %21 = select i1 %17, i64 %20, i64 0, !prof !419
  br label %26

22:                                               ; preds = %4
  %23 = add nsw i32 %2, -64
  %24 = zext nneg i32 %23 to i64
  %25 = shl i64 %12, %24
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi i64 [ %16, %14 ], [ 0, %22 ]
  %28 = phi i64 [ %21, %14 ], [ %25, %22 ]
  %29 = tail call ptr @immed_double_const(i64 noundef %27, i64 noundef %28, i32 noundef %0) #9
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mask_rtx(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !420 !PGOFuncName !421 {
  %5 = icmp ne i32 %2, 0
  %6 = add i32 %2, %1
  %7 = icmp slt i32 %1, 65
  br i1 %7, label %12, label %8, !prof !422

8:                                                ; preds = %4
  %9 = add nsw i32 %1, -64
  %10 = zext nneg i32 %9 to i64
  %11 = shl nsw i64 -1, %10
  br label %12

12:                                               ; preds = %4, %8
  %13 = phi i64 [ %11, %8 ], [ -1, %4 ]
  %14 = icmp sgt i32 %6, 64
  %15 = and i1 %5, %14
  br i1 %15, label %16, label %21, !prof !423

16:                                               ; preds = %12
  %17 = sub nsw i32 128, %6
  %18 = zext nneg i32 %17 to i64
  %19 = lshr i64 -1, %18
  %20 = and i64 %13, %19
  br label %21

21:                                               ; preds = %12, %16
  %22 = phi i64 [ %20, %16 ], [ 0, %12 ]
  %23 = icmp slt i32 %6, 64
  %24 = icmp slt i32 %1, 64
  %25 = and i1 %24, %5
  %26 = zext nneg i32 %1 to i64
  %27 = shl nsw i64 -1, %26
  %28 = select i1 %25, i64 %27, i64 0, !prof !424
  %29 = sub i32 64, %6
  %30 = zext nneg i32 %29 to i64
  %31 = lshr i64 -1, %30
  %32 = select i1 %23, i64 %31, i64 -1, !prof !422
  %33 = and i64 %32, %28
  %34 = icmp ne i32 %3, 0
  %35 = sext i1 %34 to i64
  %36 = xor i64 %33, %35
  %37 = xor i64 %22, %35
  %38 = tail call ptr @immed_double_const(i64 noundef %36, i64 noundef %37, i32 noundef %0) #9
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_shift(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !425 {
  %7 = icmp ne i32 %0, 83
  %8 = icmp ne i32 %0, 85
  %9 = and i1 %7, %8
  %10 = add i32 %0, -85
  %11 = icmp ult i32 %10, 2
  %12 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %13 = tail call fastcc ptr @expand_normal(ptr noundef %3) #10
  %14 = load i32, ptr %13, align 8
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !327
  %18 = add i8 %17, -12
  %19 = icmp ult i8 %18, 6
  br i1 %19, label %20, label %29, !prof !426

20:                                               ; preds = %6
  %21 = lshr i32 %14, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !327
  %26 = add i8 %25, -12
  %27 = icmp ult i8 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %20, %6, %28
  %30 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 52), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), %20 ]
  %31 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 53), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), %20 ]
  %32 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 50), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), %20 ]
  %33 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 51), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), %20 ]
  %34 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 49), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), %20 ]
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %36 = icmp eq ptr %13, %35
  br i1 %36, label %138, label %37, !prof !427

37:                                               ; preds = %29
  %38 = and i32 %14, 65535
  %39 = icmp ne i32 %38, 30
  %40 = select i1 %7, i1 true, i1 %39
  br i1 %40, label %73, label %41, !prof !428

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !327
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %73, !prof !429

45:                                               ; preds = %41
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %47 = load i8, ptr %46, align 1, !tbaa !327
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 3
  %50 = icmp ult i64 %43, %49
  %51 = icmp ult i64 %43, 32
  %52 = and i1 %51, %50
  br i1 %52, label %53, label %73, !prof !430

53:                                               ; preds = %45
  %54 = zext i8 %12 to i64
  %55 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %54, i64 %15, i64 %43
  %56 = load i32, ptr %55, align 4, !tbaa !339
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %54, i64 %15
  %59 = load i32, ptr %58, align 4, !tbaa !339
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %43, %60
  %62 = icmp slt i64 %61, %57
  br i1 %62, label %63, label %73, !prof !431

63:                                               ; preds = %53
  %64 = icmp eq i32 %56, 2147483647
  br i1 %64, label %73, label %65, !prof !432

65:                                               ; preds = %63, %65
  %66 = phi i64 [ %70, %65 ], [ 0, %63 ]
  %67 = phi ptr [ %69, %65 ], [ %2, %63 ]
  %68 = tail call ptr @force_reg(i32 noundef %1, ptr noundef %67) #9
  %69 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %68, ptr noundef %68, ptr noundef null, i32 noundef %5, i32 noundef 3) #9
  %70 = add nuw nsw i64 %66, 1
  %71 = load i64, ptr %42, align 8, !tbaa !327
  %72 = icmp sgt i64 %71, %70
  br i1 %72, label %65, label %138, !prof !433, !llvm.loop !434

73:                                               ; preds = %63, %53, %45, %41, %37
  br label %74

74:                                               ; preds = %73, %155
  %75 = phi i32 [ 0, %73 ], [ %157, %155 ]
  switch i32 %75, label %76 [
    i32 0, label %77
    i32 1, label %78
  ], !prof !435

76:                                               ; preds = %74
  br i1 %11, label %79, label %121, !prof !436

77:                                               ; preds = %74
  br i1 %11, label %118, label %121, !prof !436

78:                                               ; preds = %74
  br i1 %11, label %155, label %121, !prof !436

79:                                               ; preds = %76
  %80 = icmp eq ptr %2, %4
  %81 = select i1 %80, ptr null, ptr %4
  %82 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !327
  %84 = load i32, ptr %13, align 8
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  %87 = load i64, ptr %83, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 14
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = tail call i32 @vector_type_mode(ptr noundef nonnull %83) #9
  br label %97

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  br label %97

97:                                               ; preds = %92, %90
  %98 = phi i32 [ %91, %90 ], [ %96, %92 ]
  %99 = icmp eq i32 %86, %98
  br i1 %99, label %140, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %13, align 8
  %102 = and i32 %101, 16711680
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %140, label %104

104:                                              ; preds = %100
  %105 = load i64, ptr %83, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 14
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = tail call i32 @vector_type_mode(ptr noundef nonnull %83) #9
  br label %115

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, 255
  br label %115

115:                                              ; preds = %110, %108
  %116 = phi i32 [ %109, %108 ], [ %114, %110 ]
  %117 = tail call ptr @convert_to_mode(i32 noundef %116, ptr noundef nonnull %13, i32 noundef 1) #9
  br label %140

118:                                              ; preds = %77
  %119 = select i1 %9, ptr %31, ptr %30
  %120 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull %119, ptr noundef %2, ptr noundef nonnull %13, ptr noundef %4, i32 noundef %5, i32 noundef 0) #9
  br label %155

121:                                              ; preds = %77, %78, %76
  %122 = phi i32 [ 2, %78 ], [ 3, %76 ], [ 0, %77 ]
  %123 = phi i1 [ false, %78 ], [ true, %76 ], [ true, %77 ]
  %124 = icmp eq i32 %5, 0
  br i1 %124, label %134, label %125, !prof !437

125:                                              ; preds = %121
  %126 = select i1 %9, ptr %32, ptr %34
  %127 = icmp eq i32 %0, 83
  %128 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull %126, ptr noundef %2, ptr noundef nonnull %13, ptr noundef %4, i32 noundef %5, i32 noundef %122) #9
  %129 = icmp ne ptr %128, null
  %130 = or i1 %123, %129
  %131 = or i1 %11, %130
  %132 = or i1 %131, %127
  %133 = select i1 %131, ptr %128, ptr null, !prof !438
  br i1 %132, label %155, label %134, !prof !439

134:                                              ; preds = %125, %121
  %135 = phi i32 [ %122, %121 ], [ 4, %125 ]
  %136 = select i1 %9, ptr %33, ptr %34
  %137 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull %136, ptr noundef %2, ptr noundef nonnull %13, ptr noundef %4, i32 noundef %5, i32 noundef %135) #9
  br label %155

138:                                              ; preds = %162, %161, %29, %65, %140
  %139 = phi ptr [ %154, %140 ], [ %2, %29 ], [ %156, %161 ], [ null, %162 ], [ %69, %65 ]
  ret ptr %139

140:                                              ; preds = %97, %100, %115
  %141 = phi ptr [ %117, %115 ], [ %13, %100 ], [ %13, %97 ]
  %142 = tail call ptr @make_tree(ptr noundef nonnull %83, ptr noundef %141) #10
  %143 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %144 = load i8, ptr %143, align 1, !tbaa !327
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 3
  %147 = tail call ptr @build_int_cst(ptr noundef nonnull %83, i64 noundef %146) #9
  %148 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %83, ptr noundef %147, ptr noundef %142) #9
  %149 = tail call ptr @force_reg(i32 noundef %1, ptr noundef %2) #9
  %150 = select i1 %9, i32 84, i32 83
  %151 = tail call ptr @expand_shift(i32 noundef %150, i32 noundef %1, ptr noundef %149, ptr noundef %142, ptr noundef null, i32 noundef 1) #10
  %152 = select i1 %9, i32 83, i32 84
  %153 = tail call ptr @expand_shift(i32 noundef %152, i32 noundef %1, ptr noundef %149, ptr noundef %148, ptr noundef %81, i32 noundef 1) #10
  %154 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %151, ptr noundef %153, ptr noundef %4, i32 noundef %5, i32 noundef 3) #9
  br label %138

155:                                              ; preds = %125, %78, %134, %118
  %156 = phi ptr [ %120, %118 ], [ %137, %134 ], [ %133, %125 ], [ null, %78 ]
  %157 = add nuw nsw i32 %75, 1
  %158 = icmp eq ptr %156, null
  %159 = icmp ult i32 %75, 2
  %160 = and i1 %158, %159
  br i1 %160, label %74, label %161, !prof !440, !llvm.loop !441

161:                                              ; preds = %155
  br i1 %158, label %162, label %138, !prof !442

162:                                              ; preds = %161
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2274, ptr noundef nonnull @.str.1) #9
  br label %138
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_lowpart_common(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @extract_fixed_bit_field(i32 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 !prof !443 !PGOFuncName !444 {
  %8 = load i32, ptr %1, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %15 [
    i16 39, label %10
    i16 37, label %10
  ], !prof !445

10:                                               ; preds = %7, %7
  %11 = add i64 %4, %3
  %12 = icmp ugt i64 %11, 32
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @extract_split_bit_field(ptr noundef nonnull %1, i64 noundef %3, i64 noundef %4, i32 noundef %6) #10
  br label %153

15:                                               ; preds = %7
  %16 = trunc i64 %3 to i32
  %17 = shl nuw i64 %2, 3
  %18 = add i64 %17, %4
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !327
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !446

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !395
  br label %26

26:                                               ; preds = %15, %23
  %27 = phi i32 [ %25, %23 ], [ 8, %15 ]
  %28 = load i32, ptr @word_mode, align 4, !tbaa !339
  %29 = lshr i32 %8, 27
  %30 = and i32 %29, 1
  %31 = tail call i32 @get_best_mode(i32 noundef %16, i32 noundef %19, i32 noundef %27, i32 noundef %28, i32 noundef %30) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35, !prof !446

33:                                               ; preds = %26
  %34 = tail call fastcc ptr @extract_split_bit_field(ptr noundef nonnull %1, i64 noundef %3, i64 noundef %18, i32 noundef %6) #10
  br label %153

35:                                               ; preds = %26
  %36 = zext i32 %31 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !327
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = icmp ugt i64 %40, %4
  br i1 %41, label %48, label %42, !prof !447

42:                                               ; preds = %35
  %43 = udiv i64 %4, %40
  %44 = mul nuw nsw i64 %43, %39
  %45 = add nuw nsw i64 %44, %2
  %46 = shl nuw nsw i64 %44, 3
  %47 = sub nsw i64 %4, %46
  br label %48

48:                                               ; preds = %42, %35
  %49 = phi i64 [ %47, %42 ], [ %4, %35 ]
  %50 = phi i64 [ %45, %42 ], [ %2, %35 ]
  %51 = urem i64 %50, %39
  %52 = shl nuw nsw i64 %51, 3
  %53 = add i64 %52, %49
  %54 = sub i64 %50, %51
  %55 = tail call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef %31, i64 noundef %54, i32 noundef 1, i32 noundef 1) #9
  %56 = load i32, ptr %55, align 8
  br label %57

57:                                               ; preds = %10, %48
  %58 = phi i32 [ %8, %10 ], [ %56, %48 ]
  %59 = phi i64 [ %4, %10 ], [ %53, %48 ]
  %60 = phi ptr [ %1, %10 ], [ %55, %48 ]
  %61 = lshr i32 %58, 16
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %6, 0
  br i1 %63, label %100, label %64, !prof !446

64:                                               ; preds = %57
  %65 = icmp eq i64 %59, 0
  br i1 %65, label %79, label %66, !prof !448

66:                                               ; preds = %64
  %67 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %59) #9
  %68 = icmp eq ptr %5, null
  br i1 %68, label %74, label %69, !prof !449

69:                                               ; preds = %66
  %70 = load i32, ptr %5, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 37
  %73 = select i1 %72, ptr %5, ptr null, !prof !450
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi ptr [ null, %66 ], [ %73, %69 ]
  %76 = icmp eq i32 %62, %0
  %77 = select i1 %76, ptr %75, ptr null, !prof !451
  %78 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %62, ptr noundef nonnull %60, ptr noundef %67, ptr noundef %77, i32 noundef 1) #10
  br label %79

79:                                               ; preds = %74, %64
  %80 = phi ptr [ %78, %74 ], [ %60, %64 ]
  %81 = icmp eq i32 %62, %0
  br i1 %81, label %84, label %82, !prof !452

82:                                               ; preds = %79
  %83 = tail call ptr @convert_to_mode(i32 noundef %0, ptr noundef %80, i32 noundef 1) #9
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi ptr [ %83, %82 ], [ %80, %79 ]
  %86 = zext nneg i32 %62 to i64
  %87 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !327
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 3
  %91 = add i64 %59, %3
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %153, label %93, !prof !453

93:                                               ; preds = %84
  %94 = load i32, ptr %85, align 8
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  %97 = trunc i64 %3 to i32
  %98 = tail call fastcc ptr @mask_rtx(i32 noundef %96, i32 noundef 0, i32 noundef %97, i32 noundef 0) #10
  %99 = tail call ptr @expand_binop(i32 noundef %96, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %85, ptr noundef %98, ptr noundef %5, i32 noundef 1, i32 noundef 3) #9
  br label %153

100:                                              ; preds = %57
  %101 = tail call ptr @force_reg(i32 noundef %62, ptr noundef nonnull %60) #9
  %102 = icmp eq i32 %62, %0
  %103 = select i1 %102, ptr %5, ptr null
  %104 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !327
  %105 = icmp eq i8 %104, 0
  %106 = add i64 %59, %3
  br i1 %105, label %123, label %107

107:                                              ; preds = %100, %119
  %108 = phi i8 [ %121, %119 ], [ %104, %100 ]
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !327
  %112 = zext i8 %111 to i64
  %113 = shl nuw nsw i64 %112, 3
  %114 = icmp ult i64 %113, %106
  br i1 %114, label %119, label %115

115:                                              ; preds = %107
  %116 = zext i8 %108 to i32
  %117 = tail call ptr @convert_to_mode(i32 noundef %116, ptr noundef %101, i32 noundef 0) #9
  %118 = zext i8 %108 to i64
  br label %123

119:                                              ; preds = %107
  %120 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %109
  %121 = load i8, ptr %120, align 1, !tbaa !327
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %107, !llvm.loop !454

123:                                              ; preds = %119, %100, %115
  %124 = phi i64 [ %118, %115 ], [ 0, %100 ], [ 0, %119 ]
  %125 = phi i32 [ %116, %115 ], [ 0, %100 ], [ 0, %119 ]
  %126 = phi ptr [ %117, %115 ], [ %101, %100 ], [ %101, %119 ]
  %127 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %124
  %128 = load i8, ptr %127, align 1, !tbaa !327
  %129 = zext i8 %128 to i64
  %130 = shl nuw nsw i64 %129, 3
  %131 = icmp eq i64 %130, %106
  br i1 %131, label %147, label %132

132:                                              ; preds = %123
  %133 = sub i64 %130, %106
  %134 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %133) #9
  %135 = icmp eq ptr %103, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = load i32, ptr %103, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 37
  %140 = select i1 %139, ptr %103, ptr null
  br label %141

141:                                              ; preds = %136, %132
  %142 = phi ptr [ null, %132 ], [ %140, %136 ]
  %143 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %125, ptr noundef %126, ptr noundef %134, ptr noundef %142, i32 noundef 1) #10
  %144 = load i8, ptr %127, align 1, !tbaa !327
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 3
  br label %147

147:                                              ; preds = %141, %123
  %148 = phi i64 [ %146, %141 ], [ %130, %123 ]
  %149 = phi ptr [ %143, %141 ], [ %126, %123 ]
  %150 = sub i64 %148, %3
  %151 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %150) #9
  %152 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %125, ptr noundef %149, ptr noundef %151, ptr noundef %103, i32 noundef 0) #10
  br label %153

153:                                              ; preds = %84, %147, %93, %33, %13
  %154 = phi ptr [ %14, %13 ], [ %99, %93 ], [ %152, %147 ], [ %34, %33 ], [ %85, %84 ]
  ret ptr %154
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @extract_split_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !414 !PGOFuncName !455 {
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %16
    i16 39, label %16
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !327
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !395
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 32)
  %15 = zext nneg i32 %14 to i64
  br label %16

16:                                               ; preds = %11, %7, %4, %4
  %17 = phi i64 [ 32, %4 ], [ 32, %4 ], [ 8, %7 ], [ %15, %11 ]
  %18 = icmp eq i64 %1, 0
  br i1 %18, label %73, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %22

22:                                               ; preds = %19, %70
  %23 = phi i64 [ 0, %19 ], [ %58, %70 ]
  %24 = phi i1 [ false, %19 ], [ true, %70 ]
  %25 = phi ptr [ null, %19 ], [ %71, %70 ]
  %26 = add i64 %23, %2
  %27 = udiv i64 %26, %17
  %28 = urem i64 %26, %17
  %29 = sub i64 %1, %23
  %30 = sub nsw i64 %17, %28
  %31 = tail call i64 @llvm.umin.i64(i64 %29, i64 %30)
  %32 = tail call i64 @llvm.umin.i64(i64 %31, i64 32)
  %33 = load i32, ptr %0, align 8
  %34 = trunc i32 %33 to i16
  switch i16 %34, label %50 [
    i16 39, label %35
    i16 37, label %45
  ]

35:                                               ; preds = %22
  %36 = load i32, ptr %21, align 8, !tbaa !327
  %37 = lshr i32 %36, 2
  %38 = trunc i64 %27 to i32
  %39 = add i32 %37, %38
  %40 = load ptr, ptr %20, align 8, !tbaa !327
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = tail call ptr @operand_subword_force(ptr noundef nonnull %40, i32 noundef %39, i32 noundef %43) #9
  br label %50

45:                                               ; preds = %22
  %46 = trunc i64 %27 to i32
  %47 = lshr i32 %33, 16
  %48 = and i32 %47, 255
  %49 = tail call ptr @operand_subword_force(ptr noundef nonnull %0, i32 noundef %46, i32 noundef %48) #9
  br label %50

50:                                               ; preds = %22, %45, %35
  %51 = phi ptr [ %44, %35 ], [ %49, %45 ], [ %0, %22 ]
  %52 = phi i64 [ 0, %35 ], [ 0, %45 ], [ %27, %22 ]
  %53 = load i32, ptr @word_mode, align 4, !tbaa !339
  %54 = mul i64 %52, %17
  %55 = lshr i64 %54, 3
  %56 = tail call fastcc ptr @extract_fixed_bit_field(i32 noundef %53, ptr noundef %51, i64 noundef %55, i64 noundef %32, i64 noundef %28, ptr noundef null, i32 noundef 1) #10
  %57 = add nuw nsw i64 %32, %23
  %58 = and i64 %57, 4294967295
  %59 = icmp eq i64 %58, %32
  br i1 %59, label %65, label %60

60:                                               ; preds = %50
  %61 = load i32, ptr @word_mode, align 4, !tbaa !339
  %62 = sub nsw i64 %58, %32
  %63 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %62) #9
  %64 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %61, ptr noundef %56, ptr noundef %63, ptr noundef null, i32 noundef 1) #10
  br label %65

65:                                               ; preds = %60, %50
  %66 = phi ptr [ %64, %60 ], [ %56, %50 ]
  br i1 %24, label %67, label %70

67:                                               ; preds = %65
  %68 = load i32, ptr @word_mode, align 4, !tbaa !339
  %69 = tail call ptr @expand_binop(i32 noundef %68, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %66, ptr noundef %25, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  br label %70

70:                                               ; preds = %65, %67
  %71 = phi ptr [ %69, %67 ], [ %66, %65 ]
  %72 = icmp ult i64 %58, %1
  br i1 %72, label %22, label %73, !llvm.loop !456

73:                                               ; preds = %70, %16
  %74 = phi ptr [ null, %16 ], [ %71, %70 ]
  %75 = icmp eq i32 %3, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, ptr @word_mode, align 4, !tbaa !339
  %78 = sub nsw i64 32, %1
  %79 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %78) #9
  %80 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %77, ptr noundef %74, ptr noundef %79, ptr noundef null, i32 noundef 0) #10
  %81 = load i32, ptr @word_mode, align 4, !tbaa !339
  %82 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %78) #9
  %83 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %81, ptr noundef %80, ptr noundef %82, ptr noundef null, i32 noundef 0) #10
  br label %84

84:                                               ; preds = %73, %76
  %85 = phi ptr [ %83, %76 ], [ %74, %73 ]
  ret ptr %85
}

; Function Attrs: optsize
declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @extract_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !457 {
  %8 = tail call fastcc ptr @extract_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext 1) #10
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @extract_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) unnamed_addr #0 !prof !458 !PGOFuncName !459 {
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  %12 = icmp eq i32 %6, 0
  br i1 %12, label %13, label %14, !prof !460

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i32 [ %5, %13 ], [ %6, %8 ]
  br label %16

16:                                               ; preds = %21, %14
  %17 = phi i32 [ %9, %14 ], [ %29, %21 ]
  %18 = phi ptr [ %0, %14 ], [ %28, %21 ]
  %19 = phi i64 [ %2, %14 ], [ %27, %21 ]
  %20 = trunc i32 %17 to i16
  switch i16 %20, label %52 [
    i16 39, label %21
    i16 37, label %30
  ], !prof !461

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load i32, ptr %23, align 8, !tbaa !327
  %25 = shl i32 %24, 3
  %26 = zext i32 %25 to i64
  %27 = add i64 %19, %26
  %28 = load ptr, ptr %22, align 8, !tbaa !327
  %29 = load i32, ptr %28, align 8
  br label %16, !llvm.loop !462

30:                                               ; preds = %16
  %31 = lshr i32 %17, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !327
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 3
  %38 = icmp ult i64 %19, %37
  br i1 %38, label %41, label %39, !prof !463

39:                                               ; preds = %30
  %40 = tail call ptr @gen_reg_rtx(i32 noundef %15) #9
  br label %611

41:                                               ; preds = %30
  %42 = icmp eq i32 %32, %5
  %43 = icmp eq i64 %19, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %56, !prof !464

45:                                               ; preds = %41
  %46 = zext nneg i32 %5 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !327
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 3
  %51 = icmp eq i64 %50, %1
  br i1 %51, label %611, label %56, !prof !465

52:                                               ; preds = %16
  %53 = lshr i32 %17, 16
  %54 = and i32 %53, 255
  %55 = zext nneg i32 %54 to i64
  br label %56

56:                                               ; preds = %52, %45, %41
  %57 = phi i64 [ %55, %52 ], [ %33, %45 ], [ %33, %41 ]
  %58 = phi i64 [ %19, %52 ], [ 0, %45 ], [ %19, %41 ]
  %59 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %57
  %60 = load i8, ptr %59, align 1, !tbaa !327
  %61 = add i8 %60, -12
  %62 = icmp ult i8 %61, 6
  br i1 %62, label %63, label %108, !prof !466

63:                                               ; preds = %56
  %64 = and i32 %17, 65535
  %65 = icmp eq i32 %64, 43
  br i1 %65, label %108, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %57
  %68 = load i8, ptr %67, align 1, !tbaa !327
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %15, %69
  br i1 %70, label %108, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %57
  %73 = load i8, ptr %72, align 1, !tbaa !327
  %74 = zext i32 %15 to i64
  %75 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !327
  switch i8 %76, label %77 [
    i8 8, label %78
    i8 4, label %108
    i8 5, label %108
    i8 6, label %108
    i8 7, label %108
  ]

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %71
  %79 = phi i32 [ 78, %71 ], [ 55, %77 ]
  br label %80

80:                                               ; preds = %78, %100
  %81 = phi i32 [ %103, %100 ], [ %79, %78 ]
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !327
  %85 = icmp eq i8 %84, %73
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %82
  %88 = load i8, ptr %87, align 1, !tbaa !327
  %89 = load i32, ptr %18, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !327
  %95 = icmp eq i8 %88, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 59), align 8, !tbaa !467
  %98 = tail call zeroext i8 %97(i32 noundef %81) #9
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %80, %86, %96
  %101 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %82
  %102 = load i8, ptr %101, align 1, !tbaa !327
  %103 = zext i8 %102 to i32
  %104 = icmp eq i8 %102, 0
  br i1 %104, label %108, label %80, !llvm.loop !479

105:                                              ; preds = %96
  %106 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %107 = tail call ptr %106(i32 noundef %81, ptr noundef nonnull %18) #9
  br label %108

108:                                              ; preds = %100, %71, %71, %71, %71, %56, %105, %66, %63
  %109 = phi ptr [ %18, %63 ], [ %18, %66 ], [ %18, %56 ], [ %107, %105 ], [ %18, %71 ], [ %18, %71 ], [ %18, %71 ], [ %18, %71 ], [ %18, %100 ]
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !327
  %116 = add i8 %115, -12
  %117 = icmp ult i8 %116, 6
  br i1 %117, label %118, label %214, !prof !466

118:                                              ; preds = %108
  %119 = and i32 %110, 65535
  %120 = icmp eq i32 %119, 43
  br i1 %120, label %214, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 %113
  %123 = load i32, ptr %122, align 4, !tbaa !367
  %124 = icmp eq i32 %123, 2956
  br i1 %124, label %214, label %125

125:                                              ; preds = %121
  %126 = add i64 %1, -1
  %127 = add i64 %126, %58
  %128 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %113
  %129 = load i8, ptr %128, align 1, !tbaa !327
  %130 = zext i8 %129 to i32
  %131 = zext i8 %129 to i64
  %132 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !327
  %134 = zext i8 %133 to i64
  %135 = shl nuw nsw i64 %134, 3
  %136 = udiv i64 %127, %135
  %137 = udiv i64 %58, %135
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %214

139:                                              ; preds = %125
  %140 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %136) #9
  %141 = sext i32 %123 to i64
  %142 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %141, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !355
  %144 = getelementptr inbounds %struct.insn_operand_data, ptr %143, i64 0, i32 2
  %145 = load i16, ptr %144, align 8
  %146 = zext i16 %145 to i32
  %147 = getelementptr inbounds %struct.insn_operand_data, ptr %143, i64 1, i32 2
  %148 = load i16, ptr %147, align 8
  %149 = zext i16 %148 to i32
  %150 = getelementptr inbounds %struct.insn_operand_data, ptr %143, i64 2, i32 2
  %151 = load i16, ptr %150, align 8
  %152 = zext i16 %151 to i32
  %153 = icmp ne i32 %15, %130
  %154 = icmp ne i32 %130, %5
  %155 = and i1 %153, %154
  %156 = icmp eq ptr %4, null
  %157 = or i1 %156, %155
  br i1 %157, label %158, label %160

158:                                              ; preds = %139
  %159 = tail call ptr @gen_reg_rtx(i32 noundef %130) #9
  br label %160

160:                                              ; preds = %158, %139
  %161 = phi ptr [ %4, %139 ], [ %159, %158 ]
  tail call void @start_sequence() #9
  %162 = load ptr, ptr %143, align 8, !tbaa !369
  %163 = tail call i32 %162(ptr noundef %161, i32 noundef %146) #9
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = tail call ptr @copy_to_mode_reg(i32 noundef %146, ptr noundef %161) #9
  br label %167

167:                                              ; preds = %165, %160
  %168 = phi ptr [ %161, %160 ], [ %166, %165 ]
  %169 = getelementptr inbounds %struct.insn_operand_data, ptr %143, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !369
  %171 = tail call i32 %170(ptr noundef nonnull %109, i32 noundef %149) #9
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = tail call ptr @copy_to_mode_reg(i32 noundef %149, ptr noundef nonnull %109) #9
  br label %175

175:                                              ; preds = %173, %167
  %176 = phi ptr [ %109, %167 ], [ %174, %173 ]
  %177 = getelementptr inbounds %struct.insn_operand_data, ptr %143, i64 2
  %178 = load ptr, ptr %177, align 8, !tbaa !369
  %179 = tail call i32 %178(ptr noundef %140, i32 noundef %152) #9
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = tail call ptr @copy_to_mode_reg(i32 noundef %149, ptr noundef %140) #9
  br label %183

183:                                              ; preds = %181, %175
  %184 = phi ptr [ %140, %175 ], [ %182, %181 ]
  %185 = load ptr, ptr %143, align 8, !tbaa !369
  %186 = tail call i32 %185(ptr noundef %168, i32 noundef %146) #9
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %183
  %189 = load ptr, ptr %169, align 8, !tbaa !369
  %190 = tail call i32 %189(ptr noundef %176, i32 noundef %149) #9
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load ptr, ptr %177, align 8, !tbaa !369
  %194 = tail call i32 %193(ptr noundef %184, i32 noundef %152) #9
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192, %188, %183
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1288, ptr noundef nonnull @.str.1) #9
  br label %197

197:                                              ; preds = %192, %196
  %198 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %141, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !371
  %200 = tail call ptr (ptr, ...) %199(ptr noundef %168, ptr noundef %176, ptr noundef %184) #9
  %201 = tail call ptr @get_insns() #9
  tail call void @end_sequence() #9
  %202 = icmp eq ptr %200, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i32, ptr %109, align 8
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  br label %214

207:                                              ; preds = %197
  %208 = tail call ptr @emit_insn(ptr noundef %201) #9
  %209 = tail call ptr @emit_insn(ptr noundef nonnull %200) #9
  %210 = icmp eq i32 %146, %5
  br i1 %210, label %611, label %211

211:                                              ; preds = %207
  %212 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %213 = tail call ptr %212(i32 noundef %15, ptr noundef %168) #9
  br label %611

214:                                              ; preds = %203, %108, %125, %121, %118
  %215 = phi i32 [ %206, %203 ], [ %112, %108 ], [ %112, %125 ], [ %112, %121 ], [ %112, %118 ]
  %216 = tail call i32 @int_mode_for_mode(i32 noundef %215) #9
  %217 = load i32, ptr %109, align 8
  %218 = lshr i32 %217, 16
  %219 = and i32 %218, 255
  %220 = icmp eq i32 %216, %219
  br i1 %220, label %261, label %221, !prof !480

221:                                              ; preds = %214
  %222 = and i32 %217, 65535
  %223 = icmp eq i32 %222, 43
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = tail call ptr @adjust_address_1(ptr noundef nonnull %109, i32 noundef %216, i64 noundef 0, i32 noundef 1, i32 noundef 1) #9
  br label %261

226:                                              ; preds = %221
  %227 = icmp eq i32 %216, 1
  br i1 %227, label %236, label %228

228:                                              ; preds = %226
  %229 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %230 = tail call ptr %229(i32 noundef %216, ptr noundef nonnull %109) #9
  %231 = load i32, ptr %230, align 8
  %232 = and i32 %231, 65535
  %233 = icmp eq i32 %232, 39
  br i1 %233, label %234, label %261

234:                                              ; preds = %228
  %235 = tail call ptr @force_reg(i32 noundef %216, ptr noundef nonnull %230) #9
  br label %261

236:                                              ; preds = %226
  %237 = icmp eq i32 %222, 37
  %238 = zext nneg i32 %219 to i64
  %239 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !327
  br i1 %237, label %241, label %256

241:                                              ; preds = %236
  %242 = zext i8 %240 to i32
  %243 = shl nuw nsw i32 %242, 3
  %244 = tail call i32 @smallest_mode_for_size(i32 noundef %243, i32 noundef 2) #9
  %245 = tail call ptr @gen_reg_rtx(i32 noundef %244) #9
  %246 = load i32, ptr %109, align 8
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %248, ptr noundef %245) #9
  %250 = tail call ptr @emit_move_insn(ptr noundef %249, ptr noundef nonnull %109) #9
  %251 = getelementptr inbounds %struct.rtx_def, ptr %249, i64 0, i32 1, i32 0, i32 0, i64 1
  %252 = load i32, ptr %251, align 8, !tbaa !327
  %253 = shl i32 %252, 3
  %254 = zext i32 %253 to i64
  %255 = add i64 %58, %254
  br label %261

256:                                              ; preds = %236
  %257 = zext i8 %240 to i64
  %258 = tail call ptr @assign_stack_temp(i32 noundef %219, i64 noundef %257, i32 noundef 0) #9
  %259 = tail call ptr @emit_move_insn(ptr noundef %258, ptr noundef nonnull %109) #9
  %260 = tail call ptr @adjust_address_1(ptr noundef %258, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #9
  br label %261

261:                                              ; preds = %224, %241, %256, %228, %234, %214
  %262 = phi ptr [ %225, %224 ], [ %235, %234 ], [ %230, %228 ], [ %245, %241 ], [ %260, %256 ], [ %109, %214 ]
  %263 = phi i64 [ %58, %224 ], [ %58, %234 ], [ %58, %228 ], [ %255, %241 ], [ %58, %256 ], [ %58, %214 ]
  %264 = load i32, ptr %262, align 8
  %265 = and i32 %264, 65535
  %266 = icmp eq i32 %265, 43
  br i1 %266, label %267, label %269, !prof !481

267:                                              ; preds = %261
  %268 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %262) #9
  tail call void @set_mem_alias_set(ptr noundef %268, i32 noundef 0) #9
  tail call void @set_mem_expr(ptr noundef %268, ptr noundef null) #9
  br label %269

269:                                              ; preds = %267, %261
  %270 = phi ptr [ %268, %267 ], [ %262, %261 ]
  %271 = select i1 %11, i64 7, i64 31
  %272 = and i64 %263, %271
  %273 = select i1 %11, i64 3, i64 5
  %274 = lshr i64 %263, %273
  %275 = lshr i64 %272, 3
  %276 = shl nuw nsw i64 %274, 2
  %277 = or disjoint i64 %275, %276
  %278 = trunc i64 %277 to i32
  %279 = zext i32 %15 to i64
  %280 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !327
  %282 = and i8 %281, -2
  %283 = icmp eq i8 %282, 2
  br i1 %283, label %284, label %288, !prof !482

284:                                              ; preds = %269
  %285 = trunc i64 %1 to i32
  %286 = zext nneg i8 %281 to i32
  %287 = tail call i32 @mode_for_size(i32 noundef %285, i32 noundef %286, i32 noundef 0) #9
  br label %288

288:                                              ; preds = %269, %284
  %289 = phi i32 [ %287, %284 ], [ %5, %269 ]
  %290 = icmp ugt i64 %1, 31
  br i1 %290, label %291, label %300, !prof !483

291:                                              ; preds = %288
  %292 = zext i32 %5 to i64
  %293 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !327
  %295 = zext i8 %294 to i64
  %296 = shl nuw nsw i64 %295, 3
  %297 = icmp eq i64 %296, %1
  %298 = icmp eq i64 %272, 0
  %299 = select i1 %297, i1 %298, i1 false
  br i1 %299, label %304, label %300, !prof !484

300:                                              ; preds = %291, %288
  %301 = icmp ne i32 %289, 1
  %302 = icmp eq i64 %272, 0
  %303 = select i1 %301, i1 %302, i1 false
  br i1 %303, label %304, label %331, !prof !485

304:                                              ; preds = %291, %300
  %305 = load i32, ptr %270, align 8
  %306 = and i32 %305, 65535
  %307 = icmp eq i32 %306, 43
  br i1 %307, label %317, label %308, !prof !486

308:                                              ; preds = %304
  %309 = zext i32 %289 to i64
  %310 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !327
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %331, label %313, !prof !487

313:                                              ; preds = %308
  %314 = zext i8 %311 to i32
  %315 = srem i32 %278, %314
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %319, label %331, !prof !488

317:                                              ; preds = %304
  %318 = tail call ptr @adjust_address_1(ptr noundef nonnull %270, i32 noundef %289, i64 noundef %274, i32 noundef 1, i32 noundef 1) #9
  br label %326

319:                                              ; preds = %313
  %320 = lshr i32 %305, 16
  %321 = and i32 %320, 255
  %322 = icmp eq i32 %289, %321
  br i1 %322, label %326, label %323, !prof !487

323:                                              ; preds = %319
  %324 = tail call ptr @simplify_gen_subreg(i32 noundef %289, ptr noundef nonnull %270, i32 noundef %321, i32 noundef %278) #9
  %325 = icmp eq ptr %324, null
  br i1 %325, label %331, label %326

326:                                              ; preds = %323, %319, %317
  %327 = phi ptr [ %318, %317 ], [ %324, %323 ], [ %270, %319 ]
  %328 = icmp eq i32 %289, %5
  br i1 %328, label %611, label %329, !prof !489

329:                                              ; preds = %326
  %330 = tail call ptr @convert_to_mode(i32 noundef %15, ptr noundef %327, i32 noundef %3) #9
  br label %611

331:                                              ; preds = %308, %313, %323, %300
  %332 = icmp ugt i64 %1, 32
  br i1 %332, label %333, label %407, !prof !490

333:                                              ; preds = %331
  %334 = add i64 %1, 31
  %335 = lshr i64 %334, 5
  %336 = trunc i64 %335 to i32
  %337 = icmp eq ptr %4, null
  br i1 %337, label %342, label %338

338:                                              ; preds = %333
  %339 = load i32, ptr %4, align 8
  %340 = and i32 %339, 65535
  %341 = icmp eq i32 %340, 37
  br i1 %341, label %344, label %342

342:                                              ; preds = %338, %333
  %343 = tail call ptr @gen_reg_rtx(i32 noundef %5) #9
  br label %344

344:                                              ; preds = %342, %338
  %345 = phi ptr [ %343, %342 ], [ %4, %338 ]
  %346 = tail call ptr @emit_clobber(ptr noundef %345) #9
  %347 = icmp eq i32 %336, 0
  br i1 %347, label %370, label %348

348:                                              ; preds = %344
  %349 = and i64 %335, 4294967295
  br label %350

350:                                              ; preds = %348, %367
  %351 = phi i64 [ 0, %348 ], [ %368, %367 ]
  %352 = trunc i64 %351 to i32
  %353 = shl i64 %351, 5
  %354 = tail call ptr @operand_subword(ptr noundef %345, i32 noundef %352, i32 noundef 1, i32 noundef 0) #9
  %355 = and i64 %353, 4294967264
  %356 = sub i64 %1, %355
  %357 = tail call i64 @llvm.umin.i64(i64 %356, i64 32)
  %358 = add i64 %263, %355
  %359 = load i32, ptr @word_mode, align 4, !tbaa !339
  %360 = tail call ptr @extract_bit_field(ptr noundef %270, i64 noundef %357, i64 noundef %358, i32 noundef 1, ptr noundef %354, i32 noundef %5, i32 noundef %359) #10
  %361 = icmp eq ptr %354, null
  br i1 %361, label %362, label %363

362:                                              ; preds = %350
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1456, ptr noundef nonnull @.str.1) #9
  br label %363

363:                                              ; preds = %350, %362
  %364 = icmp eq ptr %360, %354
  br i1 %364, label %367, label %365

365:                                              ; preds = %363
  %366 = tail call ptr @emit_move_insn(ptr noundef %354, ptr noundef %360) #9
  br label %367

367:                                              ; preds = %365, %363
  %368 = add nuw nsw i64 %351, 1
  %369 = icmp eq i64 %368, %349
  br i1 %369, label %370, label %350, !llvm.loop !491

370:                                              ; preds = %367, %344
  %371 = icmp eq i32 %3, 0
  br i1 %371, label %392, label %372

372:                                              ; preds = %370
  %373 = load i32, ptr %345, align 8
  %374 = lshr i32 %373, 16
  %375 = and i32 %374, 255
  %376 = zext nneg i32 %375 to i64
  %377 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !327
  %379 = zext i8 %378 to i32
  %380 = shl i32 %336, 2
  %381 = icmp ult i32 %380, %379
  br i1 %381, label %382, label %611

382:                                              ; preds = %372
  %383 = lshr i32 %379, 2
  %384 = icmp ugt i32 %383, %336
  br i1 %384, label %385, label %611

385:                                              ; preds = %382, %385
  %386 = phi i32 [ %390, %385 ], [ %336, %382 ]
  %387 = tail call ptr @operand_subword(ptr noundef nonnull %345, i32 noundef %386, i32 noundef 1, i32 noundef 0) #9
  %388 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %389 = tail call ptr @emit_move_insn(ptr noundef %387, ptr noundef %388) #9
  %390 = add i32 %386, 1
  %391 = icmp eq i32 %390, %383
  br i1 %391, label %611, label %385, !llvm.loop !492

392:                                              ; preds = %370
  %393 = zext i32 %5 to i64
  %394 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !327
  %396 = zext i8 %395 to i64
  %397 = shl nuw nsw i64 %396, 3
  %398 = sub i64 %397, %1
  %399 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %398) #9
  %400 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %5, ptr noundef %345, ptr noundef %399, ptr noundef null, i32 noundef 0) #10
  %401 = load i8, ptr %394, align 1, !tbaa !327
  %402 = zext i8 %401 to i64
  %403 = shl nuw nsw i64 %402, 3
  %404 = sub i64 %403, %1
  %405 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %404) #9
  %406 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %5, ptr noundef %400, ptr noundef %405, ptr noundef null, i32 noundef 0) #10
  br label %611

407:                                              ; preds = %331
  %408 = tail call i32 @int_mode_for_mode(i32 noundef %15) #9
  %409 = icmp eq i32 %408, 1
  br i1 %409, label %410, label %414, !prof !490

410:                                              ; preds = %407
  %411 = tail call i32 @int_mode_for_mode(i32 noundef %5) #9
  %412 = icmp eq i32 %411, 1
  br i1 %412, label %413, label %414, !prof !493

413:                                              ; preds = %410
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1503, ptr noundef nonnull @.str.1) #9
  br label %414

414:                                              ; preds = %407, %410, %413
  %415 = phi i32 [ %411, %410 ], [ 1, %413 ], [ %408, %407 ]
  %416 = load i32, ptr %270, align 8
  %417 = and i32 %416, 65535
  %418 = icmp eq i32 %417, 43
  br i1 %418, label %437, label %419, !prof !494

419:                                              ; preds = %414
  %420 = icmp eq i64 %274, 0
  br i1 %420, label %421, label %428, !prof !447

421:                                              ; preds = %419
  %422 = lshr i32 %416, 16
  %423 = and i32 %422, 255
  %424 = zext nneg i32 %423 to i64
  %425 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %424
  %426 = load i8, ptr %425, align 1, !tbaa !327
  %427 = icmp ugt i8 %426, 4
  br i1 %427, label %428, label %437, !prof !446

428:                                              ; preds = %421, %419
  %429 = icmp eq i32 %417, 37
  br i1 %429, label %432, label %430

430:                                              ; preds = %428
  %431 = tail call ptr @copy_to_reg(ptr noundef nonnull %270) #9
  br label %432

432:                                              ; preds = %430, %428
  %433 = phi ptr [ %270, %428 ], [ %431, %430 ]
  %434 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 0) #9
  %435 = trunc i64 %276 to i32
  %436 = tail call ptr @gen_rtx_SUBREG(i32 noundef %434, ptr noundef %433, i32 noundef %435) #9
  br label %437

437:                                              ; preds = %421, %432, %414
  %438 = phi ptr [ %270, %414 ], [ %436, %432 ], [ %270, %421 ]
  %439 = phi i64 [ %274, %414 ], [ 0, %432 ], [ 0, %421 ]
  %440 = icmp eq i32 %3, 0
  %441 = select i1 %440, i32 1, i32 2
  %442 = tail call i32 @mode_for_extraction(i32 noundef %441, i32 noundef 0) #10
  %443 = select i1 %440, i32 2179, i32 2180
  %444 = icmp ne i32 %442, 87
  %445 = icmp ne i64 %1, 0
  %446 = and i1 %445, %444
  br i1 %446, label %447, label %548, !prof !495

447:                                              ; preds = %437
  %448 = zext i32 %442 to i64
  %449 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %448
  %450 = load i8, ptr %449, align 1, !tbaa !327
  %451 = zext i8 %450 to i64
  %452 = shl nuw nsw i64 %451, 3
  %453 = icmp ult i64 %452, %1
  %454 = load i32, ptr %438, align 8
  br i1 %453, label %551, label %455, !prof !490

455:                                              ; preds = %447
  %456 = trunc i32 %454 to i16
  switch i16 %456, label %464 [
    i16 39, label %457
    i16 37, label %461
  ], !prof !496

457:                                              ; preds = %455
  %458 = lshr i32 %454, 16
  %459 = and i32 %458, 255
  %460 = icmp eq i32 %459, %442
  br i1 %460, label %461, label %551

461:                                              ; preds = %455, %457
  %462 = add nuw nsw i64 %272, %1
  %463 = icmp ugt i64 %462, %452
  br i1 %463, label %548, label %464, !prof !446

464:                                              ; preds = %455, %461
  %465 = lshr i32 %454, 16
  %466 = and i32 %465, 255
  %467 = tail call fastcc zeroext i8 @check_predicate_volatile_ok(i32 noundef %443, i32 noundef 1, ptr noundef nonnull %438, i32 noundef %466) #10
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %548, label %469, !prof !497

469:                                              ; preds = %464
  %470 = tail call ptr @get_last_insn() #9
  %471 = load i32, ptr %438, align 8
  %472 = and i32 %471, 65535
  %473 = icmp eq i32 %472, 37
  br i1 %473, label %474, label %481, !prof !498

474:                                              ; preds = %469
  %475 = lshr i32 %471, 16
  %476 = and i32 %475, 255
  %477 = icmp eq i32 %476, %442
  br i1 %477, label %481, label %478, !prof !499

478:                                              ; preds = %474
  %479 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %442, ptr noundef nonnull %438) #9
  %480 = load i32, ptr %479, align 8
  br label %481

481:                                              ; preds = %478, %474, %469
  %482 = phi i32 [ %480, %478 ], [ %471, %474 ], [ %471, %469 ]
  %483 = phi ptr [ %479, %478 ], [ %438, %474 ], [ %438, %469 ]
  %484 = and i32 %482, 65535
  %485 = icmp eq i32 %484, 43
  br i1 %485, label %486, label %489, !prof !500

486:                                              ; preds = %481
  %487 = load i32, ptr @byte_mode, align 4, !tbaa !339
  %488 = tail call ptr @adjust_address_1(ptr noundef nonnull %483, i32 noundef %487, i64 noundef %439, i32 noundef 1, i32 noundef 1) #9
  br label %489

489:                                              ; preds = %486, %481
  %490 = phi ptr [ %488, %486 ], [ %483, %481 ]
  %491 = icmp eq ptr %4, null
  br i1 %491, label %492, label %494, !prof !501

492:                                              ; preds = %489
  %493 = tail call ptr @gen_reg_rtx(i32 noundef %15) #9
  br label %494

494:                                              ; preds = %492, %489
  %495 = phi ptr [ %493, %492 ], [ %4, %489 ]
  %496 = load i32, ptr %495, align 8
  %497 = lshr i32 %496, 16
  %498 = and i32 %497, 255
  %499 = icmp eq i32 %498, %442
  br i1 %499, label %517, label %500, !prof !502

500:                                              ; preds = %494
  %501 = and i32 %496, 65535
  %502 = icmp eq i32 %501, 37
  br i1 %502, label %503, label %515, !prof !503

503:                                              ; preds = %500
  %504 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %505 = tail call ptr %504(i32 noundef %442, ptr noundef nonnull %495) #9
  %506 = load i8, ptr %449, align 1, !tbaa !327
  %507 = load i32, ptr %495, align 8
  %508 = lshr i32 %507, 16
  %509 = and i32 %508, 255
  %510 = zext nneg i32 %509 to i64
  %511 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %510
  %512 = load i8, ptr %511, align 1, !tbaa !327
  %513 = icmp ugt i8 %506, %512
  %514 = select i1 %513, ptr %505, ptr null, !prof !503
  br label %517

515:                                              ; preds = %500
  %516 = tail call ptr @gen_reg_rtx(i32 noundef %442) #9
  br label %517

517:                                              ; preds = %503, %515, %494
  %518 = phi ptr [ %516, %515 ], [ %495, %494 ], [ %505, %503 ]
  %519 = phi ptr [ null, %515 ], [ null, %494 ], [ %514, %503 ]
  %520 = zext nneg i32 %443 to i64
  %521 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %520, i32 3
  %522 = load ptr, ptr %521, align 8, !tbaa !355
  %523 = load ptr, ptr %522, align 8, !tbaa !369
  %524 = tail call i32 %523(ptr noundef %518, i32 noundef %442) #9
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %528, !prof !504

526:                                              ; preds = %517
  %527 = tail call ptr @gen_reg_rtx(i32 noundef %442) #9
  br label %528

528:                                              ; preds = %526, %517
  %529 = phi ptr [ %518, %517 ], [ %527, %526 ]
  %530 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1) #9
  %531 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %272) #9
  br i1 %440, label %534, label %532, !prof !500

532:                                              ; preds = %528
  %533 = tail call ptr @gen_extzv(ptr noundef %529, ptr noundef %490, ptr noundef %530, ptr noundef %531) #9
  br label %536

534:                                              ; preds = %528
  %535 = tail call ptr @gen_extv(ptr noundef %529, ptr noundef %490, ptr noundef %530, ptr noundef %531) #9
  br label %536

536:                                              ; preds = %534, %532
  %537 = phi ptr [ %533, %532 ], [ %535, %534 ]
  %538 = icmp eq ptr %537, null
  br i1 %538, label %547, label %539, !prof !498

539:                                              ; preds = %536
  %540 = tail call ptr @emit_insn(ptr noundef nonnull %537) #9
  %541 = icmp eq ptr %529, %495
  %542 = icmp eq ptr %529, %519
  %543 = select i1 %541, i1 true, i1 %542
  br i1 %543, label %611, label %544

544:                                              ; preds = %539
  %545 = trunc i32 %3 to i8
  %546 = tail call fastcc ptr @convert_extracted_bit_field(ptr noundef %529, i32 noundef %5, i32 noundef %15, i8 noundef zeroext %545) #10
  br label %611

547:                                              ; preds = %536
  tail call void @delete_insns_since(ptr noundef %470) #9
  br label %548

548:                                              ; preds = %547, %464, %461, %437
  br i1 %444, label %549, label %605, !prof !505

549:                                              ; preds = %548
  %550 = load i32, ptr %438, align 8
  br label %551

551:                                              ; preds = %549, %447, %457
  %552 = phi i32 [ %550, %549 ], [ %454, %447 ], [ %454, %457 ]
  %553 = and i32 %552, 65535
  %554 = icmp eq i32 %553, 43
  br i1 %554, label %555, label %605, !prof !494

555:                                              ; preds = %551
  %556 = lshr i32 %552, 16
  %557 = and i32 %556, 255
  %558 = icmp eq i32 %557, 1
  br i1 %558, label %567, label %559, !prof !506

559:                                              ; preds = %555
  %560 = zext nneg i32 %557 to i64
  %561 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %560
  %562 = load i8, ptr %561, align 1, !tbaa !327
  %563 = zext i32 %442 to i64
  %564 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %563
  %565 = load i8, ptr %564, align 1, !tbaa !327
  %566 = icmp ugt i8 %562, %565
  br i1 %566, label %567, label %581, !prof !507

567:                                              ; preds = %559, %555
  %568 = trunc i64 %1 to i32
  %569 = trunc i64 %263 to i32
  %570 = getelementptr inbounds %struct.rtx_def, ptr %438, i64 0, i32 1, i32 0, i32 0, i64 1
  %571 = load ptr, ptr %570, align 8, !tbaa !327
  %572 = icmp eq ptr %571, null
  br i1 %572, label %576, label %573, !prof !446

573:                                              ; preds = %567
  %574 = getelementptr inbounds %struct.mem_attrs, ptr %571, i64 0, i32 4
  %575 = load i32, ptr %574, align 4, !tbaa !395
  br label %576

576:                                              ; preds = %567, %573
  %577 = phi i32 [ %575, %573 ], [ 8, %567 ]
  %578 = lshr i32 %552, 27
  %579 = and i32 %578, 1
  %580 = tail call i32 @get_best_mode(i32 noundef %568, i32 noundef %569, i32 noundef %577, i32 noundef %442, i32 noundef %579) #9
  br label %581

581:                                              ; preds = %559, %576
  %582 = phi i32 [ %580, %576 ], [ %557, %559 ]
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %605, label %584, !prof !446

584:                                              ; preds = %581
  %585 = zext i32 %582 to i64
  %586 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %585
  %587 = load i8, ptr %586, align 1, !tbaa !327
  %588 = zext i8 %587 to i64
  %589 = shl nuw nsw i64 %588, 3
  %590 = udiv i64 %263, %589
  %591 = urem i64 %263, %589
  %592 = mul i64 %590, %588
  %593 = add i64 %592, %588
  %594 = shl i64 %593, 3
  %595 = shl nuw i64 %439, 3
  %596 = add i64 %595, %1
  %597 = icmp ult i64 %594, %596
  br i1 %597, label %605, label %598, !prof !446

598:                                              ; preds = %584
  %599 = tail call ptr @get_last_insn() #9
  %600 = tail call ptr @adjust_address_1(ptr noundef nonnull %438, i32 noundef %582, i64 noundef %592, i32 noundef 1, i32 noundef 1) #9
  %601 = tail call ptr @force_reg(i32 noundef %582, ptr noundef %600) #9
  %602 = tail call fastcc ptr @extract_bit_field_1(ptr noundef %601, i64 noundef %1, i64 noundef %591, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %15, i8 noundef zeroext 0) #10
  %603 = icmp eq ptr %602, null
  br i1 %603, label %604, label %611, !prof !447

604:                                              ; preds = %598
  tail call void @delete_insns_since(ptr noundef %599) #9
  br label %605

605:                                              ; preds = %604, %584, %581, %551, %548
  %606 = icmp eq i8 %7, 0
  br i1 %606, label %611, label %607, !prof !494

607:                                              ; preds = %605
  %608 = tail call fastcc ptr @extract_fixed_bit_field(i32 noundef %415, ptr noundef %438, i64 noundef %439, i64 noundef %1, i64 noundef %272, ptr noundef %4, i32 noundef %3) #10
  %609 = trunc i32 %3 to i8
  %610 = tail call fastcc ptr @convert_extracted_bit_field(ptr noundef %608, i32 noundef %5, i32 noundef %15, i8 noundef zeroext %609) #10
  br label %611

611:                                              ; preds = %385, %382, %544, %539, %211, %207, %598, %605, %392, %372, %326, %45, %607, %329, %39
  %612 = phi ptr [ %40, %39 ], [ %330, %329 ], [ %610, %607 ], [ %18, %45 ], [ %327, %326 ], [ %406, %392 ], [ %345, %372 ], [ null, %605 ], [ %602, %598 ], [ %168, %207 ], [ %213, %211 ], [ %495, %539 ], [ %546, %544 ], [ %345, %382 ], [ %345, %385 ]
  ret ptr %612
}

; Function Attrs: optsize
declare ptr @assign_stack_temp(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @operand_subword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_extzv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_extv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @convert_extracted_bit_field(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !443 !PGOFuncName !508 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, %2
  br i1 %8, label %31, label %9, !prof !447

9:                                                ; preds = %4
  %10 = icmp eq i32 %7, %1
  br i1 %10, label %31, label %11

11:                                               ; preds = %9
  %12 = zext i32 %2 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !327
  %15 = and i8 %14, -2
  %16 = icmp eq i8 %15, 2
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %19 = load i8, ptr %18, align 1, !tbaa !327
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 3
  %22 = tail call i32 @mode_for_size(i32 noundef %21, i32 noundef 2, i32 noundef 0) #9
  %23 = zext i8 %3 to i32
  %24 = tail call ptr @convert_to_mode(i32 noundef %22, ptr noundef nonnull %0, i32 noundef %23) #9
  %25 = tail call ptr @force_reg(i32 noundef %22, ptr noundef %24) #9
  %26 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %27 = tail call ptr %26(i32 noundef %2, ptr noundef %25) #9
  br label %31

28:                                               ; preds = %11
  %29 = zext i8 %3 to i32
  %30 = tail call ptr @convert_to_mode(i32 noundef %2, ptr noundef nonnull %0, i32 noundef %29) #9
  br label %31

31:                                               ; preds = %4, %9, %28, %17
  %32 = phi ptr [ %30, %28 ], [ %27, %17 ], [ %0, %9 ], [ %0, %4 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @extract_low_bits(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !509 {
  %4 = icmp eq i32 %0, %1
  br i1 %4, label %69, label %5, !prof !510

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !339
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %29, !prof !511

12:                                               ; preds = %5
  %13 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %1) #9
  %14 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %69, !prof !348

16:                                               ; preds = %12
  %17 = load i32, ptr %2, align 8
  %18 = and i32 %17, 16711680
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %13) #9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %2, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = tail call ptr @force_reg(i32 noundef %26, ptr noundef nonnull %2) #9
  %28 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef %27, i32 noundef %13) #9
  br label %69

29:                                               ; preds = %5
  %30 = zext i32 %0 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !327
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %69, label %34, !prof !512

34:                                               ; preds = %29
  %35 = zext i32 %1 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !327
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %69, label %39, !prof !512

39:                                               ; preds = %34
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %41 = load i8, ptr %40, align 1, !tbaa !327
  %42 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %43 = load i8, ptr %42, align 1, !tbaa !327
  %44 = icmp eq i8 %41, %43
  br i1 %44, label %45, label %51, !prof !512

45:                                               ; preds = %39
  %46 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %0, i32 noundef %1) #9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call ptr @gen_lowpart_common(i32 noundef %0, ptr noundef nonnull %2) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %48, %45, %39
  %52 = tail call i32 @int_mode_for_mode(i32 noundef %1) #9
  %53 = tail call i32 @int_mode_for_mode(i32 noundef %0) #9
  %54 = icmp eq i32 %52, 1
  %55 = icmp eq i32 %53, 1
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %69, label %57, !prof !513

57:                                               ; preds = %51
  %58 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %52, i32 noundef %1) #9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %69, label %60, !prof !512

60:                                               ; preds = %57
  %61 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %53, i32 noundef %0) #9
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %69, label %63, !prof !512

63:                                               ; preds = %60
  %64 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %65 = tail call ptr %64(i32 noundef %52, ptr noundef nonnull %2) #9
  %66 = tail call ptr @convert_modes(i32 noundef %53, i32 noundef %52, ptr noundef %65, i32 noundef 1) #9
  %67 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %68 = tail call ptr %67(i32 noundef %0, ptr noundef %66) #9
  br label %69

69:                                               ; preds = %60, %57, %51, %29, %34, %23, %12, %20, %16, %3, %48, %63
  %70 = phi ptr [ %68, %63 ], [ %49, %48 ], [ %2, %3 ], [ %28, %23 ], [ %14, %12 ], [ null, %20 ], [ null, %16 ], [ null, %34 ], [ null, %29 ], [ null, %51 ], [ null, %57 ], [ null, %60 ]
  ret ptr %70
}

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_subreg(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ix86_modes_tieable_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_inc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !414 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = tail call ptr @expand_binop(i32 noundef %5, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 3) #9
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %6) #9
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_dec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !414 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = tail call ptr @expand_binop(i32 noundef %5, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 3) #9
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %6) #9
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 !prof !425 !PGOFuncName !514 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !515 {
  br label %3

3:                                                ; preds = %168, %2
  %4 = phi ptr [ %1, %2 ], [ %170, %168 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %181 [
    i16 30, label %7
    i16 32, label %36
    i16 33, label %47
    i16 49, label %71
    i16 50, label %79
    i16 51, label %87
    i16 52, label %92
    i16 65, label %100
    i16 68, label %108
    i16 67, label %118
    i16 55, label %128
    i16 59, label %144
    i16 98, label %154
    i16 99, label %154
    i16 35, label %168
    i16 45, label %171
  ], !prof !516

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !327
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 2097152
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = and i64 %12, 65535
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #9
  br label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %19, %18 ], [ %24, %20 ]
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !327
  %30 = icmp ult i8 %29, 8
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %11
  br label %32

32:                                               ; preds = %31, %25, %7
  %33 = phi i64 [ 0, %25 ], [ -1, %31 ], [ 0, %7 ]
  %34 = load i64, ptr %8, align 8, !tbaa !327
  %35 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %34, i64 noundef %33) #9
  br label %69

36:                                               ; preds = %3
  %37 = and i32 %5, 16711680
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br i1 %38, label %40, label %45, !prof !517

40:                                               ; preds = %36
  %41 = load i64, ptr %39, align 8, !tbaa !327
  %42 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load i64, ptr %42, align 8, !tbaa !327
  %44 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %41, i64 noundef %43) #9
  br label %69

45:                                               ; preds = %36
  %46 = tail call ptr @build_real(ptr noundef %0, ptr noundef nonnull byval(%struct.real_value) align 8 %39) #9
  br label %69

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !327
  %50 = load i32, ptr %49, align 8, !tbaa !518
  %51 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !327
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = zext nneg i32 %50 to i64
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ %55, %54 ], [ %59, %56 ]
  %58 = phi ptr [ null, %54 ], [ %64, %56 ]
  %59 = add nsw i64 %57, -1
  %60 = load ptr, ptr %48, align 8, !tbaa !327
  %61 = getelementptr inbounds %struct.rtvec_def, ptr %60, i64 0, i32 1, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !320
  %63 = tail call ptr @make_tree(ptr noundef %52, ptr noundef %62) #10
  %64 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %63, ptr noundef %58) #9
  %65 = icmp ugt i64 %57, 1
  br i1 %65, label %56, label %66, !llvm.loop !520

66:                                               ; preds = %56, %47
  %67 = phi ptr [ null, %47 ], [ %64, %56 ]
  %68 = tail call ptr @build_vector(ptr noundef %0, ptr noundef %67) #9
  br label %69

69:                                               ; preds = %40, %45, %212, %178, %66, %32, %154, %144, %134, %118, %108, %100, %92, %87, %79, %71
  %70 = phi ptr [ %78, %71 ], [ %86, %79 ], [ %91, %87 ], [ %99, %92 ], [ %107, %100 ], [ %117, %108 ], [ %127, %118 ], [ %143, %134 ], [ %153, %144 ], [ %167, %154 ], [ %191, %212 ], [ %180, %178 ], [ %68, %66 ], [ %35, %32 ], [ %44, %40 ], [ %46, %45 ]
  ret ptr %70

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !327
  %74 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %73) #10
  %75 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !327
  %77 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %76) #10
  %78 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %0, ptr noundef %74, ptr noundef %77) #9
  br label %69

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !327
  %82 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %81) #10
  %83 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !327
  %85 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %84) #10
  %86 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %82, ptr noundef %85) #9
  br label %69

87:                                               ; preds = %3
  %88 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !327
  %90 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %89) #10
  %91 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %0, ptr noundef %90) #9
  br label %69

92:                                               ; preds = %3
  %93 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !327
  %95 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %94) #10
  %96 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !327
  %98 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %97) #10
  %99 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %0, ptr noundef %95, ptr noundef %98) #9
  br label %69

100:                                              ; preds = %3
  %101 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !327
  %103 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %102) #10
  %104 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !327
  %106 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %105) #10
  %107 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %0, ptr noundef %103, ptr noundef %106) #9
  br label %69

108:                                              ; preds = %3
  %109 = tail call ptr @unsigned_type_for(ptr noundef %0) #9
  %110 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !327
  %112 = tail call ptr @make_tree(ptr noundef %109, ptr noundef %111) #10
  %113 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !327
  %115 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %114) #10
  %116 = tail call ptr @build2_stat(i32 noundef 84, ptr noundef %109, ptr noundef %112, ptr noundef %115) #9
  %117 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %116) #9
  br label %69

118:                                              ; preds = %3
  %119 = tail call ptr @signed_type_for(ptr noundef %0) #9
  %120 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !327
  %122 = tail call ptr @make_tree(ptr noundef %119, ptr noundef %121) #10
  %123 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !327
  %125 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %124) #10
  %126 = tail call ptr @build2_stat(i32 noundef 84, ptr noundef %119, ptr noundef %122, ptr noundef %125) #9
  %127 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %126) #9
  br label %69

128:                                              ; preds = %3
  %129 = load i64, ptr %0, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 9
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = tail call ptr @signed_type_for(ptr noundef nonnull %0) #9
  br label %134

134:                                              ; preds = %128, %132
  %135 = phi ptr [ %133, %132 ], [ %0, %128 ]
  %136 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !327
  %138 = tail call ptr @make_tree(ptr noundef %135, ptr noundef %137) #10
  %139 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !327
  %141 = tail call ptr @make_tree(ptr noundef %135, ptr noundef %140) #10
  %142 = tail call ptr @build2_stat(i32 noundef 67, ptr noundef %135, ptr noundef %138, ptr noundef %141) #9
  %143 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %142) #9
  br label %69

144:                                              ; preds = %3
  %145 = tail call ptr @unsigned_type_for(ptr noundef %0) #9
  %146 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !327
  %148 = tail call ptr @make_tree(ptr noundef %145, ptr noundef %147) #10
  %149 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !327
  %151 = tail call ptr @make_tree(ptr noundef %145, ptr noundef %150) #10
  %152 = tail call ptr @build2_stat(i32 noundef 67, ptr noundef %145, ptr noundef %148, ptr noundef %151) #9
  %153 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %152) #9
  br label %69

154:                                              ; preds = %3, %3
  %155 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !521
  %156 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !327
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = and i32 %5, 65535
  %162 = icmp eq i32 %161, 99
  %163 = zext i1 %162 to i32
  %164 = tail call ptr %155(i32 noundef %160, i32 noundef %163) #9
  %165 = load ptr, ptr %156, align 8, !tbaa !327
  %166 = tail call ptr @make_tree(ptr noundef %164, ptr noundef %165) #10
  %167 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %166) #9
  br label %69

168:                                              ; preds = %3
  %169 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !327
  br label %3

171:                                              ; preds = %3
  %172 = and i32 %5, 67108864
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %176 = load ptr, ptr %175, align 8, !tbaa !327
  %177 = icmp eq ptr %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %176) #9
  %180 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %179) #9
  br label %69

181:                                              ; preds = %3, %171, %174
  %182 = and i32 %5, 65535
  %183 = add nsw i32 %182, -7
  %184 = icmp ult i32 %183, 4
  br i1 %184, label %185, label %189, !prof !529

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !327
  %188 = tail call i32 @locator_location(i32 noundef %187) #9
  br label %189

189:                                              ; preds = %181, %185
  %190 = phi i32 [ %188, %185 ], [ 0, %181 ]
  %191 = tail call ptr @build_decl_stat(i32 noundef %190, i32 noundef 32, ptr noundef null, ptr noundef %0) #9
  %192 = load i64, ptr %0, align 8
  %193 = trunc i64 %192 to i16
  switch i16 %193, label %212 [
    i16 10, label %194
    i16 12, label %194
  ], !prof !530

194:                                              ; preds = %189, %189
  %195 = and i64 %192, 65535
  %196 = icmp eq i64 %195, 14
  br i1 %196, label %197, label %199, !prof !531

197:                                              ; preds = %194
  %198 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #9
  br label %204

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %201 = load i32, ptr %200, align 4
  %202 = lshr i32 %201, 16
  %203 = and i32 %202, 255
  br label %204

204:                                              ; preds = %199, %197
  %205 = phi i32 [ %198, %197 ], [ %203, %199 ]
  %206 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !327
  %208 = load i64, ptr %207, align 8
  %209 = lshr i64 %208, 56
  %210 = trunc i64 %209 to i8
  %211 = tail call ptr @convert_memory_address_addr_space(i32 noundef %205, ptr noundef nonnull %4, i8 noundef zeroext %210) #9
  br label %212

212:                                              ; preds = %189, %204
  %213 = phi ptr [ %211, %204 ], [ %4, %189 ]
  %214 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %191, i64 0, i32 1
  store ptr %213, ptr %214, align 8, !tbaa !327
  br label %69
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_mult(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !532 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.algorithm, align 4
  %8 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #8
  %9 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %146, label %12, !prof !533

12:                                               ; preds = %5
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %146, label %15, !prof !534

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !320
  %17 = icmp eq ptr %16, %2
  %18 = zext i32 %0 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !327
  %21 = freeze i8 %20
  br i1 %17, label %22, label %32, !prof !535

22:                                               ; preds = %15
  %23 = icmp ne i8 %21, 2
  %24 = icmp ne i32 %4, 0
  %25 = or i1 %24, %23
  %26 = load i32, ptr @flag_trapv, align 4
  %27 = freeze i32 %26
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %25, %28
  %30 = select i1 %29, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65), !prof !536
  %31 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull %30, ptr noundef %1, ptr noundef %3, i32 noundef 0) #9
  br label %146

32:                                               ; preds = %15
  %33 = and i8 %21, -2
  %34 = icmp eq i8 %33, 2
  br i1 %34, label %35, label %109, !prof !537

35:                                               ; preds = %32
  %36 = icmp eq i32 %4, 0
  %37 = load i32, ptr @flag_trapv, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %109, label %40, !prof !538

40:                                               ; preds = %35
  %41 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef 58) #9
  %42 = load i32, ptr %2, align 8
  %43 = trunc i32 %42 to i16
  switch i16 %43, label %109 [
    i16 30, label %44
    i16 32, label %71
  ], !prof !539

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !327
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %90, !prof !540

48:                                               ; preds = %44
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %50 = load i8, ptr %49, align 1, !tbaa !327
  %51 = icmp ugt i8 %50, 8
  br i1 %51, label %52, label %92, !prof !541

52:                                               ; preds = %48
  %53 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef %41, ptr noundef nonnull %2) #9
  %54 = tail call i32 @rtx_cost(ptr noundef %53, i32 noundef 23, i8 noundef zeroext %9) #9
  %55 = zext i8 %9 to i64
  %56 = getelementptr inbounds [2 x [87 x i32]], ptr @neg_cost, i64 0, i64 %55, i64 %18
  %57 = load i32, ptr %56, align 4, !tbaa !339
  %58 = sub nsw i32 %54, %57
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %109

60:                                               ; preds = %52
  %61 = load i64, ptr %45, align 8, !tbaa !327
  %62 = sub nsw i64 0, %61
  %63 = call fastcc zeroext i8 @choose_mult_variant(i32 noundef %0, i64 noundef %62, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %58) #10, !range !359
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %109, label %65

65:                                               ; preds = %60
  %66 = load i64, ptr %45, align 8, !tbaa !327
  %67 = sub nsw i64 0, %66
  %68 = load i32, ptr %6, align 4, !tbaa !339
  %69 = call fastcc ptr @expand_mult_const(i32 noundef %0, ptr noundef %1, i64 noundef %67, ptr noundef null, ptr noundef nonnull %7, i32 noundef %68) #10
  %70 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %69, ptr noundef %3, i32 noundef 0) #9
  br label %146

71:                                               ; preds = %40
  %72 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %73 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load i64, ptr %73, align 8, !tbaa !327
  %75 = icmp eq i64 %74, 0
  %76 = load i64, ptr %72, align 8, !tbaa !327
  %77 = icmp sgt i64 %76, 0
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %92, label %79

79:                                               ; preds = %71
  %80 = icmp eq i64 %76, 0
  %81 = tail call i64 @llvm.ctpop.i64(i64 %74), !range !542
  %82 = icmp ult i64 %81, 2
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = tail call i32 @floor_log2(i64 noundef %74) #9
  %86 = add nsw i32 %85, 64
  %87 = sext i32 %86 to i64
  %88 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %87) #9
  %89 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %1, ptr noundef %88, ptr noundef %3, i32 noundef %4) #10
  br label %146

90:                                               ; preds = %44
  %91 = icmp eq i64 %46, 0
  br i1 %91, label %109, label %92, !prof !543

92:                                               ; preds = %71, %48, %90
  %93 = phi i64 [ %46, %90 ], [ %46, %48 ], [ %76, %71 ]
  %94 = tail call i64 @llvm.ctpop.i64(i64 %93), !range !542
  %95 = icmp ult i64 %94, 2
  br i1 %95, label %96, label %101, !prof !544

96:                                               ; preds = %92
  %97 = tail call i32 @floor_log2(i64 noundef %93) #9
  %98 = sext i32 %97 to i64
  %99 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %98) #9
  %100 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %1, ptr noundef %99, ptr noundef %3, i32 noundef %4) #10
  br label %146

101:                                              ; preds = %92
  %102 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef %41, ptr noundef nonnull %2) #9
  %103 = tail call i32 @rtx_cost(ptr noundef %102, i32 noundef 23, i8 noundef zeroext %9) #9
  %104 = call fastcc zeroext i8 @choose_mult_variant(i32 noundef %0, i64 noundef %93, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %103) #10, !range !359
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %109, label %106, !prof !545

106:                                              ; preds = %101
  %107 = load i32, ptr %6, align 4, !tbaa !339
  %108 = call fastcc ptr @expand_mult_const(i32 noundef %0, ptr noundef %1, i64 noundef %93, ptr noundef %3, ptr noundef nonnull %7, i32 noundef %107) #10
  br label %146

109:                                              ; preds = %40, %79, %52, %60, %101, %90, %32, %35
  %110 = load i32, ptr %1, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %113, label %114, !prof !546

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %109
  %115 = phi ptr [ %1, %113 ], [ %2, %109 ]
  %116 = phi ptr [ %2, %113 ], [ %1, %109 ]
  %117 = load i32, ptr %115, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 32
  %120 = icmp eq i8 %33, 8
  %121 = and i1 %120, %119
  br i1 %121, label %122, label %133, !prof !547

122:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #8
  %123 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %123, i64 32, i1 false), !tbaa.struct !548
  %124 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %8, ptr noundef nonnull @dconst2) #9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %127, !prof !549

126:                                              ; preds = %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #8
  br label %133

127:                                              ; preds = %122
  %128 = load i32, ptr %116, align 8
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = call ptr @force_reg(i32 noundef %130, ptr noundef nonnull %116) #9
  %132 = call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %131, ptr noundef %131, ptr noundef %3, i32 noundef %4, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #8
  br label %146

133:                                              ; preds = %126, %114
  %134 = icmp eq i32 %4, 0
  %135 = load i32, ptr @flag_trapv, align 4
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %134, i1 %136, i1 false
  br i1 %137, label %138, label %141, !prof !550

138:                                              ; preds = %133
  %139 = icmp eq i8 %21, 2
  %140 = select i1 %139, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16)
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), %133 ], [ %140, %138 ]
  %143 = call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %142, ptr noundef %116, ptr noundef nonnull %115, ptr noundef %3, i32 noundef %4, i32 noundef 3) #9
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3253, ptr noundef nonnull @.str.1) #9
  br label %146

146:                                              ; preds = %84, %106, %96, %65, %127, %145, %141, %12, %5, %22
  %147 = phi ptr [ %31, %22 ], [ %132, %127 ], [ %2, %5 ], [ %1, %12 ], [ %143, %141 ], [ null, %145 ], [ %89, %84 ], [ %108, %106 ], [ %100, %96 ], [ %70, %65 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret ptr %147
}

; Function Attrs: optsize
declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @choose_mult_variant(i32 noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #0 !prof !551 !PGOFuncName !552 {
  %6 = alloca %struct.algorithm, align 4
  %7 = alloca %struct.mult_cost, align 2
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %8 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %9 = icmp slt i32 %4, 0
  br i1 %9, label %127, label %10, !prof !553

10:                                               ; preds = %5
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !327
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 4
  %16 = zext i8 %8 to i64
  %17 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %16, i64 %11
  %18 = load i32, ptr %17, align 4, !tbaa !339
  %19 = mul nsw i32 %15, %18
  %20 = icmp slt i32 %19, %4
  br i1 %20, label %21, label %22, !prof !553

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %10
  %23 = phi i32 [ %19, %21 ], [ %4, %10 ]
  store i32 0, ptr %3, align 4, !tbaa !339
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr %7, align 2, !tbaa !554
  %25 = getelementptr inbounds %struct.mult_cost, ptr %7, i64 0, i32 1
  store i16 %24, ptr %25, align 2, !tbaa !557
  call fastcc void @synth_mult(ptr noundef %2, i64 noundef %1, ptr noundef nonnull %7, i32 noundef %0) #10
  %26 = load i8, ptr %12, align 1, !tbaa !327
  %27 = icmp ult i8 %26, 5
  %28 = load i16, ptr %2, align 4, !tbaa !558
  br i1 %27, label %29, label %72, !prof !560

29:                                               ; preds = %22
  %30 = getelementptr inbounds [2 x [87 x i32]], ptr @neg_cost, i64 0, i64 %16, i64 %11
  %31 = load i32, ptr %30, align 4, !tbaa !339
  %32 = sext i16 %28 to i32
  %33 = icmp sgt i32 %23, %32
  br i1 %33, label %34, label %37, !prof !561

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %36 = load i16, ptr %35, align 2, !tbaa !562
  br label %44

37:                                               ; preds = %29
  %38 = icmp eq i32 %23, %32
  br i1 %38, label %39, label %49, !prof !563

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %41 = load i16, ptr %40, align 2, !tbaa !562
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i32 %23, %42
  br i1 %43, label %44, label %49, !prof !564

44:                                               ; preds = %34, %39
  %45 = phi i16 [ %36, %34 ], [ %41, %39 ]
  %46 = trunc i32 %31 to i16
  %47 = sub i16 %28, %46
  store i16 %47, ptr %7, align 2, !tbaa !554
  %48 = sub i16 %45, %46
  br label %53

49:                                               ; preds = %39, %37
  %50 = sub nsw i32 %23, %31
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %7, align 2, !tbaa !554
  %52 = trunc i32 %31 to i16
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i16 [ %52, %49 ], [ %46, %44 ]
  %55 = phi i16 [ %51, %49 ], [ %48, %44 ]
  store i16 %55, ptr %25, align 2, !tbaa !557
  %56 = sub nsw i64 0, %1
  call fastcc void @synth_mult(ptr noundef nonnull %6, i64 noundef %56, ptr noundef nonnull %7, i32 noundef %0) #10
  %57 = load i16, ptr %6, align 4, !tbaa !558
  %58 = add i16 %57, %54
  store i16 %58, ptr %6, align 4, !tbaa !558
  %59 = getelementptr inbounds %struct.mult_cost, ptr %6, i64 0, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !562
  %61 = add i16 %60, %54
  store i16 %61, ptr %59, align 2, !tbaa !562
  %62 = load i16, ptr %2, align 4, !tbaa !558
  %63 = icmp slt i16 %58, %62
  br i1 %63, label %70, label %64, !prof !565

64:                                               ; preds = %53
  %65 = icmp eq i16 %58, %62
  br i1 %65, label %66, label %72, !prof !566

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %68 = load i16, ptr %67, align 2, !tbaa !562
  %69 = icmp slt i16 %61, %68
  br i1 %69, label %70, label %72, !prof !567

70:                                               ; preds = %66, %53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) %6, i64 168, i1 false), !tbaa.struct !568
  store i32 1, ptr %3, align 4, !tbaa !339
  %71 = load i16, ptr %2, align 4, !tbaa !558
  br label %72

72:                                               ; preds = %64, %66, %70, %22
  %73 = phi i16 [ %62, %64 ], [ %58, %66 ], [ %71, %70 ], [ %28, %22 ]
  %74 = load i32, ptr %17, align 4, !tbaa !339
  %75 = sext i16 %73 to i32
  %76 = icmp sgt i32 %23, %75
  br i1 %76, label %77, label %80, !prof !570

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %79 = load i16, ptr %78, align 2, !tbaa !562
  br label %87

80:                                               ; preds = %72
  %81 = icmp eq i32 %23, %75
  br i1 %81, label %82, label %92, !prof !571

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %84 = load i16, ptr %83, align 2, !tbaa !562
  %85 = sext i16 %84 to i32
  %86 = icmp sgt i32 %23, %85
  br i1 %86, label %87, label %92, !prof !564

87:                                               ; preds = %77, %82
  %88 = phi i16 [ %79, %77 ], [ %84, %82 ]
  %89 = trunc i32 %74 to i16
  %90 = sub i16 %73, %89
  store i16 %90, ptr %7, align 2, !tbaa !554
  %91 = sub i16 %88, %89
  br label %96

92:                                               ; preds = %82, %80
  %93 = sub nsw i32 %23, %74
  %94 = trunc i32 %93 to i16
  store i16 %94, ptr %7, align 2, !tbaa !554
  %95 = trunc i32 %74 to i16
  br label %96

96:                                               ; preds = %92, %87
  %97 = phi i16 [ %95, %92 ], [ %89, %87 ]
  %98 = phi i16 [ %94, %92 ], [ %91, %87 ]
  store i16 %98, ptr %25, align 2, !tbaa !557
  %99 = add nsw i64 %1, -1
  call fastcc void @synth_mult(ptr noundef nonnull %6, i64 noundef %99, ptr noundef nonnull %7, i32 noundef %0) #10
  %100 = load i16, ptr %6, align 4, !tbaa !558
  %101 = add i16 %100, %97
  store i16 %101, ptr %6, align 4, !tbaa !558
  %102 = getelementptr inbounds %struct.mult_cost, ptr %6, i64 0, i32 1
  %103 = load i16, ptr %102, align 2, !tbaa !562
  %104 = add i16 %103, %97
  store i16 %104, ptr %102, align 2, !tbaa !562
  %105 = load i16, ptr %2, align 4, !tbaa !558
  %106 = icmp slt i16 %101, %105
  br i1 %106, label %113, label %107, !prof !553

107:                                              ; preds = %96
  %108 = icmp eq i16 %101, %105
  br i1 %108, label %109, label %115, !prof !545

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %111 = load i16, ptr %110, align 2, !tbaa !562
  %112 = icmp slt i16 %104, %111
  br i1 %112, label %113, label %115, !prof !572

113:                                              ; preds = %109, %96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) %6, i64 168, i1 false), !tbaa.struct !568
  store i32 2, ptr %3, align 4, !tbaa !339
  %114 = load i16, ptr %2, align 4, !tbaa !558
  br label %115

115:                                              ; preds = %113, %109, %107
  %116 = phi i16 [ %114, %113 ], [ %101, %109 ], [ %105, %107 ]
  %117 = sext i16 %116 to i32
  %118 = icmp sgt i32 %23, %117
  br i1 %118, label %127, label %119, !prof !570

119:                                              ; preds = %115
  %120 = icmp eq i32 %23, %117
  br i1 %120, label %121, label %127, !prof !571

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %123 = load i16, ptr %122, align 2, !tbaa !562
  %124 = sext i16 %123 to i32
  %125 = icmp sgt i32 %23, %124
  %126 = zext i1 %125 to i8
  br label %127

127:                                              ; preds = %115, %121, %119, %5
  %128 = phi i8 [ 0, %5 ], [ 1, %115 ], [ 0, %119 ], [ %126, %121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %6) #8
  ret i8 %128
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_mult_const(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 !prof !573 !PGOFuncName !574 {
  %7 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %1) #9
  %8 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !339
  switch i32 %9, label %15 [
    i32 1, label %10
    i32 2, label %13
  ], !prof !575

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %12 = tail call ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %11) #9
  br label %16

13:                                               ; preds = %6
  %14 = tail call ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %7) #9
  br label %16

15:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2994, ptr noundef nonnull @.str.1) #9
  br label %16

16:                                               ; preds = %13, %15, %10
  %17 = phi ptr [ %12, %10 ], [ %14, %13 ], [ undef, %15 ]
  %18 = phi i64 [ 0, %10 ], [ 1, %13 ], [ undef, %15 ]
  %19 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 1
  %20 = load i16, ptr %19, align 4, !tbaa !576
  %21 = icmp sgt i16 %20, 1
  br i1 %21, label %22, label %159, !prof !577

22:                                               ; preds = %16
  %23 = zext nneg i16 %20 to i64
  %24 = icmp ne ptr %3, null
  %25 = icmp ne i32 %5, 2
  br label %26

26:                                               ; preds = %22, %147
  %27 = phi i64 [ 1, %22 ], [ %154, %147 ]
  %28 = phi i64 [ %23, %22 ], [ %156, %147 ]
  %29 = phi i64 [ %18, %22 ], [ %135, %147 ]
  %30 = phi ptr [ %17, %22 ], [ %134, %147 ]
  %31 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 3, i64 %27
  %32 = load i8, ptr %31, align 1, !tbaa !327
  %33 = sext i8 %32 to i32
  %34 = load i32, ptr @optimize, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37, !prof !578

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %26, %36
  %38 = phi ptr [ %30, %36 ], [ null, %26 ]
  %39 = add nsw i64 %28, 4294967295
  %40 = and i64 %39, 4294967295
  %41 = icmp eq i64 %27, %40
  %42 = and i1 %24, %41
  %43 = and i1 %25, %42
  %44 = and i1 %43, %35
  %45 = xor i1 %35, true
  %46 = or i1 %43, %45
  %47 = select i1 %44, ptr %3, ptr null, !prof !579
  %48 = select i1 %44, ptr %30, ptr null, !prof !579
  br i1 %46, label %50, label %49, !prof !580

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %37, %49
  %51 = phi ptr [ null, %49 ], [ %47, %37 ]
  %52 = phi ptr [ %30, %49 ], [ %48, %37 ]
  %53 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 2, i64 %27
  %54 = load i32, ptr %53, align 4, !tbaa !339
  switch i32 %54, label %132 [
    i32 3, label %55
    i32 4, label %61
    i32 5, label %72
    i32 8, label %83
    i32 9, label %94
    i32 6, label %105
    i32 7, label %116
  ], !prof !581

55:                                               ; preds = %50
  %56 = sext i8 %32 to i64
  %57 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %56) #9
  %58 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %57, ptr noundef null, i32 noundef 0) #10
  %59 = zext nneg i32 %33 to i64
  %60 = shl i64 %29, %59
  br label %133

61:                                               ; preds = %50
  %62 = sext i8 %32 to i64
  %63 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %62) #9
  %64 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %7, ptr noundef %63, ptr noundef null, i32 noundef 0) #10
  %65 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %30, ptr noundef %64) #9
  %66 = icmp eq ptr %51, null
  %67 = select i1 %66, ptr %52, ptr %51, !prof !582
  %68 = tail call ptr @force_operand(ptr noundef %65, ptr noundef %67) #9
  %69 = zext nneg i32 %33 to i64
  %70 = shl nuw i64 1, %69
  %71 = add nsw i64 %70, %29
  br label %133

72:                                               ; preds = %50
  %73 = sext i8 %32 to i64
  %74 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %73) #9
  %75 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %7, ptr noundef %74, ptr noundef null, i32 noundef 0) #10
  %76 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %30, ptr noundef %75) #9
  %77 = icmp eq ptr %51, null
  %78 = select i1 %77, ptr %52, ptr %51, !prof !583
  %79 = tail call ptr @force_operand(ptr noundef %76, ptr noundef %78) #9
  %80 = zext nneg i32 %33 to i64
  %81 = shl nsw i64 -1, %80
  %82 = add i64 %81, %29
  br label %133

83:                                               ; preds = %50
  %84 = sext i8 %32 to i64
  %85 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %84) #9
  %86 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %85, ptr noundef %38, i32 noundef 0) #10
  %87 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %86, ptr noundef %7) #9
  %88 = icmp eq ptr %51, null
  %89 = select i1 %88, ptr %52, ptr %51, !prof !584
  %90 = tail call ptr @force_operand(ptr noundef %87, ptr noundef %89) #9
  %91 = zext nneg i32 %33 to i64
  %92 = shl i64 %29, %91
  %93 = add nsw i64 %92, 1
  br label %133

94:                                               ; preds = %50
  %95 = sext i8 %32 to i64
  %96 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %95) #9
  %97 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %96, ptr noundef %38, i32 noundef 0) #10
  %98 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %97, ptr noundef %7) #9
  %99 = icmp eq ptr %51, null
  %100 = select i1 %99, ptr %52, ptr %51
  %101 = tail call ptr @force_operand(ptr noundef %98, ptr noundef %100) #9
  %102 = zext nneg i32 %33 to i64
  %103 = shl i64 %29, %102
  %104 = add nsw i64 %103, -1
  br label %133

105:                                              ; preds = %50
  %106 = sext i8 %32 to i64
  %107 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %106) #9
  %108 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %107, ptr noundef null, i32 noundef 0) #10
  %109 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %30, ptr noundef %108) #9
  %110 = icmp eq ptr %51, null
  %111 = select i1 %110, ptr %52, ptr %51, !prof !585
  %112 = tail call ptr @force_operand(ptr noundef %109, ptr noundef %111) #9
  %113 = zext nneg i32 %33 to i64
  %114 = shl i64 %29, %113
  %115 = add nsw i64 %114, %29
  br label %133

116:                                              ; preds = %50
  %117 = sext i8 %32 to i64
  %118 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %117) #9
  %119 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %118, ptr noundef null, i32 noundef 0) #10
  %120 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %119, ptr noundef %30) #9
  %121 = icmp eq ptr %51, null
  br i1 %121, label %122, label %126, !prof !586

122:                                              ; preds = %116
  %123 = load i32, ptr @optimize, align 4, !tbaa !339
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126, !prof !587

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %116, %125, %122
  %127 = phi ptr [ %119, %125 ], [ null, %122 ], [ %51, %116 ]
  %128 = tail call ptr @force_operand(ptr noundef %120, ptr noundef %127) #9
  %129 = zext nneg i32 %33 to i64
  %130 = shl i64 %29, %129
  %131 = sub nsw i64 %130, %29
  br label %133

132:                                              ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3072, ptr noundef nonnull @.str.1) #9
  br label %133

133:                                              ; preds = %132, %126, %105, %94, %83, %72, %61, %55
  %134 = phi ptr [ %30, %132 ], [ %128, %126 ], [ %112, %105 ], [ %101, %94 ], [ %90, %83 ], [ %79, %72 ], [ %68, %61 ], [ %58, %55 ]
  %135 = phi i64 [ %29, %132 ], [ %131, %126 ], [ %115, %105 ], [ %104, %94 ], [ %93, %83 ], [ %82, %72 ], [ %71, %61 ], [ %60, %55 ]
  %136 = load i32, ptr %134, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 39
  br i1 %138, label %139, label %147, !prof !578

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !327
  %142 = load i32, ptr %141, align 8
  %143 = lshr i32 %142, 16
  %144 = and i32 %143, 255
  %145 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %146 = tail call ptr %145(i32 noundef %144, ptr noundef %7) #9
  br label %147

147:                                              ; preds = %139, %133
  %148 = phi ptr [ %146, %139 ], [ %7, %133 ]
  %149 = phi i32 [ %144, %139 ], [ %0, %133 ]
  %150 = tail call ptr @get_last_insn() #9
  %151 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %135) #9
  %152 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %149, ptr noundef %148, ptr noundef %151) #9
  %153 = tail call ptr @set_unique_reg_note(ptr noundef %150, i32 noundef 4, ptr noundef %152) #9
  %154 = add nuw nsw i64 %27, 1
  %155 = load i16, ptr %19, align 4, !tbaa !576
  %156 = sext i16 %155 to i64
  %157 = sext i16 %155 to i64
  %158 = icmp slt i64 %154, %157
  br i1 %158, label %26, label %159, !prof !588, !llvm.loop !589

159:                                              ; preds = %147, %16
  %160 = phi ptr [ %17, %16 ], [ %134, %147 ]
  %161 = phi i64 [ %18, %16 ], [ %135, %147 ]
  switch i32 %5, label %169 [
    i32 1, label %162
    i32 2, label %165
  ], !prof !590

162:                                              ; preds = %159
  %163 = sub nsw i64 0, %161
  %164 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %160, ptr noundef %3, i32 noundef 0) #9
  br label %169

165:                                              ; preds = %159
  %166 = add nsw i64 %161, 1
  %167 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %160, ptr noundef %7) #9
  %168 = tail call ptr @force_operand(ptr noundef %167, ptr noundef %3) #9
  br label %169

169:                                              ; preds = %159, %165, %162
  %170 = phi ptr [ %164, %162 ], [ %168, %165 ], [ %160, %159 ]
  %171 = phi i64 [ %163, %162 ], [ %166, %165 ], [ %161, %159 ]
  %172 = zext i32 %0 to i64
  %173 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %172
  %174 = load i64, ptr %173, align 8, !tbaa !591
  %175 = xor i64 %171, %2
  %176 = and i64 %175, %174
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %179, label %178, !prof !592

178:                                              ; preds = %169
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3108, ptr noundef nonnull @.str.1) #9
  br label %179

179:                                              ; preds = %169, %178
  ret ptr %170
}

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @synth_mult(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !593 !PGOFuncName !594 {
  %5 = alloca %struct.mult_cost, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !327
  %9 = icmp ugt i8 %8, 4
  %10 = zext i8 %8 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = select i1 %9, i32 32, i32 %11, !prof !595
  %13 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %14 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %15 = getelementptr inbounds %struct.mult_cost, ptr %0, i64 0, i32 1
  %16 = load <2 x i16>, ptr %2, align 2, !tbaa !569
  %17 = add <2 x i16> %16, <i16 1, i16 1>
  store <2 x i16> %17, ptr %0, align 4, !tbaa !569
  %18 = load i16, ptr %2, align 2
  %19 = icmp slt i16 %18, 0
  br i1 %19, label %555, label %20, !prof !596

20:                                               ; preds = %4
  %21 = icmp eq i16 %18, 0
  br i1 %21, label %22, label %25, !prof !597

22:                                               ; preds = %20
  %23 = load i16, ptr %14, align 2, !tbaa !557
  %24 = icmp slt i16 %23, 1
  br i1 %24, label %555, label %25, !prof !598

25:                                               ; preds = %22, %20
  %26 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %6
  %27 = load i64, ptr %26, align 8, !tbaa !591
  %28 = and i64 %27, %1
  switch i64 %28, label %47 [
    i64 1, label %29
    i64 0, label %32
  ], !prof !599

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 1
  store i16 1, ptr %30, align 4, !tbaa !576
  store i16 0, ptr %0, align 4, !tbaa !558
  store i16 0, ptr %15, align 2, !tbaa !562
  %31 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 2
  store i32 2, ptr %31, align 4, !tbaa !339
  br label %555

32:                                               ; preds = %25
  %33 = zext nneg i16 %18 to i32
  %34 = zext i8 %13 to i64
  %35 = getelementptr inbounds [2 x i32], ptr @zero_cost, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !339
  %37 = icmp sgt i32 %36, %33
  br i1 %37, label %555, label %38, !prof !600

38:                                               ; preds = %32
  %39 = icmp eq i32 %36, %33
  br i1 %39, label %40, label %43, !prof !600

40:                                               ; preds = %38
  %41 = load i16, ptr %14, align 2, !tbaa !557
  %42 = icmp sgt i16 %18, %41
  br i1 %42, label %555, label %43

43:                                               ; preds = %40, %38
  %44 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 1
  store i16 1, ptr %44, align 4, !tbaa !576
  %45 = trunc i32 %36 to i16
  store i16 %45, ptr %0, align 4, !tbaa !558
  store i16 %45, ptr %15, align 2, !tbaa !562
  %46 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 2
  store i32 1, ptr %46, align 4, !tbaa !339
  br label %555

47:                                               ; preds = %25
  %48 = alloca [168 x i8], align 16
  %49 = alloca [168 x i8], align 16
  %50 = load i16, ptr %14, align 2
  %51 = zext i8 %13 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = xor i32 %52, %3
  %54 = zext i32 %53 to i64
  %55 = xor i64 %28, %54
  %56 = urem i64 %55, 1031
  %57 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !601
  %59 = icmp eq i64 %58, %28
  br i1 %59, label %60, label %95, !prof !603

60:                                               ; preds = %47
  %61 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !604
  %63 = icmp eq i32 %62, %3
  br i1 %63, label %64, label %95, !prof !605

64:                                               ; preds = %60
  %65 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 4
  %66 = load i8, ptr %65, align 4, !tbaa !606
  %67 = icmp eq i8 %66, %13
  br i1 %67, label %68, label %95, !prof !605

68:                                               ; preds = %64
  %69 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !607
  switch i32 %70, label %81 [
    i32 0, label %95
    i32 10, label %71
  ], !prof !608

71:                                               ; preds = %68
  %72 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3
  %73 = load i16, ptr %72, align 8, !tbaa !609
  %74 = icmp slt i16 %73, %18
  br i1 %74, label %95, label %75, !prof !610

75:                                               ; preds = %71
  %76 = icmp eq i16 %73, %18
  br i1 %76, label %77, label %555, !prof !611

77:                                               ; preds = %75
  %78 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3, i32 1
  %79 = load i16, ptr %78, align 2, !tbaa !612
  %80 = icmp slt i16 %79, %50
  br i1 %80, label %95, label %555, !prof !613

81:                                               ; preds = %68
  %82 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3
  %83 = load i16, ptr %82, align 8, !tbaa !609
  %84 = icmp slt i16 %18, %83
  br i1 %84, label %555, label %85, !prof !614

85:                                               ; preds = %81
  %86 = icmp eq i16 %18, %83
  br i1 %86, label %87, label %91, !prof !615

87:                                               ; preds = %85
  %88 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3, i32 1
  %89 = load i16, ptr %88, align 2, !tbaa !612
  %90 = icmp slt i16 %50, %89
  br i1 %90, label %555, label %91, !prof !616

91:                                               ; preds = %87, %85
  switch i32 %70, label %94 [
    i32 3, label %100
    i32 4, label %184
    i32 5, label %184
    i32 6, label %296
    i32 7, label %296
    i32 8, label %92
    i32 9, label %467
  ], !prof !617

92:                                               ; preds = %91
  %93 = add i64 %28, -1
  br label %420

94:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2530, ptr noundef nonnull @.str.1) #9
  br label %95

95:                                               ; preds = %68, %94, %77, %71, %64, %60, %47
  %96 = phi i32 [ 10, %71 ], [ 10, %77 ], [ %70, %94 ], [ 1, %68 ], [ 1, %64 ], [ 1, %60 ], [ 1, %47 ]
  %97 = phi i8 [ 0, %71 ], [ 0, %77 ], [ 1, %94 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %47 ]
  %98 = and i64 %28, 1
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %184, !prof !618

100:                                              ; preds = %95, %91
  %101 = phi i32 [ %96, %95 ], [ %70, %91 ]
  %102 = phi i8 [ %97, %95 ], [ 1, %91 ]
  %103 = sub i64 0, %28
  %104 = and i64 %28, %103
  %105 = tail call i32 @floor_log2(i64 noundef %104) #9
  %106 = icmp slt i32 %105, %12
  br i1 %106, label %107, label %175, !prof !619

107:                                              ; preds = %100
  %108 = zext i32 %105 to i64
  %109 = lshr i64 %28, %108
  %110 = zext i8 %13 to i64
  %111 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %110, i64 %6
  %112 = load i32, ptr %111, align 4, !tbaa !339
  %113 = mul nsw i32 %112, %105
  %114 = sext i32 %105 to i64
  %115 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %110, i64 %6, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !339
  %117 = tail call i32 @llvm.smin.i32(i32 %116, i32 %113)
  %118 = trunc i32 %117 to i16
  %119 = sub i16 %18, %118
  store i16 %119, ptr %5, align 2, !tbaa !554
  %120 = sub i16 %50, %118
  %121 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %120, ptr %121, align 2, !tbaa !557
  call fastcc void @synth_mult(ptr noundef nonnull %48, i64 noundef %109, ptr noundef nonnull %5, i32 noundef %3) #10
  %122 = load i16, ptr %48, align 16, !tbaa !558
  %123 = add i16 %122, %118
  store i16 %123, ptr %48, align 16, !tbaa !558
  %124 = getelementptr inbounds %struct.mult_cost, ptr %48, i64 0, i32 1
  %125 = load i16, ptr %124, align 2, !tbaa !562
  %126 = add i16 %125, %118
  store i16 %126, ptr %124, align 2, !tbaa !562
  %127 = icmp slt i16 %123, %18
  br i1 %127, label %132, label %128, !prof !620

128:                                              ; preds = %107
  %129 = icmp eq i16 %123, %18
  %130 = icmp slt i16 %126, %50
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %141, !prof !621

132:                                              ; preds = %128, %107
  %133 = trunc i32 %105 to i8
  %134 = getelementptr inbounds %struct.algorithm, ptr %48, i64 0, i32 1
  %135 = load i16, ptr %134, align 4, !tbaa !576
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds %struct.algorithm, ptr %48, i64 0, i32 3, i64 %136
  store i8 %133, ptr %137, align 1, !tbaa !327
  %138 = load i16, ptr %134, align 4, !tbaa !576
  %139 = sext i16 %138 to i64
  %140 = getelementptr inbounds %struct.algorithm, ptr %48, i64 0, i32 2, i64 %139
  store i32 3, ptr %140, align 4, !tbaa !339
  br label %141

141:                                              ; preds = %132, %128
  %142 = phi i16 [ %123, %132 ], [ %18, %128 ]
  %143 = phi i16 [ %126, %132 ], [ %50, %128 ]
  %144 = phi ptr [ %48, %132 ], [ %49, %128 ]
  %145 = phi ptr [ %49, %132 ], [ %48, %128 ]
  %146 = icmp slt i64 %1, 0
  br i1 %146, label %147, label %175, !prof !622

147:                                              ; preds = %141
  %148 = ashr i64 %1, %108
  %149 = load i32, ptr %111, align 4, !tbaa !339
  %150 = mul nsw i32 %149, %105
  %151 = load i32, ptr %115, align 4, !tbaa !339
  %152 = tail call i32 @llvm.smin.i32(i32 %151, i32 %150)
  %153 = trunc i32 %152 to i16
  %154 = sub i16 %142, %153
  store i16 %154, ptr %5, align 2, !tbaa !554
  %155 = sub i16 %143, %153
  store i16 %155, ptr %121, align 2, !tbaa !557
  call fastcc void @synth_mult(ptr noundef nonnull %145, i64 noundef %148, ptr noundef nonnull %5, i32 noundef %3) #10
  %156 = load i16, ptr %145, align 16, !tbaa !558
  %157 = add i16 %156, %153
  store i16 %157, ptr %145, align 16, !tbaa !558
  %158 = getelementptr inbounds %struct.mult_cost, ptr %145, i64 0, i32 1
  %159 = load i16, ptr %158, align 2, !tbaa !562
  %160 = add i16 %159, %153
  store i16 %160, ptr %158, align 2, !tbaa !562
  %161 = icmp slt i16 %157, %142
  br i1 %161, label %166, label %162, !prof !623

162:                                              ; preds = %147
  %163 = icmp eq i16 %157, %142
  %164 = icmp slt i16 %160, %143
  %165 = select i1 %163, i1 %164, i1 false
  br i1 %165, label %166, label %175, !prof !624

166:                                              ; preds = %162, %147
  %167 = trunc i32 %105 to i8
  %168 = getelementptr inbounds %struct.algorithm, ptr %145, i64 0, i32 1
  %169 = load i16, ptr %168, align 4, !tbaa !576
  %170 = sext i16 %169 to i64
  %171 = getelementptr inbounds %struct.algorithm, ptr %145, i64 0, i32 3, i64 %170
  store i8 %167, ptr %171, align 1, !tbaa !327
  %172 = load i16, ptr %168, align 4, !tbaa !576
  %173 = sext i16 %172 to i64
  %174 = getelementptr inbounds %struct.algorithm, ptr %145, i64 0, i32 2, i64 %173
  store i32 3, ptr %174, align 4, !tbaa !339
  br label %175

175:                                              ; preds = %141, %166, %162, %100
  %176 = phi i16 [ %157, %166 ], [ %142, %162 ], [ %142, %141 ], [ %18, %100 ]
  %177 = phi i16 [ %160, %166 ], [ %143, %162 ], [ %143, %141 ], [ %50, %100 ]
  %178 = phi ptr [ %145, %166 ], [ %144, %162 ], [ %144, %141 ], [ %49, %100 ]
  %179 = phi ptr [ %144, %166 ], [ %145, %162 ], [ %145, %141 ], [ %48, %100 ]
  %180 = icmp eq i8 %102, 0
  br i1 %180, label %181, label %509, !prof !625

181:                                              ; preds = %175
  %182 = and i64 %28, 1
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %296, label %184, !prof !493

184:                                              ; preds = %95, %181, %91, %91
  %185 = phi i32 [ %101, %181 ], [ %70, %91 ], [ %70, %91 ], [ %96, %95 ]
  %186 = phi i8 [ 0, %181 ], [ 1, %91 ], [ 1, %91 ], [ %97, %95 ]
  %187 = phi i16 [ %176, %181 ], [ %18, %91 ], [ %18, %91 ], [ %18, %95 ]
  %188 = phi i16 [ %177, %181 ], [ %50, %91 ], [ %50, %91 ], [ %50, %95 ]
  %189 = phi ptr [ %178, %181 ], [ %49, %91 ], [ %49, %91 ], [ %49, %95 ]
  %190 = phi ptr [ %179, %181 ], [ %48, %91 ], [ %48, %91 ], [ %48, %95 ]
  br label %191

191:                                              ; preds = %191, %184
  %192 = phi i64 [ 1, %184 ], [ %195, %191 ]
  %193 = and i64 %192, %28
  %194 = icmp eq i64 %193, 0
  %195 = shl i64 %192, 1
  br i1 %194, label %196, label %191, !prof !626, !llvm.loop !627

196:                                              ; preds = %191
  %197 = icmp eq i64 %192, 0
  br i1 %197, label %202, label %198, !prof !628

198:                                              ; preds = %196
  %199 = icmp ugt i64 %192, 2
  %200 = icmp ne i64 %28, 3
  %201 = and i1 %200, %199
  br i1 %201, label %202, label %221, !prof !629

202:                                              ; preds = %198, %196
  %203 = zext i8 %13 to i64
  %204 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %203, i64 %6
  %205 = load i32, ptr %204, align 4, !tbaa !339
  %206 = trunc i32 %205 to i16
  %207 = sub i16 %187, %206
  store i16 %207, ptr %5, align 2, !tbaa !554
  %208 = sub i16 %188, %206
  %209 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %208, ptr %209, align 2, !tbaa !557
  %210 = add i64 %28, 1
  call fastcc void @synth_mult(ptr noundef %190, i64 noundef %210, ptr noundef nonnull %5, i32 noundef %3) #10
  %211 = load i16, ptr %190, align 4, !tbaa !558
  %212 = add i16 %211, %206
  store i16 %212, ptr %190, align 4, !tbaa !558
  %213 = getelementptr inbounds %struct.mult_cost, ptr %190, i64 0, i32 1
  %214 = load i16, ptr %213, align 2, !tbaa !562
  %215 = add i16 %214, %206
  store i16 %215, ptr %213, align 2, !tbaa !562
  %216 = icmp slt i16 %212, %187
  br i1 %216, label %240, label %217, !prof !630

217:                                              ; preds = %202
  %218 = icmp eq i16 %212, %187
  br i1 %218, label %219, label %251, !prof !631

219:                                              ; preds = %217
  %220 = icmp slt i16 %215, %188
  br i1 %220, label %240, label %251

221:                                              ; preds = %198
  %222 = zext i8 %13 to i64
  %223 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %222, i64 %6
  %224 = load i32, ptr %223, align 4, !tbaa !339
  %225 = trunc i32 %224 to i16
  %226 = sub i16 %187, %225
  store i16 %226, ptr %5, align 2, !tbaa !554
  %227 = sub i16 %188, %225
  %228 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %227, ptr %228, align 2, !tbaa !557
  %229 = add i64 %28, -1
  call fastcc void @synth_mult(ptr noundef %190, i64 noundef %229, ptr noundef nonnull %5, i32 noundef %3) #10
  %230 = load i16, ptr %190, align 4, !tbaa !558
  %231 = add i16 %230, %225
  store i16 %231, ptr %190, align 4, !tbaa !558
  %232 = getelementptr inbounds %struct.mult_cost, ptr %190, i64 0, i32 1
  %233 = load i16, ptr %232, align 2, !tbaa !562
  %234 = add i16 %233, %225
  store i16 %234, ptr %232, align 2, !tbaa !562
  %235 = icmp slt i16 %231, %187
  br i1 %235, label %240, label %236, !prof !632

236:                                              ; preds = %221
  %237 = icmp eq i16 %231, %187
  br i1 %237, label %238, label %251, !prof !633

238:                                              ; preds = %236
  %239 = icmp slt i16 %234, %188
  br i1 %239, label %240, label %251

240:                                              ; preds = %221, %238, %202, %219
  %241 = phi i32 [ 5, %219 ], [ 5, %202 ], [ 4, %238 ], [ 4, %221 ]
  %242 = phi i16 [ %212, %219 ], [ %212, %202 ], [ %231, %238 ], [ %231, %221 ]
  %243 = phi i16 [ %215, %219 ], [ %215, %202 ], [ %234, %238 ], [ %234, %221 ]
  %244 = getelementptr inbounds %struct.algorithm, ptr %190, i64 0, i32 1
  %245 = load i16, ptr %244, align 4, !tbaa !576
  %246 = sext i16 %245 to i64
  %247 = getelementptr inbounds %struct.algorithm, ptr %190, i64 0, i32 3, i64 %246
  store i8 0, ptr %247, align 1, !tbaa !327
  %248 = load i16, ptr %244, align 4, !tbaa !576
  %249 = sext i16 %248 to i64
  %250 = getelementptr inbounds %struct.algorithm, ptr %190, i64 0, i32 2, i64 %249
  store i32 %241, ptr %250, align 4, !tbaa !339
  br label %251

251:                                              ; preds = %240, %236, %238, %217, %219
  %252 = phi i16 [ %187, %219 ], [ %187, %217 ], [ %187, %238 ], [ %187, %236 ], [ %242, %240 ]
  %253 = phi i16 [ %188, %219 ], [ %188, %217 ], [ %188, %238 ], [ %188, %236 ], [ %243, %240 ]
  %254 = phi ptr [ %189, %219 ], [ %189, %217 ], [ %189, %238 ], [ %189, %236 ], [ %190, %240 ]
  %255 = phi ptr [ %190, %219 ], [ %190, %217 ], [ %190, %238 ], [ %190, %236 ], [ %189, %240 ]
  %256 = sub i64 1, %1
  %257 = tail call i32 @exact_log2(i64 noundef %256) #9
  %258 = icmp sgt i32 %257, -1
  %259 = icmp slt i32 %257, %12
  %260 = select i1 %258, i1 %259, i1 false
  br i1 %260, label %261, label %290, !prof !634

261:                                              ; preds = %251
  %262 = zext i8 %13 to i64
  %263 = zext nneg i32 %257 to i64
  %264 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub1_cost, i64 0, i64 %262, i64 %6, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !339
  %266 = trunc i32 %265 to i16
  %267 = sub i16 %252, %266
  store i16 %267, ptr %5, align 2, !tbaa !554
  %268 = sub i16 %253, %266
  %269 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %268, ptr %269, align 2, !tbaa !557
  %270 = lshr i64 %256, %263
  call fastcc void @synth_mult(ptr noundef %255, i64 noundef %270, ptr noundef nonnull %5, i32 noundef %3) #10
  %271 = load i16, ptr %255, align 4, !tbaa !558
  %272 = add i16 %271, %266
  store i16 %272, ptr %255, align 4, !tbaa !558
  %273 = getelementptr inbounds %struct.mult_cost, ptr %255, i64 0, i32 1
  %274 = load i16, ptr %273, align 2, !tbaa !562
  %275 = add i16 %274, %266
  store i16 %275, ptr %273, align 2, !tbaa !562
  %276 = icmp slt i16 %272, %252
  br i1 %276, label %281, label %277, !prof !635

277:                                              ; preds = %261
  %278 = icmp eq i16 %272, %252
  br i1 %278, label %279, label %290, !prof !635

279:                                              ; preds = %277
  %280 = icmp slt i16 %275, %253
  br i1 %280, label %281, label %290

281:                                              ; preds = %279, %261
  %282 = trunc i32 %257 to i8
  %283 = getelementptr inbounds %struct.algorithm, ptr %255, i64 0, i32 1
  %284 = load i16, ptr %283, align 4, !tbaa !576
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds %struct.algorithm, ptr %255, i64 0, i32 3, i64 %285
  store i8 %282, ptr %286, align 1, !tbaa !327
  %287 = load i16, ptr %283, align 4, !tbaa !576
  %288 = sext i16 %287 to i64
  %289 = getelementptr inbounds %struct.algorithm, ptr %255, i64 0, i32 2, i64 %288
  store i32 5, ptr %289, align 4, !tbaa !339
  br label %290

290:                                              ; preds = %277, %279, %281, %251
  %291 = phi i16 [ %272, %281 ], [ %252, %279 ], [ %252, %277 ], [ %252, %251 ]
  %292 = phi i16 [ %275, %281 ], [ %253, %279 ], [ %253, %277 ], [ %253, %251 ]
  %293 = phi ptr [ %255, %281 ], [ %254, %279 ], [ %254, %277 ], [ %254, %251 ]
  %294 = phi ptr [ %254, %281 ], [ %255, %279 ], [ %255, %277 ], [ %255, %251 ]
  %295 = icmp eq i8 %186, 0
  br i1 %295, label %296, label %509, !prof !636

296:                                              ; preds = %181, %290, %91, %91
  %297 = phi i32 [ %185, %290 ], [ %101, %181 ], [ %70, %91 ], [ %70, %91 ]
  %298 = phi i1 [ false, %290 ], [ false, %181 ], [ true, %91 ], [ true, %91 ]
  %299 = phi i1 [ true, %290 ], [ true, %181 ], [ false, %91 ], [ false, %91 ]
  %300 = phi i16 [ %291, %290 ], [ %176, %181 ], [ %18, %91 ], [ %18, %91 ]
  %301 = phi i16 [ %292, %290 ], [ %177, %181 ], [ %50, %91 ], [ %50, %91 ]
  %302 = phi ptr [ %293, %290 ], [ %178, %181 ], [ %49, %91 ], [ %49, %91 ]
  %303 = phi ptr [ %294, %290 ], [ %179, %181 ], [ %48, %91 ], [ %48, %91 ]
  %304 = add i64 %28, -1
  %305 = tail call i32 @floor_log2(i64 noundef %304) #9
  %306 = icmp sgt i32 %305, 1
  br i1 %306, label %307, label %412, !prof !637

307:                                              ; preds = %296
  %308 = icmp ne i32 %297, 6
  %309 = and i1 %308, %298
  %310 = icmp ne i32 %297, 7
  %311 = and i1 %310, %298
  %312 = zext nneg i32 %305 to i64
  %313 = zext nneg i32 %12 to i64
  br label %314

314:                                              ; preds = %307, %397
  %315 = phi i64 [ %312, %307 ], [ %398, %397 ]
  %316 = shl nuw i64 1, %315
  %317 = add nuw i64 %316, 1
  %318 = urem i64 %28, %317
  %319 = udiv i64 %28, %317
  %320 = icmp eq i64 %318, 0
  %321 = icmp ugt i64 %28, %317
  %322 = and i1 %321, %320
  %323 = icmp slt i64 %315, %313
  %324 = select i1 %322, i1 %323, i1 false
  %325 = xor i1 %324, true
  %326 = or i1 %309, %325
  br i1 %326, label %357, label %327, !prof !638

327:                                              ; preds = %314
  %328 = zext i8 %13 to i64
  %329 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %328, i64 %6
  %330 = load i32, ptr %329, align 4, !tbaa !339
  %331 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %328, i64 %6, i64 %315
  %332 = load i32, ptr %331, align 4, !tbaa !339
  %333 = add nsw i32 %332, %330
  %334 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %328, i64 %6, i64 %315
  %335 = load i32, ptr %334, align 4, !tbaa !339
  %336 = icmp slt i32 %335, %333
  %337 = select i1 %336, i32 %335, i32 %330, !prof !639
  %338 = tail call i32 @llvm.smin.i32(i32 %335, i32 %333)
  %339 = trunc i32 %338 to i16
  %340 = sub i16 %300, %339
  store i16 %340, ptr %5, align 2, !tbaa !554
  %341 = trunc i32 %337 to i16
  %342 = sub i16 %301, %341
  %343 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %342, ptr %343, align 2, !tbaa !557
  call fastcc void @synth_mult(ptr noundef %303, i64 noundef %319, ptr noundef nonnull %5, i32 noundef %3) #10
  %344 = load i16, ptr %303, align 4, !tbaa !558
  %345 = add i16 %344, %339
  store i16 %345, ptr %303, align 4, !tbaa !558
  %346 = getelementptr inbounds %struct.mult_cost, ptr %303, i64 0, i32 1
  %347 = load i16, ptr %346, align 2, !tbaa !562
  %348 = add i16 %347, %341
  %349 = sext i16 %348 to i32
  %350 = icmp sgt i32 %338, %349
  %351 = select i1 %350, i16 %339, i16 %348, !prof !640
  store i16 %351, ptr %346, align 2, !tbaa !562
  %352 = icmp slt i16 %345, %300
  br i1 %352, label %400, label %353, !prof !641

353:                                              ; preds = %327
  %354 = icmp eq i16 %345, %300
  %355 = icmp slt i16 %351, %301
  %356 = select i1 %354, i1 %355, i1 false
  br i1 %356, label %400, label %412, !prof !642

357:                                              ; preds = %314
  %358 = add i64 %316, -1
  %359 = urem i64 %28, %358
  %360 = udiv i64 %28, %358
  %361 = icmp eq i64 %359, 0
  %362 = icmp ugt i64 %28, %358
  %363 = and i1 %362, %361
  %364 = select i1 %363, i1 %323, i1 false
  %365 = xor i1 %364, true
  %366 = or i1 %311, %365
  br i1 %366, label %397, label %367, !prof !643

367:                                              ; preds = %357
  %368 = zext i8 %13 to i64
  %369 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %368, i64 %6
  %370 = load i32, ptr %369, align 4, !tbaa !339
  %371 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %368, i64 %6, i64 %315
  %372 = load i32, ptr %371, align 4, !tbaa !339
  %373 = add nsw i32 %372, %370
  %374 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %368, i64 %6, i64 %315
  %375 = load i32, ptr %374, align 4, !tbaa !339
  %376 = icmp slt i32 %375, %373
  %377 = select i1 %376, i32 %375, i32 %370, !prof !644
  %378 = tail call i32 @llvm.smin.i32(i32 %375, i32 %373)
  %379 = trunc i32 %378 to i16
  %380 = sub i16 %300, %379
  store i16 %380, ptr %5, align 2, !tbaa !554
  %381 = trunc i32 %377 to i16
  %382 = sub i16 %301, %381
  %383 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %382, ptr %383, align 2, !tbaa !557
  call fastcc void @synth_mult(ptr noundef %303, i64 noundef %360, ptr noundef nonnull %5, i32 noundef %3) #10
  %384 = load i16, ptr %303, align 4, !tbaa !558
  %385 = add i16 %384, %379
  store i16 %385, ptr %303, align 4, !tbaa !558
  %386 = getelementptr inbounds %struct.mult_cost, ptr %303, i64 0, i32 1
  %387 = load i16, ptr %386, align 2, !tbaa !562
  %388 = add i16 %387, %381
  %389 = sext i16 %388 to i32
  %390 = icmp sgt i32 %378, %389
  %391 = select i1 %390, i16 %379, i16 %388, !prof !645
  store i16 %391, ptr %386, align 2, !tbaa !562
  %392 = icmp slt i16 %385, %300
  br i1 %392, label %400, label %393, !prof !644

393:                                              ; preds = %367
  %394 = icmp eq i16 %385, %300
  %395 = icmp slt i16 %391, %301
  %396 = select i1 %394, i1 %395, i1 false
  br i1 %396, label %400, label %412, !prof !646

397:                                              ; preds = %357
  %398 = add nsw i64 %315, -1
  %399 = icmp sgt i64 %315, 2
  br i1 %399, label %314, label %412, !prof !647, !llvm.loop !648

400:                                              ; preds = %367, %393, %327, %353
  %401 = phi i32 [ 6, %353 ], [ 6, %327 ], [ 7, %393 ], [ 7, %367 ]
  %402 = phi i16 [ %345, %353 ], [ %345, %327 ], [ %385, %393 ], [ %385, %367 ]
  %403 = phi i16 [ %351, %353 ], [ %351, %327 ], [ %391, %393 ], [ %391, %367 ]
  %404 = trunc i64 %315 to i8
  %405 = getelementptr inbounds %struct.algorithm, ptr %303, i64 0, i32 1
  %406 = load i16, ptr %405, align 4, !tbaa !576
  %407 = sext i16 %406 to i64
  %408 = getelementptr inbounds %struct.algorithm, ptr %303, i64 0, i32 3, i64 %407
  store i8 %404, ptr %408, align 1, !tbaa !327
  %409 = load i16, ptr %405, align 4, !tbaa !576
  %410 = sext i16 %409 to i64
  %411 = getelementptr inbounds %struct.algorithm, ptr %303, i64 0, i32 2, i64 %410
  store i32 %401, ptr %411, align 4, !tbaa !339
  br label %412

412:                                              ; preds = %397, %400, %296, %393, %353
  %413 = phi i16 [ %300, %393 ], [ %300, %353 ], [ %300, %296 ], [ %402, %400 ], [ %300, %397 ]
  %414 = phi i16 [ %301, %393 ], [ %301, %353 ], [ %301, %296 ], [ %403, %400 ], [ %301, %397 ]
  %415 = phi ptr [ %302, %393 ], [ %302, %353 ], [ %302, %296 ], [ %303, %400 ], [ %302, %397 ]
  %416 = phi ptr [ %303, %393 ], [ %303, %353 ], [ %303, %296 ], [ %302, %400 ], [ %303, %397 ]
  br i1 %299, label %417, label %509, !prof !649

417:                                              ; preds = %412
  %418 = and i64 %28, 1
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %509, label %420, !prof !618

420:                                              ; preds = %92, %417
  %421 = phi i64 [ %93, %92 ], [ %304, %417 ]
  %422 = phi i1 [ false, %92 ], [ true, %417 ]
  %423 = phi i16 [ %18, %92 ], [ %413, %417 ]
  %424 = phi i16 [ %50, %92 ], [ %414, %417 ]
  %425 = phi ptr [ %49, %92 ], [ %415, %417 ]
  %426 = phi ptr [ %48, %92 ], [ %416, %417 ]
  %427 = sub i64 1, %28
  %428 = and i64 %421, %427
  %429 = tail call i32 @exact_log2(i64 noundef %428) #9
  %430 = icmp sgt i32 %429, -1
  %431 = icmp slt i32 %429, %12
  %432 = select i1 %430, i1 %431, i1 false
  br i1 %432, label %433, label %462, !prof !650

433:                                              ; preds = %420
  %434 = zext i8 %13 to i64
  %435 = zext nneg i32 %429 to i64
  %436 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %434, i64 %6, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !339
  %438 = trunc i32 %437 to i16
  %439 = sub i16 %423, %438
  store i16 %439, ptr %5, align 2, !tbaa !554
  %440 = sub i16 %424, %438
  %441 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %440, ptr %441, align 2, !tbaa !557
  %442 = lshr i64 %421, %435
  call fastcc void @synth_mult(ptr noundef %426, i64 noundef %442, ptr noundef nonnull %5, i32 noundef %3) #10
  %443 = load i16, ptr %426, align 4, !tbaa !558
  %444 = add i16 %443, %438
  store i16 %444, ptr %426, align 4, !tbaa !558
  %445 = getelementptr inbounds %struct.mult_cost, ptr %426, i64 0, i32 1
  %446 = load i16, ptr %445, align 2, !tbaa !562
  %447 = add i16 %446, %438
  store i16 %447, ptr %445, align 2, !tbaa !562
  %448 = icmp slt i16 %444, %423
  br i1 %448, label %453, label %449, !prof !651

449:                                              ; preds = %433
  %450 = icmp eq i16 %444, %423
  br i1 %450, label %451, label %462, !prof !652

451:                                              ; preds = %449
  %452 = icmp slt i16 %447, %424
  br i1 %452, label %453, label %462

453:                                              ; preds = %451, %433
  %454 = trunc i32 %429 to i8
  %455 = getelementptr inbounds %struct.algorithm, ptr %426, i64 0, i32 1
  %456 = load i16, ptr %455, align 4, !tbaa !576
  %457 = sext i16 %456 to i64
  %458 = getelementptr inbounds %struct.algorithm, ptr %426, i64 0, i32 3, i64 %457
  store i8 %454, ptr %458, align 1, !tbaa !327
  %459 = load i16, ptr %455, align 4, !tbaa !576
  %460 = sext i16 %459 to i64
  %461 = getelementptr inbounds %struct.algorithm, ptr %426, i64 0, i32 2, i64 %460
  store i32 8, ptr %461, align 4, !tbaa !339
  br label %462

462:                                              ; preds = %449, %451, %453, %420
  %463 = phi i16 [ %444, %453 ], [ %423, %451 ], [ %423, %449 ], [ %423, %420 ]
  %464 = phi i16 [ %447, %453 ], [ %424, %451 ], [ %424, %449 ], [ %424, %420 ]
  %465 = phi ptr [ %426, %453 ], [ %425, %451 ], [ %425, %449 ], [ %425, %420 ]
  %466 = phi ptr [ %425, %453 ], [ %426, %451 ], [ %426, %449 ], [ %426, %420 ]
  br i1 %422, label %467, label %509, !prof !653

467:                                              ; preds = %462, %91
  %468 = phi i8 [ 0, %462 ], [ 1, %91 ]
  %469 = phi i16 [ %463, %462 ], [ %18, %91 ]
  %470 = phi i16 [ %464, %462 ], [ %50, %91 ]
  %471 = phi ptr [ %465, %462 ], [ %49, %91 ]
  %472 = phi ptr [ %466, %462 ], [ %48, %91 ]
  %473 = add i64 %28, 1
  %474 = xor i64 %28, -1
  %475 = and i64 %473, %474
  %476 = tail call i32 @exact_log2(i64 noundef %475) #9
  %477 = icmp sgt i32 %476, -1
  %478 = icmp slt i32 %476, %12
  %479 = select i1 %477, i1 %478, i1 false
  br i1 %479, label %480, label %509, !prof !654

480:                                              ; preds = %467
  %481 = zext i8 %13 to i64
  %482 = zext nneg i32 %476 to i64
  %483 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %481, i64 %6, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !339
  %485 = trunc i32 %484 to i16
  %486 = sub i16 %469, %485
  store i16 %486, ptr %5, align 2, !tbaa !554
  %487 = sub i16 %470, %485
  %488 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %487, ptr %488, align 2, !tbaa !557
  %489 = lshr i64 %473, %482
  call fastcc void @synth_mult(ptr noundef %472, i64 noundef %489, ptr noundef nonnull %5, i32 noundef %3) #10
  %490 = load i16, ptr %472, align 4, !tbaa !558
  %491 = add i16 %490, %485
  store i16 %491, ptr %472, align 4, !tbaa !558
  %492 = getelementptr inbounds %struct.mult_cost, ptr %472, i64 0, i32 1
  %493 = load i16, ptr %492, align 2, !tbaa !562
  %494 = add i16 %493, %485
  store i16 %494, ptr %492, align 2, !tbaa !562
  %495 = icmp slt i16 %491, %469
  br i1 %495, label %500, label %496, !prof !655

496:                                              ; preds = %480
  %497 = icmp eq i16 %491, %469
  br i1 %497, label %498, label %509, !prof !655

498:                                              ; preds = %496
  %499 = icmp slt i16 %494, %470
  br i1 %499, label %500, label %509

500:                                              ; preds = %498, %480
  %501 = trunc i32 %476 to i8
  %502 = getelementptr inbounds %struct.algorithm, ptr %472, i64 0, i32 1
  %503 = load i16, ptr %502, align 4, !tbaa !576
  %504 = sext i16 %503 to i64
  %505 = getelementptr inbounds %struct.algorithm, ptr %472, i64 0, i32 3, i64 %504
  store i8 %501, ptr %505, align 1, !tbaa !327
  %506 = load i16, ptr %502, align 4, !tbaa !576
  %507 = sext i16 %506 to i64
  %508 = getelementptr inbounds %struct.algorithm, ptr %472, i64 0, i32 2, i64 %507
  store i32 9, ptr %508, align 4, !tbaa !339
  br label %509

509:                                              ; preds = %467, %500, %498, %496, %417, %462, %412, %290, %175
  %510 = phi i8 [ 1, %175 ], [ 1, %290 ], [ 1, %412 ], [ 1, %462 ], [ %468, %500 ], [ %468, %498 ], [ %468, %496 ], [ %468, %467 ], [ 0, %417 ]
  %511 = phi i16 [ %176, %175 ], [ %291, %290 ], [ %413, %412 ], [ %463, %462 ], [ %491, %500 ], [ %469, %498 ], [ %469, %496 ], [ %469, %467 ], [ %413, %417 ]
  %512 = phi i16 [ %177, %175 ], [ %292, %290 ], [ %414, %412 ], [ %464, %462 ], [ %494, %500 ], [ %470, %498 ], [ %470, %496 ], [ %470, %467 ], [ %414, %417 ]
  %513 = phi ptr [ %178, %175 ], [ %293, %290 ], [ %415, %412 ], [ %465, %462 ], [ %472, %500 ], [ %471, %498 ], [ %471, %496 ], [ %471, %467 ], [ %415, %417 ]
  %514 = load i16, ptr %2, align 2, !tbaa !554
  %515 = icmp slt i16 %511, %514
  br i1 %515, label %527, label %516, !prof !656

516:                                              ; preds = %509
  %517 = icmp eq i16 %511, %514
  br i1 %517, label %518, label %521, !prof !657

518:                                              ; preds = %516
  %519 = load i16, ptr %14, align 2, !tbaa !557
  %520 = icmp slt i16 %512, %519
  br i1 %520, label %527, label %521, !prof !658

521:                                              ; preds = %518, %516
  store i64 %28, ptr %57, align 8, !tbaa !601
  %522 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 1
  store i32 %3, ptr %522, align 8, !tbaa !604
  %523 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 4
  store i8 %13, ptr %523, align 4, !tbaa !606
  %524 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 2
  store i32 10, ptr %524, align 4, !tbaa !607
  %525 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3
  %526 = load i32, ptr %2, align 2
  store i32 %526, ptr %525, align 8
  br label %555

527:                                              ; preds = %518, %509
  %528 = icmp eq i8 %510, 0
  br i1 %528, label %532, label %529, !prof !659

529:                                              ; preds = %527
  %530 = getelementptr inbounds %struct.algorithm, ptr %513, i64 0, i32 1
  %531 = load i16, ptr %530, align 4, !tbaa !576
  br label %543

532:                                              ; preds = %527
  store i64 %28, ptr %57, align 8, !tbaa !601
  %533 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 1
  store i32 %3, ptr %533, align 8, !tbaa !604
  %534 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 4
  store i8 %13, ptr %534, align 4, !tbaa !606
  %535 = getelementptr inbounds %struct.algorithm, ptr %513, i64 0, i32 1
  %536 = load i16, ptr %535, align 4, !tbaa !576
  %537 = sext i16 %536 to i64
  %538 = getelementptr inbounds %struct.algorithm, ptr %513, i64 0, i32 2, i64 %537
  %539 = load i32, ptr %538, align 4, !tbaa !339
  %540 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 2
  store i32 %539, ptr %540, align 4, !tbaa !607
  %541 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3
  store i16 %511, ptr %541, align 8, !tbaa !609
  %542 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3, i32 1
  store i16 %512, ptr %542, align 2, !tbaa !612
  br label %543

543:                                              ; preds = %529, %532
  %544 = phi i16 [ %531, %529 ], [ %536, %532 ]
  %545 = icmp eq i16 %544, 32
  br i1 %545, label %555, label %546, !prof !660

546:                                              ; preds = %543
  %547 = add i16 %544, 1
  %548 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 1
  store i16 %547, ptr %548, align 4, !tbaa !576
  store i16 %511, ptr %0, align 4, !tbaa.struct !661
  store i16 %512, ptr %15, align 2, !tbaa.struct !662
  %549 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 2
  %550 = getelementptr inbounds %struct.algorithm, ptr %513, i64 0, i32 2
  %551 = sext i16 %547 to i64
  %552 = shl nsw i64 %551, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %549, ptr nonnull align 4 %550, i64 %552, i1 false)
  %553 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 3
  %554 = getelementptr inbounds %struct.algorithm, ptr %513, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %553, ptr nonnull align 4 %554, i64 %551, i1 false)
  br label %555

555:                                              ; preds = %543, %81, %87, %75, %77, %32, %40, %4, %22, %546, %521, %43, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret void
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ceil_log2(i64 noundef %0) local_unnamed_addr #0 !prof !663 {
  %2 = add i64 %0, -1
  %3 = tail call i32 @floor_log2(i64 noundef %2) #9
  %4 = add nsw i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_mult_highpart_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !414 {
  %7 = icmp eq i32 %5, 0
  %8 = select i1 %7, i32 50, i32 49
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !327
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = add nsw i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %15) #9
  %17 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %2, ptr noundef %16, ptr noundef null, i32 noundef 0) #10
  %18 = tail call ptr @expand_and(i32 noundef %0, ptr noundef %17, ptr noundef %3, ptr noundef null) #10
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %8, i32 noundef %0, ptr noundef %1, ptr noundef %18) #9
  %20 = tail call ptr @force_operand(ptr noundef %19, ptr noundef %1) #9
  %21 = load i8, ptr %10, align 1, !tbaa !327
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 3
  %24 = add nsw i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %25) #9
  %27 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %3, ptr noundef %26, ptr noundef null, i32 noundef 0) #10
  %28 = tail call ptr @expand_and(i32 noundef %0, ptr noundef %27, ptr noundef %2, ptr noundef null) #10
  %29 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %8, i32 noundef %0, ptr noundef %20, ptr noundef %28) #9
  %30 = tail call ptr @force_operand(ptr noundef %29, ptr noundef %4) #9
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_and(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !664 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 16711680
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15, !prof !665

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = tail call ptr @simplify_binary_operation(i32 noundef 61, i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17, !prof !543

15:                                               ; preds = %4, %8, %12
  %16 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 3) #9
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %16, %15 ], [ %13, %12 ]
  %19 = icmp eq ptr %3, null
  br i1 %19, label %24, label %20, !prof !666

20:                                               ; preds = %17
  %21 = icmp eq ptr %18, %3
  br i1 %21, label %24, label %22, !prof !667

22:                                               ; preds = %20
  %23 = tail call ptr @emit_move_insn(ptr noundef nonnull %3, ptr noundef %18) #9
  br label %24

24:                                               ; preds = %17, %20, %22
  %25 = phi ptr [ %3, %22 ], [ %3, %20 ], [ %18, %17 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_divmod(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !668 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %18 = load i32, ptr %4, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 30
  br i1 %20, label %21, label %43, !prof !669

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !327
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %32, label %25, !prof !670

25:                                               ; preds = %21
  %26 = zext i32 %2 to i64
  %27 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !591
  %29 = and i64 %28, %23
  %30 = tail call i64 @llvm.ctpop.i64(i64 %29), !range !542
  %31 = icmp ult i64 %30, 2
  br label %40

32:                                               ; preds = %21
  %33 = tail call i64 @llvm.ctpop.i64(i64 %23), !range !542
  %34 = icmp ult i64 %33, 2
  br i1 %34, label %40, label %35, !prof !671

35:                                               ; preds = %32
  %36 = sub nsw i64 0, %23
  %37 = xor i64 %23, -1
  %38 = and i64 %36, %37
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %25, %32, %35
  %41 = phi i1 [ true, %32 ], [ %39, %35 ], [ %31, %25 ]
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %40, %7
  %44 = phi i32 [ %42, %40 ], [ 0, %7 ]
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %46 = icmp eq ptr %45, %4
  br i1 %46, label %47, label %51, !prof !672

47:                                               ; preds = %43
  %48 = icmp eq i32 %0, 0
  %49 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %50 = select i1 %48, ptr %3, ptr %49
  br label %1112

51:                                               ; preds = %43
  %52 = icmp eq i32 %6, 0
  %53 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %54 = icmp eq ptr %53, %4
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %73, !prof !673

56:                                               ; preds = %51
  %57 = icmp eq i32 %0, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  br label %1112

60:                                               ; preds = %56
  %61 = load i32, ptr @flag_trapv, align 4, !tbaa !339
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = zext i32 %2 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !327
  %67 = freeze i8 %66
  %68 = icmp eq i8 %67, 2
  %69 = select i1 %68, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64)
  br label %70

70:                                               ; preds = %63, %60
  %71 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), %60 ], [ %69, %63 ]
  %72 = tail call ptr @expand_unop(i32 noundef %2, ptr noundef nonnull %71, ptr noundef %3, ptr noundef %5, i32 noundef 0) #9
  br label %1112

73:                                               ; preds = %51
  %74 = icmp eq ptr %5, null
  br i1 %74, label %105, label %75, !prof !674

75:                                               ; preds = %73
  %76 = load i32, ptr %5, align 8
  %77 = and i32 %76, -2147418113
  %78 = icmp eq i32 %77, -2147483611
  br i1 %78, label %104, label %79, !prof !675

79:                                               ; preds = %75
  %80 = icmp ne i32 %0, 0
  %81 = or i1 %80, %20
  br i1 %81, label %82, label %93, !prof !676

82:                                               ; preds = %79
  %83 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %5, ptr noundef %3) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %104, !prof !677

85:                                               ; preds = %82
  %86 = load i32, ptr %3, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 43
  br i1 %88, label %89, label %93, !prof !678

89:                                               ; preds = %85
  %90 = load i32, ptr %5, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 43
  br i1 %92, label %104, label %93, !prof !679

93:                                               ; preds = %79, %89, %85
  %94 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104, !prof !680

96:                                               ; preds = %93
  %97 = load i32, ptr %4, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 43
  br i1 %99, label %100, label %105, !prof !681

100:                                              ; preds = %96
  %101 = load i32, ptr %5, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 43
  br i1 %103, label %104, label %105, !prof !682

104:                                              ; preds = %75, %100, %93, %89, %82
  br label %105

105:                                              ; preds = %104, %100, %96, %73
  %106 = phi ptr [ null, %104 ], [ %5, %100 ], [ %5, %96 ], [ null, %73 ]
  %107 = icmp eq i32 %44, 0
  %108 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %109 = icmp eq ptr %108, %4
  %110 = select i1 %107, i1 true, i1 %109
  %111 = select i1 %52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45)
  %112 = select i1 %52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34)
  %113 = select i1 %110, ptr %112, ptr %111, !prof !683
  %114 = select i1 %52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35)
  %115 = select i1 %110, ptr %114, ptr %111, !prof !683
  %116 = icmp eq i32 %2, 0
  br i1 %116, label %146, label %117, !prof !684

117:                                              ; preds = %105, %127
  %118 = phi i32 [ %131, %127 ], [ %2, %105 ]
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.optab_d, ptr %113, i64 0, i32 4, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !367
  %122 = icmp eq i32 %121, 2956
  br i1 %122, label %123, label %146, !prof !685

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.optab_d, ptr %115, i64 0, i32 4, i64 %119
  %125 = load i32, ptr %124, align 4, !tbaa !367
  %126 = icmp eq i32 %125, 2956
  br i1 %126, label %127, label %146, !prof !686

127:                                              ; preds = %123
  %128 = zext i32 %118 to i64
  %129 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !327
  %131 = zext i8 %130 to i32
  %132 = icmp eq i8 %130, 0
  br i1 %132, label %133, label %117, !prof !687, !llvm.loop !688

133:                                              ; preds = %127, %140
  %134 = phi i32 [ %144, %140 ], [ %2, %127 ]
  %135 = tail call ptr @optab_libfunc(ptr noundef nonnull %113, i32 noundef %134) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %146, !prof !689

137:                                              ; preds = %133
  %138 = tail call ptr @optab_libfunc(ptr noundef nonnull %115, i32 noundef %134) #9
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = zext i32 %134 to i64
  %142 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !327
  %144 = zext i8 %143 to i32
  %145 = icmp eq i8 %143, 0
  br i1 %145, label %146, label %133, !prof !690, !llvm.loop !691

146:                                              ; preds = %123, %117, %140, %133, %137, %105
  %147 = phi i32 [ 0, %105 ], [ %2, %140 ], [ %134, %133 ], [ %134, %137 ], [ %118, %117 ], [ %118, %123 ]
  %148 = icmp eq ptr %106, null
  br i1 %148, label %154, label %149, !prof !692

149:                                              ; preds = %146
  %150 = load i32, ptr %106, align 8
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = icmp eq i32 %152, %147
  br i1 %153, label %156, label %154, !prof !693

154:                                              ; preds = %149, %146
  %155 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %156

156:                                              ; preds = %149, %154
  %157 = phi ptr [ %155, %154 ], [ %106, %149 ]
  %158 = zext i32 %147 to i64
  %159 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !327
  %161 = zext i8 %160 to i32
  %162 = shl nuw nsw i32 %161, 3
  %163 = zext i8 %17 to i64
  %164 = getelementptr inbounds [2 x [87 x i32]], ptr @udiv_cost, i64 0, i64 %163, i64 %158
  %165 = getelementptr inbounds [2 x [87 x i32]], ptr @sdiv_cost, i64 0, i64 %163, i64 %158
  %166 = select i1 %52, ptr %165, ptr %164, !prof !694
  %167 = load i32, ptr %166, align 4, !tbaa !339
  %168 = icmp ne i32 %0, 0
  br i1 %168, label %169, label %184, !prof !695

169:                                              ; preds = %156
  %170 = load i64, ptr @expand_divmod.last_div_const, align 8, !tbaa !591
  %171 = icmp ne i64 %170, 0
  %172 = and i1 %20, %171
  br i1 %172, label %173, label %177, !prof !696

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %175 = load i64, ptr %174, align 8, !tbaa !327
  %176 = icmp eq i64 %175, %170
  br i1 %176, label %188, label %177, !prof !697

177:                                              ; preds = %173, %169
  %178 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_cost, i64 0, i64 %163, i64 %158
  %179 = load i32, ptr %178, align 4, !tbaa !339
  %180 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %163, i64 %158
  %181 = load i32, ptr %180, align 4, !tbaa !339
  %182 = add i32 %179, %181
  %183 = sub i32 %167, %182
  br label %188

184:                                              ; preds = %156
  br i1 %20, label %185, label %188, !prof !698

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %187 = load i64, ptr %186, align 8, !tbaa !327
  br label %188

188:                                              ; preds = %173, %177, %184, %185
  %189 = phi i32 [ %167, %185 ], [ %167, %184 ], [ %183, %177 ], [ %167, %173 ]
  %190 = phi i64 [ %187, %185 ], [ 0, %184 ], [ 0, %177 ], [ 0, %173 ]
  store i64 %190, ptr @expand_divmod.last_div_const, align 8, !tbaa !591
  %191 = icmp eq i32 %147, %2
  br i1 %191, label %213, label %192, !prof !699

192:                                              ; preds = %188
  %193 = tail call ptr @convert_modes(i32 noundef %147, i32 noundef %2, ptr noundef %3, i32 noundef %6) #9
  %194 = tail call ptr @convert_modes(i32 noundef %147, i32 noundef %2, ptr noundef nonnull %4, i32 noundef %6) #9
  %195 = load i32, ptr %194, align 8
  %196 = and i32 %195, 65535
  %197 = icmp eq i32 %196, 30
  br i1 %197, label %198, label %210

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1
  %200 = load i64, ptr %199, align 8, !tbaa !327
  %201 = tail call i64 @llvm.ctpop.i64(i64 %200), !range !542
  %202 = icmp ult i64 %201, 2
  %203 = xor i1 %52, true
  %204 = or i1 %202, %203
  br i1 %204, label %210, label %205

205:                                              ; preds = %198
  %206 = sub nsw i64 0, %200
  %207 = xor i64 %200, -1
  %208 = and i64 %206, %207
  %209 = icmp eq i64 %208, 0
  br label %210

210:                                              ; preds = %198, %205, %192
  %211 = phi i1 [ false, %192 ], [ %202, %198 ], [ %209, %205 ]
  %212 = zext i1 %211 to i32
  br label %213

213:                                              ; preds = %210, %188
  %214 = phi i32 [ %212, %210 ], [ %44, %188 ]
  %215 = phi i1 [ %197, %210 ], [ %20, %188 ]
  %216 = phi ptr [ %194, %210 ], [ %4, %188 ]
  %217 = phi ptr [ %193, %210 ], [ %3, %188 ]
  %218 = load i32, ptr %217, align 8
  %219 = and i32 %218, 134283263
  %220 = icmp eq i32 %219, 134217771
  br i1 %220, label %221, label %223, !prof !700

221:                                              ; preds = %213
  %222 = tail call ptr @force_reg(i32 noundef %147, ptr noundef nonnull %217) #9
  br label %223

223:                                              ; preds = %221, %213
  %224 = phi ptr [ %222, %221 ], [ %217, %213 ]
  %225 = load i32, ptr %216, align 8
  %226 = and i32 %225, 134283263
  %227 = icmp eq i32 %226, 134217771
  br i1 %227, label %228, label %230, !prof !701

228:                                              ; preds = %223
  %229 = tail call ptr @force_reg(i32 noundef %147, ptr noundef nonnull %216) #9
  br label %230

230:                                              ; preds = %228, %223
  %231 = phi ptr [ %229, %228 ], [ %216, %223 ]
  %232 = or i1 %168, %215
  br i1 %232, label %233, label %235, !prof !702

233:                                              ; preds = %230
  %234 = tail call ptr @force_reg(i32 noundef %147, ptr noundef %224) #9
  br label %235

235:                                              ; preds = %230, %233
  %236 = phi ptr [ %234, %233 ], [ %224, %230 ]
  %237 = tail call ptr @get_last_insn() #9
  br i1 %52, label %244, label %238, !prof !694

238:                                              ; preds = %235
  switch i32 %1, label %243 [
    i32 69, label %244
    i32 73, label %242
    i32 76, label %239
  ], !prof !703

239:                                              ; preds = %238
  %240 = icmp eq i32 %214, 0
  %241 = select i1 %240, i32 76, i32 67
  br label %244

242:                                              ; preds = %238
  br label %244

243:                                              ; preds = %238
  br label %244

244:                                              ; preds = %238, %243, %242, %239, %235
  %245 = phi i32 [ %1, %235 ], [ %241, %239 ], [ 67, %238 ], [ 71, %242 ], [ %1, %243 ]
  %246 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %247 = icmp eq ptr %231, %246
  br i1 %247, label %1034, label %248, !prof !672

248:                                              ; preds = %244
  switch i32 %245, label %1028 [
    i32 71, label %249
    i32 67, label %249
    i32 69, label %599
    i32 73, label %599
    i32 68, label %762
    i32 72, label %762
    i32 76, label %958
    i32 70, label %979
    i32 74, label %979
  ], !prof !704

249:                                              ; preds = %248, %248
  br i1 %215, label %250, label %597, !prof !705

250:                                              ; preds = %249
  %251 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  br i1 %52, label %382, label %252, !prof !706

252:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %253 = load i64, ptr %251, align 8, !tbaa !327
  %254 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %158
  %255 = load i64, ptr %254, align 8, !tbaa !591
  %256 = and i64 %255, %253
  %257 = tail call i64 @llvm.ctpop.i64(i64 %256), !range !542
  %258 = icmp ult i64 %257, 2
  br i1 %258, label %259, label %272, !prof !707

259:                                              ; preds = %252
  %260 = tail call i32 @floor_log2(i64 noundef %256) #9
  br i1 %168, label %261, label %268

261:                                              ; preds = %259
  %262 = zext nneg i32 %260 to i64
  %263 = shl nsw i64 -1, %262
  %264 = xor i64 %263, -1
  %265 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %264) #9
  %266 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %236, ptr noundef %265, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %379

268:                                              ; preds = %261, %259
  %269 = sext i32 %260 to i64
  %270 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %269) #9
  %271 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %270, ptr noundef %157, i32 noundef 1) #10
  br label %350

272:                                              ; preds = %252
  %273 = icmp ult i8 %160, 9
  br i1 %273, label %274, label %376, !prof !708

274:                                              ; preds = %272
  %275 = add nsw i32 %162, -1
  %276 = zext nneg i32 %275 to i64
  %277 = lshr i64 %256, %276
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %281, label %279, !prof !708

279:                                              ; preds = %274
  %280 = tail call ptr @emit_store_flag_force(ptr noundef %157, i32 noundef 86, ptr noundef %236, ptr noundef nonnull %231, i32 noundef %147, i32 noundef 1, i32 noundef 1) #10
  br label %350

281:                                              ; preds = %274
  %282 = call fastcc i64 @choose_multiplier(i64 noundef %256, i32 noundef %162, i32 noundef %162, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %283 = icmp ne i64 %282, 0
  %284 = and i64 %256, 1
  %285 = icmp eq i64 %284, 0
  %286 = and i1 %285, %283
  br i1 %286, label %287, label %297, !prof !709

287:                                              ; preds = %281
  %288 = sub i64 0, %256
  %289 = and i64 %256, %288
  %290 = tail call i32 @floor_log2(i64 noundef %289) #9
  %291 = zext nneg i32 %290 to i64
  %292 = lshr i64 %256, %291
  %293 = sub nsw i32 %162, %290
  %294 = call fastcc i64 @choose_multiplier(i64 noundef %292, i32 noundef %162, i32 noundef %293, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %327, label %296, !prof !710

296:                                              ; preds = %287
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4096, ptr noundef nonnull @.str.1) #9
  br label %299

297:                                              ; preds = %281
  %298 = icmp eq i64 %282, 0
  br i1 %298, label %327, label %299, !prof !711

299:                                              ; preds = %296, %297
  %300 = load i32, ptr %8, align 4, !tbaa !339
  %301 = icmp sgt i32 %300, 32
  br i1 %301, label %378, label %302, !prof !348

302:                                              ; preds = %299
  %303 = add nsw i32 %300, -1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !339
  %307 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 1
  %308 = load i32, ptr %307, align 4, !tbaa !339
  %309 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %163, i64 %158
  %310 = load i32, ptr %309, align 4, !tbaa !339
  %311 = load ptr, ptr %10, align 8, !tbaa !320
  %312 = add i32 %306, %308
  %313 = shl i32 %310, 1
  %314 = add i32 %312, %313
  %315 = sub i32 %189, %314
  %316 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %147, ptr noundef %236, ptr noundef %311, i32 noundef 1, i32 noundef %315) #10
  %317 = icmp eq ptr %316, null
  br i1 %317, label %378, label %318, !prof !348

318:                                              ; preds = %302
  %319 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %236, ptr noundef nonnull %316) #9
  %320 = tail call ptr @force_operand(ptr noundef %319, ptr noundef null) #9
  %321 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 1) #9
  %322 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %320, ptr noundef %321, ptr noundef null, i32 noundef 1) #10
  %323 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef nonnull %316, ptr noundef %322) #9
  %324 = tail call ptr @force_operand(ptr noundef %323, ptr noundef null) #9
  %325 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %304) #9
  %326 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %324, ptr noundef %325, ptr noundef %157, i32 noundef 1) #10
  br label %350

327:                                              ; preds = %287, %297
  %328 = phi i32 [ 0, %297 ], [ %290, %287 ]
  %329 = icmp sgt i32 %328, 31
  %330 = load i32, ptr %8, align 4
  %331 = icmp sgt i32 %330, 31
  %332 = select i1 %329, i1 true, i1 %331
  br i1 %332, label %378, label %333, !prof !712

333:                                              ; preds = %327
  %334 = sext i32 %328 to i64
  %335 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %334) #9
  %336 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %335, ptr noundef null, i32 noundef 1) #10
  %337 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %334
  %338 = load i32, ptr %337, align 4, !tbaa !339
  %339 = sext i32 %330 to i64
  %340 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !339
  %342 = load ptr, ptr %10, align 8, !tbaa !320
  %343 = add i32 %338, %341
  %344 = sub i32 %189, %343
  %345 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %147, ptr noundef %336, ptr noundef %342, i32 noundef 1, i32 noundef %344) #10
  %346 = icmp eq ptr %345, null
  br i1 %346, label %378, label %347, !prof !713

347:                                              ; preds = %333
  %348 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %339) #9
  %349 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef nonnull %345, ptr noundef %348, ptr noundef %157, i32 noundef 1) #10
  br label %350

350:                                              ; preds = %347, %318, %279, %268
  %351 = phi ptr [ %271, %268 ], [ %280, %279 ], [ %326, %318 ], [ %349, %347 ]
  %352 = tail call ptr @get_last_insn() #9
  %353 = icmp eq ptr %352, %237
  br i1 %353, label %376, label %354, !prof !714

354:                                              ; preds = %350
  %355 = load i32, ptr %352, align 8
  %356 = and i32 %355, 65535
  %357 = add nsw i32 %356, -7
  %358 = icmp ult i32 %357, 4
  br i1 %358, label %359, label %376, !prof !715

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.rtx_def, ptr %352, i64 1
  %361 = load ptr, ptr %360, align 8, !tbaa !327
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %362, 65535
  %364 = icmp eq i32 %363, 23
  br i1 %364, label %368, label %365

365:                                              ; preds = %359
  %366 = tail call ptr @single_set_2(ptr noundef nonnull %352, ptr noundef nonnull %361) #9
  %367 = icmp eq ptr %366, null
  br i1 %367, label %376, label %368, !prof !716

368:                                              ; preds = %359, %365
  %369 = phi ptr [ %366, %365 ], [ %361, %359 ]
  %370 = getelementptr inbounds %struct.rtx_def, ptr %369, i64 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !327
  %372 = icmp eq ptr %371, %351
  br i1 %372, label %373, label %376, !prof !717

373:                                              ; preds = %368
  %374 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %147, ptr noundef %236, ptr noundef nonnull %231) #9
  %375 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %352, i32 noundef 4, ptr noundef %374) #9
  br label %376

376:                                              ; preds = %272, %373, %368, %365, %350, %354
  %377 = phi ptr [ %351, %350 ], [ %351, %365 ], [ %351, %368 ], [ %351, %373 ], [ null, %272 ], [ %351, %354 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %1029

378:                                              ; preds = %299, %302, %327, %333
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %597

379:                                              ; preds = %261
  %380 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %381 = tail call ptr %380(i32 noundef %2, ptr noundef nonnull %266) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %1112

382:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  %383 = load i64, ptr %251, align 8, !tbaa !327
  %384 = tail call i64 @llvm.abs.i64(i64 %383, i1 false)
  %385 = icmp slt i64 %383, 0
  %386 = select i1 %168, i1 %385, i1 false
  br i1 %386, label %387, label %389, !prof !718

387:                                              ; preds = %382
  %388 = tail call ptr @gen_int_mode(i64 noundef %384, i32 noundef %147) #9
  br label %389

389:                                              ; preds = %387, %382
  %390 = phi i64 [ %384, %387 ], [ %383, %382 ]
  %391 = phi ptr [ %388, %387 ], [ %231, %382 ]
  switch i64 %390, label %394 [
    i64 1, label %565
    i64 -1, label %392
  ], !prof !719

392:                                              ; preds = %389
  %393 = tail call ptr @expand_unop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %236, ptr noundef %157, i32 noundef 0) #9
  br label %565

394:                                              ; preds = %389
  %395 = icmp ult i8 %160, 9
  br i1 %395, label %396, label %404, !prof !720

396:                                              ; preds = %394
  %397 = add nsw i32 %162, -1
  %398 = zext nneg i32 %397 to i64
  %399 = shl nuw i64 1, %398
  %400 = icmp eq i64 %384, %399
  br i1 %400, label %401, label %404, !prof !721

401:                                              ; preds = %396
  %402 = tail call ptr @emit_store_flag(ptr noundef %157, i32 noundef 81, ptr noundef %236, ptr noundef %391, i32 noundef %147, i32 noundef 1, i32 noundef 1) #10
  %403 = icmp eq ptr %402, null
  br i1 %403, label %593, label %565

404:                                              ; preds = %396, %394
  %405 = tail call i64 @llvm.ctpop.i64(i64 %390), !range !542
  %406 = icmp ult i64 %405, 2
  br i1 %406, label %407, label %426, !prof !722

407:                                              ; preds = %404
  br i1 %168, label %408, label %412, !prof !541

408:                                              ; preds = %407
  %409 = getelementptr inbounds [2 x [87 x i8]], ptr @smod_pow2_cheap, i64 0, i64 %163, i64 %158
  %410 = load i8, ptr %409, align 1, !tbaa !327
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %429, label %416, !prof !723

412:                                              ; preds = %407
  %413 = getelementptr inbounds [2 x [87 x i8]], ptr @sdiv_pow2_cheap, i64 0, i64 %163, i64 %158
  %414 = load i8, ptr %413, align 1, !tbaa !327
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %432, label %416, !prof !724

416:                                              ; preds = %412, %408
  %417 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), %412 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), %408 ]
  %418 = sext i32 %147 to i64
  %419 = getelementptr inbounds %struct.optab_d, ptr %417, i64 0, i32 4, i64 %418
  %420 = load i32, ptr %419, align 4, !tbaa !367
  %421 = icmp eq i32 %420, 2956
  br i1 %421, label %422, label %565, !prof !725

422:                                              ; preds = %416
  %423 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 %418
  %424 = load i32, ptr %423, align 4, !tbaa !367
  %425 = icmp eq i32 %424, 2956
  br i1 %425, label %426, label %565, !prof !726

426:                                              ; preds = %422, %404
  %427 = tail call i64 @llvm.ctpop.i64(i64 %384), !range !542
  %428 = icmp ult i64 %427, 2
  br i1 %428, label %435, label %491, !prof !727

429:                                              ; preds = %408
  %430 = tail call i64 @llvm.ctpop.i64(i64 %384), !range !542
  %431 = icmp ult i64 %430, 2
  br i1 %431, label %436, label %491, !prof !727

432:                                              ; preds = %412
  %433 = tail call i64 @llvm.ctpop.i64(i64 %384), !range !542
  %434 = icmp ult i64 %433, 2
  br i1 %434, label %439, label %491, !prof !727

435:                                              ; preds = %426
  br i1 %168, label %436, label %439, !prof !728

436:                                              ; preds = %429, %435
  %437 = tail call fastcc ptr @expand_smod_pow2(i32 noundef %147, ptr noundef %236, i64 noundef %390) #10
  %438 = icmp eq ptr %437, null
  br i1 %438, label %439, label %594, !prof !729

439:                                              ; preds = %432, %436, %435
  %440 = getelementptr inbounds [2 x [87 x i8]], ptr @sdiv_pow2_cheap, i64 0, i64 %163, i64 %158
  %441 = load i8, ptr %440, align 1, !tbaa !327
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %455, label %443, !prof !730

443:                                              ; preds = %439
  %444 = sext i32 %147 to i64
  %445 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 %444
  %446 = load i32, ptr %445, align 4, !tbaa !367
  %447 = icmp eq i32 %446, 2956
  br i1 %447, label %448, label %452, !prof !731

448:                                              ; preds = %443
  %449 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 %444
  %450 = load i32, ptr %449, align 4, !tbaa !367
  %451 = icmp eq i32 %450, 2956
  br i1 %451, label %455, label %452, !prof !432

452:                                              ; preds = %448, %443
  %453 = tail call ptr @gen_int_mode(i64 noundef %384, i32 noundef %147) #9
  %454 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef %147, ptr noundef %236, ptr noundef %453, ptr noundef null, i32 noundef 0) #10
  br label %457

455:                                              ; preds = %448, %439
  %456 = tail call fastcc ptr @expand_sdiv_pow2(i32 noundef %147, ptr noundef %236, i64 noundef %384) #10
  br label %457

457:                                              ; preds = %455, %452
  %458 = phi ptr [ %454, %452 ], [ %456, %455 ]
  %459 = icmp slt i64 %390, 0
  br i1 %459, label %460, label %565, !prof !732

460:                                              ; preds = %457
  %461 = tail call ptr @get_last_insn() #9
  %462 = icmp eq ptr %461, %237
  br i1 %462, label %489, label %463, !prof !733

463:                                              ; preds = %460
  %464 = load i32, ptr %461, align 8
  %465 = and i32 %464, 65535
  %466 = add nsw i32 %465, -7
  %467 = icmp ult i32 %466, 4
  br i1 %467, label %468, label %489, !prof !734

468:                                              ; preds = %463
  %469 = getelementptr inbounds %struct.rtx_def, ptr %461, i64 1
  %470 = load ptr, ptr %469, align 8, !tbaa !327
  %471 = load i32, ptr %470, align 8
  %472 = and i32 %471, 65535
  %473 = icmp eq i32 %472, 23
  br i1 %473, label %477, label %474

474:                                              ; preds = %468
  %475 = tail call ptr @single_set_2(ptr noundef nonnull %461, ptr noundef nonnull %470) #9
  %476 = icmp eq ptr %475, null
  br i1 %476, label %489, label %477, !prof !735

477:                                              ; preds = %468, %474
  %478 = phi ptr [ %475, %474 ], [ %470, %468 ]
  %479 = getelementptr inbounds %struct.rtx_def, ptr %478, i64 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !327
  %481 = icmp eq ptr %480, %458
  %482 = icmp sgt i64 %384, -1
  %483 = select i1 %481, i1 %482, i1 false
  br i1 %483, label %484, label %489, !prof !736

484:                                              ; preds = %477
  %485 = tail call i64 @trunc_int_for_mode(i64 noundef %384, i32 noundef %147) #9
  %486 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %485) #9
  %487 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %147, ptr noundef %236, ptr noundef %486) #9
  %488 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %461, i32 noundef 4, ptr noundef %487) #9
  br label %489

489:                                              ; preds = %463, %484, %477, %474, %460
  %490 = tail call ptr @expand_unop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %458, ptr noundef %458, i32 noundef 0) #9
  br label %565

491:                                              ; preds = %429, %432, %426
  br i1 %395, label %492, label %591, !prof !737

492:                                              ; preds = %491
  %493 = add nsw i32 %162, -1
  %494 = call fastcc i64 @choose_multiplier(i64 noundef %384, i32 noundef %162, i32 noundef %493, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %11) #10
  %495 = load ptr, ptr %13, align 8, !tbaa !320
  %496 = getelementptr inbounds %struct.rtx_def, ptr %495, i64 0, i32 1
  %497 = load i64, ptr %496, align 8, !tbaa !327
  %498 = zext i32 %493 to i64
  %499 = lshr i64 %497, %498
  %500 = icmp eq i64 %499, 0
  %501 = load i32, ptr %12, align 4, !tbaa !339
  %502 = icmp sgt i32 %501, 31
  %503 = icmp ugt i8 %160, 4
  %504 = select i1 %502, i1 true, i1 %503
  br i1 %500, label %505, label %532, !prof !738

505:                                              ; preds = %492
  br i1 %504, label %593, label %506, !prof !739

506:                                              ; preds = %505
  %507 = sext i32 %501 to i64
  %508 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %507
  %509 = load i32, ptr %508, align 4, !tbaa !339
  %510 = sext i32 %493 to i64
  %511 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !339
  %513 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %163, i64 %158
  %514 = load i32, ptr %513, align 4, !tbaa !339
  %515 = add i32 %509, %512
  %516 = add i32 %515, %514
  %517 = sub i32 %189, %516
  %518 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %147, ptr noundef %236, ptr noundef nonnull %495, i32 noundef 0, i32 noundef %517) #10
  %519 = icmp eq ptr %518, null
  br i1 %519, label %593, label %520, !prof !740

520:                                              ; preds = %506
  %521 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %507) #9
  %522 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef nonnull %518, ptr noundef %521, ptr noundef null, i32 noundef 0) #10
  %523 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %510) #9
  %524 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %523, ptr noundef null, i32 noundef 0) #10
  %525 = icmp slt i64 %390, 0
  br i1 %525, label %526, label %529, !prof !741

526:                                              ; preds = %520
  %527 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %524, ptr noundef %522) #9
  %528 = tail call ptr @force_operand(ptr noundef %527, ptr noundef %157) #9
  br label %565

529:                                              ; preds = %520
  %530 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %522, ptr noundef %524) #9
  %531 = tail call ptr @force_operand(ptr noundef %530, ptr noundef %157) #9
  br label %565

532:                                              ; preds = %492
  br i1 %504, label %593, label %533, !prof !742

533:                                              ; preds = %532
  %534 = shl nsw i64 -1, %498
  %535 = or i64 %497, %534
  %536 = tail call ptr @gen_int_mode(i64 noundef %535, i32 noundef %147) #9
  %537 = sext i32 %501 to i64
  %538 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %537
  %539 = load i32, ptr %538, align 4, !tbaa !339
  %540 = sext i32 %493 to i64
  %541 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %540
  %542 = load i32, ptr %541, align 4, !tbaa !339
  %543 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %163, i64 %158
  %544 = load i32, ptr %543, align 4, !tbaa !339
  %545 = add i32 %539, %542
  %546 = shl i32 %544, 1
  %547 = add i32 %545, %546
  %548 = sub i32 %189, %547
  %549 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %147, ptr noundef %236, ptr noundef %536, i32 noundef 0, i32 noundef %548) #10
  %550 = icmp eq ptr %549, null
  br i1 %550, label %593, label %551

551:                                              ; preds = %533
  %552 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef nonnull %549, ptr noundef %236) #9
  %553 = tail call ptr @force_operand(ptr noundef %552, ptr noundef null) #9
  %554 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %537) #9
  %555 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %553, ptr noundef %554, ptr noundef null, i32 noundef 0) #10
  %556 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %540) #9
  %557 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %556, ptr noundef null, i32 noundef 0) #10
  %558 = icmp slt i64 %390, 0
  br i1 %558, label %559, label %562

559:                                              ; preds = %551
  %560 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %557, ptr noundef %555) #9
  %561 = tail call ptr @force_operand(ptr noundef %560, ptr noundef %157) #9
  br label %565

562:                                              ; preds = %551
  %563 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %555, ptr noundef %557) #9
  %564 = tail call ptr @force_operand(ptr noundef %563, ptr noundef %157) #9
  br label %565

565:                                              ; preds = %559, %562, %526, %529, %389, %392, %422, %416, %457, %489, %401
  %566 = phi ptr [ %393, %392 ], [ %402, %401 ], [ null, %416 ], [ null, %422 ], [ %490, %489 ], [ %458, %457 ], [ %236, %389 ], [ %531, %529 ], [ %528, %526 ], [ %564, %562 ], [ %561, %559 ]
  %567 = tail call ptr @get_last_insn() #9
  %568 = icmp eq ptr %567, %237
  br i1 %568, label %591, label %569, !prof !743

569:                                              ; preds = %565
  %570 = load i32, ptr %567, align 8
  %571 = and i32 %570, 65535
  %572 = add nsw i32 %571, -7
  %573 = icmp ult i32 %572, 4
  br i1 %573, label %574, label %591, !prof !744

574:                                              ; preds = %569
  %575 = getelementptr inbounds %struct.rtx_def, ptr %567, i64 1
  %576 = load ptr, ptr %575, align 8, !tbaa !327
  %577 = load i32, ptr %576, align 8
  %578 = and i32 %577, 65535
  %579 = icmp eq i32 %578, 23
  br i1 %579, label %583, label %580, !prof !731

580:                                              ; preds = %574
  %581 = tail call ptr @single_set_2(ptr noundef nonnull %567, ptr noundef nonnull %576) #9
  %582 = icmp eq ptr %581, null
  br i1 %582, label %591, label %583, !prof !745

583:                                              ; preds = %574, %580
  %584 = phi ptr [ %581, %580 ], [ %576, %574 ]
  %585 = getelementptr inbounds %struct.rtx_def, ptr %584, i64 0, i32 1
  %586 = load ptr, ptr %585, align 8, !tbaa !327
  %587 = icmp eq ptr %586, %566
  br i1 %587, label %588, label %591, !prof !746

588:                                              ; preds = %583
  %589 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %147, ptr noundef %236, ptr noundef %391) #9
  %590 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %567, i32 noundef 4, ptr noundef %589) #9
  br label %591

591:                                              ; preds = %491, %588, %583, %580, %565, %569
  %592 = phi ptr [ %566, %565 ], [ %566, %580 ], [ %566, %583 ], [ %566, %588 ], [ null, %491 ], [ %566, %569 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %1029

593:                                              ; preds = %401, %505, %506, %532, %533
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %597

594:                                              ; preds = %436
  %595 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %596 = tail call ptr %595(i32 noundef %2, ptr noundef nonnull %437) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %1112

597:                                              ; preds = %593, %378, %249
  %598 = phi ptr [ %231, %249 ], [ %231, %378 ], [ %391, %593 ]
  tail call void @delete_insns_since(ptr noundef %237) #9
  br label %1034

599:                                              ; preds = %248, %248
  %600 = icmp ult i8 %160, 9
  %601 = select i1 %215, i1 %600, i1 false
  br i1 %601, label %602, label %679

602:                                              ; preds = %599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  %603 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %604 = load i64, ptr %603, align 8, !tbaa !327
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  %605 = icmp sgt i64 %604, 0
  br i1 %605, label %606, label %655

606:                                              ; preds = %602
  %607 = tail call i64 @llvm.ctpop.i64(i64 %604), !range !747
  %608 = icmp ult i64 %607, 2
  br i1 %608, label %609, label %622

609:                                              ; preds = %606
  %610 = tail call i32 @floor_log2(i64 noundef %604) #9
  br i1 %168, label %611, label %618

611:                                              ; preds = %609
  %612 = zext nneg i32 %610 to i64
  %613 = shl nsw i64 -1, %612
  %614 = xor i64 %613, -1
  %615 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %614) #9
  %616 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %236, ptr noundef %615, ptr noundef null, i32 noundef 0, i32 noundef 3) #9
  %617 = icmp eq ptr %616, null
  br i1 %617, label %618, label %672

618:                                              ; preds = %611, %609
  %619 = sext i32 %610 to i64
  %620 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %619) #9
  %621 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %620, ptr noundef %157, i32 noundef 0) #10
  br label %676

622:                                              ; preds = %606
  %623 = add nsw i32 %162, -1
  %624 = call fastcc i64 @choose_multiplier(i64 noundef %604, i32 noundef %162, i32 noundef %623, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef nonnull %14) #10
  %625 = icmp eq i64 %624, 0
  br i1 %625, label %627, label %626

626:                                              ; preds = %622
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4398, ptr noundef nonnull @.str.1) #9
  br label %627

627:                                              ; preds = %622, %626
  %628 = load i32, ptr %15, align 4, !tbaa !339
  %629 = icmp slt i32 %628, 32
  %630 = icmp ult i8 %160, 5
  %631 = select i1 %629, i1 %630, i1 false
  br i1 %631, label %632, label %675

632:                                              ; preds = %627
  %633 = sext i32 %623 to i64
  %634 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %633) #9
  %635 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %634, ptr noundef null, i32 noundef 0) #10
  %636 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %236, ptr noundef %635, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %637 = sext i32 %628 to i64
  %638 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %637
  %639 = load i32, ptr %638, align 4, !tbaa !339
  %640 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %633
  %641 = load i32, ptr %640, align 4, !tbaa !339
  %642 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %163, i64 %158
  %643 = load i32, ptr %642, align 4, !tbaa !339
  %644 = load ptr, ptr %16, align 8, !tbaa !320
  %645 = add i32 %639, %641
  %646 = shl i32 %643, 1
  %647 = add i32 %645, %646
  %648 = sub i32 %189, %647
  %649 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %147, ptr noundef %636, ptr noundef %644, i32 noundef 1, i32 noundef %648) #10
  %650 = icmp eq ptr %649, null
  br i1 %650, label %675, label %651

651:                                              ; preds = %632
  %652 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %637) #9
  %653 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef nonnull %649, ptr noundef %652, ptr noundef null, i32 noundef 1) #10
  %654 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %653, ptr noundef %635, ptr noundef %157, i32 noundef 0, i32 noundef 2) #9
  br label %676

655:                                              ; preds = %602
  %656 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !320
  %657 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef %236, ptr noundef %656) #9
  %658 = tail call ptr @force_operand(ptr noundef %657, ptr noundef null) #9
  %659 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %236, ptr noundef %658, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %660 = add nsw i32 %162, -1
  %661 = sext i32 %660 to i64
  %662 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %661) #9
  %663 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %659, ptr noundef %662, ptr noundef null, i32 noundef 0) #10
  %664 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %658, ptr noundef %663) #9
  %665 = tail call ptr @force_operand(ptr noundef %664, ptr noundef null) #9
  %666 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef %147, ptr noundef %665, ptr noundef nonnull %231, ptr noundef null, i32 noundef 0) #10
  %667 = icmp eq ptr %666, null
  br i1 %667, label %675, label %668

668:                                              ; preds = %655
  %669 = tail call ptr @expand_unop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %663, ptr noundef null, i32 noundef 0) #9
  %670 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef nonnull %666, ptr noundef %669) #9
  %671 = tail call ptr @force_operand(ptr noundef %670, ptr noundef %157) #9
  br label %676

672:                                              ; preds = %611
  %673 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %674 = tail call ptr %673(i32 noundef %2, ptr noundef nonnull %616) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  br label %1112

675:                                              ; preds = %655, %627, %632
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  br label %679

676:                                              ; preds = %668, %651, %618
  %677 = phi ptr [ %671, %668 ], [ %654, %651 ], [ %621, %618 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  %678 = icmp eq ptr %677, null
  br i1 %678, label %679, label %1081

679:                                              ; preds = %599, %675, %676
  tail call void @delete_insns_since(ptr noundef %237) #9
  br i1 %148, label %685, label %680

680:                                              ; preds = %679
  %681 = load i32, ptr %106, align 8
  %682 = lshr i32 %681, 16
  %683 = and i32 %682, 255
  %684 = icmp eq i32 %683, %147
  br i1 %684, label %687, label %685

685:                                              ; preds = %680, %679
  %686 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %687

687:                                              ; preds = %685, %680
  %688 = phi ptr [ %686, %685 ], [ %106, %680 ]
  %689 = load i32, ptr %688, align 8
  %690 = and i32 %689, 65535
  %691 = icmp eq i32 %690, 37
  br i1 %168, label %692, label %698

692:                                              ; preds = %687
  br i1 %691, label %695, label %693

693:                                              ; preds = %692
  %694 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %695

695:                                              ; preds = %692, %693
  %696 = phi ptr [ %694, %693 ], [ %688, %692 ]
  %697 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %704

698:                                              ; preds = %687
  br i1 %691, label %701, label %699

699:                                              ; preds = %698
  %700 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %701

701:                                              ; preds = %698, %699
  %702 = phi ptr [ %700, %699 ], [ %688, %698 ]
  %703 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %704

704:                                              ; preds = %701, %695
  %705 = phi ptr [ %696, %695 ], [ %702, %701 ]
  %706 = phi ptr [ %696, %695 ], [ %703, %701 ]
  %707 = phi ptr [ %697, %695 ], [ %702, %701 ]
  %708 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr noundef %236, ptr noundef %231, ptr noundef %707, ptr noundef %706, i32 noundef 0) #9
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %719, label %710

710:                                              ; preds = %704
  %711 = tail call ptr @gen_label_rtx() #9
  %712 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %706, ptr noundef %712, i32 noundef 81, i32 noundef %147, ptr noundef %711) #10
  %713 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %236, ptr noundef %231, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %714 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %713, ptr noundef %714, i32 noundef 82, i32 noundef %147, ptr noundef %711) #10
  %715 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_dec(ptr noundef %707, ptr noundef %715) #10
  tail call void @expand_inc(ptr noundef %706, ptr noundef %231) #10
  %716 = tail call ptr @emit_label(ptr noundef %711) #9
  %717 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %718 = tail call ptr %717(i32 noundef %2, ptr noundef %705) #9
  br label %1112

719:                                              ; preds = %704
  %720 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %721 = tail call ptr @copy_to_mode_reg(i32 noundef %147, ptr noundef %236) #9
  %722 = tail call ptr @gen_label_rtx() #9
  %723 = tail call ptr @gen_label_rtx() #9
  %724 = tail call ptr @gen_label_rtx() #9
  %725 = tail call ptr @gen_label_rtx() #9
  %726 = tail call ptr @gen_label_rtx() #9
  %727 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %231, ptr noundef %727, i32 noundef 85, i32 noundef %147, ptr noundef %723) #10
  %728 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %721, ptr noundef %728, i32 noundef 85, i32 noundef %147, ptr noundef %722) #10
  %729 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %721, ptr noundef %231, ptr noundef %720, i32 noundef 0, i32 noundef 3) #9
  %730 = icmp eq ptr %729, %720
  br i1 %730, label %733, label %731

731:                                              ; preds = %719
  %732 = tail call ptr @emit_move_insn(ptr noundef %720, ptr noundef %729) #9
  br label %733

733:                                              ; preds = %731, %719
  %734 = tail call ptr @gen_jump(ptr noundef %726) #9
  %735 = tail call ptr @emit_jump_insn(ptr noundef %734) #9
  %736 = tail call ptr @emit_barrier() #9
  %737 = tail call ptr @emit_label(ptr noundef %722) #9
  %738 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_inc(ptr noundef %721, ptr noundef %738) #10
  %739 = tail call ptr @gen_jump(ptr noundef %725) #9
  %740 = tail call ptr @emit_jump_insn(ptr noundef %739) #9
  %741 = tail call ptr @emit_barrier() #9
  %742 = tail call ptr @emit_label(ptr noundef %723) #9
  %743 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %721, ptr noundef %743, i32 noundef 83, i32 noundef %147, ptr noundef %724) #10
  %744 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %721, ptr noundef %231, ptr noundef %720, i32 noundef 0, i32 noundef 3) #9
  %745 = icmp eq ptr %744, %720
  br i1 %745, label %748, label %746

746:                                              ; preds = %733
  %747 = tail call ptr @emit_move_insn(ptr noundef %720, ptr noundef %744) #9
  br label %748

748:                                              ; preds = %746, %733
  %749 = tail call ptr @gen_jump(ptr noundef %726) #9
  %750 = tail call ptr @emit_jump_insn(ptr noundef %749) #9
  %751 = tail call ptr @emit_barrier() #9
  %752 = tail call ptr @emit_label(ptr noundef %724) #9
  %753 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_dec(ptr noundef %721, ptr noundef %753) #10
  %754 = tail call ptr @emit_label(ptr noundef %725) #9
  %755 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %721, ptr noundef %231, ptr noundef %720, i32 noundef 0, i32 noundef 3) #9
  %756 = icmp eq ptr %755, %720
  br i1 %756, label %759, label %757

757:                                              ; preds = %748
  %758 = tail call ptr @emit_move_insn(ptr noundef %720, ptr noundef %755) #9
  br label %759

759:                                              ; preds = %757, %748
  %760 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_dec(ptr noundef %720, ptr noundef %760) #10
  %761 = tail call ptr @emit_label(ptr noundef %726) #9
  br label %1029

762:                                              ; preds = %248, %248
  br i1 %52, label %847, label %763

763:                                              ; preds = %762
  br i1 %215, label %764, label %789

764:                                              ; preds = %763
  %765 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %766 = load i64, ptr %765, align 8, !tbaa !327
  %767 = tail call i64 @llvm.ctpop.i64(i64 %766), !range !542
  %768 = icmp ult i64 %767, 2
  br i1 %768, label %769, label %789

769:                                              ; preds = %764
  %770 = add nsw i64 %766, -1
  %771 = tail call i32 @floor_log2(i64 noundef %766) #9
  %772 = sext i32 %771 to i64
  %773 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %772) #9
  %774 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %773, ptr noundef %157, i32 noundef 1) #10
  %775 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %770) #9
  %776 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %236, ptr noundef %775, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %777 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %778 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %779 = tail call ptr @emit_store_flag(ptr noundef %777, i32 noundef 80, ptr noundef %776, ptr noundef %778, i32 noundef %147, i32 noundef 1, i32 noundef 1) #10
  %780 = icmp eq ptr %779, null
  br i1 %780, label %781, label %786

781:                                              ; preds = %769
  %782 = tail call ptr @gen_label_rtx() #9
  %783 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %776, ptr noundef %783, i32 noundef 81, i32 noundef %147, ptr noundef %782) #10
  %784 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_inc(ptr noundef %774, ptr noundef %784) #10
  %785 = tail call ptr @emit_label(ptr noundef %782) #9
  br label %1029

786:                                              ; preds = %769
  %787 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef %774, ptr noundef nonnull %779) #9
  %788 = tail call ptr @force_operand(ptr noundef %787, ptr noundef %157) #9
  br label %1029

789:                                              ; preds = %764, %763
  br i1 %148, label %795, label %790

790:                                              ; preds = %789
  %791 = load i32, ptr %106, align 8
  %792 = lshr i32 %791, 16
  %793 = and i32 %792, 255
  %794 = icmp eq i32 %793, %147
  br i1 %794, label %797, label %795

795:                                              ; preds = %790, %789
  %796 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %797

797:                                              ; preds = %795, %790
  %798 = phi ptr [ %796, %795 ], [ %106, %790 ]
  %799 = load i32, ptr %798, align 8
  %800 = and i32 %799, 65535
  %801 = icmp eq i32 %800, 37
  br i1 %168, label %802, label %808

802:                                              ; preds = %797
  br i1 %801, label %805, label %803

803:                                              ; preds = %802
  %804 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %805

805:                                              ; preds = %802, %803
  %806 = phi ptr [ %804, %803 ], [ %798, %802 ]
  %807 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %814

808:                                              ; preds = %797
  br i1 %801, label %811, label %809

809:                                              ; preds = %808
  %810 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %811

811:                                              ; preds = %808, %809
  %812 = phi ptr [ %810, %809 ], [ %798, %808 ]
  %813 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %814

814:                                              ; preds = %811, %805
  %815 = phi ptr [ %806, %805 ], [ %812, %811 ]
  %816 = phi ptr [ %806, %805 ], [ %813, %811 ]
  %817 = phi ptr [ %807, %805 ], [ %812, %811 ]
  %818 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35), ptr noundef %236, ptr noundef %231, ptr noundef %817, ptr noundef %816, i32 noundef 1) #9
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %827, label %820

820:                                              ; preds = %814
  %821 = tail call ptr @gen_label_rtx() #9
  %822 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %816, ptr noundef %822, i32 noundef 81, i32 noundef %147, ptr noundef %821) #10
  %823 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_inc(ptr noundef %817, ptr noundef %823) #10
  tail call void @expand_dec(ptr noundef %816, ptr noundef %231) #10
  %824 = tail call ptr @emit_label(ptr noundef %821) #9
  %825 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %826 = tail call ptr %825(i32 noundef %2, ptr noundef %815) #9
  br label %1112

827:                                              ; preds = %814
  %828 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %829 = tail call ptr @copy_to_mode_reg(i32 noundef %147, ptr noundef %236) #9
  %830 = tail call ptr @gen_label_rtx() #9
  %831 = tail call ptr @gen_label_rtx() #9
  %832 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %829, ptr noundef %832, i32 noundef 80, i32 noundef %147, ptr noundef %830) #10
  %833 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %834 = tail call ptr @emit_move_insn(ptr noundef %828, ptr noundef %833) #9
  %835 = tail call ptr @gen_jump(ptr noundef %831) #9
  %836 = tail call ptr @emit_jump_insn(ptr noundef %835) #9
  %837 = tail call ptr @emit_barrier() #9
  %838 = tail call ptr @emit_label(ptr noundef %830) #9
  %839 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_dec(ptr noundef %829, ptr noundef %839) #10
  %840 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef %829, ptr noundef %231, ptr noundef %828, i32 noundef 1, i32 noundef 3) #9
  %841 = icmp eq ptr %840, %828
  br i1 %841, label %844, label %842

842:                                              ; preds = %827
  %843 = tail call ptr @emit_move_insn(ptr noundef %828, ptr noundef %840) #9
  br label %844

844:                                              ; preds = %842, %827
  %845 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_inc(ptr noundef %828, ptr noundef %845) #10
  %846 = tail call ptr @emit_label(ptr noundef %831) #9
  br label %1029

847:                                              ; preds = %762
  br i1 %215, label %848, label %875

848:                                              ; preds = %847
  %849 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %850 = load i64, ptr %849, align 8, !tbaa !327
  %851 = tail call i64 @llvm.ctpop.i64(i64 %850), !range !542
  %852 = icmp ult i64 %851, 2
  %853 = icmp sgt i64 %850, -1
  %854 = and i1 %853, %852
  br i1 %854, label %855, label %875

855:                                              ; preds = %848
  %856 = add nsw i64 %850, -1
  %857 = tail call i32 @floor_log2(i64 noundef %850) #9
  %858 = sext i32 %857 to i64
  %859 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %858) #9
  %860 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %859, ptr noundef %157, i32 noundef 0) #10
  %861 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %856) #9
  %862 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %236, ptr noundef %861, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %863 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %864 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %865 = tail call ptr @emit_store_flag(ptr noundef %863, i32 noundef 80, ptr noundef %862, ptr noundef %864, i32 noundef %147, i32 noundef 1, i32 noundef 1) #10
  %866 = icmp eq ptr %865, null
  br i1 %866, label %867, label %872

867:                                              ; preds = %855
  %868 = tail call ptr @gen_label_rtx() #9
  %869 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %862, ptr noundef %869, i32 noundef 81, i32 noundef %147, ptr noundef %868) #10
  %870 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_inc(ptr noundef %860, ptr noundef %870) #10
  %871 = tail call ptr @emit_label(ptr noundef %868) #9
  br label %1029

872:                                              ; preds = %855
  %873 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef %860, ptr noundef nonnull %865) #9
  %874 = tail call ptr @force_operand(ptr noundef %873, ptr noundef %157) #9
  br label %1029

875:                                              ; preds = %848, %847
  br i1 %148, label %881, label %876

876:                                              ; preds = %875
  %877 = load i32, ptr %106, align 8
  %878 = lshr i32 %877, 16
  %879 = and i32 %878, 255
  %880 = icmp eq i32 %879, %147
  br i1 %880, label %883, label %881

881:                                              ; preds = %876, %875
  %882 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %883

883:                                              ; preds = %881, %876
  %884 = phi ptr [ %882, %881 ], [ %106, %876 ]
  %885 = load i32, ptr %884, align 8
  %886 = and i32 %885, 65535
  %887 = icmp eq i32 %886, 37
  br i1 %168, label %888, label %894

888:                                              ; preds = %883
  br i1 %887, label %891, label %889

889:                                              ; preds = %888
  %890 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %891

891:                                              ; preds = %888, %889
  %892 = phi ptr [ %890, %889 ], [ %884, %888 ]
  %893 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %900

894:                                              ; preds = %883
  br i1 %887, label %897, label %895

895:                                              ; preds = %894
  %896 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %897

897:                                              ; preds = %894, %895
  %898 = phi ptr [ %896, %895 ], [ %884, %894 ]
  %899 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %900

900:                                              ; preds = %897, %891
  %901 = phi ptr [ %892, %891 ], [ %898, %897 ]
  %902 = phi ptr [ %892, %891 ], [ %899, %897 ]
  %903 = phi ptr [ %893, %891 ], [ %898, %897 ]
  %904 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr noundef %236, ptr noundef %231, ptr noundef %903, ptr noundef %902, i32 noundef 0) #9
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %915, label %906

906:                                              ; preds = %900
  %907 = tail call ptr @gen_label_rtx() #9
  %908 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %902, ptr noundef %908, i32 noundef 81, i32 noundef %147, ptr noundef %907) #10
  %909 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %236, ptr noundef %231, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %910 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %909, ptr noundef %910, i32 noundef 85, i32 noundef %147, ptr noundef %907) #10
  %911 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_inc(ptr noundef %903, ptr noundef %911) #10
  tail call void @expand_dec(ptr noundef %902, ptr noundef %231) #10
  %912 = tail call ptr @emit_label(ptr noundef %907) #9
  %913 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %914 = tail call ptr %913(i32 noundef %2, ptr noundef %901) #9
  br label %1112

915:                                              ; preds = %900
  %916 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %917 = tail call ptr @copy_to_mode_reg(i32 noundef %147, ptr noundef %236) #9
  %918 = tail call ptr @gen_label_rtx() #9
  %919 = tail call ptr @gen_label_rtx() #9
  %920 = tail call ptr @gen_label_rtx() #9
  %921 = tail call ptr @gen_label_rtx() #9
  %922 = tail call ptr @gen_label_rtx() #9
  %923 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %231, ptr noundef %923, i32 noundef 85, i32 noundef %147, ptr noundef %919) #10
  %924 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %917, ptr noundef %924, i32 noundef 83, i32 noundef %147, ptr noundef %918) #10
  %925 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %917, ptr noundef %231, ptr noundef %916, i32 noundef 0, i32 noundef 3) #9
  %926 = icmp eq ptr %925, %916
  br i1 %926, label %929, label %927

927:                                              ; preds = %915
  %928 = tail call ptr @emit_move_insn(ptr noundef %916, ptr noundef %925) #9
  br label %929

929:                                              ; preds = %927, %915
  %930 = tail call ptr @gen_jump(ptr noundef %922) #9
  %931 = tail call ptr @emit_jump_insn(ptr noundef %930) #9
  %932 = tail call ptr @emit_barrier() #9
  %933 = tail call ptr @emit_label(ptr noundef %918) #9
  %934 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_dec(ptr noundef %917, ptr noundef %934) #10
  %935 = tail call ptr @gen_jump(ptr noundef %921) #9
  %936 = tail call ptr @emit_jump_insn(ptr noundef %935) #9
  %937 = tail call ptr @emit_barrier() #9
  %938 = tail call ptr @emit_label(ptr noundef %919) #9
  %939 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %917, ptr noundef %939, i32 noundef 85, i32 noundef %147, ptr noundef %920) #10
  %940 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %917, ptr noundef %231, ptr noundef %916, i32 noundef 0, i32 noundef 3) #9
  %941 = icmp eq ptr %940, %916
  br i1 %941, label %944, label %942

942:                                              ; preds = %929
  %943 = tail call ptr @emit_move_insn(ptr noundef %916, ptr noundef %940) #9
  br label %944

944:                                              ; preds = %942, %929
  %945 = tail call ptr @gen_jump(ptr noundef %922) #9
  %946 = tail call ptr @emit_jump_insn(ptr noundef %945) #9
  %947 = tail call ptr @emit_barrier() #9
  %948 = tail call ptr @emit_label(ptr noundef %920) #9
  %949 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_inc(ptr noundef %917, ptr noundef %949) #10
  %950 = tail call ptr @emit_label(ptr noundef %921) #9
  %951 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %917, ptr noundef %231, ptr noundef %916, i32 noundef 0, i32 noundef 3) #9
  %952 = icmp eq ptr %951, %916
  br i1 %952, label %955, label %953

953:                                              ; preds = %944
  %954 = tail call ptr @emit_move_insn(ptr noundef %916, ptr noundef %951) #9
  br label %955

955:                                              ; preds = %953, %944
  %956 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_inc(ptr noundef %916, ptr noundef %956) #10
  %957 = tail call ptr @emit_label(ptr noundef %922) #9
  br label %1029

958:                                              ; preds = %248
  %959 = icmp ult i8 %160, 9
  %960 = select i1 %215, i1 %959, i1 false
  br i1 %960, label %961, label %1034, !prof !748

961:                                              ; preds = %958
  %962 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %963 = load i64, ptr %962, align 8, !tbaa !327
  %964 = sub nsw i64 0, %963
  %965 = and i64 %963, %964
  %966 = tail call i32 @floor_log2(i64 noundef %965) #9
  %967 = zext nneg i32 %966 to i64
  %968 = ashr i64 %963, %967
  %969 = tail call fastcc i64 @invert_mod2n(i64 noundef %968, i32 noundef %162) #10
  %970 = sext i32 %966 to i64
  %971 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %970) #9
  %972 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %971, ptr noundef null, i32 noundef %6) #10
  %973 = tail call ptr @gen_int_mode(i64 noundef %969, i32 noundef %147) #9
  %974 = tail call ptr @expand_mult(i32 noundef %147, ptr noundef %972, ptr noundef %973, ptr noundef null, i32 noundef 1) #10
  %975 = tail call ptr @get_last_insn() #9
  %976 = select i1 %52, i32 55, i32 59
  %977 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %976, i32 noundef %147, ptr noundef %236, ptr noundef %231) #9
  %978 = tail call ptr @set_unique_reg_note(ptr noundef %975, i32 noundef 4, ptr noundef %977) #9
  br label %1029

979:                                              ; preds = %248, %248
  %980 = tail call ptr @gen_label_rtx() #9
  %981 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %982 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br i1 %52, label %997, label %983

983:                                              ; preds = %979
  %984 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35), ptr noundef %236, ptr noundef %231, ptr noundef %981, ptr noundef %982, i32 noundef 1) #9
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %990

986:                                              ; preds = %983
  %987 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef %236, ptr noundef %231, ptr noundef %981, i32 noundef 1, i32 noundef 3) #9
  %988 = tail call ptr @expand_mult(i32 noundef %147, ptr noundef %987, ptr noundef %231, ptr noundef null, i32 noundef 1) #10
  %989 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %236, ptr noundef %988, ptr noundef %982, i32 noundef 1, i32 noundef 3) #9
  br label %990

990:                                              ; preds = %986, %983
  %991 = phi ptr [ %989, %986 ], [ %982, %983 ]
  %992 = phi ptr [ %987, %986 ], [ %981, %983 ]
  %993 = tail call ptr @plus_constant(ptr noundef %231, i64 noundef -1) #9
  %994 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 1) #9
  %995 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %993, ptr noundef %994, ptr noundef null, i32 noundef 1) #10
  tail call fastcc void @do_cmp_and_jump(ptr noundef %991, ptr noundef %995, i32 noundef 88, i32 noundef %147, ptr noundef %980) #10
  %996 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  tail call void @expand_inc(ptr noundef %992, ptr noundef %996) #10
  tail call void @expand_dec(ptr noundef %991, ptr noundef %231) #10
  br label %1021

997:                                              ; preds = %979
  %998 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr noundef %236, ptr noundef %231, ptr noundef %981, ptr noundef %982, i32 noundef 0) #9
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1000, label %1004

1000:                                             ; preds = %997
  %1001 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %236, ptr noundef %231, ptr noundef %981, i32 noundef 0, i32 noundef 3) #9
  %1002 = tail call ptr @expand_mult(i32 noundef %147, ptr noundef %1001, ptr noundef %231, ptr noundef null, i32 noundef 0) #10
  %1003 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %236, ptr noundef %1002, ptr noundef %982, i32 noundef 0, i32 noundef 3) #9
  br label %1004

1004:                                             ; preds = %1000, %997
  %1005 = phi ptr [ %1003, %1000 ], [ %982, %997 ]
  %1006 = phi ptr [ %1001, %1000 ], [ %981, %997 ]
  %1007 = tail call ptr @expand_abs(i32 noundef %147, ptr noundef %1005, ptr noundef null, i32 noundef 1, i32 noundef 0) #9
  %1008 = tail call ptr @expand_abs(i32 noundef %147, ptr noundef %231, ptr noundef null, i32 noundef 1, i32 noundef 0) #9
  %1009 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 1) #9
  %1010 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %147, ptr noundef %1007, ptr noundef %1009, ptr noundef null, i32 noundef 1) #10
  tail call fastcc void @do_cmp_and_jump(ptr noundef %1010, ptr noundef %1008, i32 noundef 89, i32 noundef %147, ptr noundef %980) #10
  %1011 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %236, ptr noundef %231, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %1012 = add nsw i32 %162, -1
  %1013 = sext i32 %1012 to i64
  %1014 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %1013) #9
  %1015 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %1011, ptr noundef %1014, ptr noundef null, i32 noundef 0) #10
  %1016 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %1017 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1015, ptr noundef %1016, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %1018 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %1017, ptr noundef %1015, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  tail call void @expand_inc(ptr noundef %1006, ptr noundef %1018) #10
  %1019 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1015, ptr noundef %231, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %1020 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %1019, ptr noundef %1015, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  tail call void @expand_dec(ptr noundef %1005, ptr noundef %1020) #10
  br label %1021

1021:                                             ; preds = %1004, %990
  %1022 = phi ptr [ %991, %990 ], [ %1005, %1004 ]
  %1023 = phi ptr [ %992, %990 ], [ %1006, %1004 ]
  %1024 = tail call ptr @emit_label(ptr noundef %980) #9
  %1025 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %1026 = select i1 %168, ptr %1022, ptr %1023
  %1027 = tail call ptr %1025(i32 noundef %2, ptr noundef %1026) #9
  br label %1112

1028:                                             ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4856, ptr noundef nonnull @.str.1) #9
  br label %1034

1029:                                             ; preds = %591, %376, %867, %872, %781, %786, %759, %955, %844, %961
  %1030 = phi ptr [ %974, %961 ], [ %828, %844 ], [ %916, %955 ], [ %720, %759 ], [ %774, %781 ], [ %788, %786 ], [ %860, %867 ], [ %874, %872 ], [ %377, %376 ], [ %592, %591 ]
  %1031 = phi ptr [ %106, %961 ], [ %798, %844 ], [ %884, %955 ], [ %688, %759 ], [ %106, %781 ], [ %106, %786 ], [ %106, %867 ], [ %106, %872 ], [ %106, %376 ], [ %106, %591 ]
  %1032 = phi ptr [ %231, %961 ], [ %231, %844 ], [ %231, %955 ], [ %231, %759 ], [ %231, %781 ], [ %231, %786 ], [ %231, %867 ], [ %231, %872 ], [ %231, %376 ], [ %391, %591 ]
  %1033 = icmp eq ptr %1030, null
  br i1 %1033, label %1034, label %1081, !prof !543

1034:                                             ; preds = %244, %597, %958, %1028, %1029
  %1035 = phi ptr [ %1032, %1029 ], [ %231, %244 ], [ %598, %597 ], [ %231, %958 ], [ %231, %1028 ]
  %1036 = phi ptr [ %1031, %1029 ], [ %106, %244 ], [ %106, %597 ], [ %106, %958 ], [ %106, %1028 ]
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %1044, label %1038, !prof !749

1038:                                             ; preds = %1034
  %1039 = load i32, ptr %1036, align 8
  %1040 = lshr i32 %1039, 16
  %1041 = and i32 %1040, 255
  %1042 = icmp eq i32 %1041, %147
  br i1 %1042, label %1044, label %1043, !prof !750

1043:                                             ; preds = %1038
  br label %1044

1044:                                             ; preds = %1043, %1038, %1034
  %1045 = phi ptr [ null, %1043 ], [ %1036, %1038 ], [ null, %1034 ]
  %1046 = sext i32 %147 to i64
  br i1 %168, label %1047, label %1064, !prof !751

1047:                                             ; preds = %1044
  %1048 = getelementptr inbounds %struct.optab_d, ptr %115, i64 0, i32 4, i64 %1046
  %1049 = load i32, ptr %1048, align 4, !tbaa !367
  %1050 = icmp eq i32 %1049, 2956
  %1051 = select i1 %1050, i32 2, i32 0
  %1052 = tail call ptr @sign_expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), ptr noundef %236, ptr noundef %1035, ptr noundef %1045, i32 noundef %6, i32 noundef %1051) #9
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1054, label %1060, !prof !752

1054:                                             ; preds = %1047
  %1055 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %1056 = tail call i32 @expand_twoval_binop(ptr noundef nonnull %114, ptr noundef %236, ptr noundef %1035, ptr noundef null, ptr noundef %1055, i32 noundef %6) #9
  %1057 = icmp eq i32 %1056, 0
  %1058 = icmp eq ptr %1055, null
  %1059 = or i1 %1058, %1057
  br i1 %1059, label %1064, label %1060, !prof !753

1060:                                             ; preds = %1054, %1047
  %1061 = phi ptr [ %1052, %1047 ], [ %1055, %1054 ]
  %1062 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %1063 = tail call ptr %1062(i32 noundef %2, ptr noundef nonnull %1061) #9
  br label %1112

1064:                                             ; preds = %1044, %1054
  %1065 = phi ptr [ null, %1054 ], [ %1045, %1044 ]
  %1066 = getelementptr inbounds %struct.optab_d, ptr %115, i64 0, i32 4, i64 %1046
  %1067 = load i32, ptr %1066, align 4, !tbaa !367
  %1068 = icmp eq i32 %1067, 2956
  %1069 = select i1 %1068, i32 2, i32 0
  %1070 = tail call ptr @sign_expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %236, ptr noundef %1035, ptr noundef %1065, i32 noundef %6, i32 noundef %1069) #9
  %1071 = icmp eq ptr %1070, null
  br i1 %1071, label %1072, label %1081, !prof !754

1072:                                             ; preds = %1064
  %1073 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %1074 = tail call i32 @expand_twoval_binop(ptr noundef nonnull %114, ptr noundef %236, ptr noundef %1035, ptr noundef %1073, ptr noundef null, i32 noundef %6) #9
  %1075 = icmp eq i32 %1074, 0
  %1076 = or i32 %1074, %0
  %1077 = icmp eq i32 %1076, 0
  %1078 = select i1 %1075, ptr null, ptr %1073, !prof !755
  br i1 %1077, label %1079, label %1081, !prof !756

1079:                                             ; preds = %1072
  %1080 = tail call ptr @sign_expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %236, ptr noundef %1035, ptr noundef %1045, i32 noundef %6, i32 noundef 3) #9
  br label %1108

1081:                                             ; preds = %676, %1072, %1064, %1029
  %1082 = phi ptr [ %1035, %1072 ], [ %1035, %1064 ], [ %1032, %1029 ], [ %231, %676 ]
  %1083 = phi ptr [ %1078, %1072 ], [ %1070, %1064 ], [ %1030, %1029 ], [ %677, %676 ]
  %1084 = phi ptr [ %1045, %1072 ], [ %1045, %1064 ], [ %1031, %1029 ], [ %106, %676 ]
  br i1 %168, label %1085, label %1108, !prof !757

1085:                                             ; preds = %1081
  %1086 = icmp eq ptr %1084, null
  br i1 %1086, label %1093, label %1087, !prof !758

1087:                                             ; preds = %1085
  %1088 = load i32, ptr %1084, align 8
  %1089 = lshr i32 %1088, 16
  %1090 = and i32 %1089, 255
  %1091 = icmp eq i32 %1090, %147
  %1092 = select i1 %1091, ptr %1084, ptr null, !prof !759
  br label %1093

1093:                                             ; preds = %1087, %1085
  %1094 = phi ptr [ %1092, %1087 ], [ null, %1085 ]
  %1095 = icmp eq ptr %1083, null
  br i1 %1095, label %1096, label %1105, !prof !760

1096:                                             ; preds = %1093
  %1097 = tail call ptr @sign_expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), ptr noundef %236, ptr noundef %1082, ptr noundef %1094, i32 noundef %6, i32 noundef 3) #9
  %1098 = icmp eq ptr %1097, null
  br i1 %1098, label %1099, label %1108, !prof !761

1099:                                             ; preds = %1096
  %1100 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %1101 = select i1 %52, i32 58, i32 60
  %1102 = tail call zeroext i8 @expand_twoval_binop_libfunc(ptr noundef nonnull %114, ptr noundef %236, ptr noundef %1082, ptr noundef null, ptr noundef %1100, i32 noundef %1101) #9
  %1103 = icmp eq i8 %1102, 0
  %1104 = select i1 %1103, ptr null, ptr %1100
  br label %1108

1105:                                             ; preds = %1093
  %1106 = tail call ptr @expand_mult(i32 noundef %147, ptr noundef nonnull %1083, ptr noundef %1082, ptr noundef null, i32 noundef %6) #10
  %1107 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %236, ptr noundef %1106, ptr noundef %1094, i32 noundef %6, i32 noundef 3) #9
  br label %1108

1108:                                             ; preds = %1079, %1099, %1105, %1096, %1081
  %1109 = phi ptr [ %1097, %1096 ], [ %1107, %1105 ], [ %1083, %1081 ], [ %1104, %1099 ], [ %1080, %1079 ]
  %1110 = load ptr, ptr @rtl_hooks, align 8, !tbaa !378
  %1111 = tail call ptr %1110(i32 noundef %2, ptr noundef %1109) #9
  br label %1112

1112:                                             ; preds = %672, %594, %379, %1108, %1060, %1021, %906, %820, %710, %70, %58, %47
  %1113 = phi ptr [ %50, %47 ], [ %1063, %1060 ], [ %1111, %1108 ], [ %1027, %1021 ], [ %826, %820 ], [ %914, %906 ], [ %718, %710 ], [ %674, %672 ], [ %381, %379 ], [ %596, %594 ], [ %59, %58 ], [ %72, %70 ]
  ret ptr %1113
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @optab_libfunc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_store_flag_force(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !762 {
  %8 = tail call ptr @emit_store_flag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %153, !prof !763

10:                                               ; preds = %7
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %15, !prof !764

12:                                               ; preds = %10
  %13 = load i32, ptr @word_mode, align 4, !tbaa !339
  %14 = tail call ptr @gen_reg_rtx(i32 noundef %13) #9
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %0, %10 ], [ %14, %12 ]
  %17 = icmp eq i32 %6, 0
  br i1 %17, label %21, label %18, !prof !764

18:                                               ; preds = %15
  %19 = sext i32 %6 to i64
  %20 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %19) #9
  br label %23

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %20, %18 ], [ %22, %21 ]
  %25 = icmp eq i32 %1, 80
  br i1 %25, label %28, label %26, !prof !764

26:                                               ; preds = %23
  %27 = load i32, ptr %16, align 8
  br label %46

28:                                               ; preds = %23
  %29 = zext i32 %4 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !327
  %32 = icmp eq i8 %31, 2
  %33 = load i32, ptr %16, align 8
  br i1 %32, label %34, label %46

34:                                               ; preds = %28
  %35 = and i32 %33, 65535
  %36 = icmp eq i32 %35, 37
  %37 = icmp eq ptr %16, %2
  %38 = select i1 %36, i1 %37, i1 false
  %39 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %40 = icmp eq ptr %39, %3
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = tail call ptr @gen_label_rtx() #9
  %44 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %2, ptr noundef %44, i32 noundef 81, i32 noundef %5, i32 noundef %4, ptr noundef null, ptr noundef null, ptr noundef %43, i32 noundef -1) #9
  %45 = tail call ptr @emit_move_insn(ptr noundef nonnull %2, ptr noundef %24) #9
  br label %149

46:                                               ; preds = %26, %34, %28
  %47 = phi i32 [ %27, %26 ], [ %33, %34 ], [ %33, %28 ]
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %56, !prof !765

50:                                               ; preds = %46
  %51 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %16, ptr noundef %2) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56, !prof !765

53:                                               ; preds = %50
  %54 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %16, ptr noundef %3) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56, !prof !765

56:                                               ; preds = %53, %50, %46
  %57 = load i32, ptr %16, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = tail call ptr @gen_reg_rtx(i32 noundef %59) #9
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi ptr [ %60, %56 ], [ %16, %53 ]
  %63 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %64 = tail call i32 @can_compare_p(i32 noundef %1, i32 noundef %4, i32 noundef 0) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %142, !prof !764

66:                                               ; preds = %61
  %67 = zext i32 %4 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !327
  switch i8 %69, label %129 [
    i8 8, label %73
    i8 9, label %73
    i8 11, label %73
    i8 17, label %70
  ]

70:                                               ; preds = %66
  %71 = and i32 %1, -2
  %72 = icmp eq i32 %71, 90
  br i1 %72, label %127, label %80

73:                                               ; preds = %66, %66, %66
  %74 = and i32 %1, -2
  %75 = icmp eq i32 %74, 90
  br i1 %75, label %126, label %76

76:                                               ; preds = %73
  switch i8 %69, label %96 [
    i8 8, label %77
    i8 9, label %77
    i8 11, label %77
  ]

77:                                               ; preds = %76, %76, %76
  %78 = and i8 %69, -2
  %79 = icmp eq i8 %78, 8
  br i1 %79, label %84, label %80

80:                                               ; preds = %77, %70
  %81 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %67
  %82 = load i8, ptr %81, align 1, !tbaa !327
  %83 = zext i8 %82 to i32
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i32 [ %4, %77 ], [ %83, %80 ]
  %86 = add i32 %85, -38
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !320
  %90 = getelementptr inbounds %struct.real_format, ptr %89, i64 0, i32 11
  %91 = load i8, ptr %90, align 2, !tbaa !766
  %92 = icmp eq i8 %91, 0
  %93 = load i32, ptr @flag_finite_math_only, align 4
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %92, i1 true, i1 %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %76, %84
  switch i32 %1, label %97 [
    i32 97, label %126
    i32 92, label %126
  ]

97:                                               ; preds = %96, %84
  %98 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !339
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %123, label %100

100:                                              ; preds = %97
  switch i8 %69, label %123 [
    i8 8, label %101
    i8 9, label %101
    i8 11, label %101
    i8 17, label %101
  ]

101:                                              ; preds = %100, %100, %100, %100
  %102 = and i8 %69, -2
  %103 = icmp eq i8 %102, 8
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %67
  %106 = load i8, ptr %105, align 1, !tbaa !327
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i32 [ %4, %101 ], [ %107, %104 ]
  %110 = add i32 %109, -38
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !320
  %114 = getelementptr inbounds %struct.real_format, ptr %113, i64 0, i32 11
  %115 = load i8, ptr %114, align 2, !tbaa !766
  %116 = icmp eq i8 %115, 0
  %117 = load i32, ptr @flag_finite_math_only, align 4
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %116, i1 true, i1 %118
  %120 = and i32 %1, -2
  %121 = icmp eq i32 %120, 80
  %122 = and i1 %121, %119
  br i1 %122, label %126, label %142

123:                                              ; preds = %100, %97
  %124 = and i32 %1, -2
  %125 = icmp eq i32 %124, 80
  br i1 %125, label %126, label %142

126:                                              ; preds = %73, %108, %96, %96, %123
  switch i8 %69, label %129 [
    i8 8, label %127
    i8 9, label %127
    i8 11, label %127
    i8 17, label %127
  ]

127:                                              ; preds = %70, %126, %126, %126, %126
  %128 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %1) #9
  br label %131

129:                                              ; preds = %66, %126
  %130 = tail call i32 @reverse_condition(i32 noundef %1) #9
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = tail call i32 @can_compare_p(i32 noundef %132, i32 noundef %4, i32 noundef 0) #9
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = icmp eq i32 %1, 91
  br i1 %136, label %137, label %142

137:                                              ; preds = %135
  %138 = tail call i32 @can_compare_p(i32 noundef 91, i32 noundef %4, i32 noundef 0) #9
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137, %131
  %141 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  br label %142

142:                                              ; preds = %135, %137, %140, %123, %108, %61
  %143 = phi i32 [ %1, %61 ], [ %1, %123 ], [ %1, %108 ], [ %132, %140 ], [ 91, %137 ], [ %1, %135 ]
  %144 = phi ptr [ %24, %61 ], [ %24, %123 ], [ %24, %108 ], [ %141, %140 ], [ %24, %137 ], [ %24, %135 ]
  %145 = phi ptr [ %63, %61 ], [ %63, %123 ], [ %63, %108 ], [ %24, %140 ], [ %63, %137 ], [ %63, %135 ]
  %146 = tail call ptr @emit_move_insn(ptr noundef %62, ptr noundef %144) #9
  %147 = tail call ptr @gen_label_rtx() #9
  tail call void @do_compare_rtx_and_jump(ptr noundef %2, ptr noundef %3, i32 noundef %143, i32 noundef %5, i32 noundef %4, ptr noundef null, ptr noundef null, ptr noundef %147, i32 noundef -1) #9
  %148 = tail call ptr @emit_move_insn(ptr noundef %62, ptr noundef %145) #9
  br label %149

149:                                              ; preds = %42, %142
  %150 = phi ptr [ %147, %142 ], [ %43, %42 ]
  %151 = phi ptr [ %62, %142 ], [ %2, %42 ]
  %152 = tail call ptr @emit_label(ptr noundef %150) #9
  br label %153

153:                                              ; preds = %149, %7
  %154 = phi ptr [ %8, %7 ], [ %151, %149 ]
  ret ptr %154
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @choose_multiplier(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !prof !768 !PGOFuncName !769 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %13 = tail call i32 @ceil_log2(i64 noundef %0) #10
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %15, label %16, !prof !770

15:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3296, ptr noundef nonnull @.str.1) #9
  br label %16

16:                                               ; preds = %6, %15
  %17 = add nsw i32 %13, %1
  %18 = sub nsw i32 %17, %2
  %19 = icmp eq i32 %17, 128
  br i1 %19, label %20, label %21, !prof !770

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3304, ptr noundef nonnull @.str.1) #9
  br label %21

21:                                               ; preds = %16, %20
  %22 = icmp sgt i32 %17, 63
  %23 = add nsw i32 %17, -64
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = zext nneg i32 %17 to i64
  %27 = shl nuw i64 1, %26
  %28 = select i1 %22, i64 %25, i64 0, !prof !771
  %29 = select i1 %22, i64 0, i64 %27, !prof !771
  %30 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %29, i64 noundef %28, i64 noundef %0, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %12) #9
  %31 = icmp sgt i32 %18, 63
  br i1 %31, label %32, label %37, !prof !770

32:                                               ; preds = %21
  %33 = add nsw i32 %18, -64
  %34 = zext nneg i32 %33 to i64
  %35 = shl nuw i64 1, %34
  %36 = or i64 %28, %35
  br label %41

37:                                               ; preds = %21
  %38 = zext nneg i32 %18 to i64
  %39 = shl nuw i64 1, %38
  %40 = or i64 %29, %39
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i64 [ %36, %32 ], [ %28, %37 ]
  %43 = phi i64 [ %29, %32 ], [ %40, %37 ]
  %44 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %43, i64 noundef %42, i64 noundef %0, i64 noundef 0, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %12) #9
  %45 = load i64, ptr %7, align 8, !tbaa !591
  %46 = icmp eq i64 %45, 0
  %47 = sub i64 %42, %0
  %48 = icmp ult i64 %47, %0
  %49 = or i1 %48, %46
  br i1 %49, label %52, label %50, !prof !772

50:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3328, ptr noundef nonnull @.str.1) #9
  %51 = load i64, ptr %7, align 8, !tbaa !591
  br label %52

52:                                               ; preds = %41, %50
  %53 = phi i64 [ %45, %41 ], [ %51, %50 ]
  %54 = icmp slt i64 %53, 2
  %55 = load i64, ptr %8, align 8
  %56 = icmp slt i64 %55, 2
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %61, label %58, !prof !773

58:                                               ; preds = %52
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3329, ptr noundef nonnull @.str.1) #9
  %59 = load i64, ptr %8, align 8, !tbaa !591
  %60 = load i64, ptr %7, align 8, !tbaa !591
  br label %61

61:                                               ; preds = %52, %58
  %62 = phi i64 [ %53, %52 ], [ %60, %58 ]
  %63 = phi i64 [ %55, %52 ], [ %59, %58 ]
  %64 = icmp slt i64 %63, %62
  br i1 %64, label %74, label %65, !prof !770

65:                                               ; preds = %61
  %66 = icmp eq i64 %63, %62
  br i1 %66, label %67, label %71, !prof !774

67:                                               ; preds = %65
  %68 = load i64, ptr %10, align 8, !tbaa !591
  %69 = load i64, ptr %9, align 8, !tbaa !591
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %74, label %71, !prof !774

71:                                               ; preds = %67, %65
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3332, ptr noundef nonnull @.str.1) #9
  %72 = load i64, ptr %8, align 8, !tbaa !591
  %73 = load i64, ptr %7, align 8, !tbaa !591
  br label %74

74:                                               ; preds = %61, %67, %71
  %75 = phi i64 [ %62, %61 ], [ %62, %67 ], [ %73, %71 ]
  %76 = phi i64 [ %63, %61 ], [ %62, %67 ], [ %72, %71 ]
  %77 = load i64, ptr %9, align 8, !tbaa !591
  %78 = icmp sgt i32 %13, 0
  br i1 %78, label %79, label %93, !prof !775

79:                                               ; preds = %74
  %80 = load i64, ptr %10, align 8, !tbaa !591
  br label %81

81:                                               ; preds = %79, %90
  %82 = phi i32 [ %91, %90 ], [ %13, %79 ]
  %83 = phi i64 [ 0, %90 ], [ %76, %79 ]
  %84 = phi i64 [ %87, %90 ], [ %80, %79 ]
  %85 = phi i64 [ 0, %90 ], [ %75, %79 ]
  %86 = phi i64 [ %88, %90 ], [ %77, %79 ]
  %87 = call i64 @llvm.fshl.i64(i64 %83, i64 %84, i64 63)
  %88 = call i64 @llvm.fshl.i64(i64 %85, i64 %86, i64 63)
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %93, !prof !776

90:                                               ; preds = %81
  store i64 0, ptr %8, align 8, !tbaa !591
  store i64 %87, ptr %10, align 8, !tbaa !591
  store i64 0, ptr %7, align 8, !tbaa !591
  store i64 %88, ptr %9, align 8, !tbaa !591
  %91 = add nsw i32 %82, -1
  %92 = icmp sgt i32 %82, 1
  br i1 %92, label %81, label %93, !prof !777, !llvm.loop !778

93:                                               ; preds = %90, %81, %74
  %94 = phi i64 [ %77, %74 ], [ %86, %81 ], [ %88, %90 ]
  %95 = phi i32 [ %13, %74 ], [ %82, %81 ], [ 0, %90 ]
  store i32 %95, ptr %4, align 4, !tbaa !339
  store i32 %13, ptr %5, align 4, !tbaa !339
  %96 = icmp slt i32 %1, 64
  br i1 %96, label %97, label %106, !prof !779

97:                                               ; preds = %93
  %98 = zext nneg i32 %1 to i64
  %99 = shl nsw i64 -1, %98
  %100 = xor i64 %99, -1
  %101 = and i64 %94, %100
  %102 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %101) #9
  %103 = load i64, ptr %9, align 8, !tbaa !591
  %104 = icmp uge i64 %103, %100
  %105 = zext i1 %104 to i64
  br label %109

106:                                              ; preds = %93
  %107 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %94) #9
  %108 = load i64, ptr %7, align 8, !tbaa !591
  br label %109

109:                                              ; preds = %106, %97
  %110 = phi ptr [ %102, %97 ], [ %107, %106 ]
  %111 = phi i64 [ %105, %97 ], [ %108, %106 ]
  store ptr %110, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i64 %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_mult_highpart(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !780 !PGOFuncName !781 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.algorithm, align 4
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !327
  %11 = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #8
  %12 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %14 = load i8, ptr %13, align 1, !tbaa !327
  %15 = and i8 %14, -2
  %16 = icmp eq i8 %15, 8
  br i1 %16, label %17, label %18, !prof !782

17:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3574, ptr noundef nonnull @.str.1) #9
  br label %18

18:                                               ; preds = %5, %17
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %20 = load i8, ptr %19, align 1, !tbaa !327
  %21 = icmp ult i8 %20, 9
  br i1 %21, label %23, label %22, !prof !783

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3576, ptr noundef nonnull @.str.1) #9
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !327
  %26 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %8
  %27 = load i64, ptr %26, align 8, !tbaa !591
  %28 = and i64 %27, %25
  %29 = zext i8 %10 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !327
  %32 = icmp ugt i8 %31, 4
  br i1 %32, label %33, label %35, !prof !783

33:                                               ; preds = %23
  %34 = tail call fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4) #10
  br label %76

35:                                               ; preds = %23
  %36 = zext i8 %12 to i64
  %37 = load i8, ptr %19, align 1, !tbaa !327
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 3
  %40 = add nsw i32 %39, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %36, i64 %8, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !339
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = zext nneg i32 %40 to i64
  %47 = shl nuw i64 1, %46
  %48 = and i64 %47, %28
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %36, i64 %8
  %52 = load i32, ptr %51, align 4, !tbaa !339
  %53 = add nsw i32 %52, %43
  br label %54

54:                                               ; preds = %50, %45, %35
  %55 = phi i32 [ %43, %35 ], [ %53, %50 ], [ %43, %45 ]
  %56 = phi i1 [ true, %35 ], [ false, %50 ], [ true, %45 ]
  %57 = sub nsw i32 %4, %55
  %58 = call fastcc zeroext i8 @choose_mult_variant(i32 noundef %11, i64 noundef %28, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %57) #10, !range !359
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %54
  %61 = load i16, ptr %7, align 4, !tbaa !558
  %62 = sext i16 %61 to i32
  %63 = add nsw i32 %55, %62
  %64 = tail call fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %63) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = tail call ptr @convert_to_mode(i32 noundef %11, ptr noundef %1, i32 noundef %3) #9
  %68 = load i32, ptr %6, align 4, !tbaa !339
  %69 = call fastcc ptr @expand_mult_const(i32 noundef %11, ptr noundef %67, i64 noundef %28, ptr noundef null, ptr noundef nonnull %7, i32 noundef %68) #10
  %70 = tail call fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef %69) #10
  br i1 %56, label %76, label %71

71:                                               ; preds = %66
  %72 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %70, ptr noundef %1) #9
  %73 = tail call ptr @force_operand(ptr noundef %72, ptr noundef %70) #9
  br label %76

74:                                               ; preds = %54
  %75 = tail call fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4) #10
  br label %76

76:                                               ; preds = %66, %71, %60, %74, %33
  %77 = phi ptr [ %34, %33 ], [ %75, %74 ], [ %64, %60 ], [ %73, %71 ], [ %70, %66 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret ptr %77
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_store_flag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !784 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %1, ptr %8, align 4, !tbaa !339
  %10 = icmp eq ptr %0, null
  br i1 %10, label %15, label %11, !prof !785

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %7 ]
  %17 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %329, !prof !786

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %21 = icmp ne i8 %20, 0
  %22 = load i32, ptr @ix86_branch_cost, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %329, label %25, !prof !764

25:                                               ; preds = %19
  %26 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %27 = tail call ptr @get_last_insn() #9
  %28 = load i32, ptr @optimize, align 4, !tbaa !339
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i32 %16, %4
  %31 = and i1 %30, %29
  %32 = select i1 %31, ptr %0, ptr null, !prof !764
  %33 = sext i32 %26 to i64
  %34 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #9
  %35 = zext i32 %4 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !327
  switch i8 %37, label %329 [
    i8 8, label %38
    i8 2, label %136
  ], !prof !787

38:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  %39 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %1) #9
  %40 = tail call i32 @can_compare_p(i32 noundef %39, i32 noundef %4, i32 noundef 2) #9
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %1, -2
  br i1 %41, label %90, label %43

43:                                               ; preds = %38
  %44 = icmp eq i32 %42, 90
  br i1 %44, label %64, label %45

45:                                               ; preds = %43
  %46 = add i32 %4, -38
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !320
  %50 = getelementptr inbounds %struct.real_format, ptr %49, i64 0, i32 11
  %51 = load i8, ptr %50, align 2, !tbaa !766
  %52 = icmp eq i8 %51, 0
  %53 = load i32, ptr @flag_finite_math_only, align 4
  %54 = icmp ne i32 %53, 0
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  switch i32 %1, label %57 [
    i32 97, label %64
    i32 92, label %64
  ]

57:                                               ; preds = %56, %45
  %58 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !339
  %59 = icmp eq i32 %58, 0
  %60 = icmp eq i32 %42, 80
  br i1 %59, label %63, label %61

61:                                               ; preds = %57
  %62 = and i1 %60, %55
  br i1 %62, label %64, label %90

63:                                               ; preds = %57
  br i1 %60, label %64, label %90

64:                                               ; preds = %61, %56, %56, %63, %43
  %65 = icmp eq i32 %6, -1
  br i1 %65, label %66, label %77

66:                                               ; preds = %64
  %67 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #9
  %68 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %69 = tail call i32 @rtx_cost(ptr noundef %67, i32 noundef 49, i8 noundef zeroext %68) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %39, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 1, i32 noundef %16) #10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %90, label %74

74:                                               ; preds = %71
  %75 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #9
  %76 = tail call ptr @expand_binop(i32 noundef %16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %72, ptr noundef %75, ptr noundef %0, i32 noundef 0, i32 noundef 2) #9
  br label %134

77:                                               ; preds = %64
  %78 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %79 = tail call i32 @rtx_cost(ptr noundef %34, i32 noundef 63, i8 noundef zeroext %78) #9
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %39, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %26, i32 noundef %16) #10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !327
  %87 = icmp sgt i64 %86, -1
  %88 = zext i1 %87 to i32
  %89 = tail call ptr @expand_binop(i32 noundef %16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef nonnull %82, ptr noundef %34, ptr noundef %0, i32 noundef %88, i32 noundef 2) #9
  br label %134

90:                                               ; preds = %38, %66, %71, %81, %77, %63, %61
  tail call void @delete_insns_since(ptr noundef %27) #9
  %91 = icmp eq i32 %42, 90
  br i1 %91, label %134, label %92

92:                                               ; preds = %90
  %93 = call zeroext i8 @split_comparison(i32 noundef %1, i32 noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %8) #9
  %94 = add i32 %4, -38
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !320
  %98 = getelementptr inbounds %struct.real_format, ptr %97, i64 0, i32 11
  %99 = load i8, ptr %98, align 2, !tbaa !766
  %100 = icmp eq i8 %99, 0
  %101 = load i32, ptr @flag_finite_math_only, align 4
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %100, i1 true, i1 %102
  %104 = load i32, ptr %9, align 4, !tbaa !339
  br i1 %103, label %105, label %113

105:                                              ; preds = %92
  %106 = icmp eq i8 %93, 0
  %107 = select i1 %106, i32 90, i32 91
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5541, ptr noundef nonnull @.str.1) #9
  br label %110

110:                                              ; preds = %105, %109
  %111 = load i32, ptr %8, align 4, !tbaa !339
  %112 = call fastcc ptr @emit_store_flag_1(ptr noundef %0, i32 noundef %111, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %26, i32 noundef %16) #10
  br label %134

113:                                              ; preds = %92
  %114 = call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %104, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %26, i32 noundef %16) #10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %134, label %116

116:                                              ; preds = %113
  %117 = icmp eq i8 %93, 0
  %118 = load i32, ptr %8, align 4, !tbaa !339
  br i1 %117, label %125, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %121 = load i32, ptr %114, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = call ptr @emit_conditional_move(ptr noundef %0, i32 noundef %118, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %114, ptr noundef %120, i32 noundef %123, i32 noundef 0) #9
  br label %130

125:                                              ; preds = %116
  %126 = load i32, ptr %114, align 8
  %127 = lshr i32 %126, 16
  %128 = and i32 %127, 255
  %129 = call ptr @emit_conditional_move(ptr noundef %0, i32 noundef %118, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %34, ptr noundef nonnull %114, i32 noundef %128, i32 noundef 0) #9
  br label %130

130:                                              ; preds = %125, %119
  %131 = phi ptr [ %124, %119 ], [ %129, %125 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  call void @delete_insns_since(ptr noundef %27) #9
  br label %134

134:                                              ; preds = %74, %84, %130, %133, %113, %90, %110
  %135 = phi ptr [ %112, %110 ], [ null, %90 ], [ null, %113 ], [ null, %133 ], [ %131, %130 ], [ %76, %74 ], [ %89, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  br label %329

136:                                              ; preds = %25
  %137 = and i32 %1, -2
  %138 = icmp ne i32 %137, 80
  %139 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %140 = icmp eq ptr %139, %3
  %141 = select i1 %138, i1 true, i1 %140
  br i1 %141, label %154, label %142, !prof !788

142:                                              ; preds = %136
  %143 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %2, ptr noundef %3, ptr noundef %32, i32 noundef 1, i32 noundef 2) #9
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %2, ptr noundef %3, ptr noundef %32, i32 noundef 1, i32 noundef 2) #9
  %147 = icmp eq ptr %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %142, %145
  %149 = phi ptr [ %146, %145 ], [ %143, %142 ]
  %150 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %151 = tail call ptr @emit_store_flag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %149, ptr noundef %150, i32 noundef %4, i32 noundef %5, i32 noundef %26) #10
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %329

153:                                              ; preds = %145, %148
  tail call void @delete_insns_since(ptr noundef %27) #9
  br label %154

154:                                              ; preds = %136, %153
  %155 = tail call i32 @reverse_condition(i32 noundef %1) #9
  %156 = tail call i32 @can_compare_p(i32 noundef %155, i32 noundef %4, i32 noundef 2) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %202, label %158, !prof !765

158:                                              ; preds = %154
  %159 = sext i32 %4 to i64
  %160 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !367
  %162 = icmp eq i32 %161, 2956
  %163 = icmp eq i32 %1, 80
  %164 = and i1 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %167 = load i8, ptr %166, align 1, !tbaa !327
  %168 = icmp ult i8 %167, 4
  %169 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %170 = icmp eq ptr %169, %3
  %171 = select i1 %168, i1 %170, i1 false
  br i1 %171, label %202, label %172

172:                                              ; preds = %165, %158
  %173 = icmp eq i32 %6, -1
  br i1 %173, label %174, label %185

174:                                              ; preds = %172
  %175 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #9
  %176 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %177 = tail call i32 @rtx_cost(ptr noundef %175, i32 noundef 49, i8 noundef zeroext %176) #9
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %174
  %180 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %155, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 1, i32 noundef %16) #10
  %181 = icmp eq ptr %180, null
  br i1 %181, label %201, label %182

182:                                              ; preds = %179
  %183 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #9
  %184 = tail call ptr @expand_binop(i32 noundef %16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %180, ptr noundef %183, ptr noundef %0, i32 noundef 0, i32 noundef 2) #9
  br label %198

185:                                              ; preds = %172
  %186 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %187 = tail call i32 @rtx_cost(ptr noundef %34, i32 noundef 63, i8 noundef zeroext %186) #9
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %185
  %190 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %155, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %26, i32 noundef %16) #10
  %191 = icmp eq ptr %190, null
  br i1 %191, label %201, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %194 = load i64, ptr %193, align 8, !tbaa !327
  %195 = icmp sgt i64 %194, -1
  %196 = zext i1 %195 to i32
  %197 = tail call ptr @expand_binop(i32 noundef %16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef nonnull %190, ptr noundef %34, ptr noundef %0, i32 noundef %196, i32 noundef 2) #9
  br label %198

198:                                              ; preds = %192, %182
  %199 = phi ptr [ %184, %182 ], [ %197, %192 ]
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %329

201:                                              ; preds = %174, %185, %189, %179, %198
  tail call void @delete_insns_since(ptr noundef %27) #9
  br label %202

202:                                              ; preds = %201, %165, %154
  %203 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %204 = icmp eq ptr %203, %3
  br i1 %204, label %205, label %329, !prof !764

205:                                              ; preds = %202
  %206 = add i32 %1, -82
  %207 = icmp ult i32 %206, -2
  br i1 %207, label %208, label %238

208:                                              ; preds = %205
  %209 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %210 = icmp ne i8 %209, 0
  %211 = load i32, ptr @ix86_branch_cost, align 4
  %212 = icmp slt i32 %211, 2
  %213 = select i1 %210, i1 %212, i1 false
  %214 = add i32 %1, -85
  %215 = icmp ult i32 %214, -2
  %216 = or i1 %213, %215
  br i1 %216, label %329, label %217

217:                                              ; preds = %208
  %218 = icmp eq i32 %1, 84
  %219 = tail call i32 @rtx_equal_p(ptr noundef %32, ptr noundef %2) #9
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, ptr %32, ptr null
  br i1 %218, label %222, label %228

222:                                              ; preds = %217
  %223 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %224 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %2, ptr noundef %223, ptr noundef %221, i32 noundef 0, i32 noundef 2) #9
  %225 = icmp eq ptr %224, null
  br i1 %225, label %328, label %226

226:                                              ; preds = %222
  %227 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %2, ptr noundef nonnull %224, ptr noundef %221, i32 noundef 0, i32 noundef 2) #9
  br label %296

228:                                              ; preds = %217
  %229 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %230 = load i8, ptr %229, align 1, !tbaa !327
  %231 = zext i8 %230 to i32
  %232 = shl nuw nsw i32 %231, 3
  %233 = add nsw i32 %232, -1
  %234 = sext i32 %233 to i64
  %235 = tail call ptr @size_int_kind(i64 noundef %234, i32 noundef 0) #9
  %236 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %4, ptr noundef %2, ptr noundef %235, ptr noundef %221, i32 noundef 0) #10
  %237 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %236, ptr noundef %2, ptr noundef %221, i32 noundef 0, i32 noundef 2) #9
  br label %238

238:                                              ; preds = %205, %228
  %239 = phi ptr [ %237, %228 ], [ null, %205 ]
  %240 = phi ptr [ %221, %228 ], [ %32, %205 ]
  %241 = icmp eq i32 %137, 80
  br i1 %241, label %242, label %296

242:                                              ; preds = %238
  %243 = sext i32 %4 to i64
  %244 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !367
  %246 = icmp eq i32 %245, 2956
  br i1 %246, label %249, label %247

247:                                              ; preds = %242
  %248 = tail call ptr @expand_unop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), ptr noundef %2, ptr noundef %240, i32 noundef 1) #9
  br label %263

249:                                              ; preds = %242
  %250 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 4, i64 %243
  %251 = load i32, ptr %250, align 4, !tbaa !367
  %252 = icmp eq i32 %251, 2956
  br i1 %252, label %255, label %253

253:                                              ; preds = %249
  %254 = tail call ptr @expand_unop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70), ptr noundef %2, ptr noundef %240, i32 noundef 1) #9
  br label %263

255:                                              ; preds = %249
  %256 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %257 = load i8, ptr %256, align 1, !tbaa !327
  %258 = icmp ult i8 %257, 4
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = load i32, ptr @word_mode, align 4, !tbaa !339
  %261 = tail call ptr @convert_modes(i32 noundef %260, i32 noundef %4, ptr noundef %2, i32 noundef 1) #9
  %262 = load i32, ptr @word_mode, align 4, !tbaa !339
  br label %263

263:                                              ; preds = %253, %259, %255, %247
  %264 = phi ptr [ %248, %247 ], [ %254, %253 ], [ %261, %259 ], [ %239, %255 ]
  %265 = phi i32 [ %4, %247 ], [ %4, %253 ], [ %262, %259 ], [ %4, %255 ]
  %266 = icmp eq ptr %264, null
  br i1 %266, label %277, label %267

267:                                              ; preds = %263
  %268 = icmp eq i32 %1, 81
  br i1 %268, label %269, label %272

269:                                              ; preds = %267
  %270 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %271 = tail call ptr @expand_binop(i32 noundef %265, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %264, ptr noundef %270, ptr noundef %240, i32 noundef 0, i32 noundef 2) #9
  br label %274

272:                                              ; preds = %267
  %273 = tail call ptr @expand_unop(i32 noundef %265, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef nonnull %264, ptr noundef %240, i32 noundef 0) #9
  br label %274

274:                                              ; preds = %269, %272
  %275 = phi ptr [ %271, %269 ], [ %273, %272 ]
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %301

277:                                              ; preds = %263, %274
  %278 = icmp eq i32 %1, 80
  br i1 %278, label %285, label %279

279:                                              ; preds = %277
  %280 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %281 = icmp eq i8 %280, 0
  %282 = load i32, ptr @ix86_branch_cost, align 4
  %283 = icmp sgt i32 %282, 1
  %284 = select i1 %281, i1 true, i1 %283
  br i1 %284, label %285, label %328

285:                                              ; preds = %279, %277
  %286 = tail call i32 @rtx_equal_p(ptr noundef %240, ptr noundef %2) #9
  %287 = icmp eq i32 %286, 0
  %288 = select i1 %287, ptr %240, ptr null
  %289 = tail call ptr @expand_unop(i32 noundef %265, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %2, ptr noundef %288, i32 noundef 0) #9
  %290 = tail call ptr @expand_binop(i32 noundef %265, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %289, ptr noundef %2, ptr noundef %288, i32 noundef 0, i32 noundef 2) #9
  %291 = icmp ne ptr %290, null
  %292 = icmp eq i32 %1, 81
  %293 = and i1 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %285
  %295 = tail call ptr @expand_unop(i32 noundef %265, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef nonnull %290, ptr noundef %288, i32 noundef 0) #9
  br label %296

296:                                              ; preds = %226, %294, %285, %238
  %297 = phi ptr [ %295, %294 ], [ %290, %285 ], [ %239, %238 ], [ %227, %226 ]
  %298 = phi ptr [ %288, %294 ], [ %288, %285 ], [ %240, %238 ], [ %221, %226 ]
  %299 = phi i32 [ %265, %294 ], [ %265, %285 ], [ %4, %238 ], [ %4, %226 ]
  %300 = icmp eq ptr %297, null
  br i1 %300, label %328, label %301

301:                                              ; preds = %274, %296
  %302 = phi i32 [ %299, %296 ], [ %265, %274 ]
  %303 = phi ptr [ %298, %296 ], [ %240, %274 ]
  %304 = phi ptr [ %297, %296 ], [ %275, %274 ]
  %305 = zext i32 %302 to i64
  %306 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !327
  %308 = zext i8 %307 to i32
  %309 = shl nuw nsw i32 %308, 3
  %310 = add nsw i32 %309, -1
  %311 = sext i32 %310 to i64
  %312 = tail call ptr @size_int_kind(i64 noundef %311, i32 noundef 0) #9
  %313 = icmp ult i32 %6, 2
  %314 = zext i1 %313 to i32
  %315 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %302, ptr noundef nonnull %304, ptr noundef %312, ptr noundef %303, i32 noundef %314) #10
  %316 = icmp eq ptr %315, null
  br i1 %316, label %328, label %317

317:                                              ; preds = %301
  br i1 %10, label %329, label %318

318:                                              ; preds = %317
  %319 = load i32, ptr %315, align 8
  %320 = lshr i32 %319, 16
  %321 = and i32 %320, 255
  %322 = icmp eq i32 %321, %16
  br i1 %322, label %324, label %323

323:                                              ; preds = %318
  tail call void @convert_move(ptr noundef nonnull %0, ptr noundef nonnull %315, i32 noundef 0) #9
  br label %329

324:                                              ; preds = %318
  %325 = icmp eq ptr %303, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %324
  %327 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %315) #9
  br label %329

328:                                              ; preds = %222, %279, %296, %301
  tail call void @delete_insns_since(ptr noundef %27) #9
  br label %329

329:                                              ; preds = %198, %328, %323, %326, %324, %317, %202, %208, %148, %25, %19, %15, %134
  %330 = phi ptr [ %135, %134 ], [ %17, %15 ], [ null, %19 ], [ null, %25 ], [ %151, %148 ], [ null, %208 ], [ null, %202 ], [ %0, %323 ], [ %315, %324 ], [ %0, %326 ], [ %315, %317 ], [ null, %328 ], [ %199, %198 ]
  ret ptr %330
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_smod_pow2(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !prof !789 !PGOFuncName !790 {
  %4 = tail call i32 @floor_log2(i64 noundef %2) #9
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %0) #9
  %6 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %7 = icmp eq i8 %6, 0
  %8 = load i32, ptr @ix86_branch_cost, align 4
  %9 = icmp sgt i32 %8, 1
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %54, !prof !723

11:                                               ; preds = %3
  %12 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %54, label %14, !prof !729

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %16 = tail call ptr @emit_store_flag(ptr noundef %5, i32 noundef 85, ptr noundef %1, ptr noundef %15, i32 noundef %0, i32 noundef 0, i32 noundef -1) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18, !prof !729

18:                                               ; preds = %14
  %19 = tail call ptr @force_reg(i32 noundef %0, ptr noundef nonnull %16) #9
  %20 = zext nneg i32 %4 to i64
  %21 = shl nsw i64 -1, %20
  %22 = xor i64 %21, -1
  %23 = zext i32 %0 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !327
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 3
  %28 = sub nsw i32 %27, %4
  %29 = sext i32 %28 to i64
  %30 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %29) #9
  %31 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 68, i32 noundef %0, ptr noundef %5, ptr noundef %30) #9
  %32 = sext i32 %0 to i64
  %33 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !367
  %35 = icmp eq i32 %34, 2956
  br i1 %35, label %40, label %36, !prof !729

36:                                               ; preds = %18
  %37 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %38 = tail call i32 @rtx_cost(ptr noundef %31, i32 noundef 23, i8 noundef zeroext %37) #9
  %39 = icmp sgt i32 %38, 8
  br i1 %39, label %40, label %47, !prof !729

40:                                               ; preds = %36, %18
  %41 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1, ptr noundef %19, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %42 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %41, ptr noundef %19, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %43 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %22) #9
  %44 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %42, ptr noundef %43, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %45 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %44, ptr noundef %19, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %46 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %45, ptr noundef %19, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  br label %95

47:                                               ; preds = %36
  %48 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr noundef %19, ptr noundef %30, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %49 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %48) #9
  %50 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %1, ptr noundef %49, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %51 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %22) #9
  %52 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %50, ptr noundef %51, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %53 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %52, ptr noundef %49, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  br label %95

54:                                               ; preds = %14, %11, %3
  %55 = zext nneg i32 %4 to i64
  %56 = shl nsw i64 -1, %55
  %57 = xor i64 %56, -1
  %58 = zext i32 %0 to i64
  %59 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !327
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 3
  %63 = icmp ult i8 %60, 9
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = add nsw i32 %62, -1
  %66 = zext nneg i32 %65 to i64
  %67 = shl nsw i64 -1, %66
  %68 = or i64 %67, %57
  br label %73

69:                                               ; preds = %54
  %70 = add nsw i32 %62, -65
  %71 = zext nneg i32 %70 to i64
  %72 = shl nsw i64 -1, %71
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi i64 [ -1, %64 ], [ %72, %69 ]
  %75 = phi i64 [ %68, %64 ], [ %57, %69 ]
  %76 = tail call ptr @immed_double_const(i64 noundef %75, i64 noundef %74, i32 noundef %0) #9
  %77 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %1, ptr noundef %76, ptr noundef %5, i32 noundef 1, i32 noundef 3) #9
  %78 = icmp eq ptr %77, %5
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = tail call ptr @emit_move_insn(ptr noundef %5, ptr noundef %77) #9
  br label %81

81:                                               ; preds = %79, %73
  %82 = tail call ptr @gen_label_rtx() #9
  %83 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %5, ptr noundef %83, i32 noundef 82, i32 noundef %0, ptr noundef %82) #10
  %84 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %85 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %5, ptr noundef %84, ptr noundef %5, i32 noundef 0, i32 noundef 3) #9
  %86 = tail call ptr @immed_double_const(i64 noundef %56, i64 noundef -1, i32 noundef %0) #9
  %87 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %85, ptr noundef %86, ptr noundef %5, i32 noundef 1, i32 noundef 3) #9
  %88 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %89 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %87, ptr noundef %88, ptr noundef %5, i32 noundef 0, i32 noundef 3) #9
  %90 = icmp eq ptr %89, %5
  br i1 %90, label %93, label %91

91:                                               ; preds = %81
  %92 = tail call ptr @emit_move_insn(ptr noundef %5, ptr noundef %89) #9
  br label %93

93:                                               ; preds = %91, %81
  %94 = tail call ptr @emit_label(ptr noundef %82) #9
  br label %95

95:                                               ; preds = %47, %40, %93
  %96 = phi ptr [ %5, %93 ], [ %53, %47 ], [ %46, %40 ]
  ret ptr %96
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_sdiv_pow2(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !prof !791 !PGOFuncName !792 {
  %4 = tail call i32 @floor_log2(i64 noundef %2) #9
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %5) #9
  %7 = icmp eq i64 %2, 2
  br i1 %7, label %8, label %20, !prof !793

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %10 = icmp eq i8 %9, 0
  %11 = load i32, ptr @ix86_branch_cost, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %20, !prof !794

14:                                               ; preds = %8
  %15 = tail call ptr @gen_reg_rtx(i32 noundef %0) #9
  %16 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %17 = tail call ptr @emit_store_flag(ptr noundef %15, i32 noundef 85, ptr noundef %1, ptr noundef %16, i32 noundef %0, i32 noundef 0, i32 noundef 1) #10
  %18 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %17, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 3) #9
  %19 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %18, ptr noundef %6, ptr noundef null, i32 noundef 0) #10
  br label %81

20:                                               ; preds = %8, %3
  %21 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %22 = icmp eq i8 %21, 0
  %23 = load i32, ptr @ix86_branch_cost, align 4
  %24 = icmp sgt i32 %23, 1
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %40, !prof !795

26:                                               ; preds = %20
  tail call void @do_pending_stack_adjust() #9
  tail call void @start_sequence() #9
  %27 = tail call ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %1) #9
  %28 = add nsw i64 %2, -1
  %29 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %28) #9
  %30 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %27, ptr noundef %29, ptr noundef null, i32 noundef 0, i32 noundef 3) #9
  %31 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %30) #9
  %32 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %33 = tail call ptr @emit_conditional_move(ptr noundef %27, i32 noundef 85, ptr noundef %27, ptr noundef %32, i32 noundef %0, ptr noundef %31, ptr noundef %27, i32 noundef %0, i32 noundef 0) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !795

35:                                               ; preds = %26
  tail call void @end_sequence() #9
  br label %40

36:                                               ; preds = %26
  %37 = tail call ptr @get_insns() #9
  tail call void @end_sequence() #9
  %38 = tail call ptr @emit_insn(ptr noundef %37) #9
  %39 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef nonnull %33, ptr noundef %6, ptr noundef null, i32 noundef 0) #10
  br label %81

40:                                               ; preds = %35, %20
  %41 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %42 = icmp eq i8 %41, 0
  %43 = load i32, ptr @ix86_branch_cost, align 4
  %44 = icmp sgt i32 %43, 1
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %73, !prof !795

46:                                               ; preds = %40
  %47 = zext i32 %0 to i64
  %48 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !327
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 3
  %52 = sub nsw i32 %51, %4
  %53 = tail call ptr @gen_reg_rtx(i32 noundef %0) #9
  %54 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %55 = tail call ptr @emit_store_flag(ptr noundef %53, i32 noundef 85, ptr noundef %1, ptr noundef %54, i32 noundef %0, i32 noundef 0, i32 noundef -1) #10
  %56 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %57 = zext i8 %56 to i64
  %58 = sext i32 %52 to i64
  %59 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %57, i64 %47, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !339
  %61 = icmp sgt i32 %60, 4
  br i1 %61, label %62, label %66, !prof !796

62:                                               ; preds = %46
  %63 = add nsw i64 %2, -1
  %64 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %63) #9
  %65 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %55, ptr noundef %64, ptr noundef null, i32 noundef 0, i32 noundef 3) #9
  br label %69

66:                                               ; preds = %46
  %67 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %58) #9
  %68 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %55, ptr noundef %67, ptr noundef null, i32 noundef 1) #10
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi ptr [ %65, %62 ], [ %68, %66 ]
  %71 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %70, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 3) #9
  %72 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %71, ptr noundef %6, ptr noundef null, i32 noundef 0) #10
  br label %81

73:                                               ; preds = %40
  %74 = tail call ptr @gen_label_rtx() #9
  %75 = tail call ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %1) #9
  %76 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call fastcc void @do_cmp_and_jump(ptr noundef %75, ptr noundef %76, i32 noundef 82, i32 noundef %0, ptr noundef %74) #10
  %77 = add nsw i64 %2, -1
  %78 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %77) #9
  tail call void @expand_inc(ptr noundef %75, ptr noundef %78) #10
  %79 = tail call ptr @emit_label(ptr noundef %74) #9
  %80 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %75, ptr noundef %6, ptr noundef null, i32 noundef 0) #10
  br label %81

81:                                               ; preds = %36, %73, %69, %14
  %82 = phi ptr [ %19, %14 ], [ %72, %69 ], [ %80, %73 ], [ %39, %36 ]
  ret ptr %82
}

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @expand_twoval_binop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_cmp_and_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !414 !PGOFuncName !797 {
  %6 = add i32 %2, -86
  %7 = icmp ult i32 %6, 4
  %8 = zext i1 %7 to i32
  tail call void @do_compare_rtx_and_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %8, i32 noundef %3, ptr noundef null, ptr noundef null, ptr noundef %4, i32 noundef -1) #9
  ret void
}

; Function Attrs: optsize
declare ptr @emit_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_barrier() local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @invert_mod2n(i64 noundef %0, i32 noundef %1) unnamed_addr #6 !prof !798 !PGOFuncName !799 {
  %3 = icmp eq i32 %1, 64
  %4 = zext nneg i32 %1 to i64
  %5 = shl nsw i64 -1, %4
  %6 = xor i64 %5, -1
  %7 = select i1 %3, i64 -1, i64 %6, !prof !800
  %8 = icmp sgt i32 %1, 3
  br i1 %8, label %9, label %18, !prof !775

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %16, %9 ], [ 3, %2 ]
  %11 = phi i64 [ %15, %9 ], [ %0, %2 ]
  %12 = mul i64 %11, %0
  %13 = sub i64 2, %12
  %14 = mul i64 %13, %11
  %15 = and i64 %14, %7
  %16 = shl nsw i32 %10, 1
  %17 = icmp slt i32 %16, %1
  br i1 %17, label %9, label %18, !prof !801, !llvm.loop !802

18:                                               ; preds = %9, %2
  %19 = phi i64 [ %0, %2 ], [ %15, %9 ]
  ret i64 %19
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_abs(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sign_expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @expand_twoval_binop_libfunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !780 !PGOFuncName !803 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !327
  %8 = tail call ptr @gen_int_mode(i64 noundef %7, i32 noundef %0) #9
  %9 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !327
  %13 = and i8 %12, -2
  %14 = icmp eq i8 %13, 8
  br i1 %14, label %15, label %16, !prof !782

15:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3461, ptr noundef nonnull @.str.1) #9
  br label %16

16:                                               ; preds = %5, %15
  %17 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %10
  %18 = load i8, ptr %17, align 1, !tbaa !327
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %21 = load i8, ptr %20, align 1, !tbaa !327
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 3
  %24 = zext i8 %9 to i64
  %25 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_highpart_cost, i64 0, i64 %24, i64 %10
  %26 = load i32, ptr %25, align 4, !tbaa !339
  %27 = icmp slt i32 %26, %4
  br i1 %27, label %28, label %33, !prof !804

28:                                               ; preds = %16
  %29 = icmp eq i32 %3, 0
  %30 = select i1 %29, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19)
  %31 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %30, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %3, i32 noundef 0) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %121, !prof !805

33:                                               ; preds = %28, %16
  %34 = add nsw i32 %23, -1
  %35 = icmp ugt i8 %21, 4
  br i1 %35, label %55, label %36, !prof !806

36:                                               ; preds = %33
  %37 = load i32, ptr %25, align 4, !tbaa !339
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %24, i64 %10, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !339
  %41 = shl nsw i32 %40, 1
  %42 = add nsw i32 %41, %37
  %43 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %24, i64 %10
  %44 = load i32, ptr %43, align 4, !tbaa !339
  %45 = shl nsw i32 %44, 2
  %46 = add nsw i32 %42, %45
  %47 = icmp slt i32 %46, %4
  br i1 %47, label %48, label %55, !prof !807

48:                                               ; preds = %36
  %49 = icmp eq i32 %3, 0
  %50 = select i1 %49, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18)
  %51 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %50, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %3, i32 noundef 0) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @expand_mult_highpart_adjust(i32 noundef %0, ptr noundef nonnull %51, ptr noundef %1, ptr noundef %8, ptr noundef nonnull %51, i32 noundef %3) #10
  br label %121

55:                                               ; preds = %48, %36, %33
  %56 = icmp eq i32 %3, 0
  %57 = select i1 %56, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %58 = select i1 %56, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4)
  %59 = zext i8 %18 to i64
  %60 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %58, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !367
  %62 = icmp eq i32 %61, 2956
  br i1 %62, label %72, label %63, !prof !806

63:                                               ; preds = %55
  %64 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_widen_cost, i64 0, i64 %24, i64 %59
  %65 = load i32, ptr %64, align 4, !tbaa !339
  %66 = icmp slt i32 %65, %4
  br i1 %66, label %67, label %72, !prof !807

67:                                               ; preds = %63
  %68 = tail call ptr @expand_binop(i32 noundef %19, ptr noundef nonnull %57, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %3, i32 noundef 2) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef nonnull %68) #10
  br label %121

72:                                               ; preds = %67, %63, %55
  %73 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 %59
  %74 = load i32, ptr %73, align 4, !tbaa !367
  %75 = icmp eq i32 %74, 2956
  %76 = or i1 %35, %75
  br i1 %76, label %94, label %77, !prof !808

77:                                               ; preds = %72
  %78 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_cost, i64 0, i64 %24, i64 %59
  %79 = load i32, ptr %78, align 4, !tbaa !339
  %80 = sext i32 %34 to i64
  %81 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %24, i64 %10, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !339
  %83 = add nsw i32 %82, %79
  %84 = icmp slt i32 %83, %4
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  tail call void @start_sequence() #9
  %86 = tail call ptr @convert_modes(i32 noundef %19, i32 noundef %0, ptr noundef %1, i32 noundef %3) #9
  %87 = tail call ptr @convert_modes(i32 noundef %19, i32 noundef %0, ptr noundef nonnull %2, i32 noundef %3) #9
  %88 = tail call ptr @expand_binop(i32 noundef %19, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), ptr noundef %86, ptr noundef %87, ptr noundef null, i32 noundef %3, i32 noundef 2) #9
  %89 = tail call ptr @get_insns() #9
  tail call void @end_sequence() #9
  %90 = icmp eq ptr %88, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = tail call ptr @emit_insn(ptr noundef %89) #9
  %93 = tail call fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef nonnull %88) #10
  br label %121

94:                                               ; preds = %85, %72, %77
  %95 = select i1 %56, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20)
  %96 = select i1 %56, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4)
  %97 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %96, i64 0, i64 %59
  %98 = load i32, ptr %97, align 4, !tbaa !367
  %99 = icmp eq i32 %98, 2956
  %100 = or i1 %35, %99
  br i1 %100, label %121, label %101, !prof !809

101:                                              ; preds = %94
  %102 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_widen_cost, i64 0, i64 %24, i64 %59
  %103 = load i32, ptr %102, align 4, !tbaa !339
  %104 = sext i32 %34 to i64
  %105 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %24, i64 %10, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !339
  %107 = shl nsw i32 %106, 1
  %108 = add nsw i32 %107, %103
  %109 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %24, i64 %10
  %110 = load i32, ptr %109, align 4, !tbaa !339
  %111 = shl nsw i32 %110, 2
  %112 = add nsw i32 %108, %111
  %113 = icmp slt i32 %112, %4
  br i1 %113, label %114, label %121, !prof !807

114:                                              ; preds = %101
  %115 = zext i1 %56 to i32
  %116 = tail call ptr @expand_binop(i32 noundef %19, ptr noundef nonnull %95, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %115, i32 noundef 2) #9
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = tail call fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef nonnull %116) #10
  %120 = tail call ptr @expand_mult_highpart_adjust(i32 noundef %0, ptr noundef %119, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %3) #10
  br label %121

121:                                              ; preds = %91, %101, %114, %94, %28, %118, %70, %53
  %122 = phi ptr [ %54, %53 ], [ %71, %70 ], [ %120, %118 ], [ %93, %91 ], [ %31, %28 ], [ null, %94 ], [ null, %114 ], [ null, %101 ]
  ret ptr %122
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !414 !PGOFuncName !810 {
  %3 = load i32, ptr @word_mode, align 4, !tbaa !339
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @gen_highpart(i32 noundef %0, ptr noundef %1) #9
  br label %25

7:                                                ; preds = %2
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !327
  %11 = and i8 %10, -2
  %12 = icmp eq i8 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3439, ptr noundef nonnull @.str.1) #9
  br label %14

14:                                               ; preds = %7, %13
  %15 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %8
  %16 = load i8, ptr %15, align 1, !tbaa !327
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %19 = load i8, ptr %18, align 1, !tbaa !327
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %21) #9
  %23 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %17, ptr noundef %1, ptr noundef %22, ptr noundef null, i32 noundef 1) #10
  %24 = tail call ptr @convert_modes(i32 noundef %0, i32 noundef %17, ptr noundef %23, i32 noundef 0) #9
  br label %25

25:                                               ; preds = %14, %5
  %26 = phi ptr [ %6, %5 ], [ %24, %14 ]
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @gen_highpart(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_pending_stack_adjust() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_conditional_move(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @locator_location(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_binary_operation(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_store_flag_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !prof !784 !PGOFuncName !811 {
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %12, label %10, !prof !812

10:                                               ; preds = %8
  %11 = tail call i32 @unsigned_condition(i32 noundef %1) #9
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %1, %8 ]
  %14 = tail call i32 @swap_condition(i32 noundef %13) #9
  %15 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !813

17:                                               ; preds = %12
  %18 = tail call i32 @swap_condition(i32 noundef %13) #9
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %2, %17 ], [ %3, %12 ]
  %21 = phi ptr [ %3, %17 ], [ %2, %12 ]
  %22 = phi i32 [ %18, %17 ], [ %13, %12 ]
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %24, label %28, !prof !814

24:                                               ; preds = %19
  %25 = load i32, ptr %21, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %27, %24 ], [ %4, %19 ]
  switch i32 %22, label %62 [
    i32 85, label %30
    i32 84, label %35
    i32 82, label %40
    i32 83, label %45
    i32 86, label %50
    i32 89, label %56
  ], !prof !815

30:                                               ; preds = %28
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %32 = icmp eq ptr %20, %31
  br i1 %32, label %33, label %62, !prof !816

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  br label %62

35:                                               ; preds = %28
  %36 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !320
  %37 = icmp eq ptr %20, %36
  br i1 %37, label %38, label %62, !prof !817

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  br label %62

40:                                               ; preds = %28
  %41 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %42 = icmp eq ptr %20, %41
  br i1 %42, label %43, label %62, !prof !818

43:                                               ; preds = %40
  %44 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  br label %62

45:                                               ; preds = %28
  %46 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !320
  %47 = icmp eq ptr %20, %46
  br i1 %47, label %48, label %62, !prof !819

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  br label %62

50:                                               ; preds = %28
  %51 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %52 = icmp eq ptr %20, %51
  %53 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %54 = select i1 %52, ptr %53, ptr %20, !prof !820
  %55 = select i1 %52, i32 80, i32 86, !prof !820
  br label %62

56:                                               ; preds = %28
  %57 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %58 = icmp eq ptr %20, %57
  %59 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %60 = select i1 %58, ptr %59, ptr %20, !prof !821
  %61 = select i1 %58, i32 81, i32 89, !prof !821
  br label %62

62:                                               ; preds = %56, %50, %28, %45, %48, %40, %43, %35, %38, %30, %33
  %63 = phi ptr [ %20, %28 ], [ %49, %48 ], [ %20, %45 ], [ %44, %43 ], [ %20, %40 ], [ %39, %38 ], [ %20, %35 ], [ %34, %33 ], [ %20, %30 ], [ %54, %50 ], [ %60, %56 ]
  %64 = phi i32 [ %22, %28 ], [ 82, %48 ], [ 83, %45 ], [ 83, %43 ], [ 82, %40 ], [ 85, %38 ], [ 84, %35 ], [ 84, %33 ], [ 85, %30 ], [ %55, %50 ], [ %61, %56 ]
  %65 = zext i32 %29 to i64
  %66 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !327
  %68 = icmp eq i8 %67, 8
  br i1 %68, label %69, label %140, !prof !822

69:                                               ; preds = %62
  %70 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %65
  %71 = load i8, ptr %70, align 1, !tbaa !327
  %72 = icmp eq i8 %71, 2
  br i1 %72, label %73, label %140, !prof !823

73:                                               ; preds = %69
  %74 = load i32, ptr %21, align 8
  %75 = and i32 %74, 134283263
  %76 = icmp eq i32 %75, 134217771
  br i1 %76, label %140, label %77, !prof !824

77:                                               ; preds = %73
  %78 = and i32 %64, -2
  %79 = icmp eq i32 %78, 80
  br i1 %79, label %80, label %100, !prof !825

80:                                               ; preds = %77
  %81 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %82 = icmp eq ptr %63, %81
  %83 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %84 = icmp eq ptr %63, %83
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %86, label %100, !prof !582

86:                                               ; preds = %80
  %87 = load i32, ptr @word_mode, align 4, !tbaa !339
  %88 = tail call ptr @simplify_gen_subreg(i32 noundef %87, ptr noundef nonnull %21, i32 noundef %29, i32 noundef 0) #9
  %89 = load i32, ptr @word_mode, align 4, !tbaa !339
  %90 = tail call ptr @simplify_gen_subreg(i32 noundef %89, ptr noundef nonnull %21, i32 noundef %29, i32 noundef 4) #9
  %91 = load i32, ptr @word_mode, align 4, !tbaa !339
  %92 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %93 = icmp eq ptr %63, %92
  %94 = select i1 %93, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41)
  %95 = tail call ptr @expand_binop(i32 noundef %91, ptr noundef nonnull %94, ptr noundef %88, ptr noundef %90, ptr noundef null, i32 noundef %5, i32 noundef 0) #9
  %96 = icmp eq ptr %95, null
  br i1 %96, label %140, label %97, !prof !432

97:                                               ; preds = %86
  %98 = load i32, ptr @word_mode, align 4, !tbaa !339
  %99 = tail call ptr @emit_store_flag(ptr noundef null, i32 noundef %64, ptr noundef nonnull %95, ptr noundef %63, i32 noundef %98, i32 noundef %5, i32 noundef %6) #10
  br label %110

100:                                              ; preds = %80, %77
  switch i32 %64, label %140 [
    i32 85, label %101
    i32 82, label %101
  ]

101:                                              ; preds = %100, %100
  %102 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %103 = icmp eq ptr %63, %102
  br i1 %103, label %104, label %140, !prof !826

104:                                              ; preds = %101
  %105 = load i32, ptr @word_mode, align 4, !tbaa !339
  %106 = tail call i32 @subreg_highpart_offset(i32 noundef %105, i32 noundef %29) #9
  %107 = tail call ptr @simplify_gen_subreg(i32 noundef %105, ptr noundef nonnull %21, i32 noundef %29, i32 noundef %106) #9
  %108 = load i32, ptr @word_mode, align 4, !tbaa !339
  %109 = tail call ptr @emit_store_flag(ptr noundef null, i32 noundef %64, ptr noundef %107, ptr noundef %63, i32 noundef %108, i32 noundef %5, i32 noundef %6) #10
  br label %110

110:                                              ; preds = %97, %104
  %111 = phi ptr [ %109, %104 ], [ %99, %97 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %140, label %113, !prof !827

113:                                              ; preds = %110
  %114 = icmp eq i32 %7, 0
  br i1 %114, label %208, label %115, !prof !828

115:                                              ; preds = %113
  %116 = load i32, ptr %111, align 8
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  %119 = icmp eq i32 %118, %7
  br i1 %119, label %208, label %120, !prof !829

120:                                              ; preds = %115
  %121 = icmp eq ptr %0, null
  br i1 %121, label %122, label %124, !prof !830

122:                                              ; preds = %120
  %123 = tail call ptr @gen_reg_rtx(i32 noundef %7) #9
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi ptr [ %0, %120 ], [ %123, %122 ]
  %126 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %127 = sext i32 %126 to i64
  %128 = load i32, ptr @word_mode, align 4, !tbaa !339
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !327
  %132 = zext i8 %131 to i64
  %133 = shl nuw nsw i64 %132, 3
  %134 = add nuw nsw i64 %133, 4294967295
  %135 = and i64 %134, 4294967295
  %136 = shl nuw i64 1, %135
  %137 = and i64 %136, %127
  %138 = icmp eq i64 %137, 0
  %139 = zext i1 %138 to i32
  tail call void @convert_move(ptr noundef %125, ptr noundef nonnull %111, i32 noundef %139) #9
  br label %208

140:                                              ; preds = %101, %100, %86, %73, %110, %69, %62
  %141 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %142 = icmp eq ptr %63, %141
  br i1 %142, label %143, label %182, !prof !831

143:                                              ; preds = %140
  %144 = icmp eq i32 %64, 82
  switch i32 %64, label %182 [
    i32 85, label %145
    i32 82, label %145
  ]

145:                                              ; preds = %143, %143
  %146 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %65
  %147 = load i8, ptr %146, align 1, !tbaa !327
  %148 = icmp eq i8 %147, 2
  br i1 %148, label %149, label %182, !prof !832

149:                                              ; preds = %145
  %150 = icmp eq ptr %0, null
  br i1 %150, label %159, label %151, !prof !833

151:                                              ; preds = %149
  %152 = zext nneg i32 %7 to i64
  %153 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !327
  %155 = load i8, ptr %66, align 1, !tbaa !327
  %156 = icmp ugt i8 %154, %155
  br i1 %156, label %157, label %159, !prof !834

157:                                              ; preds = %151
  %158 = tail call ptr @convert_modes(i32 noundef %7, i32 noundef %29, ptr noundef %21, i32 noundef 0) #9
  br label %159

159:                                              ; preds = %149, %151, %157
  %160 = phi i32 [ %7, %157 ], [ %7, %151 ], [ %29, %149 ]
  %161 = phi i32 [ %7, %157 ], [ %29, %151 ], [ %29, %149 ]
  %162 = phi ptr [ %158, %157 ], [ %21, %151 ], [ %21, %149 ]
  %163 = icmp eq i32 %160, %161
  %164 = select i1 %163, ptr %0, ptr null, !prof !835
  br i1 %144, label %165, label %167, !prof !836

165:                                              ; preds = %159
  %166 = tail call ptr @expand_unop(i32 noundef %161, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %162, ptr noundef null, i32 noundef 0) #9
  br label %167

167:                                              ; preds = %165, %159
  %168 = phi ptr [ %166, %165 ], [ %162, %159 ]
  %169 = zext i32 %161 to i64
  %170 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !327
  %172 = zext i8 %171 to i32
  %173 = shl nuw nsw i32 %172, 3
  %174 = add nsw i32 %173, -1
  %175 = sext i32 %174 to i64
  %176 = tail call ptr @size_int_kind(i64 noundef %175, i32 noundef 0) #9
  %177 = icmp ne i32 %6, -1
  %178 = zext i1 %177 to i32
  %179 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %161, ptr noundef %168, ptr noundef %176, ptr noundef %164, i32 noundef %178) #10
  br i1 %163, label %208, label %180, !prof !835

180:                                              ; preds = %167
  %181 = tail call ptr @convert_modes(i32 noundef %160, i32 noundef %161, ptr noundef %179, i32 noundef 0) #9
  br label %208

182:                                              ; preds = %143, %145, %140
  %183 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %65
  %184 = load i8, ptr %183, align 1, !tbaa !327
  %185 = icmp eq i32 %29, 0
  br i1 %185, label %208, label %186, !prof !837

186:                                              ; preds = %182
  %187 = icmp eq i8 %184, 1
  br label %188

188:                                              ; preds = %186, %202
  %189 = phi i32 [ %29, %186 ], [ %206, %202 ]
  %190 = sext i32 %189 to i64
  %191 = select i1 %187, i64 2, i64 %190, !prof !838
  %192 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !367
  %194 = icmp eq i32 %193, 2956
  br i1 %194, label %202, label %195, !prof !839

195:                                              ; preds = %188
  tail call void @do_pending_stack_adjust() #9
  %196 = tail call fastcc ptr @emit_cstore(ptr noundef %0, i32 noundef %193, i32 noundef %64, i32 noundef %29, i32 noundef %189, i32 noundef %5, ptr noundef %21, ptr noundef %63, i32 noundef %6, i32 noundef %7) #10
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %208, !prof !840

198:                                              ; preds = %195
  %199 = icmp eq i8 %184, 8
  br i1 %199, label %200, label %208

200:                                              ; preds = %198
  %201 = tail call fastcc ptr @emit_cstore(ptr noundef %0, i32 noundef %193, i32 noundef %14, i32 noundef %29, i32 noundef %189, i32 noundef %5, ptr noundef %63, ptr noundef %21, i32 noundef %6, i32 noundef %7) #10
  br label %208

202:                                              ; preds = %188
  %203 = zext i32 %189 to i64
  %204 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !327
  %206 = zext i8 %205 to i32
  %207 = icmp eq i8 %205, 0
  br i1 %207, label %208, label %188, !prof !841, !llvm.loop !842

208:                                              ; preds = %202, %182, %200, %195, %198, %167, %180, %113, %115, %124
  %209 = phi ptr [ %125, %124 ], [ %111, %115 ], [ %111, %113 ], [ %181, %180 ], [ %179, %167 ], [ null, %198 ], [ %196, %195 ], [ %201, %200 ], [ null, %182 ], [ null, %202 ]
  ret ptr %209
}

; Function Attrs: optsize
declare i32 @reverse_condition_maybe_unordered(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @can_compare_p(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @split_comparison(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reverse_condition(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @unsigned_condition(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_highpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_cstore(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 !prof !843 !PGOFuncName !844 {
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !355
  %14 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = tail call ptr @get_last_insn() #9
  %18 = tail call ptr @prepare_operand(i32 noundef %1, ptr noundef %6, i32 noundef 2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  %19 = tail call ptr @prepare_operand(i32 noundef %1, ptr noundef %7, i32 noundef 3, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  %20 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef %16, ptr noundef %18, ptr noundef %19) #9
  %21 = icmp ne ptr %18, null
  %22 = icmp ne ptr %19, null
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %48, !prof !845

24:                                               ; preds = %10
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %25, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !355
  %28 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !369
  %30 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 2, i32 2
  %31 = load i16, ptr %30, align 8
  %32 = zext i16 %31 to i32
  %33 = tail call i32 %29(ptr noundef nonnull %18, i32 noundef %32) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35, !prof !840

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 3
  %37 = load ptr, ptr %36, align 8, !tbaa !369
  %38 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 3, i32 2
  %39 = load i16, ptr %38, align 8
  %40 = zext i16 %39 to i32
  %41 = tail call i32 %37(ptr noundef nonnull %19, i32 noundef %40) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43, !prof !840

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !369
  %46 = tail call i32 %45(ptr noundef %20, i32 noundef 0) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49, !prof !840

48:                                               ; preds = %43, %35, %24, %10
  tail call void @delete_insns_since(ptr noundef %17) #9
  br label %103

49:                                               ; preds = %43
  %50 = icmp eq i32 %9, 0
  br i1 %50, label %51, label %52, !prof !846

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %16, %51 ], [ %9, %49 ]
  %54 = icmp eq ptr %0, null
  br i1 %54, label %55, label %57, !prof !846

55:                                               ; preds = %52
  %56 = tail call ptr @gen_reg_rtx(i32 noundef %53) #9
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi ptr [ %0, %52 ], [ %56, %55 ]
  %59 = load i32, ptr @optimize, align 4, !tbaa !339
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65, !prof !840

61:                                               ; preds = %57
  %62 = load ptr, ptr %13, align 8, !tbaa !369
  %63 = tail call i32 %62(ptr noundef %58, i32 noundef %16) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %57
  %66 = tail call ptr @gen_reg_rtx(i32 noundef %16) #9
  br label %67

67:                                               ; preds = %61, %65
  %68 = phi ptr [ %66, %65 ], [ %58, %61 ]
  %69 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %25, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !371
  %71 = tail call ptr (ptr, ...) %70(ptr noundef %68, ptr noundef %20, ptr noundef nonnull %18, ptr noundef nonnull %19) #9
  %72 = icmp eq ptr %71, null
  br i1 %72, label %103, label %73, !prof !840

73:                                               ; preds = %67
  %74 = tail call ptr @emit_insn(ptr noundef nonnull %71) #9
  %75 = zext nneg i32 %53 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !327
  %78 = zext i16 %15 to i64
  %79 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !327
  %81 = icmp ugt i8 %77, %80
  br i1 %81, label %82, label %85, !prof !847

82:                                               ; preds = %73
  %83 = icmp ult i8 %80, 9
  %84 = zext i1 %83 to i32
  tail call void @convert_move(ptr noundef %58, ptr noundef %68, i32 noundef %84) #9
  br label %85

85:                                               ; preds = %73, %82
  %86 = phi ptr [ %58, %82 ], [ %68, %73 ]
  %87 = phi i32 [ %53, %82 ], [ %16, %73 ]
  %88 = load i32, ptr @optimize, align 4, !tbaa !339
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, ptr %68, ptr null, !prof !840
  %91 = icmp ult i32 %8, 2
  br i1 %91, label %99, label %92, !prof !848

92:                                               ; preds = %85
  %93 = icmp eq i32 %8, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = tail call ptr @expand_unop(i32 noundef %87, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %86, ptr noundef %90, i32 noundef 0) #9
  br label %99

96:                                               ; preds = %92
  %97 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !320
  %98 = tail call ptr @expand_and(i32 noundef %87, ptr noundef %86, ptr noundef %97, ptr noundef %90) #10
  br label %99

99:                                               ; preds = %96, %94, %85
  %100 = phi ptr [ %86, %85 ], [ %95, %94 ], [ %98, %96 ]
  %101 = icmp eq i32 %53, %87
  br i1 %101, label %103, label %102, !prof !849

102:                                              ; preds = %99
  tail call void @convert_move(ptr noundef %58, ptr noundef %100, i32 noundef 0) #9
  br label %103

103:                                              ; preds = %99, %67, %102, %48
  %104 = phi ptr [ %58, %102 ], [ null, %48 ], [ null, %67 ], [ %100, %99 ]
  ret ptr %104
}

; Function Attrs: optsize
declare ptr @prepare_operand(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!318}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!36 = !{ptr @init_expmed, ptr @gen_rtx_CONST_INT, i64 38}
!37 = !{ptr @init_expmed, ptr @rhs_regno, i64 1}
!38 = !{ptr @init_expmed, ptr @df_ref_change_reg_with_loc, i64 1}
!39 = !{ptr @init_expmed, ptr @rtx_cost, i64 649}
!40 = !{ptr @init_expmed, ptr @default_rtl_profile, i64 1}
!41 = !{ptr @negate_rtx, ptr @simplify_unary_operation, i64 2128}
!42 = !{ptr @negate_rtx, ptr @expand_unop, i64 1}
!43 = !{ptr @mode_for_extraction, ptr @fancy_abort, i64 140203}
!44 = !{ptr @store_bit_field, ptr @store_bit_field_1, i64 3304}
!45 = !{ptr @store_bit_field, ptr @fancy_abort, i64 1}
!46 = !{ptr @store_bit_field_1, ptr @mode_for_extraction, i64 6524}
!47 = !{ptr @store_bit_field_1, ptr @adjust_address_1, i64 3301}
!48 = !{ptr @store_bit_field_1, ptr @emit_move_insn, i64 85}
!49 = !{ptr @store_bit_field_1, ptr @int_mode_for_mode, i64 6439}
!50 = !{ptr @store_bit_field_1, ptr @shallow_copy_rtx_stat, i64 3219}
!51 = !{ptr @store_bit_field_1, ptr @set_mem_alias_set, i64 3219}
!52 = !{ptr @store_bit_field_1, ptr @set_mem_expr, i64 3219}
!53 = !{ptr @store_bit_field_1, ptr @get_last_insn, i64 3219}
!54 = !{ptr @store_bit_field_1, ptr @operand_subword_force, i64 10}
!55 = !{ptr @store_bit_field_1, ptr @store_bit_field_1, i64 3227}
!56 = !{ptr @store_bit_field_1, ptr @fancy_abort, i64 1}
!57 = !{ptr @store_bit_field_1, ptr @mode_for_size, i64 2}
!58 = !{ptr @store_bit_field_1, ptr @gen_rtx_SUBREG, i64 2}
!59 = !{ptr @store_bit_field_1, ptr @gen_rtx_CONST_INT, i64 6436}
!60 = !{ptr @store_bit_field_1, ptr @check_predicate_volatile_ok, i64 1}
!61 = !{ptr @store_bit_field_1, ptr @gen_insv, i64 1}
!62 = !{ptr @store_bit_field_1, ptr @get_best_mode, i64 3185}
!63 = !{ptr @store_bit_field_1, ptr @copy_to_reg, i64 3217}
!64 = !{ptr @store_bit_field_1, ptr @delete_insns_since, i64 3216}
!65 = !{ptr @store_bit_field_1, ptr @store_fixed_bit_field, i64 3218}
!66 = !{ptr @store_fixed_bit_field, ptr @fancy_abort, i64 1}
!67 = !{ptr @store_fixed_bit_field, ptr @store_split_bit_field, i64 2}
!68 = !{ptr @store_fixed_bit_field, ptr @get_best_mode, i64 3218}
!69 = !{ptr @store_fixed_bit_field, ptr @adjust_address_1, i64 3217}
!70 = !{ptr @store_fixed_bit_field, ptr @convert_to_mode, i64 5}
!71 = !{ptr @store_fixed_bit_field, ptr @mask_rtx, i64 2398}
!72 = !{ptr @store_fixed_bit_field, ptr @expand_binop, i64 4953}
!73 = !{ptr @store_fixed_bit_field, ptr @build_int_cst, i64 732}
!74 = !{ptr @store_fixed_bit_field, ptr @expand_shift, i64 732}
!75 = !{ptr @store_fixed_bit_field, ptr @force_reg, i64 7516}
!76 = !{ptr @store_fixed_bit_field, ptr @lshift_value, i64 2309}
!77 = !{ptr @store_fixed_bit_field, ptr @copy_rtx, i64 3217}
!78 = !{ptr @store_fixed_bit_field, ptr @emit_move_insn, i64 3217}
!79 = !{ptr @lshift_value, ptr @immed_double_const, i64 2311}
!80 = !{ptr @mask_rtx, ptr @immed_double_const, i64 4088}
!81 = !{ptr @expand_shift, ptr @optimize_insn_for_speed_p, i64 21106}
!82 = !{ptr @expand_shift, ptr @expand_normal, i64 21106}
!83 = !{ptr @expand_shift, ptr @force_reg, i64 3}
!84 = !{ptr @expand_shift, ptr @expand_binop, i64 22084}
!85 = !{ptr @expand_shift, ptr @fancy_abort, i64 1}
!86 = !{ptr @extract_fixed_bit_field, ptr @extract_split_bit_field, i64 2}
!87 = !{ptr @extract_fixed_bit_field, ptr @get_best_mode, i64 2451}
!88 = !{ptr @extract_fixed_bit_field, ptr @adjust_address_1, i64 2450}
!89 = !{ptr @extract_fixed_bit_field, ptr @build_int_cst, i64 1724}
!90 = !{ptr @extract_fixed_bit_field, ptr @expand_shift, i64 1724}
!91 = !{ptr @extract_fixed_bit_field, ptr @convert_to_mode, i64 41}
!92 = !{ptr @extract_fixed_bit_field, ptr @mask_rtx, i64 1686}
!93 = !{ptr @extract_fixed_bit_field, ptr @expand_binop, i64 1686}
!94 = !{ptr @extract_fixed_bit_field, ptr @force_reg, i64 1}
!95 = !{ptr @extract_bit_field, ptr @extract_bit_field_1, i64 8005}
!96 = !{ptr @extract_bit_field_1, ptr @gen_reg_rtx, i64 449}
!97 = !{ptr @extract_bit_field_1, ptr @gen_rtx_CONST_INT, i64 1061}
!98 = !{ptr @extract_bit_field_1, ptr @start_sequence, i64 1}
!99 = !{ptr @extract_bit_field_1, ptr @fancy_abort, i64 10}
!100 = !{ptr @extract_bit_field_1, ptr @get_insns, i64 1}
!101 = !{ptr @extract_bit_field_1, ptr @end_sequence, i64 1}
!102 = !{ptr @extract_bit_field_1, ptr @int_mode_for_mode, i64 15380}
!103 = !{ptr @extract_bit_field_1, ptr @shallow_copy_rtx_stat, i64 7948}
!104 = !{ptr @extract_bit_field_1, ptr @set_mem_alias_set, i64 7948}
!105 = !{ptr @extract_bit_field_1, ptr @set_mem_expr, i64 7948}
!106 = !{ptr @extract_bit_field_1, ptr @mode_for_size, i64 10454}
!107 = !{ptr @extract_bit_field_1, ptr @adjust_address_1, i64 7954}
!108 = !{ptr @extract_bit_field_1, ptr @simplify_gen_subreg, i64 50}
!109 = !{ptr @extract_bit_field_1, ptr @convert_to_mode, i64 1}
!110 = !{ptr @extract_bit_field_1, ptr @emit_clobber, i64 1}
!111 = !{ptr @extract_bit_field_1, ptr @operand_subword, i64 25}
!112 = !{ptr @extract_bit_field_1, ptr @extract_bit_field, i64 20}
!113 = !{ptr @extract_bit_field_1, ptr @emit_move_insn, i64 18}
!114 = !{ptr @extract_bit_field_1, ptr @copy_to_reg, i64 1}
!115 = !{ptr @extract_bit_field_1, ptr @gen_rtx_SUBREG, i64 2}
!116 = !{ptr @extract_bit_field_1, ptr @mode_for_extraction, i64 4926}
!117 = !{ptr @extract_bit_field_1, ptr @check_predicate_volatile_ok, i64 4922}
!118 = !{ptr @extract_bit_field_1, ptr @get_last_insn, i64 2990}
!119 = !{ptr @extract_bit_field_1, ptr @gen_lowpart_SUBREG, i64 319}
!120 = !{ptr @extract_bit_field_1, ptr @gen_extzv, i64 529}
!121 = !{ptr @extract_bit_field_1, ptr @gen_extv, i64 1}
!122 = !{ptr @extract_bit_field_1, ptr @emit_insn, i64 1}
!123 = !{ptr @extract_bit_field_1, ptr @convert_extracted_bit_field, i64 2463}
!124 = !{ptr @extract_bit_field_1, ptr @delete_insns_since, i64 2988}
!125 = !{ptr @extract_bit_field_1, ptr @get_best_mode, i64 2461}
!126 = !{ptr @extract_bit_field_1, ptr @force_reg, i64 2460}
!127 = !{ptr @extract_bit_field_1, ptr @extract_bit_field_1, i64 2460}
!128 = !{ptr @extract_bit_field_1, ptr @extract_fixed_bit_field, i64 2462}
!129 = !{ptr @extract_low_bits, ptr @subreg_lowpart_offset, i64 2}
!130 = !{ptr @extract_low_bits, ptr @simplify_subreg, i64 2}
!131 = !{ptr @extract_low_bits, ptr @ix86_modes_tieable_p, i64 14}
!132 = !{ptr @extract_low_bits, ptr @int_mode_for_mode, i64 16}
!133 = !{ptr @extract_low_bits, ptr @convert_modes, i64 6}
!134 = !{ptr @expand_normal, ptr @expand_expr_real, i64 21106}
!135 = !{ptr @make_tree, ptr @build_int_cst_wide, i64 2}
!136 = !{ptr @make_tree, ptr @build_real, i64 21}
!137 = !{ptr @make_tree, ptr @make_tree, i64 37}
!138 = !{ptr @make_tree, ptr @tree_cons_stat, i64 18}
!139 = !{ptr @make_tree, ptr @build_vector, i64 1}
!140 = !{ptr @make_tree, ptr @fold_build2_stat_loc, i64 4}
!141 = !{ptr @make_tree, ptr @fold_build1_stat_loc, i64 1}
!142 = !{ptr @make_tree, ptr @unsigned_type_for, i64 2}
!143 = !{ptr @make_tree, ptr @build2_stat, i64 4}
!144 = !{ptr @make_tree, ptr @fold_convert_loc, i64 6}
!145 = !{ptr @make_tree, ptr @signed_type_for, i64 1}
!146 = !{ptr @make_tree, ptr @locator_location, i64 4}
!147 = !{ptr @make_tree, ptr @build_decl_stat, i64 111}
!148 = !{ptr @make_tree, ptr @vector_type_mode, i64 1}
!149 = !{ptr @make_tree, ptr @convert_memory_address_addr_space, i64 47}
!150 = !{ptr @expand_mult, ptr @optimize_insn_for_speed_p, i64 12101}
!151 = !{ptr @expand_mult, ptr @expand_unop, i64 2}
!152 = !{ptr @expand_mult, ptr @gen_raw_REG, i64 11981}
!153 = !{ptr @expand_mult, ptr @gen_rtx_fmt_ee_stat, i64 4041}
!154 = !{ptr @expand_mult, ptr @rtx_cost, i64 4041}
!155 = !{ptr @expand_mult, ptr @choose_mult_variant, i64 4041}
!156 = !{ptr @expand_mult, ptr @floor_log2, i64 7439}
!157 = !{ptr @expand_mult, ptr @build_int_cst, i64 7439}
!158 = !{ptr @expand_mult, ptr @expand_shift, i64 7439}
!159 = !{ptr @expand_mult, ptr @expand_mult_const, i64 1899}
!160 = !{ptr @expand_mult, ptr @real_compare, i64 59}
!161 = !{ptr @expand_mult, ptr @force_reg, i64 3}
!162 = !{ptr @expand_mult, ptr @expand_binop, i64 2749}
!163 = !{ptr @expand_mult, ptr @fancy_abort, i64 1030}
!164 = !{ptr @choose_mult_variant, ptr @optimize_insn_for_speed_p, i64 4042}
!165 = !{ptr @choose_mult_variant, ptr @synth_mult, i64 12114}
!166 = !{ptr @expand_mult_const, ptr @force_reg, i64 1900}
!167 = !{ptr @expand_mult_const, ptr @copy_to_mode_reg, i64 1899}
!168 = !{ptr @expand_mult_const, ptr @fancy_abort, i64 3}
!169 = !{ptr @expand_mult_const, ptr @build_int_cst, i64 3710}
!170 = !{ptr @expand_mult_const, ptr @expand_shift, i64 3710}
!171 = !{ptr @expand_mult_const, ptr @gen_rtx_fmt_ee_stat, i64 5659}
!172 = !{ptr @expand_mult_const, ptr @force_operand, i64 1949}
!173 = !{ptr @expand_mult_const, ptr @get_last_insn, i64 3710}
!174 = !{ptr @expand_mult_const, ptr @gen_rtx_CONST_INT, i64 3710}
!175 = !{ptr @expand_mult_const, ptr @set_unique_reg_note, i64 3710}
!176 = !{ptr @expand_mult_const, ptr @expand_unop, i64 1}
!177 = !{ptr @synth_mult, ptr @optimize_insn_for_speed_p, i64 18270}
!178 = !{ptr @synth_mult, ptr @fancy_abort, i64 1}
!179 = !{ptr @synth_mult, ptr @floor_log2, i64 3317}
!180 = !{ptr @synth_mult, ptr @synth_mult, i64 6166}
!181 = !{ptr @synth_mult, ptr @exact_log2, i64 2977}
!182 = !{ptr @ceil_log2, ptr @floor_log2, i64 1255034}
!183 = !{ptr @expand_and, ptr @expand_binop, i64 350}
!184 = !{ptr @expand_and, ptr @emit_move_insn, i64 1}
!185 = !{ptr @expand_divmod, ptr @optimize_insn_for_speed_p, i64 759}
!186 = !{ptr @expand_divmod, ptr @reg_mentioned_p, i64 608}
!187 = !{ptr @expand_divmod, ptr @optab_libfunc, i64 26}
!188 = !{ptr @expand_divmod, ptr @gen_reg_rtx, i64 905}
!189 = !{ptr @expand_divmod, ptr @convert_modes, i64 2}
!190 = !{ptr @expand_divmod, ptr @force_reg, i64 483}
!191 = !{ptr @expand_divmod, ptr @get_last_insn, i64 1026}
!192 = !{ptr @expand_divmod, ptr @floor_log2, i64 35}
!193 = !{ptr @expand_divmod, ptr @gen_rtx_CONST_INT, i64 7}
!194 = !{ptr @expand_divmod, ptr @expand_binop, i64 39}
!195 = !{ptr @expand_divmod, ptr @build_int_cst, i64 233}
!196 = !{ptr @expand_divmod, ptr @expand_shift, i64 233}
!197 = !{ptr @expand_divmod, ptr @emit_store_flag_force, i64 1}
!198 = !{ptr @expand_divmod, ptr @choose_multiplier, i64 189}
!199 = !{ptr @expand_divmod, ptr @fancy_abort, i64 2}
!200 = !{ptr @expand_divmod, ptr @expand_mult_highpart, i64 147}
!201 = !{ptr @expand_divmod, ptr @gen_rtx_fmt_ee_stat, i64 270}
!202 = !{ptr @expand_divmod, ptr @force_operand, i64 58}
!203 = !{ptr @expand_divmod, ptr @single_set_2, i64 54}
!204 = !{ptr @expand_divmod, ptr @set_unique_reg_note, i64 212}
!205 = !{ptr @expand_divmod, ptr @gen_int_mode, i64 19}
!206 = !{ptr @expand_divmod, ptr @expand_unop, i64 10}
!207 = !{ptr @expand_divmod, ptr @emit_store_flag, i64 1}
!208 = !{ptr @expand_divmod, ptr @expand_smod_pow2, i64 6}
!209 = !{ptr @expand_divmod, ptr @expand_divmod, i64 3}
!210 = !{ptr @expand_divmod, ptr @expand_sdiv_pow2, i64 97}
!211 = !{ptr @expand_divmod, ptr @trunc_int_for_mode, i64 6}
!212 = !{ptr @expand_divmod, ptr @delete_insns_since, i64 482}
!213 = !{ptr @expand_divmod, ptr @expand_twoval_binop, i64 496}
!214 = !{ptr @expand_divmod, ptr @gen_label_rtx, i64 9}
!215 = !{ptr @expand_divmod, ptr @do_cmp_and_jump, i64 8}
!216 = !{ptr @expand_divmod, ptr @expand_dec, i64 6}
!217 = !{ptr @expand_divmod, ptr @expand_inc, i64 5}
!218 = !{ptr @expand_divmod, ptr @emit_label, i64 9}
!219 = !{ptr @expand_divmod, ptr @copy_to_mode_reg, i64 1}
!220 = !{ptr @expand_divmod, ptr @gen_jump, i64 3}
!221 = !{ptr @expand_divmod, ptr @emit_jump_insn, i64 3}
!222 = !{ptr @expand_divmod, ptr @emit_barrier, i64 3}
!223 = !{ptr @expand_divmod, ptr @invert_mod2n, i64 14}
!224 = !{ptr @expand_divmod, ptr @expand_mult, i64 43}
!225 = !{ptr @expand_divmod, ptr @plus_constant, i64 1}
!226 = !{ptr @expand_divmod, ptr @expand_abs, i64 2}
!227 = !{ptr @expand_divmod, ptr @sign_expand_binop, i64 576}
!228 = !{ptr @expand_divmod, ptr @expand_twoval_binop_libfunc, i64 1}
!229 = !{ptr @emit_store_flag_force, ptr @emit_store_flag, i64 12276}
!230 = !{ptr @emit_store_flag_force, ptr @gen_reg_rtx, i64 3}
!231 = !{ptr @emit_store_flag_force, ptr @gen_rtx_CONST_INT, i64 6}
!232 = !{ptr @emit_store_flag_force, ptr @reg_mentioned_p, i64 11}
!233 = !{ptr @emit_store_flag_force, ptr @can_compare_p, i64 8}
!234 = !{ptr @emit_store_flag_force, ptr @emit_move_insn, i64 14}
!235 = !{ptr @emit_store_flag_force, ptr @gen_label_rtx, i64 7}
!236 = !{ptr @emit_store_flag_force, ptr @do_compare_rtx_and_jump, i64 7}
!237 = !{ptr @emit_store_flag_force, ptr @emit_label, i64 7}
!238 = !{ptr @choose_multiplier, ptr @ceil_log2, i64 198}
!239 = !{ptr @choose_multiplier, ptr @fancy_abort, i64 7}
!240 = !{ptr @choose_multiplier, ptr @div_and_round_double, i64 396}
!241 = !{ptr @choose_multiplier, ptr @gen_rtx_CONST_INT, i64 198}
!242 = !{ptr @expand_mult_highpart, ptr @optimize_insn_for_speed_p, i64 158}
!243 = !{ptr @expand_mult_highpart, ptr @fancy_abort, i64 3}
!244 = !{ptr @expand_mult_highpart, ptr @expand_mult_highpart_optab, i64 158}
!245 = !{ptr @expand_mult_highpart, ptr @choose_mult_variant, i64 1}
!246 = !{ptr @emit_store_flag, ptr @emit_store_flag_1, i64 13352}
!247 = !{ptr @emit_store_flag, ptr @optimize_insn_for_speed_p, i64 7}
!248 = !{ptr @emit_store_flag, ptr @get_last_insn, i64 6}
!249 = !{ptr @emit_store_flag, ptr @gen_rtx_CONST_INT, i64 6}
!250 = !{ptr @emit_store_flag, ptr @reverse_condition_maybe_unordered, i64 1}
!251 = !{ptr @emit_store_flag, ptr @can_compare_p, i64 5}
!252 = !{ptr @emit_store_flag, ptr @delete_insns_since, i64 1}
!253 = !{ptr @emit_store_flag, ptr @expand_binop, i64 1}
!254 = !{ptr @emit_store_flag, ptr @reverse_condition, i64 4}
!255 = !{ptr @expand_smod_pow2, ptr @floor_log2, i64 5}
!256 = !{ptr @expand_smod_pow2, ptr @gen_reg_rtx, i64 5}
!257 = !{ptr @expand_smod_pow2, ptr @optimize_insn_for_speed_p, i64 12}
!258 = !{ptr @expand_smod_pow2, ptr @emit_store_flag, i64 4}
!259 = !{ptr @expand_smod_pow2, ptr @force_reg, i64 5}
!260 = !{ptr @expand_smod_pow2, ptr @gen_rtx_CONST_INT, i64 6}
!261 = !{ptr @expand_smod_pow2, ptr @gen_rtx_fmt_ee_stat, i64 3}
!262 = !{ptr @expand_smod_pow2, ptr @rtx_cost, i64 3}
!263 = !{ptr @expand_smod_pow2, ptr @expand_binop, i64 21}
!264 = !{ptr @expand_smod_pow2, ptr @immed_double_const, i64 4}
!265 = !{ptr @expand_smod_pow2, ptr @emit_move_insn, i64 2}
!266 = !{ptr @expand_smod_pow2, ptr @gen_label_rtx, i64 2}
!267 = !{ptr @expand_smod_pow2, ptr @do_cmp_and_jump, i64 2}
!268 = !{ptr @expand_smod_pow2, ptr @emit_label, i64 2}
!269 = !{ptr @expand_sdiv_pow2, ptr @floor_log2, i64 100}
!270 = !{ptr @expand_sdiv_pow2, ptr @build_int_cst, i64 168}
!271 = !{ptr @expand_sdiv_pow2, ptr @optimize_insn_for_speed_p, i64 240}
!272 = !{ptr @expand_sdiv_pow2, ptr @gen_reg_rtx, i64 98}
!273 = !{ptr @expand_sdiv_pow2, ptr @emit_store_flag, i64 98}
!274 = !{ptr @expand_sdiv_pow2, ptr @expand_binop, i64 169}
!275 = !{ptr @expand_sdiv_pow2, ptr @expand_shift, i64 168}
!276 = !{ptr @expand_sdiv_pow2, ptr @do_pending_stack_adjust, i64 70}
!277 = !{ptr @expand_sdiv_pow2, ptr @start_sequence, i64 70}
!278 = !{ptr @expand_sdiv_pow2, ptr @copy_to_mode_reg, i64 71}
!279 = !{ptr @expand_sdiv_pow2, ptr @gen_rtx_CONST_INT, i64 72}
!280 = !{ptr @expand_sdiv_pow2, ptr @force_reg, i64 70}
!281 = !{ptr @expand_sdiv_pow2, ptr @emit_conditional_move, i64 70}
!282 = !{ptr @expand_sdiv_pow2, ptr @end_sequence, i64 70}
!283 = !{ptr @expand_sdiv_pow2, ptr @get_insns, i64 1}
!284 = !{ptr @expand_sdiv_pow2, ptr @emit_insn, i64 1}
!285 = !{ptr @expand_sdiv_pow2, ptr @gen_label_rtx, i64 1}
!286 = !{ptr @expand_sdiv_pow2, ptr @do_cmp_and_jump, i64 1}
!287 = !{ptr @expand_sdiv_pow2, ptr @expand_inc, i64 1}
!288 = !{ptr @expand_sdiv_pow2, ptr @emit_label, i64 1}
!289 = !{ptr @expand_mult_highpart_optab, ptr @gen_int_mode, i64 158}
!290 = !{ptr @expand_mult_highpart_optab, ptr @optimize_insn_for_speed_p, i64 158}
!291 = !{ptr @expand_mult_highpart_optab, ptr @fancy_abort, i64 2}
!292 = !{ptr @expand_mult_highpart_optab, ptr @expand_binop, i64 123}
!293 = !{ptr @expand_mult_highpart_optab, ptr @expand_mult_highpart_adjust, i64 2}
!294 = !{ptr @expand_mult_highpart_optab, ptr @extract_high_half, i64 2}
!295 = !{ptr @emit_store_flag_1, ptr @unsigned_condition, i64 9469}
!296 = !{ptr @emit_store_flag_1, ptr @swap_condition, i64 13355}
!297 = !{ptr @emit_store_flag_1, ptr @swap_commutative_operands_p, i64 13352}
!298 = !{ptr @emit_store_flag_1, ptr @simplify_gen_subreg, i64 13}
!299 = !{ptr @emit_store_flag_1, ptr @expand_binop, i64 4}
!300 = !{ptr @emit_store_flag_1, ptr @emit_store_flag, i64 8}
!301 = !{ptr @emit_store_flag_1, ptr @subreg_highpart_offset, i64 5}
!302 = !{ptr @emit_store_flag_1, ptr @gen_reg_rtx, i64 1}
!303 = !{ptr @emit_store_flag_1, ptr @convert_move, i64 3}
!304 = !{ptr @emit_store_flag_1, ptr @convert_modes, i64 924}
!305 = !{ptr @emit_store_flag_1, ptr @expand_unop, i64 835}
!306 = !{ptr @emit_store_flag_1, ptr @size_int_kind, i64 2646}
!307 = !{ptr @emit_store_flag_1, ptr @expand_shift, i64 2646}
!308 = !{ptr @emit_store_flag_1, ptr @do_pending_stack_adjust, i64 10652}
!309 = !{ptr @emit_store_flag_1, ptr @emit_cstore, i64 10652}
!310 = !{ptr @emit_cstore, ptr @get_last_insn, i64 12986}
!311 = !{ptr @emit_cstore, ptr @prepare_operand, i64 25972}
!312 = !{ptr @emit_cstore, ptr @gen_rtx_fmt_ee_stat, i64 12986}
!313 = !{ptr @emit_cstore, ptr @delete_insns_since, i64 5}
!314 = !{ptr @emit_cstore, ptr @gen_reg_rtx, i64 12984}
!315 = !{ptr @emit_cstore, ptr @emit_insn, i64 12980}
!316 = !{ptr @emit_cstore, ptr @convert_move, i64 2680}
!317 = !{ptr @emit_cstore, ptr @expand_and, i64 1}
!318 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!319 = !{!"function_entry_count", i64 1}
!320 = !{!321, !321, i64 0}
!321 = !{!"any pointer", !322, i64 0}
!322 = !{!"omnipotent char", !323, i64 0}
!323 = !{!"Simple C/C++ TBAA"}
!324 = !{!"branch_weights", i32 2, i32 30}
!325 = distinct !{!325, !326}
!326 = !{!"llvm.loop.mustprogress"}
!327 = !{!322, !322, i64 0}
!328 = !{!329, !322, i64 478}
!329 = !{!"rtl_data", !330, i64 0, !332, i64 40, !333, i64 96, !334, i64 112, !336, i64 208, !337, i64 248, !331, i64 312, !321, i64 320, !321, i64 328, !321, i64 336, !321, i64 344, !321, i64 352, !321, i64 360, !321, i64 368, !321, i64 376, !321, i64 384, !321, i64 392, !338, i64 400, !321, i64 408, !321, i64 416, !321, i64 424, !331, i64 432, !331, i64 436, !331, i64 440, !331, i64 444, !331, i64 448, !331, i64 452, !321, i64 456, !322, i64 464, !322, i64 465, !322, i64 466, !322, i64 467, !322, i64 468, !322, i64 469, !322, i64 470, !322, i64 471, !322, i64 472, !322, i64 473, !322, i64 474, !322, i64 475, !322, i64 476, !322, i64 477, !322, i64 478, !322, i64 479, !322, i64 480, !322, i64 481, !322, i64 482, !322, i64 483, !322, i64 484, !322, i64 485}
!330 = !{!"expr_status", !331, i64 0, !331, i64 4, !331, i64 8, !321, i64 16, !321, i64 24, !321, i64 32}
!331 = !{!"int", !322, i64 0}
!332 = !{!"emit_status", !331, i64 0, !331, i64 4, !321, i64 8, !321, i64 16, !321, i64 24, !331, i64 32, !331, i64 36, !331, i64 40, !331, i64 44, !321, i64 48}
!333 = !{!"varasm_status", !321, i64 0, !331, i64 8}
!334 = !{!"incoming_args", !331, i64 0, !331, i64 4, !331, i64 8, !321, i64 16, !335, i64 24, !321, i64 88}
!335 = !{!"ix86_args", !331, i64 0, !331, i64 4, !331, i64 8, !331, i64 12, !331, i64 16, !331, i64 20, !331, i64 24, !331, i64 28, !331, i64 32, !331, i64 36, !331, i64 40, !331, i64 44, !331, i64 48, !331, i64 52, !331, i64 56, !331, i64 60}
!336 = !{!"function_subsections", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32}
!337 = !{!"rtl_eh", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !322, i64 48}
!338 = !{!"long", !322, i64 0}
!339 = !{!331, !331, i64 0}
!340 = !{!"branch_weights", i32 1, i32 191}
!341 = !{!"branch_weights", i32 191, i32 641}
!342 = distinct !{!342, !326}
!343 = !{!"branch_weights", i32 3, i32 11}
!344 = !{!"branch_weights", i32 7, i32 7}
!345 = !{!"branch_weights", i32 1, i32 207}
!346 = !{!"branch_weights", i32 207, i32 4481}
!347 = distinct !{!347, !326}
!348 = !{!"branch_weights", i32 1, i32 2}
!349 = distinct !{!349, !326}
!350 = !{!"expmed.c:rhs_regno"}
!351 = !{!"function_entry_count", i64 2128}
!352 = !{!"branch_weights", i32 1, i32 2129}
!353 = !{!"function_entry_count", i64 280405}
!354 = !{!"branch_weights", i32 67244, i32 213163}
!355 = !{!356, !321, i64 24}
!356 = !{!"insn_data", !321, i64 0, !322, i64 8, !321, i64 16, !321, i64 24, !322, i64 32, !322, i64 33, !322, i64 34, !322, i64 35}
!357 = !{!"branch_weights", i32 74351, i32 138813}
!358 = !{!"function_entry_count", i64 3304}
!359 = !{i8 0, i8 2}
!360 = !{!"branch_weights", i32 1, i32 3305}
!361 = !{!"function_entry_count", i64 6524}
!362 = !{!"expmed.c:store_bit_field_1"}
!363 = !{!"branch_weights", i32 21017025, i32 6526, i32 21565125}
!364 = distinct !{!364, !326}
!365 = !{!"branch_weights", i32 3305, i32 1}
!366 = !{!"branch_weights", i32 2017758, i32 -2101489256}
!367 = !{!368, !331, i64 0}
!368 = !{!"optab_handlers", !331, i64 0}
!369 = !{!370, !321, i64 0}
!370 = !{!"insn_operand_data", !321, i64 0, !321, i64 8, !331, i64 16, !322, i64 18, !322, i64 19}
!371 = !{!356, !321, i64 16}
!372 = !{!"branch_weights", i32 1881, i32 4645}
!373 = !{!"branch_weights", i32 85, i32 1797}
!374 = !{!"branch_weights", i32 85, i32 1}
!375 = !{!"branch_weights", i32 1, i32 85}
!376 = !{!"branch_weights", i32 4, i32 82}
!377 = !{!"branch_weights", i32 6441, i32 1}
!378 = !{!379, !321, i64 0}
!379 = !{!"rtl_hooks", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32}
!380 = !{!"branch_weights", i32 3221, i32 3221}
!381 = !{!"branch_weights", i32 2895679, i32 17860445}
!382 = !{!"branch_weights", i32 1, i32 899}
!383 = !{!"branch_weights", i32 1, i32 6441}
!384 = distinct !{!384, !326}
!385 = !{!"branch_weights", i32 3221, i32 1}
!386 = !{!"branch_weights", i32 1, i32 3221}
!387 = !{!"branch_weights", i32 4623, i32 1819}
!388 = !{!"branch_weights", i32 3639, i32 1}
!389 = !{!"branch_weights", i32 41486481, i32 12883}
!390 = !{!"branch_weights", i32 10374841, i32 10378062, i32 3221}
!391 = !{!"branch_weights", i32 2796, i32 426}
!392 = !{!"branch_weights", i32 1, i32 426}
!393 = !{!"branch_weights", i32 394, i32 33}
!394 = !{!"branch_weights", i32 1, i32 3189}
!395 = !{!396, !331, i64 28}
!396 = !{!"mem_attrs", !321, i64 0, !321, i64 8, !321, i64 16, !331, i64 24, !331, i64 28, !322, i64 32}
!397 = !{!"function_entry_count", i64 4906}
!398 = !{!"expmed.c:check_predicate_volatile_ok"}
!399 = !{!"function_entry_count", i64 3220}
!400 = !{!"expmed.c:store_fixed_bit_field"}
!401 = !{!"branch_weights", i32 10374841, i32 3222, i32 3221}
!402 = !{!"branch_weights", i32 2312, i32 910}
!403 = !{!"branch_weights", i32 2312, i32 1}
!404 = !{!"branch_weights", i32 1649, i32 664}
!405 = !{!"branch_weights", i32 1649, i32 1}
!406 = !{!"branch_weights", i32 1477, i32 173}
!407 = !{!"branch_weights", i32 2146190014, i32 -2146190014}
!408 = !{!"branch_weights", i32 1, i32 910}
!409 = !{!"branch_weights", i32 906, i32 5}
!410 = !{!"branch_weights", i32 657, i32 254}
!411 = !{!"branch_weights", i32 177, i32 734}
!412 = !{!"branch_weights", i32 775583411, i32 1371900237}
!413 = !{!"branch_weights", i32 2558, i32 664}
!414 = !{!"function_entry_count", i64 0}
!415 = !{!"expmed.c:store_split_bit_field"}
!416 = distinct !{!416, !326}
!417 = !{!"function_entry_count", i64 2311}
!418 = !{!"expmed.c:lshift_value"}
!419 = !{!"branch_weights", i32 1590, i32 723}
!420 = !{!"function_entry_count", i64 4088}
!421 = !{!"expmed.c:mask_rtx"}
!422 = !{!"branch_weights", i32 4089, i32 1}
!423 = !{!"branch_weights", i32 4089, i32 16724011}
!424 = !{!"branch_weights", i32 16719921, i32 8179}
!425 = !{!"function_entry_count", i64 21106}
!426 = !{!"branch_weights", i32 697720, i32 -1840770985}
!427 = !{!"branch_weights", i32 214, i32 20894}
!428 = !{!"branch_weights", i32 117265288, i32 163730672}
!429 = !{!"branch_weights", i32 12176, i32 1}
!430 = !{!"branch_weights", i32 148194096, i32 85233}
!431 = !{!"branch_weights", i32 4, i32 12168}
!432 = !{!"branch_weights", i32 1, i32 4}
!433 = !{!"branch_weights", i32 1, i32 127}
!434 = distinct !{!434, !326}
!435 = !{!"branch_weights", i32 1, i32 41782, i32 1}
!436 = !{!"branch_weights", i32 72, i32 20820}
!437 = !{!"branch_weights", i32 7401, i32 13420}
!438 = !{!"branch_weights", i32 -763203128, i32 381601564}
!439 = !{!"branch_weights", i32 -381601564, i32 381601564}
!440 = !{!"branch_weights", i32 0, i32 20891}
!441 = distinct !{!441, !326}
!442 = !{!"branch_weights", i32 1, i32 20891}
!443 = !{!"function_entry_count", i64 2453}
!444 = !{!"expmed.c:extract_fixed_bit_field"}
!445 = !{!"branch_weights", i32 6022116, i32 2455, i32 2454}
!446 = !{!"branch_weights", i32 1, i32 2454}
!447 = !{!"branch_weights", i32 2454, i32 1}
!448 = !{!"branch_weights", i32 728, i32 1727}
!449 = !{!"branch_weights", i32 1449, i32 279}
!450 = !{!"branch_weights", i32 273, i32 7}
!451 = !{!"branch_weights", i32 1687, i32 41}
!452 = !{!"branch_weights", i32 2414, i32 41}
!453 = !{!"branch_weights", i32 766, i32 1689}
!454 = distinct !{!454, !326}
!455 = !{!"expmed.c:extract_split_bit_field"}
!456 = distinct !{!456, !326}
!457 = !{!"function_entry_count", i64 8005}
!458 = !{!"function_entry_count", i64 10458}
!459 = !{!"expmed.c:extract_bit_field_1"}
!460 = !{!"branch_weights", i32 1, i32 10459}
!461 = !{!"branch_weights", i32 83159509, i32 10460, i32 26241631}
!462 = distinct !{!462, !326}
!463 = !{!"branch_weights", i32 2509, i32 1}
!464 = !{!"branch_weights", i32 1766827, i32 4302353}
!465 = !{!"branch_weights", i32 4, i32 728}
!466 = !{!"branch_weights", i32 1332327, i32 -1973707981}
!467 = !{!468, !321, i64 1240}
!468 = !{!"gcc_target", !469, i64 0, !471, i64 368, !472, i64 664, !331, i64 744, !321, i64 752, !321, i64 760, !321, i64 768, !321, i64 776, !321, i64 784, !321, i64 792, !321, i64 800, !321, i64 808, !321, i64 816, !321, i64 824, !321, i64 832, !321, i64 840, !321, i64 848, !321, i64 856, !321, i64 864, !321, i64 872, !321, i64 880, !321, i64 888, !321, i64 896, !321, i64 904, !321, i64 912, !321, i64 920, !321, i64 928, !321, i64 936, !321, i64 944, !321, i64 952, !321, i64 960, !321, i64 968, !321, i64 976, !321, i64 984, !321, i64 992, !321, i64 1000, !321, i64 1008, !321, i64 1016, !321, i64 1024, !321, i64 1032, !321, i64 1040, !321, i64 1048, !321, i64 1056, !338, i64 1064, !338, i64 1072, !321, i64 1080, !321, i64 1088, !321, i64 1096, !321, i64 1104, !321, i64 1112, !321, i64 1120, !321, i64 1128, !321, i64 1136, !321, i64 1144, !321, i64 1152, !321, i64 1160, !321, i64 1168, !473, i64 1176, !321, i64 1232, !321, i64 1240, !321, i64 1248, !321, i64 1256, !321, i64 1264, !321, i64 1272, !321, i64 1280, !321, i64 1288, !321, i64 1296, !321, i64 1304, !321, i64 1312, !321, i64 1320, !321, i64 1328, !321, i64 1336, !321, i64 1344, !321, i64 1352, !321, i64 1360, !321, i64 1368, !321, i64 1376, !321, i64 1384, !321, i64 1392, !321, i64 1400, !321, i64 1408, !321, i64 1416, !321, i64 1424, !321, i64 1432, !321, i64 1440, !321, i64 1448, !321, i64 1456, !338, i64 1464, !474, i64 1472, !321, i64 1664, !321, i64 1672, !321, i64 1680, !321, i64 1688, !321, i64 1696, !321, i64 1704, !321, i64 1712, !321, i64 1720, !321, i64 1728, !321, i64 1736, !321, i64 1744, !321, i64 1752, !321, i64 1760, !321, i64 1768, !321, i64 1776, !475, i64 1784, !476, i64 1792, !477, i64 1896, !478, i64 1968, !321, i64 2016, !322, i64 2024, !322, i64 2025, !322, i64 2026, !322, i64 2027, !322, i64 2028, !322, i64 2029, !322, i64 2030, !322, i64 2031, !322, i64 2032, !322, i64 2033, !322, i64 2034, !322, i64 2035}
!469 = !{!"asm_out", !321, i64 0, !321, i64 8, !321, i64 16, !470, i64 24, !470, i64 56, !321, i64 88, !321, i64 96, !321, i64 104, !321, i64 112, !321, i64 120, !321, i64 128, !321, i64 136, !321, i64 144, !321, i64 152, !321, i64 160, !321, i64 168, !321, i64 176, !321, i64 184, !321, i64 192, !321, i64 200, !321, i64 208, !321, i64 216, !321, i64 224, !321, i64 232, !321, i64 240, !321, i64 248, !321, i64 256, !321, i64 264, !321, i64 272, !321, i64 280, !321, i64 288, !321, i64 296, !321, i64 304, !321, i64 312, !321, i64 320, !321, i64 328, !321, i64 336, !321, i64 344, !321, i64 352, !321, i64 360}
!470 = !{!"asm_int_op", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24}
!471 = !{!"sched", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !321, i64 64, !321, i64 72, !321, i64 80, !321, i64 88, !321, i64 96, !321, i64 104, !321, i64 112, !321, i64 120, !321, i64 128, !321, i64 136, !321, i64 144, !321, i64 152, !321, i64 160, !321, i64 168, !321, i64 176, !321, i64 184, !321, i64 192, !321, i64 200, !321, i64 208, !321, i64 216, !321, i64 224, !321, i64 232, !321, i64 240, !321, i64 248, !321, i64 256, !321, i64 264, !321, i64 272, !321, i64 280, !321, i64 288}
!472 = !{!"vectorize", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !321, i64 64, !321, i64 72}
!473 = !{!"addr_space", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48}
!474 = !{!"calls", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !321, i64 64, !321, i64 72, !321, i64 80, !321, i64 88, !321, i64 96, !321, i64 104, !321, i64 112, !321, i64 120, !321, i64 128, !321, i64 136, !321, i64 144, !321, i64 152, !321, i64 160, !321, i64 168, !321, i64 176, !321, i64 184}
!475 = !{!"c", !321, i64 0}
!476 = !{!"cxx", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !321, i64 64, !321, i64 72, !321, i64 80, !321, i64 88, !321, i64 96}
!477 = !{!"emutls", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !322, i64 64, !322, i64 65}
!478 = !{!"target_option_hooks", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40}
!479 = distinct !{!479, !326}
!480 = !{!"branch_weights", i32 10456, i32 1}
!481 = !{!"branch_weights", i32 7951, i32 2506}
!482 = !{!"branch_weights", i32 20913, i32 1}
!483 = !{!"branch_weights", i32 1626, i32 8831}
!484 = !{!"branch_weights", i32 2643876, i32 3253}
!485 = !{!"branch_weights", i32 15405625, i32 19268807}
!486 = !{!"branch_weights", i32 5498, i32 53}
!487 = !{!"branch_weights", i32 1, i32 53}
!488 = !{!"branch_weights", i32 53, i32 1}
!489 = !{!"branch_weights", i32 5550, i32 1}
!490 = !{!"branch_weights", i32 1, i32 4907}
!491 = distinct !{!491, !326}
!492 = distinct !{!492, !326}
!493 = !{!"branch_weights", i32 -2147483648, i32 0}
!494 = !{!"branch_weights", i32 2454, i32 2454}
!495 = !{!"branch_weights", i32 24078649, i32 9815}
!496 = !{!"branch_weights", i32 -866122683, i32 1397958, i32 -864027174}
!497 = !{!"branch_weights", i32 4379, i32 529}
!498 = !{!"branch_weights", i32 529, i32 1}
!499 = !{!"branch_weights", i32 211, i32 319}
!500 = !{!"branch_weights", i32 1, i32 529}
!501 = !{!"branch_weights", i32 444, i32 86}
!502 = !{!"branch_weights", i32 200, i32 330}
!503 = !{!"branch_weights", i32 330, i32 1}
!504 = !{!"branch_weights", i32 2, i32 528}
!505 = !{!"branch_weights", i32 2147045957, i32 437691}
!506 = !{!"branch_weights", i32 2218, i32 237}
!507 = !{!"branch_weights", i32 237, i32 1}
!508 = !{!"expmed.c:convert_extracted_bit_field"}
!509 = !{!"function_entry_count", i64 64}
!510 = !{!"branch_weights", i32 54, i32 12}
!511 = !{!"branch_weights", i32 2, i32 11}
!512 = !{!"branch_weights", i32 1, i32 11}
!513 = !{!"branch_weights", i32 23, i32 121}
!514 = !{!"expmed.c:expand_normal"}
!515 = !{!"function_entry_count", i64 145}
!516 = !{!"branch_weights", i32 123, i32 1, i32 24, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!517 = !{!"branch_weights", i32 1, i32 24}
!518 = !{!519, !331, i64 0}
!519 = !{!"rtvec_def", !331, i64 0, !322, i64 8}
!520 = distinct !{!520, !326}
!521 = !{!522, !321, i64 448}
!522 = !{!"lang_hooks", !321, i64 0, !338, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !321, i64 64, !321, i64 72, !321, i64 80, !321, i64 88, !321, i64 96, !321, i64 104, !321, i64 112, !321, i64 120, !321, i64 128, !321, i64 136, !321, i64 144, !321, i64 152, !321, i64 160, !321, i64 168, !321, i64 176, !321, i64 184, !321, i64 192, !321, i64 200, !321, i64 208, !321, i64 216, !321, i64 224, !321, i64 232, !523, i64 240, !524, i64 248, !525, i64 256, !526, i64 272, !527, i64 432, !528, i64 560, !321, i64 584, !321, i64 592, !321, i64 600, !321, i64 608, !321, i64 616, !321, i64 624, !321, i64 632, !321, i64 640, !321, i64 648, !321, i64 656, !321, i64 664, !322, i64 672}
!523 = !{!"lang_hooks_for_tree_inlining", !321, i64 0}
!524 = !{!"lang_hooks_for_callgraph", !321, i64 0}
!525 = !{!"lang_hooks_for_tree_dump", !321, i64 0, !321, i64 8}
!526 = !{!"lang_hooks_for_decls", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !321, i64 64, !321, i64 72, !321, i64 80, !321, i64 88, !321, i64 96, !321, i64 104, !321, i64 112, !321, i64 120, !321, i64 128, !321, i64 136, !321, i64 144, !321, i64 152}
!527 = !{!"lang_hooks_for_types", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !321, i64 64, !321, i64 72, !321, i64 80, !321, i64 88, !321, i64 96, !321, i64 104, !321, i64 112, !322, i64 120}
!528 = !{!"lang_hooks_for_lto", !321, i64 0, !321, i64 8, !321, i64 16}
!529 = !{!"branch_weights", i32 7534735, i32 228886641}
!530 = !{!"branch_weights", i32 5329, i32 3774, i32 73}
!531 = !{!"branch_weights", i32 1, i32 51}
!532 = !{!"function_entry_count", i64 12101}
!533 = !{!"branch_weights", i32 1, i32 12102}
!534 = !{!"branch_weights", i32 10, i32 12093}
!535 = !{!"branch_weights", i32 2, i32 12092}
!536 = !{!"branch_weights", i32 5, i32 4}
!537 = !{!"branch_weights", i32 1294595, i32 11449}
!538 = !{!"branch_weights", i32 1057, i32 12681189}
!539 = !{!"branch_weights", i32 251001, i32 5765972, i32 501}
!540 = !{!"branch_weights", i32 151, i32 11336}
!541 = !{!"branch_weights", i32 1, i32 151}
!542 = !{i64 0, i64 65}
!543 = !{!"branch_weights", i32 0, i32 -2147483648}
!544 = !{!"branch_weights", i32 7444, i32 4043}
!545 = !{!"branch_weights", i32 2143, i32 1901}
!546 = !{!"branch_weights", i32 1, i32 2749}
!547 = !{!"branch_weights", i32 7260, i32 328240}
!548 = !{i64 0, i64 4, !339, i64 0, i64 4, !339, i64 0, i64 4, !339, i64 0, i64 4, !339, i64 0, i64 4, !339, i64 0, i64 4, !339, i64 8, i64 24, !327}
!549 = !{!"branch_weights", i32 58, i32 3}
!550 = !{!"branch_weights", i32 502, i32 1381742}
!551 = !{!"function_entry_count", i64 4042}
!552 = !{!"expmed.c:choose_mult_variant"}
!553 = !{!"branch_weights", i32 1, i32 4043}
!554 = !{!555, !556, i64 0}
!555 = !{!"mult_cost", !556, i64 0, !556, i64 2}
!556 = !{!"short", !322, i64 0}
!557 = !{!555, !556, i64 2}
!558 = !{!559, !556, i64 0}
!559 = !{!"algorithm", !555, i64 0, !556, i64 4, !322, i64 8, !322, i64 136}
!560 = !{!"branch_weights", i32 4035, i32 9}
!561 = !{!"branch_weights", i32 1554, i32 2482}
!562 = !{!559, !556, i64 2}
!563 = !{!"branch_weights", i32 348, i32 2135}
!564 = !{!"branch_weights", i32 348, i32 1}
!565 = !{!"branch_weights", i32 1, i32 4035}
!566 = !{!"branch_weights", i32 2135, i32 1901}
!567 = !{!"branch_weights", i32 1, i32 2135}
!568 = !{i64 0, i64 2, !569, i64 2, i64 2, !569, i64 4, i64 2, !569, i64 8, i64 128, !327, i64 136, i64 32, !327}
!569 = !{!556, !556, i64 0}
!570 = !{!"branch_weights", i32 1554, i32 2490}
!571 = !{!"branch_weights", i32 348, i32 2143}
!572 = !{!"branch_weights", i32 1, i32 2143}
!573 = !{!"function_entry_count", i64 1900}
!574 = !{!"expmed.c:expand_mult_const"}
!575 = !{!"branch_weights", i32 1834, i32 124780, i32 3363556}
!576 = !{!559, !556, i64 4}
!577 = !{!"branch_weights", i32 1900, i32 1}
!578 = !{!"branch_weights", i32 1, i32 3712}
!579 = !{!"branch_weights", i32 772043, i32 -1326143105}
!580 = !{!"branch_weights", i32 -1325371062, i32 27747}
!581 = !{!"branch_weights", i32 1, i32 1766, i32 9, i32 156, i32 1412, i32 1, i32 227, i32 147}
!582 = !{!"branch_weights", i32 9, i32 1}
!583 = !{!"branch_weights", i32 156, i32 1}
!584 = !{!"branch_weights", i32 1412, i32 1}
!585 = !{!"branch_weights", i32 227, i32 1}
!586 = !{!"branch_weights", i32 147, i32 1}
!587 = !{!"branch_weights", i32 1, i32 147}
!588 = !{!"branch_weights", i32 1812, i32 1900}
!589 = distinct !{!589, !326}
!590 = !{!"branch_weights", i32 3613801, i32 1902, i32 1901}
!591 = !{!338, !338, i64 0}
!592 = !{!"branch_weights", i32 1901, i32 1}
!593 = !{!"function_entry_count", i64 18270}
!594 = !{!"expmed.c:synth_mult"}
!595 = !{!"branch_weights", i32 33, i32 18239}
!596 = !{!"branch_weights", i32 1412, i32 16860}
!597 = !{!"branch_weights", i32 696, i32 16165}
!598 = !{!"branch_weights", i32 258, i32 439}
!599 = !{!"branch_weights", i32 216986508, i32 27167600, i32 1003952}
!600 = !{!"branch_weights", i32 1, i32 68}
!601 = !{!602, !338, i64 0}
!602 = !{!"alg_hash_entry", !338, i64 0, !331, i64 8, !331, i64 12, !555, i64 16, !322, i64 20}
!603 = !{!"branch_weights", i32 14029, i32 669}
!604 = !{!602, !331, i64 8}
!605 = !{!"branch_weights", i32 14029, i32 1}
!606 = !{!602, !322, i64 20}
!607 = !{!602, !331, i64 12}
!608 = !{!"branch_weights", i32 69191028, i32 14030, i32 127635842}
!609 = !{!602, !556, i64 16}
!610 = !{!"branch_weights", i32 159, i32 8940}
!611 = !{!"branch_weights", i32 6943, i32 1998}
!612 = !{!602, !556, i64 18}
!613 = !{!"branch_weights", i32 19, i32 6925}
!614 = !{!"branch_weights", i32 1282, i32 3651}
!615 = !{!"branch_weights", i32 721, i32 2931}
!616 = !{!"branch_weights", i32 1, i32 721}
!617 = !{!"branch_weights", i32 1, i32 1740, i32 7, i32 148, i32 222, i32 140, i32 1399, i32 1}
!618 = !{!"branch_weights", i32 371, i32 475}
!619 = !{!"branch_weights", i32 2110, i32 1}
!620 = !{!"branch_weights", i32 1358, i32 753}
!621 = !{!"branch_weights", i32 121104, i32 142042}
!622 = !{!"branch_weights", i32 160, i32 1951}
!623 = !{!"branch_weights", i32 68, i32 93}
!624 = !{!"branch_weights", i32 1, i32 187}
!625 = !{!"branch_weights", i32 371, i32 1740}
!626 = !{!"branch_weights", i32 628, i32 5593}
!627 = distinct !{!627, !326}
!628 = !{!"branch_weights", i32 1, i32 628}
!629 = !{!"branch_weights", i32 182304, i32 90053}
!630 = !{!"branch_weights", i32 156, i32 267}
!631 = !{!"branch_weights", i32 1, i32 267}
!632 = !{!"branch_weights", i32 15, i32 193}
!633 = !{!"branch_weights", i32 1, i32 193}
!634 = !{!"branch_weights", i32 10404, i32 54383}
!635 = !{!"branch_weights", i32 1, i32 102}
!636 = !{!"branch_weights", i32 475, i32 154}
!637 = !{!"branch_weights", i32 392, i32 1}
!638 = !{!"branch_weights", i32 -1786731379, i32 74385010}
!639 = !{!"branch_weights", i32 170, i32 280}
!640 = !{!"branch_weights", i32 86, i32 364}
!641 = !{!"branch_weights", i32 26, i32 424}
!642 = !{!"branch_weights", i32 40804, i32 45471}
!643 = !{!"branch_weights", i32 -1198413532, i32 76374622}
!644 = !{!"branch_weights", i32 1, i32 365}
!645 = !{!"branch_weights", i32 141, i32 225}
!646 = !{!"branch_weights", i32 21609, i32 32559}
!647 = !{!"branch_weights", i32 15095, i32 392}
!648 = distinct !{!648, !326}
!649 = !{!"branch_weights", i32 845, i32 361}
!650 = !{!"branch_weights", i32 3508129, i32 3747}
!651 = !{!"branch_weights", i32 1412, i32 462}
!652 = !{!"branch_weights", i32 1, i32 462}
!653 = !{!"branch_weights", i32 475, i32 1399}
!654 = !{!"branch_weights", i32 224675, i32 1901}
!655 = !{!"branch_weights", i32 1, i32 473}
!656 = !{!"branch_weights", i32 3024, i32 1472}
!657 = !{!"branch_weights", i32 1472, i32 1}
!658 = !{!"branch_weights", i32 695, i32 778}
!659 = !{!"branch_weights", i32 125, i32 3594}
!660 = !{!"branch_weights", i32 1, i32 3718}
!661 = !{i64 0, i64 2, !569, i64 2, i64 2, !569}
!662 = !{i64 0, i64 2, !569}
!663 = !{!"function_entry_count", i64 1255034}
!664 = !{!"function_entry_count", i64 350}
!665 = !{!"branch_weights", i32 1, i32 351}
!666 = !{!"branch_weights", i32 236, i32 116}
!667 = !{!"branch_weights", i32 116, i32 1}
!668 = !{!"function_entry_count", i64 759}
!669 = !{!"branch_weights", i32 351, i32 410}
!670 = !{!"branch_weights", i32 279, i32 73}
!671 = !{!"branch_weights", i32 1228620513, i32 918863135}
!672 = !{!"branch_weights", i32 1, i32 760}
!673 = !{!"branch_weights", i32 495, i32 376961}
!674 = !{!"branch_weights", i32 394, i32 367}
!675 = !{!"branch_weights", i32 335, i32 123313}
!676 = !{!"branch_weights", i32 74414, i32 31570}
!677 = !{!"branch_weights", i32 249, i32 10}
!678 = !{!"branch_weights", i32 14, i32 236}
!679 = !{!"branch_weights", i32 2, i32 13}
!680 = !{!"branch_weights", i32 357, i32 1}
!681 = !{!"branch_weights", i32 18, i32 340}
!682 = !{!"branch_weights", i32 2, i32 17}
!683 = !{!"branch_weights", i32 100809, i32 28561}
!684 = !{!"branch_weights", i32 1, i32 171}
!685 = !{!"branch_weights", i32 757, i32 174}
!686 = !{!"branch_weights", i32 256, i32 502}
!687 = !{!"branch_weights", i32 171, i32 1689}
!688 = distinct !{!688, !326}
!689 = !{!"branch_weights", i32 1, i32 86}
!690 = !{!"branch_weights", i32 127, i32 10881}
!691 = distinct !{!691, !326}
!692 = !{!"branch_weights", i32 405, i32 356}
!693 = !{!"branch_weights", i32 356, i32 1}
!694 = !{!"branch_weights", i32 495, i32 266}
!695 = !{!"branch_weights", i32 190, i32 571}
!696 = !{!"branch_weights", i32 1056, i32 8303}
!697 = !{!"branch_weights", i32 15, i32 8}
!698 = !{!"branch_weights", i32 1103776561, i32 1043707087}
!699 = !{!"branch_weights", i32 760, i32 1}
!700 = !{!"branch_weights", i32 71, i32 54721}
!701 = !{!"branch_weights", i32 51, i32 39521}
!702 = !{!"branch_weights", i32 276554, i32 158738}
!703 = !{!"branch_weights", i32 -2080374784, i32 8388608, i32 8388607, i32 8388607}
!704 = !{!"branch_weights", i32 1, i32 190, i32 556, i32 1, i32 1, i32 1, i32 1, i32 16, i32 1, i32 1}
!705 = !{!"branch_weights", i32 336, i32 410}
!706 = !{!"branch_weights", i32 264, i32 73}
!707 = !{!"branch_weights", i32 1, i32 73}
!708 = !{!"branch_weights", i32 73, i32 1}
!709 = !{!"branch_weights", i32 552, i32 1298}
!710 = !{!"branch_weights", i32 23, i32 1}
!711 = !{!"branch_weights", i32 2102813341, i32 44670307}
!712 = !{!"branch_weights", i32 145, i32 5184}
!713 = !{!"branch_weights", i32 35, i32 38}
!714 = !{!"branch_weights", i32 1, i32 39}
!715 = !{!"branch_weights", i32 319, i32 1}
!716 = !{!"branch_weights", i32 94246932, i32 2053236716}
!717 = !{!"branch_weights", i32 39, i32 1}
!718 = !{!"branch_weights", i32 17, i32 4753}
!719 = !{!"branch_weights", i32 69696, i32 265, i32 264}
!720 = !{!"branch_weights", i32 264, i32 1}
!721 = !{!"branch_weights", i32 1, i32 264}
!722 = !{!"branch_weights", i32 151, i32 114}
!723 = !{!"branch_weights", i32 6, i32 1}
!724 = !{!"branch_weights", i32 95, i32 52}
!725 = !{!"branch_weights", i32 52, i32 1}
!726 = !{!"branch_weights", i32 1, i32 52}
!727 = !{!"branch_weights", i32 109, i32 105}
!728 = !{!"branch_weights", i32 200856162, i32 1946627486}
!729 = !{!"branch_weights", i32 1, i32 6}
!730 = !{!"branch_weights", i32 101, i32 4}
!731 = !{!"branch_weights", i32 4, i32 1}
!732 = !{!"branch_weights", i32 10, i32 95}
!733 = !{!"branch_weights", i32 1, i32 10}
!734 = !{!"branch_weights", i32 87, i32 1}
!735 = !{!"branch_weights", i32 493674402, i32 1653809246}
!736 = !{!"branch_weights", i32 49, i32 15}
!737 = !{!"branch_weights", i32 105, i32 1}
!738 = !{!"branch_weights", i32 103, i32 3}
!739 = !{!"branch_weights", i32 1855, i32 8961}
!740 = !{!"branch_weights", i32 26, i32 62}
!741 = !{!"branch_weights", i32 7, i32 56}
!742 = !{!"branch_weights", i32 13, i32 3}
!743 = !{!"branch_weights", i32 52, i32 165}
!744 = !{!"branch_weights", i32 1327, i32 1}
!745 = !{!"branch_weights", i32 56640485, i32 2090843163}
!746 = !{!"branch_weights", i32 165, i32 1}
!747 = !{i64 0, i64 64}
!748 = !{!"branch_weights", i32 256, i32 33}
!749 = !{!"branch_weights", i32 313, i32 226}
!750 = !{!"branch_weights", i32 226, i32 1}
!751 = !{!"branch_weights", i32 157, i32 382}
!752 = !{!"branch_weights", i32 157, i32 1}
!753 = !{!"branch_weights", i32 236377080, i32 -1880544249}
!754 = !{!"branch_weights", i32 390, i32 6}
!755 = !{!"branch_weights", i32 1204, i32 26535}
!756 = !{!"branch_weights", i32 6278, i32 27739}
!757 = !{!"branch_weights", i32 166658017, i32 1980825631}
!758 = !{!"branch_weights", i32 25, i32 18}
!759 = !{!"branch_weights", i32 18, i32 1}
!760 = !{!"branch_weights", i32 14, i32 29}
!761 = !{!"branch_weights", i32 1, i32 14}
!762 = !{!"function_entry_count", i64 12276}
!763 = !{!"branch_weights", i32 7, i32 12271}
!764 = !{!"branch_weights", i32 1, i32 7}
!765 = !{!"branch_weights", i32 7, i32 1}
!766 = !{!767, !322, i64 46}
!767 = !{!"real_format", !321, i64 0, !321, i64 8, !331, i64 16, !331, i64 20, !331, i64 24, !331, i64 28, !331, i64 32, !331, i64 36, !331, i64 40, !322, i64 44, !322, i64 45, !322, i64 46, !322, i64 47, !322, i64 48, !322, i64 49, !322, i64 50, !322, i64 51}
!768 = !{!"function_entry_count", i64 198}
!769 = !{!"expmed.c:choose_multiplier"}
!770 = !{!"branch_weights", i32 1, i32 199}
!771 = !{!"branch_weights", i32 63, i32 137}
!772 = !{!"branch_weights", i32 12737, i32 63}
!773 = !{!"branch_weights", i32 39601, i32 399}
!774 = !{!"branch_weights", i32 199, i32 1}
!775 = !{!"branch_weights", i32 127, i32 1}
!776 = !{!"branch_weights", i32 305, i32 198}
!777 = !{!"branch_weights", i32 32001, i32 127}
!778 = distinct !{!778, !326}
!779 = !{!"branch_weights", i32 137, i32 63}
!780 = !{!"function_entry_count", i64 158}
!781 = !{!"expmed.c:expand_mult_highpart"}
!782 = !{!"branch_weights", i32 319, i32 25281}
!783 = !{!"branch_weights", i32 159, i32 1}
!784 = !{!"function_entry_count", i64 13352}
!785 = !{!"branch_weights", i32 8, i32 13346}
!786 = !{!"branch_weights", i32 7, i32 13347}
!787 = !{!"branch_weights", i32 7, i32 8, i32 49}
!788 = !{!"branch_weights", i32 113, i32 15}
!789 = !{!"function_entry_count", i64 5}
!790 = !{!"expmed.c:expand_smod_pow2"}
!791 = !{!"function_entry_count", i64 100}
!792 = !{!"expmed.c:expand_sdiv_pow2"}
!793 = !{!"branch_weights", i32 31, i32 71}
!794 = !{!"branch_weights", i32 31, i32 1}
!795 = !{!"branch_weights", i32 71, i32 1}
!796 = !{!"branch_weights", i32 1, i32 71}
!797 = !{!"expmed.c:do_cmp_and_jump"}
!798 = !{!"function_entry_count", i64 15}
!799 = !{!"expmed.c:invert_mod2n"}
!800 = !{!"branch_weights", i32 1, i32 16}
!801 = !{!"branch_weights", i32 361, i32 127}
!802 = distinct !{!802, !326}
!803 = !{!"expmed.c:expand_mult_highpart_optab"}
!804 = !{!"branch_weights", i32 122, i32 38}
!805 = !{!"branch_weights", i32 23, i32 100}
!806 = !{!"branch_weights", i32 23, i32 38}
!807 = !{!"branch_weights", i32 1, i32 38}
!808 = !{!"branch_weights", i32 121, i32 1}
!809 = !{!"branch_weights", i32 935, i32 1444}
!810 = !{!"expmed.c:extract_high_half"}
!811 = !{!"expmed.c:emit_store_flag_1"}
!812 = !{!"branch_weights", i32 3884, i32 9470}
!813 = !{!"branch_weights", i32 13351, i32 3}
!814 = !{!"branch_weights", i32 965, i32 12389}
!815 = !{!"branch_weights", i32 12429, i32 334, i32 159, i32 152, i32 190, i32 15, i32 80}
!816 = !{!"branch_weights", i32 1, i32 334}
!817 = !{!"branch_weights", i32 1, i32 159}
!818 = !{!"branch_weights", i32 1, i32 152}
!819 = !{!"branch_weights", i32 1, i32 190}
!820 = !{!"branch_weights", i32 1, i32 15}
!821 = !{!"branch_weights", i32 1, i32 80}
!822 = !{!"branch_weights", i32 14, i32 13340}
!823 = !{!"branch_weights", i32 14, i32 1}
!824 = !{!"branch_weights", i32 1, i32 29}
!825 = !{!"branch_weights", i32 59, i32 121}
!826 = !{!"branch_weights", i32 5, i32 1}
!827 = !{!"branch_weights", i32 322749799, i32 1824733849}
!828 = !{!"branch_weights", i32 1, i32 8}
!829 = !{!"branch_weights", i32 4, i32 5}
!830 = !{!"branch_weights", i32 1, i32 5}
!831 = !{!"branch_weights", i32 3980, i32 9367}
!832 = !{!"branch_weights", i32 354, i32 1}
!833 = !{!"branch_weights", i32 5, i32 350}
!834 = !{!"branch_weights", i32 2, i32 349}
!835 = !{!"branch_weights", i32 233, i32 122}
!836 = !{!"branch_weights", i32 112, i32 243}
!837 = !{!"branch_weights", i32 1, i32 223}
!838 = !{!"branch_weights", i32 1, i32 13005}
!839 = !{!"branch_weights", i32 19, i32 12987}
!840 = !{!"branch_weights", i32 1, i32 12987}
!841 = !{!"branch_weights", i32 223, i32 415937}
!842 = distinct !{!842, !326}
!843 = !{!"function_entry_count", i64 12986}
!844 = !{!"expmed.c:emit_cstore"}
!845 = !{!"branch_weights", i32 168662169, i32 25975}
!846 = !{!"branch_weights", i32 4, i32 12984}
!847 = !{!"branch_weights", i32 2681, i32 10307}
!848 = !{!"branch_weights", i32 167623210, i32 12906}
!849 = !{!"branch_weights", i32 12987, i32 1}
