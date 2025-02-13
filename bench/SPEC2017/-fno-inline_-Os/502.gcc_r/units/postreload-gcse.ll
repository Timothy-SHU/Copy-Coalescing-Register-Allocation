; ModuleID = 'postreload-gcse.c'
source_filename = "postreload-gcse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
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
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.expr = type { ptr, i32, ptr }
%struct.modifies_mem = type { ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.occr = type { ptr, ptr, i8 }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.unoccr = type { ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [6 x i8] c"gcse2\00", align 1
@pass_gcse2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_gcse2, ptr @rest_of_handle_gcse2, ptr null, ptr null, i32 0, i32 152, i32 0, i32 0, i32 0, i32 0, i32 1035 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_gcse_after_reload = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@stats = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@expr_table = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"GCSE AFTER RELOAD stats:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"copies inserted: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"moves inserted:  %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"insns deleted:   %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@uid_cuid = internal unnamed_addr global ptr null, align 8
@expr_obstack = internal global %struct.obstack zeroinitializer, align 8
@occr_obstack = internal global %struct.obstack zeroinitializer, align 8
@unoccr_obstack = internal global %struct.obstack zeroinitializer, align 8
@modifies_mem_obstack = internal global %struct.obstack zeroinitializer, align 8
@reg_avail_info = internal unnamed_addr global ptr null, align 8
@modifies_mem_obstack_bottom = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"postreload-gcse.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@modifies_mem_list = internal unnamed_addr global ptr null, align 8
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@flag_float_store = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@mems_conflict_p = internal unnamed_addr global i1 false, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"\0A\0Aexpression hash table\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"size %ld, %ld elements, %f collision/search ratio\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\0A\0Atable entries:\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"expr: \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\0Ahashcode: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"list of occurrences:\0A\00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@profile_info = external local_unnamed_addr global ptr, align 8
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c"generating move from %d to %d on edge from %d to %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"generating on edge from %d to %d a copy of load: \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"deleting insn:\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_gcse2() #0 !prof !158 !PGOFuncName !159 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !160
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse_after_reload, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %11, !prof !164

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !165
  %8 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %7) #13
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %0
  %12 = phi i8 [ 0, %0 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_gcse2() #0 !prof !158 !PGOFuncName !167 {
  %1 = tail call ptr @get_insns() #13
  tail call fastcc void @gcse_after_reload_main() #14
  %2 = tail call ptr @get_insns() #13
  tail call void @rebuild_jump_labels(ptr noundef %2) #13
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gcse_after_reload_main() unnamed_addr #0 !prof !158 !PGOFuncName !168 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @stats, i8 0, i64 12, i1 false)
  tail call fastcc void @alloc_mem() #14
  tail call void @init_alias_analysis() #13
  tail call fastcc void @compute_hash_table() #14
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !169

3:                                                ; preds = %0
  tail call fastcc void @dump_hash_table(ptr noundef nonnull %1) #14
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @expr_table, align 8, !tbaa !165
  %6 = tail call i64 @htab_elements(ptr noundef %5) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %24, label %8, !prof !170

8:                                                ; preds = %4
  tail call fastcc void @eliminate_partially_redundant_loads() #14
  tail call fastcc void @delete_redundant_insns() #14
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11, !prof !169

11:                                               ; preds = %8
  %12 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr nonnull %9)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %14 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !171
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef %14) #14
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %17 = load i32, ptr @stats, align 4, !tbaa !173
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %17) #14
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %20 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !174
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.4, i32 noundef %20) #14
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %23 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %22)
  br label %24

24:                                               ; preds = %8, %11, %4
  tail call void @end_alias_analysis() #13
  tail call fastcc void @free_mem() #14
  ret void
}

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #1

; Function Attrs: optsize
declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_mem() unnamed_addr #0 !prof !158 !PGOFuncName !175 {
  %1 = tail call i32 @get_max_uid() #13
  %2 = add nsw i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 4) #13
  store ptr %4, ptr @uid_cuid, align 8, !tbaa !165
  %5 = load ptr, ptr @cfun, align 8, !tbaa !165
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !176
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !180
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %55, label %14, !prof !184

14:                                               ; preds = %0, %44
  %15 = phi ptr [ %48, %44 ], [ %12, %0 ]
  %16 = phi i32 [ %46, %44 ], [ 1, %0 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  %19 = load ptr, ptr %18, align 8, !tbaa !185
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21, !prof !186

21:                                               ; preds = %14, %30
  %22 = phi ptr [ %42, %30 ], [ %19, %14 ]
  %23 = phi i32 [ %36, %30 ], [ %16, %14 ]
  %24 = load ptr, ptr %17, align 8, !tbaa !185
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !185
  %29 = icmp eq ptr %22, %28
  br i1 %29, label %44, label %30, !prof !189

30:                                               ; preds = %21
  %31 = load i32, ptr %22, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %23, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !185
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %4, i64 %39
  store i32 %23, ptr %40, align 4, !tbaa !160
  %41 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !185
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %21, !prof !190, !llvm.loop !191

44:                                               ; preds = %30, %21, %14
  %45 = phi i32 [ %16, %14 ], [ %23, %21 ], [ %36, %30 ]
  %46 = freeze i32 %45
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !181
  %49 = icmp eq ptr %48, %10
  br i1 %49, label %50, label %14, !prof !193, !llvm.loop !194

50:                                               ; preds = %44
  %51 = icmp sgt i32 %46, 55
  %52 = lshr i32 %46, 2
  %53 = select i1 %51, i32 %52, i32 13, !prof !195
  %54 = zext nneg i32 %53 to i64
  br label %55

55:                                               ; preds = %50, %0
  %56 = phi i64 [ 13, %0 ], [ %54, %50 ]
  %57 = tail call ptr @htab_create(i64 noundef %56, ptr noundef nonnull @hash_expr_for_htab, ptr noundef nonnull @expr_equiv_p, ptr noundef null) #13
  store ptr %57, ptr @expr_table, align 8, !tbaa !165
  %58 = tail call i32 @_obstack_begin(ptr noundef nonnull @expr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %59 = tail call i32 @_obstack_begin(ptr noundef nonnull @occr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %60 = tail call i32 @_obstack_begin(ptr noundef nonnull @unoccr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %61 = tail call i32 @_obstack_begin(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %62 = tail call ptr @xmalloc(i64 noundef 212) #13
  store ptr %62, ptr @reg_avail_info, align 8, !tbaa !165
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !196
  %63 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !198
  %64 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !199
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = icmp slt i64 %67, 16
  br i1 %68, label %69, label %72, !prof !170

69:                                               ; preds = %55
  tail call void @_obstack_newchunk(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 16) #13
  %70 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !196
  %71 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %72

72:                                               ; preds = %55, %69
  %73 = phi ptr [ %64, %55 ], [ %71, %69 ]
  %74 = phi i64 [ 16, %55 ], [ %70, %69 ]
  %75 = getelementptr inbounds i8, ptr %73, i64 %74
  %76 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !200
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %81, !prof !170

78:                                               ; preds = %72
  %79 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  %80 = or i8 %79, 2
  store i8 %80, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  br label %81

81:                                               ; preds = %72, %78
  %82 = ptrtoint ptr %76 to i64
  store i64 %82, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !196
  %83 = ptrtoint ptr %75 to i64
  %84 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 6), align 8, !tbaa !201
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = xor i32 %84, -1
  %88 = sext i32 %87 to i64
  %89 = and i64 %86, %88
  %90 = inttoptr i64 %89 to ptr
  %91 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !202
  %92 = ptrtoint ptr %91 to i64
  %93 = sub i64 %89, %92
  %94 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !198
  %95 = ptrtoint ptr %94 to i64
  %96 = sub i64 %95, %92
  %97 = icmp sgt i64 %93, %96
  %98 = select i1 %97, ptr %94, ptr %90, !prof !170
  store ptr %98, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8
  store ptr %98, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %76, ptr @modifies_mem_obstack_bottom, align 8, !tbaa !165
  ret void
}

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_hash_table() unnamed_addr #0 !prof !158 !PGOFuncName !203 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !180
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %73, label %10, !prof !184

10:                                               ; preds = %0, %64
  %11 = phi ptr [ %66, %64 ], [ %6, %0 ]
  tail call fastcc void @reset_opr_set_tables() #14
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !185
  %14 = load ptr, ptr %13, align 8, !tbaa !185
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16, !prof !186

16:                                               ; preds = %10, %30
  %17 = phi ptr [ %32, %30 ], [ %14, %10 ]
  %18 = load ptr, ptr %12, align 8, !tbaa !185
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !187
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !185
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %36, label %24, !prof !189

24:                                               ; preds = %16
  %25 = load i32, ptr %17, align 8
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, -7
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %30, !prof !204

29:                                               ; preds = %24
  tail call fastcc void @record_opr_changes(ptr noundef nonnull %17) #14
  br label %30

30:                                               ; preds = %24, %29
  %31 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !185
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %16, !prof !190, !llvm.loop !205

34:                                               ; preds = %30
  %35 = load ptr, ptr %12, align 8, !tbaa !185
  br label %36

36:                                               ; preds = %16, %34
  %37 = phi ptr [ %35, %34 ], [ %18, %16 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !185
  %39 = icmp eq ptr %38, null
  br i1 %39, label %64, label %40, !prof !206

40:                                               ; preds = %36, %60
  %41 = phi ptr [ %62, %60 ], [ %38, %36 ]
  %42 = load ptr, ptr %12, align 8, !tbaa !185
  %43 = getelementptr inbounds %struct.rtl_bb_info, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !187
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !185
  %47 = icmp eq ptr %41, %46
  br i1 %47, label %64, label %48, !prof !189

48:                                               ; preds = %40
  %49 = load i32, ptr %41, align 8
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -7
  %52 = icmp ult i32 %51, 4
  br i1 %52, label %53, label %60, !prof !204

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !185
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 23
  br i1 %58, label %59, label %60, !prof !207

59:                                               ; preds = %53
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %41) #14
  br label %60

60:                                               ; preds = %48, %53, %59
  %61 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !185
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %40, !prof !190, !llvm.loop !208

64:                                               ; preds = %40, %60, %10, %36
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !181
  %67 = load ptr, ptr @cfun, align 8, !tbaa !165
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !176
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !180
  %72 = icmp eq ptr %66, %71
  br i1 %72, label %73, label %10, !prof !193, !llvm.loop !209

73:                                               ; preds = %64, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_hash_table(ptr noundef %0) unnamed_addr #0 !prof !210 !PGOFuncName !211 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 24, i64 1, ptr %0)
  %3 = load ptr, ptr @expr_table, align 8, !tbaa !165
  %4 = tail call i64 @htab_size(ptr noundef %3) #13
  %5 = load ptr, ptr @expr_table, align 8, !tbaa !165
  %6 = tail call i64 @htab_elements(ptr noundef %5) #13
  %7 = load ptr, ptr @expr_table, align 8, !tbaa !165
  %8 = tail call double @htab_collisions(ptr noundef %7) #13
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %4, i64 noundef %6, double noundef %8) #14
  %10 = load ptr, ptr @expr_table, align 8, !tbaa !165
  %11 = tail call i64 @htab_elements(ptr noundef %10) #13
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 17, i64 1, ptr %0)
  %15 = load ptr, ptr @expr_table, align 8, !tbaa !165
  tail call void @htab_traverse(ptr noundef %15, ptr noundef nonnull @dump_hash_table_entry, ptr noundef %0) #13
  br label %16

16:                                               ; preds = %13, %1
  %17 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_partially_redundant_loads() unnamed_addr #0 !prof !158 !PGOFuncName !212 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !180
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %99, label %10, !prof !170

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %98, label %14, !prof !184

14:                                               ; preds = %10, %89
  %15 = phi ptr [ %91, %89 ], [ %12, %10 ]
  %16 = tail call fastcc zeroext i8 @bb_has_well_behaved_predecessors(ptr noundef %15) #14, !range !213
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %89, label %18, !prof !214

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %15) #13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %89, !prof !215

21:                                               ; preds = %18
  tail call fastcc void @reset_opr_set_tables() #14
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !185
  %24 = load ptr, ptr %23, align 8, !tbaa !185
  %25 = icmp eq ptr %24, null
  br i1 %25, label %89, label %26, !prof !186

26:                                               ; preds = %21, %85
  %27 = phi ptr [ %87, %85 ], [ %24, %21 ]
  %28 = load ptr, ptr %22, align 8, !tbaa !185
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !187
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !185
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %89, label %34, !prof !216

34:                                               ; preds = %26
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %79, !prof !217

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !185
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 23
  br i1 %43, label %44, label %79, !prof !218

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !185
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %79, !prof !219

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !185
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 134283263
  %55 = icmp eq i32 %54, 43
  br i1 %55, label %56, label %79, !prof !220

56:                                               ; preds = %50
  %57 = lshr i32 %53, 16
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %79, label %60, !prof !221

60:                                               ; preds = %56
  %61 = tail call i32 @general_operand(ptr noundef nonnull %52, i32 noundef %58) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63, !prof !221

63:                                               ; preds = %60
  %64 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef nonnull %52, ptr noundef nonnull %27, i8 noundef zeroext 0) #14, !range !213
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %79, label %66, !prof !222

66:                                               ; preds = %63
  %67 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !160
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69, !prof !223

69:                                               ; preds = %66
  %70 = tail call i32 @may_trap_p(ptr noundef nonnull %52) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69, %66
  %73 = tail call i32 @side_effects_p(ptr noundef nonnull %52) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79, !prof !223

75:                                               ; preds = %72
  %76 = tail call fastcc ptr @lookup_expr_in_table(ptr noundef nonnull %52) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78, !prof !224

78:                                               ; preds = %75
  tail call fastcc void @eliminate_partially_redundant_load(ptr noundef nonnull %15, ptr noundef nonnull %27, ptr noundef nonnull %76) #14
  br label %79

79:                                               ; preds = %56, %60, %63, %69, %72, %75, %78, %50, %44, %38, %34
  %80 = load i32, ptr %27, align 8
  %81 = and i32 %80, 65535
  %82 = add nsw i32 %81, -7
  %83 = icmp ult i32 %82, 4
  br i1 %83, label %84, label %85, !prof !225

84:                                               ; preds = %79
  tail call fastcc void @record_opr_changes(ptr noundef nonnull %27) #14
  br label %85

85:                                               ; preds = %79, %84
  %86 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %87 = load ptr, ptr %86, align 8, !tbaa !185
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %26, !prof !226, !llvm.loop !227

89:                                               ; preds = %85, %26, %21, %18, %14
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !181
  %92 = load ptr, ptr @cfun, align 8, !tbaa !165
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !176
  %95 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !180
  %97 = icmp eq ptr %91, %96
  br i1 %97, label %98, label %14, !prof !228, !llvm.loop !229

98:                                               ; preds = %89, %10
  tail call void @commit_edge_insertions() #13
  br label %99

99:                                               ; preds = %0, %98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_redundant_insns() unnamed_addr #0 !prof !158 !PGOFuncName !230 {
  %1 = load ptr, ptr @expr_table, align 8, !tbaa !165
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @delete_redundant_insns_1, ptr noundef null) #13
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !169

4:                                                ; preds = %0
  %5 = tail call i32 @fputc(i32 10, ptr nonnull %2)
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_mem() unnamed_addr #0 !prof !158 !PGOFuncName !231 {
  %1 = load ptr, ptr @uid_cuid, align 8, !tbaa !165
  tail call void @free(ptr noundef %1) #14
  %2 = load ptr, ptr @expr_table, align 8, !tbaa !165
  tail call void @htab_delete(ptr noundef %2) #13
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 0, %4
  store i64 %5, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %14, !prof !170

7:                                                ; preds = %0
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %9 = ptrtoint ptr %8 to i64
  %10 = sub i64 %9, %4
  %11 = icmp sgt i64 %10, %5
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %3, i64 %5
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %16

14:                                               ; preds = %7, %0
  %15 = getelementptr inbounds i8, ptr %3, i64 %5
  tail call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %15) #13
  br label %16

16:                                               ; preds = %14, %12
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 0, %18
  store i64 %19, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %28, !prof !170

21:                                               ; preds = %16
  %22 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %18
  %25 = icmp sgt i64 %24, %19
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, ptr %17, i64 %19
  store ptr %27, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %27, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %30

28:                                               ; preds = %21, %16
  %29 = getelementptr inbounds i8, ptr %17, i64 %19
  tail call void @obstack_free(ptr noundef nonnull @occr_obstack, ptr noundef %29) #13
  br label %30

30:                                               ; preds = %28, %26
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 0, %32
  store i64 %33, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %42, !prof !170

35:                                               ; preds = %30
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %37, %32
  %39 = icmp sgt i64 %38, %33
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %31, i64 %33
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %44

42:                                               ; preds = %35, %30
  %43 = getelementptr inbounds i8, ptr %31, i64 %33
  tail call void @obstack_free(ptr noundef nonnull @unoccr_obstack, ptr noundef %43) #13
  br label %44

44:                                               ; preds = %42, %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !202
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 0, %46
  store i64 %47, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !196
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %56, !prof !170

49:                                               ; preds = %44
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !198
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %51, %46
  %53 = icmp sgt i64 %52, %47
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %45, i64 %47
  store ptr %55, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %55, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %58

56:                                               ; preds = %49, %44
  %57 = getelementptr inbounds i8, ptr %45, i64 %47
  tail call void @obstack_free(ptr noundef nonnull @modifies_mem_obstack, ptr noundef %57) #13
  br label %58

58:                                               ; preds = %56, %54
  %59 = load ptr, ptr @reg_avail_info, align 8, !tbaa !165
  tail call void @free(ptr noundef %59) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @hash_expr_for_htab(ptr nocapture noundef readonly %0) #5 !prof !232 !PGOFuncName !233 {
  %2 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !234
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @expr_equiv_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !236 !PGOFuncName !237 {
  %3 = load ptr, ptr %0, align 8, !tbaa !238
  %4 = load ptr, ptr %1, align 8, !tbaa !238
  %5 = tail call i32 @exp_equiv_p(ptr noundef %3, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 1) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7, !prof !239

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !234
  %10 = getelementptr inbounds %struct.expr, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !234
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %14, label %13, !prof !240

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 314, ptr noundef nonnull @.str.7) #13
  br label %14

14:                                               ; preds = %2, %7, %13
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #6

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_opr_set_tables() unnamed_addr #0 !prof !241 !PGOFuncName !242 {
  %1 = load ptr, ptr @reg_avail_info, align 8, !tbaa !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %1, i8 0, i64 212, i1 false)
  %2 = load ptr, ptr @modifies_mem_obstack_bottom, align 8, !tbaa !165
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !202
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  store i64 %6, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !196
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %15, !prof !243

8:                                                ; preds = %0
  %9 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !198
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp slt i64 %6, %11
  br i1 %12, label %13, label %15, !prof !243

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %3, i64 %6
  store ptr %14, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %14, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %17

15:                                               ; preds = %8, %0
  %16 = getelementptr inbounds i8, ptr %3, i64 %6
  tail call void @obstack_free(ptr noundef nonnull @modifies_mem_obstack, ptr noundef %16) #13
  br label %17

17:                                               ; preds = %15, %13
  store ptr null, ptr @modifies_mem_list, align 8, !tbaa !165
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_opr_changes(ptr noundef %0) unnamed_addr #0 !prof !244 !PGOFuncName !245 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  tail call void @note_stores(ptr noundef %3, ptr noundef nonnull @record_last_set_info, ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !prof !246

7:                                                ; preds = %1, %15
  %8 = phi ptr [ %17, %15 ], [ %5, %1 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 131072
  br i1 %11, label %12, label %15, !prof !247

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !185
  tail call fastcc void @record_last_reg_set_info(ptr noundef %0, ptr noundef %14) #14
  br label %15

15:                                               ; preds = %7, %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !prof !248, !llvm.loop !249

19:                                               ; preds = %15, %1
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %69, !prof !250

23:                                               ; preds = %19
  %24 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !251
  br label %25

25:                                               ; preds = %23, %34
  %26 = phi i64 [ %24, %23 ], [ %35, %34 ]
  %27 = phi i64 [ 0, %23 ], [ %36, %34 ]
  %28 = shl nuw nsw i64 1, %27
  %29 = and i64 %26, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31, !prof !252

31:                                               ; preds = %25
  %32 = trunc i64 %27 to i32
  tail call fastcc void @record_last_reg_set_info_regno(ptr noundef nonnull %0, i32 noundef %32) #14
  %33 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !251
  br label %34

34:                                               ; preds = %25, %31
  %35 = phi i64 [ %26, %25 ], [ %33, %31 ]
  %36 = add nuw nsw i64 %27, 1
  %37 = icmp eq i64 %36, 53
  br i1 %37, label %38, label %25, !prof !253, !llvm.loop !254

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !185
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42, !prof !255

42:                                               ; preds = %38, %60
  %43 = phi ptr [ %62, %60 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !185
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 25
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !185
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %51) #14
  %57 = icmp ult i32 %56, 53
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 757, ptr noundef nonnull @.str.7) #13
  br label %59

59:                                               ; preds = %55, %58
  tail call fastcc void @record_last_reg_set_info(ptr noundef nonnull %0, ptr noundef nonnull %51) #14
  br label %60

60:                                               ; preds = %42, %59, %49
  %61 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !185
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %42, !prof !256, !llvm.loop !257

64:                                               ; preds = %60, %38
  %65 = load i32, ptr %0, align 8
  %66 = and i32 %65, -2080374784
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69, !prof !258

68:                                               ; preds = %64
  tail call fastcc void @record_last_mem_set_info(ptr noundef nonnull %0) #14
  br label %69

69:                                               ; preds = %64, %68, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hash_scan_set(ptr noundef %0) unnamed_addr #0 !prof !259 !PGOFuncName !260 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = load ptr, ptr %5, align 8, !tbaa !185
  %9 = load i32, ptr %7, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %16, label %12, !prof !261

12:                                               ; preds = %1
  %13 = load i32, ptr %8, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %16, label %92, !prof !262

16:                                               ; preds = %12, %1
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %92, label %20, !prof !263

20:                                               ; preds = %16
  %21 = tail call i32 @set_noop_p(ptr noundef nonnull %4) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %92, !prof !264

23:                                               ; preds = %20
  %24 = load i32, ptr %8, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %46, !prof !265

27:                                               ; preds = %23
  %28 = lshr i32 %24, 16
  %29 = and i32 %28, 255
  %30 = tail call zeroext i8 @can_copy_p(i32 noundef %29) #13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %92, label %32, !prof !266

32:                                               ; preds = %27
  %33 = load i32, ptr %7, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = tail call i32 @general_operand(ptr noundef nonnull %7, i32 noundef %35) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %92, label %38, !prof !266

38:                                               ; preds = %32
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #14
  %40 = icmp ult i32 %39, 8
  br i1 %40, label %43, label %41, !prof !267

41:                                               ; preds = %38
  %42 = icmp ugt i32 %39, 15
  br i1 %42, label %43, label %92

43:                                               ; preds = %41, %38
  %44 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef nonnull %7, ptr noundef nonnull %0, i8 noundef zeroext 1) #14, !range !213
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %92, label %90, !prof !268

46:                                               ; preds = %23
  %47 = load i32, ptr %7, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %92, !prof !269

50:                                               ; preds = %46
  %51 = lshr i32 %47, 16
  %52 = and i32 %51, 255
  %53 = tail call zeroext i8 @can_copy_p(i32 noundef %52) #13
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %92, label %55, !prof !270

55:                                               ; preds = %50
  %56 = load i32, ptr %8, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = tail call i32 @general_operand(ptr noundef nonnull %8, i32 noundef %58) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %92, label %61, !prof !270

61:                                               ; preds = %55
  %62 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #14
  %63 = icmp ult i32 %62, 8
  br i1 %63, label %66, label %64, !prof !271

64:                                               ; preds = %61
  %65 = icmp ugt i32 %62, 15
  br i1 %65, label %66, label %92

66:                                               ; preds = %64, %61
  %67 = load i32, ptr @flag_float_store, align 4, !tbaa !160
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69, !prof !271

69:                                               ; preds = %66
  %70 = load i32, ptr %8, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !185
  switch i8 %75, label %76 [
    i8 8, label %92
    i8 9, label %92
    i8 11, label %92
    i8 17, label %92
  ]

76:                                               ; preds = %69, %66
  %77 = load ptr, ptr @uid_cuid, align 8, !tbaa !165
  %78 = load i32, ptr %2, align 8, !tbaa !185
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %77, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !160
  %82 = add nsw i32 %81, 1
  %83 = tail call fastcc i32 @load_killed_in_block_p(i32 noundef %82, ptr noundef nonnull %8, i8 noundef zeroext 1) #14
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92, !prof !272

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !185
  %88 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %87, ptr noundef nonnull %0, i8 noundef zeroext 1) #14, !range !213
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90, !prof !273

90:                                               ; preds = %85, %43
  %91 = phi ptr [ %7, %43 ], [ %8, %85 ]
  tail call fastcc void @insert_expr_in_table(ptr noundef nonnull %91, ptr noundef nonnull %0) #14
  br label %92

92:                                               ; preds = %90, %43, %41, %32, %27, %50, %55, %64, %76, %85, %46, %69, %69, %69, %69, %16, %20, %12
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @record_last_set_info(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !274 !PGOFuncName !275 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %11, !prof !276

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  %13 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %14 = trunc i32 %12 to i16
  switch i16 %14, label %23 [
    i16 37, label %15
    i16 43, label %16
  ], !prof !277

15:                                               ; preds = %11
  tail call fastcc void @record_last_reg_set_info(ptr noundef %2, ptr noundef nonnull %13) #14
  br label %23

16:                                               ; preds = %11
  %17 = lshr i32 %12, 16
  %18 = and i32 %17, 255
  %19 = tail call i32 @push_operand(ptr noundef nonnull %13, i32 noundef %18) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !278

21:                                               ; preds = %16
  tail call fastcc void @record_last_mem_set_info(ptr noundef %2) #14
  br label %23

22:                                               ; preds = %16
  tail call fastcc void @record_last_reg_set_info_regno(ptr noundef %2, i32 noundef 7) #14
  br label %23

23:                                               ; preds = %11, %22, %21, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @record_last_reg_set_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !prof !279 !PGOFuncName !280 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %8 = tail call fastcc i32 @end_hard_regno(i32 noundef %6, i32 noundef %7) #14
  %9 = load ptr, ptr @uid_cuid, align 8, !tbaa !165
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr @reg_avail_info, align 8, !tbaa !165
  br label %12

12:                                               ; preds = %12, %2
  %13 = phi i32 [ %3, %2 ], [ %20, %12 ]
  %14 = load i32, ptr %10, align 8, !tbaa !185
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !160
  %18 = zext i32 %13 to i64
  %19 = getelementptr inbounds i32, ptr %11, i64 %18
  store i32 %17, ptr %19, align 4, !tbaa !160
  %20 = add i32 %13, 1
  %21 = icmp ult i32 %20, %8
  br i1 %21, label %12, label %22, !prof !281, !llvm.loop !282

22:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @record_last_reg_set_info_regno(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !283 !PGOFuncName !284 {
  %3 = load ptr, ptr @uid_cuid, align 8, !tbaa !165
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !185
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !160
  %9 = load ptr, ptr @reg_avail_info, align 8, !tbaa !165
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  store i32 %8, ptr %11, align 4, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !285 !PGOFuncName !286 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !185
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_last_mem_set_info(ptr noundef %0) unnamed_addr #0 !prof !287 !PGOFuncName !288 {
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !196
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !198
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !199
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %11, !prof !289

8:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 16) #13
  %9 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !196
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %13 = phi i64 [ 16, %1 ], [ %9, %8 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !200
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %20, !prof !289

17:                                               ; preds = %11
  %18 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  %19 = or i8 %18, 2
  store i8 %19, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  br label %20

20:                                               ; preds = %11, %17
  %21 = ptrtoint ptr %15 to i64
  store i64 %21, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !196
  %22 = ptrtoint ptr %14 to i64
  %23 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 6), align 8, !tbaa !201
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = xor i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = inttoptr i64 %28 to ptr
  store ptr %29, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !199
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !202
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %28, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !198
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %31
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %38, !prof !289

37:                                               ; preds = %20
  store ptr %33, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %38

38:                                               ; preds = %20, %37
  %39 = phi ptr [ %29, %20 ], [ %33, %37 ]
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %0, ptr %15, align 8, !tbaa !290
  %40 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !165
  %41 = getelementptr inbounds %struct.modifies_mem, ptr %15, i64 0, i32 1
  store ptr %40, ptr %41, align 8, !tbaa !292
  store ptr %15, ptr @modifies_mem_list, align 8, !tbaa !165
  ret void
}

; Function Attrs: optsize
declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !prof !293 !PGOFuncName !294 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !185
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @set_noop_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @can_copy_p(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !295 !PGOFuncName !296 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %83, label %5, !prof !186

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %32
  %8 = phi ptr [ %0, %5 ], [ %34, %32 ]
  %9 = load i32, ptr %8, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %38 [
    i16 37, label %11
    i16 43, label %24
    i16 36, label %83
    i16 46, label %83
    i16 35, label %83
    i16 30, label %83
    i16 32, label %83
    i16 31, label %83
    i16 33, label %83
    i16 45, label %83
    i16 44, label %83
    i16 20, label %83
    i16 21, label %83
    i16 74, label %36
    i16 75, label %36
    i16 76, label %36
    i16 77, label %36
    i16 78, label %36
    i16 79, label %36
  ], !prof !297

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #14
  %13 = icmp ult i32 %12, 53
  br i1 %13, label %15, label %14, !prof !298

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 510, ptr noundef nonnull @.str.7) #13
  br label %15

15:                                               ; preds = %11, %14
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %79, label %17, !prof !299

17:                                               ; preds = %15
  %18 = load ptr, ptr @uid_cuid, align 8, !tbaa !165
  %19 = load i32, ptr %6, align 8, !tbaa !185
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !160
  %23 = add nsw i32 %22, -1
  br label %79

24:                                               ; preds = %7
  %25 = load ptr, ptr @uid_cuid, align 8, !tbaa !165
  %26 = load i32, ptr %6, align 8, !tbaa !185
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !160
  %30 = tail call fastcc i32 @load_killed_in_block_p(i32 noundef %29, ptr noundef nonnull %8, i8 noundef zeroext %2) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %83, !prof !300

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !185
  %35 = icmp eq ptr %34, null
  br i1 %35, label %83, label %7, !prof !301

36:                                               ; preds = %7, %7, %7, %7, %7, %7
  %37 = icmp eq i8 %2, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %7, %36
  %39 = and i32 %9, 65535
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !185
  %43 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %40
  %44 = load ptr, ptr %43, align 8, !tbaa !165
  %45 = icmp eq i8 %42, 0
  br i1 %45, label %83, label %46, !prof !302

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %48 = zext i8 %42 to i64
  br label %49

49:                                               ; preds = %46, %77
  %50 = phi i64 [ %48, %46 ], [ %51, %77 ]
  %51 = add nsw i64 %50, -1
  %52 = getelementptr inbounds i8, ptr %44, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !185
  switch i8 %53, label %77 [
    i8 101, label %59
    i8 69, label %54
  ], !prof !303

54:                                               ; preds = %49
  %55 = getelementptr inbounds [1 x %union.rtunion_def], ptr %47, i64 0, i64 %51
  %56 = load ptr, ptr %55, align 8, !tbaa !185
  %57 = load i32, ptr %56, align 8, !tbaa !304
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %70, label %77

59:                                               ; preds = %49
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %47, i64 0, i64 %51
  %61 = load ptr, ptr %60, align 8, !tbaa !185
  %62 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %61, ptr noundef %1, i8 noundef zeroext %2) #14, !range !213
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %83, label %77, !prof !306

64:                                               ; preds = %70
  %65 = add nuw nsw i64 %71, 1
  %66 = load ptr, ptr %55, align 8, !tbaa !185
  %67 = load i32, ptr %66, align 8, !tbaa !304
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %77, !llvm.loop !307

70:                                               ; preds = %54, %64
  %71 = phi i64 [ %65, %64 ], [ 0, %54 ]
  %72 = phi ptr [ %66, %64 ], [ %56, %54 ]
  %73 = getelementptr inbounds %struct.rtvec_def, ptr %72, i64 0, i32 1, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !165
  %75 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %74, ptr noundef %1, i8 noundef zeroext %2) #14, !range !213
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %83, label %64

77:                                               ; preds = %64, %54, %49, %59
  %78 = icmp sgt i64 %50, 1
  br i1 %78, label %49, label %83, !prof !308, !llvm.loop !309

79:                                               ; preds = %15, %17
  %80 = phi i32 [ %23, %17 ], [ 0, %15 ]
  %81 = tail call fastcc zeroext i8 @reg_changed_after_insn_p(ptr noundef nonnull %8, i32 noundef %80) #14, !range !213
  %82 = xor i8 %81, 1
  br label %83

83:                                               ; preds = %32, %24, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %59, %77, %70, %79, %3, %38, %36
  %84 = phi i8 [ 0, %36 ], [ 1, %38 ], [ 1, %3 ], [ %82, %79 ], [ 0, %70 ], [ 0, %59 ], [ 1, %77 ], [ 1, %32 ], [ 0, %24 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i8 %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_expr_in_table(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !310 !PGOFuncName !311 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call fastcc i32 @hash_expr(ptr noundef %0, ptr noundef nonnull %3) #14
  %5 = load i32, ptr %3, align 4, !tbaa !160
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %134, !prof !312

7:                                                ; preds = %2
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %9 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 24
  br i1 %13, label %14, label %17, !prof !313

14:                                               ; preds = %7
  call void @_obstack_newchunk(ptr noundef nonnull @expr_obstack, i32 noundef 24) #13
  %15 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi ptr [ %9, %7 ], [ %16, %14 ]
  %19 = phi i64 [ 24, %7 ], [ %15, %14 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !200
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %26, !prof !313

23:                                               ; preds = %17
  %24 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  %25 = or i8 %24, 2
  store i8 %25, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  br label %26

26:                                               ; preds = %17, %23
  %27 = ptrtoint ptr %21 to i64
  store i64 %27, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %28 = ptrtoint ptr %20 to i64
  %29 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 6), align 8, !tbaa !201
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = xor i32 %29, -1
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = inttoptr i64 %34 to ptr
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %34, %37
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %40, %37
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %44, !prof !313

43:                                               ; preds = %26
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %44

44:                                               ; preds = %26, %43
  %45 = phi ptr [ %35, %26 ], [ %39, %43 ]
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %0, ptr %21, align 8, !tbaa !238
  %46 = getelementptr inbounds %struct.expr, ptr %21, i64 0, i32 1
  store i32 %4, ptr %46, align 8, !tbaa !234
  %47 = getelementptr inbounds %struct.expr, ptr %21, i64 0, i32 2
  store ptr null, ptr %47, align 8, !tbaa !314
  %48 = load ptr, ptr @expr_table, align 8, !tbaa !165
  %49 = call ptr @htab_find_slot_with_hash(ptr noundef %48, ptr noundef nonnull %21, i32 noundef %4, i32 noundef 1) #13
  %50 = load ptr, ptr %49, align 8, !tbaa !165
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53, !prof !315

52:                                               ; preds = %44
  store ptr %21, ptr %49, align 8, !tbaa !165
  br label %69

53:                                               ; preds = %44
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %55 = ptrtoint ptr %54 to i64
  %56 = sub i64 %27, %55
  store i64 %56, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %65, !prof !316

58:                                               ; preds = %53
  %59 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %60, %55
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %63, label %65, !prof !316

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, ptr %54, i64 %56
  store ptr %64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %67

65:                                               ; preds = %58, %53
  %66 = getelementptr inbounds i8, ptr %54, i64 %56
  call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %66) #13
  br label %67

67:                                               ; preds = %65, %63
  %68 = load ptr, ptr %49, align 8, !tbaa !165
  br label %69

69:                                               ; preds = %67, %52
  %70 = phi ptr [ %68, %67 ], [ %21, %52 ]
  %71 = getelementptr inbounds %struct.expr, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !165
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74, !prof !317

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !185
  br label %80

77:                                               ; preds = %80
  %78 = load ptr, ptr %81, align 8, !tbaa !165
  %79 = icmp eq ptr %78, null
  br i1 %79, label %89, label %80, !prof !318, !llvm.loop !319

80:                                               ; preds = %74, %77
  %81 = phi ptr [ %72, %74 ], [ %78, %77 ]
  %82 = getelementptr inbounds %struct.occr, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !320
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !185
  %86 = icmp eq ptr %85, %76
  br i1 %86, label %87, label %77, !prof !322, !llvm.loop !319

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.occr, ptr %81, i64 0, i32 1
  store ptr %1, ptr %88, align 8, !tbaa !320
  br label %134

89:                                               ; preds = %77, %69
  %90 = phi ptr [ null, %69 ], [ %81, %77 ]
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %91 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %92 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !199
  %93 = ptrtoint ptr %91 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = icmp slt i64 %95, 24
  br i1 %96, label %97, label %100, !prof !323

97:                                               ; preds = %89
  call void @_obstack_newchunk(ptr noundef nonnull @occr_obstack, i32 noundef 24) #13
  %98 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %99 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %100

100:                                              ; preds = %89, %97
  %101 = phi ptr [ %92, %89 ], [ %99, %97 ]
  %102 = phi i64 [ 24, %89 ], [ %98, %97 ]
  %103 = getelementptr inbounds i8, ptr %101, i64 %102
  %104 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !200
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %106, label %109, !prof !313

106:                                              ; preds = %100
  %107 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 10), align 8
  %108 = or i8 %107, 2
  store i8 %108, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 10), align 8
  br label %109

109:                                              ; preds = %100, %106
  %110 = ptrtoint ptr %104 to i64
  store i64 %110, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %111 = ptrtoint ptr %103 to i64
  %112 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 6), align 8, !tbaa !201
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = xor i32 %112, -1
  %116 = sext i32 %115 to i64
  %117 = and i64 %114, %116
  %118 = inttoptr i64 %117 to ptr
  store ptr %118, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !199
  %119 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %120 = ptrtoint ptr %119 to i64
  %121 = sub i64 %117, %120
  %122 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %123 = ptrtoint ptr %122 to i64
  %124 = sub i64 %123, %120
  %125 = icmp sgt i64 %121, %124
  br i1 %125, label %126, label %127, !prof !313

126:                                              ; preds = %109
  store ptr %122, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %127

127:                                              ; preds = %109, %126
  %128 = phi ptr [ %118, %109 ], [ %122, %126 ]
  store ptr %128, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !200
  %129 = load ptr, ptr %71, align 8, !tbaa !314
  %130 = icmp eq ptr %129, null
  %131 = select i1 %130, ptr %71, ptr %90, !prof !315
  store ptr %104, ptr %131, align 8, !tbaa !165
  %132 = getelementptr inbounds %struct.occr, ptr %104, i64 0, i32 1
  store ptr %1, ptr %132, align 8, !tbaa !320
  store ptr null, ptr %104, align 8, !tbaa !324
  %133 = getelementptr inbounds %struct.occr, ptr %104, i64 0, i32 2
  store i8 0, ptr %133, align 8, !tbaa !325
  br label %134

134:                                              ; preds = %87, %127, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @load_killed_in_block_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !326 !PGOFuncName !327 {
  %4 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !165
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6, !prof !328

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi ptr [ %4, %6 ], [ %31, %29 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !290
  %11 = load ptr, ptr @uid_cuid, align 8, !tbaa !165
  %12 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !185
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !160
  br i1 %7, label %19, label %17, !prof !329

17:                                               ; preds = %8
  %18 = icmp slt i32 %16, %0
  br i1 %18, label %29, label %21, !prof !330, !llvm.loop !331

19:                                               ; preds = %8
  %20 = icmp sgt i32 %16, %0
  br i1 %20, label %29, label %21, !prof !332, !llvm.loop !331

21:                                               ; preds = %17, %19
  %22 = load i32, ptr %10, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %33, label %25, !prof !333

25:                                               ; preds = %21
  store i1 false, ptr @mems_conflict_p, align 4
  %26 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !185
  tail call void @note_stores(ptr noundef %27, ptr noundef nonnull @find_mem_conflicts, ptr noundef %1) #13
  %28 = load i1, ptr @mems_conflict_p, align 4
  br i1 %28, label %33, label %29, !prof !334

29:                                               ; preds = %25, %17, %19
  %30 = getelementptr inbounds %struct.modifies_mem, ptr %9, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !165
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !prof !335

33:                                               ; preds = %29, %21, %25, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %25 ], [ 1, %21 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @reg_changed_after_insn_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !336 !PGOFuncName !337 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #14
  %4 = load ptr, ptr @reg_avail_info, align 8, !tbaa !165
  br label %5

5:                                                ; preds = %11, %2
  %6 = phi i32 [ %3, %2 ], [ %17, %11 ]
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !160
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %19, label %11, !prof !338

11:                                               ; preds = %5
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %16 = tail call fastcc i32 @end_hard_regno(i32 noundef %14, i32 noundef %15) #14
  %17 = add i32 %6, 1
  %18 = icmp ult i32 %17, %16
  br i1 %18, label %5, label %19, !prof !339, !llvm.loop !340

19:                                               ; preds = %11, %5
  %20 = phi i8 [ 1, %5 ], [ 0, %11 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hash_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !341 !PGOFuncName !342 {
  store i32 0, ptr %1, align 4, !tbaa !160
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = tail call i32 @hash_rtx(ptr noundef nonnull %0, i32 noundef %5, ptr noundef nonnull %1, ptr noundef null, i8 noundef zeroext 0) #13
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @find_mem_conflicts(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !343 !PGOFuncName !344 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %10, %8 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %17 [
    i16 39, label %8
    i16 120, label %8
    i16 40, label %8
    i16 43, label %11
  ], !prof !345

8:                                                ; preds = %4, %4, %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  br label %4, !llvm.loop !346

11:                                               ; preds = %4
  %12 = lshr i32 %6, 16
  %13 = and i32 %12, 255
  %14 = tail call i32 @true_dependence(ptr noundef nonnull %5, i32 noundef %13, ptr noundef %2, ptr noundef nonnull @rtx_addr_varies_p) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !347

16:                                               ; preds = %11
  store i1 true, ptr @mems_conflict_p, align 4
  br label %17

17:                                               ; preds = %4, %11, %16
  ret void
}

; Function Attrs: optsize
declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @htab_collisions(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dump_hash_table_entry(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !210 !PGOFuncName !348 {
  %3 = load ptr, ptr %0, align 8, !tbaa !165
  %4 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 6, i64 1, ptr %1)
  %5 = load ptr, ptr %3, align 8, !tbaa !238
  tail call void @print_rtl(ptr noundef %1, ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !234
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %7) #14
  %9 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %1)
  %10 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !165
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %19, %13 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.occr, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !320
  %17 = tail call i32 @print_rtl_single(ptr noundef %1, ptr noundef %16) #13
  %18 = tail call i32 @fputc(i32 10, ptr %1)
  %19 = load ptr, ptr %14, align 8, !tbaa !165
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !349

21:                                               ; preds = %13, %2
  %22 = tail call i32 @fputc(i32 10, ptr %1)
  ret i32 1
}

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_well_behaved_predecessors(ptr noundef %0) unnamed_addr #0 !prof !350 !PGOFuncName !351 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !352
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7, !prof !214

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !353
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !354
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %2) #14, !range !213
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %49, label %12, !prof !355

12:                                               ; preds = %7, %44
  %13 = load ptr, ptr %2, align 8, !tbaa !165
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !356
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %13, align 8, !tbaa !358
  br i1 %17, label %30, label %19, !prof !359

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !360
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #14
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !361
  %27 = load ptr, ptr %26, align 8, !tbaa !352
  %28 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %27) #14
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %49, label %30

30:                                               ; preds = %24, %19, %12
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !185
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !187
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %44, !prof !362

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !185
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65534
  %43 = icmp eq i32 %42, 20
  br i1 %43, label %49, label %44, !prof !363

44:                                               ; preds = %38, %30
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %45 = load i32, ptr %3, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %2) #14, !range !213
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %12, !prof !364, !llvm.loop !365

49:                                               ; preds = %24, %44, %38, %7, %1
  %50 = phi i8 [ 0, %1 ], [ 1, %7 ], [ 0, %24 ], [ 1, %44 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i8 %50
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_expr_in_table(ptr noundef %0) unnamed_addr #0 !prof !366 !PGOFuncName !367 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %3 = call fastcc i32 @hash_expr(ptr noundef %0, ptr noundef nonnull %2) #14
  %4 = load i32, ptr %2, align 4, !tbaa !160
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %66, !prof !223

6:                                                ; preds = %1
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 24
  br i1 %12, label %13, label %16, !prof !368

13:                                               ; preds = %6
  call void @_obstack_newchunk(ptr noundef nonnull @expr_obstack, i32 noundef 24) #13
  %14 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi ptr [ %8, %6 ], [ %15, %13 ]
  %18 = phi i64 [ 24, %6 ], [ %14, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !200
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %25, !prof !368

22:                                               ; preds = %16
  %23 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  %24 = or i8 %23, 2
  store i8 %24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  br label %25

25:                                               ; preds = %16, %22
  %26 = ptrtoint ptr %20 to i64
  store i64 %26, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %27 = ptrtoint ptr %19 to i64
  %28 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 6), align 8, !tbaa !201
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = xor i32 %28, -1
  %32 = sext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = inttoptr i64 %33 to ptr
  store ptr %34, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %33, %36
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %36
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %43, !prof !368

42:                                               ; preds = %25
  store ptr %38, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %43

43:                                               ; preds = %25, %42
  %44 = phi ptr [ %34, %25 ], [ %38, %42 ]
  store ptr %44, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %0, ptr %20, align 8, !tbaa !238
  %45 = getelementptr inbounds %struct.expr, ptr %20, i64 0, i32 1
  store i32 %3, ptr %45, align 8, !tbaa !234
  %46 = getelementptr inbounds %struct.expr, ptr %20, i64 0, i32 2
  store ptr null, ptr %46, align 8, !tbaa !314
  %47 = load ptr, ptr @expr_table, align 8, !tbaa !165
  %48 = call ptr @htab_find_slot_with_hash(ptr noundef %47, ptr noundef nonnull %20, i32 noundef %3, i32 noundef 1) #13
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %50 = ptrtoint ptr %49 to i64
  %51 = sub i64 %26, %50
  store i64 %51, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %60, !prof !223

53:                                               ; preds = %43
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %55 = ptrtoint ptr %54 to i64
  %56 = sub i64 %55, %50
  %57 = icmp slt i64 %51, %56
  br i1 %57, label %58, label %60, !prof !223

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %49, i64 %51
  store ptr %59, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %59, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %62

60:                                               ; preds = %53, %43
  %61 = getelementptr inbounds i8, ptr %49, i64 %51
  call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %61) #13
  br label %62

62:                                               ; preds = %60, %58
  %63 = icmp eq ptr %48, null
  br i1 %63, label %66, label %64, !prof !368

64:                                               ; preds = %62
  %65 = load ptr, ptr %48, align 8, !tbaa !165
  br label %66

66:                                               ; preds = %62, %1, %64
  %67 = phi ptr [ %65, %64 ], [ null, %1 ], [ null, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret ptr %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_partially_redundant_load(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !369 !PGOFuncName !370 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = tail call fastcc zeroext i8 @reg_changed_after_insn_p(ptr noundef %9, i32 noundef 0) #14, !range !213
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %373, !prof !371

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !185
  %15 = load ptr, ptr %14, align 8, !tbaa !372
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = tail call i32 @reg_used_between_p(ptr noundef %9, ptr noundef %17, ptr noundef nonnull %1) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %373, !prof !371

20:                                               ; preds = %12
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #14
  store i32 0, ptr %5, align 8, !tbaa.struct !353
  %22 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !354
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %4) #14, !range !213
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %373, label %25, !prof !373

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.expr, ptr %2, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %219
  %28 = phi ptr [ null, %25 ], [ %227, %219 ]
  %29 = phi i64 [ 0, %25 ], [ %226, %219 ]
  %30 = phi i8 [ 0, %25 ], [ %225, %219 ]
  %31 = phi i64 [ 0, %25 ], [ %220, %219 ]
  %32 = phi i64 [ 0, %25 ], [ %224, %219 ]
  %33 = phi i32 [ 0, %25 ], [ %223, %219 ]
  %34 = phi ptr [ null, %25 ], [ %222, %219 ]
  %35 = phi ptr [ null, %25 ], [ %221, %219 ]
  %36 = load ptr, ptr %4, align 8, !tbaa !165
  %37 = load ptr, ptr %36, align 8, !tbaa !358
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !185
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !187
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !185
  %44 = load ptr, ptr %26, align 8, !tbaa !314
  %45 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %37, ptr noundef %44) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %76, label %47, !prof !374

47:                                               ; preds = %27, %69
  %48 = phi ptr [ %71, %69 ], [ %45, %27 ]
  %49 = getelementptr inbounds %struct.occr, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !320
  %51 = tail call fastcc ptr @get_avail_load_store_reg(ptr noundef %50) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54, !prof !375

53:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1005, ptr noundef nonnull @.str.7) #13
  br label %54

54:                                               ; preds = %47, %53
  %55 = tail call ptr @copy_rtx(ptr noundef %9) #13
  %56 = tail call ptr @copy_rtx(ptr noundef %51) #13
  %57 = tail call ptr @gen_move_insn(ptr noundef %55, ptr noundef %56) #13
  tail call void @extract_insn(ptr noundef %57) #13
  %58 = tail call i32 @constrain_operands(i32 noundef 1) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60, !prof !375

60:                                               ; preds = %54
  %61 = tail call fastcc zeroext i8 @reg_killed_on_edge(ptr noundef %51, ptr noundef nonnull %36) #14, !range !213
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %69, !prof !376

63:                                               ; preds = %60
  %64 = tail call fastcc zeroext i8 @reg_used_on_edge(ptr noundef %9, ptr noundef nonnull %36) #14, !range !213
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69, !prof !376

66:                                               ; preds = %63
  %67 = tail call i32 @reg_set_between_p(ptr noundef %51, ptr noundef %50, ptr noundef %43) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69, !prof !376

69:                                               ; preds = %66, %54, %60, %63
  %70 = load ptr, ptr %48, align 8, !tbaa !324
  %71 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %37, ptr noundef %70) #14
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %47, !prof !377, !llvm.loop !378

73:                                               ; preds = %66, %69
  %74 = phi ptr [ null, %69 ], [ %50, %66 ]
  %75 = load ptr, ptr %36, align 8, !tbaa !358
  br label %76

76:                                               ; preds = %73, %27
  %77 = phi ptr [ %37, %27 ], [ %75, %73 ]
  %78 = phi ptr [ null, %27 ], [ %51, %73 ]
  %79 = phi ptr [ null, %27 ], [ %74, %73 ]
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !360
  %82 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %81) #14
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %84, label %97, !prof !379

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !361
  %87 = load ptr, ptr %86, align 8, !tbaa !352
  %88 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %87) #14
  %89 = icmp ugt i32 %88, 1
  br i1 %89, label %90, label %94, !prof !380

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  %92 = load i64, ptr %91, align 8, !tbaa !381
  %93 = add nsw i64 %92, %31
  br label %94

94:                                               ; preds = %90, %84
  %95 = phi i64 [ %93, %90 ], [ %31, %84 ]
  %96 = icmp eq ptr %79, null
  br i1 %96, label %167, label %99, !prof !382

97:                                               ; preds = %76
  %98 = icmp eq ptr %79, null
  br i1 %98, label %171, label %99, !prof !382

99:                                               ; preds = %97, %94
  %100 = phi i64 [ %31, %97 ], [ %95, %94 ]
  %101 = add nsw i32 %33, 1
  %102 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  %103 = load i64, ptr %102, align 8, !tbaa !381
  %104 = add nsw i64 %103, %32
  %105 = tail call ptr @copy_rtx(ptr noundef %9) #13
  %106 = tail call ptr @copy_rtx(ptr noundef %78) #13
  %107 = tail call ptr @gen_move_insn(ptr noundef %105, ptr noundef %106) #13
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !185
  %110 = tail call i32 @set_noop_p(ptr noundef %109) #13
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %219, !prof !375

112:                                              ; preds = %99
  %113 = load ptr, ptr %36, align 8, !tbaa !358
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !360
  %116 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %115) #14
  %117 = icmp ugt i32 %116, 1
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !361
  %121 = load ptr, ptr %120, align 8, !tbaa !352
  %122 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %121) #14
  %123 = icmp ugt i32 %122, 1
  %124 = select i1 %123, i8 1, i8 %30
  br label %125

125:                                              ; preds = %118, %112
  %126 = phi i8 [ %30, %112 ], [ %124, %118 ]
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %127 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %128 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !199
  %129 = ptrtoint ptr %127 to i64
  %130 = ptrtoint ptr %128 to i64
  %131 = sub i64 %129, %130
  %132 = icmp slt i64 %131, 24
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  tail call void @_obstack_newchunk(ptr noundef nonnull @unoccr_obstack, i32 noundef 24) #13
  %134 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %135 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %136

136:                                              ; preds = %125, %133
  %137 = phi ptr [ %128, %125 ], [ %135, %133 ]
  %138 = phi i64 [ 24, %125 ], [ %134, %133 ]
  %139 = getelementptr inbounds i8, ptr %137, i64 %138
  %140 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !200
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  %144 = or i8 %143, 2
  store i8 %144, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  br label %145

145:                                              ; preds = %136, %142
  %146 = ptrtoint ptr %140 to i64
  store i64 %146, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %147 = ptrtoint ptr %139 to i64
  %148 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 6), align 8, !tbaa !201
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = xor i32 %148, -1
  %152 = sext i32 %151 to i64
  %153 = and i64 %150, %152
  %154 = inttoptr i64 %153 to ptr
  %155 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %156 = ptrtoint ptr %155 to i64
  %157 = sub i64 %153, %156
  %158 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %159 = ptrtoint ptr %158 to i64
  %160 = sub i64 %159, %156
  %161 = icmp sgt i64 %157, %160
  %162 = select i1 %161, ptr %158, ptr %154
  store ptr %162, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8
  store ptr %162, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !200
  %163 = getelementptr inbounds %struct.unoccr, ptr %140, i64 0, i32 2
  store ptr %79, ptr %163, align 8, !tbaa !383
  %164 = getelementptr inbounds %struct.unoccr, ptr %140, i64 0, i32 1
  store ptr %36, ptr %164, align 8, !tbaa !385
  store ptr %28, ptr %140, align 8, !tbaa !386
  %165 = icmp eq ptr %34, null
  %166 = select i1 %165, ptr %140, ptr %34
  br label %219

167:                                              ; preds = %94
  %168 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %87) #14
  %169 = icmp ugt i32 %168, 1
  %170 = select i1 %169, i8 1, i8 %30, !prof !387
  br label %171

171:                                              ; preds = %97, %167
  %172 = phi i64 [ %95, %167 ], [ %31, %97 ]
  %173 = phi i8 [ %170, %167 ], [ %30, %97 ]
  %174 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  %175 = load i64, ptr %174, align 8, !tbaa !381
  %176 = add nsw i64 %175, %29
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %177 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %178 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !199
  %179 = ptrtoint ptr %177 to i64
  %180 = ptrtoint ptr %178 to i64
  %181 = sub i64 %179, %180
  %182 = icmp slt i64 %181, 24
  br i1 %182, label %183, label %186, !prof !388

183:                                              ; preds = %171
  tail call void @_obstack_newchunk(ptr noundef nonnull @unoccr_obstack, i32 noundef 24) #13
  %184 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %185 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %186

186:                                              ; preds = %171, %183
  %187 = phi ptr [ %178, %171 ], [ %185, %183 ]
  %188 = phi i64 [ 24, %171 ], [ %184, %183 ]
  %189 = getelementptr inbounds i8, ptr %187, i64 %188
  %190 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !200
  %191 = icmp eq ptr %189, %190
  br i1 %191, label %192, label %195, !prof !388

192:                                              ; preds = %186
  %193 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  %194 = or i8 %193, 2
  store i8 %194, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  br label %195

195:                                              ; preds = %186, %192
  %196 = ptrtoint ptr %190 to i64
  store i64 %196, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %197 = ptrtoint ptr %189 to i64
  %198 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 6), align 8, !tbaa !201
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = xor i32 %198, -1
  %202 = sext i32 %201 to i64
  %203 = and i64 %200, %202
  %204 = inttoptr i64 %203 to ptr
  store ptr %204, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !199
  %205 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %206 = ptrtoint ptr %205 to i64
  %207 = sub i64 %203, %206
  %208 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %209 = ptrtoint ptr %208 to i64
  %210 = sub i64 %209, %206
  %211 = icmp sgt i64 %207, %210
  br i1 %211, label %212, label %213, !prof !388

212:                                              ; preds = %195
  store ptr %208, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %213

213:                                              ; preds = %195, %212
  %214 = phi ptr [ %204, %195 ], [ %208, %212 ]
  store ptr %214, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !200
  %215 = getelementptr inbounds %struct.unoccr, ptr %190, i64 0, i32 2
  store ptr null, ptr %215, align 8, !tbaa !383
  %216 = getelementptr inbounds %struct.unoccr, ptr %190, i64 0, i32 1
  store ptr %36, ptr %216, align 8, !tbaa !385
  store ptr %35, ptr %190, align 8, !tbaa !386
  %217 = icmp eq ptr %34, null
  %218 = select i1 %217, ptr %190, ptr %34, !prof !389
  br label %219

219:                                              ; preds = %145, %213, %99
  %220 = phi i64 [ %100, %99 ], [ %172, %213 ], [ %100, %145 ]
  %221 = phi ptr [ %35, %99 ], [ %190, %213 ], [ %35, %145 ]
  %222 = phi ptr [ %34, %99 ], [ %218, %213 ], [ %166, %145 ]
  %223 = phi i32 [ %101, %99 ], [ %33, %213 ], [ %101, %145 ]
  %224 = phi i64 [ %104, %99 ], [ %32, %213 ], [ %104, %145 ]
  %225 = phi i8 [ %30, %99 ], [ %173, %213 ], [ %126, %145 ]
  %226 = phi i64 [ %29, %99 ], [ %176, %213 ], [ %29, %145 ]
  %227 = phi ptr [ %28, %99 ], [ %28, %213 ], [ %140, %145 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #14
  %228 = load i32, ptr %5, align 8
  %229 = load ptr, ptr %22, align 8
  %230 = call fastcc zeroext i8 @ei_cond(i32 %228, ptr %229, ptr noundef nonnull %4) #14, !range !213
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %27, !prof !390, !llvm.loop !391

232:                                              ; preds = %219
  %233 = icmp eq i32 %223, 0
  br i1 %233, label %356, label %234, !prof !392

234:                                              ; preds = %232
  %235 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %0) #13
  %236 = icmp ne i8 %235, 0
  %237 = icmp sgt i32 %223, 1
  %238 = and i1 %236, %237
  br i1 %238, label %356, label %239, !prof !393

239:                                              ; preds = %234
  %240 = load ptr, ptr @profile_info, align 8, !tbaa !165
  %241 = icmp ne ptr %240, null
  %242 = load i32, ptr @flag_branch_probabilities, align 4
  %243 = icmp ne i32 %242, 0
  %244 = select i1 %241, i1 %243, i1 false
  br i1 %244, label %245, label %251, !prof !393

245:                                              ; preds = %239
  %246 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !394
  %247 = tail call zeroext i8 %246() #13
  %248 = icmp ne i8 %247, 0
  %249 = icmp ne i8 %225, 0
  %250 = select i1 %248, i1 %249, i1 false
  br i1 %250, label %356, label %253, !prof !406

251:                                              ; preds = %239
  %252 = icmp eq i8 %225, 0
  br i1 %252, label %253, label %356, !prof !407

253:                                              ; preds = %251, %245
  %254 = load ptr, ptr @compiler_params, align 8, !tbaa !165
  %255 = getelementptr inbounds %struct.param_info, ptr %254, i64 24, i32 1
  %256 = load i32, ptr %255, align 8, !tbaa !408
  %257 = sext i32 %256 to i64
  %258 = mul nsw i64 %226, %257
  %259 = icmp slt i64 %224, %258
  br i1 %259, label %356, label %260

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.param_info, ptr %254, i64 25, i32 1
  %262 = load i32, ptr %261, align 8, !tbaa !408
  %263 = sext i32 %262 to i64
  %264 = mul nsw i64 %220, %263
  %265 = icmp slt i64 %224, %264
  br i1 %265, label %356, label %266

266:                                              ; preds = %260
  %267 = icmp eq ptr %227, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %298, %266
  %269 = icmp eq ptr %221, null
  br i1 %269, label %327, label %301

270:                                              ; preds = %266, %298
  %271 = phi ptr [ %299, %298 ], [ %227, %266 ]
  %272 = getelementptr inbounds %struct.unoccr, ptr %271, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !383
  %274 = getelementptr inbounds %struct.unoccr, ptr %271, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !385
  store ptr %275, ptr %4, align 8, !tbaa !165
  %276 = tail call fastcc ptr @get_avail_load_store_reg(ptr noundef %273) #14
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %270
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1093, ptr noundef nonnull @.str.7) #13
  br label %279

279:                                              ; preds = %270, %278
  %280 = tail call ptr @copy_rtx(ptr noundef %9) #13
  %281 = tail call ptr @copy_rtx(ptr noundef %276) #13
  %282 = tail call ptr @gen_move_insn(ptr noundef %280, ptr noundef %281) #13
  tail call void @insert_insn_on_edge(ptr noundef %282, ptr noundef %275) #13
  %283 = load i32, ptr @stats, align 4, !tbaa !173
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr @stats, align 4, !tbaa !173
  %285 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %286 = icmp eq ptr %285, null
  br i1 %286, label %298, label %287

287:                                              ; preds = %279
  %288 = tail call fastcc i32 @rhs_regno(ptr noundef %276) #14
  %289 = tail call fastcc i32 @rhs_regno(ptr noundef %9) #14
  %290 = load ptr, ptr %275, align 8, !tbaa !358
  %291 = getelementptr inbounds %struct.basic_block_def, ptr %290, i64 0, i32 9
  %292 = load i32, ptr %291, align 8, !tbaa !410
  %293 = getelementptr inbounds %struct.edge_def, ptr %275, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !361
  %295 = getelementptr inbounds %struct.basic_block_def, ptr %294, i64 0, i32 9
  %296 = load i32, ptr %295, align 8, !tbaa !410
  %297 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %285, ptr noundef nonnull @.str.16, i32 noundef %288, i32 noundef %289, i32 noundef %292, i32 noundef %296) #14
  br label %298

298:                                              ; preds = %279, %287
  %299 = load ptr, ptr %271, align 8, !tbaa !386
  %300 = icmp eq ptr %299, null
  br i1 %300, label %268, label %270, !llvm.loop !411

301:                                              ; preds = %268, %324
  %302 = phi ptr [ %325, %324 ], [ %221, %268 ]
  %303 = getelementptr inbounds %struct.unoccr, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !385
  store ptr %304, ptr %4, align 8, !tbaa !165
  %305 = load ptr, ptr %6, align 8, !tbaa !185
  %306 = tail call ptr @copy_insn(ptr noundef %305) #13
  tail call void @insert_insn_on_edge(ptr noundef %306, ptr noundef %304) #13
  %307 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !171
  %308 = add nsw i32 %307, 1
  store i32 %308, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !171
  %309 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %310 = icmp eq ptr %309, null
  br i1 %310, label %324, label %311

311:                                              ; preds = %301
  %312 = load ptr, ptr %304, align 8, !tbaa !358
  %313 = getelementptr inbounds %struct.basic_block_def, ptr %312, i64 0, i32 9
  %314 = load i32, ptr %313, align 8, !tbaa !410
  %315 = getelementptr inbounds %struct.edge_def, ptr %304, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !361
  %317 = getelementptr inbounds %struct.basic_block_def, ptr %316, i64 0, i32 9
  %318 = load i32, ptr %317, align 8, !tbaa !410
  %319 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %309, ptr noundef nonnull @.str.17, i32 noundef %314, i32 noundef %318) #14
  %320 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %321 = load ptr, ptr %6, align 8, !tbaa !185
  tail call void @print_rtl(ptr noundef %320, ptr noundef %321) #13
  %322 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %323 = tail call i32 @fputc(i32 10, ptr %322)
  br label %324

324:                                              ; preds = %301, %311
  %325 = load ptr, ptr %302, align 8, !tbaa !386
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %301, !llvm.loop !412

327:                                              ; preds = %324, %268
  %328 = getelementptr inbounds %struct.expr, ptr %2, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !314
  %330 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %0, ptr noundef %329) #14
  %331 = icmp eq ptr %330, null
  br i1 %331, label %341, label %332

332:                                              ; preds = %327, %337
  %333 = phi ptr [ %339, %337 ], [ %330, %327 ]
  %334 = getelementptr inbounds %struct.occr, ptr %333, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !320
  %336 = icmp eq ptr %335, %1
  br i1 %336, label %354, label %337

337:                                              ; preds = %332
  %338 = load ptr, ptr %333, align 8, !tbaa !324
  %339 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %0, ptr noundef %338) #14
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %332, !llvm.loop !413

341:                                              ; preds = %337, %327
  %342 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !174
  %343 = add nsw i32 %342, 1
  store i32 %343, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !174
  %344 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %345 = icmp eq ptr %344, null
  br i1 %345, label %352, label %346

346:                                              ; preds = %341
  %347 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %344)
  %348 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %349 = tail call i32 @print_rtl_single(ptr noundef %348, ptr noundef %1) #13
  %350 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %351 = tail call i32 @fputc(i32 10, ptr %350)
  br label %352

352:                                              ; preds = %346, %341
  %353 = tail call ptr @delete_insn(ptr noundef %1) #13
  br label %356

354:                                              ; preds = %332
  %355 = getelementptr inbounds %struct.occr, ptr %333, i64 0, i32 2
  store i8 1, ptr %355, align 8, !tbaa !325
  br label %356

356:                                              ; preds = %352, %354, %260, %253, %232, %251, %234, %245
  %357 = icmp eq ptr %222, null
  br i1 %357, label %373, label %358, !prof !206

358:                                              ; preds = %356
  %359 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !202
  %360 = ptrtoint ptr %222 to i64
  %361 = ptrtoint ptr %359 to i64
  %362 = sub i64 %360, %361
  store i64 %362, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !196
  %363 = icmp sgt i64 %362, 0
  br i1 %363, label %364, label %371, !prof !371

364:                                              ; preds = %358
  %365 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !198
  %366 = ptrtoint ptr %365 to i64
  %367 = sub i64 %366, %361
  %368 = icmp slt i64 %362, %367
  br i1 %368, label %369, label %371, !prof !371

369:                                              ; preds = %364
  %370 = getelementptr inbounds i8, ptr %359, i64 %362
  store ptr %370, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !200
  store ptr %370, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !199
  br label %373

371:                                              ; preds = %364, %358
  %372 = getelementptr inbounds i8, ptr %359, i64 %362
  tail call void @obstack_free(ptr noundef nonnull @unoccr_obstack, ptr noundef %372) #13
  br label %373

373:                                              ; preds = %20, %356, %371, %369, %3, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !414 !PGOFuncName !415 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !416

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !417
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 !prof !419 !PGOFuncName !420 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !421 !PGOFuncName !422 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !213
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !423

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !165
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !424 !PGOFuncName !425 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !426

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #14
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !427

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.7) #13
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !428
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !428
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !421 !PGOFuncName !430 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !431

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #14
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !424 !PGOFuncName !432 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !426

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #14
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !433 !PGOFuncName !434 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !435

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.7) #13
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !165
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !424 !PGOFuncName !436 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !165
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @reg_used_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_bb_avail_insn(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #10 !prof !437 !PGOFuncName !438 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4, !prof !439

4:                                                ; preds = %2, %11
  %5 = phi ptr [ %12, %11 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.occr, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !320
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %14, label %11, !prof !440

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !324
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !prof !441, !llvm.loop !442

14:                                               ; preds = %4, %11, %2
  %15 = phi ptr [ null, %2 ], [ null, %11 ], [ %5, %4 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_avail_load_store_reg(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !443 !PGOFuncName !444 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %19, label %9, !prof !445

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !185
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %19, label %15, !prof !446

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 906, ptr noundef nonnull @.str.7) #13
  %16 = load ptr, ptr %2, align 8, !tbaa !185
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  br label %19

19:                                               ; preds = %15, %9, %1
  %20 = phi ptr [ %5, %1 ], [ %11, %9 ], [ %18, %15 ]
  ret ptr %20
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reg_killed_on_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !443 !PGOFuncName !447 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !448

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %17, %15 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %7) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %6, %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !prof !256, !llvm.loop !449

19:                                               ; preds = %12, %15, %2
  %20 = phi i8 [ 0, %2 ], [ 0, %15 ], [ 1, %12 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reg_used_on_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !443 !PGOFuncName !450 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !448

6:                                                ; preds = %2, %17
  %7 = phi ptr [ %19, %17 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !185
  %15 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %14) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6, %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !185
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !prof !256, !llvm.loop !451

21:                                               ; preds = %12, %17, %2
  %22 = phi i8 [ 0, %2 ], [ 0, %17 ], [ 1, %12 ]
  ret i8 %22
}

; Function Attrs: optsize
declare i32 @reg_set_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_redundant_insns_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !452 !PGOFuncName !453 {
  %3 = load ptr, ptr %0, align 8, !tbaa !165
  %4 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !165
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7, !prof !454

7:                                                ; preds = %2, %30
  %8 = phi ptr [ %31, %30 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.occr, ptr %8, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !325
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12, !prof !312

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @dbg_cnt(i32 noundef 13) #13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.occr, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !320
  %18 = tail call ptr @delete_insn(ptr noundef %17) #13
  %19 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !174
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !174
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %21)
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %26 = load ptr, ptr %16, align 8, !tbaa !320
  %27 = tail call i32 @print_rtl_single(ptr noundef %25, ptr noundef %26) #13
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !165
  %29 = tail call i32 @fputc(i32 10, ptr %28)
  br label %30

30:                                               ; preds = %7, %12, %23, %15
  %31 = load ptr, ptr %8, align 8, !tbaa !165
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !prof !455, !llvm.loop !456

33:                                               ; preds = %30, %2
  ret i32 1
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!157}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!35 = !{ptr @gate_handle_gcse2, ptr @optimize_function_for_speed_p, i64 36}
!36 = !{ptr @rest_of_handle_gcse2, ptr @get_insns, i64 76}
!37 = !{ptr @rest_of_handle_gcse2, ptr @gcse_after_reload_main, i64 38}
!38 = !{ptr @rest_of_handle_gcse2, ptr @rebuild_jump_labels, i64 38}
!39 = !{ptr @gcse_after_reload_main, ptr @alloc_mem, i64 38}
!40 = !{ptr @gcse_after_reload_main, ptr @init_alias_analysis, i64 38}
!41 = !{ptr @gcse_after_reload_main, ptr @compute_hash_table, i64 38}
!42 = !{ptr @gcse_after_reload_main, ptr @dump_hash_table, i64 1}
!43 = !{ptr @gcse_after_reload_main, ptr @htab_elements, i64 38}
!44 = !{ptr @gcse_after_reload_main, ptr @eliminate_partially_redundant_loads, i64 37}
!45 = !{ptr @gcse_after_reload_main, ptr @delete_redundant_insns, i64 37}
!46 = !{ptr @gcse_after_reload_main, ptr @fwrite, i64 2}
!47 = !{ptr @gcse_after_reload_main, ptr @fprintf, i64 3}
!48 = !{ptr @gcse_after_reload_main, ptr @end_alias_analysis, i64 38}
!49 = !{ptr @gcse_after_reload_main, ptr @free_mem, i64 38}
!50 = !{ptr @alloc_mem, ptr @get_max_uid, i64 38}
!51 = !{ptr @alloc_mem, ptr @xcalloc, i64 38}
!52 = !{ptr @alloc_mem, ptr @htab_create, i64 38}
!53 = !{ptr @alloc_mem, ptr @_obstack_begin, i64 152}
!54 = !{ptr @alloc_mem, ptr @xmalloc, i64 38}
!55 = !{ptr @alloc_mem, ptr @_obstack_newchunk, i64 1}
!56 = !{ptr @compute_hash_table, ptr @reset_opr_set_tables, i64 151664}
!57 = !{ptr @compute_hash_table, ptr @record_opr_changes, i64 539148}
!58 = !{ptr @compute_hash_table, ptr @hash_scan_set, i64 528842}
!59 = !{ptr @eliminate_partially_redundant_loads, ptr @bb_has_well_behaved_predecessors, i64 147836}
!60 = !{ptr @eliminate_partially_redundant_loads, ptr @optimize_bb_for_size_p, i64 147835}
!61 = !{ptr @eliminate_partially_redundant_loads, ptr @reset_opr_set_tables, i64 22970}
!62 = !{ptr @eliminate_partially_redundant_loads, ptr @general_operand, i64 6412}
!63 = !{ptr @eliminate_partially_redundant_loads, ptr @oprs_unchanged_p, i64 6411}
!64 = !{ptr @eliminate_partially_redundant_loads, ptr @may_trap_p, i64 1}
!65 = !{ptr @eliminate_partially_redundant_loads, ptr @side_effects_p, i64 5780}
!66 = !{ptr @eliminate_partially_redundant_loads, ptr @lookup_expr_in_table, i64 5779}
!67 = !{ptr @eliminate_partially_redundant_loads, ptr @eliminate_partially_redundant_load, i64 5212}
!68 = !{ptr @eliminate_partially_redundant_loads, ptr @record_opr_changes, i64 70647}
!69 = !{ptr @eliminate_partially_redundant_loads, ptr @commit_edge_insertions, i64 37}
!70 = !{ptr @delete_redundant_insns, ptr @htab_traverse, i64 38}
!71 = !{ptr @delete_redundant_insns, ptr @fputc, i64 1}
!72 = !{ptr @free_mem, ptr @free, i64 76}
!73 = !{ptr @free_mem, ptr @htab_delete, i64 38}
!74 = !{ptr @free_mem, ptr @obstack_free, i64 152}
!75 = !{ptr @expr_equiv_p, ptr @exp_equiv_p, i64 23121}
!76 = !{ptr @expr_equiv_p, ptr @fancy_abort, i64 1}
!77 = !{ptr @reset_opr_set_tables, ptr @obstack_free, i64 2}
!78 = !{ptr @record_opr_changes, ptr @note_stores, i64 632646}
!79 = !{ptr @record_opr_changes, ptr @record_last_reg_set_info, i64 1}
!80 = !{ptr @record_opr_changes, ptr @record_last_reg_set_info_regno, i64 3399021}
!81 = !{ptr @record_opr_changes, ptr @record_last_mem_set_info, i64 73891}
!82 = !{ptr @hash_scan_set, ptr @set_noop_p, i64 113775}
!83 = !{ptr @hash_scan_set, ptr @can_copy_p, i64 101081}
!84 = !{ptr @hash_scan_set, ptr @general_operand, i64 101079}
!85 = !{ptr @hash_scan_set, ptr @rhs_regno, i64 101077}
!86 = !{ptr @hash_scan_set, ptr @oprs_unchanged_p, i64 31733}
!87 = !{ptr @hash_scan_set, ptr @load_killed_in_block_p, i64 69383}
!88 = !{ptr @hash_scan_set, ptr @insert_expr_in_table, i64 17724}
!89 = !{ptr @record_last_set_info, ptr @record_last_reg_set_info, i64 372149}
!90 = !{ptr @record_last_set_info, ptr @push_operand, i64 88307}
!91 = !{ptr @record_last_set_info, ptr @record_last_mem_set_info, i64 88306}
!92 = !{ptr @record_last_set_info, ptr @record_last_reg_set_info_regno, i64 1}
!93 = !{ptr @record_last_reg_set_info, ptr @rhs_regno, i64 744298}
!94 = !{ptr @record_last_reg_set_info, ptr @end_hard_regno, i64 372149}
!95 = !{ptr @record_last_mem_set_info, ptr @_obstack_newchunk, i64 1}
!96 = !{ptr @oprs_unchanged_p, ptr @rhs_regno, i64 528}
!97 = !{ptr @oprs_unchanged_p, ptr @fancy_abort, i64 2}
!98 = !{ptr @oprs_unchanged_p, ptr @load_killed_in_block_p, i64 61385}
!99 = !{ptr @oprs_unchanged_p, ptr @oprs_unchanged_p, i64 1151}
!100 = !{ptr @oprs_unchanged_p, ptr @reg_changed_after_insn_p, i64 528}
!101 = !{ptr @insert_expr_in_table, ptr @hash_expr, i64 17725}
!102 = !{ptr @insert_expr_in_table, ptr @_obstack_newchunk, i64 67}
!103 = !{ptr @insert_expr_in_table, ptr @htab_find_slot_with_hash, i64 17724}
!104 = !{ptr @insert_expr_in_table, ptr @obstack_free, i64 2}
!105 = !{ptr @load_killed_in_block_p, ptr @note_stores, i64 1016}
!106 = !{ptr @reg_changed_after_insn_p, ptr @rhs_regno, i64 11711}
!107 = !{ptr @reg_changed_after_insn_p, ptr @end_hard_regno, i64 5846}
!108 = !{ptr @hash_expr, ptr @hash_rtx, i64 23861}
!109 = !{ptr @find_mem_conflicts, ptr @true_dependence, i64 797}
!110 = !{ptr @bb_has_well_behaved_predecessors, ptr @VEC_edge_base_length, i64 155618}
!111 = !{ptr @bb_has_well_behaved_predecessors, ptr @ei_start_1, i64 155615}
!112 = !{ptr @bb_has_well_behaved_predecessors, ptr @ei_cond, i64 462061}
!113 = !{ptr @bb_has_well_behaved_predecessors, ptr @ei_next, i64 306446}
!114 = !{ptr @lookup_expr_in_table, ptr @hash_expr, i64 6136}
!115 = !{ptr @lookup_expr_in_table, ptr @_obstack_newchunk, i64 1}
!116 = !{ptr @lookup_expr_in_table, ptr @htab_find_slot_with_hash, i64 6135}
!117 = !{ptr @lookup_expr_in_table, ptr @obstack_free, i64 2}
!118 = !{ptr @eliminate_partially_redundant_load, ptr @reg_changed_after_insn_p, i64 5535}
!119 = !{ptr @eliminate_partially_redundant_load, ptr @reg_used_between_p, i64 5534}
!120 = !{ptr @eliminate_partially_redundant_load, ptr @ei_start_1, i64 5533}
!121 = !{ptr @eliminate_partially_redundant_load, ptr @ei_cond, i64 21622}
!122 = !{ptr @eliminate_partially_redundant_load, ptr @get_bb_avail_insn, i64 16096}
!123 = !{ptr @eliminate_partially_redundant_load, ptr @get_avail_load_store_reg, i64 32}
!124 = !{ptr @eliminate_partially_redundant_load, ptr @fancy_abort, i64 3}
!125 = !{ptr @eliminate_partially_redundant_load, ptr @copy_rtx, i64 116}
!126 = !{ptr @eliminate_partially_redundant_load, ptr @gen_move_insn, i64 58}
!127 = !{ptr @eliminate_partially_redundant_load, ptr @extract_insn, i64 26}
!128 = !{ptr @eliminate_partially_redundant_load, ptr @constrain_operands, i64 26}
!129 = !{ptr @eliminate_partially_redundant_load, ptr @reg_killed_on_edge, i64 25}
!130 = !{ptr @eliminate_partially_redundant_load, ptr @reg_used_on_edge, i64 24}
!131 = !{ptr @eliminate_partially_redundant_load, ptr @reg_set_between_p, i64 23}
!132 = !{ptr @eliminate_partially_redundant_load, ptr @VEC_edge_base_length, i64 48166}
!133 = !{ptr @eliminate_partially_redundant_load, ptr @set_noop_p, i64 26}
!134 = !{ptr @eliminate_partially_redundant_load, ptr @_obstack_newchunk, i64 1}
!135 = !{ptr @eliminate_partially_redundant_load, ptr @ei_next, i64 16089}
!136 = !{ptr @eliminate_partially_redundant_load, ptr @optimize_bb_for_size_p, i64 23}
!137 = !{ptr @eliminate_partially_redundant_load, ptr @insert_insn_on_edge, i64 12}
!138 = !{ptr @eliminate_partially_redundant_load, ptr @rhs_regno, i64 8}
!139 = !{ptr @eliminate_partially_redundant_load, ptr @fprintf, i64 8}
!140 = !{ptr @eliminate_partially_redundant_load, ptr @copy_insn, i64 6}
!141 = !{ptr @eliminate_partially_redundant_load, ptr @print_rtl, i64 4}
!142 = !{ptr @eliminate_partially_redundant_load, ptr @fputc, i64 4}
!143 = !{ptr @eliminate_partially_redundant_load, ptr @obstack_free, i64 2}
!144 = !{ptr @ei_cond, ptr @ei_end_p, i64 483701}
!145 = !{ptr @ei_cond, ptr @ei_edge, i64 322550}
!146 = !{ptr @ei_next, ptr @ei_container, i64 645099}
!147 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 322550}
!148 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!149 = !{ptr @ei_end_p, ptr @ei_container, i64 967401}
!150 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 483701}
!151 = !{ptr @ei_edge, ptr @ei_container, i64 645099}
!152 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 322550}
!153 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!154 = !{ptr @get_avail_load_store_reg, ptr @fancy_abort, i64 1}
!155 = !{ptr @delete_redundant_insns_1, ptr @dbg_cnt, i64 1}
!156 = !{ptr @delete_redundant_insns_1, ptr @delete_insn, i64 1}
!157 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!158 = !{!"function_entry_count", i64 38}
!159 = !{!"postreload-gcse.c:gate_handle_gcse2"}
!160 = !{!161, !161, i64 0}
!161 = !{!"int", !162, i64 0}
!162 = !{!"omnipotent char", !163, i64 0}
!163 = !{!"Simple C/C++ TBAA"}
!164 = !{!"branch_weights", i32 1521, i32 79}
!165 = !{!166, !166, i64 0}
!166 = !{!"any pointer", !162, i64 0}
!167 = !{!"postreload-gcse.c:rest_of_handle_gcse2"}
!168 = !{!"postreload-gcse.c:gcse_after_reload_main"}
!169 = !{!"branch_weights", i32 39, i32 1}
!170 = !{!"branch_weights", i32 1, i32 39}
!171 = !{!172, !161, i64 4}
!172 = !{!"", !161, i64 0, !161, i64 4, !161, i64 8}
!173 = !{!172, !161, i64 0}
!174 = !{!172, !161, i64 8}
!175 = !{!"postreload-gcse.c:alloc_mem"}
!176 = !{!177, !166, i64 8}
!177 = !{!"function", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40, !166, i64 48, !166, i64 56, !166, i64 64, !166, i64 72, !166, i64 80, !166, i64 88, !166, i64 96, !161, i64 104, !161, i64 108, !161, i64 112, !161, i64 116, !161, i64 120, !161, i64 124, !166, i64 128, !161, i64 136, !161, i64 137, !161, i64 138, !161, i64 138, !161, i64 138, !161, i64 138, !161, i64 138, !161, i64 138, !161, i64 138, !161, i64 139, !161, i64 139, !161, i64 139, !161, i64 139, !161, i64 139, !161, i64 139, !161, i64 139}
!178 = !{!179, !166, i64 0}
!179 = !{!"control_flow_graph", !166, i64 0, !166, i64 8, !166, i64 16, !161, i64 24, !161, i64 28, !161, i64 32, !166, i64 40, !161, i64 48, !162, i64 52, !162, i64 60, !161, i64 68, !161, i64 72}
!180 = !{!179, !166, i64 8}
!181 = !{!182, !166, i64 56}
!182 = !{!"basic_block_def", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !162, i64 32, !166, i64 48, !166, i64 56, !162, i64 64, !183, i64 72, !161, i64 80, !161, i64 84, !161, i64 88, !161, i64 92, !161, i64 96}
!183 = !{!"long", !162, i64 0}
!184 = !{!"branch_weights", i32 1, i32 155}
!185 = !{!162, !162, i64 0}
!186 = !{!"branch_weights", i32 1, i32 127}
!187 = !{!188, !166, i64 8}
!188 = !{!"rtl_bb_info", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !161, i64 32}
!189 = !{!"branch_weights", i32 155655, i32 827518}
!190 = !{!"branch_weights", i32 127, i32 125845889}
!191 = distinct !{!191, !192}
!192 = !{!"llvm.loop.mustprogress"}
!193 = !{!"branch_weights", i32 155, i32 622465}
!194 = distinct !{!194, !192}
!195 = !{!"branch_weights", i32 54033459, i32 2093450189}
!196 = !{!197, !183, i64 40}
!197 = !{!"obstack", !183, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !183, i64 40, !161, i64 48, !166, i64 56, !166, i64 64, !166, i64 72, !161, i64 80, !161, i64 80, !161, i64 80}
!198 = !{!197, !166, i64 32}
!199 = !{!197, !166, i64 24}
!200 = !{!197, !166, i64 16}
!201 = !{!197, !161, i64 48}
!202 = !{!197, !166, i64 8}
!203 = !{!"postreload-gcse.c:compute_hash_table"}
!204 = !{!"branch_weights", i32 -1672857796, i32 1268615867}
!205 = distinct !{!205, !192}
!206 = !{!"branch_weights", i32 0, i32 -2147483648}
!207 = !{!"branch_weights", i32 547036, i32 10660}
!208 = distinct !{!208, !192}
!209 = distinct !{!209, !192}
!210 = !{!"function_entry_count", i64 0}
!211 = !{!"postreload-gcse.c:dump_hash_table"}
!212 = !{!"postreload-gcse.c:eliminate_partially_redundant_loads"}
!213 = !{i8 0, i8 2}
!214 = !{!"branch_weights", i32 1, i32 155617}
!215 = !{!"branch_weights", i32 24179, i32 131439}
!216 = !{!"branch_weights", i32 24179, i32 128515}
!217 = !{!"branch_weights", i32 45987, i32 82529}
!218 = !{!"branch_weights", i32 42762, i32 3226}
!219 = !{!"branch_weights", i32 35541, i32 7222}
!220 = !{!"branch_weights", i32 46308025, i32 195590827}
!221 = !{!"branch_weights", i32 1, i32 6805}
!222 = !{!"branch_weights", i32 669, i32 6137}
!223 = !{!"branch_weights", i32 6137, i32 1}
!224 = !{!"branch_weights", i32 602, i32 5536}
!225 = !{!"branch_weights", i32 -818191407, i32 -1810565722}
!226 = !{!"branch_weights", i32 127, i32 19544577}
!227 = distinct !{!227, !192}
!228 = !{!"branch_weights", i32 155, i32 622313}
!229 = distinct !{!229, !192}
!230 = !{!"postreload-gcse.c:delete_redundant_insns"}
!231 = !{!"postreload-gcse.c:free_mem"}
!232 = !{!"function_entry_count", i64 124}
!233 = !{!"postreload-gcse.c:hash_expr_for_htab"}
!234 = !{!235, !161, i64 8}
!235 = !{!"expr", !166, i64 0, !161, i64 8, !166, i64 16}
!236 = !{!"function_entry_count", i64 23121}
!237 = !{!"postreload-gcse.c:expr_equiv_p"}
!238 = !{!235, !166, i64 0}
!239 = !{!"branch_weights", i32 40, i32 23083}
!240 = !{!"branch_weights", i32 23083, i32 1}
!241 = !{!"function_entry_count", i64 179832}
!242 = !{!"postreload-gcse.c:reset_opr_set_tables"}
!243 = !{!"branch_weights", i32 179833, i32 1}
!244 = !{!"function_entry_count", i64 632646}
!245 = !{!"postreload-gcse.c:record_opr_changes"}
!246 = !{!"branch_weights", i32 378796, i32 253851}
!247 = !{!"branch_weights", i32 1, i32 253851}
!248 = !{!"branch_weights", i32 253851, i32 0}
!249 = distinct !{!249, !192}
!250 = !{!"branch_weights", i32 73893, i32 558755}
!251 = !{!183, !183, i64 0}
!252 = !{!"branch_weights", i32 517245, i32 3399033}
!253 = !{!"branch_weights", i32 73893, i32 3842384}
!254 = distinct !{!254, !192}
!255 = !{!"branch_weights", i32 73892, i32 1}
!256 = !{!"branch_weights", i32 1, i32 0}
!257 = distinct !{!257, !192}
!258 = !{!"branch_weights", i32 -1564879572, i32 73893}
!259 = !{!"function_entry_count", i64 547035}
!260 = !{!"postreload-gcse.c:hash_scan_set"}
!261 = !{!"branch_weights", i32 31695, i32 515342}
!262 = !{!"branch_weights", i32 82082, i32 433261}
!263 = !{!"branch_weights", i32 1, i32 113776}
!264 = !{!"branch_weights", i32 113776, i32 1}
!265 = !{!"branch_weights", i32 31695, i32 82082}
!266 = !{!"branch_weights", i32 1, i32 31695}
!267 = !{!"branch_weights", i32 31695, i32 1}
!268 = !{!"branch_weights", i32 14010, i32 17686}
!269 = !{!"branch_weights", i32 69389, i32 12694}
!270 = !{!"branch_weights", i32 1, i32 69389}
!271 = !{!"branch_weights", i32 69389, i32 1}
!272 = !{!"branch_weights", i32 41, i32 69349}
!273 = !{!"branch_weights", i32 1, i32 41}
!274 = !{!"function_entry_count", i64 639817}
!275 = !{!"postreload-gcse.c:record_last_set_info"}
!276 = !{!"branch_weights", i32 1, i32 639818}
!277 = !{!"branch_weights", i32 1500301474, i32 -1182048843, i32 738666064}
!278 = !{!"branch_weights", i32 88308, i32 1}
!279 = !{!"function_entry_count", i64 372149}
!280 = !{!"postreload-gcse.c:record_last_reg_set_info"}
!281 = !{!"branch_weights", i32 1, i32 372150}
!282 = distinct !{!282, !192}
!283 = !{!"function_entry_count", i64 3399032}
!284 = !{!"postreload-gcse.c:record_last_reg_set_info_regno"}
!285 = !{!"function_entry_count", i64 857440}
!286 = !{!"postreload-gcse.c:rhs_regno"}
!287 = !{!"function_entry_count", i64 162199}
!288 = !{!"postreload-gcse.c:record_last_mem_set_info"}
!289 = !{!"branch_weights", i32 1, i32 162200}
!290 = !{!291, !166, i64 0}
!291 = !{!"modifies_mem", !166, i64 0, !166, i64 8}
!292 = !{!291, !166, i64 8}
!293 = !{!"function_entry_count", i64 378014}
!294 = !{!"postreload-gcse.c:end_hard_regno"}
!295 = !{!"function_entry_count", i64 63062}
!296 = !{!"postreload-gcse.c:oprs_unchanged_p"}
!297 = !{!"branch_weights", i32 343, i32 331, i32 38499, i32 1, i32 1, i32 420, i32 331, i32 1, i32 1, i32 1, i32 23144, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!298 = !{!"branch_weights", i32 331, i32 1}
!299 = !{!"branch_weights", i32 74, i32 258}
!300 = !{!"branch_weights", i32 23841, i32 14659}
!301 = !{!"branch_weights", i32 127, i32 8071937}
!302 = !{!"branch_weights", i32 1, i32 311}
!303 = !{!"branch_weights", i32 1, i32 1370, i32 1}
!304 = !{!305, !161, i64 0}
!305 = !{!"rtvec_def", !161, i64 0, !162, i64 8}
!306 = !{!"branch_weights", i32 32, i32 654}
!307 = distinct !{!307, !192}
!308 = !{!"branch_weights", i32 374, i32 311}
!309 = distinct !{!309, !192}
!310 = !{!"function_entry_count", i64 17725}
!311 = !{!"postreload-gcse.c:insert_expr_in_table"}
!312 = !{!"branch_weights", i32 17726, i32 1}
!313 = !{!"branch_weights", i32 1, i32 17726}
!314 = !{!235, !166, i64 16}
!315 = !{!"branch_weights", i32 179, i32 17548}
!316 = !{!"branch_weights", i32 17548, i32 1}
!317 = !{!"branch_weights", i32 1, i32 17725}
!318 = !{!"branch_weights", i32 17725, i32 11028816}
!319 = distinct !{!319, !192}
!320 = !{!321, !166, i64 8}
!321 = !{!"occr", !166, i64 0, !166, i64 8, !162, i64 16}
!322 = !{!"branch_weights", i32 17726, i32 11046541}
!323 = !{!"branch_weights", i32 133, i32 17594}
!324 = !{!321, !166, i64 0}
!325 = !{!321, !162, i64 16}
!326 = !{!"function_entry_count", i64 107886}
!327 = !{!"postreload-gcse.c:load_killed_in_block_p"}
!328 = !{!"branch_weights", i32 1, i32 23880}
!329 = !{!"branch_weights", i32 1302, i32 85866}
!330 = !{!"branch_weights", i32 2482, i32 83385}
!331 = distinct !{!331, !192}
!332 = !{!"branch_weights", i32 1, i32 1302}
!333 = !{!"branch_weights", i32 83888, i32 799}
!334 = !{!"branch_weights", i32 120, i32 680}
!335 = !{!"branch_weights", i32 23880, i32 63287}
!336 = !{!"function_entry_count", i64 5865}
!337 = !{!"postreload-gcse.c:reg_changed_after_insn_p"}
!338 = !{!"branch_weights", i32 20, i32 5847}
!339 = !{!"branch_weights", i32 1, i32 5847}
!340 = distinct !{!340, !192}
!341 = !{!"function_entry_count", i64 23861}
!342 = !{!"postreload-gcse.c:hash_expr"}
!343 = !{!"function_entry_count", i64 798}
!344 = !{!"postreload-gcse.c:find_mem_conflicts"}
!345 = !{!"branch_weights", i32 3985018, i32 4000000, i32 3995000, i32 3990006, i32 -1110937321}
!346 = distinct !{!346, !192}
!347 = !{!"branch_weights", i32 680, i32 120}
!348 = !{!"postreload-gcse.c:dump_hash_table_entry"}
!349 = distinct !{!349, !192}
!350 = !{!"function_entry_count", i64 155616}
!351 = !{!"postreload-gcse.c:bb_has_well_behaved_predecessors"}
!352 = !{!182, !166, i64 0}
!353 = !{i64 0, i64 4, !160, i64 8, i64 8, !165}
!354 = !{i64 0, i64 8, !165}
!355 = !{!"branch_weights", i32 1, i32 155616}
!356 = !{!357, !161, i64 48}
!357 = !{!"edge_def", !166, i64 0, !166, i64 8, !162, i64 16, !166, i64 24, !166, i64 32, !161, i64 40, !161, i64 44, !161, i64 48, !161, i64 52, !183, i64 56}
!358 = !{!357, !166, i64 0}
!359 = !{!"branch_weights", i32 306454, i32 1}
!360 = !{!182, !166, i64 8}
!361 = !{!357, !166, i64 8}
!362 = !{!"branch_weights", i32 306249, i32 206}
!363 = !{!"branch_weights", i32 19140, i32 -1364078234}
!364 = !{!"branch_weights", i32 155616, i32 150838}
!365 = distinct !{!365, !192}
!366 = !{!"function_entry_count", i64 6136}
!367 = !{!"postreload-gcse.c:lookup_expr_in_table"}
!368 = !{!"branch_weights", i32 1, i32 6137}
!369 = !{!"function_entry_count", i64 5535}
!370 = !{!"postreload-gcse.c:eliminate_partially_redundant_load"}
!371 = !{!"branch_weights", i32 5536, i32 1}
!372 = !{!188, !166, i64 0}
!373 = !{!"branch_weights", i32 1, i32 5535}
!374 = !{!"branch_weights", i32 16047, i32 26}
!375 = !{!"branch_weights", i32 1, i32 26}
!376 = !{!"branch_weights", i32 26, i32 1}
!377 = !{!"branch_weights", i32 26, i32 0}
!378 = distinct !{!378, !192}
!379 = !{!"branch_weights", i32 16061, i32 38}
!380 = !{!"branch_weights", i32 15452, i32 610}
!381 = !{!357, !183, i64 56}
!382 = !{!"branch_weights", i32 16073, i32 26}
!383 = !{!384, !166, i64 16}
!384 = !{!"unoccr", !166, i64 0, !166, i64 8, !166, i64 16}
!385 = !{!384, !166, i64 8}
!386 = !{!384, !166, i64 0}
!387 = !{!"branch_weights", i32 15434, i32 610}
!388 = !{!"branch_weights", i32 1, i32 16073}
!389 = !{!"branch_weights", i32 5536, i32 10538}
!390 = !{!"branch_weights", i32 5535, i32 10563}
!391 = distinct !{!391, !192}
!392 = !{!"branch_weights", i32 2138561661, i32 8921987}
!393 = !{!"branch_weights", i32 1, i32 47}
!394 = !{!395, !166, i64 976}
!395 = !{!"gcc_target", !396, i64 0, !398, i64 368, !399, i64 664, !161, i64 744, !166, i64 752, !166, i64 760, !166, i64 768, !166, i64 776, !166, i64 784, !166, i64 792, !166, i64 800, !166, i64 808, !166, i64 816, !166, i64 824, !166, i64 832, !166, i64 840, !166, i64 848, !166, i64 856, !166, i64 864, !166, i64 872, !166, i64 880, !166, i64 888, !166, i64 896, !166, i64 904, !166, i64 912, !166, i64 920, !166, i64 928, !166, i64 936, !166, i64 944, !166, i64 952, !166, i64 960, !166, i64 968, !166, i64 976, !166, i64 984, !166, i64 992, !166, i64 1000, !166, i64 1008, !166, i64 1016, !166, i64 1024, !166, i64 1032, !166, i64 1040, !166, i64 1048, !166, i64 1056, !183, i64 1064, !183, i64 1072, !166, i64 1080, !166, i64 1088, !166, i64 1096, !166, i64 1104, !166, i64 1112, !166, i64 1120, !166, i64 1128, !166, i64 1136, !166, i64 1144, !166, i64 1152, !166, i64 1160, !166, i64 1168, !400, i64 1176, !166, i64 1232, !166, i64 1240, !166, i64 1248, !166, i64 1256, !166, i64 1264, !166, i64 1272, !166, i64 1280, !166, i64 1288, !166, i64 1296, !166, i64 1304, !166, i64 1312, !166, i64 1320, !166, i64 1328, !166, i64 1336, !166, i64 1344, !166, i64 1352, !166, i64 1360, !166, i64 1368, !166, i64 1376, !166, i64 1384, !166, i64 1392, !166, i64 1400, !166, i64 1408, !166, i64 1416, !166, i64 1424, !166, i64 1432, !166, i64 1440, !166, i64 1448, !166, i64 1456, !183, i64 1464, !401, i64 1472, !166, i64 1664, !166, i64 1672, !166, i64 1680, !166, i64 1688, !166, i64 1696, !166, i64 1704, !166, i64 1712, !166, i64 1720, !166, i64 1728, !166, i64 1736, !166, i64 1744, !166, i64 1752, !166, i64 1760, !166, i64 1768, !166, i64 1776, !402, i64 1784, !403, i64 1792, !404, i64 1896, !405, i64 1968, !166, i64 2016, !162, i64 2024, !162, i64 2025, !162, i64 2026, !162, i64 2027, !162, i64 2028, !162, i64 2029, !162, i64 2030, !162, i64 2031, !162, i64 2032, !162, i64 2033, !162, i64 2034, !162, i64 2035}
!396 = !{!"asm_out", !166, i64 0, !166, i64 8, !166, i64 16, !397, i64 24, !397, i64 56, !166, i64 88, !166, i64 96, !166, i64 104, !166, i64 112, !166, i64 120, !166, i64 128, !166, i64 136, !166, i64 144, !166, i64 152, !166, i64 160, !166, i64 168, !166, i64 176, !166, i64 184, !166, i64 192, !166, i64 200, !166, i64 208, !166, i64 216, !166, i64 224, !166, i64 232, !166, i64 240, !166, i64 248, !166, i64 256, !166, i64 264, !166, i64 272, !166, i64 280, !166, i64 288, !166, i64 296, !166, i64 304, !166, i64 312, !166, i64 320, !166, i64 328, !166, i64 336, !166, i64 344, !166, i64 352, !166, i64 360}
!397 = !{!"asm_int_op", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24}
!398 = !{!"sched", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40, !166, i64 48, !166, i64 56, !166, i64 64, !166, i64 72, !166, i64 80, !166, i64 88, !166, i64 96, !166, i64 104, !166, i64 112, !166, i64 120, !166, i64 128, !166, i64 136, !166, i64 144, !166, i64 152, !166, i64 160, !166, i64 168, !166, i64 176, !166, i64 184, !166, i64 192, !166, i64 200, !166, i64 208, !166, i64 216, !166, i64 224, !166, i64 232, !166, i64 240, !166, i64 248, !166, i64 256, !166, i64 264, !166, i64 272, !166, i64 280, !166, i64 288}
!399 = !{!"vectorize", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40, !166, i64 48, !166, i64 56, !166, i64 64, !166, i64 72}
!400 = !{!"addr_space", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40, !166, i64 48}
!401 = !{!"calls", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40, !166, i64 48, !166, i64 56, !166, i64 64, !166, i64 72, !166, i64 80, !166, i64 88, !166, i64 96, !166, i64 104, !166, i64 112, !166, i64 120, !166, i64 128, !166, i64 136, !166, i64 144, !166, i64 152, !166, i64 160, !166, i64 168, !166, i64 176, !166, i64 184}
!402 = !{!"c", !166, i64 0}
!403 = !{!"cxx", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40, !166, i64 48, !166, i64 56, !166, i64 64, !166, i64 72, !166, i64 80, !166, i64 88, !166, i64 96}
!404 = !{!"emutls", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40, !166, i64 48, !166, i64 56, !162, i64 64, !162, i64 65}
!405 = !{!"target_option_hooks", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40}
!406 = !{!"branch_weights", i32 23, i32 25}
!407 = !{!"branch_weights", i32 1, i32 23}
!408 = !{!409, !161, i64 8}
!409 = !{!"param_info", !166, i64 0, !161, i64 8, !162, i64 12, !161, i64 16, !161, i64 20, !166, i64 24}
!410 = !{!182, !161, i64 80}
!411 = distinct !{!411, !192}
!412 = distinct !{!412, !192}
!413 = distinct !{!413, !192}
!414 = !{!"function_entry_count", i64 1026138}
!415 = !{!"postreload-gcse.c:VEC_edge_base_length"}
!416 = !{!"branch_weights", i32 1, i32 1026139}
!417 = !{!418, !161, i64 0}
!418 = !{!"VEC_edge_base", !161, i64 0, !161, i64 4, !162, i64 8}
!419 = !{!"function_entry_count", i64 161151}
!420 = !{!"postreload-gcse.c:ei_start_1"}
!421 = !{!"function_entry_count", i64 483701}
!422 = !{!"postreload-gcse.c:ei_cond"}
!423 = !{!"branch_weights", i32 322551, i32 161152}
!424 = !{!"function_entry_count", i64 322550}
!425 = !{!"postreload-gcse.c:ei_next"}
!426 = !{!"branch_weights", i32 1, i32 322551}
!427 = !{!"branch_weights", i32 322551, i32 1}
!428 = !{!429, !161, i64 0}
!429 = !{!"", !161, i64 0, !166, i64 8}
!430 = !{!"postreload-gcse.c:ei_end_p"}
!431 = !{!"branch_weights", i32 1, i32 483702}
!432 = !{!"postreload-gcse.c:ei_edge"}
!433 = !{!"function_entry_count", i64 2257602}
!434 = !{!"postreload-gcse.c:ei_container"}
!435 = !{!"branch_weights", i32 1, i32 2257603}
!436 = !{!"postreload-gcse.c:VEC_edge_base_index"}
!437 = !{!"function_entry_count", i64 16097}
!438 = !{!"postreload-gcse.c:get_bb_avail_insn"}
!439 = !{!"branch_weights", i32 1, i32 16072}
!440 = !{!"branch_weights", i32 26, i32 23587145}
!441 = !{!"branch_weights", i32 16072, i32 23571098}
!442 = distinct !{!442, !192}
!443 = !{!"function_entry_count", i64 25}
!444 = !{!"postreload-gcse.c:get_avail_load_store_reg"}
!445 = !{!"branch_weights", i32 19, i32 8}
!446 = !{!"branch_weights", i32 8, i32 1}
!447 = !{!"postreload-gcse.c:reg_killed_on_edge"}
!448 = !{!"branch_weights", i32 25, i32 1}
!449 = distinct !{!449, !192}
!450 = !{!"postreload-gcse.c:reg_used_on_edge"}
!451 = distinct !{!451, !192}
!452 = !{!"function_entry_count", i64 178}
!453 = !{!"postreload-gcse.c:delete_redundant_insns_1"}
!454 = !{!"branch_weights", i32 1, i32 178}
!455 = !{!"branch_weights", i32 178, i32 17548}
!456 = distinct !{!456, !192}
