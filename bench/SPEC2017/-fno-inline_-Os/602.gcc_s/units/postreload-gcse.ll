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

@pass_gcse2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_gcse2, ptr @rest_of_handle_gcse2, ptr null, ptr null, i32 0, i32 152, i32 0, i32 0, i32 0, i32 0, i32 1035 } }, align 8
@.str = private unnamed_addr constant [6 x i8] c"gcse2\00", align 1
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
define internal zeroext i8 @gate_handle_gcse2() #0 !prof !165 !PGOFuncName !166 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !167
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse_after_reload, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %11, !prof !171

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !172
  %8 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %7) #13
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %0
  %12 = phi i8 [ 0, %0 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_gcse2() #0 !prof !165 !PGOFuncName !174 {
  %1 = tail call ptr @get_insns() #13
  tail call fastcc void @gcse_after_reload_main() #14
  %2 = tail call ptr @get_insns() #13
  tail call void @rebuild_jump_labels(ptr noundef %2) #13
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gcse_after_reload_main() unnamed_addr #0 !prof !165 !PGOFuncName !175 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @stats, i8 0, i64 12, i1 false)
  tail call fastcc void @alloc_mem() #14
  tail call void @init_alias_analysis() #13
  tail call fastcc void @compute_hash_table() #14
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !176

3:                                                ; preds = %0
  tail call fastcc void @dump_hash_table(ptr noundef nonnull %1) #14
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @expr_table, align 8, !tbaa !172
  %6 = tail call i64 @htab_elements(ptr noundef %5) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %24, label %8, !prof !177

8:                                                ; preds = %4
  tail call fastcc void @eliminate_partially_redundant_loads() #14
  tail call fastcc void @delete_redundant_insns() #14
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11, !prof !178

11:                                               ; preds = %8
  %12 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr nonnull %9)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %14 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !179
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef %14) #14
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %17 = load i32, ptr @stats, align 4, !tbaa !181
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %17) #14
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %20 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !182
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.4, i32 noundef %20) #14
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !172
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
define internal fastcc void @alloc_mem() unnamed_addr #0 !prof !165 !PGOFuncName !183 {
  %1 = tail call i32 @get_max_uid() #13
  %2 = add nsw i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 4) #13
  store ptr %4, ptr @uid_cuid, align 8, !tbaa !172
  %5 = load ptr, ptr @cfun, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !184
  %8 = load ptr, ptr %7, align 8, !tbaa !186
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !188
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !189
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %55, label %14, !prof !192

14:                                               ; preds = %0, %44
  %15 = phi ptr [ %48, %44 ], [ %12, %0 ]
  %16 = phi i32 [ %46, %44 ], [ 1, %0 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !193
  %19 = load ptr, ptr %18, align 8, !tbaa !193
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21, !prof !194

21:                                               ; preds = %14, %30
  %22 = phi ptr [ %42, %30 ], [ %19, %14 ]
  %23 = phi i32 [ %36, %30 ], [ %16, %14 ]
  %24 = load ptr, ptr %17, align 8, !tbaa !193
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !195
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !193
  %29 = icmp eq ptr %22, %28
  br i1 %29, label %44, label %30, !prof !197

30:                                               ; preds = %21
  %31 = load i32, ptr %22, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %23, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !193
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %4, i64 %39
  store i32 %23, ptr %40, align 4, !tbaa !167
  %41 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !193
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %21, !prof !198, !llvm.loop !199

44:                                               ; preds = %30, %21, %14
  %45 = phi i32 [ %16, %14 ], [ %23, %21 ], [ %36, %30 ]
  %46 = freeze i32 %45
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !189
  %49 = icmp eq ptr %48, %10
  br i1 %49, label %50, label %14, !prof !201, !llvm.loop !202

50:                                               ; preds = %44
  %51 = icmp sgt i32 %46, 55
  br i1 %51, label %52, label %55, !prof !203

52:                                               ; preds = %50
  %53 = lshr i32 %46, 2
  %54 = zext nneg i32 %53 to i64
  br label %55

55:                                               ; preds = %0, %50, %52
  %56 = phi i64 [ %54, %52 ], [ 13, %50 ], [ 13, %0 ]
  %57 = tail call ptr @htab_create(i64 noundef %56, ptr noundef nonnull @hash_expr_for_htab, ptr noundef nonnull @expr_equiv_p, ptr noundef null) #13
  store ptr %57, ptr @expr_table, align 8, !tbaa !172
  %58 = tail call i32 @_obstack_begin(ptr noundef nonnull @expr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %59 = tail call i32 @_obstack_begin(ptr noundef nonnull @occr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %60 = tail call i32 @_obstack_begin(ptr noundef nonnull @unoccr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %61 = tail call i32 @_obstack_begin(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %62 = tail call ptr @xmalloc(i64 noundef 212) #13
  store ptr %62, ptr @reg_avail_info, align 8, !tbaa !172
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !204
  %63 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !206
  %64 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !207
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = icmp slt i64 %67, 16
  br i1 %68, label %69, label %72, !prof !208

69:                                               ; preds = %55
  tail call void @_obstack_newchunk(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 16) #13
  %70 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !204
  %71 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %72

72:                                               ; preds = %55, %69
  %73 = phi ptr [ %64, %55 ], [ %71, %69 ]
  %74 = phi i64 [ 16, %55 ], [ %70, %69 ]
  %75 = getelementptr inbounds i8, ptr %73, i64 %74
  %76 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !209
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %81, !prof !208

78:                                               ; preds = %72
  %79 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  %80 = or i8 %79, 2
  store i8 %80, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  br label %81

81:                                               ; preds = %72, %78
  %82 = ptrtoint ptr %76 to i64
  store i64 %82, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !204
  %83 = ptrtoint ptr %75 to i64
  %84 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 6), align 8, !tbaa !210
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = xor i32 %84, -1
  %88 = sext i32 %87 to i64
  %89 = and i64 %86, %88
  %90 = inttoptr i64 %89 to ptr
  store ptr %90, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !207
  %91 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !211
  %92 = ptrtoint ptr %91 to i64
  %93 = sub i64 %89, %92
  %94 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !206
  %95 = ptrtoint ptr %94 to i64
  %96 = sub i64 %95, %92
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %99, !prof !208

98:                                               ; preds = %81
  store ptr %94, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %99

99:                                               ; preds = %81, %98
  %100 = phi ptr [ %90, %81 ], [ %94, %98 ]
  store ptr %100, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %76, ptr @modifies_mem_obstack_bottom, align 8, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_hash_table() unnamed_addr #0 !prof !165 !PGOFuncName !212 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !172
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = load ptr, ptr %3, align 8, !tbaa !186
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !188
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %73, label %10, !prof !192

10:                                               ; preds = %0, %64
  %11 = phi ptr [ %66, %64 ], [ %6, %0 ]
  tail call fastcc void @reset_opr_set_tables() #14
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !193
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16, !prof !194

16:                                               ; preds = %10, %30
  %17 = phi ptr [ %32, %30 ], [ %14, %10 ]
  %18 = load ptr, ptr %12, align 8, !tbaa !193
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !195
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %36, label %24, !prof !197

24:                                               ; preds = %16
  %25 = load i32, ptr %17, align 8
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, -7
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %30, !prof !213

29:                                               ; preds = %24
  tail call fastcc void @record_opr_changes(ptr noundef nonnull %17) #14
  br label %30

30:                                               ; preds = %24, %29
  %31 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !193
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %16, !prof !198, !llvm.loop !214

34:                                               ; preds = %30
  %35 = load ptr, ptr %12, align 8, !tbaa !193
  br label %36

36:                                               ; preds = %16, %34
  %37 = phi ptr [ %35, %34 ], [ %18, %16 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !193
  %39 = icmp eq ptr %38, null
  br i1 %39, label %64, label %40, !prof !215

40:                                               ; preds = %36, %60
  %41 = phi ptr [ %62, %60 ], [ %38, %36 ]
  %42 = load ptr, ptr %12, align 8, !tbaa !193
  %43 = getelementptr inbounds %struct.rtl_bb_info, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !195
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !193
  %47 = icmp eq ptr %41, %46
  br i1 %47, label %64, label %48, !prof !197

48:                                               ; preds = %40
  %49 = load i32, ptr %41, align 8
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -7
  %52 = icmp ult i32 %51, 4
  br i1 %52, label %53, label %60, !prof !213

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !193
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 23
  br i1 %58, label %59, label %60, !prof !216

59:                                               ; preds = %53
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %41) #14
  br label %60

60:                                               ; preds = %48, %53, %59
  %61 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !193
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %40, !prof !198, !llvm.loop !217

64:                                               ; preds = %40, %60, %10, %36
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !189
  %67 = load ptr, ptr @cfun, align 8, !tbaa !172
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !184
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !188
  %72 = icmp eq ptr %66, %71
  br i1 %72, label %73, label %10, !prof !201, !llvm.loop !218

73:                                               ; preds = %64, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_hash_table(ptr noundef %0) unnamed_addr #0 !prof !219 !PGOFuncName !220 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 24, i64 1, ptr %0)
  %3 = load ptr, ptr @expr_table, align 8, !tbaa !172
  %4 = tail call i64 @htab_size(ptr noundef %3) #13
  %5 = load ptr, ptr @expr_table, align 8, !tbaa !172
  %6 = tail call i64 @htab_elements(ptr noundef %5) #13
  %7 = load ptr, ptr @expr_table, align 8, !tbaa !172
  %8 = tail call double @htab_collisions(ptr noundef %7) #13
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %4, i64 noundef %6, double noundef %8) #14
  %10 = load ptr, ptr @expr_table, align 8, !tbaa !172
  %11 = tail call i64 @htab_elements(ptr noundef %10) #13
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 17, i64 1, ptr %0)
  %15 = load ptr, ptr @expr_table, align 8, !tbaa !172
  tail call void @htab_traverse(ptr noundef %15, ptr noundef nonnull @dump_hash_table_entry, ptr noundef %0) #13
  br label %16

16:                                               ; preds = %13, %1
  %17 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_partially_redundant_loads() unnamed_addr #0 !prof !221 !PGOFuncName !222 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !172
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = load ptr, ptr %3, align 8, !tbaa !186
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !188
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %99, label %10, !prof !223

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !189
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %98, label %14, !prof !224

14:                                               ; preds = %10, %89
  %15 = phi ptr [ %91, %89 ], [ %12, %10 ]
  %16 = tail call fastcc zeroext i8 @bb_has_well_behaved_predecessors(ptr noundef %15) #14, !range !225
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %89, label %18, !prof !226

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %15) #13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %89, !prof !227

21:                                               ; preds = %18
  tail call fastcc void @reset_opr_set_tables() #14
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !193
  %24 = load ptr, ptr %23, align 8, !tbaa !193
  %25 = icmp eq ptr %24, null
  br i1 %25, label %89, label %26, !prof !194

26:                                               ; preds = %21, %85
  %27 = phi ptr [ %87, %85 ], [ %24, %21 ]
  %28 = load ptr, ptr %22, align 8, !tbaa !193
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !195
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !193
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %89, label %34, !prof !228

34:                                               ; preds = %26
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %79, !prof !229

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !193
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 23
  br i1 %43, label %44, label %79, !prof !230

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !193
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %79, !prof !231

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !193
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 134283263
  %55 = icmp eq i32 %54, 43
  br i1 %55, label %56, label %79, !prof !232

56:                                               ; preds = %50
  %57 = lshr i32 %53, 16
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %79, label %60, !prof !233

60:                                               ; preds = %56
  %61 = tail call i32 @general_operand(ptr noundef nonnull %52, i32 noundef %58) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63, !prof !233

63:                                               ; preds = %60
  %64 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef nonnull %52, ptr noundef nonnull %27, i8 noundef zeroext 0) #14, !range !225
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %79, label %66, !prof !234

66:                                               ; preds = %63
  %67 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !167
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69, !prof !235

69:                                               ; preds = %66
  %70 = tail call i32 @may_trap_p(ptr noundef nonnull %52) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69, %66
  %73 = tail call i32 @side_effects_p(ptr noundef nonnull %52) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79, !prof !235

75:                                               ; preds = %72
  %76 = tail call fastcc ptr @lookup_expr_in_table(ptr noundef nonnull %52) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78, !prof !236

78:                                               ; preds = %75
  tail call fastcc void @eliminate_partially_redundant_load(ptr noundef nonnull %15, ptr noundef nonnull %27, ptr noundef nonnull %76) #14
  br label %79

79:                                               ; preds = %56, %60, %63, %69, %72, %75, %78, %50, %44, %38, %34
  %80 = load i32, ptr %27, align 8
  %81 = and i32 %80, 65535
  %82 = add nsw i32 %81, -7
  %83 = icmp ult i32 %82, 4
  br i1 %83, label %84, label %85, !prof !237

84:                                               ; preds = %79
  tail call fastcc void @record_opr_changes(ptr noundef nonnull %27) #14
  br label %85

85:                                               ; preds = %79, %84
  %86 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %87 = load ptr, ptr %86, align 8, !tbaa !193
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %26, !prof !238, !llvm.loop !239

89:                                               ; preds = %85, %26, %21, %18, %14
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !189
  %92 = load ptr, ptr @cfun, align 8, !tbaa !172
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !184
  %95 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !188
  %97 = icmp eq ptr %91, %96
  br i1 %97, label %98, label %14, !prof !240, !llvm.loop !241

98:                                               ; preds = %89, %10
  tail call void @commit_edge_insertions() #13
  br label %99

99:                                               ; preds = %0, %98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_redundant_insns() unnamed_addr #0 !prof !221 !PGOFuncName !242 {
  %1 = load ptr, ptr @expr_table, align 8, !tbaa !172
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @delete_redundant_insns_1, ptr noundef null) #13
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !178

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
define internal fastcc void @free_mem() unnamed_addr #0 !prof !165 !PGOFuncName !243 {
  %1 = load ptr, ptr @uid_cuid, align 8, !tbaa !172
  tail call void @free(ptr noundef %1) #14
  %2 = load ptr, ptr @expr_table, align 8, !tbaa !172
  tail call void @htab_delete(ptr noundef %2) #13
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 0, %4
  store i64 %5, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %14, !prof !208

7:                                                ; preds = %0
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %9 = ptrtoint ptr %8 to i64
  %10 = sub i64 %9, %4
  %11 = icmp sgt i64 %10, %5
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %3, i64 %5
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %16

14:                                               ; preds = %7, %0
  %15 = getelementptr inbounds i8, ptr %3, i64 %5
  tail call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %15) #13
  br label %16

16:                                               ; preds = %14, %12
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 0, %18
  store i64 %19, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %28, !prof !208

21:                                               ; preds = %16
  %22 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %18
  %25 = icmp sgt i64 %24, %19
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, ptr %17, i64 %19
  store ptr %27, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %27, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %30

28:                                               ; preds = %21, %16
  %29 = getelementptr inbounds i8, ptr %17, i64 %19
  tail call void @obstack_free(ptr noundef nonnull @occr_obstack, ptr noundef %29) #13
  br label %30

30:                                               ; preds = %28, %26
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 0, %32
  store i64 %33, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %42, !prof !208

35:                                               ; preds = %30
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %37, %32
  %39 = icmp sgt i64 %38, %33
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %31, i64 %33
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %44

42:                                               ; preds = %35, %30
  %43 = getelementptr inbounds i8, ptr %31, i64 %33
  tail call void @obstack_free(ptr noundef nonnull @unoccr_obstack, ptr noundef %43) #13
  br label %44

44:                                               ; preds = %42, %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !211
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 0, %46
  store i64 %47, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !204
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %56, !prof !208

49:                                               ; preds = %44
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !206
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %51, %46
  %53 = icmp sgt i64 %52, %47
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %45, i64 %47
  store ptr %55, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %55, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %58

56:                                               ; preds = %49, %44
  %57 = getelementptr inbounds i8, ptr %45, i64 %47
  tail call void @obstack_free(ptr noundef nonnull @modifies_mem_obstack, ptr noundef %57) #13
  br label %58

58:                                               ; preds = %56, %54
  %59 = load ptr, ptr @reg_avail_info, align 8, !tbaa !172
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
define internal i32 @hash_expr_for_htab(ptr nocapture noundef readonly %0) #5 !prof !244 !PGOFuncName !245 {
  %2 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !246
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @expr_equiv_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !248 !PGOFuncName !249 {
  %3 = load ptr, ptr %0, align 8, !tbaa !250
  %4 = load ptr, ptr %1, align 8, !tbaa !250
  %5 = tail call i32 @exp_equiv_p(ptr noundef %3, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 1) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7, !prof !251

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !246
  %10 = getelementptr inbounds %struct.expr, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !246
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %14, label %13, !prof !252

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
define internal fastcc void @reset_opr_set_tables() unnamed_addr #0 !prof !253 !PGOFuncName !254 {
  %1 = load ptr, ptr @reg_avail_info, align 8, !tbaa !172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %1, i8 0, i64 212, i1 false)
  %2 = load ptr, ptr @modifies_mem_obstack_bottom, align 8, !tbaa !172
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !211
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  store i64 %6, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !204
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %15, !prof !255

8:                                                ; preds = %0
  %9 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !206
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp slt i64 %6, %11
  br i1 %12, label %13, label %15, !prof !256

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %3, i64 %6
  store ptr %14, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %14, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %17

15:                                               ; preds = %8, %0
  %16 = getelementptr inbounds i8, ptr %3, i64 %6
  tail call void @obstack_free(ptr noundef nonnull @modifies_mem_obstack, ptr noundef %16) #13
  br label %17

17:                                               ; preds = %15, %13
  store ptr null, ptr @modifies_mem_list, align 8, !tbaa !172
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_opr_changes(ptr noundef %0) unnamed_addr #0 !prof !257 !PGOFuncName !258 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !193
  tail call void @note_stores(ptr noundef %3, ptr noundef nonnull @record_last_set_info, ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !prof !259

7:                                                ; preds = %1, %15
  %8 = phi ptr [ %17, %15 ], [ %5, %1 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 131072
  br i1 %11, label %12, label %15, !prof !260

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  tail call fastcc void @record_last_reg_set_info(ptr noundef %0, ptr noundef %14) #14
  br label %15

15:                                               ; preds = %7, %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !193
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !prof !261, !llvm.loop !262

19:                                               ; preds = %15, %1
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %69, !prof !263

23:                                               ; preds = %19
  %24 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !264
  br label %25

25:                                               ; preds = %23, %34
  %26 = phi i64 [ %24, %23 ], [ %35, %34 ]
  %27 = phi i64 [ 0, %23 ], [ %36, %34 ]
  %28 = shl nuw nsw i64 1, %27
  %29 = and i64 %26, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31, !prof !265

31:                                               ; preds = %25
  %32 = trunc i64 %27 to i32
  tail call fastcc void @record_last_reg_set_info_regno(ptr noundef nonnull %0, i32 noundef %32) #14
  %33 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !264
  br label %34

34:                                               ; preds = %25, %31
  %35 = phi i64 [ %26, %25 ], [ %33, %31 ]
  %36 = add nuw nsw i64 %27, 1
  %37 = icmp eq i64 %36, 53
  br i1 %37, label %38, label %25, !prof !266, !llvm.loop !267

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !193
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42, !prof !268

42:                                               ; preds = %38, %60
  %43 = phi ptr [ %62, %60 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !193
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 25
  br i1 %48, label %49, label %60, !prof !269

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !193
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
  %62 = load ptr, ptr %61, align 8, !tbaa !193
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %42, !prof !270, !llvm.loop !271

64:                                               ; preds = %60, %38
  %65 = load i32, ptr %0, align 8
  %66 = and i32 %65, -2080374784
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69, !prof !272

68:                                               ; preds = %64
  tail call fastcc void @record_last_mem_set_info(ptr noundef nonnull %0) #14
  br label %69

69:                                               ; preds = %64, %68, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hash_scan_set(ptr noundef %0) unnamed_addr #0 !prof !273 !PGOFuncName !274 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !193
  %8 = load ptr, ptr %5, align 8, !tbaa !193
  %9 = load i32, ptr %7, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %16, label %12, !prof !275

12:                                               ; preds = %1
  %13 = load i32, ptr %8, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %16, label %92, !prof !276

16:                                               ; preds = %12, %1
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %92, label %20, !prof !277

20:                                               ; preds = %16
  %21 = tail call i32 @set_noop_p(ptr noundef nonnull %4) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %92, !prof !278

23:                                               ; preds = %20
  %24 = load i32, ptr %8, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %46, !prof !279

27:                                               ; preds = %23
  %28 = lshr i32 %24, 16
  %29 = and i32 %28, 255
  %30 = tail call zeroext i8 @can_copy_p(i32 noundef %29) #13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %92, label %32, !prof !280

32:                                               ; preds = %27
  %33 = load i32, ptr %7, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = tail call i32 @general_operand(ptr noundef nonnull %7, i32 noundef %35) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %92, label %38, !prof !280

38:                                               ; preds = %32
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #14
  %40 = icmp ult i32 %39, 8
  br i1 %40, label %43, label %41, !prof !281

41:                                               ; preds = %38
  %42 = icmp ugt i32 %39, 15
  br i1 %42, label %43, label %92, !prof !282

43:                                               ; preds = %41, %38
  %44 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef nonnull %7, ptr noundef nonnull %0, i8 noundef zeroext 1) #14, !range !225
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %92, label %90, !prof !283

46:                                               ; preds = %23
  %47 = load i32, ptr %7, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %92, !prof !284

50:                                               ; preds = %46
  %51 = lshr i32 %47, 16
  %52 = and i32 %51, 255
  %53 = tail call zeroext i8 @can_copy_p(i32 noundef %52) #13
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %92, label %55, !prof !285

55:                                               ; preds = %50
  %56 = load i32, ptr %8, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = tail call i32 @general_operand(ptr noundef nonnull %8, i32 noundef %58) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %92, label %61, !prof !285

61:                                               ; preds = %55
  %62 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #14
  %63 = icmp ult i32 %62, 8
  br i1 %63, label %66, label %64, !prof !286

64:                                               ; preds = %61
  %65 = icmp ugt i32 %62, 15
  br i1 %65, label %66, label %92, !prof !287

66:                                               ; preds = %64, %61
  %67 = load i32, ptr @flag_float_store, align 4, !tbaa !167
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69, !prof !288

69:                                               ; preds = %66
  %70 = load i32, ptr %8, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !193
  switch i8 %75, label %76 [
    i8 8, label %92
    i8 9, label %92
    i8 11, label %92
    i8 17, label %92
  ]

76:                                               ; preds = %69, %66
  %77 = load ptr, ptr @uid_cuid, align 8, !tbaa !172
  %78 = load i32, ptr %2, align 8, !tbaa !193
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %77, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !167
  %82 = add nsw i32 %81, 1
  %83 = tail call fastcc i32 @load_killed_in_block_p(i32 noundef %82, ptr noundef nonnull %8, i8 noundef zeroext 1) #14
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92, !prof !289

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !193
  %88 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %87, ptr noundef nonnull %0, i8 noundef zeroext 1) #14, !range !225
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90, !prof !290

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
define internal void @record_last_set_info(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !291 !PGOFuncName !292 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %11, !prof !293

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !193
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  %13 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %14 = trunc i32 %12 to i16
  switch i16 %14, label %23 [
    i16 37, label %15
    i16 43, label %16
  ], !prof !294

15:                                               ; preds = %11
  tail call fastcc void @record_last_reg_set_info(ptr noundef %2, ptr noundef nonnull %13) #14
  br label %23

16:                                               ; preds = %11
  %17 = lshr i32 %12, 16
  %18 = and i32 %17, 255
  %19 = tail call i32 @push_operand(ptr noundef nonnull %13, i32 noundef %18) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !295

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
define internal fastcc void @record_last_reg_set_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !prof !296 !PGOFuncName !297 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %8 = tail call fastcc i32 @end_hard_regno(i32 noundef %6, i32 noundef %7) #14
  %9 = load ptr, ptr @uid_cuid, align 8, !tbaa !172
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr @reg_avail_info, align 8, !tbaa !172
  br label %12

12:                                               ; preds = %12, %2
  %13 = phi i32 [ %3, %2 ], [ %20, %12 ]
  %14 = load i32, ptr %10, align 8, !tbaa !193
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !167
  %18 = zext i32 %13 to i64
  %19 = getelementptr inbounds i32, ptr %11, i64 %18
  store i32 %17, ptr %19, align 4, !tbaa !167
  %20 = add i32 %13, 1
  %21 = icmp ult i32 %20, %8
  br i1 %21, label %12, label %22, !prof !298, !llvm.loop !299

22:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @record_last_reg_set_info_regno(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !300 !PGOFuncName !301 {
  %3 = load ptr, ptr @uid_cuid, align 8, !tbaa !172
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !193
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !167
  %9 = load ptr, ptr @reg_avail_info, align 8, !tbaa !172
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  store i32 %8, ptr %11, align 4, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !302 !PGOFuncName !303 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !193
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_last_mem_set_info(ptr noundef %0) unnamed_addr #0 !prof !304 !PGOFuncName !305 {
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !204
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !206
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !207
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %11, !prof !306

8:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 16) #13
  %9 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !204
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %13 = phi i64 [ 16, %1 ], [ %9, %8 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !209
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %20, !prof !307

17:                                               ; preds = %11
  %18 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  %19 = or i8 %18, 2
  store i8 %19, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  br label %20

20:                                               ; preds = %11, %17
  %21 = ptrtoint ptr %15 to i64
  store i64 %21, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !204
  %22 = ptrtoint ptr %14 to i64
  %23 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 6), align 8, !tbaa !210
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = xor i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = inttoptr i64 %28 to ptr
  store ptr %29, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !207
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !211
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %28, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !206
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %31
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %38, !prof !307

37:                                               ; preds = %20
  store ptr %33, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %38

38:                                               ; preds = %20, %37
  %39 = phi ptr [ %29, %20 ], [ %33, %37 ]
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %0, ptr %15, align 8, !tbaa !308
  %40 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !172
  %41 = getelementptr inbounds %struct.modifies_mem, ptr %15, i64 0, i32 1
  store ptr %40, ptr %41, align 8, !tbaa !310
  store ptr %15, ptr @modifies_mem_list, align 8, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !prof !311 !PGOFuncName !312 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !193
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
define internal fastcc noundef zeroext i8 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !313 !PGOFuncName !314 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %83, label %5, !prof !194

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
  ], !prof !315

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #14
  %13 = icmp ult i32 %12, 53
  br i1 %13, label %15, label %14, !prof !316

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 510, ptr noundef nonnull @.str.7) #13
  br label %15

15:                                               ; preds = %11, %14
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %79, label %17, !prof !317

17:                                               ; preds = %15
  %18 = load ptr, ptr @uid_cuid, align 8, !tbaa !172
  %19 = load i32, ptr %6, align 8, !tbaa !193
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !167
  %23 = add nsw i32 %22, -1
  br label %79

24:                                               ; preds = %7
  %25 = load ptr, ptr @uid_cuid, align 8, !tbaa !172
  %26 = load i32, ptr %6, align 8, !tbaa !193
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !167
  %30 = tail call fastcc i32 @load_killed_in_block_p(i32 noundef %29, ptr noundef nonnull %8, i8 noundef zeroext %2) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %83, !prof !318

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !193
  %35 = icmp eq ptr %34, null
  br i1 %35, label %83, label %7, !prof !319

36:                                               ; preds = %7, %7, %7, %7, %7, %7
  %37 = icmp eq i8 %2, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %7, %36
  %39 = and i32 %9, 65535
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !193
  %43 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %40
  %44 = load ptr, ptr %43, align 8, !tbaa !172
  %45 = icmp eq i8 %42, 0
  br i1 %45, label %83, label %46, !prof !320

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %48 = zext i8 %42 to i64
  br label %49

49:                                               ; preds = %46, %77
  %50 = phi i64 [ %48, %46 ], [ %51, %77 ]
  %51 = add nsw i64 %50, -1
  %52 = getelementptr inbounds i8, ptr %44, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !193
  switch i8 %53, label %77 [
    i8 101, label %59
    i8 69, label %54
  ], !prof !321

54:                                               ; preds = %49
  %55 = getelementptr inbounds [1 x %union.rtunion_def], ptr %47, i64 0, i64 %51
  %56 = load ptr, ptr %55, align 8, !tbaa !193
  %57 = load i32, ptr %56, align 8, !tbaa !322
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %70, label %77

59:                                               ; preds = %49
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %47, i64 0, i64 %51
  %61 = load ptr, ptr %60, align 8, !tbaa !193
  %62 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %61, ptr noundef %1, i8 noundef zeroext %2) #14, !range !225
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %83, label %77, !prof !324

64:                                               ; preds = %70
  %65 = add nuw nsw i64 %71, 1
  %66 = load ptr, ptr %55, align 8, !tbaa !193
  %67 = load i32, ptr %66, align 8, !tbaa !322
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %77, !llvm.loop !325

70:                                               ; preds = %54, %64
  %71 = phi i64 [ %65, %64 ], [ 0, %54 ]
  %72 = phi ptr [ %66, %64 ], [ %56, %54 ]
  %73 = getelementptr inbounds %struct.rtvec_def, ptr %72, i64 0, i32 1, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !172
  %75 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %74, ptr noundef %1, i8 noundef zeroext %2) #14, !range !225
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %83, label %64

77:                                               ; preds = %64, %54, %49, %59
  %78 = icmp sgt i64 %50, 1
  br i1 %78, label %49, label %83, !prof !326, !llvm.loop !327

79:                                               ; preds = %15, %17
  %80 = phi i32 [ %23, %17 ], [ 0, %15 ]
  %81 = tail call fastcc zeroext i8 @reg_changed_after_insn_p(ptr noundef nonnull %8, i32 noundef %80) #14, !range !225
  %82 = xor i8 %81, 1
  br label %83

83:                                               ; preds = %32, %24, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %59, %77, %70, %79, %3, %38, %36
  %84 = phi i8 [ 0, %36 ], [ 1, %38 ], [ 1, %3 ], [ %82, %79 ], [ 0, %70 ], [ 0, %59 ], [ 1, %77 ], [ 1, %32 ], [ 0, %24 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i8 %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_expr_in_table(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !328 !PGOFuncName !329 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call fastcc i32 @hash_expr(ptr noundef %0, ptr noundef nonnull %3) #14
  %5 = load i32, ptr %3, align 4, !tbaa !167
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %134, !prof !330

7:                                                ; preds = %2
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %9 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 24
  br i1 %13, label %14, label %17, !prof !331

14:                                               ; preds = %7
  call void @_obstack_newchunk(ptr noundef nonnull @expr_obstack, i32 noundef 24) #13
  %15 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi ptr [ %9, %7 ], [ %16, %14 ]
  %19 = phi i64 [ 24, %7 ], [ %15, %14 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !209
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %26, !prof !332

23:                                               ; preds = %17
  %24 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  %25 = or i8 %24, 2
  store i8 %25, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  br label %26

26:                                               ; preds = %17, %23
  %27 = ptrtoint ptr %21 to i64
  store i64 %27, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %28 = ptrtoint ptr %20 to i64
  %29 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 6), align 8, !tbaa !210
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = xor i32 %29, -1
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = inttoptr i64 %34 to ptr
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %34, %37
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %40, %37
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %44, !prof !332

43:                                               ; preds = %26
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %44

44:                                               ; preds = %26, %43
  %45 = phi ptr [ %35, %26 ], [ %39, %43 ]
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %0, ptr %21, align 8, !tbaa !250
  %46 = getelementptr inbounds %struct.expr, ptr %21, i64 0, i32 1
  store i32 %4, ptr %46, align 8, !tbaa !246
  %47 = getelementptr inbounds %struct.expr, ptr %21, i64 0, i32 2
  store ptr null, ptr %47, align 8, !tbaa !333
  %48 = load ptr, ptr @expr_table, align 8, !tbaa !172
  %49 = call ptr @htab_find_slot_with_hash(ptr noundef %48, ptr noundef nonnull %21, i32 noundef %4, i32 noundef 1) #13
  %50 = load ptr, ptr %49, align 8, !tbaa !172
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53, !prof !334

52:                                               ; preds = %44
  store ptr %21, ptr %49, align 8, !tbaa !172
  br label %69

53:                                               ; preds = %44
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %55 = ptrtoint ptr %54 to i64
  %56 = sub i64 %27, %55
  store i64 %56, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %65, !prof !335

58:                                               ; preds = %53
  %59 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %60, %55
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %63, label %65, !prof !335

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, ptr %54, i64 %56
  store ptr %64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %67

65:                                               ; preds = %58, %53
  %66 = getelementptr inbounds i8, ptr %54, i64 %56
  call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %66) #13
  br label %67

67:                                               ; preds = %65, %63
  %68 = load ptr, ptr %49, align 8, !tbaa !172
  br label %69

69:                                               ; preds = %67, %52
  %70 = phi ptr [ %68, %67 ], [ %21, %52 ]
  %71 = getelementptr inbounds %struct.expr, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !172
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74, !prof !336

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !193
  br label %80

77:                                               ; preds = %80
  %78 = load ptr, ptr %81, align 8, !tbaa !172
  %79 = icmp eq ptr %78, null
  br i1 %79, label %89, label %80, !prof !337, !llvm.loop !338

80:                                               ; preds = %74, %77
  %81 = phi ptr [ %72, %74 ], [ %78, %77 ]
  %82 = getelementptr inbounds %struct.occr, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !339
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !193
  %86 = icmp eq ptr %85, %76
  br i1 %86, label %87, label %77, !prof !341, !llvm.loop !338

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.occr, ptr %81, i64 0, i32 1
  store ptr %1, ptr %88, align 8, !tbaa !339
  br label %134

89:                                               ; preds = %77, %69
  %90 = phi ptr [ null, %69 ], [ %81, %77 ]
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %91 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %92 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !207
  %93 = ptrtoint ptr %91 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = icmp slt i64 %95, 24
  br i1 %96, label %97, label %100, !prof !342

97:                                               ; preds = %89
  call void @_obstack_newchunk(ptr noundef nonnull @occr_obstack, i32 noundef 24) #13
  %98 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %99 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %100

100:                                              ; preds = %89, %97
  %101 = phi ptr [ %92, %89 ], [ %99, %97 ]
  %102 = phi i64 [ 24, %89 ], [ %98, %97 ]
  %103 = getelementptr inbounds i8, ptr %101, i64 %102
  %104 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !209
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %106, label %109, !prof !343

106:                                              ; preds = %100
  %107 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 10), align 8
  %108 = or i8 %107, 2
  store i8 %108, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 10), align 8
  br label %109

109:                                              ; preds = %100, %106
  %110 = ptrtoint ptr %104 to i64
  store i64 %110, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %111 = ptrtoint ptr %103 to i64
  %112 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 6), align 8, !tbaa !210
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = xor i32 %112, -1
  %116 = sext i32 %115 to i64
  %117 = and i64 %114, %116
  %118 = inttoptr i64 %117 to ptr
  store ptr %118, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !207
  %119 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %120 = ptrtoint ptr %119 to i64
  %121 = sub i64 %117, %120
  %122 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %123 = ptrtoint ptr %122 to i64
  %124 = sub i64 %123, %120
  %125 = icmp sgt i64 %121, %124
  br i1 %125, label %126, label %127, !prof !343

126:                                              ; preds = %109
  store ptr %122, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %127

127:                                              ; preds = %109, %126
  %128 = phi ptr [ %118, %109 ], [ %122, %126 ]
  store ptr %128, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !209
  %129 = load ptr, ptr %71, align 8, !tbaa !333
  %130 = icmp eq ptr %129, null
  %131 = select i1 %130, ptr %71, ptr %90, !prof !344
  store ptr %104, ptr %131, align 8, !tbaa !172
  %132 = getelementptr inbounds %struct.occr, ptr %104, i64 0, i32 1
  store ptr %1, ptr %132, align 8, !tbaa !339
  store ptr null, ptr %104, align 8, !tbaa !345
  %133 = getelementptr inbounds %struct.occr, ptr %104, i64 0, i32 2
  store i8 0, ptr %133, align 8, !tbaa !346
  br label %134

134:                                              ; preds = %87, %127, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @load_killed_in_block_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !347 !PGOFuncName !348 {
  %4 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !172
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6, !prof !349

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi ptr [ %4, %6 ], [ %31, %29 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !308
  %11 = load ptr, ptr @uid_cuid, align 8, !tbaa !172
  %12 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !193
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !167
  br i1 %7, label %19, label %17, !prof !350

17:                                               ; preds = %8
  %18 = icmp slt i32 %16, %0
  br i1 %18, label %29, label %21, !prof !351, !llvm.loop !352

19:                                               ; preds = %8
  %20 = icmp sgt i32 %16, %0
  br i1 %20, label %29, label %21, !prof !353, !llvm.loop !352

21:                                               ; preds = %17, %19
  %22 = load i32, ptr %10, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %33, label %25, !prof !354

25:                                               ; preds = %21
  store i1 false, ptr @mems_conflict_p, align 4
  %26 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !193
  tail call void @note_stores(ptr noundef %27, ptr noundef nonnull @find_mem_conflicts, ptr noundef %1) #13
  %28 = load i1, ptr @mems_conflict_p, align 4
  br i1 %28, label %33, label %29, !prof !355

29:                                               ; preds = %25, %17, %19
  %30 = getelementptr inbounds %struct.modifies_mem, ptr %9, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !172
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !prof !356

33:                                               ; preds = %29, %21, %25, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %25 ], [ 1, %21 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @reg_changed_after_insn_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !357 !PGOFuncName !358 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #14
  %4 = load ptr, ptr @reg_avail_info, align 8, !tbaa !172
  br label %5

5:                                                ; preds = %11, %2
  %6 = phi i32 [ %3, %2 ], [ %17, %11 ]
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !167
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %19, label %11, !prof !359

11:                                               ; preds = %5
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %16 = tail call fastcc i32 @end_hard_regno(i32 noundef %14, i32 noundef %15) #14
  %17 = add i32 %6, 1
  %18 = icmp ult i32 %17, %16
  br i1 %18, label %5, label %19, !prof !360, !llvm.loop !361

19:                                               ; preds = %11, %5
  %20 = phi i8 [ 1, %5 ], [ 0, %11 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hash_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !362 !PGOFuncName !363 {
  store i32 0, ptr %1, align 4, !tbaa !167
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
define internal void @find_mem_conflicts(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !364 !PGOFuncName !365 {
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
  ], !prof !366

8:                                                ; preds = %4, %4, %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !193
  br label %4, !llvm.loop !367

11:                                               ; preds = %4
  %12 = lshr i32 %6, 16
  %13 = and i32 %12, 255
  %14 = tail call i32 @true_dependence(ptr noundef nonnull %5, i32 noundef %13, ptr noundef %2, ptr noundef nonnull @rtx_addr_varies_p) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !368

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
define internal noundef i32 @dump_hash_table_entry(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !219 !PGOFuncName !369 {
  %3 = load ptr, ptr %0, align 8, !tbaa !172
  %4 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 6, i64 1, ptr %1)
  %5 = load ptr, ptr %3, align 8, !tbaa !250
  tail call void @print_rtl(ptr noundef %1, ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !246
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %7) #14
  %9 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %1)
  %10 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !172
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %19, %13 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.occr, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !339
  %17 = tail call i32 @print_rtl_single(ptr noundef %1, ptr noundef %16) #13
  %18 = tail call i32 @fputc(i32 10, ptr %1)
  %19 = load ptr, ptr %14, align 8, !tbaa !172
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !370

21:                                               ; preds = %13, %2
  %22 = tail call i32 @fputc(i32 10, ptr %1)
  ret i32 1
}

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_well_behaved_predecessors(ptr noundef %0) unnamed_addr #0 !prof !371 !PGOFuncName !372 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !373
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7, !prof !226

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !374
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !375
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %2) #14, !range !225
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %49, label %12, !prof !376

12:                                               ; preds = %7, %44
  %13 = load ptr, ptr %2, align 8, !tbaa !172
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !377
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %13, align 8, !tbaa !379
  br i1 %17, label %30, label %19, !prof !380

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !381
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #14
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !382
  %27 = load ptr, ptr %26, align 8, !tbaa !373
  %28 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %27) #14
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %49, label %30

30:                                               ; preds = %24, %19, %12
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !193
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !195
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %44, !prof !383

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !193
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65534
  %43 = icmp eq i32 %42, 20
  br i1 %43, label %49, label %44, !prof !384

44:                                               ; preds = %38, %30
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %45 = load i32, ptr %3, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %2) #14, !range !225
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %12, !prof !385, !llvm.loop !386

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
define internal fastcc ptr @lookup_expr_in_table(ptr noundef %0) unnamed_addr #0 !prof !387 !PGOFuncName !388 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %3 = call fastcc i32 @hash_expr(ptr noundef %0, ptr noundef nonnull %2) #14
  %4 = load i32, ptr %2, align 4, !tbaa !167
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %66, !prof !235

6:                                                ; preds = %1
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 24
  br i1 %12, label %13, label %16, !prof !389

13:                                               ; preds = %6
  call void @_obstack_newchunk(ptr noundef nonnull @expr_obstack, i32 noundef 24) #13
  %14 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi ptr [ %8, %6 ], [ %15, %13 ]
  %18 = phi i64 [ 24, %6 ], [ %14, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !209
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %25, !prof !389

22:                                               ; preds = %16
  %23 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  %24 = or i8 %23, 2
  store i8 %24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  br label %25

25:                                               ; preds = %16, %22
  %26 = ptrtoint ptr %20 to i64
  store i64 %26, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %27 = ptrtoint ptr %19 to i64
  %28 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 6), align 8, !tbaa !210
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = xor i32 %28, -1
  %32 = sext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = inttoptr i64 %33 to ptr
  store ptr %34, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %33, %36
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %36
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %43, !prof !389

42:                                               ; preds = %25
  store ptr %38, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %43

43:                                               ; preds = %25, %42
  %44 = phi ptr [ %34, %25 ], [ %38, %42 ]
  store ptr %44, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %0, ptr %20, align 8, !tbaa !250
  %45 = getelementptr inbounds %struct.expr, ptr %20, i64 0, i32 1
  store i32 %3, ptr %45, align 8, !tbaa !246
  %46 = getelementptr inbounds %struct.expr, ptr %20, i64 0, i32 2
  store ptr null, ptr %46, align 8, !tbaa !333
  %47 = load ptr, ptr @expr_table, align 8, !tbaa !172
  %48 = call ptr @htab_find_slot_with_hash(ptr noundef %47, ptr noundef nonnull %20, i32 noundef %3, i32 noundef 1) #13
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %50 = ptrtoint ptr %49 to i64
  %51 = sub i64 %26, %50
  store i64 %51, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %60, !prof !235

53:                                               ; preds = %43
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %55 = ptrtoint ptr %54 to i64
  %56 = sub i64 %55, %50
  %57 = icmp slt i64 %51, %56
  br i1 %57, label %58, label %60, !prof !235

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %49, i64 %51
  store ptr %59, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %59, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %62

60:                                               ; preds = %53, %43
  %61 = getelementptr inbounds i8, ptr %49, i64 %51
  call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %61) #13
  br label %62

62:                                               ; preds = %60, %58
  %63 = icmp eq ptr %48, null
  br i1 %63, label %66, label %64, !prof !389

64:                                               ; preds = %62
  %65 = load ptr, ptr %48, align 8, !tbaa !172
  br label %66

66:                                               ; preds = %62, %1, %64
  %67 = phi ptr [ %65, %64 ], [ null, %1 ], [ null, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret ptr %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_partially_redundant_load(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !390 !PGOFuncName !391 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !193
  %10 = tail call fastcc zeroext i8 @reg_changed_after_insn_p(ptr noundef %9, i32 noundef 0) #14, !range !225
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %375, !prof !392

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = load ptr, ptr %14, align 8, !tbaa !393
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !193
  %18 = tail call i32 @reg_used_between_p(ptr noundef %9, ptr noundef %17, ptr noundef nonnull %1) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %375, !prof !394

20:                                               ; preds = %12
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #14
  store i32 0, ptr %5, align 8, !tbaa.struct !374
  %22 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !375
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %4) #14, !range !225
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %375, label %25, !prof !395

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.expr, ptr %2, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %221
  %28 = phi ptr [ null, %25 ], [ %229, %221 ]
  %29 = phi i64 [ 0, %25 ], [ %228, %221 ]
  %30 = phi i8 [ 0, %25 ], [ %227, %221 ]
  %31 = phi i64 [ 0, %25 ], [ %222, %221 ]
  %32 = phi i64 [ 0, %25 ], [ %226, %221 ]
  %33 = phi i32 [ 0, %25 ], [ %225, %221 ]
  %34 = phi ptr [ null, %25 ], [ %224, %221 ]
  %35 = phi ptr [ null, %25 ], [ %223, %221 ]
  %36 = load ptr, ptr %4, align 8, !tbaa !172
  %37 = load ptr, ptr %36, align 8, !tbaa !379
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !193
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !195
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !193
  %44 = load ptr, ptr %26, align 8, !tbaa !333
  %45 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %37, ptr noundef %44) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %76, label %47, !prof !396

47:                                               ; preds = %27, %69
  %48 = phi ptr [ %71, %69 ], [ %45, %27 ]
  %49 = getelementptr inbounds %struct.occr, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !339
  %51 = tail call fastcc ptr @get_avail_load_store_reg(ptr noundef %50) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54, !prof !397

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
  br i1 %59, label %69, label %60, !prof !397

60:                                               ; preds = %54
  %61 = tail call fastcc zeroext i8 @reg_killed_on_edge(ptr noundef %51, ptr noundef nonnull %36) #14, !range !225
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %69, !prof !398

63:                                               ; preds = %60
  %64 = tail call fastcc zeroext i8 @reg_used_on_edge(ptr noundef %9, ptr noundef nonnull %36) #14, !range !225
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69, !prof !399

66:                                               ; preds = %63
  %67 = tail call i32 @reg_set_between_p(ptr noundef %51, ptr noundef %50, ptr noundef %43) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69, !prof !400

69:                                               ; preds = %66, %54, %60, %63
  %70 = load ptr, ptr %48, align 8, !tbaa !345
  %71 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %37, ptr noundef %70) #14
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %47, !prof !401, !llvm.loop !402

73:                                               ; preds = %66, %69
  %74 = phi ptr [ null, %69 ], [ %50, %66 ]
  %75 = load ptr, ptr %36, align 8, !tbaa !379
  br label %76

76:                                               ; preds = %73, %27
  %77 = phi ptr [ %37, %27 ], [ %75, %73 ]
  %78 = phi ptr [ null, %27 ], [ %51, %73 ]
  %79 = phi ptr [ null, %27 ], [ %74, %73 ]
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !381
  %82 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %81) #14
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %84, label %97, !prof !403

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !382
  %87 = load ptr, ptr %86, align 8, !tbaa !373
  %88 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %87) #14
  %89 = icmp ugt i32 %88, 1
  br i1 %89, label %90, label %94, !prof !404

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  %92 = load i64, ptr %91, align 8, !tbaa !405
  %93 = add nsw i64 %92, %31
  br label %94

94:                                               ; preds = %90, %84
  %95 = phi i64 [ %93, %90 ], [ %31, %84 ]
  %96 = icmp eq ptr %79, null
  br i1 %96, label %169, label %99, !prof !406

97:                                               ; preds = %76
  %98 = icmp eq ptr %79, null
  br i1 %98, label %173, label %99, !prof !406

99:                                               ; preds = %97, %94
  %100 = phi i64 [ %31, %97 ], [ %95, %94 ]
  %101 = add nsw i32 %33, 1
  %102 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  %103 = load i64, ptr %102, align 8, !tbaa !405
  %104 = add nsw i64 %103, %32
  %105 = tail call ptr @copy_rtx(ptr noundef %9) #13
  %106 = tail call ptr @copy_rtx(ptr noundef %78) #13
  %107 = tail call ptr @gen_move_insn(ptr noundef %105, ptr noundef %106) #13
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !193
  %110 = tail call i32 @set_noop_p(ptr noundef %109) #13
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %221, !prof !407

112:                                              ; preds = %99
  %113 = load ptr, ptr %36, align 8, !tbaa !379
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !381
  %116 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %115) #14
  %117 = icmp ugt i32 %116, 1
  br i1 %117, label %118, label %125, !prof !408

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !382
  %121 = load ptr, ptr %120, align 8, !tbaa !373
  %122 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %121) #14
  %123 = icmp ugt i32 %122, 1
  %124 = select i1 %123, i8 1, i8 %30, !prof !409
  br label %125

125:                                              ; preds = %118, %112
  %126 = phi i8 [ %30, %112 ], [ %124, %118 ]
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %127 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %128 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !207
  %129 = ptrtoint ptr %127 to i64
  %130 = ptrtoint ptr %128 to i64
  %131 = sub i64 %129, %130
  %132 = icmp slt i64 %131, 24
  br i1 %132, label %133, label %136, !prof !410

133:                                              ; preds = %125
  tail call void @_obstack_newchunk(ptr noundef nonnull @unoccr_obstack, i32 noundef 24) #13
  %134 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %135 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %136

136:                                              ; preds = %125, %133
  %137 = phi ptr [ %128, %125 ], [ %135, %133 ]
  %138 = phi i64 [ 24, %125 ], [ %134, %133 ]
  %139 = getelementptr inbounds i8, ptr %137, i64 %138
  %140 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !209
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %145, !prof !411

142:                                              ; preds = %136
  %143 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  %144 = or i8 %143, 2
  store i8 %144, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  br label %145

145:                                              ; preds = %136, %142
  %146 = ptrtoint ptr %140 to i64
  store i64 %146, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %147 = ptrtoint ptr %139 to i64
  %148 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 6), align 8, !tbaa !210
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = xor i32 %148, -1
  %152 = sext i32 %151 to i64
  %153 = and i64 %150, %152
  %154 = inttoptr i64 %153 to ptr
  store ptr %154, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !207
  %155 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %156 = ptrtoint ptr %155 to i64
  %157 = sub i64 %153, %156
  %158 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %159 = ptrtoint ptr %158 to i64
  %160 = sub i64 %159, %156
  %161 = icmp sgt i64 %157, %160
  br i1 %161, label %162, label %163, !prof !411

162:                                              ; preds = %145
  store ptr %158, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %163

163:                                              ; preds = %145, %162
  %164 = phi ptr [ %154, %145 ], [ %158, %162 ]
  store ptr %164, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !209
  %165 = getelementptr inbounds %struct.unoccr, ptr %140, i64 0, i32 2
  store ptr %79, ptr %165, align 8, !tbaa !412
  %166 = getelementptr inbounds %struct.unoccr, ptr %140, i64 0, i32 1
  store ptr %36, ptr %166, align 8, !tbaa !414
  store ptr %28, ptr %140, align 8, !tbaa !415
  %167 = icmp eq ptr %34, null
  %168 = select i1 %167, ptr %140, ptr %34, !prof !416
  br label %221

169:                                              ; preds = %94
  %170 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %87) #14
  %171 = icmp ugt i32 %170, 1
  %172 = select i1 %171, i8 1, i8 %30, !prof !417
  br label %173

173:                                              ; preds = %97, %169
  %174 = phi i64 [ %95, %169 ], [ %31, %97 ]
  %175 = phi i8 [ %172, %169 ], [ %30, %97 ]
  %176 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  %177 = load i64, ptr %176, align 8, !tbaa !405
  %178 = add nsw i64 %177, %29
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %179 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %180 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !207
  %181 = ptrtoint ptr %179 to i64
  %182 = ptrtoint ptr %180 to i64
  %183 = sub i64 %181, %182
  %184 = icmp slt i64 %183, 24
  br i1 %184, label %185, label %188, !prof !418

185:                                              ; preds = %173
  tail call void @_obstack_newchunk(ptr noundef nonnull @unoccr_obstack, i32 noundef 24) #13
  %186 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %187 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %188

188:                                              ; preds = %173, %185
  %189 = phi ptr [ %180, %173 ], [ %187, %185 ]
  %190 = phi i64 [ 24, %173 ], [ %186, %185 ]
  %191 = getelementptr inbounds i8, ptr %189, i64 %190
  %192 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !209
  %193 = icmp eq ptr %191, %192
  br i1 %193, label %194, label %197, !prof !419

194:                                              ; preds = %188
  %195 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  %196 = or i8 %195, 2
  store i8 %196, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  br label %197

197:                                              ; preds = %188, %194
  %198 = ptrtoint ptr %192 to i64
  store i64 %198, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %199 = ptrtoint ptr %191 to i64
  %200 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 6), align 8, !tbaa !210
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %201, %199
  %203 = xor i32 %200, -1
  %204 = sext i32 %203 to i64
  %205 = and i64 %202, %204
  %206 = inttoptr i64 %205 to ptr
  store ptr %206, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !207
  %207 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %208 = ptrtoint ptr %207 to i64
  %209 = sub i64 %205, %208
  %210 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %211 = ptrtoint ptr %210 to i64
  %212 = sub i64 %211, %208
  %213 = icmp sgt i64 %209, %212
  br i1 %213, label %214, label %215, !prof !419

214:                                              ; preds = %197
  store ptr %210, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %215

215:                                              ; preds = %197, %214
  %216 = phi ptr [ %206, %197 ], [ %210, %214 ]
  store ptr %216, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !209
  %217 = getelementptr inbounds %struct.unoccr, ptr %192, i64 0, i32 2
  store ptr null, ptr %217, align 8, !tbaa !412
  %218 = getelementptr inbounds %struct.unoccr, ptr %192, i64 0, i32 1
  store ptr %36, ptr %218, align 8, !tbaa !414
  store ptr %35, ptr %192, align 8, !tbaa !415
  %219 = icmp eq ptr %34, null
  %220 = select i1 %219, ptr %192, ptr %34, !prof !420
  br label %221

221:                                              ; preds = %215, %163, %99
  %222 = phi i64 [ %100, %99 ], [ %100, %163 ], [ %174, %215 ]
  %223 = phi ptr [ %35, %99 ], [ %35, %163 ], [ %192, %215 ]
  %224 = phi ptr [ %34, %99 ], [ %168, %163 ], [ %220, %215 ]
  %225 = phi i32 [ %101, %99 ], [ %101, %163 ], [ %33, %215 ]
  %226 = phi i64 [ %104, %99 ], [ %104, %163 ], [ %32, %215 ]
  %227 = phi i8 [ %30, %99 ], [ %126, %163 ], [ %175, %215 ]
  %228 = phi i64 [ %29, %99 ], [ %29, %163 ], [ %178, %215 ]
  %229 = phi ptr [ %28, %99 ], [ %140, %163 ], [ %28, %215 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #14
  %230 = load i32, ptr %5, align 8
  %231 = load ptr, ptr %22, align 8
  %232 = call fastcc zeroext i8 @ei_cond(i32 %230, ptr %231, ptr noundef nonnull %4) #14, !range !225
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %234, label %27, !prof !421, !llvm.loop !422

234:                                              ; preds = %221
  %235 = icmp eq i32 %225, 0
  br i1 %235, label %358, label %236, !prof !423

236:                                              ; preds = %234
  %237 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %0) #13
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %241, label %239, !prof !424

239:                                              ; preds = %236
  %240 = icmp sgt i32 %225, 1
  br i1 %240, label %358, label %241

241:                                              ; preds = %239, %236
  %242 = load ptr, ptr @profile_info, align 8, !tbaa !172
  %243 = icmp eq ptr %242, null
  br i1 %243, label %253, label %244, !prof !424

244:                                              ; preds = %241
  %245 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !167
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %244
  %248 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !425
  %249 = tail call zeroext i8 %248() #13
  %250 = icmp ne i8 %249, 0
  %251 = icmp ne i8 %227, 0
  %252 = select i1 %250, i1 %251, i1 false
  br i1 %252, label %358, label %255, !prof !437

253:                                              ; preds = %244, %241
  %254 = icmp eq i8 %227, 0
  br i1 %254, label %255, label %358, !prof !438

255:                                              ; preds = %253, %247
  %256 = load ptr, ptr @compiler_params, align 8, !tbaa !172
  %257 = getelementptr inbounds %struct.param_info, ptr %256, i64 24, i32 1
  %258 = load i32, ptr %257, align 8, !tbaa !439
  %259 = sext i32 %258 to i64
  %260 = mul nsw i64 %228, %259
  %261 = icmp slt i64 %226, %260
  br i1 %261, label %358, label %262, !prof !441

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.param_info, ptr %256, i64 25, i32 1
  %264 = load i32, ptr %263, align 8, !tbaa !439
  %265 = sext i32 %264 to i64
  %266 = mul nsw i64 %222, %265
  %267 = icmp slt i64 %226, %266
  br i1 %267, label %358, label %268, !prof !441

268:                                              ; preds = %262
  %269 = icmp eq ptr %229, null
  br i1 %269, label %270, label %272, !prof !442

270:                                              ; preds = %300, %268
  %271 = icmp eq ptr %223, null
  br i1 %271, label %329, label %303, !prof !443

272:                                              ; preds = %268, %300
  %273 = phi ptr [ %301, %300 ], [ %229, %268 ]
  %274 = getelementptr inbounds %struct.unoccr, ptr %273, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !412
  %276 = getelementptr inbounds %struct.unoccr, ptr %273, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !414
  store ptr %277, ptr %4, align 8, !tbaa !172
  %278 = tail call fastcc ptr @get_avail_load_store_reg(ptr noundef %275) #14
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %281, !prof !444

280:                                              ; preds = %272
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1093, ptr noundef nonnull @.str.7) #13
  br label %281

281:                                              ; preds = %272, %280
  %282 = tail call ptr @copy_rtx(ptr noundef %9) #13
  %283 = tail call ptr @copy_rtx(ptr noundef %278) #13
  %284 = tail call ptr @gen_move_insn(ptr noundef %282, ptr noundef %283) #13
  tail call void @insert_insn_on_edge(ptr noundef %284, ptr noundef %277) #13
  %285 = load i32, ptr @stats, align 4, !tbaa !181
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr @stats, align 4, !tbaa !181
  %287 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %288 = icmp eq ptr %287, null
  br i1 %288, label %300, label %289, !prof !445

289:                                              ; preds = %281
  %290 = tail call fastcc i32 @rhs_regno(ptr noundef %278) #14
  %291 = tail call fastcc i32 @rhs_regno(ptr noundef %9) #14
  %292 = load ptr, ptr %277, align 8, !tbaa !379
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 9
  %294 = load i32, ptr %293, align 8, !tbaa !446
  %295 = getelementptr inbounds %struct.edge_def, ptr %277, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !382
  %297 = getelementptr inbounds %struct.basic_block_def, ptr %296, i64 0, i32 9
  %298 = load i32, ptr %297, align 8, !tbaa !446
  %299 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %287, ptr noundef nonnull @.str.16, i32 noundef %290, i32 noundef %291, i32 noundef %294, i32 noundef %298) #14
  br label %300

300:                                              ; preds = %281, %289
  %301 = load ptr, ptr %273, align 8, !tbaa !415
  %302 = icmp eq ptr %301, null
  br i1 %302, label %270, label %272, !prof !447, !llvm.loop !448

303:                                              ; preds = %270, %326
  %304 = phi ptr [ %327, %326 ], [ %223, %270 ]
  %305 = getelementptr inbounds %struct.unoccr, ptr %304, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !414
  store ptr %306, ptr %4, align 8, !tbaa !172
  %307 = load ptr, ptr %6, align 8, !tbaa !193
  %308 = tail call ptr @copy_insn(ptr noundef %307) #13
  tail call void @insert_insn_on_edge(ptr noundef %308, ptr noundef %306) #13
  %309 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !179
  %310 = add nsw i32 %309, 1
  store i32 %310, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !179
  %311 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %312 = icmp eq ptr %311, null
  br i1 %312, label %326, label %313, !prof !449

313:                                              ; preds = %303
  %314 = load ptr, ptr %306, align 8, !tbaa !379
  %315 = getelementptr inbounds %struct.basic_block_def, ptr %314, i64 0, i32 9
  %316 = load i32, ptr %315, align 8, !tbaa !446
  %317 = getelementptr inbounds %struct.edge_def, ptr %306, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !382
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %318, i64 0, i32 9
  %320 = load i32, ptr %319, align 8, !tbaa !446
  %321 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %311, ptr noundef nonnull @.str.17, i32 noundef %316, i32 noundef %320) #14
  %322 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %323 = load ptr, ptr %6, align 8, !tbaa !193
  tail call void @print_rtl(ptr noundef %322, ptr noundef %323) #13
  %324 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %325 = tail call i32 @fputc(i32 10, ptr %324)
  br label %326

326:                                              ; preds = %303, %313
  %327 = load ptr, ptr %304, align 8, !tbaa !415
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %303, !prof !450, !llvm.loop !451

329:                                              ; preds = %326, %270
  %330 = getelementptr inbounds %struct.expr, ptr %2, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !333
  %332 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %0, ptr noundef %331) #14
  %333 = icmp eq ptr %332, null
  br i1 %333, label %343, label %334, !prof !452

334:                                              ; preds = %329, %339
  %335 = phi ptr [ %341, %339 ], [ %332, %329 ]
  %336 = getelementptr inbounds %struct.occr, ptr %335, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !339
  %338 = icmp eq ptr %337, %1
  br i1 %338, label %356, label %339, !prof !453

339:                                              ; preds = %334
  %340 = load ptr, ptr %335, align 8, !tbaa !345
  %341 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %0, ptr noundef %340) #14
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %334, !prof !454, !llvm.loop !455

343:                                              ; preds = %339, %329
  %344 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !182
  %345 = add nsw i32 %344, 1
  store i32 %345, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !182
  %346 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %347 = icmp eq ptr %346, null
  br i1 %347, label %354, label %348, !prof !456

348:                                              ; preds = %343
  %349 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %346)
  %350 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %351 = tail call i32 @print_rtl_single(ptr noundef %350, ptr noundef %1) #13
  %352 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %353 = tail call i32 @fputc(i32 10, ptr %352)
  br label %354

354:                                              ; preds = %348, %343
  %355 = tail call ptr @delete_insn(ptr noundef %1) #13
  br label %358

356:                                              ; preds = %334
  %357 = getelementptr inbounds %struct.occr, ptr %335, i64 0, i32 2
  store i8 1, ptr %357, align 8, !tbaa !346
  br label %358

358:                                              ; preds = %354, %356, %262, %255, %234, %239, %253, %247
  %359 = icmp eq ptr %224, null
  br i1 %359, label %375, label %360, !prof !457

360:                                              ; preds = %358
  %361 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !211
  %362 = ptrtoint ptr %224 to i64
  %363 = ptrtoint ptr %361 to i64
  %364 = sub i64 %362, %363
  store i64 %364, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !204
  %365 = icmp sgt i64 %364, 0
  br i1 %365, label %366, label %373, !prof !458

366:                                              ; preds = %360
  %367 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !206
  %368 = ptrtoint ptr %367 to i64
  %369 = sub i64 %368, %363
  %370 = icmp slt i64 %364, %369
  br i1 %370, label %371, label %373, !prof !459

371:                                              ; preds = %366
  %372 = getelementptr inbounds i8, ptr %361, i64 %364
  store ptr %372, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !209
  store ptr %372, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !207
  br label %375

373:                                              ; preds = %366, %360
  %374 = getelementptr inbounds i8, ptr %361, i64 %364
  tail call void @obstack_free(ptr noundef nonnull @unoccr_obstack, ptr noundef %374) #13
  br label %375

375:                                              ; preds = %20, %358, %373, %371, %3, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !460 !PGOFuncName !461 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !462

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !463
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 !prof !465 !PGOFuncName !466 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !467 !PGOFuncName !468 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !225
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !469

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !172
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !470 !PGOFuncName !471 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !472

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #14
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !473

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.7) #13
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !474
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !474
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !467 !PGOFuncName !476 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !477

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !470 !PGOFuncName !478 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !472

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #14
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !479 !PGOFuncName !480 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !481

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.7) #13
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !172
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !470 !PGOFuncName !482 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @reg_used_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_bb_avail_insn(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #10 !prof !483 !PGOFuncName !484 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4, !prof !485

4:                                                ; preds = %2, %11
  %5 = phi ptr [ %12, %11 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.occr, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !339
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !193
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %14, label %11, !prof !486

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !345
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !prof !487, !llvm.loop !488

14:                                               ; preds = %4, %11, %2
  %15 = phi ptr [ null, %2 ], [ null, %11 ], [ %5, %4 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_avail_load_store_reg(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !489 !PGOFuncName !490 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !193
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %19, label %9, !prof !491

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !193
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %19, label %15, !prof !492

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 906, ptr noundef nonnull @.str.7) #13
  %16 = load ptr, ptr %2, align 8, !tbaa !193
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !193
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
define internal fastcc noundef zeroext i8 @reg_killed_on_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !493 !PGOFuncName !494 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !495

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %17, %15 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %15, !prof !496

12:                                               ; preds = %6
  %13 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %7) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19, !prof !497

15:                                               ; preds = %6, %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !193
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !prof !498, !llvm.loop !499

19:                                               ; preds = %12, %15, %2
  %20 = phi i8 [ 0, %2 ], [ 0, %15 ], [ 1, %12 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reg_used_on_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !500 !PGOFuncName !501 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !502

6:                                                ; preds = %2, %17
  %7 = phi ptr [ %19, %17 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %17, !prof !503

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %14) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21, !prof !504

17:                                               ; preds = %6, %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !193
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !prof !505, !llvm.loop !506

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
define internal noundef i32 @delete_redundant_insns_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !507 !PGOFuncName !508 {
  %3 = load ptr, ptr %0, align 8, !tbaa !172
  %4 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7, !prof !509

7:                                                ; preds = %2, %30
  %8 = phi ptr [ %31, %30 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.occr, ptr %8, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !346
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12, !prof !510

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @dbg_cnt(i32 noundef 13) #13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15, !prof !511

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.occr, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !339
  %18 = tail call ptr @delete_insn(ptr noundef %17) #13
  %19 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !182
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !182
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23, !prof !512

23:                                               ; preds = %15
  %24 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %21)
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %26 = load ptr, ptr %16, align 8, !tbaa !339
  %27 = tail call i32 @print_rtl_single(ptr noundef %25, ptr noundef %26) #13
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !172
  %29 = tail call i32 @fputc(i32 10, ptr %28)
  br label %30

30:                                               ; preds = %7, %12, %23, %15
  %31 = load ptr, ptr %8, align 8, !tbaa !172
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !prof !513, !llvm.loop !514

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!164}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!36 = !{ptr @gate_handle_gcse2, ptr @optimize_function_for_speed_p, i64 6650}
!37 = !{ptr @rest_of_handle_gcse2, ptr @get_insns, i64 13304}
!38 = !{ptr @rest_of_handle_gcse2, ptr @gcse_after_reload_main, i64 6652}
!39 = !{ptr @rest_of_handle_gcse2, ptr @rebuild_jump_labels, i64 6652}
!40 = !{ptr @gcse_after_reload_main, ptr @alloc_mem, i64 6652}
!41 = !{ptr @gcse_after_reload_main, ptr @init_alias_analysis, i64 6652}
!42 = !{ptr @gcse_after_reload_main, ptr @compute_hash_table, i64 6652}
!43 = !{ptr @gcse_after_reload_main, ptr @dump_hash_table, i64 1}
!44 = !{ptr @gcse_after_reload_main, ptr @htab_elements, i64 6652}
!45 = !{ptr @gcse_after_reload_main, ptr @eliminate_partially_redundant_loads, i64 5072}
!46 = !{ptr @gcse_after_reload_main, ptr @delete_redundant_insns, i64 5072}
!47 = !{ptr @gcse_after_reload_main, ptr @fwrite, i64 2}
!48 = !{ptr @gcse_after_reload_main, ptr @fprintf, i64 3}
!49 = !{ptr @gcse_after_reload_main, ptr @end_alias_analysis, i64 6652}
!50 = !{ptr @gcse_after_reload_main, ptr @free_mem, i64 6652}
!51 = !{ptr @alloc_mem, ptr @get_max_uid, i64 6652}
!52 = !{ptr @alloc_mem, ptr @xcalloc, i64 6652}
!53 = !{ptr @alloc_mem, ptr @htab_create, i64 6652}
!54 = !{ptr @alloc_mem, ptr @_obstack_begin, i64 26608}
!55 = !{ptr @alloc_mem, ptr @xmalloc, i64 6652}
!56 = !{ptr @alloc_mem, ptr @_obstack_newchunk, i64 1}
!57 = !{ptr @compute_hash_table, ptr @reset_opr_set_tables, i64 259424}
!58 = !{ptr @compute_hash_table, ptr @record_opr_changes, i64 1130849}
!59 = !{ptr @compute_hash_table, ptr @hash_scan_set, i64 1024617}
!60 = !{ptr @eliminate_partially_redundant_loads, ptr @bb_has_well_behaved_predecessors, i64 251805}
!61 = !{ptr @eliminate_partially_redundant_loads, ptr @optimize_bb_for_size_p, i64 251804}
!62 = !{ptr @eliminate_partially_redundant_loads, ptr @reset_opr_set_tables, i64 156594}
!63 = !{ptr @eliminate_partially_redundant_loads, ptr @general_operand, i64 138700}
!64 = !{ptr @eliminate_partially_redundant_loads, ptr @oprs_unchanged_p, i64 138699}
!65 = !{ptr @eliminate_partially_redundant_loads, ptr @may_trap_p, i64 1}
!66 = !{ptr @eliminate_partially_redundant_loads, ptr @side_effects_p, i64 80233}
!67 = !{ptr @eliminate_partially_redundant_loads, ptr @lookup_expr_in_table, i64 80232}
!68 = !{ptr @eliminate_partially_redundant_loads, ptr @eliminate_partially_redundant_load, i64 62842}
!69 = !{ptr @eliminate_partially_redundant_loads, ptr @record_opr_changes, i64 678663}
!70 = !{ptr @eliminate_partially_redundant_loads, ptr @commit_edge_insertions, i64 5072}
!71 = !{ptr @delete_redundant_insns, ptr @htab_traverse, i64 5073}
!72 = !{ptr @delete_redundant_insns, ptr @fputc, i64 1}
!73 = !{ptr @free_mem, ptr @free, i64 13304}
!74 = !{ptr @free_mem, ptr @htab_delete, i64 6652}
!75 = !{ptr @free_mem, ptr @obstack_free, i64 26608}
!76 = !{ptr @expr_equiv_p, ptr @exp_equiv_p, i64 1930896}
!77 = !{ptr @expr_equiv_p, ptr @fancy_abort, i64 1}
!78 = !{ptr @reset_opr_set_tables, ptr @obstack_free, i64 10}
!79 = !{ptr @record_opr_changes, ptr @note_stores, i64 1824209}
!80 = !{ptr @record_opr_changes, ptr @record_last_reg_set_info, i64 1}
!81 = !{ptr @record_opr_changes, ptr @record_last_reg_set_info_regno, i64 6638115}
!82 = !{ptr @record_opr_changes, ptr @record_last_mem_set_info, i64 135385}
!83 = !{ptr @hash_scan_set, ptr @set_noop_p, i64 516911}
!84 = !{ptr @hash_scan_set, ptr @can_copy_p, i64 429731}
!85 = !{ptr @hash_scan_set, ptr @general_operand, i64 429729}
!86 = !{ptr @hash_scan_set, ptr @rhs_regno, i64 429727}
!87 = !{ptr @hash_scan_set, ptr @oprs_unchanged_p, i64 299813}
!88 = !{ptr @hash_scan_set, ptr @load_killed_in_block_p, i64 188706}
!89 = !{ptr @hash_scan_set, ptr @insert_expr_in_table, i64 186313}
!90 = !{ptr @record_last_set_info, ptr @record_last_reg_set_info, i64 1117542}
!91 = !{ptr @record_last_set_info, ptr @push_operand, i64 452007}
!92 = !{ptr @record_last_set_info, ptr @record_last_mem_set_info, i64 452006}
!93 = !{ptr @record_last_set_info, ptr @record_last_reg_set_info_regno, i64 1}
!94 = !{ptr @record_last_reg_set_info, ptr @rhs_regno, i64 2235084}
!95 = !{ptr @record_last_reg_set_info, ptr @end_hard_regno, i64 1117542}
!96 = !{ptr @record_last_mem_set_info, ptr @_obstack_newchunk, i64 27}
!97 = !{ptr @oprs_unchanged_p, ptr @rhs_regno, i64 363040}
!98 = !{ptr @oprs_unchanged_p, ptr @fancy_abort, i64 1}
!99 = !{ptr @oprs_unchanged_p, ptr @load_killed_in_block_p, i64 479174}
!100 = !{ptr @oprs_unchanged_p, ptr @oprs_unchanged_p, i64 704948}
!101 = !{ptr @oprs_unchanged_p, ptr @reg_changed_after_insn_p, i64 363040}
!102 = !{ptr @insert_expr_in_table, ptr @hash_expr, i64 186316}
!103 = !{ptr @insert_expr_in_table, ptr @_obstack_newchunk, i64 477}
!104 = !{ptr @insert_expr_in_table, ptr @htab_find_slot_with_hash, i64 186312}
!105 = !{ptr @insert_expr_in_table, ptr @obstack_free, i64 2}
!106 = !{ptr @load_killed_in_block_p, ptr @note_stores, i64 330058}
!107 = !{ptr @reg_changed_after_insn_p, ptr @rhs_regno, i64 650048}
!108 = !{ptr @reg_changed_after_insn_p, ptr @end_hard_regno, i64 298278}
!109 = !{ptr @hash_expr, ptr @hash_rtx, i64 267216}
!110 = !{ptr @find_mem_conflicts, ptr @true_dependence, i64 276095}
!111 = !{ptr @bb_has_well_behaved_predecessors, ptr @VEC_edge_base_length, i64 251904}
!112 = !{ptr @bb_has_well_behaved_predecessors, ptr @ei_start_1, i64 251902}
!113 = !{ptr @bb_has_well_behaved_predecessors, ptr @ei_cond, i64 659517}
!114 = !{ptr @bb_has_well_behaved_predecessors, ptr @ei_next, i64 407615}
!115 = !{ptr @lookup_expr_in_table, ptr @hash_expr, i64 80900}
!116 = !{ptr @lookup_expr_in_table, ptr @_obstack_newchunk, i64 1}
!117 = !{ptr @lookup_expr_in_table, ptr @htab_find_slot_with_hash, i64 80899}
!118 = !{ptr @lookup_expr_in_table, ptr @obstack_free, i64 2}
!119 = !{ptr @eliminate_partially_redundant_load, ptr @reg_changed_after_insn_p, i64 63366}
!120 = !{ptr @eliminate_partially_redundant_load, ptr @reg_used_between_p, i64 59055}
!121 = !{ptr @eliminate_partially_redundant_load, ptr @ei_start_1, i64 57135}
!122 = !{ptr @eliminate_partially_redundant_load, ptr @ei_cond, i64 150983}
!123 = !{ptr @eliminate_partially_redundant_load, ptr @get_bb_avail_insn, i64 97345}
!124 = !{ptr @eliminate_partially_redundant_load, ptr @get_avail_load_store_reg, i64 8514}
!125 = !{ptr @eliminate_partially_redundant_load, ptr @fancy_abort, i64 2}
!126 = !{ptr @eliminate_partially_redundant_load, ptr @copy_rtx, i64 27680}
!127 = !{ptr @eliminate_partially_redundant_load, ptr @gen_move_insn, i64 13840}
!128 = !{ptr @eliminate_partially_redundant_load, ptr @extract_insn, i64 7613}
!129 = !{ptr @eliminate_partially_redundant_load, ptr @constrain_operands, i64 7613}
!130 = !{ptr @eliminate_partially_redundant_load, ptr @reg_killed_on_edge, i64 7612}
!131 = !{ptr @eliminate_partially_redundant_load, ptr @reg_used_on_edge, i64 7578}
!132 = !{ptr @eliminate_partially_redundant_load, ptr @reg_set_between_p, i64 7562}
!133 = !{ptr @eliminate_partially_redundant_load, ptr @VEC_edge_base_length, i64 233207}
!134 = !{ptr @eliminate_partially_redundant_load, ptr @set_noop_p, i64 5326}
!135 = !{ptr @eliminate_partially_redundant_load, ptr @_obstack_newchunk, i64 10}
!136 = !{ptr @eliminate_partially_redundant_load, ptr @ei_next, i64 93848}
!137 = !{ptr @eliminate_partially_redundant_load, ptr @optimize_bb_for_size_p, i64 3942}
!138 = !{ptr @eliminate_partially_redundant_load, ptr @insert_insn_on_edge, i64 1555}
!139 = !{ptr @eliminate_partially_redundant_load, ptr @rhs_regno, i64 2}
!140 = !{ptr @eliminate_partially_redundant_load, ptr @fprintf, i64 2}
!141 = !{ptr @eliminate_partially_redundant_load, ptr @copy_insn, i64 654}
!142 = !{ptr @eliminate_partially_redundant_load, ptr @print_rtl, i64 1}
!143 = !{ptr @eliminate_partially_redundant_load, ptr @fputc, i64 1}
!144 = !{ptr @eliminate_partially_redundant_load, ptr @delete_insn, i64 42}
!145 = !{ptr @eliminate_partially_redundant_load, ptr @obstack_free, i64 5}
!146 = !{ptr @ei_cond, ptr @ei_end_p, i64 810512}
!147 = !{ptr @ei_cond, ptr @ei_edge, i64 501472}
!148 = !{ptr @ei_next, ptr @ei_container, i64 1002943}
!149 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 501472}
!150 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!151 = !{ptr @ei_end_p, ptr @ei_container, i64 1621023}
!152 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 810512}
!153 = !{ptr @ei_edge, ptr @ei_container, i64 1002943}
!154 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 501472}
!155 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!156 = !{ptr @get_avail_load_store_reg, ptr @fancy_abort, i64 1}
!157 = !{ptr @reg_killed_on_edge, ptr @reg_set_p, i64 88}
!158 = !{ptr @reg_used_on_edge, ptr @reg_overlap_mentioned_p, i64 56}
!159 = !{ptr @delete_redundant_insns_1, ptr @dbg_cnt, i64 1015}
!160 = !{ptr @delete_redundant_insns_1, ptr @delete_insn, i64 1014}
!161 = !{ptr @delete_redundant_insns_1, ptr @fwrite, i64 1}
!162 = !{ptr @delete_redundant_insns_1, ptr @print_rtl_single, i64 1}
!163 = !{ptr @delete_redundant_insns_1, ptr @fputc, i64 1}
!164 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!165 = !{!"function_entry_count", i64 6652}
!166 = !{!"postreload-gcse.c:gate_handle_gcse2"}
!167 = !{!168, !168, i64 0}
!168 = !{!"int", !169, i64 0}
!169 = !{!"omnipotent char", !170, i64 0}
!170 = !{!"Simple C/C++ TBAA"}
!171 = !{!"branch_weights", i32 44262409, i32 13307}
!172 = !{!173, !173, i64 0}
!173 = !{!"any pointer", !169, i64 0}
!174 = !{!"postreload-gcse.c:rest_of_handle_gcse2"}
!175 = !{!"postreload-gcse.c:gcse_after_reload_main"}
!176 = !{!"branch_weights", i32 6653, i32 1}
!177 = !{!"branch_weights", i32 1580, i32 5074}
!178 = !{!"branch_weights", i32 5074, i32 1}
!179 = !{!180, !168, i64 4}
!180 = !{!"", !168, i64 0, !168, i64 4, !168, i64 8}
!181 = !{!180, !168, i64 0}
!182 = !{!180, !168, i64 8}
!183 = !{!"postreload-gcse.c:alloc_mem"}
!184 = !{!185, !173, i64 8}
!185 = !{!"function", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !173, i64 40, !173, i64 48, !173, i64 56, !173, i64 64, !173, i64 72, !173, i64 80, !173, i64 88, !173, i64 96, !168, i64 104, !168, i64 108, !168, i64 112, !168, i64 116, !168, i64 120, !168, i64 124, !173, i64 128, !168, i64 136, !168, i64 137, !168, i64 138, !168, i64 138, !168, i64 138, !168, i64 138, !168, i64 138, !168, i64 138, !168, i64 138, !168, i64 139, !168, i64 139, !168, i64 139, !168, i64 139, !168, i64 139, !168, i64 139, !168, i64 139}
!186 = !{!187, !173, i64 0}
!187 = !{!"control_flow_graph", !173, i64 0, !173, i64 8, !173, i64 16, !168, i64 24, !168, i64 28, !168, i64 32, !173, i64 40, !168, i64 48, !169, i64 52, !169, i64 60, !168, i64 68, !168, i64 72}
!188 = !{!187, !173, i64 8}
!189 = !{!190, !173, i64 56}
!190 = !{!"basic_block_def", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !169, i64 32, !173, i64 48, !173, i64 56, !169, i64 64, !191, i64 72, !168, i64 80, !168, i64 84, !168, i64 88, !168, i64 92, !168, i64 96}
!191 = !{!"long", !169, i64 0}
!192 = !{!"branch_weights", i32 1, i32 6652}
!193 = !{!169, !169, i64 0}
!194 = !{!"branch_weights", i32 1, i32 127}
!195 = !{!196, !173, i64 8}
!196 = !{!"rtl_bb_info", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !168, i64 32}
!197 = !{!"branch_weights", i32 259463, i32 1599397}
!198 = !{!"branch_weights", i32 127, i32 237933825}
!199 = distinct !{!199, !200}
!200 = !{!"llvm.loop.mustprogress"}
!201 = !{!"branch_weights", i32 6652, i32 252811}
!202 = distinct !{!202, !200}
!203 = !{!"branch_weights", i32 322784, i32 2147160864}
!204 = !{!205, !191, i64 40}
!205 = !{!"obstack", !191, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !191, i64 40, !168, i64 48, !173, i64 56, !173, i64 64, !173, i64 72, !168, i64 80, !168, i64 80, !168, i64 80}
!206 = !{!205, !173, i64 32}
!207 = !{!205, !173, i64 24}
!208 = !{!"branch_weights", i32 1, i32 6653}
!209 = !{!205, !173, i64 16}
!210 = !{!205, !168, i64 48}
!211 = !{!205, !173, i64 8}
!212 = !{!"postreload-gcse.c:compute_hash_table"}
!213 = !{!"branch_weights", i32 -1719015377, i32 1038283873}
!214 = distinct !{!214, !200}
!215 = !{!"branch_weights", i32 0, i32 -2147483648}
!216 = !{!"branch_weights", i32 1032843, i32 107085}
!217 = distinct !{!217, !200}
!218 = distinct !{!218, !200}
!219 = !{!"function_entry_count", i64 0}
!220 = !{!"postreload-gcse.c:dump_hash_table"}
!221 = !{!"function_entry_count", i64 5073}
!222 = !{!"postreload-gcse.c:eliminate_partially_redundant_loads"}
!223 = !{!"branch_weights", i32 1, i32 5074}
!224 = !{!"branch_weights", i32 1, i32 5073}
!225 = !{i8 0, i8 2}
!226 = !{!"branch_weights", i32 1, i32 251904}
!227 = !{!"branch_weights", i32 156657, i32 95248}
!228 = !{!"branch_weights", i32 156657, i32 966206}
!229 = !{!"branch_weights", i32 509993, i32 456214}
!230 = !{!"branch_weights", i32 455515, i32 54479}
!231 = !{!"branch_weights", i32 290543, i32 164973}
!232 = !{!"branch_weights", i32 -1850057151, i32 -1660514598}
!233 = !{!"branch_weights", i32 1, i32 139852}
!234 = !{!"branch_weights", i32 58952, i32 80901}
!235 = !{!"branch_weights", i32 80901, i32 1}
!236 = !{!"branch_weights", i32 17535, i32 63367}
!237 = !{!"branch_weights", i32 -1596079462, i32 1111922275}
!238 = !{!"branch_weights", i32 127, i32 143726209}
!239 = distinct !{!239, !200}
!240 = !{!"branch_weights", i32 5073, i32 246831}
!241 = distinct !{!241, !200}
!242 = !{!"postreload-gcse.c:delete_redundant_insns"}
!243 = !{!"postreload-gcse.c:free_mem"}
!244 = !{!"function_entry_count", i64 6184}
!245 = !{!"postreload-gcse.c:hash_expr_for_htab"}
!246 = !{!247, !168, i64 8}
!247 = !{!"expr", !173, i64 0, !168, i64 8, !173, i64 16}
!248 = !{!"function_entry_count", i64 1930896}
!249 = !{!"postreload-gcse.c:expr_equiv_p"}
!250 = !{!247, !173, i64 0}
!251 = !{!"branch_weights", i32 1765066, i32 165832}
!252 = !{!"branch_weights", i32 165832, i32 1}
!253 = !{!"function_entry_count", i64 416118}
!254 = !{!"postreload-gcse.c:reset_opr_set_tables"}
!255 = !{!"branch_weights", i32 416118, i32 2}
!256 = !{!"branch_weights", i32 416111, i32 8}
!257 = !{!"function_entry_count", i64 1824209}
!258 = !{!"postreload-gcse.c:record_opr_changes"}
!259 = !{!"branch_weights", i32 1269933, i32 554277}
!260 = !{!"branch_weights", i32 1, i32 554277}
!261 = !{!"branch_weights", i32 554277, i32 0}
!262 = distinct !{!262, !200}
!263 = !{!"branch_weights", i32 144308, i32 1679903}
!264 = !{!191, !191, i64 0}
!265 = !{!"branch_weights", i32 1010150, i32 6638123}
!266 = !{!"branch_weights", i32 144308, i32 7503964}
!267 = distinct !{!267, !200}
!268 = !{!"branch_weights", i32 93552, i32 50756}
!269 = !{!"branch_weights", i32 1, i32 50756}
!270 = !{!"branch_weights", i32 50756, i32 0}
!271 = distinct !{!271, !200}
!272 = !{!"branch_weights", i32 -1862722918, i32 160302883}
!273 = !{!"function_entry_count", i64 1032842}
!274 = !{!"postreload-gcse.c:hash_scan_set"}
!275 = !{!"branch_weights", i32 240907, i32 791937}
!276 = !{!"branch_weights", i32 276006, i32 515932}
!277 = !{!"branch_weights", i32 1, i32 516912}
!278 = !{!"branch_weights", i32 516912, i32 1}
!279 = !{!"branch_weights", i32 240907, i32 276006}
!280 = !{!"branch_weights", i32 1, i32 240907}
!281 = !{!"branch_weights", i32 240812, i32 96}
!282 = !{!"branch_weights", i32 1, i32 96}
!283 = !{!"branch_weights", i32 110785, i32 130028}
!284 = !{!"branch_weights", i32 188828, i32 87179}
!285 = !{!"branch_weights", i32 1, i32 188828}
!286 = !{!"branch_weights", i32 188711, i32 118}
!287 = !{!"branch_weights", i32 1, i32 118}
!288 = !{!"branch_weights", i32 188711, i32 1}
!289 = !{!"branch_weights", i32 59007, i32 129705}
!290 = !{!"branch_weights", i32 2718, i32 56290}
!291 = !{!"function_entry_count", i64 1898936}
!292 = !{!"postreload-gcse.c:record_last_set_info"}
!293 = !{!"branch_weights", i32 1, i32 1898937}
!294 = !{!"branch_weights", i32 1005398969, i32 -883859367, i32 1379674965}
!295 = !{!"branch_weights", i32 452008, i32 1}
!296 = !{!"function_entry_count", i64 1117542}
!297 = !{!"postreload-gcse.c:record_last_reg_set_info"}
!298 = !{!"branch_weights", i32 1146, i32 1117543}
!299 = distinct !{!299, !200}
!300 = !{!"function_entry_count", i64 6638122}
!301 = !{!"postreload-gcse.c:record_last_reg_set_info_regno"}
!302 = !{!"function_entry_count", i64 3656973}
!303 = !{!"postreload-gcse.c:rhs_regno"}
!304 = !{!"function_entry_count", i64 587393}
!305 = !{!"postreload-gcse.c:record_last_mem_set_info"}
!306 = !{!"branch_weights", i32 27, i32 587368}
!307 = !{!"branch_weights", i32 1, i32 587394}
!308 = !{!309, !173, i64 0}
!309 = !{!"modifies_mem", !173, i64 0, !173, i64 8}
!310 = !{!309, !173, i64 8}
!311 = !{!"function_entry_count", i64 1469312}
!312 = !{!"postreload-gcse.c:end_hard_regno"}
!313 = !{!"function_entry_count", i64 1215521}
!314 = !{!"postreload-gcse.c:oprs_unchanged_p"}
!315 = !{!"branch_weights", i32 261059, i32 288405, i32 380663, i32 1, i32 1, i32 12240, i32 244830, i32 1, i32 1, i32 1, i32 28330, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!316 = !{!"branch_weights", i32 288405, i32 1}
!317 = !{!"branch_weights", i32 91978, i32 196428}
!318 = !{!"branch_weights", i32 257457, i32 123207}
!319 = !{!"branch_weights", i32 127, i32 155586689}
!320 = !{!"branch_weights", i32 1, i32 214081}
!321 = !{!"branch_weights", i32 1, i32 1036796, i32 1}
!322 = !{!323, !168, i64 0}
!323 = !{!"rtvec_def", !168, i64 0, !169, i64 8}
!324 = !{!"branch_weights", i32 46978, i32 471421}
!325 = distinct !{!325, !200}
!326 = !{!"branch_weights", i32 304317, i32 214081}
!327 = distinct !{!327, !200}
!328 = !{!"function_entry_count", i64 186316}
!329 = !{!"postreload-gcse.c:insert_expr_in_table"}
!330 = !{!"branch_weights", i32 186314, i32 4}
!331 = !{!"branch_weights", i32 134, i32 186181}
!332 = !{!"branch_weights", i32 1, i32 186314}
!333 = !{!247, !173, i64 16}
!334 = !{!"branch_weights", i32 83849, i32 102466}
!335 = !{!"branch_weights", i32 102466, i32 1}
!336 = !{!"branch_weights", i32 1, i32 183415}
!337 = !{!"branch_weights", i32 183415, i32 4493690}
!338 = distinct !{!338, !200}
!339 = !{!340, !173, i64 8}
!340 = !{!"occr", !173, i64 0, !173, i64 8, !169, i64 16}
!341 = !{!"branch_weights", i32 186314, i32 4674207}
!342 = !{!"branch_weights", i32 680, i32 182737}
!343 = !{!"branch_weights", i32 1, i32 183416}
!344 = !{!"branch_weights", i32 83849, i32 99568}
!345 = !{!340, !173, i64 0}
!346 = !{!340, !169, i64 16}
!347 = !{!"function_entry_count", i64 569372}
!348 = !{!"postreload-gcse.c:load_killed_in_block_p"}
!349 = !{!"branch_weights", i32 1, i32 316462}
!350 = !{!"branch_weights", i32 100878, i32 757276}
!351 = !{!"branch_weights", i32 373386, i32 383891}
!352 = distinct !{!352, !200}
!353 = !{!"branch_weights", i32 1, i32 100878}
!354 = !{!"branch_weights", i32 208774, i32 275995}
!355 = !{!"branch_weights", i32 44138, i32 231858}
!356 = !{!"branch_weights", i32 316462, i32 541691}
!357 = !{!"function_entry_count", i64 351770}
!358 = !{!"postreload-gcse.c:reg_changed_after_insn_p"}
!359 = !{!"branch_weights", i32 53557, i32 298279}
!360 = !{!"branch_weights", i32 65, i32 298215}
!361 = distinct !{!361, !200}
!362 = !{!"function_entry_count", i64 267216}
!363 = !{!"postreload-gcse.c:hash_expr"}
!364 = !{!"function_entry_count", i64 289063}
!365 = !{!"postreload-gcse.c:find_mem_conflicts"}
!366 = !{!"branch_weights", i32 142437782, i32 10982, i32 10982, i32 10982, i32 -1262375962}
!367 = distinct !{!367, !200}
!368 = !{!"branch_weights", i32 231960, i32 44138}
!369 = !{!"postreload-gcse.c:dump_hash_table_entry"}
!370 = distinct !{!370, !200}
!371 = !{!"function_entry_count", i64 251903}
!372 = !{!"postreload-gcse.c:bb_has_well_behaved_predecessors"}
!373 = !{!190, !173, i64 0}
!374 = !{i64 0, i64 4, !167, i64 8, i64 8, !172}
!375 = !{i64 0, i64 8, !172}
!376 = !{!"branch_weights", i32 1, i32 251903}
!377 = !{!378, !168, i64 48}
!378 = !{!"edge_def", !173, i64 0, !173, i64 8, !169, i64 16, !173, i64 24, !173, i64 32, !168, i64 40, !168, i64 44, !168, i64 48, !168, i64 52, !191, i64 56}
!379 = !{!378, !173, i64 0}
!380 = !{!"branch_weights", i32 407621, i32 1}
!381 = !{!190, !173, i64 8}
!382 = !{!378, !173, i64 8}
!383 = !{!"branch_weights", i32 366484, i32 41138}
!384 = !{!"branch_weights", i32 22904, i32 -97763476}
!385 = !{!"branch_weights", i32 251903, i32 155718}
!386 = distinct !{!386, !200}
!387 = !{!"function_entry_count", i64 80900}
!388 = !{!"postreload-gcse.c:lookup_expr_in_table"}
!389 = !{!"branch_weights", i32 1, i32 80901}
!390 = !{!"function_entry_count", i64 63366}
!391 = !{!"postreload-gcse.c:eliminate_partially_redundant_load"}
!392 = !{!"branch_weights", i32 59057, i32 4311}
!393 = !{!196, !173, i64 0}
!394 = !{!"branch_weights", i32 57138, i32 1920}
!395 = !{!"branch_weights", i32 1, i32 57137}
!396 = !{!"branch_weights", i32 81347, i32 7181}
!397 = !{!"branch_weights", i32 1, i32 7181}
!398 = !{!"branch_weights", i32 7150, i32 32}
!399 = !{!"branch_weights", i32 7136, i32 15}
!400 = !{!"branch_weights", i32 5326, i32 1811}
!401 = !{!"branch_weights", i32 7181, i32 0}
!402 = distinct !{!402, !200}
!403 = !{!"branch_weights", i32 68755, i32 25099}
!404 = !{!"branch_weights", i32 33427, i32 35329}
!405 = !{!378, !191, i64 56}
!406 = !{!"branch_weights", i32 88528, i32 5326}
!407 = !{!"branch_weights", i32 3609, i32 1718}
!408 = !{!"branch_weights", i32 2152, i32 1458}
!409 = !{!"branch_weights", i32 1668, i32 485}
!410 = !{!"branch_weights", i32 2, i32 3608}
!411 = !{!"branch_weights", i32 1, i32 3609}
!412 = !{!413, !173, i64 16}
!413 = !{!"unoccr", !173, i64 0, !173, i64 8, !173, i64 16}
!414 = !{!413, !173, i64 8}
!415 = !{!413, !173, i64 0}
!416 = !{!"branch_weights", i32 1774, i32 1836}
!417 = !{!"branch_weights", i32 30994, i32 34614}
!418 = !{!"branch_weights", i32 8, i32 88521}
!419 = !{!"branch_weights", i32 1, i32 88528}
!420 = !{!"branch_weights", i32 55057, i32 33472}
!421 = !{!"branch_weights", i32 57137, i32 36716}
!422 = distinct !{!422, !200}
!423 = !{!"branch_weights", i32 1999326895, i32 148156753}
!424 = !{!"branch_weights", i32 3942, i32 1}
!425 = !{!426, !173, i64 976}
!426 = !{!"gcc_target", !427, i64 0, !429, i64 368, !430, i64 664, !168, i64 744, !173, i64 752, !173, i64 760, !173, i64 768, !173, i64 776, !173, i64 784, !173, i64 792, !173, i64 800, !173, i64 808, !173, i64 816, !173, i64 824, !173, i64 832, !173, i64 840, !173, i64 848, !173, i64 856, !173, i64 864, !173, i64 872, !173, i64 880, !173, i64 888, !173, i64 896, !173, i64 904, !173, i64 912, !173, i64 920, !173, i64 928, !173, i64 936, !173, i64 944, !173, i64 952, !173, i64 960, !173, i64 968, !173, i64 976, !173, i64 984, !173, i64 992, !173, i64 1000, !173, i64 1008, !173, i64 1016, !173, i64 1024, !173, i64 1032, !173, i64 1040, !173, i64 1048, !173, i64 1056, !191, i64 1064, !191, i64 1072, !173, i64 1080, !173, i64 1088, !173, i64 1096, !173, i64 1104, !173, i64 1112, !173, i64 1120, !173, i64 1128, !173, i64 1136, !173, i64 1144, !173, i64 1152, !173, i64 1160, !173, i64 1168, !431, i64 1176, !173, i64 1232, !173, i64 1240, !173, i64 1248, !173, i64 1256, !173, i64 1264, !173, i64 1272, !173, i64 1280, !173, i64 1288, !173, i64 1296, !173, i64 1304, !173, i64 1312, !173, i64 1320, !173, i64 1328, !173, i64 1336, !173, i64 1344, !173, i64 1352, !173, i64 1360, !173, i64 1368, !173, i64 1376, !173, i64 1384, !173, i64 1392, !173, i64 1400, !173, i64 1408, !173, i64 1416, !173, i64 1424, !173, i64 1432, !173, i64 1440, !173, i64 1448, !173, i64 1456, !191, i64 1464, !432, i64 1472, !173, i64 1664, !173, i64 1672, !173, i64 1680, !173, i64 1688, !173, i64 1696, !173, i64 1704, !173, i64 1712, !173, i64 1720, !173, i64 1728, !173, i64 1736, !173, i64 1744, !173, i64 1752, !173, i64 1760, !173, i64 1768, !173, i64 1776, !433, i64 1784, !434, i64 1792, !435, i64 1896, !436, i64 1968, !173, i64 2016, !169, i64 2024, !169, i64 2025, !169, i64 2026, !169, i64 2027, !169, i64 2028, !169, i64 2029, !169, i64 2030, !169, i64 2031, !169, i64 2032, !169, i64 2033, !169, i64 2034, !169, i64 2035}
!427 = !{!"asm_out", !173, i64 0, !173, i64 8, !173, i64 16, !428, i64 24, !428, i64 56, !173, i64 88, !173, i64 96, !173, i64 104, !173, i64 112, !173, i64 120, !173, i64 128, !173, i64 136, !173, i64 144, !173, i64 152, !173, i64 160, !173, i64 168, !173, i64 176, !173, i64 184, !173, i64 192, !173, i64 200, !173, i64 208, !173, i64 216, !173, i64 224, !173, i64 232, !173, i64 240, !173, i64 248, !173, i64 256, !173, i64 264, !173, i64 272, !173, i64 280, !173, i64 288, !173, i64 296, !173, i64 304, !173, i64 312, !173, i64 320, !173, i64 328, !173, i64 336, !173, i64 344, !173, i64 352, !173, i64 360}
!428 = !{!"asm_int_op", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24}
!429 = !{!"sched", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !173, i64 40, !173, i64 48, !173, i64 56, !173, i64 64, !173, i64 72, !173, i64 80, !173, i64 88, !173, i64 96, !173, i64 104, !173, i64 112, !173, i64 120, !173, i64 128, !173, i64 136, !173, i64 144, !173, i64 152, !173, i64 160, !173, i64 168, !173, i64 176, !173, i64 184, !173, i64 192, !173, i64 200, !173, i64 208, !173, i64 216, !173, i64 224, !173, i64 232, !173, i64 240, !173, i64 248, !173, i64 256, !173, i64 264, !173, i64 272, !173, i64 280, !173, i64 288}
!430 = !{!"vectorize", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !173, i64 40, !173, i64 48, !173, i64 56, !173, i64 64, !173, i64 72}
!431 = !{!"addr_space", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !173, i64 40, !173, i64 48}
!432 = !{!"calls", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !173, i64 40, !173, i64 48, !173, i64 56, !173, i64 64, !173, i64 72, !173, i64 80, !173, i64 88, !173, i64 96, !173, i64 104, !173, i64 112, !173, i64 120, !173, i64 128, !173, i64 136, !173, i64 144, !173, i64 152, !173, i64 160, !173, i64 168, !173, i64 176, !173, i64 184}
!433 = !{!"c", !173, i64 0}
!434 = !{!"cxx", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !173, i64 40, !173, i64 48, !173, i64 56, !173, i64 64, !173, i64 72, !173, i64 80, !173, i64 88, !173, i64 96}
!435 = !{!"emutls", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !173, i64 40, !173, i64 48, !173, i64 56, !169, i64 64, !169, i64 65}
!436 = !{!"target_option_hooks", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !173, i64 40}
!437 = !{!"branch_weights", i32 2522, i32 5364}
!438 = !{!"branch_weights", i32 1421, i32 2522}
!439 = !{!440, !168, i64 8}
!440 = !{!"param_info", !173, i64 0, !168, i64 8, !169, i64 12, !168, i64 16, !168, i64 20, !173, i64 24}
!441 = !{!"branch_weights", i32 1, i32 1421}
!442 = !{!"branch_weights", i32 518, i32 903}
!443 = !{!"branch_weights", i32 766, i32 655}
!444 = !{!"branch_weights", i32 1, i32 903}
!445 = !{!"branch_weights", i32 903, i32 1}
!446 = !{!190, !168, i64 80}
!447 = !{!"branch_weights", i32 903, i32 0}
!448 = distinct !{!448, !200}
!449 = !{!"branch_weights", i32 655, i32 1}
!450 = !{!"branch_weights", i32 655, i32 0}
!451 = distinct !{!451, !200}
!452 = !{!"branch_weights", i32 1, i32 406}
!453 = !{!"branch_weights", i32 1421, i32 111}
!454 = !{!"branch_weights", i32 406, i32 719}
!455 = distinct !{!455, !200}
!456 = !{!"branch_weights", i32 407, i32 1}
!457 = !{!"branch_weights", i32 11575920, i32 2135907728}
!458 = !{!"branch_weights", i32 56829, i32 2}
!459 = !{!"branch_weights", i32 56827, i32 3}
!460 = !{!"function_entry_count", i64 1886385}
!461 = !{!"postreload-gcse.c:VEC_edge_base_length"}
!462 = !{!"branch_weights", i32 1, i32 1886386}
!463 = !{!464, !168, i64 0}
!464 = !{!"VEC_edge_base", !168, i64 0, !168, i64 4, !169, i64 8}
!465 = !{!"function_entry_count", i64 309040}
!466 = !{!"postreload-gcse.c:ei_start_1"}
!467 = !{!"function_entry_count", i64 810512}
!468 = !{!"postreload-gcse.c:ei_cond"}
!469 = !{!"branch_weights", i32 501473, i32 309041}
!470 = !{!"function_entry_count", i64 501472}
!471 = !{!"postreload-gcse.c:ei_next"}
!472 = !{!"branch_weights", i32 1, i32 501473}
!473 = !{!"branch_weights", i32 501473, i32 1}
!474 = !{!475, !168, i64 0}
!475 = !{!"", !168, i64 0, !173, i64 8}
!476 = !{!"postreload-gcse.c:ei_end_p"}
!477 = !{!"branch_weights", i32 1, i32 810513}
!478 = !{!"postreload-gcse.c:ei_edge"}
!479 = !{!"function_entry_count", i64 3626912}
!480 = !{!"postreload-gcse.c:ei_container"}
!481 = !{!"branch_weights", i32 1, i32 3626913}
!482 = !{!"postreload-gcse.c:VEC_edge_base_index"}
!483 = !{!"function_entry_count", i64 97237}
!484 = !{!"postreload-gcse.c:get_bb_avail_insn"}
!485 = !{!"branch_weights", i32 1, i32 88933}
!486 = !{!"branch_weights", i32 8305, i32 2613460}
!487 = !{!"branch_weights", i32 88933, i32 2532831}
!488 = distinct !{!488, !200}
!489 = !{!"function_entry_count", i64 8082}
!490 = !{!"postreload-gcse.c:get_avail_load_store_reg"}
!491 = !{!"branch_weights", i32 3301, i32 4783}
!492 = !{!"branch_weights", i32 4783, i32 1}
!493 = !{!"function_entry_count", i64 7180}
!494 = !{!"postreload-gcse.c:reg_killed_on_edge"}
!495 = !{!"branch_weights", i32 7062, i32 88}
!496 = !{!"branch_weights", i32 711, i32 1}
!497 = !{!"branch_weights", i32 57, i32 32}
!498 = !{!"branch_weights", i32 88, i32 0}
!499 = distinct !{!499, !200}
!500 = !{!"function_entry_count", i64 7149}
!501 = !{!"postreload-gcse.c:reg_used_on_edge"}
!502 = !{!"branch_weights", i32 7080, i32 56}
!503 = !{!"branch_weights", i32 455, i32 1}
!504 = !{!"branch_weights", i32 42, i32 15}
!505 = !{!"branch_weights", i32 56, i32 0}
!506 = distinct !{!506, !200}
!507 = !{!"function_entry_count", i64 83848}
!508 = !{!"postreload-gcse.c:delete_redundant_insns_1"}
!509 = !{!"branch_weights", i32 1, i32 83848}
!510 = !{!"branch_weights", i32 182402, i32 1015}
!511 = !{!"branch_weights", i32 1, i32 1015}
!512 = !{!"branch_weights", i32 1015, i32 1}
!513 = !{!"branch_weights", i32 83848, i32 99568}
!514 = distinct !{!514, !200}
