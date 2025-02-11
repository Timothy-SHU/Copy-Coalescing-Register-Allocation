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
define dso_local void @init_expmed() local_unnamed_addr #0 {
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
  store ptr %7, ptr %8, align 8, !tbaa !6
  %9 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #9
  %10 = getelementptr inbounds [32 x ptr], ptr %3, i64 0, i64 %5
  store ptr %9, ptr %10, align 8, !tbaa !6
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %13, label %4, !llvm.loop !10

13:                                               ; preds = %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(936) %1, i8 0, i64 936, i1 false)
  store i32 37, ptr %1, align 8
  %14 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #10
  call void @df_ref_change_reg_with_loc(i32 noundef %14, i32 noundef 58, ptr noundef nonnull %1) #9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  store i32 58, ptr %15, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, -65536
  %19 = or disjoint i32 %18, 49
  store i32 %19, ptr %16, align 8
  %20 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %21, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, -65536
  %25 = or disjoint i32 %24, 51
  store i32 %25, ptr %22, align 8
  %26 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 4, i32 1
  store ptr %1, ptr %26, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -65536
  %30 = or disjoint i32 %29, 52
  store i32 %30, ptr %27, align 8
  %31 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 5, i32 1
  store ptr %1, ptr %31, align 8, !tbaa !12
  %32 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 5, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %32, align 8, !tbaa !12
  %33 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 7
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, -65536
  %36 = or disjoint i32 %35, 55
  store i32 %36, ptr %33, align 8
  %37 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 7, i32 1
  store ptr %1, ptr %37, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 7, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %38, align 8, !tbaa !12
  %39 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, -65536
  %42 = or disjoint i32 %41, 59
  store i32 %42, ptr %39, align 8
  %43 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 9, i32 1
  store ptr %1, ptr %43, align 8, !tbaa !12
  %44 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 9, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %44, align 8, !tbaa !12
  %45 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 12
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, -65536
  %48 = or disjoint i32 %47, 55
  store i32 %48, ptr %45, align 8
  %49 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 12, i32 1
  store ptr %1, ptr %49, align 8, !tbaa !12
  %50 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 32) #9
  %51 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 12, i32 1, i32 0, i32 0, i64 1
  store ptr %50, ptr %51, align 8, !tbaa !12
  %52 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 14
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, -65536
  %55 = or disjoint i32 %54, 58
  store i32 %55, ptr %52, align 8
  %56 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 14, i32 1
  store ptr %1, ptr %56, align 8, !tbaa !12
  %57 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 14, i32 1, i32 0, i32 0, i64 1
  store ptr %50, ptr %57, align 8, !tbaa !12
  %58 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 11
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, -65536
  %61 = or disjoint i32 %60, 99
  store i32 %61, ptr %58, align 8
  %62 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 11, i32 1
  store ptr %1, ptr %62, align 8, !tbaa !12
  %63 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 16
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, -65536
  %66 = or disjoint i32 %65, 52
  store i32 %66, ptr %63, align 8
  %67 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 16, i32 1
  store ptr %58, ptr %67, align 8, !tbaa !12
  %68 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 16, i32 1, i32 0, i32 0, i64 1
  store ptr %58, ptr %68, align 8, !tbaa !12
  %69 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 18
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, -65536
  %72 = or disjoint i32 %71, 68
  store i32 %72, ptr %69, align 8
  %73 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 18, i32 1
  store ptr %63, ptr %73, align 8, !tbaa !12
  %74 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 20
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, -65536
  %77 = or disjoint i32 %76, 100
  store i32 %77, ptr %74, align 8
  %78 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 20, i32 1
  store ptr %69, ptr %78, align 8, !tbaa !12
  %79 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 21
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, -65536
  %82 = or disjoint i32 %81, 65
  store i32 %82, ptr %79, align 8
  %83 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 21, i32 1
  store ptr %1, ptr %83, align 8, !tbaa !12
  %84 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 23
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, -65536
  %87 = or disjoint i32 %86, 52
  store i32 %87, ptr %84, align 8
  %88 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 23, i32 1
  store ptr %1, ptr %88, align 8, !tbaa !12
  %89 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 25
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, -65536
  %92 = or disjoint i32 %91, 49
  store i32 %92, ptr %89, align 8
  %93 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 25, i32 1
  store ptr %84, ptr %93, align 8, !tbaa !12
  %94 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 25, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %94, align 8, !tbaa !12
  %95 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 27
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, -65536
  %98 = or disjoint i32 %97, 50
  store i32 %98, ptr %95, align 8
  %99 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 27, i32 1
  store ptr %84, ptr %99, align 8, !tbaa !12
  %100 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 27, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %100, align 8, !tbaa !12
  %101 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 29
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, -65536
  %104 = or disjoint i32 %103, 50
  store i32 %104, ptr %101, align 8
  %105 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 29, i32 1
  store ptr %1, ptr %105, align 8, !tbaa !12
  %106 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 29, i32 1, i32 0, i32 0, i64 1
  store ptr %84, ptr %106, align 8, !tbaa !12
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
  store i8 %115, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !13
  %116 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %117 = call i32 @rtx_cost(ptr noundef %116, i32 noundef 23, i8 noundef zeroext %115) #9
  %118 = getelementptr inbounds [2 x i32], ptr @zero_cost, i64 0, i64 %114
  store i32 %117, ptr %118, align 4, !tbaa !24
  br i1 %108, label %246, label %120

119:                                              ; preds = %230, %215
  br i1 %191, label %246, label %120, !llvm.loop !25

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
  store i32 %166, ptr %168, align 4, !tbaa !24
  %169 = call i32 @rtx_cost(ptr noundef nonnull %22, i32 noundef 23, i8 noundef zeroext %115) #9
  %170 = getelementptr inbounds [2 x [87 x i32]], ptr @neg_cost, i64 0, i64 %114, i64 %167
  store i32 %169, ptr %170, align 4, !tbaa !24
  %171 = call i32 @rtx_cost(ptr noundef nonnull %27, i32 noundef 23, i8 noundef zeroext %115) #9
  %172 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_cost, i64 0, i64 %114, i64 %167
  store i32 %171, ptr %172, align 4, !tbaa !24
  %173 = call i32 @rtx_cost(ptr noundef nonnull %33, i32 noundef 23, i8 noundef zeroext %115) #9
  %174 = getelementptr inbounds [2 x [87 x i32]], ptr @sdiv_cost, i64 0, i64 %114, i64 %167
  store i32 %173, ptr %174, align 4, !tbaa !24
  %175 = call i32 @rtx_cost(ptr noundef nonnull %39, i32 noundef 23, i8 noundef zeroext %115) #9
  %176 = getelementptr inbounds [2 x [87 x i32]], ptr @udiv_cost, i64 0, i64 %114, i64 %167
  store i32 %175, ptr %176, align 4, !tbaa !24
  %177 = call i32 @rtx_cost(ptr noundef nonnull %45, i32 noundef 23, i8 noundef zeroext %115) #9
  %178 = load i32, ptr %168, align 4, !tbaa !24
  %179 = shl nsw i32 %178, 1
  %180 = icmp sle i32 %177, %179
  %181 = zext i1 %180 to i8
  %182 = getelementptr inbounds [2 x [87 x i8]], ptr @sdiv_pow2_cheap, i64 0, i64 %114, i64 %167
  store i8 %181, ptr %182, align 1, !tbaa !12
  %183 = call i32 @rtx_cost(ptr noundef nonnull %52, i32 noundef 23, i8 noundef zeroext %115) #9
  %184 = load i32, ptr %168, align 4, !tbaa !24
  %185 = shl nsw i32 %184, 2
  %186 = icmp sle i32 %183, %185
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds [2 x [87 x i8]], ptr @smod_pow2_cheap, i64 0, i64 %114, i64 %167
  store i8 %187, ptr %188, align 1, !tbaa !12
  %189 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %167
  %190 = load i8, ptr %189, align 1, !tbaa !12
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %215, label %192

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
  %205 = load i8, ptr %204, align 1, !tbaa !12
  %206 = zext i8 %205 to i64
  %207 = shl nuw nsw i64 %206, 3
  %208 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %207) #9
  store ptr %208, ptr %109, align 8, !tbaa !12
  %209 = call i32 @rtx_cost(ptr noundef nonnull %63, i32 noundef 23, i8 noundef zeroext %115) #9
  %210 = zext i8 %190 to i64
  %211 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_widen_cost, i64 0, i64 %114, i64 %210
  store i32 %209, ptr %211, align 4, !tbaa !24
  %212 = call i32 @rtx_cost(ptr noundef nonnull %74, i32 noundef 23, i8 noundef zeroext %115) #9
  %213 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_highpart_cost, i64 0, i64 %114, i64 %167
  store i32 %212, ptr %213, align 4, !tbaa !24
  %214 = load i32, ptr %168, align 4, !tbaa !24
  br label %215

215:                                              ; preds = %192, %120
  %216 = phi i32 [ %214, %192 ], [ %184, %120 ]
  %217 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %114, i64 %167
  store i32 0, ptr %217, align 16, !tbaa !24
  %218 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub1_cost, i64 0, i64 %114, i64 %167
  store i32 %216, ptr %218, align 16, !tbaa !24
  %219 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %114, i64 %167
  store i32 %216, ptr %219, align 16, !tbaa !24
  %220 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %114, i64 %167
  store i32 %216, ptr %220, align 16, !tbaa !24
  %221 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %167
  %222 = load i8, ptr %221, align 1, !tbaa !12
  %223 = icmp ugt i8 %222, 4
  %224 = zext i8 %222 to i32
  %225 = shl nuw nsw i32 %224, 3
  %226 = select i1 %223, i32 32, i32 %225
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %119, label %228

228:                                              ; preds = %215
  %229 = zext nneg i32 %226 to i64
  br label %230

230:                                              ; preds = %228, %230
  %231 = phi i64 [ 1, %228 ], [ %244, %230 ]
  %232 = getelementptr inbounds [32 x ptr], ptr %3, i64 0, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !6
  store ptr %233, ptr %110, align 8, !tbaa !12
  %234 = getelementptr inbounds [32 x ptr], ptr %2, i64 0, i64 %231
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  store ptr %235, ptr %111, align 8, !tbaa !12
  %236 = call i32 @rtx_cost(ptr noundef nonnull %79, i32 noundef 23, i8 noundef zeroext %115) #9
  %237 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %114, i64 %167, i64 %231
  store i32 %236, ptr %237, align 4, !tbaa !24
  %238 = call i32 @rtx_cost(ptr noundef nonnull %89, i32 noundef 23, i8 noundef zeroext %115) #9
  %239 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %114, i64 %167, i64 %231
  store i32 %238, ptr %239, align 4, !tbaa !24
  %240 = call i32 @rtx_cost(ptr noundef nonnull %95, i32 noundef 23, i8 noundef zeroext %115) #9
  %241 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %114, i64 %167, i64 %231
  store i32 %240, ptr %241, align 4, !tbaa !24
  %242 = call i32 @rtx_cost(ptr noundef nonnull %101, i32 noundef 23, i8 noundef zeroext %115) #9
  %243 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub1_cost, i64 0, i64 %114, i64 %167, i64 %231
  store i32 %242, ptr %243, align 4, !tbaa !24
  %244 = add nuw nsw i64 %231, 1
  %245 = icmp eq i64 %244, %229
  br i1 %245, label %119, label %230, !llvm.loop !26

246:                                              ; preds = %119, %112
  br i1 %113, label %112, label %247, !llvm.loop !27

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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !12
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @negate_rtx(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %0, ptr noundef %1, i32 noundef %0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

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
define dso_local i32 @mode_for_extraction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.insn_data, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 %15, i32 2
  %17 = load i16, ptr %16, align 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, ptr @word_mode, align 4, !tbaa !24
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
define dso_local void @store_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc zeroext i8 @store_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext 1) #10, !range !30
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 856, ptr noundef nonnull @.str.1) #9
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @store_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
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
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load i32, ptr %18, align 8, !tbaa !12
  %20 = shl nsw i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = add i64 %13, %21
  %23 = load ptr, ptr %17, align 8, !tbaa !12
  br label %11, !llvm.loop !31

24:                                               ; preds = %11
  %25 = lshr i32 %14, 16
  %26 = and i32 %25, 255
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !12
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 3
  %32 = icmp ult i64 %13, %31
  br i1 %32, label %37, label %545

33:                                               ; preds = %11
  %34 = lshr i32 %14, 16
  %35 = and i32 %34, 255
  %36 = zext nneg i32 %35 to i64
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i64 [ %36, %33 ], [ %27, %24 ]
  %39 = and i32 %14, 65535
  %40 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %38
  %41 = load i8, ptr %40, align 1, !tbaa !12
  %42 = add i8 %41, -18
  %43 = icmp ult i8 %42, -6
  %44 = icmp eq i32 %39, 43
  %45 = or i1 %44, %43
  br i1 %45, label %119, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 %38
  %48 = load i32, ptr %47, align 4, !tbaa !32
  %49 = icmp eq i32 %48, 2956
  br i1 %49, label %119, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %52 = load i8, ptr %51, align 1, !tbaa !12
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, %3
  br i1 %54, label %55, label %119

55:                                               ; preds = %50
  %56 = zext i8 %52 to i64
  %57 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !12
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
  %72 = load ptr, ptr %71, align 8, !tbaa !28
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
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = tail call i32 %83(ptr noundef %4, i32 noundef %78) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %66
  %87 = tail call ptr @copy_to_mode_reg(i32 noundef %78, ptr noundef %4) #9
  br label %88

88:                                               ; preds = %86, %66
  %89 = phi ptr [ %4, %66 ], [ %87, %86 ]
  %90 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !34
  %92 = tail call i32 %91(ptr noundef %69, i32 noundef %81) #9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = tail call ptr @copy_to_mode_reg(i32 noundef %78, ptr noundef %69) #9
  br label %96

96:                                               ; preds = %94, %88
  %97 = phi ptr [ %69, %88 ], [ %95, %94 ]
  %98 = load ptr, ptr %72, align 8, !tbaa !34
  %99 = tail call i32 %98(ptr noundef nonnull %12, i32 noundef %75) #9
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr %82, align 8, !tbaa !34
  %103 = tail call i32 %102(ptr noundef %89, i32 noundef %78) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %90, align 8, !tbaa !34
  %107 = tail call i32 %106(ptr noundef %97, i32 noundef %81) #9
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %101, %96
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 453, ptr noundef nonnull @.str.1) #9
  br label %110

110:                                              ; preds = %105, %109
  %111 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %70, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !36
  %113 = tail call ptr (ptr, ...) %112(ptr noundef nonnull %12, ptr noundef %89, ptr noundef %97) #9
  %114 = tail call ptr @get_insns() #9
  tail call void @end_sequence() #9
  %115 = icmp eq ptr %113, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = tail call ptr @emit_insn(ptr noundef %114) #9
  %118 = tail call ptr @emit_insn(ptr noundef nonnull %113) #9
  br label %545

119:                                              ; preds = %110, %37, %62, %55, %50, %46
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
  br i1 %129, label %132, label %130

130:                                              ; preds = %119
  %131 = load i32, ptr %12, align 8
  br label %167

132:                                              ; preds = %119
  %133 = zext i32 %3 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !12
  %136 = zext i8 %135 to i64
  %137 = shl nuw nsw i64 %136, 3
  %138 = icmp eq i64 %137, %1
  %139 = load i32, ptr %12, align 8
  br i1 %138, label %140, label %167

140:                                              ; preds = %132
  %141 = and i32 %139, 65535
  %142 = icmp eq i32 %141, 43
  br i1 %142, label %156, label %143

143:                                              ; preds = %140
  %144 = icmp ugt i8 %135, 3
  br i1 %144, label %152, label %145

145:                                              ; preds = %143
  %146 = lshr i32 %139, 16
  %147 = and i32 %146, 255
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !12
  %151 = icmp eq i8 %150, %135
  br i1 %151, label %152, label %167

152:                                              ; preds = %145, %143
  %153 = zext i8 %135 to i32
  %154 = srem i32 %128, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %167

156:                                              ; preds = %140
  %157 = tail call ptr @adjust_address_1(ptr noundef nonnull %12, i32 noundef %3, i64 noundef %121, i32 noundef 1, i32 noundef 1) #9
  br label %164

158:                                              ; preds = %152
  %159 = lshr i32 %139, 16
  %160 = and i32 %159, 255
  %161 = icmp eq i32 %160, %3
  br i1 %161, label %164, label %162

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
  br i1 %175, label %187, label %176

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
  %185 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %186 = tail call ptr %185(i32 noundef %171, ptr noundef nonnull %12) #9
  br label %187

187:                                              ; preds = %179, %184, %167
  %188 = phi ptr [ %180, %179 ], [ %186, %184 ], [ %12, %167 ]
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 43
  br i1 %191, label %192, label %196

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
  br i1 %200, label %201, label %262

201:                                              ; preds = %196
  %202 = zext i32 %3 to i64
  %203 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !12
  %205 = zext i8 %204 to i64
  %206 = shl nuw nsw i64 %205, 3
  %207 = icmp eq i64 %206, %1
  br i1 %207, label %208, label %262

208:                                              ; preds = %201
  %209 = sext i32 %3 to i64
  %210 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 61, i32 4, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !32
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
  %218 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %219 = tail call ptr %218(i32 noundef %3, ptr noundef nonnull %4) #9
  br label %222

220:                                              ; preds = %213
  %221 = tail call ptr @convert_to_mode(i32 noundef %3, ptr noundef nonnull %4, i32 noundef 0) #9
  br label %222

222:                                              ; preds = %213, %213, %213, %220, %217
  %223 = phi ptr [ %219, %217 ], [ %221, %220 ], [ %4, %213 ], [ %4, %213 ], [ %4, %213 ]
  %224 = sext i32 %211 to i64
  %225 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %224, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !28
  %227 = getelementptr inbounds %struct.insn_operand_data, ptr %226, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !34
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
  %240 = load ptr, ptr %239, align 8, !tbaa !12
  %241 = load i32, ptr %240, align 8
  %242 = lshr i32 %241, 16
  %243 = and i32 %242, 255
  %244 = icmp eq i32 %243, %3
  br i1 %244, label %252, label %245

245:                                              ; preds = %238
  %246 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %202
  %247 = load i8, ptr %246, align 1, !tbaa !12
  %248 = and i8 %247, -2
  %249 = icmp eq i8 %248, 2
  br i1 %249, label %252, label %250

250:                                              ; preds = %245
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 563, ptr noundef nonnull @.str.1) #9
  %251 = load ptr, ptr %239, align 8, !tbaa !12
  br label %252

252:                                              ; preds = %250, %238, %245, %233
  %253 = phi ptr [ %198, %233 ], [ %240, %245 ], [ %240, %238 ], [ %251, %250 ]
  %254 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %224, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !36
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
  br i1 %264, label %265, label %298

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
  br i1 %284, label %545, label %285, !llvm.loop !39

285:                                              ; preds = %280, %282
  %286 = phi i64 [ 0, %280 ], [ %283, %282 ]
  %287 = trunc i64 %286 to i32
  %288 = shl i64 %286, 5
  %289 = tail call ptr @operand_subword_force(ptr noundef nonnull %263, i32 noundef %287, i32 noundef %277) #9
  %290 = and i64 %288, 4294967264
  %291 = sub i64 %1, %290
  %292 = tail call i64 @llvm.umin.i64(i64 %291, i64 32)
  %293 = add i64 %13, %290
  %294 = load i32, ptr @word_mode, align 4, !tbaa !24
  %295 = tail call fastcc zeroext i8 @store_bit_field_1(ptr noundef nonnull %198, i64 noundef %292, i64 noundef %293, i32 noundef %294, ptr noundef %289, i8 noundef zeroext %5) #10, !range !30
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %297, label %282

297:                                              ; preds = %285
  tail call void @delete_insns_since(ptr noundef %278) #9
  br label %545

298:                                              ; preds = %262
  %299 = load i32, ptr %198, align 8
  %300 = and i32 %299, 65535
  %301 = icmp eq i32 %300, 43
  br i1 %301, label %336, label %302

302:                                              ; preds = %298
  %303 = icmp eq i64 %121, 0
  br i1 %303, label %304, label %311

304:                                              ; preds = %302
  %305 = lshr i32 %299, 16
  %306 = and i32 %305, 255
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %307
  %309 = load i8, ptr %308, align 1, !tbaa !12
  %310 = icmp ugt i8 %309, 4
  br i1 %310, label %311, label %336

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
  %318 = load i8, ptr %317, align 1, !tbaa !12
  %319 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !12
  %321 = load i32, ptr %320, align 8
  %322 = lshr i32 %321, 16
  %323 = and i32 %322, 255
  %324 = zext nneg i32 %323 to i64
  %325 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !12
  %327 = icmp eq i8 %318, %326
  br i1 %327, label %331, label %328

328:                                              ; preds = %311, %313
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 648, ptr noundef nonnull @.str.1) #9
  %329 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !12
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
  br i1 %342, label %359, label %343

343:                                              ; preds = %336
  %344 = zext nneg i32 %341 to i64
  %345 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !12
  %347 = and i8 %346, -2
  %348 = icmp eq i8 %347, 2
  br i1 %348, label %359, label %349

349:                                              ; preds = %343
  %350 = tail call i32 @int_mode_for_mode(i32 noundef %341) #9
  %351 = tail call ptr @gen_reg_rtx(i32 noundef %350) #9
  %352 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
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
  br i1 %365, label %366, label %482

366:                                              ; preds = %359
  %367 = zext i32 %10 to i64
  %368 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !12
  %370 = zext i8 %369 to i64
  %371 = shl nuw nsw i64 %370, 3
  %372 = icmp ult i64 %371, %1
  br i1 %372, label %482, label %373

373:                                              ; preds = %366
  %374 = load i32, ptr %337, align 8
  %375 = trunc i32 %374 to i16
  switch i16 %375, label %379 [
    i16 37, label %376
    i16 39, label %376
  ]

376:                                              ; preds = %373, %373
  %377 = add nuw nsw i64 %123, %1
  %378 = icmp ugt i64 %377, %371
  br i1 %378, label %482, label %379

379:                                              ; preds = %373, %376
  %380 = load ptr, ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2181, i32 3), align 8, !tbaa !28
  %381 = getelementptr inbounds %struct.insn_operand_data, ptr %380, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !34
  %383 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1) #9
  %384 = tail call i32 %382(ptr noundef %383, i32 noundef 0) #9
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %482, label %386

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
  %395 = load i32, ptr @byte_mode, align 4, !tbaa !24
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
  %405 = load ptr, ptr %404, align 8, !tbaa !12
  %406 = getelementptr inbounds %struct.rtx_def, ptr %400, i64 0, i32 1, i32 0, i32 0, i64 1
  %407 = load i32, ptr %406, align 8, !tbaa !12
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
  %423 = load i8, ptr %368, align 1, !tbaa !12
  %424 = load i32, ptr %361, align 8
  %425 = lshr i32 %424, 16
  %426 = and i32 %425, 255
  %427 = icmp eq i32 %426, %10
  br i1 %427, label %465, label %428

428:                                              ; preds = %421
  %429 = zext nneg i32 %426 to i64
  %430 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %429
  %431 = load i8, ptr %430, align 1, !tbaa !12
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
  %450 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %451 = tail call ptr %450(i32 noundef %10, ptr noundef nonnull %361) #9
  br label %465

452:                                              ; preds = %428
  %453 = and i32 %424, 65535
  %454 = icmp eq i32 %453, 30
  br i1 %454, label %455, label %459

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 0, i32 1
  %457 = load i64, ptr %456, align 8, !tbaa !12
  %458 = tail call ptr @gen_int_mode(i64 noundef %457, i32 noundef %10) #9
  br label %465

459:                                              ; preds = %452
  %460 = zext nneg i32 %453 to i64
  %461 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !24
  %463 = icmp eq i32 %462, 9
  br i1 %463, label %465, label %464

464:                                              ; preds = %459
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 765, ptr noundef nonnull @.str.1) #9
  br label %465

465:                                              ; preds = %437, %440, %464, %459, %449, %455, %421
  %466 = phi ptr [ %451, %449 ], [ %458, %455 ], [ %361, %459 ], [ %361, %464 ], [ %361, %421 ], [ %438, %437 ], [ %448, %440 ]
  %467 = getelementptr inbounds %struct.insn_operand_data, ptr %380, i64 3
  %468 = load ptr, ptr %467, align 8, !tbaa !34
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
  br i1 %485, label %486, label %542

486:                                              ; preds = %482
  %487 = lshr i32 %483, 16
  %488 = and i32 %487, 255
  %489 = icmp eq i32 %488, 1
  br i1 %489, label %500, label %490

490:                                              ; preds = %486
  %491 = icmp eq i32 %10, 87
  br i1 %491, label %516, label %492

492:                                              ; preds = %490
  %493 = zext nneg i32 %488 to i64
  %494 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !12
  %496 = zext i32 %10 to i64
  %497 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !12
  %499 = icmp ugt i8 %495, %498
  br i1 %499, label %500, label %516

500:                                              ; preds = %492, %486
  %501 = trunc i64 %1 to i32
  %502 = trunc i64 %13 to i32
  %503 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1, i32 0, i32 0, i64 1
  %504 = load ptr, ptr %503, align 8, !tbaa !12
  %505 = icmp eq ptr %504, null
  br i1 %505, label %509, label %506

506:                                              ; preds = %500
  %507 = getelementptr inbounds %struct.mem_attrs, ptr %504, i64 0, i32 4
  %508 = load i32, ptr %507, align 4, !tbaa !40
  br label %509

509:                                              ; preds = %500, %506
  %510 = phi i32 [ %508, %506 ], [ 8, %500 ]
  %511 = icmp eq i32 %10, 87
  %512 = select i1 %511, i32 0, i32 %10
  %513 = lshr i32 %483, 27
  %514 = and i32 %513, 1
  %515 = tail call i32 @get_best_mode(i32 noundef %501, i32 noundef %502, i32 noundef %510, i32 noundef %512, i32 noundef %514) #9
  br label %516

516:                                              ; preds = %490, %492, %509
  %517 = phi i32 [ %515, %509 ], [ %488, %492 ], [ %488, %490 ]
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %542, label %519

519:                                              ; preds = %516
  %520 = zext i32 %517 to i64
  %521 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !12
  %523 = zext i32 %3 to i64
  %524 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !12
  %526 = icmp ult i8 %522, %525
  br i1 %526, label %542, label %527

527:                                              ; preds = %519
  %528 = tail call ptr @get_last_insn() #9
  %529 = load i8, ptr %521, align 1, !tbaa !12
  %530 = zext i8 %529 to i64
  %531 = shl nuw nsw i64 %530, 3
  %532 = udiv i64 %13, %531
  %533 = mul i64 %532, %530
  %534 = urem i64 %13, %531
  %535 = tail call ptr @adjust_address_1(ptr noundef nonnull %337, i32 noundef %517, i64 noundef %533, i32 noundef 1, i32 noundef 1) #9
  %536 = tail call ptr @copy_to_reg(ptr noundef %535) #9
  %537 = tail call fastcc zeroext i8 @store_bit_field_1(ptr noundef %536, i64 noundef %1, i64 noundef %534, i32 noundef %3, ptr noundef nonnull %263, i8 noundef zeroext 0) #10, !range !30
  %538 = icmp eq i8 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %527
  tail call void @delete_insns_since(ptr noundef %528) #9
  br label %542

540:                                              ; preds = %527
  %541 = tail call ptr @emit_move_insn(ptr noundef %535, ptr noundef %536) #9
  br label %545

542:                                              ; preds = %539, %516, %519, %482
  %543 = icmp eq i8 %5, 0
  br i1 %543, label %545, label %544

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
define internal fastcc zeroext i8 @check_predicate_volatile_ok(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr @volatile_ok, align 4, !tbaa !24
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %6, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = zext nneg i32 %1 to i64
  %10 = getelementptr inbounds %struct.insn_operand_data, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call i32 %11(ptr noundef %2, i32 noundef %3) #9
  %13 = trunc i32 %12 to i8
  %14 = and i32 %5, 255
  store i32 %14, ptr @volatile_ok, align 4, !tbaa !24
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
define internal fastcc void @store_fixed_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %15 [
    i16 37, label %8
    i16 39, label %8
  ]

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
  %20 = load i8, ptr %19, align 1, !tbaa !12
  %21 = icmp eq i8 %20, 0
  %22 = load i32, ptr @word_mode, align 4, !tbaa !24
  br i1 %21, label %28, label %23

23:                                               ; preds = %15
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !12
  %27 = icmp ugt i8 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %15
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i32 [ %22, %28 ], [ %17, %23 ]
  %31 = trunc i64 %2 to i32
  %32 = shl nuw i64 %1, 3
  %33 = add i64 %32, %3
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.mem_attrs, ptr %36, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !40
  br label %41

41:                                               ; preds = %29, %38
  %42 = phi i32 [ %40, %38 ], [ 8, %29 ]
  %43 = lshr i32 %6, 27
  %44 = and i32 %43, 1
  %45 = tail call i32 @get_best_mode(i32 noundef %31, i32 noundef %34, i32 noundef %42, i32 noundef %30, i32 noundef %44) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  tail call fastcc void @store_split_bit_field(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %33, ptr noundef %4) #10
  br label %162

48:                                               ; preds = %41
  %49 = zext i32 %45 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !12
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 3
  %54 = icmp ugt i64 %53, %3
  br i1 %54, label %61, label %55

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
  br i1 %77, label %78, label %96

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !12
  %81 = icmp ult i64 %2, 64
  %82 = shl nsw i64 -1, %2
  %83 = xor i64 %82, -1
  %84 = select i1 %81, i64 %83, i64 -1
  %85 = and i64 %80, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %135

87:                                               ; preds = %78
  br i1 %81, label %88, label %91

88:                                               ; preds = %87
  %89 = or i64 %80, %82
  %90 = icmp eq i64 %89, -1
  br i1 %90, label %95, label %135

91:                                               ; preds = %87
  %92 = icmp eq i64 %2, 64
  %93 = icmp eq i64 %80, -1
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %135

95:                                               ; preds = %91, %88
  br label %135

96:                                               ; preds = %69
  %97 = lshr i32 %75, 16
  %98 = and i32 %97, 255
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !12
  %102 = zext i8 %101 to i64
  %103 = shl nuw nsw i64 %102, 3
  %104 = icmp eq i64 %103, %2
  br i1 %104, label %113, label %105

105:                                              ; preds = %96
  %106 = add i64 %70, %2
  %107 = zext nneg i32 %74 to i64
  %108 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !12
  %110 = zext i8 %109 to i64
  %111 = shl nuw nsw i64 %110, 3
  %112 = icmp ne i64 %106, %111
  br label %113

113:                                              ; preds = %105, %96
  %114 = phi i1 [ false, %96 ], [ %112, %105 ]
  %115 = icmp eq i32 %98, %74
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = tail call ptr @convert_to_mode(i32 noundef %74, ptr noundef nonnull %4, i32 noundef 1) #9
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi ptr [ %117, %116 ], [ %4, %113 ]
  br i1 %114, label %120, label %124

120:                                              ; preds = %118
  %121 = trunc i64 %2 to i32
  %122 = tail call fastcc ptr @mask_rtx(i32 noundef %74, i32 noundef 0, i32 noundef %121, i32 noundef 0) #10
  %123 = tail call ptr @expand_binop(i32 noundef %74, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %119, ptr noundef %122, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  br label %124

124:                                              ; preds = %120, %118
  %125 = phi ptr [ %123, %120 ], [ %119, %118 ]
  %126 = icmp eq i64 %70, 0
  br i1 %126, label %130, label %127

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
  br i1 %136, label %141, label %150

141:                                              ; preds = %130, %135
  %142 = phi i32 [ %134, %130 ], [ %138, %135 ]
  %143 = phi i32 [ %133, %130 ], [ %137, %135 ]
  %144 = phi ptr [ %132, %130 ], [ %140, %135 ]
  %145 = phi i1 [ true, %130 ], [ %86, %135 ]
  %146 = phi ptr [ %131, %130 ], [ %139, %135 ]
  %147 = tail call fastcc ptr @mask_rtx(i32 noundef %74, i32 noundef %143, i32 noundef %142, i32 noundef 1) #10
  %148 = tail call ptr @expand_binop(i32 noundef %74, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %144, ptr noundef %147, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %149 = tail call ptr @force_reg(i32 noundef %74, ptr noundef %148) #9
  br i1 %145, label %151, label %156

150:                                              ; preds = %135
  br i1 %86, label %151, label %156

151:                                              ; preds = %141, %150
  %152 = phi ptr [ %149, %141 ], [ %140, %150 ]
  %153 = phi ptr [ %146, %141 ], [ %139, %150 ]
  %154 = tail call ptr @expand_binop(i32 noundef %74, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %152, ptr noundef %153, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %155 = tail call ptr @force_reg(i32 noundef %74, ptr noundef %154) #9
  br label %156

156:                                              ; preds = %141, %151, %150
  %157 = phi ptr [ %140, %150 ], [ %155, %151 ], [ %149, %141 ]
  %158 = icmp eq ptr %71, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = tail call ptr @copy_rtx(ptr noundef nonnull %71) #9
  %161 = tail call ptr @emit_move_insn(ptr noundef %160, ptr noundef %157) #9
  br label %162

162:                                              ; preds = %156, %159, %47, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_split_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %16
    i16 39, label %16
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 32)
  %15 = zext nneg i32 %14 to i64
  br label %16

16:                                               ; preds = %11, %7, %4, %4
  %17 = phi i64 [ 32, %4 ], [ 32, %4 ], [ 8, %7 ], [ %15, %11 ]
  %18 = load i32, ptr %3, align 8
  %19 = and i32 %18, 65535
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !24
  %23 = icmp ne i32 %22, 9
  %24 = icmp eq i32 %19, 30
  %25 = or i1 %23, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %16
  %27 = load i32, ptr @word_mode, align 4, !tbaa !24
  %28 = tail call ptr @gen_lowpart_common(i32 noundef %27, ptr noundef nonnull %3) #9
  %29 = icmp eq ptr %28, null
  %30 = icmp eq ptr %28, %3
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, ptr @word_mode, align 4, !tbaa !24
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
  %61 = load i64, ptr %45, align 8, !tbaa !12
  %62 = lshr i64 %61, %49
  %63 = shl nsw i64 -1, %56
  %64 = xor i64 %63, -1
  %65 = and i64 %62, %64
  %66 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %65) #9
  br label %70

67:                                               ; preds = %48
  %68 = load i32, ptr @word_mode, align 4, !tbaa !24
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
  %75 = load i32, ptr %47, align 8, !tbaa !12
  %76 = lshr i32 %75, 2
  %77 = trunc i64 %51 to i32
  %78 = add i32 %76, %77
  %79 = load ptr, ptr %46, align 8, !tbaa !12
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
  br i1 %96, label %48, label %97, !llvm.loop !42

97:                                               ; preds = %89, %41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lshift_value(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !12
  %7 = icmp slt i32 %3, 64
  %8 = zext nneg i32 %3 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = select i1 %7, i64 %10, i64 -1
  %12 = and i64 %6, %11
  %13 = icmp slt i32 %2, 64
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = zext nneg i32 %2 to i64
  %16 = shl i64 %12, %15
  %17 = icmp sgt i32 %2, 0
  %18 = sub nsw i32 64, %2
  %19 = zext nneg i32 %18 to i64
  %20 = lshr i64 %12, %19
  %21 = select i1 %17, i64 %20, i64 0
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
define internal fastcc ptr @mask_rtx(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp ne i32 %2, 0
  %6 = icmp slt i32 %1, 64
  %7 = and i1 %6, %5
  %8 = zext nneg i32 %1 to i64
  %9 = shl nsw i64 -1, %8
  %10 = select i1 %7, i64 %9, i64 0
  %11 = add nsw i32 %2, %1
  %12 = icmp slt i32 %11, 64
  %13 = sub i32 64, %11
  %14 = zext nneg i32 %13 to i64
  %15 = lshr i64 -1, %14
  %16 = select i1 %12, i64 %15, i64 -1
  %17 = and i64 %16, %10
  %18 = icmp slt i32 %1, 65
  %19 = add nsw i32 %1, -64
  %20 = zext nneg i32 %19 to i64
  %21 = shl nsw i64 -1, %20
  %22 = select i1 %18, i64 -1, i64 %21
  %23 = icmp sgt i32 %11, 64
  %24 = and i1 %5, %23
  %25 = sub i32 128, %11
  %26 = zext nneg i32 %25 to i64
  %27 = lshr i64 -1, %26
  %28 = and i64 %27, %22
  %29 = select i1 %24, i64 %28, i64 0
  %30 = icmp ne i32 %3, 0
  %31 = sext i1 %30 to i64
  %32 = xor i64 %17, %31
  %33 = xor i64 %29, %31
  %34 = tail call ptr @immed_double_const(i64 noundef %32, i64 noundef %33, i32 noundef %0) #9
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_shift(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
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
  %17 = load i8, ptr %16, align 1, !tbaa !12
  %18 = add i8 %17, -12
  %19 = icmp ult i8 %18, 6
  br i1 %19, label %20, label %29

20:                                               ; preds = %6
  %21 = lshr i32 %14, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !12
  %26 = add i8 %25, -12
  %27 = icmp ult i8 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %20, %6, %28
  %30 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 53), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), %20 ]
  %31 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 52), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), %20 ]
  %32 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 50), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), %20 ]
  %33 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 51), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), %20 ]
  %34 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 49), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), %20 ]
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %36 = icmp eq ptr %13, %35
  br i1 %36, label %138, label %37

37:                                               ; preds = %29
  %38 = and i32 %14, 65535
  %39 = icmp ne i32 %38, 30
  %40 = select i1 %7, i1 true, i1 %39
  br i1 %40, label %73, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !12
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %47 = load i8, ptr %46, align 1, !tbaa !12
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 3
  %50 = icmp ult i64 %43, %49
  %51 = icmp ult i64 %43, 32
  %52 = and i1 %51, %50
  br i1 %52, label %53, label %73

53:                                               ; preds = %45
  %54 = zext i8 %12 to i64
  %55 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %54, i64 %15, i64 %43
  %56 = load i32, ptr %55, align 4, !tbaa !24
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %54, i64 %15
  %59 = load i32, ptr %58, align 4, !tbaa !24
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %43, %60
  %62 = icmp sge i64 %61, %57
  %63 = icmp eq i32 %56, 2147483647
  %64 = or i1 %63, %62
  br i1 %64, label %73, label %65

65:                                               ; preds = %53, %65
  %66 = phi i64 [ %70, %65 ], [ 0, %53 ]
  %67 = phi ptr [ %69, %65 ], [ %2, %53 ]
  %68 = tail call ptr @force_reg(i32 noundef %1, ptr noundef %67) #9
  %69 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %68, ptr noundef %68, ptr noundef null, i32 noundef %5, i32 noundef 3) #9
  %70 = add nuw nsw i64 %66, 1
  %71 = load i64, ptr %42, align 8, !tbaa !12
  %72 = icmp sgt i64 %71, %70
  br i1 %72, label %65, label %138, !llvm.loop !43

73:                                               ; preds = %53, %45, %41, %37
  %74 = icmp eq i32 %5, 0
  %75 = select i1 %9, ptr %32, ptr %34
  %76 = icmp eq i32 %0, 83
  %77 = select i1 %9, ptr %33, ptr %34
  %78 = select i1 %9, ptr %30, ptr %31
  br label %79

79:                                               ; preds = %73, %155
  %80 = phi i32 [ 0, %73 ], [ %157, %155 ]
  switch i32 %80, label %81 [
    i32 0, label %82
    i32 1, label %83
  ]

81:                                               ; preds = %79
  br i1 %11, label %84, label %125

82:                                               ; preds = %79
  br i1 %11, label %123, label %125

83:                                               ; preds = %79
  br i1 %11, label %155, label %125

84:                                               ; preds = %81
  %85 = icmp eq ptr %2, %4
  %86 = select i1 %85, ptr null, ptr %4
  %87 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !12
  %89 = load i32, ptr %13, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  %92 = load i64, ptr %88, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 14
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = tail call i32 @vector_type_mode(ptr noundef nonnull %88) #9
  br label %102

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.tree_type, ptr %88, i64 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  br label %102

102:                                              ; preds = %97, %95
  %103 = phi i32 [ %96, %95 ], [ %101, %97 ]
  %104 = icmp eq i32 %91, %103
  br i1 %104, label %140, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %13, align 8
  %107 = and i32 %106, 16711680
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %140, label %109

109:                                              ; preds = %105
  %110 = load i64, ptr %88, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 14
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = tail call i32 @vector_type_mode(ptr noundef nonnull %88) #9
  br label %120

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.tree_type, ptr %88, i64 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  br label %120

120:                                              ; preds = %115, %113
  %121 = phi i32 [ %114, %113 ], [ %119, %115 ]
  %122 = tail call ptr @convert_to_mode(i32 noundef %121, ptr noundef nonnull %13, i32 noundef 1) #9
  br label %140

123:                                              ; preds = %82
  %124 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull %78, ptr noundef %2, ptr noundef nonnull %13, ptr noundef %4, i32 noundef %5, i32 noundef 0) #9
  br label %155

125:                                              ; preds = %82, %83, %81
  %126 = phi i32 [ 2, %83 ], [ 3, %81 ], [ 0, %82 ]
  %127 = phi i1 [ false, %83 ], [ true, %81 ], [ true, %82 ]
  br i1 %74, label %135, label %128

128:                                              ; preds = %125
  %129 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull %75, ptr noundef %2, ptr noundef nonnull %13, ptr noundef %4, i32 noundef %5, i32 noundef %126) #9
  %130 = icmp ne ptr %129, null
  %131 = or i1 %127, %130
  %132 = or i1 %11, %131
  %133 = or i1 %132, %76
  %134 = select i1 %132, ptr %129, ptr null
  br i1 %133, label %155, label %135

135:                                              ; preds = %128, %125
  %136 = phi i32 [ %126, %125 ], [ 4, %128 ]
  %137 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull %77, ptr noundef %2, ptr noundef nonnull %13, ptr noundef %4, i32 noundef %5, i32 noundef %136) #9
  br label %155

138:                                              ; preds = %162, %161, %29, %65, %140
  %139 = phi ptr [ %154, %140 ], [ %2, %29 ], [ %156, %161 ], [ null, %162 ], [ %69, %65 ]
  ret ptr %139

140:                                              ; preds = %102, %105, %120
  %141 = phi ptr [ %122, %120 ], [ %13, %105 ], [ %13, %102 ]
  %142 = tail call ptr @make_tree(ptr noundef nonnull %88, ptr noundef %141) #10
  %143 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %15
  %144 = load i8, ptr %143, align 1, !tbaa !12
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 3
  %147 = tail call ptr @build_int_cst(ptr noundef nonnull %88, i64 noundef %146) #9
  %148 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %88, ptr noundef %147, ptr noundef %142) #9
  %149 = tail call ptr @force_reg(i32 noundef %1, ptr noundef %2) #9
  %150 = select i1 %9, i32 84, i32 83
  %151 = tail call ptr @expand_shift(i32 noundef %150, i32 noundef %1, ptr noundef %149, ptr noundef %142, ptr noundef null, i32 noundef 1) #10
  %152 = select i1 %9, i32 83, i32 84
  %153 = tail call ptr @expand_shift(i32 noundef %152, i32 noundef %1, ptr noundef %149, ptr noundef %148, ptr noundef %86, i32 noundef 1) #10
  %154 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %151, ptr noundef %153, ptr noundef %4, i32 noundef %5, i32 noundef 3) #9
  br label %138

155:                                              ; preds = %128, %83, %135, %123
  %156 = phi ptr [ %124, %123 ], [ %137, %135 ], [ %134, %128 ], [ null, %83 ]
  %157 = add nuw nsw i32 %80, 1
  %158 = icmp eq ptr %156, null
  %159 = icmp ult i32 %80, 2
  %160 = and i1 %158, %159
  br i1 %160, label %79, label %161, !llvm.loop !44

161:                                              ; preds = %155
  br i1 %158, label %162, label %138

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
define internal fastcc ptr @extract_fixed_bit_field(i32 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = load i32, ptr %1, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %15 [
    i16 39, label %10
    i16 37, label %10
  ]

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
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !40
  br label %26

26:                                               ; preds = %15, %23
  %27 = phi i32 [ %25, %23 ], [ 8, %15 ]
  %28 = load i32, ptr @word_mode, align 4, !tbaa !24
  %29 = lshr i32 %8, 27
  %30 = and i32 %29, 1
  %31 = tail call i32 @get_best_mode(i32 noundef %16, i32 noundef %19, i32 noundef %27, i32 noundef %28, i32 noundef %30) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call fastcc ptr @extract_split_bit_field(ptr noundef nonnull %1, i64 noundef %3, i64 noundef %18, i32 noundef %6) #10
  br label %153

35:                                               ; preds = %26
  %36 = zext i32 %31 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !12
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = icmp ugt i64 %40, %4
  br i1 %41, label %48, label %42

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
  br i1 %63, label %100, label %64

64:                                               ; preds = %57
  %65 = icmp eq i64 %59, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %64
  %67 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %59) #9
  %68 = icmp eq ptr %5, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load i32, ptr %5, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 37
  %73 = select i1 %72, ptr %5, ptr null
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi ptr [ null, %66 ], [ %73, %69 ]
  %76 = icmp eq i32 %62, %0
  %77 = select i1 %76, ptr %75, ptr null
  %78 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %62, ptr noundef nonnull %60, ptr noundef %67, ptr noundef %77, i32 noundef 1) #10
  br label %79

79:                                               ; preds = %74, %64
  %80 = phi ptr [ %78, %74 ], [ %60, %64 ]
  %81 = icmp eq i32 %62, %0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = tail call ptr @convert_to_mode(i32 noundef %0, ptr noundef %80, i32 noundef 1) #9
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi ptr [ %83, %82 ], [ %80, %79 ]
  %86 = zext nneg i32 %62 to i64
  %87 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !12
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 3
  %91 = add i64 %59, %3
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %153, label %93

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
  %104 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !12
  %105 = icmp eq i8 %104, 0
  %106 = add i64 %59, %3
  br i1 %105, label %123, label %107

107:                                              ; preds = %100, %119
  %108 = phi i8 [ %121, %119 ], [ %104, %100 ]
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !12
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
  %121 = load i8, ptr %120, align 1, !tbaa !12
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %107, !llvm.loop !45

123:                                              ; preds = %119, %100, %115
  %124 = phi i64 [ %118, %115 ], [ 0, %100 ], [ 0, %119 ]
  %125 = phi i32 [ %116, %115 ], [ 0, %100 ], [ 0, %119 ]
  %126 = phi ptr [ %117, %115 ], [ %101, %100 ], [ %101, %119 ]
  %127 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %124
  %128 = load i8, ptr %127, align 1, !tbaa !12
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
  %144 = load i8, ptr %127, align 1, !tbaa !12
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
define internal fastcc ptr @extract_split_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %16
    i16 39, label %16
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !40
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
  %36 = load i32, ptr %21, align 8, !tbaa !12
  %37 = lshr i32 %36, 2
  %38 = trunc i64 %27 to i32
  %39 = add i32 %37, %38
  %40 = load ptr, ptr %20, align 8, !tbaa !12
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
  %53 = load i32, ptr @word_mode, align 4, !tbaa !24
  %54 = mul i64 %52, %17
  %55 = lshr i64 %54, 3
  %56 = tail call fastcc ptr @extract_fixed_bit_field(i32 noundef %53, ptr noundef %51, i64 noundef %55, i64 noundef %32, i64 noundef %28, ptr noundef null, i32 noundef 1) #10
  %57 = add nuw nsw i64 %32, %23
  %58 = and i64 %57, 4294967295
  %59 = icmp eq i64 %58, %32
  br i1 %59, label %65, label %60

60:                                               ; preds = %50
  %61 = load i32, ptr @word_mode, align 4, !tbaa !24
  %62 = sub nsw i64 %58, %32
  %63 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %62) #9
  %64 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %61, ptr noundef %56, ptr noundef %63, ptr noundef null, i32 noundef 1) #10
  br label %65

65:                                               ; preds = %60, %50
  %66 = phi ptr [ %64, %60 ], [ %56, %50 ]
  br i1 %24, label %67, label %70

67:                                               ; preds = %65
  %68 = load i32, ptr @word_mode, align 4, !tbaa !24
  %69 = tail call ptr @expand_binop(i32 noundef %68, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %66, ptr noundef %25, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  br label %70

70:                                               ; preds = %65, %67
  %71 = phi ptr [ %69, %67 ], [ %66, %65 ]
  %72 = icmp ult i64 %58, %1
  br i1 %72, label %22, label %73, !llvm.loop !46

73:                                               ; preds = %70, %16
  %74 = phi ptr [ null, %16 ], [ %71, %70 ]
  %75 = icmp eq i32 %3, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, ptr @word_mode, align 4, !tbaa !24
  %78 = sub nsw i64 32, %1
  %79 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %78) #9
  %80 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %77, ptr noundef %74, ptr noundef %79, ptr noundef null, i32 noundef 0) #10
  %81 = load i32, ptr @word_mode, align 4, !tbaa !24
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
define dso_local ptr @extract_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc ptr @extract_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext 1) #10
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @extract_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  %12 = icmp eq i32 %6, 0
  %13 = select i1 %12, i32 %5, i32 %6
  br label %14

14:                                               ; preds = %19, %8
  %15 = phi i32 [ %9, %8 ], [ %27, %19 ]
  %16 = phi ptr [ %0, %8 ], [ %26, %19 ]
  %17 = phi i64 [ %2, %8 ], [ %25, %19 ]
  %18 = trunc i32 %15 to i16
  switch i16 %18, label %50 [
    i16 39, label %19
    i16 37, label %28
  ]

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load i32, ptr %21, align 8, !tbaa !12
  %23 = shl i32 %22, 3
  %24 = zext i32 %23 to i64
  %25 = add i64 %17, %24
  %26 = load ptr, ptr %20, align 8, !tbaa !12
  %27 = load i32, ptr %26, align 8
  br label %14, !llvm.loop !47

28:                                               ; preds = %14
  %29 = lshr i32 %15, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !12
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = icmp ult i64 %17, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = tail call ptr @gen_reg_rtx(i32 noundef %13) #9
  br label %609

39:                                               ; preds = %28
  %40 = icmp eq i32 %30, %5
  %41 = icmp eq i64 %17, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = zext nneg i32 %5 to i64
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !12
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 3
  %49 = icmp eq i64 %48, %1
  br i1 %49, label %609, label %54

50:                                               ; preds = %14
  %51 = lshr i32 %15, 16
  %52 = and i32 %51, 255
  %53 = zext nneg i32 %52 to i64
  br label %54

54:                                               ; preds = %50, %43, %39
  %55 = phi i64 [ %53, %50 ], [ %31, %43 ], [ %31, %39 ]
  %56 = phi i64 [ %17, %50 ], [ 0, %43 ], [ %17, %39 ]
  %57 = and i32 %15, 65535
  %58 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %55
  %59 = load i8, ptr %58, align 1, !tbaa !12
  %60 = add i8 %59, -18
  %61 = icmp ult i8 %60, -6
  %62 = icmp eq i32 %57, 43
  %63 = or i1 %62, %61
  br i1 %63, label %106, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %55
  %66 = load i8, ptr %65, align 1, !tbaa !12
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %13, %67
  br i1 %68, label %106, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %55
  %71 = load i8, ptr %70, align 1, !tbaa !12
  %72 = zext i32 %13 to i64
  %73 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !12
  switch i8 %74, label %75 [
    i8 8, label %76
    i8 4, label %106
    i8 5, label %106
    i8 6, label %106
    i8 7, label %106
  ]

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %69
  %77 = phi i32 [ 78, %69 ], [ 55, %75 ]
  br label %78

78:                                               ; preds = %76, %98
  %79 = phi i32 [ %101, %98 ], [ %77, %76 ]
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !12
  %83 = icmp eq i8 %82, %71
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %80
  %86 = load i8, ptr %85, align 1, !tbaa !12
  %87 = load i32, ptr %16, align 8
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !12
  %93 = icmp eq i8 %86, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %84
  %95 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 59), align 8, !tbaa !48
  %96 = tail call zeroext i8 %95(i32 noundef %79) #9
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %78, %84, %94
  %99 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %80
  %100 = load i8, ptr %99, align 1, !tbaa !12
  %101 = zext i8 %100 to i32
  %102 = icmp eq i8 %100, 0
  br i1 %102, label %106, label %78, !llvm.loop !60

103:                                              ; preds = %94
  %104 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %105 = tail call ptr %104(i32 noundef %79, ptr noundef nonnull %16) #9
  br label %106

106:                                              ; preds = %98, %69, %69, %69, %69, %54, %103, %64
  %107 = phi ptr [ %16, %64 ], [ %16, %54 ], [ %105, %103 ], [ %16, %69 ], [ %16, %69 ], [ %16, %69 ], [ %16, %69 ], [ %16, %98 ]
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !12
  %114 = add i8 %113, -18
  %115 = icmp ult i8 %114, -6
  %116 = and i32 %108, 65535
  %117 = icmp eq i32 %116, 43
  %118 = or i1 %117, %115
  br i1 %118, label %212, label %119

119:                                              ; preds = %106
  %120 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 %111
  %121 = load i32, ptr %120, align 4, !tbaa !32
  %122 = icmp eq i32 %121, 2956
  br i1 %122, label %212, label %123

123:                                              ; preds = %119
  %124 = add i64 %1, -1
  %125 = add i64 %124, %56
  %126 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %111
  %127 = load i8, ptr %126, align 1, !tbaa !12
  %128 = zext i8 %127 to i32
  %129 = zext i8 %127 to i64
  %130 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !12
  %132 = zext i8 %131 to i64
  %133 = shl nuw nsw i64 %132, 3
  %134 = udiv i64 %125, %133
  %135 = udiv i64 %56, %133
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %212

137:                                              ; preds = %123
  %138 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %134) #9
  %139 = sext i32 %121 to i64
  %140 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %139, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !28
  %142 = getelementptr inbounds %struct.insn_operand_data, ptr %141, i64 0, i32 2
  %143 = load i16, ptr %142, align 8
  %144 = zext i16 %143 to i32
  %145 = getelementptr inbounds %struct.insn_operand_data, ptr %141, i64 1, i32 2
  %146 = load i16, ptr %145, align 8
  %147 = zext i16 %146 to i32
  %148 = getelementptr inbounds %struct.insn_operand_data, ptr %141, i64 2, i32 2
  %149 = load i16, ptr %148, align 8
  %150 = zext i16 %149 to i32
  %151 = icmp ne i32 %13, %128
  %152 = icmp ne i32 %128, %5
  %153 = and i1 %151, %152
  %154 = icmp eq ptr %4, null
  %155 = or i1 %154, %153
  br i1 %155, label %156, label %158

156:                                              ; preds = %137
  %157 = tail call ptr @gen_reg_rtx(i32 noundef %128) #9
  br label %158

158:                                              ; preds = %156, %137
  %159 = phi ptr [ %4, %137 ], [ %157, %156 ]
  tail call void @start_sequence() #9
  %160 = load ptr, ptr %141, align 8, !tbaa !34
  %161 = tail call i32 %160(ptr noundef %159, i32 noundef %144) #9
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = tail call ptr @copy_to_mode_reg(i32 noundef %144, ptr noundef %159) #9
  br label %165

165:                                              ; preds = %163, %158
  %166 = phi ptr [ %159, %158 ], [ %164, %163 ]
  %167 = getelementptr inbounds %struct.insn_operand_data, ptr %141, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !34
  %169 = tail call i32 %168(ptr noundef nonnull %107, i32 noundef %147) #9
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = tail call ptr @copy_to_mode_reg(i32 noundef %147, ptr noundef nonnull %107) #9
  br label %173

173:                                              ; preds = %171, %165
  %174 = phi ptr [ %107, %165 ], [ %172, %171 ]
  %175 = getelementptr inbounds %struct.insn_operand_data, ptr %141, i64 2
  %176 = load ptr, ptr %175, align 8, !tbaa !34
  %177 = tail call i32 %176(ptr noundef %138, i32 noundef %150) #9
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = tail call ptr @copy_to_mode_reg(i32 noundef %147, ptr noundef %138) #9
  br label %181

181:                                              ; preds = %179, %173
  %182 = phi ptr [ %138, %173 ], [ %180, %179 ]
  %183 = load ptr, ptr %141, align 8, !tbaa !34
  %184 = tail call i32 %183(ptr noundef %166, i32 noundef %144) #9
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr %167, align 8, !tbaa !34
  %188 = tail call i32 %187(ptr noundef %174, i32 noundef %147) #9
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr %175, align 8, !tbaa !34
  %192 = tail call i32 %191(ptr noundef %182, i32 noundef %150) #9
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %190, %186, %181
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1288, ptr noundef nonnull @.str.1) #9
  br label %195

195:                                              ; preds = %190, %194
  %196 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %139, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !36
  %198 = tail call ptr (ptr, ...) %197(ptr noundef %166, ptr noundef %174, ptr noundef %182) #9
  %199 = tail call ptr @get_insns() #9
  tail call void @end_sequence() #9
  %200 = icmp eq ptr %198, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load i32, ptr %107, align 8
  %203 = lshr i32 %202, 16
  %204 = and i32 %203, 255
  br label %212

205:                                              ; preds = %195
  %206 = tail call ptr @emit_insn(ptr noundef %199) #9
  %207 = tail call ptr @emit_insn(ptr noundef nonnull %198) #9
  %208 = icmp eq i32 %144, %5
  br i1 %208, label %609, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %211 = tail call ptr %210(i32 noundef %13, ptr noundef %166) #9
  br label %609

212:                                              ; preds = %201, %106, %123, %119
  %213 = phi i32 [ %204, %201 ], [ %110, %106 ], [ %110, %123 ], [ %110, %119 ]
  %214 = tail call i32 @int_mode_for_mode(i32 noundef %213) #9
  %215 = load i32, ptr %107, align 8
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  %218 = icmp eq i32 %214, %217
  br i1 %218, label %259, label %219

219:                                              ; preds = %212
  %220 = and i32 %215, 65535
  %221 = icmp eq i32 %220, 43
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = tail call ptr @adjust_address_1(ptr noundef nonnull %107, i32 noundef %214, i64 noundef 0, i32 noundef 1, i32 noundef 1) #9
  br label %259

224:                                              ; preds = %219
  %225 = icmp eq i32 %214, 1
  br i1 %225, label %234, label %226

226:                                              ; preds = %224
  %227 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %228 = tail call ptr %227(i32 noundef %214, ptr noundef nonnull %107) #9
  %229 = load i32, ptr %228, align 8
  %230 = and i32 %229, 65535
  %231 = icmp eq i32 %230, 39
  br i1 %231, label %232, label %259

232:                                              ; preds = %226
  %233 = tail call ptr @force_reg(i32 noundef %214, ptr noundef nonnull %228) #9
  br label %259

234:                                              ; preds = %224
  %235 = icmp eq i32 %220, 37
  %236 = zext nneg i32 %217 to i64
  %237 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !12
  br i1 %235, label %239, label %254

239:                                              ; preds = %234
  %240 = zext i8 %238 to i32
  %241 = shl nuw nsw i32 %240, 3
  %242 = tail call i32 @smallest_mode_for_size(i32 noundef %241, i32 noundef 2) #9
  %243 = tail call ptr @gen_reg_rtx(i32 noundef %242) #9
  %244 = load i32, ptr %107, align 8
  %245 = lshr i32 %244, 16
  %246 = and i32 %245, 255
  %247 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %246, ptr noundef %243) #9
  %248 = tail call ptr @emit_move_insn(ptr noundef %247, ptr noundef nonnull %107) #9
  %249 = getelementptr inbounds %struct.rtx_def, ptr %247, i64 0, i32 1, i32 0, i32 0, i64 1
  %250 = load i32, ptr %249, align 8, !tbaa !12
  %251 = shl i32 %250, 3
  %252 = zext i32 %251 to i64
  %253 = add i64 %56, %252
  br label %259

254:                                              ; preds = %234
  %255 = zext i8 %238 to i64
  %256 = tail call ptr @assign_stack_temp(i32 noundef %217, i64 noundef %255, i32 noundef 0) #9
  %257 = tail call ptr @emit_move_insn(ptr noundef %256, ptr noundef nonnull %107) #9
  %258 = tail call ptr @adjust_address_1(ptr noundef %256, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #9
  br label %259

259:                                              ; preds = %222, %239, %254, %226, %232, %212
  %260 = phi ptr [ %223, %222 ], [ %233, %232 ], [ %228, %226 ], [ %243, %239 ], [ %258, %254 ], [ %107, %212 ]
  %261 = phi i64 [ %56, %222 ], [ %56, %232 ], [ %56, %226 ], [ %253, %239 ], [ %56, %254 ], [ %56, %212 ]
  %262 = load i32, ptr %260, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 43
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %260) #9
  tail call void @set_mem_alias_set(ptr noundef %266, i32 noundef 0) #9
  tail call void @set_mem_expr(ptr noundef %266, ptr noundef null) #9
  br label %267

267:                                              ; preds = %265, %259
  %268 = phi ptr [ %266, %265 ], [ %260, %259 ]
  %269 = select i1 %11, i64 7, i64 31
  %270 = and i64 %261, %269
  %271 = select i1 %11, i64 3, i64 5
  %272 = lshr i64 %261, %271
  %273 = lshr i64 %270, 3
  %274 = shl nuw nsw i64 %272, 2
  %275 = or disjoint i64 %273, %274
  %276 = trunc i64 %275 to i32
  %277 = zext i32 %13 to i64
  %278 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !12
  %280 = and i8 %279, -2
  %281 = icmp eq i8 %280, 2
  br i1 %281, label %282, label %286

282:                                              ; preds = %267
  %283 = trunc i64 %1 to i32
  %284 = zext nneg i8 %279 to i32
  %285 = tail call i32 @mode_for_size(i32 noundef %283, i32 noundef %284, i32 noundef 0) #9
  br label %286

286:                                              ; preds = %267, %282
  %287 = phi i32 [ %285, %282 ], [ %5, %267 ]
  %288 = icmp ugt i64 %1, 31
  br i1 %288, label %289, label %298

289:                                              ; preds = %286
  %290 = zext i32 %5 to i64
  %291 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !12
  %293 = zext i8 %292 to i64
  %294 = shl nuw nsw i64 %293, 3
  %295 = icmp eq i64 %294, %1
  %296 = icmp eq i64 %270, 0
  %297 = select i1 %295, i1 %296, i1 false
  br i1 %297, label %302, label %298

298:                                              ; preds = %289, %286
  %299 = icmp ne i32 %287, 1
  %300 = icmp eq i64 %270, 0
  %301 = select i1 %299, i1 %300, i1 false
  br i1 %301, label %302, label %329

302:                                              ; preds = %289, %298
  %303 = load i32, ptr %268, align 8
  %304 = and i32 %303, 65535
  %305 = icmp eq i32 %304, 43
  br i1 %305, label %315, label %306

306:                                              ; preds = %302
  %307 = zext i32 %287 to i64
  %308 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %307
  %309 = load i8, ptr %308, align 1, !tbaa !12
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %329, label %311

311:                                              ; preds = %306
  %312 = zext i8 %309 to i32
  %313 = srem i32 %276, %312
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %317, label %329

315:                                              ; preds = %302
  %316 = tail call ptr @adjust_address_1(ptr noundef nonnull %268, i32 noundef %287, i64 noundef %272, i32 noundef 1, i32 noundef 1) #9
  br label %324

317:                                              ; preds = %311
  %318 = lshr i32 %303, 16
  %319 = and i32 %318, 255
  %320 = icmp eq i32 %287, %319
  br i1 %320, label %324, label %321

321:                                              ; preds = %317
  %322 = tail call ptr @simplify_gen_subreg(i32 noundef %287, ptr noundef nonnull %268, i32 noundef %319, i32 noundef %276) #9
  %323 = icmp eq ptr %322, null
  br i1 %323, label %329, label %324

324:                                              ; preds = %321, %317, %315
  %325 = phi ptr [ %316, %315 ], [ %322, %321 ], [ %268, %317 ]
  %326 = icmp eq i32 %287, %5
  br i1 %326, label %609, label %327

327:                                              ; preds = %324
  %328 = tail call ptr @convert_to_mode(i32 noundef %13, ptr noundef %325, i32 noundef %3) #9
  br label %609

329:                                              ; preds = %306, %311, %321, %298
  %330 = icmp ugt i64 %1, 32
  br i1 %330, label %331, label %405

331:                                              ; preds = %329
  %332 = add i64 %1, 31
  %333 = lshr i64 %332, 5
  %334 = trunc i64 %333 to i32
  %335 = icmp eq ptr %4, null
  br i1 %335, label %340, label %336

336:                                              ; preds = %331
  %337 = load i32, ptr %4, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 37
  br i1 %339, label %342, label %340

340:                                              ; preds = %336, %331
  %341 = tail call ptr @gen_reg_rtx(i32 noundef %5) #9
  br label %342

342:                                              ; preds = %340, %336
  %343 = phi ptr [ %341, %340 ], [ %4, %336 ]
  %344 = tail call ptr @emit_clobber(ptr noundef %343) #9
  %345 = icmp eq i32 %334, 0
  br i1 %345, label %368, label %346

346:                                              ; preds = %342
  %347 = and i64 %333, 4294967295
  br label %348

348:                                              ; preds = %346, %365
  %349 = phi i64 [ 0, %346 ], [ %366, %365 ]
  %350 = trunc i64 %349 to i32
  %351 = shl i64 %349, 5
  %352 = tail call ptr @operand_subword(ptr noundef %343, i32 noundef %350, i32 noundef 1, i32 noundef 0) #9
  %353 = and i64 %351, 4294967264
  %354 = sub i64 %1, %353
  %355 = tail call i64 @llvm.umin.i64(i64 %354, i64 32)
  %356 = add i64 %261, %353
  %357 = load i32, ptr @word_mode, align 4, !tbaa !24
  %358 = tail call ptr @extract_bit_field(ptr noundef %268, i64 noundef %355, i64 noundef %356, i32 noundef 1, ptr noundef %352, i32 noundef %5, i32 noundef %357) #10
  %359 = icmp eq ptr %352, null
  br i1 %359, label %360, label %361

360:                                              ; preds = %348
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1456, ptr noundef nonnull @.str.1) #9
  br label %361

361:                                              ; preds = %348, %360
  %362 = icmp eq ptr %358, %352
  br i1 %362, label %365, label %363

363:                                              ; preds = %361
  %364 = tail call ptr @emit_move_insn(ptr noundef %352, ptr noundef %358) #9
  br label %365

365:                                              ; preds = %363, %361
  %366 = add nuw nsw i64 %349, 1
  %367 = icmp eq i64 %366, %347
  br i1 %367, label %368, label %348, !llvm.loop !61

368:                                              ; preds = %365, %342
  %369 = icmp eq i32 %3, 0
  br i1 %369, label %390, label %370

370:                                              ; preds = %368
  %371 = load i32, ptr %343, align 8
  %372 = lshr i32 %371, 16
  %373 = and i32 %372, 255
  %374 = zext nneg i32 %373 to i64
  %375 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %374
  %376 = load i8, ptr %375, align 1, !tbaa !12
  %377 = zext i8 %376 to i32
  %378 = shl i32 %334, 2
  %379 = icmp ult i32 %378, %377
  br i1 %379, label %380, label %609

380:                                              ; preds = %370
  %381 = lshr i32 %377, 2
  %382 = icmp ugt i32 %381, %334
  br i1 %382, label %383, label %609

383:                                              ; preds = %380, %383
  %384 = phi i32 [ %388, %383 ], [ %334, %380 ]
  %385 = tail call ptr @operand_subword(ptr noundef nonnull %343, i32 noundef %384, i32 noundef 1, i32 noundef 0) #9
  %386 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %387 = tail call ptr @emit_move_insn(ptr noundef %385, ptr noundef %386) #9
  %388 = add i32 %384, 1
  %389 = icmp eq i32 %388, %381
  br i1 %389, label %609, label %383, !llvm.loop !62

390:                                              ; preds = %368
  %391 = zext i32 %5 to i64
  %392 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %391
  %393 = load i8, ptr %392, align 1, !tbaa !12
  %394 = zext i8 %393 to i64
  %395 = shl nuw nsw i64 %394, 3
  %396 = sub i64 %395, %1
  %397 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %396) #9
  %398 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %5, ptr noundef %343, ptr noundef %397, ptr noundef null, i32 noundef 0) #10
  %399 = load i8, ptr %392, align 1, !tbaa !12
  %400 = zext i8 %399 to i64
  %401 = shl nuw nsw i64 %400, 3
  %402 = sub i64 %401, %1
  %403 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %402) #9
  %404 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %5, ptr noundef %398, ptr noundef %403, ptr noundef null, i32 noundef 0) #10
  br label %609

405:                                              ; preds = %329
  %406 = tail call i32 @int_mode_for_mode(i32 noundef %13) #9
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = tail call i32 @int_mode_for_mode(i32 noundef %5) #9
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %411, label %412

411:                                              ; preds = %408
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1503, ptr noundef nonnull @.str.1) #9
  br label %412

412:                                              ; preds = %405, %408, %411
  %413 = phi i32 [ %409, %408 ], [ 1, %411 ], [ %406, %405 ]
  %414 = load i32, ptr %268, align 8
  %415 = and i32 %414, 65535
  %416 = icmp eq i32 %415, 43
  br i1 %416, label %435, label %417

417:                                              ; preds = %412
  %418 = icmp eq i64 %272, 0
  br i1 %418, label %419, label %426

419:                                              ; preds = %417
  %420 = lshr i32 %414, 16
  %421 = and i32 %420, 255
  %422 = zext nneg i32 %421 to i64
  %423 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %422
  %424 = load i8, ptr %423, align 1, !tbaa !12
  %425 = icmp ugt i8 %424, 4
  br i1 %425, label %426, label %435

426:                                              ; preds = %419, %417
  %427 = icmp eq i32 %415, 37
  br i1 %427, label %430, label %428

428:                                              ; preds = %426
  %429 = tail call ptr @copy_to_reg(ptr noundef nonnull %268) #9
  br label %430

430:                                              ; preds = %428, %426
  %431 = phi ptr [ %268, %426 ], [ %429, %428 ]
  %432 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 0) #9
  %433 = trunc i64 %274 to i32
  %434 = tail call ptr @gen_rtx_SUBREG(i32 noundef %432, ptr noundef %431, i32 noundef %433) #9
  br label %435

435:                                              ; preds = %419, %430, %412
  %436 = phi ptr [ %268, %412 ], [ %434, %430 ], [ %268, %419 ]
  %437 = phi i64 [ %272, %412 ], [ 0, %430 ], [ 0, %419 ]
  %438 = icmp eq i32 %3, 0
  %439 = select i1 %438, i32 1, i32 2
  %440 = tail call i32 @mode_for_extraction(i32 noundef %439, i32 noundef 0) #10
  %441 = select i1 %438, i32 2179, i32 2180
  %442 = icmp ne i32 %440, 87
  %443 = icmp ne i64 %1, 0
  %444 = and i1 %443, %442
  br i1 %444, label %445, label %546

445:                                              ; preds = %435
  %446 = zext i32 %440 to i64
  %447 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %446
  %448 = load i8, ptr %447, align 1, !tbaa !12
  %449 = zext i8 %448 to i64
  %450 = shl nuw nsw i64 %449, 3
  %451 = icmp ult i64 %450, %1
  %452 = load i32, ptr %436, align 8
  br i1 %451, label %549, label %453

453:                                              ; preds = %445
  %454 = trunc i32 %452 to i16
  switch i16 %454, label %462 [
    i16 39, label %455
    i16 37, label %459
  ]

455:                                              ; preds = %453
  %456 = lshr i32 %452, 16
  %457 = and i32 %456, 255
  %458 = icmp eq i32 %457, %440
  br i1 %458, label %459, label %549

459:                                              ; preds = %453, %455
  %460 = add nuw nsw i64 %270, %1
  %461 = icmp ugt i64 %460, %450
  br i1 %461, label %546, label %462

462:                                              ; preds = %453, %459
  %463 = lshr i32 %452, 16
  %464 = and i32 %463, 255
  %465 = tail call fastcc zeroext i8 @check_predicate_volatile_ok(i32 noundef %441, i32 noundef 1, ptr noundef nonnull %436, i32 noundef %464) #10
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %546, label %467

467:                                              ; preds = %462
  %468 = tail call ptr @get_last_insn() #9
  %469 = load i32, ptr %436, align 8
  %470 = and i32 %469, 65535
  %471 = icmp eq i32 %470, 37
  br i1 %471, label %472, label %479

472:                                              ; preds = %467
  %473 = lshr i32 %469, 16
  %474 = and i32 %473, 255
  %475 = icmp eq i32 %474, %440
  br i1 %475, label %479, label %476

476:                                              ; preds = %472
  %477 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %440, ptr noundef nonnull %436) #9
  %478 = load i32, ptr %477, align 8
  br label %479

479:                                              ; preds = %476, %472, %467
  %480 = phi i32 [ %478, %476 ], [ %469, %472 ], [ %469, %467 ]
  %481 = phi ptr [ %477, %476 ], [ %436, %472 ], [ %436, %467 ]
  %482 = and i32 %480, 65535
  %483 = icmp eq i32 %482, 43
  br i1 %483, label %484, label %487

484:                                              ; preds = %479
  %485 = load i32, ptr @byte_mode, align 4, !tbaa !24
  %486 = tail call ptr @adjust_address_1(ptr noundef nonnull %481, i32 noundef %485, i64 noundef %437, i32 noundef 1, i32 noundef 1) #9
  br label %487

487:                                              ; preds = %484, %479
  %488 = phi ptr [ %486, %484 ], [ %481, %479 ]
  %489 = icmp eq ptr %4, null
  br i1 %489, label %490, label %492

490:                                              ; preds = %487
  %491 = tail call ptr @gen_reg_rtx(i32 noundef %13) #9
  br label %492

492:                                              ; preds = %490, %487
  %493 = phi ptr [ %491, %490 ], [ %4, %487 ]
  %494 = load i32, ptr %493, align 8
  %495 = lshr i32 %494, 16
  %496 = and i32 %495, 255
  %497 = icmp eq i32 %496, %440
  br i1 %497, label %515, label %498

498:                                              ; preds = %492
  %499 = and i32 %494, 65535
  %500 = icmp eq i32 %499, 37
  br i1 %500, label %501, label %513

501:                                              ; preds = %498
  %502 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %503 = tail call ptr %502(i32 noundef %440, ptr noundef nonnull %493) #9
  %504 = load i8, ptr %447, align 1, !tbaa !12
  %505 = load i32, ptr %493, align 8
  %506 = lshr i32 %505, 16
  %507 = and i32 %506, 255
  %508 = zext nneg i32 %507 to i64
  %509 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %508
  %510 = load i8, ptr %509, align 1, !tbaa !12
  %511 = icmp ugt i8 %504, %510
  %512 = select i1 %511, ptr %503, ptr null
  br label %515

513:                                              ; preds = %498
  %514 = tail call ptr @gen_reg_rtx(i32 noundef %440) #9
  br label %515

515:                                              ; preds = %501, %513, %492
  %516 = phi ptr [ %514, %513 ], [ %493, %492 ], [ %503, %501 ]
  %517 = phi ptr [ null, %513 ], [ null, %492 ], [ %512, %501 ]
  %518 = zext nneg i32 %441 to i64
  %519 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %518, i32 3
  %520 = load ptr, ptr %519, align 8, !tbaa !28
  %521 = load ptr, ptr %520, align 8, !tbaa !34
  %522 = tail call i32 %521(ptr noundef %516, i32 noundef %440) #9
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %526

524:                                              ; preds = %515
  %525 = tail call ptr @gen_reg_rtx(i32 noundef %440) #9
  br label %526

526:                                              ; preds = %524, %515
  %527 = phi ptr [ %516, %515 ], [ %525, %524 ]
  %528 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1) #9
  %529 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %270) #9
  br i1 %438, label %532, label %530

530:                                              ; preds = %526
  %531 = tail call ptr @gen_extzv(ptr noundef %527, ptr noundef %488, ptr noundef %528, ptr noundef %529) #9
  br label %534

532:                                              ; preds = %526
  %533 = tail call ptr @gen_extv(ptr noundef %527, ptr noundef %488, ptr noundef %528, ptr noundef %529) #9
  br label %534

534:                                              ; preds = %532, %530
  %535 = phi ptr [ %531, %530 ], [ %533, %532 ]
  %536 = icmp eq ptr %535, null
  br i1 %536, label %545, label %537

537:                                              ; preds = %534
  %538 = tail call ptr @emit_insn(ptr noundef nonnull %535) #9
  %539 = icmp eq ptr %527, %493
  %540 = icmp eq ptr %527, %517
  %541 = select i1 %539, i1 true, i1 %540
  br i1 %541, label %609, label %542

542:                                              ; preds = %537
  %543 = trunc i32 %3 to i8
  %544 = tail call fastcc ptr @convert_extracted_bit_field(ptr noundef %527, i32 noundef %5, i32 noundef %13, i8 noundef zeroext %543) #10
  br label %609

545:                                              ; preds = %534
  tail call void @delete_insns_since(ptr noundef %468) #9
  br label %546

546:                                              ; preds = %545, %462, %459, %435
  br i1 %442, label %547, label %603

547:                                              ; preds = %546
  %548 = load i32, ptr %436, align 8
  br label %549

549:                                              ; preds = %547, %445, %455
  %550 = phi i32 [ %548, %547 ], [ %452, %445 ], [ %452, %455 ]
  %551 = and i32 %550, 65535
  %552 = icmp eq i32 %551, 43
  br i1 %552, label %553, label %603

553:                                              ; preds = %549
  %554 = lshr i32 %550, 16
  %555 = and i32 %554, 255
  %556 = icmp eq i32 %555, 1
  br i1 %556, label %565, label %557

557:                                              ; preds = %553
  %558 = zext nneg i32 %555 to i64
  %559 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !12
  %561 = zext i32 %440 to i64
  %562 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %561
  %563 = load i8, ptr %562, align 1, !tbaa !12
  %564 = icmp ugt i8 %560, %563
  br i1 %564, label %565, label %579

565:                                              ; preds = %557, %553
  %566 = trunc i64 %1 to i32
  %567 = trunc i64 %261 to i32
  %568 = getelementptr inbounds %struct.rtx_def, ptr %436, i64 0, i32 1, i32 0, i32 0, i64 1
  %569 = load ptr, ptr %568, align 8, !tbaa !12
  %570 = icmp eq ptr %569, null
  br i1 %570, label %574, label %571

571:                                              ; preds = %565
  %572 = getelementptr inbounds %struct.mem_attrs, ptr %569, i64 0, i32 4
  %573 = load i32, ptr %572, align 4, !tbaa !40
  br label %574

574:                                              ; preds = %565, %571
  %575 = phi i32 [ %573, %571 ], [ 8, %565 ]
  %576 = lshr i32 %550, 27
  %577 = and i32 %576, 1
  %578 = tail call i32 @get_best_mode(i32 noundef %566, i32 noundef %567, i32 noundef %575, i32 noundef %440, i32 noundef %577) #9
  br label %579

579:                                              ; preds = %557, %574
  %580 = phi i32 [ %578, %574 ], [ %555, %557 ]
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %603, label %582

582:                                              ; preds = %579
  %583 = zext i32 %580 to i64
  %584 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %583
  %585 = load i8, ptr %584, align 1, !tbaa !12
  %586 = zext i8 %585 to i64
  %587 = shl nuw nsw i64 %586, 3
  %588 = udiv i64 %261, %587
  %589 = urem i64 %261, %587
  %590 = mul i64 %588, %586
  %591 = add i64 %590, %586
  %592 = shl i64 %591, 3
  %593 = shl nuw i64 %437, 3
  %594 = add i64 %593, %1
  %595 = icmp ult i64 %592, %594
  br i1 %595, label %603, label %596

596:                                              ; preds = %582
  %597 = tail call ptr @get_last_insn() #9
  %598 = tail call ptr @adjust_address_1(ptr noundef nonnull %436, i32 noundef %580, i64 noundef %590, i32 noundef 1, i32 noundef 1) #9
  %599 = tail call ptr @force_reg(i32 noundef %580, ptr noundef %598) #9
  %600 = tail call fastcc ptr @extract_bit_field_1(ptr noundef %599, i64 noundef %1, i64 noundef %589, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %13, i8 noundef zeroext 0) #10
  %601 = icmp eq ptr %600, null
  br i1 %601, label %602, label %609

602:                                              ; preds = %596
  tail call void @delete_insns_since(ptr noundef %597) #9
  br label %603

603:                                              ; preds = %602, %582, %579, %549, %546
  %604 = icmp eq i8 %7, 0
  br i1 %604, label %609, label %605

605:                                              ; preds = %603
  %606 = tail call fastcc ptr @extract_fixed_bit_field(i32 noundef %413, ptr noundef %436, i64 noundef %437, i64 noundef %1, i64 noundef %270, ptr noundef %4, i32 noundef %3) #10
  %607 = trunc i32 %3 to i8
  %608 = tail call fastcc ptr @convert_extracted_bit_field(ptr noundef %606, i32 noundef %5, i32 noundef %13, i8 noundef zeroext %607) #10
  br label %609

609:                                              ; preds = %383, %380, %542, %537, %209, %205, %596, %603, %390, %370, %324, %43, %605, %327, %37
  %610 = phi ptr [ %38, %37 ], [ %328, %327 ], [ %608, %605 ], [ %16, %43 ], [ %325, %324 ], [ %404, %390 ], [ %343, %370 ], [ null, %603 ], [ %600, %596 ], [ %166, %205 ], [ %211, %209 ], [ %493, %537 ], [ %544, %542 ], [ %343, %380 ], [ %343, %383 ]
  ret ptr %610
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
define internal fastcc ptr @convert_extracted_bit_field(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, %2
  %9 = icmp eq i32 %7, %1
  %10 = or i1 %8, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %4
  %12 = zext i32 %2 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !12
  %15 = and i8 %14, -2
  %16 = icmp eq i8 %15, 2
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %19 = load i8, ptr %18, align 1, !tbaa !12
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 3
  %22 = tail call i32 @mode_for_size(i32 noundef %21, i32 noundef 2, i32 noundef 0) #9
  %23 = zext i8 %3 to i32
  %24 = tail call ptr @convert_to_mode(i32 noundef %22, ptr noundef nonnull %0, i32 noundef %23) #9
  %25 = tail call ptr @force_reg(i32 noundef %22, ptr noundef %24) #9
  %26 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %27 = tail call ptr %26(i32 noundef %2, ptr noundef %25) #9
  br label %31

28:                                               ; preds = %11
  %29 = zext i8 %3 to i32
  %30 = tail call ptr @convert_to_mode(i32 noundef %2, ptr noundef nonnull %0, i32 noundef %29) #9
  br label %31

31:                                               ; preds = %4, %28, %17
  %32 = phi ptr [ %30, %28 ], [ %27, %17 ], [ %0, %4 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @extract_low_bits(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %0, %1
  br i1 %4, label %69, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !24
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %29

12:                                               ; preds = %5
  %13 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %1) #9
  %14 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %69

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
  %32 = load i8, ptr %31, align 1, !tbaa !12
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %69, label %34

34:                                               ; preds = %29
  %35 = zext i32 %1 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !12
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %69, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %41 = load i8, ptr %40, align 1, !tbaa !12
  %42 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %43 = load i8, ptr %42, align 1, !tbaa !12
  %44 = icmp eq i8 %41, %43
  br i1 %44, label %45, label %51

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
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %52, i32 noundef %1) #9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %53, i32 noundef %0) #9
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %65 = tail call ptr %64(i32 noundef %52, ptr noundef nonnull %2) #9
  %66 = tail call ptr @convert_modes(i32 noundef %53, i32 noundef %52, ptr noundef %65, i32 noundef 1) #9
  %67 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
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
define dso_local void @expand_inc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
define dso_local void @expand_dec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !12
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
  %29 = load i8, ptr %28, align 1, !tbaa !12
  %30 = icmp ult i8 %29, 8
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %11
  br label %32

32:                                               ; preds = %31, %25, %7
  %33 = phi i64 [ 0, %25 ], [ -1, %31 ], [ 0, %7 ]
  %34 = load i64, ptr %8, align 8, !tbaa !12
  %35 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %34, i64 noundef %33) #9
  br label %69

36:                                               ; preds = %3
  %37 = and i32 %5, 16711680
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br i1 %38, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, ptr %39, align 8, !tbaa !12
  %42 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load i64, ptr %42, align 8, !tbaa !12
  %44 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %41, i64 noundef %43) #9
  br label %69

45:                                               ; preds = %36
  %46 = tail call ptr @build_real(ptr noundef %0, ptr noundef nonnull byval(%struct.real_value) align 8 %39) #9
  br label %69

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !12
  %50 = load i32, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !12
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = zext nneg i32 %50 to i64
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ %55, %54 ], [ %59, %56 ]
  %58 = phi ptr [ null, %54 ], [ %64, %56 ]
  %59 = add nsw i64 %57, -1
  %60 = load ptr, ptr %48, align 8, !tbaa !12
  %61 = getelementptr inbounds %struct.rtvec_def, ptr %60, i64 0, i32 1, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = tail call ptr @make_tree(ptr noundef %52, ptr noundef %62) #10
  %64 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %63, ptr noundef %58) #9
  %65 = icmp ugt i64 %57, 1
  br i1 %65, label %56, label %66, !llvm.loop !65

66:                                               ; preds = %56, %47
  %67 = phi ptr [ null, %47 ], [ %64, %56 ]
  %68 = tail call ptr @build_vector(ptr noundef %0, ptr noundef %67) #9
  br label %69

69:                                               ; preds = %40, %45, %212, %178, %66, %32, %154, %144, %134, %118, %108, %100, %92, %87, %79, %71
  %70 = phi ptr [ %78, %71 ], [ %86, %79 ], [ %91, %87 ], [ %99, %92 ], [ %107, %100 ], [ %117, %108 ], [ %127, %118 ], [ %143, %134 ], [ %153, %144 ], [ %167, %154 ], [ %191, %212 ], [ %180, %178 ], [ %68, %66 ], [ %35, %32 ], [ %44, %40 ], [ %46, %45 ]
  ret ptr %70

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !12
  %74 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %73) #10
  %75 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !12
  %77 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %76) #10
  %78 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %0, ptr noundef %74, ptr noundef %77) #9
  br label %69

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !12
  %82 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %81) #10
  %83 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !12
  %85 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %84) #10
  %86 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %82, ptr noundef %85) #9
  br label %69

87:                                               ; preds = %3
  %88 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !12
  %90 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %89) #10
  %91 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %0, ptr noundef %90) #9
  br label %69

92:                                               ; preds = %3
  %93 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !12
  %95 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %94) #10
  %96 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !12
  %98 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %97) #10
  %99 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %0, ptr noundef %95, ptr noundef %98) #9
  br label %69

100:                                              ; preds = %3
  %101 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !12
  %103 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %102) #10
  %104 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !12
  %106 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %105) #10
  %107 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %0, ptr noundef %103, ptr noundef %106) #9
  br label %69

108:                                              ; preds = %3
  %109 = tail call ptr @unsigned_type_for(ptr noundef %0) #9
  %110 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !12
  %112 = tail call ptr @make_tree(ptr noundef %109, ptr noundef %111) #10
  %113 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !12
  %115 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %114) #10
  %116 = tail call ptr @build2_stat(i32 noundef 84, ptr noundef %109, ptr noundef %112, ptr noundef %115) #9
  %117 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %116) #9
  br label %69

118:                                              ; preds = %3
  %119 = tail call ptr @signed_type_for(ptr noundef %0) #9
  %120 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !12
  %122 = tail call ptr @make_tree(ptr noundef %119, ptr noundef %121) #10
  %123 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !12
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
  %137 = load ptr, ptr %136, align 8, !tbaa !12
  %138 = tail call ptr @make_tree(ptr noundef %135, ptr noundef %137) #10
  %139 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !12
  %141 = tail call ptr @make_tree(ptr noundef %135, ptr noundef %140) #10
  %142 = tail call ptr @build2_stat(i32 noundef 67, ptr noundef %135, ptr noundef %138, ptr noundef %141) #9
  %143 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %142) #9
  br label %69

144:                                              ; preds = %3
  %145 = tail call ptr @unsigned_type_for(ptr noundef %0) #9
  %146 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !12
  %148 = tail call ptr @make_tree(ptr noundef %145, ptr noundef %147) #10
  %149 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !12
  %151 = tail call ptr @make_tree(ptr noundef %145, ptr noundef %150) #10
  %152 = tail call ptr @build2_stat(i32 noundef 67, ptr noundef %145, ptr noundef %148, ptr noundef %151) #9
  %153 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %152) #9
  br label %69

154:                                              ; preds = %3, %3
  %155 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !66
  %156 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !12
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = and i32 %5, 65535
  %162 = icmp eq i32 %161, 99
  %163 = zext i1 %162 to i32
  %164 = tail call ptr %155(i32 noundef %160, i32 noundef %163) #9
  %165 = load ptr, ptr %156, align 8, !tbaa !12
  %166 = tail call ptr @make_tree(ptr noundef %164, ptr noundef %165) #10
  %167 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %166) #9
  br label %69

168:                                              ; preds = %3
  %169 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !12
  br label %3

171:                                              ; preds = %3
  %172 = and i32 %5, 67108864
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %176 = load ptr, ptr %175, align 8, !tbaa !12
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
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !12
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
  ]

194:                                              ; preds = %189, %189
  %195 = and i64 %192, 65535
  %196 = icmp eq i64 %195, 14
  br i1 %196, label %197, label %199

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
  %207 = load ptr, ptr %206, align 8, !tbaa !12
  %208 = load i64, ptr %207, align 8
  %209 = lshr i64 %208, 56
  %210 = trunc i64 %209 to i8
  %211 = tail call ptr @convert_memory_address_addr_space(i32 noundef %205, ptr noundef nonnull %4, i8 noundef zeroext %210) #9
  br label %212

212:                                              ; preds = %189, %204
  %213 = phi ptr [ %211, %204 ], [ %4, %189 ]
  %214 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %191, i64 0, i32 1
  store ptr %213, ptr %214, align 8, !tbaa !12
  br label %69
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_mult(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.algorithm, align 4
  %8 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #8
  %9 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %142, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %142, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !6
  %17 = icmp eq ptr %16, %2
  %18 = zext i32 %0 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !12
  %21 = freeze i8 %20
  br i1 %17, label %22, label %32

22:                                               ; preds = %15
  %23 = icmp ne i8 %21, 2
  %24 = icmp ne i32 %4, 0
  %25 = or i1 %24, %23
  %26 = load i32, ptr @flag_trapv, align 4
  %27 = freeze i32 %26
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %25, %28
  %30 = select i1 %29, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65)
  %31 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull %30, ptr noundef %1, ptr noundef %3, i32 noundef 0) #9
  br label %142

32:                                               ; preds = %15
  %33 = and i8 %21, -2
  %34 = icmp eq i8 %33, 2
  br i1 %34, label %35, label %109

35:                                               ; preds = %32
  %36 = icmp eq i32 %4, 0
  %37 = load i32, ptr @flag_trapv, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %109, label %40

40:                                               ; preds = %35
  %41 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef 58) #9
  %42 = load i32, ptr %2, align 8
  %43 = trunc i32 %42 to i16
  switch i16 %43, label %109 [
    i16 30, label %44
    i16 32, label %71
  ]

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !12
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %44
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %50 = load i8, ptr %49, align 1, !tbaa !12
  %51 = icmp ugt i8 %50, 8
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef %41, ptr noundef nonnull %2) #9
  %54 = tail call i32 @rtx_cost(ptr noundef %53, i32 noundef 23, i8 noundef zeroext %9) #9
  %55 = zext i8 %9 to i64
  %56 = getelementptr inbounds [2 x [87 x i32]], ptr @neg_cost, i64 0, i64 %55, i64 %18
  %57 = load i32, ptr %56, align 4, !tbaa !24
  %58 = sub nsw i32 %54, %57
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %109

60:                                               ; preds = %52
  %61 = load i64, ptr %45, align 8, !tbaa !12
  %62 = sub nsw i64 0, %61
  %63 = call fastcc zeroext i8 @choose_mult_variant(i32 noundef %0, i64 noundef %62, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %58) #10, !range !30
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %109, label %65

65:                                               ; preds = %60
  %66 = load i64, ptr %45, align 8, !tbaa !12
  %67 = sub nsw i64 0, %66
  %68 = load i32, ptr %6, align 4, !tbaa !24
  %69 = call fastcc ptr @expand_mult_const(i32 noundef %0, ptr noundef %1, i64 noundef %67, ptr noundef null, ptr noundef nonnull %7, i32 noundef %68) #10
  %70 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %69, ptr noundef %3, i32 noundef 0) #9
  br label %142

71:                                               ; preds = %40
  %72 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %73 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load i64, ptr %73, align 8, !tbaa !12
  %75 = icmp eq i64 %74, 0
  %76 = load i64, ptr %72, align 8, !tbaa !12
  %77 = icmp sgt i64 %76, 0
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %92, label %79

79:                                               ; preds = %71
  %80 = icmp eq i64 %76, 0
  %81 = tail call i64 @llvm.ctpop.i64(i64 %74), !range !74
  %82 = icmp ult i64 %81, 2
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = tail call i32 @floor_log2(i64 noundef %74) #9
  %86 = add nsw i32 %85, 64
  %87 = sext i32 %86 to i64
  %88 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %87) #9
  %89 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %1, ptr noundef %88, ptr noundef %3, i32 noundef %4) #10
  br label %142

90:                                               ; preds = %44
  %91 = icmp eq i64 %46, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %71, %48, %90
  %93 = phi i64 [ %46, %90 ], [ %46, %48 ], [ %76, %71 ]
  %94 = tail call i64 @llvm.ctpop.i64(i64 %93), !range !74
  %95 = icmp ult i64 %94, 2
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = tail call i32 @floor_log2(i64 noundef %93) #9
  %98 = sext i32 %97 to i64
  %99 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %98) #9
  %100 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %1, ptr noundef %99, ptr noundef %3, i32 noundef %4) #10
  br label %142

101:                                              ; preds = %92
  %102 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef %41, ptr noundef nonnull %2) #9
  %103 = tail call i32 @rtx_cost(ptr noundef %102, i32 noundef 23, i8 noundef zeroext %9) #9
  %104 = call fastcc zeroext i8 @choose_mult_variant(i32 noundef %0, i64 noundef %93, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %103) #10, !range !30
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %6, align 4, !tbaa !24
  %108 = call fastcc ptr @expand_mult_const(i32 noundef %0, ptr noundef %1, i64 noundef %93, ptr noundef %3, ptr noundef nonnull %7, i32 noundef %107) #10
  br label %142

109:                                              ; preds = %40, %79, %52, %60, %101, %90, %32, %35
  %110 = load i32, ptr %1, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 32
  %113 = select i1 %112, ptr %1, ptr %2
  %114 = select i1 %112, ptr %2, ptr %1
  %115 = load i32, ptr %113, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 32
  %118 = icmp eq i8 %33, 8
  %119 = and i1 %118, %117
  br i1 %119, label %120, label %131

120:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #8
  %121 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %121, i64 32, i1 false), !tbaa.struct !75
  %122 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %8, ptr noundef nonnull @dconst2) #9
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #8
  br label %131

125:                                              ; preds = %120
  %126 = load i32, ptr %114, align 8
  %127 = lshr i32 %126, 16
  %128 = and i32 %127, 255
  %129 = call ptr @force_reg(i32 noundef %128, ptr noundef nonnull %114) #9
  %130 = call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %129, ptr noundef %129, ptr noundef %3, i32 noundef %4, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #8
  br label %142

131:                                              ; preds = %124, %109
  %132 = icmp eq i32 %4, 0
  %133 = load i32, ptr @flag_trapv, align 4
  %134 = icmp ne i32 %133, 0
  %135 = select i1 %132, i1 %134, i1 false
  %136 = icmp eq i8 %21, 2
  %137 = and i1 %136, %135
  %138 = select i1 %137, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16)
  %139 = call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %138, ptr noundef %114, ptr noundef nonnull %113, ptr noundef %3, i32 noundef %4, i32 noundef 3) #9
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3253, ptr noundef nonnull @.str.1) #9
  br label %142

142:                                              ; preds = %84, %106, %96, %65, %125, %141, %131, %12, %5, %22
  %143 = phi ptr [ %31, %22 ], [ %130, %125 ], [ %2, %5 ], [ %1, %12 ], [ %139, %131 ], [ null, %141 ], [ %89, %84 ], [ %108, %106 ], [ %100, %96 ], [ %70, %65 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret ptr %143
}

; Function Attrs: optsize
declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @choose_mult_variant(i32 noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.algorithm, align 4
  %7 = alloca %struct.mult_cost, align 2
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %8 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %9 = icmp slt i32 %4, 0
  br i1 %9, label %124, label %10

10:                                               ; preds = %5
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !12
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 4
  %16 = zext i8 %8 to i64
  %17 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %16, i64 %11
  %18 = load i32, ptr %17, align 4, !tbaa !24
  %19 = mul nsw i32 %15, %18
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %4)
  store i32 0, ptr %3, align 4, !tbaa !24
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %7, align 2, !tbaa !76
  %22 = getelementptr inbounds %struct.mult_cost, ptr %7, i64 0, i32 1
  store i16 %21, ptr %22, align 2, !tbaa !79
  call fastcc void @synth_mult(ptr noundef %2, i64 noundef %1, ptr noundef nonnull %7, i32 noundef %0) #10
  %23 = load i8, ptr %12, align 1, !tbaa !12
  %24 = icmp ult i8 %23, 5
  %25 = load i16, ptr %2, align 4, !tbaa !80
  br i1 %24, label %26, label %69

26:                                               ; preds = %10
  %27 = getelementptr inbounds [2 x [87 x i32]], ptr @neg_cost, i64 0, i64 %16, i64 %11
  %28 = load i32, ptr %27, align 4, !tbaa !24
  %29 = sext i16 %25 to i32
  %30 = icmp sgt i32 %20, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !82
  br label %41

34:                                               ; preds = %26
  %35 = icmp eq i32 %20, %29
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !82
  %39 = sext i16 %38 to i32
  %40 = icmp sgt i32 %20, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %31, %36
  %42 = phi i16 [ %33, %31 ], [ %38, %36 ]
  %43 = trunc i32 %28 to i16
  %44 = sub i16 %25, %43
  store i16 %44, ptr %7, align 2, !tbaa !76
  %45 = sub i16 %42, %43
  br label %50

46:                                               ; preds = %36, %34
  %47 = sub nsw i32 %20, %28
  %48 = trunc i32 %47 to i16
  store i16 %48, ptr %7, align 2, !tbaa !76
  %49 = trunc i32 %28 to i16
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i16 [ %49, %46 ], [ %43, %41 ]
  %52 = phi i16 [ %48, %46 ], [ %45, %41 ]
  store i16 %52, ptr %22, align 2, !tbaa !79
  %53 = sub nsw i64 0, %1
  call fastcc void @synth_mult(ptr noundef nonnull %6, i64 noundef %53, ptr noundef nonnull %7, i32 noundef %0) #10
  %54 = load i16, ptr %6, align 4, !tbaa !80
  %55 = add i16 %54, %51
  store i16 %55, ptr %6, align 4, !tbaa !80
  %56 = getelementptr inbounds %struct.mult_cost, ptr %6, i64 0, i32 1
  %57 = load i16, ptr %56, align 2, !tbaa !82
  %58 = add i16 %57, %51
  store i16 %58, ptr %56, align 2, !tbaa !82
  %59 = load i16, ptr %2, align 4, !tbaa !80
  %60 = icmp slt i16 %55, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %50
  %62 = icmp eq i16 %55, %59
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !82
  %66 = icmp slt i16 %58, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) %6, i64 168, i1 false), !tbaa.struct !83
  store i32 1, ptr %3, align 4, !tbaa !24
  %68 = load i16, ptr %2, align 4, !tbaa !80
  br label %69

69:                                               ; preds = %61, %63, %67, %10
  %70 = phi i16 [ %59, %61 ], [ %55, %63 ], [ %68, %67 ], [ %25, %10 ]
  %71 = load i32, ptr %17, align 4, !tbaa !24
  %72 = sext i16 %70 to i32
  %73 = icmp sgt i32 %20, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %76 = load i16, ptr %75, align 2, !tbaa !82
  br label %84

77:                                               ; preds = %69
  %78 = icmp eq i32 %20, %72
  br i1 %78, label %79, label %89

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %81 = load i16, ptr %80, align 2, !tbaa !82
  %82 = sext i16 %81 to i32
  %83 = icmp sgt i32 %20, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %74, %79
  %85 = phi i16 [ %76, %74 ], [ %81, %79 ]
  %86 = trunc i32 %71 to i16
  %87 = sub i16 %70, %86
  store i16 %87, ptr %7, align 2, !tbaa !76
  %88 = sub i16 %85, %86
  br label %93

89:                                               ; preds = %79, %77
  %90 = sub nsw i32 %20, %71
  %91 = trunc i32 %90 to i16
  store i16 %91, ptr %7, align 2, !tbaa !76
  %92 = trunc i32 %71 to i16
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i16 [ %92, %89 ], [ %86, %84 ]
  %95 = phi i16 [ %91, %89 ], [ %88, %84 ]
  store i16 %95, ptr %22, align 2, !tbaa !79
  %96 = add nsw i64 %1, -1
  call fastcc void @synth_mult(ptr noundef nonnull %6, i64 noundef %96, ptr noundef nonnull %7, i32 noundef %0) #10
  %97 = load i16, ptr %6, align 4, !tbaa !80
  %98 = add i16 %97, %94
  store i16 %98, ptr %6, align 4, !tbaa !80
  %99 = getelementptr inbounds %struct.mult_cost, ptr %6, i64 0, i32 1
  %100 = load i16, ptr %99, align 2, !tbaa !82
  %101 = add i16 %100, %94
  store i16 %101, ptr %99, align 2, !tbaa !82
  %102 = load i16, ptr %2, align 4, !tbaa !80
  %103 = icmp slt i16 %98, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %93
  %105 = icmp eq i16 %98, %102
  br i1 %105, label %106, label %112

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %108 = load i16, ptr %107, align 2, !tbaa !82
  %109 = icmp slt i16 %101, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106, %93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) %6, i64 168, i1 false), !tbaa.struct !83
  store i32 2, ptr %3, align 4, !tbaa !24
  %111 = load i16, ptr %2, align 4, !tbaa !80
  br label %112

112:                                              ; preds = %110, %106, %104
  %113 = phi i16 [ %111, %110 ], [ %98, %106 ], [ %102, %104 ]
  %114 = sext i16 %113 to i32
  %115 = icmp sgt i32 %20, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = icmp eq i32 %20, %114
  br i1 %117, label %118, label %124

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %120 = load i16, ptr %119, align 2, !tbaa !82
  %121 = sext i16 %120 to i32
  %122 = icmp sgt i32 %20, %121
  %123 = zext i1 %122 to i8
  br label %124

124:                                              ; preds = %112, %118, %116, %5
  %125 = phi i8 [ 0, %5 ], [ 1, %112 ], [ 0, %116 ], [ %123, %118 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %6) #8
  ret i8 %125
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_mult_const(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %1) #9
  %8 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !24
  switch i32 %9, label %15 [
    i32 1, label %10
    i32 2, label %13
  ]

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
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
  %20 = load i16, ptr %19, align 4, !tbaa !85
  %21 = icmp sgt i16 %20, 1
  br i1 %21, label %22, label %141

22:                                               ; preds = %16
  %23 = zext nneg i16 %20 to i64
  %24 = icmp ne ptr %3, null
  %25 = icmp ne i32 %5, 2
  br label %26

26:                                               ; preds = %22, %129
  %27 = phi i64 [ 1, %22 ], [ %136, %129 ]
  %28 = phi i64 [ %23, %22 ], [ %138, %129 ]
  %29 = phi i64 [ %18, %22 ], [ %117, %129 ]
  %30 = phi ptr [ %17, %22 ], [ %116, %129 ]
  %31 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 3, i64 %27
  %32 = load i8, ptr %31, align 1, !tbaa !12
  %33 = sext i8 %32 to i32
  %34 = load i32, ptr @optimize, align 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr %30, ptr null
  %37 = add nsw i64 %28, 4294967295
  %38 = and i64 %37, 4294967295
  %39 = icmp eq i64 %27, %38
  %40 = and i1 %24, %39
  %41 = and i1 %25, %40
  %42 = select i1 %41, i1 %35, i1 false
  %43 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 2, i64 %27
  %44 = load i32, ptr %43, align 4, !tbaa !24
  switch i32 %44, label %114 [
    i32 3, label %45
    i32 4, label %51
    i32 5, label %61
    i32 8, label %71
    i32 9, label %81
    i32 6, label %91
    i32 7, label %101
  ]

45:                                               ; preds = %26
  %46 = sext i8 %32 to i64
  %47 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %46) #9
  %48 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %47, ptr noundef null, i32 noundef 0) #10
  %49 = zext nneg i32 %33 to i64
  %50 = shl i64 %29, %49
  br label %115

51:                                               ; preds = %26
  %52 = sext i8 %32 to i64
  %53 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %52) #9
  %54 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %7, ptr noundef %53, ptr noundef null, i32 noundef 0) #10
  %55 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %30, ptr noundef %54) #9
  %56 = select i1 %42, ptr %3, ptr %36
  %57 = tail call ptr @force_operand(ptr noundef %55, ptr noundef %56) #9
  %58 = zext nneg i32 %33 to i64
  %59 = shl nuw i64 1, %58
  %60 = add nsw i64 %59, %29
  br label %115

61:                                               ; preds = %26
  %62 = sext i8 %32 to i64
  %63 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %62) #9
  %64 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %7, ptr noundef %63, ptr noundef null, i32 noundef 0) #10
  %65 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %30, ptr noundef %64) #9
  %66 = select i1 %42, ptr %3, ptr %36
  %67 = tail call ptr @force_operand(ptr noundef %65, ptr noundef %66) #9
  %68 = zext nneg i32 %33 to i64
  %69 = shl nsw i64 -1, %68
  %70 = add i64 %69, %29
  br label %115

71:                                               ; preds = %26
  %72 = sext i8 %32 to i64
  %73 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %72) #9
  %74 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %73, ptr noundef %36, i32 noundef 0) #10
  %75 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %74, ptr noundef %7) #9
  %76 = select i1 %42, ptr %3, ptr %36
  %77 = tail call ptr @force_operand(ptr noundef %75, ptr noundef %76) #9
  %78 = zext nneg i32 %33 to i64
  %79 = shl i64 %29, %78
  %80 = add nsw i64 %79, 1
  br label %115

81:                                               ; preds = %26
  %82 = sext i8 %32 to i64
  %83 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %82) #9
  %84 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %83, ptr noundef %36, i32 noundef 0) #10
  %85 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %84, ptr noundef %7) #9
  %86 = select i1 %42, ptr %3, ptr %36
  %87 = tail call ptr @force_operand(ptr noundef %85, ptr noundef %86) #9
  %88 = zext nneg i32 %33 to i64
  %89 = shl i64 %29, %88
  %90 = add nsw i64 %89, -1
  br label %115

91:                                               ; preds = %26
  %92 = sext i8 %32 to i64
  %93 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %92) #9
  %94 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %93, ptr noundef null, i32 noundef 0) #10
  %95 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %30, ptr noundef %94) #9
  %96 = select i1 %42, ptr %3, ptr %36
  %97 = tail call ptr @force_operand(ptr noundef %95, ptr noundef %96) #9
  %98 = zext nneg i32 %33 to i64
  %99 = shl i64 %29, %98
  %100 = add nsw i64 %99, %29
  br label %115

101:                                              ; preds = %26
  %102 = sext i8 %32 to i64
  %103 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %102) #9
  %104 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %103, ptr noundef null, i32 noundef 0) #10
  %105 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %104, ptr noundef %30) #9
  %106 = load i32, ptr @optimize, align 4
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, ptr %104, ptr null
  %109 = select i1 %42, ptr %3, ptr %108
  %110 = tail call ptr @force_operand(ptr noundef %105, ptr noundef %109) #9
  %111 = zext nneg i32 %33 to i64
  %112 = shl i64 %29, %111
  %113 = sub nsw i64 %112, %29
  br label %115

114:                                              ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3072, ptr noundef nonnull @.str.1) #9
  br label %115

115:                                              ; preds = %114, %101, %91, %81, %71, %61, %51, %45
  %116 = phi ptr [ %30, %114 ], [ %110, %101 ], [ %97, %91 ], [ %87, %81 ], [ %77, %71 ], [ %67, %61 ], [ %57, %51 ], [ %48, %45 ]
  %117 = phi i64 [ %29, %114 ], [ %113, %101 ], [ %100, %91 ], [ %90, %81 ], [ %80, %71 ], [ %70, %61 ], [ %60, %51 ], [ %50, %45 ]
  %118 = load i32, ptr %116, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 39
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !12
  %124 = load i32, ptr %123, align 8
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %128 = tail call ptr %127(i32 noundef %126, ptr noundef %7) #9
  br label %129

129:                                              ; preds = %121, %115
  %130 = phi ptr [ %128, %121 ], [ %7, %115 ]
  %131 = phi i32 [ %126, %121 ], [ %0, %115 ]
  %132 = tail call ptr @get_last_insn() #9
  %133 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %117) #9
  %134 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %131, ptr noundef %130, ptr noundef %133) #9
  %135 = tail call ptr @set_unique_reg_note(ptr noundef %132, i32 noundef 4, ptr noundef %134) #9
  %136 = add nuw nsw i64 %27, 1
  %137 = load i16, ptr %19, align 4, !tbaa !85
  %138 = sext i16 %137 to i64
  %139 = sext i16 %137 to i64
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %26, label %141, !llvm.loop !86

141:                                              ; preds = %129, %16
  %142 = phi ptr [ %17, %16 ], [ %116, %129 ]
  %143 = phi i64 [ %18, %16 ], [ %117, %129 ]
  switch i32 %5, label %151 [
    i32 1, label %144
    i32 2, label %147
  ]

144:                                              ; preds = %141
  %145 = sub nsw i64 0, %143
  %146 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %142, ptr noundef %3, i32 noundef 0) #9
  br label %151

147:                                              ; preds = %141
  %148 = add nsw i64 %143, 1
  %149 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %142, ptr noundef %7) #9
  %150 = tail call ptr @force_operand(ptr noundef %149, ptr noundef %3) #9
  br label %151

151:                                              ; preds = %141, %147, %144
  %152 = phi ptr [ %146, %144 ], [ %150, %147 ], [ %142, %141 ]
  %153 = phi i64 [ %145, %144 ], [ %148, %147 ], [ %143, %141 ]
  %154 = zext i32 %0 to i64
  %155 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %154
  %156 = load i64, ptr %155, align 8, !tbaa !87
  %157 = xor i64 %153, %2
  %158 = and i64 %157, %156
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %151
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3108, ptr noundef nonnull @.str.1) #9
  br label %161

161:                                              ; preds = %151, %160
  ret ptr %152
}

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @synth_mult(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.mult_cost, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !12
  %9 = icmp ugt i8 %8, 4
  %10 = zext i8 %8 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = select i1 %9, i32 32, i32 %11
  %13 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %14 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %15 = getelementptr inbounds %struct.mult_cost, ptr %0, i64 0, i32 1
  %16 = load <2 x i16>, ptr %2, align 2, !tbaa !84
  %17 = add <2 x i16> %16, <i16 1, i16 1>
  store <2 x i16> %17, ptr %0, align 4, !tbaa !84
  %18 = load i16, ptr %2, align 2
  %19 = icmp slt i16 %18, 0
  br i1 %19, label %555, label %20

20:                                               ; preds = %4
  %21 = icmp eq i16 %18, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i16, ptr %14, align 2, !tbaa !79
  %24 = icmp slt i16 %23, 1
  br i1 %24, label %555, label %25

25:                                               ; preds = %22, %20
  %26 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %6
  %27 = load i64, ptr %26, align 8, !tbaa !87
  %28 = and i64 %27, %1
  switch i64 %28, label %47 [
    i64 1, label %29
    i64 0, label %32
  ]

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 1
  store i16 1, ptr %30, align 4, !tbaa !85
  store i16 0, ptr %0, align 4, !tbaa !80
  store i16 0, ptr %15, align 2, !tbaa !82
  %31 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 2
  store i32 2, ptr %31, align 4, !tbaa !24
  br label %555

32:                                               ; preds = %25
  %33 = zext nneg i16 %18 to i32
  %34 = zext i8 %13 to i64
  %35 = getelementptr inbounds [2 x i32], ptr @zero_cost, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !24
  %37 = icmp sgt i32 %36, %33
  br i1 %37, label %555, label %38

38:                                               ; preds = %32
  %39 = icmp eq i32 %36, %33
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i16, ptr %14, align 2, !tbaa !79
  %42 = icmp sgt i16 %18, %41
  br i1 %42, label %555, label %43

43:                                               ; preds = %40, %38
  %44 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 1
  store i16 1, ptr %44, align 4, !tbaa !85
  %45 = trunc i32 %36 to i16
  store i16 %45, ptr %0, align 4, !tbaa !80
  store i16 %45, ptr %15, align 2, !tbaa !82
  %46 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 2
  store i32 1, ptr %46, align 4, !tbaa !24
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
  %58 = load i64, ptr %57, align 8, !tbaa !88
  %59 = icmp eq i64 %58, %28
  br i1 %59, label %60, label %95

60:                                               ; preds = %47
  %61 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !90
  %63 = icmp eq i32 %62, %3
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 4
  %66 = load i8, ptr %65, align 4, !tbaa !91
  %67 = icmp eq i8 %66, %13
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !92
  switch i32 %70, label %81 [
    i32 0, label %95
    i32 10, label %71
  ]

71:                                               ; preds = %68
  %72 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3
  %73 = load i16, ptr %72, align 8, !tbaa !93
  %74 = icmp slt i16 %73, %18
  br i1 %74, label %95, label %75

75:                                               ; preds = %71
  %76 = icmp eq i16 %73, %18
  br i1 %76, label %77, label %555

77:                                               ; preds = %75
  %78 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3, i32 1
  %79 = load i16, ptr %78, align 2, !tbaa !94
  %80 = icmp slt i16 %79, %50
  br i1 %80, label %95, label %555

81:                                               ; preds = %68
  %82 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3
  %83 = load i16, ptr %82, align 8, !tbaa !93
  %84 = icmp slt i16 %18, %83
  br i1 %84, label %555, label %85

85:                                               ; preds = %81
  %86 = icmp eq i16 %18, %83
  br i1 %86, label %87, label %91

87:                                               ; preds = %85
  %88 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3, i32 1
  %89 = load i16, ptr %88, align 2, !tbaa !94
  %90 = icmp slt i16 %50, %89
  br i1 %90, label %555, label %91

91:                                               ; preds = %87, %85
  switch i32 %70, label %94 [
    i32 3, label %100
    i32 4, label %184
    i32 5, label %184
    i32 6, label %296
    i32 7, label %296
    i32 8, label %92
    i32 9, label %467
  ]

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
  br i1 %99, label %100, label %184

100:                                              ; preds = %95, %91
  %101 = phi i32 [ %96, %95 ], [ %70, %91 ]
  %102 = phi i8 [ %97, %95 ], [ 1, %91 ]
  %103 = sub i64 0, %28
  %104 = and i64 %28, %103
  %105 = tail call i32 @floor_log2(i64 noundef %104) #9
  %106 = icmp slt i32 %105, %12
  br i1 %106, label %107, label %175

107:                                              ; preds = %100
  %108 = zext i32 %105 to i64
  %109 = lshr i64 %28, %108
  %110 = zext i8 %13 to i64
  %111 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %110, i64 %6
  %112 = load i32, ptr %111, align 4, !tbaa !24
  %113 = mul nsw i32 %112, %105
  %114 = sext i32 %105 to i64
  %115 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %110, i64 %6, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !24
  %117 = tail call i32 @llvm.smin.i32(i32 %116, i32 %113)
  %118 = trunc i32 %117 to i16
  %119 = sub i16 %18, %118
  store i16 %119, ptr %5, align 2, !tbaa !76
  %120 = sub i16 %50, %118
  %121 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %120, ptr %121, align 2, !tbaa !79
  call fastcc void @synth_mult(ptr noundef nonnull %48, i64 noundef %109, ptr noundef nonnull %5, i32 noundef %3) #10
  %122 = load i16, ptr %48, align 16, !tbaa !80
  %123 = add i16 %122, %118
  store i16 %123, ptr %48, align 16, !tbaa !80
  %124 = getelementptr inbounds %struct.mult_cost, ptr %48, i64 0, i32 1
  %125 = load i16, ptr %124, align 2, !tbaa !82
  %126 = add i16 %125, %118
  store i16 %126, ptr %124, align 2, !tbaa !82
  %127 = icmp slt i16 %123, %18
  br i1 %127, label %132, label %128

128:                                              ; preds = %107
  %129 = icmp eq i16 %123, %18
  %130 = icmp slt i16 %126, %50
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %141

132:                                              ; preds = %128, %107
  %133 = trunc i32 %105 to i8
  %134 = getelementptr inbounds %struct.algorithm, ptr %48, i64 0, i32 1
  %135 = load i16, ptr %134, align 4, !tbaa !85
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds %struct.algorithm, ptr %48, i64 0, i32 3, i64 %136
  store i8 %133, ptr %137, align 1, !tbaa !12
  %138 = load i16, ptr %134, align 4, !tbaa !85
  %139 = sext i16 %138 to i64
  %140 = getelementptr inbounds %struct.algorithm, ptr %48, i64 0, i32 2, i64 %139
  store i32 3, ptr %140, align 4, !tbaa !24
  br label %141

141:                                              ; preds = %132, %128
  %142 = phi i16 [ %123, %132 ], [ %18, %128 ]
  %143 = phi i16 [ %126, %132 ], [ %50, %128 ]
  %144 = phi ptr [ %48, %132 ], [ %49, %128 ]
  %145 = phi ptr [ %49, %132 ], [ %48, %128 ]
  %146 = icmp slt i64 %1, 0
  br i1 %146, label %147, label %175

147:                                              ; preds = %141
  %148 = ashr i64 %1, %108
  %149 = load i32, ptr %111, align 4, !tbaa !24
  %150 = mul nsw i32 %149, %105
  %151 = load i32, ptr %115, align 4, !tbaa !24
  %152 = tail call i32 @llvm.smin.i32(i32 %151, i32 %150)
  %153 = trunc i32 %152 to i16
  %154 = sub i16 %142, %153
  store i16 %154, ptr %5, align 2, !tbaa !76
  %155 = sub i16 %143, %153
  store i16 %155, ptr %121, align 2, !tbaa !79
  call fastcc void @synth_mult(ptr noundef nonnull %145, i64 noundef %148, ptr noundef nonnull %5, i32 noundef %3) #10
  %156 = load i16, ptr %145, align 16, !tbaa !80
  %157 = add i16 %156, %153
  store i16 %157, ptr %145, align 16, !tbaa !80
  %158 = getelementptr inbounds %struct.mult_cost, ptr %145, i64 0, i32 1
  %159 = load i16, ptr %158, align 2, !tbaa !82
  %160 = add i16 %159, %153
  store i16 %160, ptr %158, align 2, !tbaa !82
  %161 = icmp slt i16 %157, %142
  br i1 %161, label %166, label %162

162:                                              ; preds = %147
  %163 = icmp eq i16 %157, %142
  %164 = icmp slt i16 %160, %143
  %165 = select i1 %163, i1 %164, i1 false
  br i1 %165, label %166, label %175

166:                                              ; preds = %162, %147
  %167 = trunc i32 %105 to i8
  %168 = getelementptr inbounds %struct.algorithm, ptr %145, i64 0, i32 1
  %169 = load i16, ptr %168, align 4, !tbaa !85
  %170 = sext i16 %169 to i64
  %171 = getelementptr inbounds %struct.algorithm, ptr %145, i64 0, i32 3, i64 %170
  store i8 %167, ptr %171, align 1, !tbaa !12
  %172 = load i16, ptr %168, align 4, !tbaa !85
  %173 = sext i16 %172 to i64
  %174 = getelementptr inbounds %struct.algorithm, ptr %145, i64 0, i32 2, i64 %173
  store i32 3, ptr %174, align 4, !tbaa !24
  br label %175

175:                                              ; preds = %141, %166, %162, %100
  %176 = phi i16 [ %157, %166 ], [ %142, %162 ], [ %142, %141 ], [ %18, %100 ]
  %177 = phi i16 [ %160, %166 ], [ %143, %162 ], [ %143, %141 ], [ %50, %100 ]
  %178 = phi ptr [ %145, %166 ], [ %144, %162 ], [ %144, %141 ], [ %49, %100 ]
  %179 = phi ptr [ %144, %166 ], [ %145, %162 ], [ %145, %141 ], [ %48, %100 ]
  %180 = icmp eq i8 %102, 0
  br i1 %180, label %181, label %509

181:                                              ; preds = %175
  %182 = and i64 %28, 1
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %296, label %184

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
  br i1 %194, label %196, label %191, !llvm.loop !95

196:                                              ; preds = %191
  %197 = icmp eq i64 %192, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %196
  %199 = icmp ugt i64 %192, 2
  %200 = icmp ne i64 %28, 3
  %201 = and i1 %200, %199
  br i1 %201, label %202, label %221

202:                                              ; preds = %198, %196
  %203 = zext i8 %13 to i64
  %204 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %203, i64 %6
  %205 = load i32, ptr %204, align 4, !tbaa !24
  %206 = trunc i32 %205 to i16
  %207 = sub i16 %187, %206
  store i16 %207, ptr %5, align 2, !tbaa !76
  %208 = sub i16 %188, %206
  %209 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %208, ptr %209, align 2, !tbaa !79
  %210 = add i64 %28, 1
  call fastcc void @synth_mult(ptr noundef %190, i64 noundef %210, ptr noundef nonnull %5, i32 noundef %3) #10
  %211 = load i16, ptr %190, align 4, !tbaa !80
  %212 = add i16 %211, %206
  store i16 %212, ptr %190, align 4, !tbaa !80
  %213 = getelementptr inbounds %struct.mult_cost, ptr %190, i64 0, i32 1
  %214 = load i16, ptr %213, align 2, !tbaa !82
  %215 = add i16 %214, %206
  store i16 %215, ptr %213, align 2, !tbaa !82
  %216 = icmp slt i16 %212, %187
  br i1 %216, label %240, label %217

217:                                              ; preds = %202
  %218 = icmp eq i16 %212, %187
  %219 = icmp slt i16 %215, %188
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %240, label %251

221:                                              ; preds = %198
  %222 = zext i8 %13 to i64
  %223 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %222, i64 %6
  %224 = load i32, ptr %223, align 4, !tbaa !24
  %225 = trunc i32 %224 to i16
  %226 = sub i16 %187, %225
  store i16 %226, ptr %5, align 2, !tbaa !76
  %227 = sub i16 %188, %225
  %228 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %227, ptr %228, align 2, !tbaa !79
  %229 = add i64 %28, -1
  call fastcc void @synth_mult(ptr noundef %190, i64 noundef %229, ptr noundef nonnull %5, i32 noundef %3) #10
  %230 = load i16, ptr %190, align 4, !tbaa !80
  %231 = add i16 %230, %225
  store i16 %231, ptr %190, align 4, !tbaa !80
  %232 = getelementptr inbounds %struct.mult_cost, ptr %190, i64 0, i32 1
  %233 = load i16, ptr %232, align 2, !tbaa !82
  %234 = add i16 %233, %225
  store i16 %234, ptr %232, align 2, !tbaa !82
  %235 = icmp slt i16 %231, %187
  br i1 %235, label %240, label %236

236:                                              ; preds = %221
  %237 = icmp eq i16 %231, %187
  %238 = icmp slt i16 %234, %188
  %239 = select i1 %237, i1 %238, i1 false
  br i1 %239, label %240, label %251

240:                                              ; preds = %221, %236, %202, %217
  %241 = phi i32 [ 5, %217 ], [ 5, %202 ], [ 4, %236 ], [ 4, %221 ]
  %242 = phi i16 [ %212, %217 ], [ %212, %202 ], [ %231, %236 ], [ %231, %221 ]
  %243 = phi i16 [ %215, %217 ], [ %215, %202 ], [ %234, %236 ], [ %234, %221 ]
  %244 = getelementptr inbounds %struct.algorithm, ptr %190, i64 0, i32 1
  %245 = load i16, ptr %244, align 4, !tbaa !85
  %246 = sext i16 %245 to i64
  %247 = getelementptr inbounds %struct.algorithm, ptr %190, i64 0, i32 3, i64 %246
  store i8 0, ptr %247, align 1, !tbaa !12
  %248 = load i16, ptr %244, align 4, !tbaa !85
  %249 = sext i16 %248 to i64
  %250 = getelementptr inbounds %struct.algorithm, ptr %190, i64 0, i32 2, i64 %249
  store i32 %241, ptr %250, align 4, !tbaa !24
  br label %251

251:                                              ; preds = %240, %236, %217
  %252 = phi i16 [ %187, %217 ], [ %187, %236 ], [ %242, %240 ]
  %253 = phi i16 [ %188, %217 ], [ %188, %236 ], [ %243, %240 ]
  %254 = phi ptr [ %189, %217 ], [ %189, %236 ], [ %190, %240 ]
  %255 = phi ptr [ %190, %217 ], [ %190, %236 ], [ %189, %240 ]
  %256 = sub i64 1, %1
  %257 = tail call i32 @exact_log2(i64 noundef %256) #9
  %258 = icmp sgt i32 %257, -1
  %259 = icmp slt i32 %257, %12
  %260 = select i1 %258, i1 %259, i1 false
  br i1 %260, label %261, label %290

261:                                              ; preds = %251
  %262 = zext i8 %13 to i64
  %263 = zext nneg i32 %257 to i64
  %264 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub1_cost, i64 0, i64 %262, i64 %6, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !24
  %266 = trunc i32 %265 to i16
  %267 = sub i16 %252, %266
  store i16 %267, ptr %5, align 2, !tbaa !76
  %268 = sub i16 %253, %266
  %269 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %268, ptr %269, align 2, !tbaa !79
  %270 = lshr i64 %256, %263
  call fastcc void @synth_mult(ptr noundef %255, i64 noundef %270, ptr noundef nonnull %5, i32 noundef %3) #10
  %271 = load i16, ptr %255, align 4, !tbaa !80
  %272 = add i16 %271, %266
  store i16 %272, ptr %255, align 4, !tbaa !80
  %273 = getelementptr inbounds %struct.mult_cost, ptr %255, i64 0, i32 1
  %274 = load i16, ptr %273, align 2, !tbaa !82
  %275 = add i16 %274, %266
  store i16 %275, ptr %273, align 2, !tbaa !82
  %276 = icmp slt i16 %272, %252
  br i1 %276, label %281, label %277

277:                                              ; preds = %261
  %278 = icmp eq i16 %272, %252
  %279 = icmp slt i16 %275, %253
  %280 = select i1 %278, i1 %279, i1 false
  br i1 %280, label %281, label %290

281:                                              ; preds = %277, %261
  %282 = trunc i32 %257 to i8
  %283 = getelementptr inbounds %struct.algorithm, ptr %255, i64 0, i32 1
  %284 = load i16, ptr %283, align 4, !tbaa !85
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds %struct.algorithm, ptr %255, i64 0, i32 3, i64 %285
  store i8 %282, ptr %286, align 1, !tbaa !12
  %287 = load i16, ptr %283, align 4, !tbaa !85
  %288 = sext i16 %287 to i64
  %289 = getelementptr inbounds %struct.algorithm, ptr %255, i64 0, i32 2, i64 %288
  store i32 5, ptr %289, align 4, !tbaa !24
  br label %290

290:                                              ; preds = %277, %281, %251
  %291 = phi i16 [ %272, %281 ], [ %252, %277 ], [ %252, %251 ]
  %292 = phi i16 [ %275, %281 ], [ %253, %277 ], [ %253, %251 ]
  %293 = phi ptr [ %255, %281 ], [ %254, %277 ], [ %254, %251 ]
  %294 = phi ptr [ %254, %281 ], [ %255, %277 ], [ %255, %251 ]
  %295 = icmp eq i8 %186, 0
  br i1 %295, label %296, label %509

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
  br i1 %306, label %307, label %412

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
  br i1 %326, label %357, label %327

327:                                              ; preds = %314
  %328 = zext i8 %13 to i64
  %329 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %328, i64 %6
  %330 = load i32, ptr %329, align 4, !tbaa !24
  %331 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %328, i64 %6, i64 %315
  %332 = load i32, ptr %331, align 4, !tbaa !24
  %333 = add nsw i32 %332, %330
  %334 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %328, i64 %6, i64 %315
  %335 = load i32, ptr %334, align 4, !tbaa !24
  %336 = icmp slt i32 %335, %333
  %337 = select i1 %336, i32 %335, i32 %330
  %338 = tail call i32 @llvm.smin.i32(i32 %335, i32 %333)
  %339 = trunc i32 %338 to i16
  %340 = sub i16 %300, %339
  store i16 %340, ptr %5, align 2, !tbaa !76
  %341 = trunc i32 %337 to i16
  %342 = sub i16 %301, %341
  %343 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %342, ptr %343, align 2, !tbaa !79
  call fastcc void @synth_mult(ptr noundef %303, i64 noundef %319, ptr noundef nonnull %5, i32 noundef %3) #10
  %344 = load i16, ptr %303, align 4, !tbaa !80
  %345 = add i16 %344, %339
  store i16 %345, ptr %303, align 4, !tbaa !80
  %346 = getelementptr inbounds %struct.mult_cost, ptr %303, i64 0, i32 1
  %347 = load i16, ptr %346, align 2, !tbaa !82
  %348 = add i16 %347, %341
  %349 = sext i16 %348 to i32
  %350 = icmp sgt i32 %338, %349
  %351 = select i1 %350, i16 %339, i16 %348
  store i16 %351, ptr %346, align 2, !tbaa !82
  %352 = icmp slt i16 %345, %300
  br i1 %352, label %400, label %353

353:                                              ; preds = %327
  %354 = icmp eq i16 %345, %300
  %355 = icmp slt i16 %351, %301
  %356 = select i1 %354, i1 %355, i1 false
  br i1 %356, label %400, label %412

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
  br i1 %366, label %397, label %367

367:                                              ; preds = %357
  %368 = zext i8 %13 to i64
  %369 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %368, i64 %6
  %370 = load i32, ptr %369, align 4, !tbaa !24
  %371 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %368, i64 %6, i64 %315
  %372 = load i32, ptr %371, align 4, !tbaa !24
  %373 = add nsw i32 %372, %370
  %374 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %368, i64 %6, i64 %315
  %375 = load i32, ptr %374, align 4, !tbaa !24
  %376 = icmp slt i32 %375, %373
  %377 = select i1 %376, i32 %375, i32 %370
  %378 = tail call i32 @llvm.smin.i32(i32 %375, i32 %373)
  %379 = trunc i32 %378 to i16
  %380 = sub i16 %300, %379
  store i16 %380, ptr %5, align 2, !tbaa !76
  %381 = trunc i32 %377 to i16
  %382 = sub i16 %301, %381
  %383 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %382, ptr %383, align 2, !tbaa !79
  call fastcc void @synth_mult(ptr noundef %303, i64 noundef %360, ptr noundef nonnull %5, i32 noundef %3) #10
  %384 = load i16, ptr %303, align 4, !tbaa !80
  %385 = add i16 %384, %379
  store i16 %385, ptr %303, align 4, !tbaa !80
  %386 = getelementptr inbounds %struct.mult_cost, ptr %303, i64 0, i32 1
  %387 = load i16, ptr %386, align 2, !tbaa !82
  %388 = add i16 %387, %381
  %389 = sext i16 %388 to i32
  %390 = icmp sgt i32 %378, %389
  %391 = select i1 %390, i16 %379, i16 %388
  store i16 %391, ptr %386, align 2, !tbaa !82
  %392 = icmp slt i16 %385, %300
  br i1 %392, label %400, label %393

393:                                              ; preds = %367
  %394 = icmp eq i16 %385, %300
  %395 = icmp slt i16 %391, %301
  %396 = select i1 %394, i1 %395, i1 false
  br i1 %396, label %400, label %412

397:                                              ; preds = %357
  %398 = add nsw i64 %315, -1
  %399 = icmp sgt i64 %315, 2
  br i1 %399, label %314, label %412, !llvm.loop !96

400:                                              ; preds = %367, %393, %327, %353
  %401 = phi i32 [ 6, %353 ], [ 6, %327 ], [ 7, %393 ], [ 7, %367 ]
  %402 = phi i16 [ %345, %353 ], [ %345, %327 ], [ %385, %393 ], [ %385, %367 ]
  %403 = phi i16 [ %351, %353 ], [ %351, %327 ], [ %391, %393 ], [ %391, %367 ]
  %404 = trunc i64 %315 to i8
  %405 = getelementptr inbounds %struct.algorithm, ptr %303, i64 0, i32 1
  %406 = load i16, ptr %405, align 4, !tbaa !85
  %407 = sext i16 %406 to i64
  %408 = getelementptr inbounds %struct.algorithm, ptr %303, i64 0, i32 3, i64 %407
  store i8 %404, ptr %408, align 1, !tbaa !12
  %409 = load i16, ptr %405, align 4, !tbaa !85
  %410 = sext i16 %409 to i64
  %411 = getelementptr inbounds %struct.algorithm, ptr %303, i64 0, i32 2, i64 %410
  store i32 %401, ptr %411, align 4, !tbaa !24
  br label %412

412:                                              ; preds = %397, %400, %296, %393, %353
  %413 = phi i16 [ %300, %393 ], [ %300, %353 ], [ %300, %296 ], [ %402, %400 ], [ %300, %397 ]
  %414 = phi i16 [ %301, %393 ], [ %301, %353 ], [ %301, %296 ], [ %403, %400 ], [ %301, %397 ]
  %415 = phi ptr [ %302, %393 ], [ %302, %353 ], [ %302, %296 ], [ %303, %400 ], [ %302, %397 ]
  %416 = phi ptr [ %303, %393 ], [ %303, %353 ], [ %303, %296 ], [ %302, %400 ], [ %303, %397 ]
  br i1 %299, label %417, label %509

417:                                              ; preds = %412
  %418 = and i64 %28, 1
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %509, label %420

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
  br i1 %432, label %433, label %462

433:                                              ; preds = %420
  %434 = zext i8 %13 to i64
  %435 = zext nneg i32 %429 to i64
  %436 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %434, i64 %6, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !24
  %438 = trunc i32 %437 to i16
  %439 = sub i16 %423, %438
  store i16 %439, ptr %5, align 2, !tbaa !76
  %440 = sub i16 %424, %438
  %441 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %440, ptr %441, align 2, !tbaa !79
  %442 = lshr i64 %421, %435
  call fastcc void @synth_mult(ptr noundef %426, i64 noundef %442, ptr noundef nonnull %5, i32 noundef %3) #10
  %443 = load i16, ptr %426, align 4, !tbaa !80
  %444 = add i16 %443, %438
  store i16 %444, ptr %426, align 4, !tbaa !80
  %445 = getelementptr inbounds %struct.mult_cost, ptr %426, i64 0, i32 1
  %446 = load i16, ptr %445, align 2, !tbaa !82
  %447 = add i16 %446, %438
  store i16 %447, ptr %445, align 2, !tbaa !82
  %448 = icmp slt i16 %444, %423
  br i1 %448, label %453, label %449

449:                                              ; preds = %433
  %450 = icmp eq i16 %444, %423
  %451 = icmp slt i16 %447, %424
  %452 = select i1 %450, i1 %451, i1 false
  br i1 %452, label %453, label %462

453:                                              ; preds = %449, %433
  %454 = trunc i32 %429 to i8
  %455 = getelementptr inbounds %struct.algorithm, ptr %426, i64 0, i32 1
  %456 = load i16, ptr %455, align 4, !tbaa !85
  %457 = sext i16 %456 to i64
  %458 = getelementptr inbounds %struct.algorithm, ptr %426, i64 0, i32 3, i64 %457
  store i8 %454, ptr %458, align 1, !tbaa !12
  %459 = load i16, ptr %455, align 4, !tbaa !85
  %460 = sext i16 %459 to i64
  %461 = getelementptr inbounds %struct.algorithm, ptr %426, i64 0, i32 2, i64 %460
  store i32 8, ptr %461, align 4, !tbaa !24
  br label %462

462:                                              ; preds = %449, %453, %420
  %463 = phi i16 [ %444, %453 ], [ %423, %449 ], [ %423, %420 ]
  %464 = phi i16 [ %447, %453 ], [ %424, %449 ], [ %424, %420 ]
  %465 = phi ptr [ %426, %453 ], [ %425, %449 ], [ %425, %420 ]
  %466 = phi ptr [ %425, %453 ], [ %426, %449 ], [ %426, %420 ]
  br i1 %422, label %467, label %509

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
  br i1 %479, label %480, label %509

480:                                              ; preds = %467
  %481 = zext i8 %13 to i64
  %482 = zext nneg i32 %476 to i64
  %483 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %481, i64 %6, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !24
  %485 = trunc i32 %484 to i16
  %486 = sub i16 %469, %485
  store i16 %486, ptr %5, align 2, !tbaa !76
  %487 = sub i16 %470, %485
  %488 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %487, ptr %488, align 2, !tbaa !79
  %489 = lshr i64 %473, %482
  call fastcc void @synth_mult(ptr noundef %472, i64 noundef %489, ptr noundef nonnull %5, i32 noundef %3) #10
  %490 = load i16, ptr %472, align 4, !tbaa !80
  %491 = add i16 %490, %485
  store i16 %491, ptr %472, align 4, !tbaa !80
  %492 = getelementptr inbounds %struct.mult_cost, ptr %472, i64 0, i32 1
  %493 = load i16, ptr %492, align 2, !tbaa !82
  %494 = add i16 %493, %485
  store i16 %494, ptr %492, align 2, !tbaa !82
  %495 = icmp slt i16 %491, %469
  br i1 %495, label %500, label %496

496:                                              ; preds = %480
  %497 = icmp eq i16 %491, %469
  %498 = icmp slt i16 %494, %470
  %499 = select i1 %497, i1 %498, i1 false
  br i1 %499, label %500, label %509

500:                                              ; preds = %496, %480
  %501 = trunc i32 %476 to i8
  %502 = getelementptr inbounds %struct.algorithm, ptr %472, i64 0, i32 1
  %503 = load i16, ptr %502, align 4, !tbaa !85
  %504 = sext i16 %503 to i64
  %505 = getelementptr inbounds %struct.algorithm, ptr %472, i64 0, i32 3, i64 %504
  store i8 %501, ptr %505, align 1, !tbaa !12
  %506 = load i16, ptr %502, align 4, !tbaa !85
  %507 = sext i16 %506 to i64
  %508 = getelementptr inbounds %struct.algorithm, ptr %472, i64 0, i32 2, i64 %507
  store i32 9, ptr %508, align 4, !tbaa !24
  br label %509

509:                                              ; preds = %467, %500, %496, %417, %462, %412, %290, %175
  %510 = phi i8 [ 1, %175 ], [ 1, %290 ], [ 1, %412 ], [ 1, %462 ], [ %468, %500 ], [ %468, %496 ], [ %468, %467 ], [ 0, %417 ]
  %511 = phi i16 [ %176, %175 ], [ %291, %290 ], [ %413, %412 ], [ %463, %462 ], [ %491, %500 ], [ %469, %496 ], [ %469, %467 ], [ %413, %417 ]
  %512 = phi i16 [ %177, %175 ], [ %292, %290 ], [ %414, %412 ], [ %464, %462 ], [ %494, %500 ], [ %470, %496 ], [ %470, %467 ], [ %414, %417 ]
  %513 = phi ptr [ %178, %175 ], [ %293, %290 ], [ %415, %412 ], [ %465, %462 ], [ %472, %500 ], [ %471, %496 ], [ %471, %467 ], [ %415, %417 ]
  %514 = load i16, ptr %2, align 2, !tbaa !76
  %515 = icmp slt i16 %511, %514
  br i1 %515, label %527, label %516

516:                                              ; preds = %509
  %517 = icmp eq i16 %511, %514
  br i1 %517, label %518, label %521

518:                                              ; preds = %516
  %519 = load i16, ptr %14, align 2, !tbaa !79
  %520 = icmp slt i16 %512, %519
  br i1 %520, label %527, label %521

521:                                              ; preds = %518, %516
  store i64 %28, ptr %57, align 8, !tbaa !88
  %522 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 1
  store i32 %3, ptr %522, align 8, !tbaa !90
  %523 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 4
  store i8 %13, ptr %523, align 4, !tbaa !91
  %524 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 2
  store i32 10, ptr %524, align 4, !tbaa !92
  %525 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3
  %526 = load i32, ptr %2, align 2
  store i32 %526, ptr %525, align 8
  br label %555

527:                                              ; preds = %518, %509
  %528 = icmp eq i8 %510, 0
  br i1 %528, label %532, label %529

529:                                              ; preds = %527
  %530 = getelementptr inbounds %struct.algorithm, ptr %513, i64 0, i32 1
  %531 = load i16, ptr %530, align 4, !tbaa !85
  br label %543

532:                                              ; preds = %527
  store i64 %28, ptr %57, align 8, !tbaa !88
  %533 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 1
  store i32 %3, ptr %533, align 8, !tbaa !90
  %534 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 4
  store i8 %13, ptr %534, align 4, !tbaa !91
  %535 = getelementptr inbounds %struct.algorithm, ptr %513, i64 0, i32 1
  %536 = load i16, ptr %535, align 4, !tbaa !85
  %537 = sext i16 %536 to i64
  %538 = getelementptr inbounds %struct.algorithm, ptr %513, i64 0, i32 2, i64 %537
  %539 = load i32, ptr %538, align 4, !tbaa !24
  %540 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 2
  store i32 %539, ptr %540, align 4, !tbaa !92
  %541 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3
  store i16 %511, ptr %541, align 8, !tbaa !93
  %542 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %56, i32 3, i32 1
  store i16 %512, ptr %542, align 2, !tbaa !94
  br label %543

543:                                              ; preds = %529, %532
  %544 = phi i16 [ %531, %529 ], [ %536, %532 ]
  %545 = icmp eq i16 %544, 32
  br i1 %545, label %555, label %546

546:                                              ; preds = %543
  %547 = add i16 %544, 1
  %548 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 1
  store i16 %547, ptr %548, align 4, !tbaa !85
  store i16 %511, ptr %0, align 4, !tbaa.struct !97
  store i16 %512, ptr %15, align 2, !tbaa.struct !98
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
define dso_local i32 @ceil_log2(i64 noundef %0) local_unnamed_addr #0 {
  %2 = add i64 %0, -1
  %3 = tail call i32 @floor_log2(i64 noundef %2) #9
  %4 = add nsw i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_mult_highpart_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i32 %5, 0
  %8 = select i1 %7, i32 50, i32 49
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !12
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = add nsw i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %15) #9
  %17 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %2, ptr noundef %16, ptr noundef null, i32 noundef 0) #10
  %18 = tail call ptr @expand_and(i32 noundef %0, ptr noundef %17, ptr noundef %3, ptr noundef null) #10
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %8, i32 noundef %0, ptr noundef %1, ptr noundef %18) #9
  %20 = tail call ptr @force_operand(ptr noundef %19, ptr noundef %1) #9
  %21 = load i8, ptr %10, align 1, !tbaa !12
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
define dso_local ptr @expand_and(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 16711680
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = tail call ptr @simplify_binary_operation(i32 noundef 61, i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4, %8, %12
  %16 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 3) #9
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %16, %15 ], [ %13, %12 ]
  %19 = icmp eq ptr %3, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = icmp eq ptr %18, %3
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = tail call ptr @emit_move_insn(ptr noundef nonnull %3, ptr noundef %18) #9
  br label %24

24:                                               ; preds = %17, %20, %22
  %25 = phi ptr [ %3, %22 ], [ %3, %20 ], [ %18, %17 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_divmod(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
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
  br i1 %20, label %21, label %43

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !12
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = zext i32 %2 to i64
  %27 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !87
  %29 = and i64 %28, %23
  %30 = tail call i64 @llvm.ctpop.i64(i64 %29), !range !74
  %31 = icmp ult i64 %30, 2
  br label %40

32:                                               ; preds = %21
  %33 = tail call i64 @llvm.ctpop.i64(i64 %23), !range !74
  %34 = icmp ult i64 %33, 2
  br i1 %34, label %40, label %35

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
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  %46 = icmp eq ptr %45, %4
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = icmp eq i32 %0, 0
  %49 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %50 = select i1 %48, ptr %3, ptr %49
  br label %1115

51:                                               ; preds = %43
  %52 = icmp eq i32 %6, 0
  %53 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %54 = icmp eq ptr %53, %4
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = icmp eq i32 %0, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  br label %1115

60:                                               ; preds = %56
  %61 = load i32, ptr @flag_trapv, align 4, !tbaa !24
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = zext i32 %2 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !12
  %67 = freeze i8 %66
  %68 = icmp eq i8 %67, 2
  %69 = select i1 %68, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64)
  br label %70

70:                                               ; preds = %63, %60
  %71 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), %60 ], [ %69, %63 ]
  %72 = tail call ptr @expand_unop(i32 noundef %2, ptr noundef nonnull %71, ptr noundef %3, ptr noundef %5, i32 noundef 0) #9
  br label %1115

73:                                               ; preds = %51
  %74 = icmp eq ptr %5, null
  br i1 %74, label %105, label %75

75:                                               ; preds = %73
  %76 = load i32, ptr %5, align 8
  %77 = and i32 %76, -2147418113
  %78 = icmp eq i32 %77, -2147483611
  br i1 %78, label %104, label %79

79:                                               ; preds = %75
  %80 = icmp ne i32 %0, 0
  %81 = or i1 %80, %20
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %5, ptr noundef %3) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load i32, ptr %3, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 43
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, ptr %5, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 43
  br i1 %92, label %104, label %93

93:                                               ; preds = %79, %89, %85
  %94 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, ptr %4, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 43
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32, ptr %5, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 43
  br i1 %103, label %104, label %105

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
  %113 = select i1 %110, ptr %112, ptr %111
  %114 = select i1 %52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35)
  %115 = select i1 %110, ptr %114, ptr %111
  %116 = icmp eq i32 %2, 0
  br i1 %116, label %146, label %117

117:                                              ; preds = %105, %127
  %118 = phi i32 [ %131, %127 ], [ %2, %105 ]
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.optab_d, ptr %113, i64 0, i32 4, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !32
  %122 = icmp eq i32 %121, 2956
  br i1 %122, label %123, label %146

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.optab_d, ptr %115, i64 0, i32 4, i64 %119
  %125 = load i32, ptr %124, align 4, !tbaa !32
  %126 = icmp eq i32 %125, 2956
  br i1 %126, label %127, label %146

127:                                              ; preds = %123
  %128 = zext i32 %118 to i64
  %129 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !12
  %131 = zext i8 %130 to i32
  %132 = icmp eq i8 %130, 0
  br i1 %132, label %133, label %117, !llvm.loop !99

133:                                              ; preds = %127, %140
  %134 = phi i32 [ %144, %140 ], [ %2, %127 ]
  %135 = tail call ptr @optab_libfunc(ptr noundef nonnull %113, i32 noundef %134) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = tail call ptr @optab_libfunc(ptr noundef nonnull %115, i32 noundef %134) #9
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = zext i32 %134 to i64
  %142 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !12
  %144 = zext i8 %143 to i32
  %145 = icmp eq i8 %143, 0
  br i1 %145, label %146, label %133, !llvm.loop !100

146:                                              ; preds = %123, %117, %140, %133, %137, %105
  %147 = phi i32 [ 0, %105 ], [ %2, %140 ], [ %134, %133 ], [ %134, %137 ], [ %118, %117 ], [ %118, %123 ]
  %148 = icmp eq ptr %106, null
  br i1 %148, label %154, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %106, align 8
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = icmp eq i32 %152, %147
  br i1 %153, label %156, label %154

154:                                              ; preds = %149, %146
  %155 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %156

156:                                              ; preds = %149, %154
  %157 = phi ptr [ %155, %154 ], [ %106, %149 ]
  %158 = zext i32 %147 to i64
  %159 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !12
  %161 = zext i8 %160 to i32
  %162 = shl nuw nsw i32 %161, 3
  %163 = zext i8 %17 to i64
  %164 = getelementptr inbounds [2 x [87 x i32]], ptr @udiv_cost, i64 0, i64 %163, i64 %158
  %165 = getelementptr inbounds [2 x [87 x i32]], ptr @sdiv_cost, i64 0, i64 %163, i64 %158
  %166 = select i1 %52, ptr %165, ptr %164
  %167 = load i32, ptr %166, align 4, !tbaa !24
  %168 = icmp ne i32 %0, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %156
  %170 = load i64, ptr @expand_divmod.last_div_const, align 8, !tbaa !87
  %171 = icmp ne i64 %170, 0
  %172 = and i1 %20, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %175 = load i64, ptr %174, align 8, !tbaa !12
  %176 = icmp eq i64 %175, %170
  br i1 %176, label %188, label %177

177:                                              ; preds = %173, %169
  %178 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_cost, i64 0, i64 %163, i64 %158
  %179 = load i32, ptr %178, align 4, !tbaa !24
  %180 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %163, i64 %158
  %181 = load i32, ptr %180, align 4, !tbaa !24
  %182 = add i32 %179, %181
  %183 = sub i32 %167, %182
  br label %188

184:                                              ; preds = %156
  br i1 %20, label %185, label %188

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %187 = load i64, ptr %186, align 8, !tbaa !12
  br label %188

188:                                              ; preds = %173, %177, %184, %185
  %189 = phi i32 [ %167, %185 ], [ %167, %184 ], [ %183, %177 ], [ %167, %173 ]
  %190 = phi i64 [ %187, %185 ], [ 0, %184 ], [ 0, %177 ], [ 0, %173 ]
  store i64 %190, ptr @expand_divmod.last_div_const, align 8, !tbaa !87
  %191 = icmp eq i32 %147, %2
  br i1 %191, label %213, label %192

192:                                              ; preds = %188
  %193 = tail call ptr @convert_modes(i32 noundef %147, i32 noundef %2, ptr noundef %3, i32 noundef %6) #9
  %194 = tail call ptr @convert_modes(i32 noundef %147, i32 noundef %2, ptr noundef nonnull %4, i32 noundef %6) #9
  %195 = load i32, ptr %194, align 8
  %196 = and i32 %195, 65535
  %197 = icmp eq i32 %196, 30
  br i1 %197, label %198, label %210

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1
  %200 = load i64, ptr %199, align 8, !tbaa !12
  %201 = tail call i64 @llvm.ctpop.i64(i64 %200), !range !74
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
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = tail call ptr @force_reg(i32 noundef %147, ptr noundef nonnull %217) #9
  br label %223

223:                                              ; preds = %221, %213
  %224 = phi ptr [ %222, %221 ], [ %217, %213 ]
  %225 = load i32, ptr %216, align 8
  %226 = and i32 %225, 134283263
  %227 = icmp eq i32 %226, 134217771
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = tail call ptr @force_reg(i32 noundef %147, ptr noundef nonnull %216) #9
  br label %230

230:                                              ; preds = %228, %223
  %231 = phi ptr [ %229, %228 ], [ %216, %223 ]
  %232 = or i1 %168, %215
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = tail call ptr @force_reg(i32 noundef %147, ptr noundef %224) #9
  br label %235

235:                                              ; preds = %230, %233
  %236 = phi ptr [ %234, %233 ], [ %224, %230 ]
  %237 = tail call ptr @get_last_insn() #9
  br i1 %52, label %247, label %238

238:                                              ; preds = %235
  %239 = icmp eq i32 %1, 69
  %240 = select i1 %239, i32 67, i32 %1
  %241 = icmp eq i32 %240, 73
  %242 = select i1 %241, i32 71, i32 %240
  %243 = icmp eq i32 %242, 76
  %244 = icmp ne i32 %214, 0
  %245 = select i1 %243, i1 %244, i1 false
  %246 = select i1 %245, i32 67, i32 %242
  br label %247

247:                                              ; preds = %238, %235
  %248 = phi i32 [ %246, %238 ], [ %1, %235 ]
  %249 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %250 = icmp eq ptr %231, %249
  br i1 %250, label %1037, label %251

251:                                              ; preds = %247
  switch i32 %248, label %1031 [
    i32 71, label %252
    i32 67, label %252
    i32 69, label %602
    i32 73, label %602
    i32 68, label %765
    i32 72, label %765
    i32 76, label %961
    i32 70, label %982
    i32 74, label %982
  ]

252:                                              ; preds = %251, %251
  br i1 %215, label %253, label %600

253:                                              ; preds = %252
  %254 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  br i1 %52, label %385, label %255

255:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %256 = load i64, ptr %254, align 8, !tbaa !12
  %257 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %158
  %258 = load i64, ptr %257, align 8, !tbaa !87
  %259 = and i64 %258, %256
  %260 = tail call i64 @llvm.ctpop.i64(i64 %259), !range !74
  %261 = icmp ult i64 %260, 2
  br i1 %261, label %262, label %275

262:                                              ; preds = %255
  %263 = tail call i32 @floor_log2(i64 noundef %259) #9
  br i1 %168, label %264, label %271

264:                                              ; preds = %262
  %265 = zext nneg i32 %263 to i64
  %266 = shl nsw i64 -1, %265
  %267 = xor i64 %266, -1
  %268 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %267) #9
  %269 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %236, ptr noundef %268, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %382

271:                                              ; preds = %264, %262
  %272 = sext i32 %263 to i64
  %273 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %272) #9
  %274 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %273, ptr noundef %157, i32 noundef 1) #10
  br label %353

275:                                              ; preds = %255
  %276 = icmp ult i8 %160, 9
  br i1 %276, label %277, label %379

277:                                              ; preds = %275
  %278 = add nsw i32 %162, -1
  %279 = zext nneg i32 %278 to i64
  %280 = lshr i64 %259, %279
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %277
  %283 = tail call ptr @emit_store_flag_force(ptr noundef %157, i32 noundef 86, ptr noundef %236, ptr noundef nonnull %231, i32 noundef %147, i32 noundef 1, i32 noundef 1) #10
  br label %353

284:                                              ; preds = %277
  %285 = call fastcc i64 @choose_multiplier(i64 noundef %259, i32 noundef %162, i32 noundef %162, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %286 = icmp ne i64 %285, 0
  %287 = and i64 %259, 1
  %288 = icmp eq i64 %287, 0
  %289 = and i1 %288, %286
  br i1 %289, label %290, label %300

290:                                              ; preds = %284
  %291 = sub i64 0, %259
  %292 = and i64 %259, %291
  %293 = tail call i32 @floor_log2(i64 noundef %292) #9
  %294 = zext nneg i32 %293 to i64
  %295 = lshr i64 %259, %294
  %296 = sub nsw i32 %162, %293
  %297 = call fastcc i64 @choose_multiplier(i64 noundef %295, i32 noundef %162, i32 noundef %296, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %330, label %299

299:                                              ; preds = %290
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4096, ptr noundef nonnull @.str.1) #9
  br label %302

300:                                              ; preds = %284
  %301 = icmp eq i64 %285, 0
  br i1 %301, label %330, label %302

302:                                              ; preds = %299, %300
  %303 = load i32, ptr %8, align 4, !tbaa !24
  %304 = icmp sgt i32 %303, 32
  br i1 %304, label %381, label %305

305:                                              ; preds = %302
  %306 = add nsw i32 %303, -1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !24
  %310 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 1
  %311 = load i32, ptr %310, align 4, !tbaa !24
  %312 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %163, i64 %158
  %313 = load i32, ptr %312, align 4, !tbaa !24
  %314 = load ptr, ptr %10, align 8, !tbaa !6
  %315 = add i32 %309, %311
  %316 = shl i32 %313, 1
  %317 = add i32 %315, %316
  %318 = sub i32 %189, %317
  %319 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %147, ptr noundef %236, ptr noundef %314, i32 noundef 1, i32 noundef %318) #10
  %320 = icmp eq ptr %319, null
  br i1 %320, label %381, label %321

321:                                              ; preds = %305
  %322 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %236, ptr noundef nonnull %319) #9
  %323 = tail call ptr @force_operand(ptr noundef %322, ptr noundef null) #9
  %324 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 1) #9
  %325 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %323, ptr noundef %324, ptr noundef null, i32 noundef 1) #10
  %326 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef nonnull %319, ptr noundef %325) #9
  %327 = tail call ptr @force_operand(ptr noundef %326, ptr noundef null) #9
  %328 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %307) #9
  %329 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %327, ptr noundef %328, ptr noundef %157, i32 noundef 1) #10
  br label %353

330:                                              ; preds = %290, %300
  %331 = phi i32 [ 0, %300 ], [ %293, %290 ]
  %332 = icmp sgt i32 %331, 31
  %333 = load i32, ptr %8, align 4
  %334 = icmp sgt i32 %333, 31
  %335 = select i1 %332, i1 true, i1 %334
  br i1 %335, label %381, label %336

336:                                              ; preds = %330
  %337 = sext i32 %331 to i64
  %338 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %337) #9
  %339 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %338, ptr noundef null, i32 noundef 1) #10
  %340 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %337
  %341 = load i32, ptr %340, align 4, !tbaa !24
  %342 = sext i32 %333 to i64
  %343 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !24
  %345 = load ptr, ptr %10, align 8, !tbaa !6
  %346 = add i32 %341, %344
  %347 = sub i32 %189, %346
  %348 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %147, ptr noundef %339, ptr noundef %345, i32 noundef 1, i32 noundef %347) #10
  %349 = icmp eq ptr %348, null
  br i1 %349, label %381, label %350

350:                                              ; preds = %336
  %351 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %342) #9
  %352 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef nonnull %348, ptr noundef %351, ptr noundef %157, i32 noundef 1) #10
  br label %353

353:                                              ; preds = %350, %321, %282, %271
  %354 = phi ptr [ %274, %271 ], [ %283, %282 ], [ %329, %321 ], [ %352, %350 ]
  %355 = tail call ptr @get_last_insn() #9
  %356 = icmp eq ptr %355, %237
  br i1 %356, label %379, label %357

357:                                              ; preds = %353
  %358 = load i32, ptr %355, align 8
  %359 = and i32 %358, 65535
  %360 = add nsw i32 %359, -7
  %361 = icmp ult i32 %360, 4
  br i1 %361, label %362, label %379

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.rtx_def, ptr %355, i64 1
  %364 = load ptr, ptr %363, align 8, !tbaa !12
  %365 = load i32, ptr %364, align 8
  %366 = and i32 %365, 65535
  %367 = icmp eq i32 %366, 23
  br i1 %367, label %371, label %368

368:                                              ; preds = %362
  %369 = tail call ptr @single_set_2(ptr noundef nonnull %355, ptr noundef nonnull %364) #9
  %370 = icmp eq ptr %369, null
  br i1 %370, label %379, label %371

371:                                              ; preds = %362, %368
  %372 = phi ptr [ %369, %368 ], [ %364, %362 ]
  %373 = getelementptr inbounds %struct.rtx_def, ptr %372, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !12
  %375 = icmp eq ptr %374, %354
  br i1 %375, label %376, label %379

376:                                              ; preds = %371
  %377 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %147, ptr noundef %236, ptr noundef nonnull %231) #9
  %378 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %355, i32 noundef 4, ptr noundef %377) #9
  br label %379

379:                                              ; preds = %275, %376, %371, %368, %353, %357
  %380 = phi ptr [ %354, %353 ], [ %354, %368 ], [ %354, %371 ], [ %354, %376 ], [ null, %275 ], [ %354, %357 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %1032

381:                                              ; preds = %302, %305, %330, %336
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %600

382:                                              ; preds = %264
  %383 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %384 = tail call ptr %383(i32 noundef %2, ptr noundef nonnull %269) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %1115

385:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  %386 = load i64, ptr %254, align 8, !tbaa !12
  %387 = tail call i64 @llvm.abs.i64(i64 %386, i1 false)
  %388 = icmp slt i64 %386, 0
  %389 = select i1 %168, i1 %388, i1 false
  br i1 %389, label %390, label %392

390:                                              ; preds = %385
  %391 = tail call ptr @gen_int_mode(i64 noundef %387, i32 noundef %147) #9
  br label %392

392:                                              ; preds = %390, %385
  %393 = phi i64 [ %387, %390 ], [ %386, %385 ]
  %394 = phi ptr [ %391, %390 ], [ %231, %385 ]
  switch i64 %393, label %397 [
    i64 1, label %568
    i64 -1, label %395
  ]

395:                                              ; preds = %392
  %396 = tail call ptr @expand_unop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %236, ptr noundef %157, i32 noundef 0) #9
  br label %568

397:                                              ; preds = %392
  %398 = icmp ult i8 %160, 9
  br i1 %398, label %399, label %407

399:                                              ; preds = %397
  %400 = add nsw i32 %162, -1
  %401 = zext nneg i32 %400 to i64
  %402 = shl nuw i64 1, %401
  %403 = icmp eq i64 %387, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %399
  %405 = tail call ptr @emit_store_flag(ptr noundef %157, i32 noundef 81, ptr noundef %236, ptr noundef %394, i32 noundef %147, i32 noundef 1, i32 noundef 1) #10
  %406 = icmp eq ptr %405, null
  br i1 %406, label %596, label %568

407:                                              ; preds = %399, %397
  %408 = tail call i64 @llvm.ctpop.i64(i64 %393), !range !74
  %409 = icmp ult i64 %408, 2
  br i1 %409, label %410, label %429

410:                                              ; preds = %407
  br i1 %168, label %411, label %415

411:                                              ; preds = %410
  %412 = getelementptr inbounds [2 x [87 x i8]], ptr @smod_pow2_cheap, i64 0, i64 %163, i64 %158
  %413 = load i8, ptr %412, align 1, !tbaa !12
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %432, label %419

415:                                              ; preds = %410
  %416 = getelementptr inbounds [2 x [87 x i8]], ptr @sdiv_pow2_cheap, i64 0, i64 %163, i64 %158
  %417 = load i8, ptr %416, align 1, !tbaa !12
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %435, label %419

419:                                              ; preds = %415, %411
  %420 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), %415 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), %411 ]
  %421 = sext i32 %147 to i64
  %422 = getelementptr inbounds %struct.optab_d, ptr %420, i64 0, i32 4, i64 %421
  %423 = load i32, ptr %422, align 4, !tbaa !32
  %424 = icmp eq i32 %423, 2956
  br i1 %424, label %425, label %568

425:                                              ; preds = %419
  %426 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 %421
  %427 = load i32, ptr %426, align 4, !tbaa !32
  %428 = icmp eq i32 %427, 2956
  br i1 %428, label %429, label %568

429:                                              ; preds = %425, %407
  %430 = tail call i64 @llvm.ctpop.i64(i64 %387), !range !74
  %431 = icmp ult i64 %430, 2
  br i1 %431, label %438, label %494

432:                                              ; preds = %411
  %433 = tail call i64 @llvm.ctpop.i64(i64 %387), !range !74
  %434 = icmp ult i64 %433, 2
  br i1 %434, label %439, label %494

435:                                              ; preds = %415
  %436 = tail call i64 @llvm.ctpop.i64(i64 %387), !range !74
  %437 = icmp ult i64 %436, 2
  br i1 %437, label %442, label %494

438:                                              ; preds = %429
  br i1 %168, label %439, label %442

439:                                              ; preds = %432, %438
  %440 = tail call fastcc ptr @expand_smod_pow2(i32 noundef %147, ptr noundef %236, i64 noundef %393) #10
  %441 = icmp eq ptr %440, null
  br i1 %441, label %442, label %597

442:                                              ; preds = %435, %439, %438
  %443 = getelementptr inbounds [2 x [87 x i8]], ptr @sdiv_pow2_cheap, i64 0, i64 %163, i64 %158
  %444 = load i8, ptr %443, align 1, !tbaa !12
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %458, label %446

446:                                              ; preds = %442
  %447 = sext i32 %147 to i64
  %448 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !32
  %450 = icmp eq i32 %449, 2956
  br i1 %450, label %451, label %455

451:                                              ; preds = %446
  %452 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 %447
  %453 = load i32, ptr %452, align 4, !tbaa !32
  %454 = icmp eq i32 %453, 2956
  br i1 %454, label %458, label %455

455:                                              ; preds = %451, %446
  %456 = tail call ptr @gen_int_mode(i64 noundef %387, i32 noundef %147) #9
  %457 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef %147, ptr noundef %236, ptr noundef %456, ptr noundef null, i32 noundef 0) #10
  br label %460

458:                                              ; preds = %451, %442
  %459 = tail call fastcc ptr @expand_sdiv_pow2(i32 noundef %147, ptr noundef %236, i64 noundef %387) #10
  br label %460

460:                                              ; preds = %458, %455
  %461 = phi ptr [ %457, %455 ], [ %459, %458 ]
  %462 = icmp slt i64 %393, 0
  br i1 %462, label %463, label %568

463:                                              ; preds = %460
  %464 = tail call ptr @get_last_insn() #9
  %465 = icmp eq ptr %464, %237
  br i1 %465, label %492, label %466

466:                                              ; preds = %463
  %467 = load i32, ptr %464, align 8
  %468 = and i32 %467, 65535
  %469 = add nsw i32 %468, -7
  %470 = icmp ult i32 %469, 4
  br i1 %470, label %471, label %492

471:                                              ; preds = %466
  %472 = getelementptr inbounds %struct.rtx_def, ptr %464, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !12
  %474 = load i32, ptr %473, align 8
  %475 = and i32 %474, 65535
  %476 = icmp eq i32 %475, 23
  br i1 %476, label %480, label %477

477:                                              ; preds = %471
  %478 = tail call ptr @single_set_2(ptr noundef nonnull %464, ptr noundef nonnull %473) #9
  %479 = icmp eq ptr %478, null
  br i1 %479, label %492, label %480

480:                                              ; preds = %471, %477
  %481 = phi ptr [ %478, %477 ], [ %473, %471 ]
  %482 = getelementptr inbounds %struct.rtx_def, ptr %481, i64 0, i32 1
  %483 = load ptr, ptr %482, align 8, !tbaa !12
  %484 = icmp eq ptr %483, %461
  %485 = icmp sgt i64 %387, -1
  %486 = select i1 %484, i1 %485, i1 false
  br i1 %486, label %487, label %492

487:                                              ; preds = %480
  %488 = tail call i64 @trunc_int_for_mode(i64 noundef %387, i32 noundef %147) #9
  %489 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %488) #9
  %490 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %147, ptr noundef %236, ptr noundef %489) #9
  %491 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %464, i32 noundef 4, ptr noundef %490) #9
  br label %492

492:                                              ; preds = %466, %487, %480, %477, %463
  %493 = tail call ptr @expand_unop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %461, ptr noundef %461, i32 noundef 0) #9
  br label %568

494:                                              ; preds = %432, %435, %429
  br i1 %398, label %495, label %594

495:                                              ; preds = %494
  %496 = add nsw i32 %162, -1
  %497 = call fastcc i64 @choose_multiplier(i64 noundef %387, i32 noundef %162, i32 noundef %496, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %11) #10
  %498 = load ptr, ptr %13, align 8, !tbaa !6
  %499 = getelementptr inbounds %struct.rtx_def, ptr %498, i64 0, i32 1
  %500 = load i64, ptr %499, align 8, !tbaa !12
  %501 = zext i32 %496 to i64
  %502 = lshr i64 %500, %501
  %503 = icmp eq i64 %502, 0
  %504 = load i32, ptr %12, align 4, !tbaa !24
  %505 = icmp sgt i32 %504, 31
  %506 = icmp ugt i8 %160, 4
  %507 = select i1 %505, i1 true, i1 %506
  br i1 %503, label %508, label %535

508:                                              ; preds = %495
  br i1 %507, label %596, label %509

509:                                              ; preds = %508
  %510 = sext i32 %504 to i64
  %511 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !24
  %513 = sext i32 %496 to i64
  %514 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %513
  %515 = load i32, ptr %514, align 4, !tbaa !24
  %516 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %163, i64 %158
  %517 = load i32, ptr %516, align 4, !tbaa !24
  %518 = add i32 %512, %515
  %519 = add i32 %518, %517
  %520 = sub i32 %189, %519
  %521 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %147, ptr noundef %236, ptr noundef nonnull %498, i32 noundef 0, i32 noundef %520) #10
  %522 = icmp eq ptr %521, null
  br i1 %522, label %596, label %523

523:                                              ; preds = %509
  %524 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %510) #9
  %525 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef nonnull %521, ptr noundef %524, ptr noundef null, i32 noundef 0) #10
  %526 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %513) #9
  %527 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %526, ptr noundef null, i32 noundef 0) #10
  %528 = icmp slt i64 %393, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %523
  %530 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %527, ptr noundef %525) #9
  %531 = tail call ptr @force_operand(ptr noundef %530, ptr noundef %157) #9
  br label %568

532:                                              ; preds = %523
  %533 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %525, ptr noundef %527) #9
  %534 = tail call ptr @force_operand(ptr noundef %533, ptr noundef %157) #9
  br label %568

535:                                              ; preds = %495
  br i1 %507, label %596, label %536

536:                                              ; preds = %535
  %537 = shl nsw i64 -1, %501
  %538 = or i64 %500, %537
  %539 = tail call ptr @gen_int_mode(i64 noundef %538, i32 noundef %147) #9
  %540 = sext i32 %504 to i64
  %541 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %540
  %542 = load i32, ptr %541, align 4, !tbaa !24
  %543 = sext i32 %496 to i64
  %544 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %543
  %545 = load i32, ptr %544, align 4, !tbaa !24
  %546 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %163, i64 %158
  %547 = load i32, ptr %546, align 4, !tbaa !24
  %548 = add i32 %542, %545
  %549 = shl i32 %547, 1
  %550 = add i32 %548, %549
  %551 = sub i32 %189, %550
  %552 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %147, ptr noundef %236, ptr noundef %539, i32 noundef 0, i32 noundef %551) #10
  %553 = icmp eq ptr %552, null
  br i1 %553, label %596, label %554

554:                                              ; preds = %536
  %555 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef nonnull %552, ptr noundef %236) #9
  %556 = tail call ptr @force_operand(ptr noundef %555, ptr noundef null) #9
  %557 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %540) #9
  %558 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %556, ptr noundef %557, ptr noundef null, i32 noundef 0) #10
  %559 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %543) #9
  %560 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %559, ptr noundef null, i32 noundef 0) #10
  %561 = icmp slt i64 %393, 0
  br i1 %561, label %562, label %565

562:                                              ; preds = %554
  %563 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %560, ptr noundef %558) #9
  %564 = tail call ptr @force_operand(ptr noundef %563, ptr noundef %157) #9
  br label %568

565:                                              ; preds = %554
  %566 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %558, ptr noundef %560) #9
  %567 = tail call ptr @force_operand(ptr noundef %566, ptr noundef %157) #9
  br label %568

568:                                              ; preds = %562, %565, %529, %532, %392, %395, %425, %419, %460, %492, %404
  %569 = phi ptr [ %396, %395 ], [ %405, %404 ], [ null, %419 ], [ null, %425 ], [ %493, %492 ], [ %461, %460 ], [ %236, %392 ], [ %534, %532 ], [ %531, %529 ], [ %567, %565 ], [ %564, %562 ]
  %570 = tail call ptr @get_last_insn() #9
  %571 = icmp eq ptr %570, %237
  br i1 %571, label %594, label %572

572:                                              ; preds = %568
  %573 = load i32, ptr %570, align 8
  %574 = and i32 %573, 65535
  %575 = add nsw i32 %574, -7
  %576 = icmp ult i32 %575, 4
  br i1 %576, label %577, label %594

577:                                              ; preds = %572
  %578 = getelementptr inbounds %struct.rtx_def, ptr %570, i64 1
  %579 = load ptr, ptr %578, align 8, !tbaa !12
  %580 = load i32, ptr %579, align 8
  %581 = and i32 %580, 65535
  %582 = icmp eq i32 %581, 23
  br i1 %582, label %586, label %583

583:                                              ; preds = %577
  %584 = tail call ptr @single_set_2(ptr noundef nonnull %570, ptr noundef nonnull %579) #9
  %585 = icmp eq ptr %584, null
  br i1 %585, label %594, label %586

586:                                              ; preds = %577, %583
  %587 = phi ptr [ %584, %583 ], [ %579, %577 ]
  %588 = getelementptr inbounds %struct.rtx_def, ptr %587, i64 0, i32 1
  %589 = load ptr, ptr %588, align 8, !tbaa !12
  %590 = icmp eq ptr %589, %569
  br i1 %590, label %591, label %594

591:                                              ; preds = %586
  %592 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %147, ptr noundef %236, ptr noundef %394) #9
  %593 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %570, i32 noundef 4, ptr noundef %592) #9
  br label %594

594:                                              ; preds = %494, %591, %586, %583, %568, %572
  %595 = phi ptr [ %569, %568 ], [ %569, %583 ], [ %569, %586 ], [ %569, %591 ], [ null, %494 ], [ %569, %572 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %1032

596:                                              ; preds = %404, %508, %509, %535, %536
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %600

597:                                              ; preds = %439
  %598 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %599 = tail call ptr %598(i32 noundef %2, ptr noundef nonnull %440) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %1115

600:                                              ; preds = %596, %381, %252
  %601 = phi ptr [ %231, %252 ], [ %231, %381 ], [ %394, %596 ]
  tail call void @delete_insns_since(ptr noundef %237) #9
  br label %1037

602:                                              ; preds = %251, %251
  %603 = icmp ult i8 %160, 9
  %604 = select i1 %215, i1 %603, i1 false
  br i1 %604, label %605, label %682

605:                                              ; preds = %602
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  %606 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %607 = load i64, ptr %606, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  %608 = icmp sgt i64 %607, 0
  br i1 %608, label %609, label %658

609:                                              ; preds = %605
  %610 = tail call i64 @llvm.ctpop.i64(i64 %607), !range !101
  %611 = icmp ult i64 %610, 2
  br i1 %611, label %612, label %625

612:                                              ; preds = %609
  %613 = tail call i32 @floor_log2(i64 noundef %607) #9
  br i1 %168, label %614, label %621

614:                                              ; preds = %612
  %615 = zext nneg i32 %613 to i64
  %616 = shl nsw i64 -1, %615
  %617 = xor i64 %616, -1
  %618 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %617) #9
  %619 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %236, ptr noundef %618, ptr noundef null, i32 noundef 0, i32 noundef 3) #9
  %620 = icmp eq ptr %619, null
  br i1 %620, label %621, label %675

621:                                              ; preds = %614, %612
  %622 = sext i32 %613 to i64
  %623 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %622) #9
  %624 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %623, ptr noundef %157, i32 noundef 0) #10
  br label %679

625:                                              ; preds = %609
  %626 = add nsw i32 %162, -1
  %627 = call fastcc i64 @choose_multiplier(i64 noundef %607, i32 noundef %162, i32 noundef %626, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef nonnull %14) #10
  %628 = icmp eq i64 %627, 0
  br i1 %628, label %630, label %629

629:                                              ; preds = %625
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4398, ptr noundef nonnull @.str.1) #9
  br label %630

630:                                              ; preds = %625, %629
  %631 = load i32, ptr %15, align 4, !tbaa !24
  %632 = icmp slt i32 %631, 32
  %633 = icmp ult i8 %160, 5
  %634 = select i1 %632, i1 %633, i1 false
  br i1 %634, label %635, label %678

635:                                              ; preds = %630
  %636 = sext i32 %626 to i64
  %637 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %636) #9
  %638 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %637, ptr noundef null, i32 noundef 0) #10
  %639 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %236, ptr noundef %638, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %640 = sext i32 %631 to i64
  %641 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %640
  %642 = load i32, ptr %641, align 4, !tbaa !24
  %643 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %163, i64 %158, i64 %636
  %644 = load i32, ptr %643, align 4, !tbaa !24
  %645 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %163, i64 %158
  %646 = load i32, ptr %645, align 4, !tbaa !24
  %647 = load ptr, ptr %16, align 8, !tbaa !6
  %648 = add i32 %642, %644
  %649 = shl i32 %646, 1
  %650 = add i32 %648, %649
  %651 = sub i32 %189, %650
  %652 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %147, ptr noundef %639, ptr noundef %647, i32 noundef 1, i32 noundef %651) #10
  %653 = icmp eq ptr %652, null
  br i1 %653, label %678, label %654

654:                                              ; preds = %635
  %655 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %640) #9
  %656 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef nonnull %652, ptr noundef %655, ptr noundef null, i32 noundef 1) #10
  %657 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %656, ptr noundef %638, ptr noundef %157, i32 noundef 0, i32 noundef 2) #9
  br label %679

658:                                              ; preds = %605
  %659 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !6
  %660 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef %236, ptr noundef %659) #9
  %661 = tail call ptr @force_operand(ptr noundef %660, ptr noundef null) #9
  %662 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %236, ptr noundef %661, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %663 = add nsw i32 %162, -1
  %664 = sext i32 %663 to i64
  %665 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %664) #9
  %666 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %662, ptr noundef %665, ptr noundef null, i32 noundef 0) #10
  %667 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %147, ptr noundef %661, ptr noundef %666) #9
  %668 = tail call ptr @force_operand(ptr noundef %667, ptr noundef null) #9
  %669 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef %147, ptr noundef %668, ptr noundef nonnull %231, ptr noundef null, i32 noundef 0) #10
  %670 = icmp eq ptr %669, null
  br i1 %670, label %678, label %671

671:                                              ; preds = %658
  %672 = tail call ptr @expand_unop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %666, ptr noundef null, i32 noundef 0) #9
  %673 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef nonnull %669, ptr noundef %672) #9
  %674 = tail call ptr @force_operand(ptr noundef %673, ptr noundef %157) #9
  br label %679

675:                                              ; preds = %614
  %676 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %677 = tail call ptr %676(i32 noundef %2, ptr noundef nonnull %619) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  br label %1115

678:                                              ; preds = %658, %630, %635
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  br label %682

679:                                              ; preds = %671, %654, %621
  %680 = phi ptr [ %674, %671 ], [ %657, %654 ], [ %624, %621 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  %681 = icmp eq ptr %680, null
  br i1 %681, label %682, label %1084

682:                                              ; preds = %602, %678, %679
  tail call void @delete_insns_since(ptr noundef %237) #9
  br i1 %148, label %688, label %683

683:                                              ; preds = %682
  %684 = load i32, ptr %106, align 8
  %685 = lshr i32 %684, 16
  %686 = and i32 %685, 255
  %687 = icmp eq i32 %686, %147
  br i1 %687, label %690, label %688

688:                                              ; preds = %683, %682
  %689 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %690

690:                                              ; preds = %688, %683
  %691 = phi ptr [ %689, %688 ], [ %106, %683 ]
  %692 = load i32, ptr %691, align 8
  %693 = and i32 %692, 65535
  %694 = icmp eq i32 %693, 37
  br i1 %168, label %695, label %701

695:                                              ; preds = %690
  br i1 %694, label %698, label %696

696:                                              ; preds = %695
  %697 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %698

698:                                              ; preds = %695, %696
  %699 = phi ptr [ %697, %696 ], [ %691, %695 ]
  %700 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %707

701:                                              ; preds = %690
  br i1 %694, label %704, label %702

702:                                              ; preds = %701
  %703 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %704

704:                                              ; preds = %701, %702
  %705 = phi ptr [ %703, %702 ], [ %691, %701 ]
  %706 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %707

707:                                              ; preds = %704, %698
  %708 = phi ptr [ %699, %698 ], [ %705, %704 ]
  %709 = phi ptr [ %699, %698 ], [ %706, %704 ]
  %710 = phi ptr [ %700, %698 ], [ %705, %704 ]
  %711 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr noundef %236, ptr noundef %231, ptr noundef %710, ptr noundef %709, i32 noundef 0) #9
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %722, label %713

713:                                              ; preds = %707
  %714 = tail call ptr @gen_label_rtx() #9
  %715 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %709, ptr noundef %715, i32 noundef 81, i32 noundef %147, ptr noundef %714) #10
  %716 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %236, ptr noundef %231, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %717 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %716, ptr noundef %717, i32 noundef 82, i32 noundef %147, ptr noundef %714) #10
  %718 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_dec(ptr noundef %710, ptr noundef %718) #10
  tail call void @expand_inc(ptr noundef %709, ptr noundef %231) #10
  %719 = tail call ptr @emit_label(ptr noundef %714) #9
  %720 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %721 = tail call ptr %720(i32 noundef %2, ptr noundef %708) #9
  br label %1115

722:                                              ; preds = %707
  %723 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %724 = tail call ptr @copy_to_mode_reg(i32 noundef %147, ptr noundef %236) #9
  %725 = tail call ptr @gen_label_rtx() #9
  %726 = tail call ptr @gen_label_rtx() #9
  %727 = tail call ptr @gen_label_rtx() #9
  %728 = tail call ptr @gen_label_rtx() #9
  %729 = tail call ptr @gen_label_rtx() #9
  %730 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %231, ptr noundef %730, i32 noundef 85, i32 noundef %147, ptr noundef %726) #10
  %731 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %724, ptr noundef %731, i32 noundef 85, i32 noundef %147, ptr noundef %725) #10
  %732 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %724, ptr noundef %231, ptr noundef %723, i32 noundef 0, i32 noundef 3) #9
  %733 = icmp eq ptr %732, %723
  br i1 %733, label %736, label %734

734:                                              ; preds = %722
  %735 = tail call ptr @emit_move_insn(ptr noundef %723, ptr noundef %732) #9
  br label %736

736:                                              ; preds = %734, %722
  %737 = tail call ptr @gen_jump(ptr noundef %729) #9
  %738 = tail call ptr @emit_jump_insn(ptr noundef %737) #9
  %739 = tail call ptr @emit_barrier() #9
  %740 = tail call ptr @emit_label(ptr noundef %725) #9
  %741 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_inc(ptr noundef %724, ptr noundef %741) #10
  %742 = tail call ptr @gen_jump(ptr noundef %728) #9
  %743 = tail call ptr @emit_jump_insn(ptr noundef %742) #9
  %744 = tail call ptr @emit_barrier() #9
  %745 = tail call ptr @emit_label(ptr noundef %726) #9
  %746 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %724, ptr noundef %746, i32 noundef 83, i32 noundef %147, ptr noundef %727) #10
  %747 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %724, ptr noundef %231, ptr noundef %723, i32 noundef 0, i32 noundef 3) #9
  %748 = icmp eq ptr %747, %723
  br i1 %748, label %751, label %749

749:                                              ; preds = %736
  %750 = tail call ptr @emit_move_insn(ptr noundef %723, ptr noundef %747) #9
  br label %751

751:                                              ; preds = %749, %736
  %752 = tail call ptr @gen_jump(ptr noundef %729) #9
  %753 = tail call ptr @emit_jump_insn(ptr noundef %752) #9
  %754 = tail call ptr @emit_barrier() #9
  %755 = tail call ptr @emit_label(ptr noundef %727) #9
  %756 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_dec(ptr noundef %724, ptr noundef %756) #10
  %757 = tail call ptr @emit_label(ptr noundef %728) #9
  %758 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %724, ptr noundef %231, ptr noundef %723, i32 noundef 0, i32 noundef 3) #9
  %759 = icmp eq ptr %758, %723
  br i1 %759, label %762, label %760

760:                                              ; preds = %751
  %761 = tail call ptr @emit_move_insn(ptr noundef %723, ptr noundef %758) #9
  br label %762

762:                                              ; preds = %760, %751
  %763 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_dec(ptr noundef %723, ptr noundef %763) #10
  %764 = tail call ptr @emit_label(ptr noundef %729) #9
  br label %1032

765:                                              ; preds = %251, %251
  br i1 %52, label %850, label %766

766:                                              ; preds = %765
  br i1 %215, label %767, label %792

767:                                              ; preds = %766
  %768 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %769 = load i64, ptr %768, align 8, !tbaa !12
  %770 = tail call i64 @llvm.ctpop.i64(i64 %769), !range !74
  %771 = icmp ult i64 %770, 2
  br i1 %771, label %772, label %792

772:                                              ; preds = %767
  %773 = add nsw i64 %769, -1
  %774 = tail call i32 @floor_log2(i64 noundef %769) #9
  %775 = sext i32 %774 to i64
  %776 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %775) #9
  %777 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %776, ptr noundef %157, i32 noundef 1) #10
  %778 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %773) #9
  %779 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %236, ptr noundef %778, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %780 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %781 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %782 = tail call ptr @emit_store_flag(ptr noundef %780, i32 noundef 80, ptr noundef %779, ptr noundef %781, i32 noundef %147, i32 noundef 1, i32 noundef 1) #10
  %783 = icmp eq ptr %782, null
  br i1 %783, label %784, label %789

784:                                              ; preds = %772
  %785 = tail call ptr @gen_label_rtx() #9
  %786 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %779, ptr noundef %786, i32 noundef 81, i32 noundef %147, ptr noundef %785) #10
  %787 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_inc(ptr noundef %777, ptr noundef %787) #10
  %788 = tail call ptr @emit_label(ptr noundef %785) #9
  br label %1032

789:                                              ; preds = %772
  %790 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef %777, ptr noundef nonnull %782) #9
  %791 = tail call ptr @force_operand(ptr noundef %790, ptr noundef %157) #9
  br label %1032

792:                                              ; preds = %767, %766
  br i1 %148, label %798, label %793

793:                                              ; preds = %792
  %794 = load i32, ptr %106, align 8
  %795 = lshr i32 %794, 16
  %796 = and i32 %795, 255
  %797 = icmp eq i32 %796, %147
  br i1 %797, label %800, label %798

798:                                              ; preds = %793, %792
  %799 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %800

800:                                              ; preds = %798, %793
  %801 = phi ptr [ %799, %798 ], [ %106, %793 ]
  %802 = load i32, ptr %801, align 8
  %803 = and i32 %802, 65535
  %804 = icmp eq i32 %803, 37
  br i1 %168, label %805, label %811

805:                                              ; preds = %800
  br i1 %804, label %808, label %806

806:                                              ; preds = %805
  %807 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %808

808:                                              ; preds = %805, %806
  %809 = phi ptr [ %807, %806 ], [ %801, %805 ]
  %810 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %817

811:                                              ; preds = %800
  br i1 %804, label %814, label %812

812:                                              ; preds = %811
  %813 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %814

814:                                              ; preds = %811, %812
  %815 = phi ptr [ %813, %812 ], [ %801, %811 ]
  %816 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %817

817:                                              ; preds = %814, %808
  %818 = phi ptr [ %809, %808 ], [ %815, %814 ]
  %819 = phi ptr [ %809, %808 ], [ %816, %814 ]
  %820 = phi ptr [ %810, %808 ], [ %815, %814 ]
  %821 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35), ptr noundef %236, ptr noundef %231, ptr noundef %820, ptr noundef %819, i32 noundef 1) #9
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %830, label %823

823:                                              ; preds = %817
  %824 = tail call ptr @gen_label_rtx() #9
  %825 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %819, ptr noundef %825, i32 noundef 81, i32 noundef %147, ptr noundef %824) #10
  %826 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_inc(ptr noundef %820, ptr noundef %826) #10
  tail call void @expand_dec(ptr noundef %819, ptr noundef %231) #10
  %827 = tail call ptr @emit_label(ptr noundef %824) #9
  %828 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %829 = tail call ptr %828(i32 noundef %2, ptr noundef %818) #9
  br label %1115

830:                                              ; preds = %817
  %831 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %832 = tail call ptr @copy_to_mode_reg(i32 noundef %147, ptr noundef %236) #9
  %833 = tail call ptr @gen_label_rtx() #9
  %834 = tail call ptr @gen_label_rtx() #9
  %835 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %832, ptr noundef %835, i32 noundef 80, i32 noundef %147, ptr noundef %833) #10
  %836 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %837 = tail call ptr @emit_move_insn(ptr noundef %831, ptr noundef %836) #9
  %838 = tail call ptr @gen_jump(ptr noundef %834) #9
  %839 = tail call ptr @emit_jump_insn(ptr noundef %838) #9
  %840 = tail call ptr @emit_barrier() #9
  %841 = tail call ptr @emit_label(ptr noundef %833) #9
  %842 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_dec(ptr noundef %832, ptr noundef %842) #10
  %843 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef %832, ptr noundef %231, ptr noundef %831, i32 noundef 1, i32 noundef 3) #9
  %844 = icmp eq ptr %843, %831
  br i1 %844, label %847, label %845

845:                                              ; preds = %830
  %846 = tail call ptr @emit_move_insn(ptr noundef %831, ptr noundef %843) #9
  br label %847

847:                                              ; preds = %845, %830
  %848 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_inc(ptr noundef %831, ptr noundef %848) #10
  %849 = tail call ptr @emit_label(ptr noundef %834) #9
  br label %1032

850:                                              ; preds = %765
  br i1 %215, label %851, label %878

851:                                              ; preds = %850
  %852 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %853 = load i64, ptr %852, align 8, !tbaa !12
  %854 = tail call i64 @llvm.ctpop.i64(i64 %853), !range !74
  %855 = icmp ult i64 %854, 2
  %856 = icmp sgt i64 %853, -1
  %857 = and i1 %856, %855
  br i1 %857, label %858, label %878

858:                                              ; preds = %851
  %859 = add nsw i64 %853, -1
  %860 = tail call i32 @floor_log2(i64 noundef %853) #9
  %861 = sext i32 %860 to i64
  %862 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %861) #9
  %863 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %862, ptr noundef %157, i32 noundef 0) #10
  %864 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %859) #9
  %865 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %236, ptr noundef %864, ptr noundef null, i32 noundef 1, i32 noundef 3) #9
  %866 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %867 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %868 = tail call ptr @emit_store_flag(ptr noundef %866, i32 noundef 80, ptr noundef %865, ptr noundef %867, i32 noundef %147, i32 noundef 1, i32 noundef 1) #10
  %869 = icmp eq ptr %868, null
  br i1 %869, label %870, label %875

870:                                              ; preds = %858
  %871 = tail call ptr @gen_label_rtx() #9
  %872 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %865, ptr noundef %872, i32 noundef 81, i32 noundef %147, ptr noundef %871) #10
  %873 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_inc(ptr noundef %863, ptr noundef %873) #10
  %874 = tail call ptr @emit_label(ptr noundef %871) #9
  br label %1032

875:                                              ; preds = %858
  %876 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %147, ptr noundef %863, ptr noundef nonnull %868) #9
  %877 = tail call ptr @force_operand(ptr noundef %876, ptr noundef %157) #9
  br label %1032

878:                                              ; preds = %851, %850
  br i1 %148, label %884, label %879

879:                                              ; preds = %878
  %880 = load i32, ptr %106, align 8
  %881 = lshr i32 %880, 16
  %882 = and i32 %881, 255
  %883 = icmp eq i32 %882, %147
  br i1 %883, label %886, label %884

884:                                              ; preds = %879, %878
  %885 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %886

886:                                              ; preds = %884, %879
  %887 = phi ptr [ %885, %884 ], [ %106, %879 ]
  %888 = load i32, ptr %887, align 8
  %889 = and i32 %888, 65535
  %890 = icmp eq i32 %889, 37
  br i1 %168, label %891, label %897

891:                                              ; preds = %886
  br i1 %890, label %894, label %892

892:                                              ; preds = %891
  %893 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %894

894:                                              ; preds = %891, %892
  %895 = phi ptr [ %893, %892 ], [ %887, %891 ]
  %896 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %903

897:                                              ; preds = %886
  br i1 %890, label %900, label %898

898:                                              ; preds = %897
  %899 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %900

900:                                              ; preds = %897, %898
  %901 = phi ptr [ %899, %898 ], [ %887, %897 ]
  %902 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br label %903

903:                                              ; preds = %900, %894
  %904 = phi ptr [ %895, %894 ], [ %901, %900 ]
  %905 = phi ptr [ %895, %894 ], [ %902, %900 ]
  %906 = phi ptr [ %896, %894 ], [ %901, %900 ]
  %907 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr noundef %236, ptr noundef %231, ptr noundef %906, ptr noundef %905, i32 noundef 0) #9
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %918, label %909

909:                                              ; preds = %903
  %910 = tail call ptr @gen_label_rtx() #9
  %911 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %905, ptr noundef %911, i32 noundef 81, i32 noundef %147, ptr noundef %910) #10
  %912 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %236, ptr noundef %231, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %913 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %912, ptr noundef %913, i32 noundef 85, i32 noundef %147, ptr noundef %910) #10
  %914 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_inc(ptr noundef %906, ptr noundef %914) #10
  tail call void @expand_dec(ptr noundef %905, ptr noundef %231) #10
  %915 = tail call ptr @emit_label(ptr noundef %910) #9
  %916 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %917 = tail call ptr %916(i32 noundef %2, ptr noundef %904) #9
  br label %1115

918:                                              ; preds = %903
  %919 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %920 = tail call ptr @copy_to_mode_reg(i32 noundef %147, ptr noundef %236) #9
  %921 = tail call ptr @gen_label_rtx() #9
  %922 = tail call ptr @gen_label_rtx() #9
  %923 = tail call ptr @gen_label_rtx() #9
  %924 = tail call ptr @gen_label_rtx() #9
  %925 = tail call ptr @gen_label_rtx() #9
  %926 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %231, ptr noundef %926, i32 noundef 85, i32 noundef %147, ptr noundef %922) #10
  %927 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %920, ptr noundef %927, i32 noundef 83, i32 noundef %147, ptr noundef %921) #10
  %928 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %920, ptr noundef %231, ptr noundef %919, i32 noundef 0, i32 noundef 3) #9
  %929 = icmp eq ptr %928, %919
  br i1 %929, label %932, label %930

930:                                              ; preds = %918
  %931 = tail call ptr @emit_move_insn(ptr noundef %919, ptr noundef %928) #9
  br label %932

932:                                              ; preds = %930, %918
  %933 = tail call ptr @gen_jump(ptr noundef %925) #9
  %934 = tail call ptr @emit_jump_insn(ptr noundef %933) #9
  %935 = tail call ptr @emit_barrier() #9
  %936 = tail call ptr @emit_label(ptr noundef %921) #9
  %937 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_dec(ptr noundef %920, ptr noundef %937) #10
  %938 = tail call ptr @gen_jump(ptr noundef %924) #9
  %939 = tail call ptr @emit_jump_insn(ptr noundef %938) #9
  %940 = tail call ptr @emit_barrier() #9
  %941 = tail call ptr @emit_label(ptr noundef %922) #9
  %942 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %920, ptr noundef %942, i32 noundef 85, i32 noundef %147, ptr noundef %923) #10
  %943 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %920, ptr noundef %231, ptr noundef %919, i32 noundef 0, i32 noundef 3) #9
  %944 = icmp eq ptr %943, %919
  br i1 %944, label %947, label %945

945:                                              ; preds = %932
  %946 = tail call ptr @emit_move_insn(ptr noundef %919, ptr noundef %943) #9
  br label %947

947:                                              ; preds = %945, %932
  %948 = tail call ptr @gen_jump(ptr noundef %925) #9
  %949 = tail call ptr @emit_jump_insn(ptr noundef %948) #9
  %950 = tail call ptr @emit_barrier() #9
  %951 = tail call ptr @emit_label(ptr noundef %923) #9
  %952 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_inc(ptr noundef %920, ptr noundef %952) #10
  %953 = tail call ptr @emit_label(ptr noundef %924) #9
  %954 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %920, ptr noundef %231, ptr noundef %919, i32 noundef 0, i32 noundef 3) #9
  %955 = icmp eq ptr %954, %919
  br i1 %955, label %958, label %956

956:                                              ; preds = %947
  %957 = tail call ptr @emit_move_insn(ptr noundef %919, ptr noundef %954) #9
  br label %958

958:                                              ; preds = %956, %947
  %959 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_inc(ptr noundef %919, ptr noundef %959) #10
  %960 = tail call ptr @emit_label(ptr noundef %925) #9
  br label %1032

961:                                              ; preds = %251
  %962 = icmp ult i8 %160, 9
  %963 = select i1 %215, i1 %962, i1 false
  br i1 %963, label %964, label %1037

964:                                              ; preds = %961
  %965 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %966 = load i64, ptr %965, align 8, !tbaa !12
  %967 = sub nsw i64 0, %966
  %968 = and i64 %966, %967
  %969 = tail call i32 @floor_log2(i64 noundef %968) #9
  %970 = zext nneg i32 %969 to i64
  %971 = ashr i64 %966, %970
  %972 = tail call fastcc i64 @invert_mod2n(i64 noundef %971, i32 noundef %162) #10
  %973 = sext i32 %969 to i64
  %974 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %973) #9
  %975 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %236, ptr noundef %974, ptr noundef null, i32 noundef %6) #10
  %976 = tail call ptr @gen_int_mode(i64 noundef %972, i32 noundef %147) #9
  %977 = tail call ptr @expand_mult(i32 noundef %147, ptr noundef %975, ptr noundef %976, ptr noundef null, i32 noundef 1) #10
  %978 = tail call ptr @get_last_insn() #9
  %979 = select i1 %52, i32 55, i32 59
  %980 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %979, i32 noundef %147, ptr noundef %236, ptr noundef %231) #9
  %981 = tail call ptr @set_unique_reg_note(ptr noundef %978, i32 noundef 4, ptr noundef %980) #9
  br label %1032

982:                                              ; preds = %251, %251
  %983 = tail call ptr @gen_label_rtx() #9
  %984 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %985 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  br i1 %52, label %1000, label %986

986:                                              ; preds = %982
  %987 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35), ptr noundef %236, ptr noundef %231, ptr noundef %984, ptr noundef %985, i32 noundef 1) #9
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %993

989:                                              ; preds = %986
  %990 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef %236, ptr noundef %231, ptr noundef %984, i32 noundef 1, i32 noundef 3) #9
  %991 = tail call ptr @expand_mult(i32 noundef %147, ptr noundef %990, ptr noundef %231, ptr noundef null, i32 noundef 1) #10
  %992 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %236, ptr noundef %991, ptr noundef %985, i32 noundef 1, i32 noundef 3) #9
  br label %993

993:                                              ; preds = %989, %986
  %994 = phi ptr [ %992, %989 ], [ %985, %986 ]
  %995 = phi ptr [ %990, %989 ], [ %984, %986 ]
  %996 = tail call ptr @plus_constant(ptr noundef %231, i64 noundef -1) #9
  %997 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 1) #9
  %998 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %996, ptr noundef %997, ptr noundef null, i32 noundef 1) #10
  tail call fastcc void @do_cmp_and_jump(ptr noundef %994, ptr noundef %998, i32 noundef 88, i32 noundef %147, ptr noundef %983) #10
  %999 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  tail call void @expand_inc(ptr noundef %995, ptr noundef %999) #10
  tail call void @expand_dec(ptr noundef %994, ptr noundef %231) #10
  br label %1024

1000:                                             ; preds = %982
  %1001 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr noundef %236, ptr noundef %231, ptr noundef %984, ptr noundef %985, i32 noundef 0) #9
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1003, label %1007

1003:                                             ; preds = %1000
  %1004 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %236, ptr noundef %231, ptr noundef %984, i32 noundef 0, i32 noundef 3) #9
  %1005 = tail call ptr @expand_mult(i32 noundef %147, ptr noundef %1004, ptr noundef %231, ptr noundef null, i32 noundef 0) #10
  %1006 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %236, ptr noundef %1005, ptr noundef %985, i32 noundef 0, i32 noundef 3) #9
  br label %1007

1007:                                             ; preds = %1003, %1000
  %1008 = phi ptr [ %1006, %1003 ], [ %985, %1000 ]
  %1009 = phi ptr [ %1004, %1003 ], [ %984, %1000 ]
  %1010 = tail call ptr @expand_abs(i32 noundef %147, ptr noundef %1008, ptr noundef null, i32 noundef 1, i32 noundef 0) #9
  %1011 = tail call ptr @expand_abs(i32 noundef %147, ptr noundef %231, ptr noundef null, i32 noundef 1, i32 noundef 0) #9
  %1012 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 1) #9
  %1013 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %147, ptr noundef %1010, ptr noundef %1012, ptr noundef null, i32 noundef 1) #10
  tail call fastcc void @do_cmp_and_jump(ptr noundef %1013, ptr noundef %1011, i32 noundef 89, i32 noundef %147, ptr noundef %983) #10
  %1014 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %236, ptr noundef %231, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %1015 = add nsw i32 %162, -1
  %1016 = sext i32 %1015 to i64
  %1017 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %1016) #9
  %1018 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %147, ptr noundef %1014, ptr noundef %1017, ptr noundef null, i32 noundef 0) #10
  %1019 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  %1020 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1018, ptr noundef %1019, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %1021 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %1020, ptr noundef %1018, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  tail call void @expand_inc(ptr noundef %1009, ptr noundef %1021) #10
  %1022 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1018, ptr noundef %231, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  %1023 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %1022, ptr noundef %1018, ptr noundef null, i32 noundef 0, i32 noundef 2) #9
  tail call void @expand_dec(ptr noundef %1008, ptr noundef %1023) #10
  br label %1024

1024:                                             ; preds = %1007, %993
  %1025 = phi ptr [ %994, %993 ], [ %1008, %1007 ]
  %1026 = phi ptr [ %995, %993 ], [ %1009, %1007 ]
  %1027 = tail call ptr @emit_label(ptr noundef %983) #9
  %1028 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %1029 = select i1 %168, ptr %1025, ptr %1026
  %1030 = tail call ptr %1028(i32 noundef %2, ptr noundef %1029) #9
  br label %1115

1031:                                             ; preds = %251
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4856, ptr noundef nonnull @.str.1) #9
  br label %1037

1032:                                             ; preds = %594, %379, %870, %875, %784, %789, %762, %958, %847, %964
  %1033 = phi ptr [ %977, %964 ], [ %831, %847 ], [ %919, %958 ], [ %723, %762 ], [ %777, %784 ], [ %791, %789 ], [ %863, %870 ], [ %877, %875 ], [ %380, %379 ], [ %595, %594 ]
  %1034 = phi ptr [ %106, %964 ], [ %801, %847 ], [ %887, %958 ], [ %691, %762 ], [ %106, %784 ], [ %106, %789 ], [ %106, %870 ], [ %106, %875 ], [ %106, %379 ], [ %106, %594 ]
  %1035 = phi ptr [ %231, %964 ], [ %231, %847 ], [ %231, %958 ], [ %231, %762 ], [ %231, %784 ], [ %231, %789 ], [ %231, %870 ], [ %231, %875 ], [ %231, %379 ], [ %394, %594 ]
  %1036 = icmp eq ptr %1033, null
  br i1 %1036, label %1037, label %1084

1037:                                             ; preds = %247, %600, %961, %1031, %1032
  %1038 = phi ptr [ %1035, %1032 ], [ %231, %247 ], [ %601, %600 ], [ %231, %961 ], [ %231, %1031 ]
  %1039 = phi ptr [ %1034, %1032 ], [ %106, %247 ], [ %106, %600 ], [ %106, %961 ], [ %106, %1031 ]
  %1040 = icmp eq ptr %1039, null
  br i1 %1040, label %1047, label %1041

1041:                                             ; preds = %1037
  %1042 = load i32, ptr %1039, align 8
  %1043 = lshr i32 %1042, 16
  %1044 = and i32 %1043, 255
  %1045 = icmp eq i32 %1044, %147
  %1046 = select i1 %1045, ptr %1039, ptr null
  br label %1047

1047:                                             ; preds = %1041, %1037
  %1048 = phi ptr [ %1046, %1041 ], [ null, %1037 ]
  %1049 = sext i32 %147 to i64
  br i1 %168, label %1050, label %1067

1050:                                             ; preds = %1047
  %1051 = getelementptr inbounds %struct.optab_d, ptr %115, i64 0, i32 4, i64 %1049
  %1052 = load i32, ptr %1051, align 4, !tbaa !32
  %1053 = icmp eq i32 %1052, 2956
  %1054 = select i1 %1053, i32 2, i32 0
  %1055 = tail call ptr @sign_expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), ptr noundef %236, ptr noundef %1038, ptr noundef %1048, i32 noundef %6, i32 noundef %1054) #9
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1057, label %1063

1057:                                             ; preds = %1050
  %1058 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %1059 = tail call i32 @expand_twoval_binop(ptr noundef nonnull %114, ptr noundef %236, ptr noundef %1038, ptr noundef null, ptr noundef %1058, i32 noundef %6) #9
  %1060 = icmp eq i32 %1059, 0
  %1061 = icmp eq ptr %1058, null
  %1062 = or i1 %1061, %1060
  br i1 %1062, label %1067, label %1063

1063:                                             ; preds = %1057, %1050
  %1064 = phi ptr [ %1055, %1050 ], [ %1058, %1057 ]
  %1065 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %1066 = tail call ptr %1065(i32 noundef %2, ptr noundef nonnull %1064) #9
  br label %1115

1067:                                             ; preds = %1047, %1057
  %1068 = phi ptr [ null, %1057 ], [ %1048, %1047 ]
  %1069 = getelementptr inbounds %struct.optab_d, ptr %115, i64 0, i32 4, i64 %1049
  %1070 = load i32, ptr %1069, align 4, !tbaa !32
  %1071 = icmp eq i32 %1070, 2956
  %1072 = select i1 %1071, i32 2, i32 0
  %1073 = tail call ptr @sign_expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %236, ptr noundef %1038, ptr noundef %1068, i32 noundef %6, i32 noundef %1072) #9
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1075, label %1084

1075:                                             ; preds = %1067
  %1076 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %1077 = tail call i32 @expand_twoval_binop(ptr noundef nonnull %114, ptr noundef %236, ptr noundef %1038, ptr noundef %1076, ptr noundef null, i32 noundef %6) #9
  %1078 = icmp eq i32 %1077, 0
  %1079 = or i32 %1077, %0
  %1080 = icmp eq i32 %1079, 0
  %1081 = select i1 %1078, ptr null, ptr %1076
  br i1 %1080, label %1082, label %1084

1082:                                             ; preds = %1075
  %1083 = tail call ptr @sign_expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %236, ptr noundef %1038, ptr noundef %1048, i32 noundef %6, i32 noundef 3) #9
  br label %1111

1084:                                             ; preds = %679, %1075, %1067, %1032
  %1085 = phi ptr [ %1038, %1075 ], [ %1038, %1067 ], [ %1035, %1032 ], [ %231, %679 ]
  %1086 = phi ptr [ %1081, %1075 ], [ %1073, %1067 ], [ %1033, %1032 ], [ %680, %679 ]
  %1087 = phi ptr [ %1048, %1075 ], [ %1048, %1067 ], [ %1034, %1032 ], [ %106, %679 ]
  br i1 %168, label %1088, label %1111

1088:                                             ; preds = %1084
  %1089 = icmp eq ptr %1087, null
  br i1 %1089, label %1096, label %1090

1090:                                             ; preds = %1088
  %1091 = load i32, ptr %1087, align 8
  %1092 = lshr i32 %1091, 16
  %1093 = and i32 %1092, 255
  %1094 = icmp eq i32 %1093, %147
  %1095 = select i1 %1094, ptr %1087, ptr null
  br label %1096

1096:                                             ; preds = %1090, %1088
  %1097 = phi ptr [ %1095, %1090 ], [ null, %1088 ]
  %1098 = icmp eq ptr %1086, null
  br i1 %1098, label %1099, label %1108

1099:                                             ; preds = %1096
  %1100 = tail call ptr @sign_expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), ptr noundef %236, ptr noundef %1085, ptr noundef %1097, i32 noundef %6, i32 noundef 3) #9
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1102, label %1111

1102:                                             ; preds = %1099
  %1103 = tail call ptr @gen_reg_rtx(i32 noundef %147) #9
  %1104 = select i1 %52, i32 58, i32 60
  %1105 = tail call zeroext i8 @expand_twoval_binop_libfunc(ptr noundef nonnull %114, ptr noundef %236, ptr noundef %1085, ptr noundef null, ptr noundef %1103, i32 noundef %1104) #9
  %1106 = icmp eq i8 %1105, 0
  %1107 = select i1 %1106, ptr null, ptr %1103
  br label %1111

1108:                                             ; preds = %1096
  %1109 = tail call ptr @expand_mult(i32 noundef %147, ptr noundef nonnull %1086, ptr noundef %1085, ptr noundef null, i32 noundef %6) #10
  %1110 = tail call ptr @expand_binop(i32 noundef %147, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %236, ptr noundef %1109, ptr noundef %1097, i32 noundef %6, i32 noundef 3) #9
  br label %1111

1111:                                             ; preds = %1082, %1102, %1108, %1099, %1084
  %1112 = phi ptr [ %1100, %1099 ], [ %1110, %1108 ], [ %1086, %1084 ], [ %1107, %1102 ], [ %1083, %1082 ]
  %1113 = load ptr, ptr @rtl_hooks, align 8, !tbaa !37
  %1114 = tail call ptr %1113(i32 noundef %2, ptr noundef %1112) #9
  br label %1115

1115:                                             ; preds = %675, %597, %382, %1111, %1063, %1024, %909, %823, %713, %70, %58, %47
  %1116 = phi ptr [ %50, %47 ], [ %1066, %1063 ], [ %1114, %1111 ], [ %1030, %1024 ], [ %829, %823 ], [ %917, %909 ], [ %721, %713 ], [ %677, %675 ], [ %384, %382 ], [ %599, %597 ], [ %59, %58 ], [ %72, %70 ]
  ret ptr %1116
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @optab_libfunc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_store_flag_force(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call ptr @emit_store_flag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %153

10:                                               ; preds = %7
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load i32, ptr @word_mode, align 4, !tbaa !24
  %14 = tail call ptr @gen_reg_rtx(i32 noundef %13) #9
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %0, %10 ], [ %14, %12 ]
  %17 = icmp eq i32 %6, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = sext i32 %6 to i64
  %20 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %19) #9
  br label %23

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %20, %18 ], [ %22, %21 ]
  %25 = icmp eq i32 %1, 80
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %16, align 8
  br label %46

28:                                               ; preds = %23
  %29 = zext i32 %4 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !12
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
  %44 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %2, ptr noundef %44, i32 noundef 81, i32 noundef %5, i32 noundef %4, ptr noundef null, ptr noundef null, ptr noundef %43, i32 noundef -1) #9
  %45 = tail call ptr @emit_move_insn(ptr noundef nonnull %2, ptr noundef %24) #9
  br label %149

46:                                               ; preds = %26, %34, %28
  %47 = phi i32 [ %27, %26 ], [ %33, %34 ], [ %33, %28 ]
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %16, ptr noundef %2) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %16, ptr noundef %3) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53, %50, %46
  %57 = load i32, ptr %16, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = tail call ptr @gen_reg_rtx(i32 noundef %59) #9
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi ptr [ %60, %56 ], [ %16, %53 ]
  %63 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %64 = tail call i32 @can_compare_p(i32 noundef %1, i32 noundef %4, i32 noundef 0) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %142

66:                                               ; preds = %61
  %67 = zext i32 %4 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !12
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
  %82 = load i8, ptr %81, align 1, !tbaa !12
  %83 = zext i8 %82 to i32
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i32 [ %4, %77 ], [ %83, %80 ]
  %86 = add i32 %85, -38
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = getelementptr inbounds %struct.real_format, ptr %89, i64 0, i32 11
  %91 = load i8, ptr %90, align 2, !tbaa !102
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
  %98 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !24
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
  %106 = load i8, ptr %105, align 1, !tbaa !12
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i32 [ %4, %101 ], [ %107, %104 ]
  %110 = add i32 %109, -38
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = getelementptr inbounds %struct.real_format, ptr %113, i64 0, i32 11
  %115 = load i8, ptr %114, align 2, !tbaa !102
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
  %141 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
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
define internal fastcc i64 @choose_multiplier(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
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
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3296, ptr noundef nonnull @.str.1) #9
  br label %16

16:                                               ; preds = %6, %15
  %17 = add nsw i32 %13, %1
  %18 = sub nsw i32 %17, %2
  %19 = icmp eq i32 %17, 128
  br i1 %19, label %20, label %21

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
  %28 = select i1 %22, i64 %25, i64 0
  %29 = select i1 %22, i64 0, i64 %27
  %30 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %29, i64 noundef %28, i64 noundef %0, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %12) #9
  %31 = icmp sgt i32 %18, 63
  br i1 %31, label %32, label %37

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
  %45 = load i64, ptr %7, align 8, !tbaa !87
  %46 = icmp eq i64 %45, 0
  %47 = sub i64 %42, %0
  %48 = icmp ult i64 %47, %0
  %49 = or i1 %48, %46
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3328, ptr noundef nonnull @.str.1) #9
  %51 = load i64, ptr %7, align 8, !tbaa !87
  br label %52

52:                                               ; preds = %41, %50
  %53 = phi i64 [ %45, %41 ], [ %51, %50 ]
  %54 = icmp slt i64 %53, 2
  %55 = load i64, ptr %8, align 8
  %56 = icmp slt i64 %55, 2
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3329, ptr noundef nonnull @.str.1) #9
  %59 = load i64, ptr %8, align 8, !tbaa !87
  %60 = load i64, ptr %7, align 8, !tbaa !87
  br label %61

61:                                               ; preds = %52, %58
  %62 = phi i64 [ %53, %52 ], [ %60, %58 ]
  %63 = phi i64 [ %55, %52 ], [ %59, %58 ]
  %64 = icmp slt i64 %63, %62
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = icmp eq i64 %63, %62
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  %68 = load i64, ptr %10, align 8, !tbaa !87
  %69 = load i64, ptr %9, align 8, !tbaa !87
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %67, %65
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3332, ptr noundef nonnull @.str.1) #9
  %72 = load i64, ptr %8, align 8, !tbaa !87
  %73 = load i64, ptr %7, align 8, !tbaa !87
  br label %74

74:                                               ; preds = %61, %67, %71
  %75 = phi i64 [ %62, %61 ], [ %62, %67 ], [ %73, %71 ]
  %76 = phi i64 [ %63, %61 ], [ %62, %67 ], [ %72, %71 ]
  %77 = load i64, ptr %9, align 8, !tbaa !87
  %78 = icmp sgt i32 %13, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load i64, ptr %10, align 8, !tbaa !87
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
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  store i64 0, ptr %8, align 8, !tbaa !87
  store i64 %87, ptr %10, align 8, !tbaa !87
  store i64 0, ptr %7, align 8, !tbaa !87
  store i64 %88, ptr %9, align 8, !tbaa !87
  %91 = add nsw i32 %82, -1
  %92 = icmp sgt i32 %82, 1
  br i1 %92, label %81, label %93, !llvm.loop !104

93:                                               ; preds = %90, %81, %74
  %94 = phi i64 [ %77, %74 ], [ %86, %81 ], [ %88, %90 ]
  %95 = phi i32 [ %13, %74 ], [ %82, %81 ], [ 0, %90 ]
  store i32 %95, ptr %4, align 4, !tbaa !24
  store i32 %13, ptr %5, align 4, !tbaa !24
  %96 = icmp slt i32 %1, 64
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = zext nneg i32 %1 to i64
  %99 = shl nsw i64 -1, %98
  %100 = xor i64 %99, -1
  %101 = and i64 %94, %100
  %102 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %101) #9
  %103 = load i64, ptr %9, align 8, !tbaa !87
  %104 = icmp uge i64 %103, %100
  %105 = zext i1 %104 to i64
  br label %109

106:                                              ; preds = %93
  %107 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %94) #9
  %108 = load i64, ptr %7, align 8, !tbaa !87
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
define internal fastcc ptr @expand_mult_highpart(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.algorithm, align 4
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !12
  %11 = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #8
  %12 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %14 = load i8, ptr %13, align 1, !tbaa !12
  %15 = and i8 %14, -2
  %16 = icmp eq i8 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3574, ptr noundef nonnull @.str.1) #9
  br label %18

18:                                               ; preds = %5, %17
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %20 = load i8, ptr %19, align 1, !tbaa !12
  %21 = icmp ult i8 %20, 9
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3576, ptr noundef nonnull @.str.1) #9
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !12
  %26 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %8
  %27 = load i64, ptr %26, align 8, !tbaa !87
  %28 = and i64 %27, %25
  %29 = zext i8 %10 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !12
  %32 = icmp ugt i8 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = tail call fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4) #10
  br label %76

35:                                               ; preds = %23
  %36 = zext i8 %12 to i64
  %37 = load i8, ptr %19, align 1, !tbaa !12
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 3
  %40 = add nsw i32 %39, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %36, i64 %8, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !24
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
  %52 = load i32, ptr %51, align 4, !tbaa !24
  %53 = add nsw i32 %52, %43
  br label %54

54:                                               ; preds = %50, %45, %35
  %55 = phi i32 [ %43, %35 ], [ %53, %50 ], [ %43, %45 ]
  %56 = phi i1 [ true, %35 ], [ false, %50 ], [ true, %45 ]
  %57 = sub nsw i32 %4, %55
  %58 = call fastcc zeroext i8 @choose_mult_variant(i32 noundef %11, i64 noundef %28, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %57) #10, !range !30
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %54
  %61 = load i16, ptr %7, align 4, !tbaa !80
  %62 = sext i16 %61 to i32
  %63 = add nsw i32 %55, %62
  %64 = tail call fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %63) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = tail call ptr @convert_to_mode(i32 noundef %11, ptr noundef %1, i32 noundef %3) #9
  %68 = load i32, ptr %6, align 4, !tbaa !24
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
define dso_local ptr @emit_store_flag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %1, ptr %8, align 4, !tbaa !24
  %10 = icmp eq ptr %0, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %7 ]
  %17 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %329

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %21 = icmp ne i8 %20, 0
  %22 = load i32, ptr @ix86_branch_cost, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %329, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %27 = tail call ptr @get_last_insn() #9
  %28 = load i32, ptr @optimize, align 4, !tbaa !24
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i32 %16, %4
  %31 = and i1 %30, %29
  %32 = select i1 %31, ptr %0, ptr null
  %33 = sext i32 %26 to i64
  %34 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #9
  %35 = zext i32 %4 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !12
  switch i8 %37, label %329 [
    i8 8, label %38
    i8 2, label %136
  ]

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
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.real_format, ptr %49, i64 0, i32 11
  %51 = load i8, ptr %50, align 2, !tbaa !102
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
  %58 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !24
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
  %86 = load i64, ptr %85, align 8, !tbaa !12
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
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = getelementptr inbounds %struct.real_format, ptr %97, i64 0, i32 11
  %99 = load i8, ptr %98, align 2, !tbaa !102
  %100 = icmp eq i8 %99, 0
  %101 = load i32, ptr @flag_finite_math_only, align 4
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %100, i1 true, i1 %102
  %104 = load i32, ptr %9, align 4, !tbaa !24
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
  %111 = load i32, ptr %8, align 4, !tbaa !24
  %112 = call fastcc ptr @emit_store_flag_1(ptr noundef %0, i32 noundef %111, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %26, i32 noundef %16) #10
  br label %134

113:                                              ; preds = %92
  %114 = call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %104, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %26, i32 noundef %16) #10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %134, label %116

116:                                              ; preds = %113
  %117 = icmp eq i8 %93, 0
  %118 = load i32, ptr %8, align 4, !tbaa !24
  br i1 %117, label %125, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
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
  br i1 %141, label %154, label %142

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
  %150 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
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
  br i1 %157, label %202, label %158

158:                                              ; preds = %154
  %159 = sext i32 %4 to i64
  %160 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !32
  %162 = icmp eq i32 %161, 2956
  %163 = icmp eq i32 %1, 80
  %164 = and i1 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %167 = load i8, ptr %166, align 1, !tbaa !12
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
  %194 = load i64, ptr %193, align 8, !tbaa !12
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
  %203 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %204 = icmp eq ptr %203, %3
  br i1 %204, label %205, label %329

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
  %223 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  %224 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %2, ptr noundef %223, ptr noundef %221, i32 noundef 0, i32 noundef 2) #9
  %225 = icmp eq ptr %224, null
  br i1 %225, label %328, label %226

226:                                              ; preds = %222
  %227 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %2, ptr noundef nonnull %224, ptr noundef %221, i32 noundef 0, i32 noundef 2) #9
  br label %296

228:                                              ; preds = %217
  %229 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %230 = load i8, ptr %229, align 1, !tbaa !12
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
  %245 = load i32, ptr %244, align 4, !tbaa !32
  %246 = icmp eq i32 %245, 2956
  br i1 %246, label %249, label %247

247:                                              ; preds = %242
  %248 = tail call ptr @expand_unop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), ptr noundef %2, ptr noundef %240, i32 noundef 1) #9
  br label %263

249:                                              ; preds = %242
  %250 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 4, i64 %243
  %251 = load i32, ptr %250, align 4, !tbaa !32
  %252 = icmp eq i32 %251, 2956
  br i1 %252, label %255, label %253

253:                                              ; preds = %249
  %254 = tail call ptr @expand_unop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70), ptr noundef %2, ptr noundef %240, i32 noundef 1) #9
  br label %263

255:                                              ; preds = %249
  %256 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %257 = load i8, ptr %256, align 1, !tbaa !12
  %258 = icmp ult i8 %257, 4
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = load i32, ptr @word_mode, align 4, !tbaa !24
  %261 = tail call ptr @convert_modes(i32 noundef %260, i32 noundef %4, ptr noundef %2, i32 noundef 1) #9
  %262 = load i32, ptr @word_mode, align 4, !tbaa !24
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
  %270 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
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
  %307 = load i8, ptr %306, align 1, !tbaa !12
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
define internal fastcc ptr @expand_smod_pow2(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @floor_log2(i64 noundef %2) #9
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %0) #9
  %6 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %7 = icmp eq i8 %6, 0
  %8 = load i32, ptr @ix86_branch_cost, align 4
  %9 = icmp sgt i32 %8, 1
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %3
  %12 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %54, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %16 = tail call ptr @emit_store_flag(ptr noundef %5, i32 noundef 85, ptr noundef %1, ptr noundef %15, i32 noundef %0, i32 noundef 0, i32 noundef -1) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @force_reg(i32 noundef %0, ptr noundef nonnull %16) #9
  %20 = zext nneg i32 %4 to i64
  %21 = shl nsw i64 -1, %20
  %22 = xor i64 %21, -1
  %23 = zext i32 %0 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !12
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 3
  %28 = sub nsw i32 %27, %4
  %29 = sext i32 %28 to i64
  %30 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %29) #9
  %31 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 68, i32 noundef %0, ptr noundef %5, ptr noundef %30) #9
  %32 = sext i32 %0 to i64
  %33 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !32
  %35 = icmp eq i32 %34, 2956
  br i1 %35, label %40, label %36

36:                                               ; preds = %18
  %37 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %38 = tail call i32 @rtx_cost(ptr noundef %31, i32 noundef 23, i8 noundef zeroext %37) #9
  %39 = icmp sgt i32 %38, 8
  br i1 %39, label %40, label %47

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
  %60 = load i8, ptr %59, align 1, !tbaa !12
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
  %83 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  tail call fastcc void @do_cmp_and_jump(ptr noundef %5, ptr noundef %83, i32 noundef 82, i32 noundef %0, ptr noundef %82) #10
  %84 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  %85 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %5, ptr noundef %84, ptr noundef %5, i32 noundef 0, i32 noundef 3) #9
  %86 = tail call ptr @immed_double_const(i64 noundef %56, i64 noundef -1, i32 noundef %0) #9
  %87 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %85, ptr noundef %86, ptr noundef %5, i32 noundef 1, i32 noundef 3) #9
  %88 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
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
define internal fastcc ptr @expand_sdiv_pow2(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @floor_log2(i64 noundef %2) #9
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %5) #9
  %7 = icmp eq i64 %2, 2
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %10 = icmp eq i8 %9, 0
  %11 = load i32, ptr @ix86_branch_cost, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = tail call ptr @gen_reg_rtx(i32 noundef %0) #9
  %16 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
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
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  tail call void @do_pending_stack_adjust() #9
  tail call void @start_sequence() #9
  %27 = tail call ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %1) #9
  %28 = add nsw i64 %2, -1
  %29 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %28) #9
  %30 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %27, ptr noundef %29, ptr noundef null, i32 noundef 0, i32 noundef 3) #9
  %31 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %30) #9
  %32 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %33 = tail call ptr @emit_conditional_move(ptr noundef %27, i32 noundef 85, ptr noundef %27, ptr noundef %32, i32 noundef %0, ptr noundef %31, ptr noundef %27, i32 noundef %0, i32 noundef 0) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

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
  br i1 %45, label %46, label %73

46:                                               ; preds = %40
  %47 = zext i32 %0 to i64
  %48 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !12
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 3
  %52 = sub nsw i32 %51, %4
  %53 = tail call ptr @gen_reg_rtx(i32 noundef %0) #9
  %54 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %55 = tail call ptr @emit_store_flag(ptr noundef %53, i32 noundef 85, ptr noundef %1, ptr noundef %54, i32 noundef %0, i32 noundef 0, i32 noundef -1) #10
  %56 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %57 = zext i8 %56 to i64
  %58 = sext i32 %52 to i64
  %59 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %57, i64 %47, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !24
  %61 = icmp sgt i32 %60, 4
  br i1 %61, label %62, label %66

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
  %76 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
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
define internal fastcc void @do_cmp_and_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
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
define internal fastcc i64 @invert_mod2n(i64 noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp eq i32 %1, 64
  %4 = zext nneg i32 %1 to i64
  %5 = shl nsw i64 -1, %4
  %6 = xor i64 %5, -1
  %7 = select i1 %3, i64 -1, i64 %6
  %8 = icmp sgt i32 %1, 3
  br i1 %8, label %9, label %18

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %16, %9 ], [ 3, %2 ]
  %11 = phi i64 [ %15, %9 ], [ %0, %2 ]
  %12 = mul i64 %11, %0
  %13 = sub i64 2, %12
  %14 = mul i64 %13, %11
  %15 = and i64 %14, %7
  %16 = shl nsw i32 %10, 1
  %17 = icmp slt i32 %16, %1
  br i1 %17, label %9, label %18, !llvm.loop !105

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
define internal fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !12
  %8 = tail call ptr @gen_int_mode(i64 noundef %7, i32 noundef %0) #9
  %9 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !12
  %13 = and i8 %12, -2
  %14 = icmp eq i8 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3461, ptr noundef nonnull @.str.1) #9
  br label %16

16:                                               ; preds = %5, %15
  %17 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %10
  %18 = load i8, ptr %17, align 1, !tbaa !12
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %21 = load i8, ptr %20, align 1, !tbaa !12
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 3
  %24 = zext i8 %9 to i64
  %25 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_highpart_cost, i64 0, i64 %24, i64 %10
  %26 = load i32, ptr %25, align 4, !tbaa !24
  %27 = icmp slt i32 %26, %4
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = icmp eq i32 %3, 0
  %30 = select i1 %29, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19)
  %31 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %30, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %3, i32 noundef 0) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %121

33:                                               ; preds = %28, %16
  %34 = add nsw i32 %23, -1
  %35 = icmp ugt i8 %21, 4
  br i1 %35, label %55, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %25, align 4, !tbaa !24
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %24, i64 %10, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = shl nsw i32 %40, 1
  %42 = add nsw i32 %41, %37
  %43 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %24, i64 %10
  %44 = load i32, ptr %43, align 4, !tbaa !24
  %45 = shl nsw i32 %44, 2
  %46 = add nsw i32 %42, %45
  %47 = icmp slt i32 %46, %4
  br i1 %47, label %48, label %55

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
  %61 = load i32, ptr %60, align 4, !tbaa !32
  %62 = icmp eq i32 %61, 2956
  br i1 %62, label %72, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_widen_cost, i64 0, i64 %24, i64 %59
  %65 = load i32, ptr %64, align 4, !tbaa !24
  %66 = icmp slt i32 %65, %4
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = tail call ptr @expand_binop(i32 noundef %19, ptr noundef nonnull %57, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %3, i32 noundef 2) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef nonnull %68) #10
  br label %121

72:                                               ; preds = %67, %63, %55
  %73 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 %59
  %74 = load i32, ptr %73, align 4, !tbaa !32
  %75 = icmp eq i32 %74, 2956
  %76 = or i1 %35, %75
  br i1 %76, label %94, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_cost, i64 0, i64 %24, i64 %59
  %79 = load i32, ptr %78, align 4, !tbaa !24
  %80 = sext i32 %34 to i64
  %81 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %24, i64 %10, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !24
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
  %98 = load i32, ptr %97, align 4, !tbaa !32
  %99 = icmp eq i32 %98, 2956
  %100 = or i1 %35, %99
  br i1 %100, label %121, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_widen_cost, i64 0, i64 %24, i64 %59
  %103 = load i32, ptr %102, align 4, !tbaa !24
  %104 = sext i32 %34 to i64
  %105 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %24, i64 %10, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !24
  %107 = shl nsw i32 %106, 1
  %108 = add nsw i32 %107, %103
  %109 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %24, i64 %10
  %110 = load i32, ptr %109, align 4, !tbaa !24
  %111 = shl nsw i32 %110, 2
  %112 = add nsw i32 %108, %111
  %113 = icmp slt i32 %112, %4
  br i1 %113, label %114, label %121

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
define internal fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @word_mode, align 4, !tbaa !24
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @gen_highpart(i32 noundef %0, ptr noundef %1) #9
  br label %25

7:                                                ; preds = %2
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !12
  %11 = and i8 %10, -2
  %12 = icmp eq i8 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3439, ptr noundef nonnull @.str.1) #9
  br label %14

14:                                               ; preds = %7, %13
  %15 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %8
  %16 = load i8, ptr %15, align 1, !tbaa !12
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %19 = load i8, ptr %18, align 1, !tbaa !12
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
define internal fastcc ptr @emit_store_flag_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @unsigned_condition(i32 noundef %1) #9
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %1, %8 ]
  %14 = tail call i32 @swap_condition(i32 noundef %13) #9
  %15 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @swap_condition(i32 noundef %13) #9
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %2, %17 ], [ %3, %12 ]
  %21 = phi ptr [ %3, %17 ], [ %2, %12 ]
  %22 = phi i32 [ %18, %17 ], [ %13, %12 ]
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, ptr %21, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %27, %24 ], [ %4, %19 ]
  switch i32 %22, label %66 [
    i32 85, label %30
    i32 84, label %36
    i32 82, label %42
    i32 83, label %48
    i32 86, label %54
    i32 89, label %60
  ]

30:                                               ; preds = %28
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  %32 = icmp eq ptr %20, %31
  %33 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %34 = select i1 %32, ptr %33, ptr %20
  %35 = select i1 %32, i32 84, i32 85
  br label %66

36:                                               ; preds = %28
  %37 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !6
  %38 = icmp eq ptr %20, %37
  %39 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %40 = select i1 %38, ptr %39, ptr %20
  %41 = select i1 %38, i32 85, i32 84
  br label %66

42:                                               ; preds = %28
  %43 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  %44 = icmp eq ptr %20, %43
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %46 = select i1 %44, ptr %45, ptr %20
  %47 = select i1 %44, i32 83, i32 82
  br label %66

48:                                               ; preds = %28
  %49 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !6
  %50 = icmp eq ptr %20, %49
  %51 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %52 = select i1 %50, ptr %51, ptr %20
  %53 = select i1 %50, i32 82, i32 83
  br label %66

54:                                               ; preds = %28
  %55 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  %56 = icmp eq ptr %20, %55
  %57 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %58 = select i1 %56, ptr %57, ptr %20
  %59 = select i1 %56, i32 80, i32 86
  br label %66

60:                                               ; preds = %28
  %61 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  %62 = icmp eq ptr %20, %61
  %63 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %64 = select i1 %62, ptr %63, ptr %20
  %65 = select i1 %62, i32 81, i32 89
  br label %66

66:                                               ; preds = %60, %54, %48, %42, %36, %30, %28
  %67 = phi ptr [ %20, %28 ], [ %34, %30 ], [ %40, %36 ], [ %46, %42 ], [ %52, %48 ], [ %58, %54 ], [ %64, %60 ]
  %68 = phi i32 [ %22, %28 ], [ %35, %30 ], [ %41, %36 ], [ %47, %42 ], [ %53, %48 ], [ %59, %54 ], [ %65, %60 ]
  %69 = zext i32 %29 to i64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !12
  %72 = icmp eq i8 %71, 8
  br i1 %72, label %73, label %144

73:                                               ; preds = %66
  %74 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %69
  %75 = load i8, ptr %74, align 1, !tbaa !12
  %76 = icmp eq i8 %75, 2
  br i1 %76, label %77, label %144

77:                                               ; preds = %73
  %78 = load i32, ptr %21, align 8
  %79 = and i32 %78, 134283263
  %80 = icmp eq i32 %79, 134217771
  br i1 %80, label %144, label %81

81:                                               ; preds = %77
  %82 = and i32 %68, -2
  %83 = icmp eq i32 %82, 80
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %86 = icmp eq ptr %67, %85
  %87 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %88 = icmp eq ptr %67, %87
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load i32, ptr @word_mode, align 4, !tbaa !24
  %92 = tail call ptr @simplify_gen_subreg(i32 noundef %91, ptr noundef nonnull %21, i32 noundef %29, i32 noundef 0) #9
  %93 = load i32, ptr @word_mode, align 4, !tbaa !24
  %94 = tail call ptr @simplify_gen_subreg(i32 noundef %93, ptr noundef nonnull %21, i32 noundef %29, i32 noundef 4) #9
  %95 = load i32, ptr @word_mode, align 4, !tbaa !24
  %96 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %97 = icmp eq ptr %67, %96
  %98 = select i1 %97, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41)
  %99 = tail call ptr @expand_binop(i32 noundef %95, ptr noundef nonnull %98, ptr noundef %92, ptr noundef %94, ptr noundef null, i32 noundef %5, i32 noundef 0) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %144, label %101

101:                                              ; preds = %90
  %102 = load i32, ptr @word_mode, align 4, !tbaa !24
  %103 = tail call ptr @emit_store_flag(ptr noundef null, i32 noundef %68, ptr noundef nonnull %99, ptr noundef %67, i32 noundef %102, i32 noundef %5, i32 noundef %6) #10
  br label %114

104:                                              ; preds = %84, %81
  switch i32 %68, label %144 [
    i32 85, label %105
    i32 82, label %105
  ]

105:                                              ; preds = %104, %104
  %106 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %107 = icmp eq ptr %67, %106
  br i1 %107, label %108, label %144

108:                                              ; preds = %105
  %109 = load i32, ptr @word_mode, align 4, !tbaa !24
  %110 = tail call i32 @subreg_highpart_offset(i32 noundef %109, i32 noundef %29) #9
  %111 = tail call ptr @simplify_gen_subreg(i32 noundef %109, ptr noundef nonnull %21, i32 noundef %29, i32 noundef %110) #9
  %112 = load i32, ptr @word_mode, align 4, !tbaa !24
  %113 = tail call ptr @emit_store_flag(ptr noundef null, i32 noundef %68, ptr noundef %111, ptr noundef %67, i32 noundef %112, i32 noundef %5, i32 noundef %6) #10
  br label %114

114:                                              ; preds = %101, %108
  %115 = phi ptr [ %113, %108 ], [ %103, %101 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %144, label %117

117:                                              ; preds = %114
  %118 = icmp eq i32 %7, 0
  br i1 %118, label %212, label %119

119:                                              ; preds = %117
  %120 = load i32, ptr %115, align 8
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 255
  %123 = icmp eq i32 %122, %7
  br i1 %123, label %212, label %124

124:                                              ; preds = %119
  %125 = icmp eq ptr %0, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %124
  %127 = tail call ptr @gen_reg_rtx(i32 noundef %7) #9
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi ptr [ %0, %124 ], [ %127, %126 ]
  %130 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %131 = sext i32 %130 to i64
  %132 = load i32, ptr @word_mode, align 4, !tbaa !24
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !12
  %136 = zext i8 %135 to i64
  %137 = shl nuw nsw i64 %136, 3
  %138 = add nuw nsw i64 %137, 4294967295
  %139 = and i64 %138, 4294967295
  %140 = shl nuw i64 1, %139
  %141 = and i64 %140, %131
  %142 = icmp eq i64 %141, 0
  %143 = zext i1 %142 to i32
  tail call void @convert_move(ptr noundef %129, ptr noundef nonnull %115, i32 noundef %143) #9
  br label %212

144:                                              ; preds = %105, %104, %90, %77, %114, %73, %66
  %145 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %146 = icmp eq ptr %67, %145
  br i1 %146, label %147, label %186

147:                                              ; preds = %144
  %148 = icmp eq i32 %68, 82
  switch i32 %68, label %186 [
    i32 85, label %149
    i32 82, label %149
  ]

149:                                              ; preds = %147, %147
  %150 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %69
  %151 = load i8, ptr %150, align 1, !tbaa !12
  %152 = icmp eq i8 %151, 2
  br i1 %152, label %153, label %186

153:                                              ; preds = %149
  %154 = icmp eq ptr %0, null
  br i1 %154, label %163, label %155

155:                                              ; preds = %153
  %156 = zext nneg i32 %7 to i64
  %157 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !12
  %159 = load i8, ptr %70, align 1, !tbaa !12
  %160 = icmp ugt i8 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = tail call ptr @convert_modes(i32 noundef %7, i32 noundef %29, ptr noundef %21, i32 noundef 0) #9
  br label %163

163:                                              ; preds = %153, %155, %161
  %164 = phi i32 [ %7, %161 ], [ %7, %155 ], [ %29, %153 ]
  %165 = phi i32 [ %7, %161 ], [ %29, %155 ], [ %29, %153 ]
  %166 = phi ptr [ %162, %161 ], [ %21, %155 ], [ %21, %153 ]
  %167 = icmp eq i32 %164, %165
  %168 = select i1 %167, ptr %0, ptr null
  br i1 %148, label %169, label %171

169:                                              ; preds = %163
  %170 = tail call ptr @expand_unop(i32 noundef %165, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %166, ptr noundef null, i32 noundef 0) #9
  br label %171

171:                                              ; preds = %169, %163
  %172 = phi ptr [ %170, %169 ], [ %166, %163 ]
  %173 = zext i32 %165 to i64
  %174 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !12
  %176 = zext i8 %175 to i32
  %177 = shl nuw nsw i32 %176, 3
  %178 = add nsw i32 %177, -1
  %179 = sext i32 %178 to i64
  %180 = tail call ptr @size_int_kind(i64 noundef %179, i32 noundef 0) #9
  %181 = icmp ne i32 %6, -1
  %182 = zext i1 %181 to i32
  %183 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %165, ptr noundef %172, ptr noundef %180, ptr noundef %168, i32 noundef %182) #10
  br i1 %167, label %212, label %184

184:                                              ; preds = %171
  %185 = tail call ptr @convert_modes(i32 noundef %164, i32 noundef %165, ptr noundef %183, i32 noundef 0) #9
  br label %212

186:                                              ; preds = %147, %149, %144
  %187 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %69
  %188 = load i8, ptr %187, align 1, !tbaa !12
  %189 = icmp eq i32 %29, 0
  br i1 %189, label %212, label %190

190:                                              ; preds = %186
  %191 = icmp eq i8 %188, 1
  br label %192

192:                                              ; preds = %190, %206
  %193 = phi i32 [ %29, %190 ], [ %210, %206 ]
  %194 = sext i32 %193 to i64
  %195 = select i1 %191, i64 2, i64 %194
  %196 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !32
  %198 = icmp eq i32 %197, 2956
  br i1 %198, label %206, label %199

199:                                              ; preds = %192
  tail call void @do_pending_stack_adjust() #9
  %200 = tail call fastcc ptr @emit_cstore(ptr noundef %0, i32 noundef %197, i32 noundef %68, i32 noundef %29, i32 noundef %193, i32 noundef %5, ptr noundef %21, ptr noundef %67, i32 noundef %6, i32 noundef %7) #10
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = icmp eq i8 %188, 8
  br i1 %203, label %204, label %212

204:                                              ; preds = %202
  %205 = tail call fastcc ptr @emit_cstore(ptr noundef %0, i32 noundef %197, i32 noundef %14, i32 noundef %29, i32 noundef %193, i32 noundef %5, ptr noundef %67, ptr noundef %21, i32 noundef %6, i32 noundef %7) #10
  br label %212

206:                                              ; preds = %192
  %207 = zext i32 %193 to i64
  %208 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !12
  %210 = zext i8 %209 to i32
  %211 = icmp eq i8 %209, 0
  br i1 %211, label %212, label %192, !llvm.loop !106

212:                                              ; preds = %206, %186, %204, %199, %202, %171, %184, %117, %119, %128
  %213 = phi ptr [ %129, %128 ], [ %115, %119 ], [ %115, %117 ], [ %185, %184 ], [ %183, %171 ], [ null, %202 ], [ %200, %199 ], [ %205, %204 ], [ null, %186 ], [ null, %206 ]
  ret ptr %213
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
define internal fastcc ptr @emit_cstore(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !28
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
  br i1 %23, label %24, label %48

24:                                               ; preds = %10
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %25, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 2, i32 2
  %31 = load i16, ptr %30, align 8
  %32 = zext i16 %31 to i32
  %33 = tail call i32 %29(ptr noundef nonnull %18, i32 noundef %32) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 3
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 3, i32 2
  %39 = load i16, ptr %38, align 8
  %40 = zext i16 %39 to i32
  %41 = tail call i32 %37(ptr noundef nonnull %19, i32 noundef %40) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = tail call i32 %45(ptr noundef %20, i32 noundef 0) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %35, %24, %10
  tail call void @delete_insns_since(ptr noundef %17) #9
  br label %101

49:                                               ; preds = %43
  %50 = icmp eq i32 %9, 0
  %51 = select i1 %50, i32 %16, i32 %9
  %52 = icmp eq ptr %0, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = tail call ptr @gen_reg_rtx(i32 noundef %51) #9
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ %0, %49 ], [ %54, %53 ]
  %57 = load i32, ptr @optimize, align 4, !tbaa !24
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load ptr, ptr %13, align 8, !tbaa !34
  %61 = tail call i32 %60(ptr noundef %56, i32 noundef %16) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %55
  %64 = tail call ptr @gen_reg_rtx(i32 noundef %16) #9
  br label %65

65:                                               ; preds = %59, %63
  %66 = phi ptr [ %64, %63 ], [ %56, %59 ]
  %67 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %25, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !36
  %69 = tail call ptr (ptr, ...) %68(ptr noundef %66, ptr noundef %20, ptr noundef nonnull %18, ptr noundef nonnull %19) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %101, label %71

71:                                               ; preds = %65
  %72 = tail call ptr @emit_insn(ptr noundef nonnull %69) #9
  %73 = zext nneg i32 %51 to i64
  %74 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !12
  %76 = zext i16 %15 to i64
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !12
  %79 = icmp ugt i8 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = icmp ult i8 %78, 9
  %82 = zext i1 %81 to i32
  tail call void @convert_move(ptr noundef %56, ptr noundef %66, i32 noundef %82) #9
  br label %83

83:                                               ; preds = %71, %80
  %84 = phi ptr [ %56, %80 ], [ %66, %71 ]
  %85 = phi i32 [ %51, %80 ], [ %16, %71 ]
  %86 = load i32, ptr @optimize, align 4, !tbaa !24
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, ptr %66, ptr null
  %89 = icmp ult i32 %8, 2
  br i1 %89, label %97, label %90

90:                                               ; preds = %83
  %91 = icmp eq i32 %8, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = tail call ptr @expand_unop(i32 noundef %85, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %84, ptr noundef %88, i32 noundef 0) #9
  br label %97

94:                                               ; preds = %90
  %95 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !6
  %96 = tail call ptr @expand_and(i32 noundef %85, ptr noundef %84, ptr noundef %95, ptr noundef %88) #10
  br label %97

97:                                               ; preds = %94, %92, %83
  %98 = phi ptr [ %84, %83 ], [ %93, %92 ], [ %96, %94 ]
  %99 = icmp eq i32 %51, %85
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void @convert_move(ptr noundef %56, ptr noundef %98, i32 noundef 0) #9
  br label %101

101:                                              ; preds = %97, %65, %100, %48
  %102 = phi ptr [ %56, %100 ], [ null, %48 ], [ null, %65 ], [ %98, %97 ]
  ret ptr %102
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !8, i64 478}
!14 = !{!"rtl_data", !15, i64 0, !17, i64 40, !18, i64 96, !19, i64 112, !21, i64 208, !22, i64 248, !16, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !23, i64 400, !7, i64 408, !7, i64 416, !7, i64 424, !16, i64 432, !16, i64 436, !16, i64 440, !16, i64 444, !16, i64 448, !16, i64 452, !7, i64 456, !8, i64 464, !8, i64 465, !8, i64 466, !8, i64 467, !8, i64 468, !8, i64 469, !8, i64 470, !8, i64 471, !8, i64 472, !8, i64 473, !8, i64 474, !8, i64 475, !8, i64 476, !8, i64 477, !8, i64 478, !8, i64 479, !8, i64 480, !8, i64 481, !8, i64 482, !8, i64 483, !8, i64 484, !8, i64 485}
!15 = !{!"expr_status", !16, i64 0, !16, i64 4, !16, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!16 = !{!"int", !8, i64 0}
!17 = !{!"emit_status", !16, i64 0, !16, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !7, i64 48}
!18 = !{!"varasm_status", !7, i64 0, !16, i64 8}
!19 = !{!"incoming_args", !16, i64 0, !16, i64 4, !16, i64 8, !7, i64 16, !20, i64 24, !7, i64 88}
!20 = !{!"ix86_args", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60}
!21 = !{!"function_subsections", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!22 = !{!"rtl_eh", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !8, i64 48}
!23 = !{!"long", !8, i64 0}
!24 = !{!16, !16, i64 0}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = !{!29, !7, i64 24}
!29 = !{!"insn_data", !7, i64 0, !8, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35}
!30 = !{i8 0, i8 2}
!31 = distinct !{!31, !11}
!32 = !{!33, !16, i64 0}
!33 = !{!"optab_handlers", !16, i64 0}
!34 = !{!35, !7, i64 0}
!35 = !{!"insn_operand_data", !7, i64 0, !7, i64 8, !16, i64 16, !8, i64 18, !8, i64 19}
!36 = !{!29, !7, i64 16}
!37 = !{!38, !7, i64 0}
!38 = !{!"rtl_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!39 = distinct !{!39, !11}
!40 = !{!41, !16, i64 28}
!41 = !{!"mem_attrs", !7, i64 0, !7, i64 8, !7, i64 16, !16, i64 24, !16, i64 28, !8, i64 32}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = !{!49, !7, i64 1240}
!49 = !{!"gcc_target", !50, i64 0, !52, i64 368, !53, i64 664, !16, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !23, i64 1064, !23, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !54, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !23, i64 1464, !55, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !56, i64 1784, !57, i64 1792, !58, i64 1896, !59, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!50 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !51, i64 24, !51, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!51 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!52 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!53 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!54 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!55 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!56 = !{!"c", !7, i64 0}
!57 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!58 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!59 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = !{!64, !16, i64 0}
!64 = !{!"rtvec_def", !16, i64 0, !8, i64 8}
!65 = distinct !{!65, !11}
!66 = !{!67, !7, i64 448}
!67 = !{!"lang_hooks", !7, i64 0, !23, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !68, i64 240, !69, i64 248, !70, i64 256, !71, i64 272, !72, i64 432, !73, i64 560, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !8, i64 672}
!68 = !{!"lang_hooks_for_tree_inlining", !7, i64 0}
!69 = !{!"lang_hooks_for_callgraph", !7, i64 0}
!70 = !{!"lang_hooks_for_tree_dump", !7, i64 0, !7, i64 8}
!71 = !{!"lang_hooks_for_decls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!72 = !{!"lang_hooks_for_types", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !8, i64 120}
!73 = !{!"lang_hooks_for_lto", !7, i64 0, !7, i64 8, !7, i64 16}
!74 = !{i64 0, i64 65}
!75 = !{i64 0, i64 4, !24, i64 0, i64 4, !24, i64 0, i64 4, !24, i64 0, i64 4, !24, i64 0, i64 4, !24, i64 0, i64 4, !24, i64 8, i64 24, !12}
!76 = !{!77, !78, i64 0}
!77 = !{!"mult_cost", !78, i64 0, !78, i64 2}
!78 = !{!"short", !8, i64 0}
!79 = !{!77, !78, i64 2}
!80 = !{!81, !78, i64 0}
!81 = !{!"algorithm", !77, i64 0, !78, i64 4, !8, i64 8, !8, i64 136}
!82 = !{!81, !78, i64 2}
!83 = !{i64 0, i64 2, !84, i64 2, i64 2, !84, i64 4, i64 2, !84, i64 8, i64 128, !12, i64 136, i64 32, !12}
!84 = !{!78, !78, i64 0}
!85 = !{!81, !78, i64 4}
!86 = distinct !{!86, !11}
!87 = !{!23, !23, i64 0}
!88 = !{!89, !23, i64 0}
!89 = !{!"alg_hash_entry", !23, i64 0, !16, i64 8, !16, i64 12, !77, i64 16, !8, i64 20}
!90 = !{!89, !16, i64 8}
!91 = !{!89, !8, i64 20}
!92 = !{!89, !16, i64 12}
!93 = !{!89, !78, i64 16}
!94 = !{!89, !78, i64 18}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = !{i64 0, i64 2, !84, i64 2, i64 2, !84}
!98 = !{i64 0, i64 2, !84}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = !{i64 0, i64 64}
!102 = !{!103, !8, i64 46}
!103 = !{!"real_format", !7, i64 0, !7, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !8, i64 44, !8, i64 45, !8, i64 46, !8, i64 47, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, !11}
!106 = distinct !{!106, !11}
