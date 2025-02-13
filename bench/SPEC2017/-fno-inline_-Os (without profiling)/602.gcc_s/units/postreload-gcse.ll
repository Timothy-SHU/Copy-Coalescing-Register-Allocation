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
define internal zeroext i8 @gate_handle_gcse2() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse_after_reload, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !10
  %8 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %7) #13
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %0
  %12 = phi i8 [ 0, %0 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_gcse2() #0 {
  %1 = tail call ptr @get_insns() #13
  tail call fastcc void @gcse_after_reload_main() #14
  %2 = tail call ptr @get_insns() #13
  tail call void @rebuild_jump_labels(ptr noundef %2) #13
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gcse_after_reload_main() unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @stats, i8 0, i64 12, i1 false)
  tail call fastcc void @alloc_mem() #14
  tail call void @init_alias_analysis() #13
  tail call fastcc void @compute_hash_table() #14
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @dump_hash_table(ptr noundef nonnull %1) #14
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @expr_table, align 8, !tbaa !10
  %6 = tail call i64 @htab_elements(ptr noundef %5) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  tail call fastcc void @eliminate_partially_redundant_loads() #14
  tail call fastcc void @delete_redundant_insns() #14
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr nonnull %9)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %14 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !12
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef %14) #14
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %17 = load i32, ptr @stats, align 4, !tbaa !14
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %17) #14
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %20 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !15
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.4, i32 noundef %20) #14
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !10
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
define internal fastcc void @alloc_mem() unnamed_addr #0 {
  %1 = tail call i32 @get_max_uid() #13
  %2 = add nsw i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 4) #13
  store ptr %4, ptr @uid_cuid, align 8, !tbaa !10
  %5 = load ptr, ptr @cfun, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %55, label %14

14:                                               ; preds = %0, %44
  %15 = phi ptr [ %48, %44 ], [ %12, %0 ]
  %16 = phi i32 [ %46, %44 ], [ 1, %0 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = load ptr, ptr %18, align 8, !tbaa !24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %14, %30
  %22 = phi ptr [ %42, %30 ], [ %19, %14 ]
  %23 = phi i32 [ %36, %30 ], [ %16, %14 ]
  %24 = load ptr, ptr %17, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = icmp eq ptr %22, %28
  br i1 %29, label %44, label %30

30:                                               ; preds = %21
  %31 = load i32, ptr %22, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %23, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !24
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %4, i64 %39
  store i32 %23, ptr %40, align 4, !tbaa !6
  %41 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !24
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %21, !llvm.loop !27

44:                                               ; preds = %30, %21, %14
  %45 = phi i32 [ %16, %14 ], [ %23, %21 ], [ %36, %30 ]
  %46 = freeze i32 %45
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !21
  %49 = icmp eq ptr %48, %10
  br i1 %49, label %50, label %14, !llvm.loop !29

50:                                               ; preds = %44
  %51 = icmp sgt i32 %46, 55
  %52 = lshr i32 %46, 2
  %53 = select i1 %51, i32 %52, i32 13
  %54 = zext nneg i32 %53 to i64
  br label %55

55:                                               ; preds = %50, %0
  %56 = phi i64 [ 13, %0 ], [ %54, %50 ]
  %57 = tail call ptr @htab_create(i64 noundef %56, ptr noundef nonnull @hash_expr_for_htab, ptr noundef nonnull @expr_equiv_p, ptr noundef null) #13
  store ptr %57, ptr @expr_table, align 8, !tbaa !10
  %58 = tail call i32 @_obstack_begin(ptr noundef nonnull @expr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %59 = tail call i32 @_obstack_begin(ptr noundef nonnull @occr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %60 = tail call i32 @_obstack_begin(ptr noundef nonnull @unoccr_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %61 = tail call i32 @_obstack_begin(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %62 = tail call ptr @xmalloc(i64 noundef 212) #13
  store ptr %62, ptr @reg_avail_info, align 8, !tbaa !10
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !30
  %63 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !32
  %64 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !33
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = icmp slt i64 %67, 16
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  tail call void @_obstack_newchunk(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 16) #13
  %70 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !30
  %71 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %72

72:                                               ; preds = %55, %69
  %73 = phi ptr [ %64, %55 ], [ %71, %69 ]
  %74 = phi i64 [ 16, %55 ], [ %70, %69 ]
  %75 = getelementptr inbounds i8, ptr %73, i64 %74
  %76 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !34
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  %80 = or i8 %79, 2
  store i8 %80, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  br label %81

81:                                               ; preds = %72, %78
  %82 = ptrtoint ptr %76 to i64
  store i64 %82, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !30
  %83 = ptrtoint ptr %75 to i64
  %84 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 6), align 8, !tbaa !35
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = xor i32 %84, -1
  %88 = sext i32 %87 to i64
  %89 = and i64 %86, %88
  %90 = inttoptr i64 %89 to ptr
  %91 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !36
  %92 = ptrtoint ptr %91 to i64
  %93 = sub i64 %89, %92
  %94 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !32
  %95 = ptrtoint ptr %94 to i64
  %96 = sub i64 %95, %92
  %97 = icmp sgt i64 %93, %96
  %98 = select i1 %97, ptr %94, ptr %90
  store ptr %98, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8
  store ptr %98, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %76, ptr @modifies_mem_obstack_bottom, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_hash_table() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %73, label %10

10:                                               ; preds = %0, %64
  %11 = phi ptr [ %66, %64 ], [ %6, %0 ]
  tail call fastcc void @reset_opr_set_tables() #14
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16

16:                                               ; preds = %10, %30
  %17 = phi ptr [ %32, %30 ], [ %14, %10 ]
  %18 = load ptr, ptr %12, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !24
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %17, align 8
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, -7
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call fastcc void @record_opr_changes(ptr noundef nonnull %17) #14
  br label %30

30:                                               ; preds = %24, %29
  %31 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %16, !llvm.loop !37

34:                                               ; preds = %30
  %35 = load ptr, ptr %12, align 8, !tbaa !24
  br label %36

36:                                               ; preds = %16, %34
  %37 = phi ptr [ %35, %34 ], [ %18, %16 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !24
  %39 = icmp eq ptr %38, null
  br i1 %39, label %64, label %40

40:                                               ; preds = %36, %60
  %41 = phi ptr [ %62, %60 ], [ %38, %36 ]
  %42 = load ptr, ptr %12, align 8, !tbaa !24
  %43 = getelementptr inbounds %struct.rtl_bb_info, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !25
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !24
  %47 = icmp eq ptr %41, %46
  br i1 %47, label %64, label %48

48:                                               ; preds = %40
  %49 = load i32, ptr %41, align 8
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -7
  %52 = icmp ult i32 %51, 4
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !24
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 23
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %41) #14
  br label %60

60:                                               ; preds = %48, %53, %59
  %61 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !24
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %40, !llvm.loop !38

64:                                               ; preds = %40, %60, %10, %36
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !21
  %67 = load ptr, ptr @cfun, align 8, !tbaa !10
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !20
  %72 = icmp eq ptr %66, %71
  br i1 %72, label %73, label %10, !llvm.loop !39

73:                                               ; preds = %64, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_hash_table(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 24, i64 1, ptr %0)
  %3 = load ptr, ptr @expr_table, align 8, !tbaa !10
  %4 = tail call i64 @htab_size(ptr noundef %3) #13
  %5 = load ptr, ptr @expr_table, align 8, !tbaa !10
  %6 = tail call i64 @htab_elements(ptr noundef %5) #13
  %7 = load ptr, ptr @expr_table, align 8, !tbaa !10
  %8 = tail call double @htab_collisions(ptr noundef %7) #13
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %4, i64 noundef %6, double noundef %8) #14
  %10 = load ptr, ptr @expr_table, align 8, !tbaa !10
  %11 = tail call i64 @htab_elements(ptr noundef %10) #13
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 17, i64 1, ptr %0)
  %15 = load ptr, ptr @expr_table, align 8, !tbaa !10
  tail call void @htab_traverse(ptr noundef %15, ptr noundef nonnull @dump_hash_table_entry, ptr noundef %0) #13
  br label %16

16:                                               ; preds = %13, %1
  %17 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_partially_redundant_loads() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %99, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %98, label %14

14:                                               ; preds = %10, %89
  %15 = phi ptr [ %91, %89 ], [ %12, %10 ]
  %16 = tail call fastcc zeroext i8 @bb_has_well_behaved_predecessors(ptr noundef %15) #14, !range !40
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %89, label %18

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %15) #13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %89

21:                                               ; preds = %18
  tail call fastcc void @reset_opr_set_tables() #14
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = load ptr, ptr %23, align 8, !tbaa !24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %89, label %26

26:                                               ; preds = %21, %85
  %27 = phi ptr [ %87, %85 ], [ %24, %21 ]
  %28 = load ptr, ptr %22, align 8, !tbaa !24
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %89, label %34

34:                                               ; preds = %26
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %79

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 23
  br i1 %43, label %44, label %79

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !24
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %79

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !24
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 134283263
  %55 = icmp eq i32 %54, 43
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = lshr i32 %53, 16
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %79, label %60

60:                                               ; preds = %56
  %61 = tail call i32 @general_operand(ptr noundef nonnull %52, i32 noundef %58) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef nonnull %52, ptr noundef nonnull %27, i8 noundef zeroext 0) #14, !range !40
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @may_trap_p(ptr noundef nonnull %52) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69, %66
  %73 = tail call i32 @side_effects_p(ptr noundef nonnull %52) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = tail call fastcc ptr @lookup_expr_in_table(ptr noundef nonnull %52) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call fastcc void @eliminate_partially_redundant_load(ptr noundef nonnull %15, ptr noundef nonnull %27, ptr noundef nonnull %76) #14
  br label %79

79:                                               ; preds = %56, %60, %63, %69, %72, %75, %78, %50, %44, %38, %34
  %80 = load i32, ptr %27, align 8
  %81 = and i32 %80, 65535
  %82 = add nsw i32 %81, -7
  %83 = icmp ult i32 %82, 4
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  tail call fastcc void @record_opr_changes(ptr noundef nonnull %27) #14
  br label %85

85:                                               ; preds = %79, %84
  %86 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %87 = load ptr, ptr %86, align 8, !tbaa !24
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %26, !llvm.loop !41

89:                                               ; preds = %85, %26, %21, %18, %14
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !21
  %92 = load ptr, ptr @cfun, align 8, !tbaa !10
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !16
  %95 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !20
  %97 = icmp eq ptr %91, %96
  br i1 %97, label %98, label %14, !llvm.loop !42

98:                                               ; preds = %89, %10
  tail call void @commit_edge_insertions() #13
  br label %99

99:                                               ; preds = %0, %98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_redundant_insns() unnamed_addr #0 {
  %1 = load ptr, ptr @expr_table, align 8, !tbaa !10
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @delete_redundant_insns_1, ptr noundef null) #13
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

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
define internal fastcc void @free_mem() unnamed_addr #0 {
  %1 = load ptr, ptr @uid_cuid, align 8, !tbaa !10
  tail call void @free(ptr noundef %1) #14
  %2 = load ptr, ptr @expr_table, align 8, !tbaa !10
  tail call void @htab_delete(ptr noundef %2) #13
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 0, %4
  store i64 %5, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %9 = ptrtoint ptr %8 to i64
  %10 = sub i64 %9, %4
  %11 = icmp sgt i64 %10, %5
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %3, i64 %5
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %16

14:                                               ; preds = %7, %0
  %15 = getelementptr inbounds i8, ptr %3, i64 %5
  tail call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %15) #13
  br label %16

16:                                               ; preds = %14, %12
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 0, %18
  store i64 %19, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %18
  %25 = icmp sgt i64 %24, %19
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, ptr %17, i64 %19
  store ptr %27, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %27, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %30

28:                                               ; preds = %21, %16
  %29 = getelementptr inbounds i8, ptr %17, i64 %19
  tail call void @obstack_free(ptr noundef nonnull @occr_obstack, ptr noundef %29) #13
  br label %30

30:                                               ; preds = %28, %26
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 0, %32
  store i64 %33, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %37, %32
  %39 = icmp sgt i64 %38, %33
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %31, i64 %33
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %44

42:                                               ; preds = %35, %30
  %43 = getelementptr inbounds i8, ptr %31, i64 %33
  tail call void @obstack_free(ptr noundef nonnull @unoccr_obstack, ptr noundef %43) #13
  br label %44

44:                                               ; preds = %42, %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !36
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 0, %46
  store i64 %47, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !30
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !32
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %51, %46
  %53 = icmp sgt i64 %52, %47
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %45, i64 %47
  store ptr %55, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %55, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %58

56:                                               ; preds = %49, %44
  %57 = getelementptr inbounds i8, ptr %45, i64 %47
  tail call void @obstack_free(ptr noundef nonnull @modifies_mem_obstack, ptr noundef %57) #13
  br label %58

58:                                               ; preds = %56, %54
  %59 = load ptr, ptr @reg_avail_info, align 8, !tbaa !10
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
define internal i32 @hash_expr_for_htab(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !43
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @expr_equiv_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = tail call i32 @exp_equiv_p(ptr noundef %3, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 1) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.expr, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !43
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %14, label %13

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
define internal fastcc void @reset_opr_set_tables() unnamed_addr #0 {
  %1 = load ptr, ptr @reg_avail_info, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %1, i8 0, i64 212, i1 false)
  %2 = load ptr, ptr @modifies_mem_obstack_bottom, align 8, !tbaa !10
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !36
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  store i64 %6, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !30
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !32
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp slt i64 %6, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %3, i64 %6
  store ptr %14, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %14, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %17

15:                                               ; preds = %8, %0
  %16 = getelementptr inbounds i8, ptr %3, i64 %6
  tail call void @obstack_free(ptr noundef nonnull @modifies_mem_obstack, ptr noundef %16) #13
  br label %17

17:                                               ; preds = %15, %13
  store ptr null, ptr @modifies_mem_list, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_opr_changes(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  tail call void @note_stores(ptr noundef %3, ptr noundef nonnull @record_last_set_info, ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1, %15
  %8 = phi ptr [ %17, %15 ], [ %5, %1 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 131072
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  tail call fastcc void @record_last_reg_set_info(ptr noundef %0, ptr noundef %14) #14
  br label %15

15:                                               ; preds = %7, %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !46

19:                                               ; preds = %15, %1
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  %24 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %23, %34
  %26 = phi i64 [ %24, %23 ], [ %35, %34 ]
  %27 = phi i64 [ 0, %23 ], [ %36, %34 ]
  %28 = shl nuw nsw i64 1, %27
  %29 = and i64 %26, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = trunc i64 %27 to i32
  tail call fastcc void @record_last_reg_set_info_regno(ptr noundef nonnull %0, i32 noundef %32) #14
  %33 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !47
  br label %34

34:                                               ; preds = %25, %31
  %35 = phi i64 [ %26, %25 ], [ %33, %31 ]
  %36 = add nuw nsw i64 %27, 1
  %37 = icmp eq i64 %36, 53
  br i1 %37, label %38, label %25, !llvm.loop !48

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %38, %60
  %43 = phi ptr [ %62, %60 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !24
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 25
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !24
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
  %62 = load ptr, ptr %61, align 8, !tbaa !24
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %42, !llvm.loop !49

64:                                               ; preds = %60, %38
  %65 = load i32, ptr %0, align 8
  %66 = and i32 %65, -2080374784
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call fastcc void @record_last_mem_set_info(ptr noundef nonnull %0) #14
  br label %69

69:                                               ; preds = %64, %68, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hash_scan_set(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = load ptr, ptr %5, align 8, !tbaa !24
  %9 = load i32, ptr %7, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, ptr %8, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %16, label %90

16:                                               ; preds = %12, %1
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %90, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @set_noop_p(ptr noundef nonnull %4) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %90

23:                                               ; preds = %20
  %24 = load i32, ptr %8, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = lshr i32 %24, 16
  %29 = and i32 %28, 255
  %30 = tail call zeroext i8 @can_copy_p(i32 noundef %29) #13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %90, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %7, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = tail call i32 @general_operand(ptr noundef nonnull %7, i32 noundef %35) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %90, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #14
  %40 = and i32 %39, -8
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %90, label %42

42:                                               ; preds = %38
  %43 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef nonnull %7, ptr noundef nonnull %0, i8 noundef zeroext 1) #14, !range !40
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %90, label %88

45:                                               ; preds = %23
  %46 = load i32, ptr %7, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %49, label %90

49:                                               ; preds = %45
  %50 = lshr i32 %46, 16
  %51 = and i32 %50, 255
  %52 = tail call zeroext i8 @can_copy_p(i32 noundef %51) #13
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %90, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %8, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = tail call i32 @general_operand(ptr noundef nonnull %8, i32 noundef %57) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %90, label %60

60:                                               ; preds = %54
  %61 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #14
  %62 = and i32 %61, -8
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %90, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr @flag_float_store, align 4, !tbaa !6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %8, align 8
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !24
  switch i8 %73, label %74 [
    i8 8, label %90
    i8 9, label %90
    i8 11, label %90
    i8 17, label %90
  ]

74:                                               ; preds = %67, %64
  %75 = load ptr, ptr @uid_cuid, align 8, !tbaa !10
  %76 = load i32, ptr %2, align 8, !tbaa !24
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %75, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !6
  %80 = add nsw i32 %79, 1
  %81 = tail call fastcc i32 @load_killed_in_block_p(i32 noundef %80, ptr noundef nonnull %8, i8 noundef zeroext 1) #14
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !24
  %86 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %85, ptr noundef nonnull %0, i8 noundef zeroext 1) #14, !range !40
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83, %42
  %89 = phi ptr [ %7, %42 ], [ %8, %83 ]
  tail call fastcc void @insert_expr_in_table(ptr noundef nonnull %89, ptr noundef nonnull %0) #14
  br label %90

90:                                               ; preds = %88, %60, %38, %42, %32, %27, %49, %54, %74, %83, %45, %67, %67, %67, %67, %16, %20, %12
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @record_last_set_info(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  %13 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %14 = trunc i32 %12 to i16
  switch i16 %14, label %23 [
    i16 37, label %15
    i16 43, label %16
  ]

15:                                               ; preds = %11
  tail call fastcc void @record_last_reg_set_info(ptr noundef %2, ptr noundef nonnull %13) #14
  br label %23

16:                                               ; preds = %11
  %17 = lshr i32 %12, 16
  %18 = and i32 %17, 255
  %19 = tail call i32 @push_operand(ptr noundef nonnull %13, i32 noundef %18) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

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
define internal fastcc void @record_last_reg_set_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %8 = tail call fastcc i32 @end_hard_regno(i32 noundef %6, i32 noundef %7) #14
  %9 = load ptr, ptr @uid_cuid, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr @reg_avail_info, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %12, %2
  %13 = phi i32 [ %3, %2 ], [ %20, %12 ]
  %14 = load i32, ptr %10, align 8, !tbaa !24
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = zext i32 %13 to i64
  %19 = getelementptr inbounds i32, ptr %11, i64 %18
  store i32 %17, ptr %19, align 4, !tbaa !6
  %20 = add i32 %13, 1
  %21 = icmp ult i32 %20, %8
  br i1 %21, label %12, label %22, !llvm.loop !50

22:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @record_last_reg_set_info_regno(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load ptr, ptr @uid_cuid, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = load ptr, ptr @reg_avail_info, align 8, !tbaa !10
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  store i32 %8, ptr %11, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !24
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_last_mem_set_info(ptr noundef %0) unnamed_addr #0 {
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !30
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !32
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !33
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @modifies_mem_obstack, i32 noundef 16) #13
  %9 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !30
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %13 = phi i64 [ 16, %1 ], [ %9, %8 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !34
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  %19 = or i8 %18, 2
  store i8 %19, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 10), align 8
  br label %20

20:                                               ; preds = %11, %17
  %21 = ptrtoint ptr %15 to i64
  store i64 %21, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 5), align 8, !tbaa !30
  %22 = ptrtoint ptr %14 to i64
  %23 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 6), align 8, !tbaa !35
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = xor i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = inttoptr i64 %28 to ptr
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 1), align 8, !tbaa !36
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %28, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 4), align 8, !tbaa !32
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %31
  %36 = icmp sgt i64 %32, %35
  %37 = select i1 %36, ptr %33, ptr %29
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 3), align 8
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @modifies_mem_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %0, ptr %15, align 8, !tbaa !51
  %38 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !10
  %39 = getelementptr inbounds %struct.modifies_mem, ptr %15, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !53
  store ptr %15, ptr @modifies_mem_list, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !24
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
define internal fastcc noundef zeroext i8 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %83, label %5

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
  ]

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #14
  %13 = icmp ult i32 %12, 53
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 510, ptr noundef nonnull @.str.7) #13
  br label %15

15:                                               ; preds = %11, %14
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %79, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr @uid_cuid, align 8, !tbaa !10
  %19 = load i32, ptr %6, align 8, !tbaa !24
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !6
  %23 = add nsw i32 %22, -1
  br label %79

24:                                               ; preds = %7
  %25 = load ptr, ptr @uid_cuid, align 8, !tbaa !10
  %26 = load i32, ptr %6, align 8, !tbaa !24
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !6
  %30 = tail call fastcc i32 @load_killed_in_block_p(i32 noundef %29, ptr noundef nonnull %8, i8 noundef zeroext %2) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  %35 = icmp eq ptr %34, null
  br i1 %35, label %83, label %7

36:                                               ; preds = %7, %7, %7, %7, %7, %7
  %37 = icmp eq i8 %2, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %7, %36
  %39 = and i32 %9, 65535
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !24
  %43 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %40
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = icmp eq i8 %42, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %48 = zext i8 %42 to i64
  br label %49

49:                                               ; preds = %46, %77
  %50 = phi i64 [ %48, %46 ], [ %51, %77 ]
  %51 = add nsw i64 %50, -1
  %52 = getelementptr inbounds i8, ptr %44, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !24
  switch i8 %53, label %77 [
    i8 101, label %59
    i8 69, label %54
  ]

54:                                               ; preds = %49
  %55 = getelementptr inbounds [1 x %union.rtunion_def], ptr %47, i64 0, i64 %51
  %56 = load ptr, ptr %55, align 8, !tbaa !24
  %57 = load i32, ptr %56, align 8, !tbaa !54
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %70, label %77

59:                                               ; preds = %49
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %47, i64 0, i64 %51
  %61 = load ptr, ptr %60, align 8, !tbaa !24
  %62 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %61, ptr noundef %1, i8 noundef zeroext %2) #14, !range !40
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %83, label %77

64:                                               ; preds = %70
  %65 = add nuw nsw i64 %71, 1
  %66 = load ptr, ptr %55, align 8, !tbaa !24
  %67 = load i32, ptr %66, align 8, !tbaa !54
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %77, !llvm.loop !56

70:                                               ; preds = %54, %64
  %71 = phi i64 [ %65, %64 ], [ 0, %54 ]
  %72 = phi ptr [ %66, %64 ], [ %56, %54 ]
  %73 = getelementptr inbounds %struct.rtvec_def, ptr %72, i64 0, i32 1, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !10
  %75 = tail call fastcc zeroext i8 @oprs_unchanged_p(ptr noundef %74, ptr noundef %1, i8 noundef zeroext %2) #14, !range !40
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %83, label %64

77:                                               ; preds = %64, %54, %49, %59
  %78 = icmp sgt i64 %50, 1
  br i1 %78, label %49, label %83, !llvm.loop !57

79:                                               ; preds = %15, %17
  %80 = phi i32 [ %23, %17 ], [ 0, %15 ]
  %81 = tail call fastcc zeroext i8 @reg_changed_after_insn_p(ptr noundef nonnull %8, i32 noundef %80) #14, !range !40
  %82 = xor i8 %81, 1
  br label %83

83:                                               ; preds = %32, %24, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %59, %77, %70, %79, %3, %38, %36
  %84 = phi i8 [ 0, %36 ], [ 1, %38 ], [ 1, %3 ], [ %82, %79 ], [ 0, %70 ], [ 0, %59 ], [ 1, %77 ], [ 1, %32 ], [ 0, %24 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i8 %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_expr_in_table(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call fastcc i32 @hash_expr(ptr noundef %0, ptr noundef nonnull %3) #14
  %5 = load i32, ptr %3, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %130

7:                                                ; preds = %2
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %9 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !33
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 24
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  call void @_obstack_newchunk(ptr noundef nonnull @expr_obstack, i32 noundef 24) #13
  %15 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi ptr [ %9, %7 ], [ %16, %14 ]
  %19 = phi i64 [ 24, %7 ], [ %15, %14 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !34
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  %25 = or i8 %24, 2
  store i8 %25, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  br label %26

26:                                               ; preds = %17, %23
  %27 = ptrtoint ptr %21 to i64
  store i64 %27, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %28 = ptrtoint ptr %20 to i64
  %29 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 6), align 8, !tbaa !35
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = xor i32 %29, -1
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = inttoptr i64 %34 to ptr
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %34, %37
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %40, %37
  %42 = icmp sgt i64 %38, %41
  %43 = select i1 %42, ptr %39, ptr %35
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %0, ptr %21, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.expr, ptr %21, i64 0, i32 1
  store i32 %4, ptr %44, align 8, !tbaa !43
  %45 = getelementptr inbounds %struct.expr, ptr %21, i64 0, i32 2
  store ptr null, ptr %45, align 8, !tbaa !58
  %46 = load ptr, ptr @expr_table, align 8, !tbaa !10
  %47 = call ptr @htab_find_slot_with_hash(ptr noundef %46, ptr noundef nonnull %21, i32 noundef %4, i32 noundef 1) #13
  %48 = load ptr, ptr %47, align 8, !tbaa !10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %26
  store ptr %21, ptr %47, align 8, !tbaa !10
  br label %67

51:                                               ; preds = %26
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %53 = ptrtoint ptr %52 to i64
  %54 = sub i64 %27, %53
  store i64 %54, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %58, %53
  %60 = icmp slt i64 %54, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %52, i64 %54
  store ptr %62, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %62, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %65

63:                                               ; preds = %56, %51
  %64 = getelementptr inbounds i8, ptr %52, i64 %54
  call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %64) #13
  br label %65

65:                                               ; preds = %63, %61
  %66 = load ptr, ptr %47, align 8, !tbaa !10
  br label %67

67:                                               ; preds = %65, %50
  %68 = phi ptr [ %66, %65 ], [ %21, %50 ]
  %69 = getelementptr inbounds %struct.expr, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %87, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !24
  br label %78

75:                                               ; preds = %78
  %76 = load ptr, ptr %79, align 8, !tbaa !10
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78, !llvm.loop !59

78:                                               ; preds = %72, %75
  %79 = phi ptr [ %70, %72 ], [ %76, %75 ]
  %80 = getelementptr inbounds %struct.occr, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !60
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !24
  %84 = icmp eq ptr %83, %74
  br i1 %84, label %85, label %75, !llvm.loop !59

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.occr, ptr %79, i64 0, i32 1
  store ptr %1, ptr %86, align 8, !tbaa !60
  br label %130

87:                                               ; preds = %75, %67
  %88 = phi ptr [ null, %67 ], [ %79, %75 ]
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %89 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %90 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !33
  %91 = ptrtoint ptr %89 to i64
  %92 = ptrtoint ptr %90 to i64
  %93 = sub i64 %91, %92
  %94 = icmp slt i64 %93, 24
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  call void @_obstack_newchunk(ptr noundef nonnull @occr_obstack, i32 noundef 24) #13
  %96 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %97 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %98

98:                                               ; preds = %87, %95
  %99 = phi ptr [ %90, %87 ], [ %97, %95 ]
  %100 = phi i64 [ 24, %87 ], [ %96, %95 ]
  %101 = getelementptr inbounds i8, ptr %99, i64 %100
  %102 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !34
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 10), align 8
  %106 = or i8 %105, 2
  store i8 %106, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 10), align 8
  br label %107

107:                                              ; preds = %98, %104
  %108 = ptrtoint ptr %102 to i64
  store i64 %108, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %109 = ptrtoint ptr %101 to i64
  %110 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 6), align 8, !tbaa !35
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = xor i32 %110, -1
  %114 = sext i32 %113 to i64
  %115 = and i64 %112, %114
  %116 = inttoptr i64 %115 to ptr
  %117 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %118 = ptrtoint ptr %117 to i64
  %119 = sub i64 %115, %118
  %120 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %121 = ptrtoint ptr %120 to i64
  %122 = sub i64 %121, %118
  %123 = icmp sgt i64 %119, %122
  %124 = select i1 %123, ptr %120, ptr %116
  store ptr %124, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 3), align 8
  store ptr %124, ptr getelementptr inbounds (%struct.obstack, ptr @occr_obstack, i64 0, i32 2), align 8, !tbaa !34
  %125 = load ptr, ptr %69, align 8, !tbaa !58
  %126 = icmp eq ptr %125, null
  %127 = select i1 %126, ptr %69, ptr %88
  store ptr %102, ptr %127, align 8, !tbaa !10
  %128 = getelementptr inbounds %struct.occr, ptr %102, i64 0, i32 1
  store ptr %1, ptr %128, align 8, !tbaa !60
  store ptr null, ptr %102, align 8, !tbaa !62
  %129 = getelementptr inbounds %struct.occr, ptr %102, i64 0, i32 2
  store i8 0, ptr %129, align 8, !tbaa !63
  br label %130

130:                                              ; preds = %85, %107, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @load_killed_in_block_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr @modifies_mem_list, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi ptr [ %4, %6 ], [ %31, %29 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = load ptr, ptr @uid_cuid, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !24
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !6
  br i1 %7, label %19, label %17

17:                                               ; preds = %8
  %18 = icmp slt i32 %16, %0
  br i1 %18, label %29, label %21, !llvm.loop !64

19:                                               ; preds = %8
  %20 = icmp sgt i32 %16, %0
  br i1 %20, label %29, label %21, !llvm.loop !64

21:                                               ; preds = %17, %19
  %22 = load i32, ptr %10, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  store i1 false, ptr @mems_conflict_p, align 4
  %26 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !24
  tail call void @note_stores(ptr noundef %27, ptr noundef nonnull @find_mem_conflicts, ptr noundef %1) #13
  %28 = load i1, ptr @mems_conflict_p, align 4
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %17, %19
  %30 = getelementptr inbounds %struct.modifies_mem, ptr %9, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8

33:                                               ; preds = %29, %21, %25, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %25 ], [ 1, %21 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @reg_changed_after_insn_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #14
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #14
  %8 = tail call fastcc i32 @end_hard_regno(i32 noundef %6, i32 noundef %7) #14
  %9 = load ptr, ptr @reg_avail_info, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %16, %2
  %11 = phi i32 [ %3, %2 ], [ %17, %16 ]
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !6
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = add i32 %11, 1
  %18 = icmp ult i32 %17, %8
  br i1 %18, label %10, label %19, !llvm.loop !65

19:                                               ; preds = %16, %10
  %20 = phi i8 [ 1, %10 ], [ 0, %16 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hash_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  store i32 0, ptr %1, align 4, !tbaa !6
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
define internal void @find_mem_conflicts(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
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
  ]

8:                                                ; preds = %4, %4, %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  br label %4, !llvm.loop !66

11:                                               ; preds = %4
  %12 = lshr i32 %6, 16
  %13 = and i32 %12, 255
  %14 = tail call i32 @true_dependence(ptr noundef nonnull %5, i32 noundef %13, ptr noundef %2, ptr noundef nonnull @rtx_addr_varies_p) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

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
define internal noundef i32 @dump_hash_table_entry(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 6, i64 1, ptr %1)
  %5 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @print_rtl(ptr noundef %1, ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %7) #14
  %9 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %1)
  %10 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %19, %13 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.occr, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = tail call i32 @print_rtl_single(ptr noundef %1, ptr noundef %16) #13
  %18 = tail call i32 @fputc(i32 10, ptr %1)
  %19 = load ptr, ptr %14, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !67

21:                                               ; preds = %13, %2
  %22 = tail call i32 @fputc(i32 10, ptr %1)
  ret i32 1
}

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_well_behaved_predecessors(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !68
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !69
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !70
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %2) #14, !range !40
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %7, %44
  %13 = load ptr, ptr %2, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !71
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %13, align 8, !tbaa !73
  br i1 %17, label %30, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #14
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %27) #14
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %49, label %30

30:                                               ; preds = %24, %19, %12
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !25
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65534
  %43 = icmp eq i32 %42, 20
  br i1 %43, label %49, label %44

44:                                               ; preds = %38, %30
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %45 = load i32, ptr %3, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %2) #14, !range !40
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %12, !llvm.loop !76

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
define internal fastcc ptr @lookup_expr_in_table(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %3 = call fastcc i32 @hash_expr(ptr noundef %0, ptr noundef nonnull %2) #14
  %4 = load i32, ptr %2, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %64

6:                                                ; preds = %1
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !33
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 24
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  call void @_obstack_newchunk(ptr noundef nonnull @expr_obstack, i32 noundef 24) #13
  %14 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi ptr [ %8, %6 ], [ %15, %13 ]
  %18 = phi i64 [ 24, %6 ], [ %14, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !34
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  %24 = or i8 %23, 2
  store i8 %24, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 10), align 8
  br label %25

25:                                               ; preds = %16, %22
  %26 = ptrtoint ptr %20 to i64
  store i64 %26, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %27 = ptrtoint ptr %19 to i64
  %28 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 6), align 8, !tbaa !35
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = xor i32 %28, -1
  %32 = sext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = inttoptr i64 %33 to ptr
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %33, %36
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %36
  %41 = icmp sgt i64 %37, %40
  %42 = select i1 %41, ptr %38, ptr %34
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %0, ptr %20, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.expr, ptr %20, i64 0, i32 1
  store i32 %3, ptr %43, align 8, !tbaa !43
  %44 = getelementptr inbounds %struct.expr, ptr %20, i64 0, i32 2
  store ptr null, ptr %44, align 8, !tbaa !58
  %45 = load ptr, ptr @expr_table, align 8, !tbaa !10
  %46 = call ptr @htab_find_slot_with_hash(ptr noundef %45, ptr noundef nonnull %20, i32 noundef %3, i32 noundef 1) #13
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %26, %48
  store i64 %49, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %25
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %53 = ptrtoint ptr %52 to i64
  %54 = sub i64 %53, %48
  %55 = icmp slt i64 %49, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %47, i64 %49
  store ptr %57, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %57, ptr getelementptr inbounds (%struct.obstack, ptr @expr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %60

58:                                               ; preds = %51, %25
  %59 = getelementptr inbounds i8, ptr %47, i64 %49
  call void @obstack_free(ptr noundef nonnull @expr_obstack, ptr noundef %59) #13
  br label %60

60:                                               ; preds = %58, %56
  %61 = icmp eq ptr %46, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %46, align 8, !tbaa !10
  br label %64

64:                                               ; preds = %60, %1, %62
  %65 = phi ptr [ %63, %62 ], [ null, %1 ], [ null, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_partially_redundant_load(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = tail call fastcc zeroext i8 @reg_changed_after_insn_p(ptr noundef %9, i32 noundef 0) #14, !range !40
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %371

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = tail call i32 @reg_used_between_p(ptr noundef %9, ptr noundef %17, ptr noundef nonnull %1) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %371

20:                                               ; preds = %12
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #14
  store i32 0, ptr %5, align 8, !tbaa.struct !69
  %22 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !70
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %4) #14, !range !40
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %371, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.expr, ptr %2, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %217
  %28 = phi ptr [ null, %25 ], [ %225, %217 ]
  %29 = phi i64 [ 0, %25 ], [ %224, %217 ]
  %30 = phi i8 [ 0, %25 ], [ %223, %217 ]
  %31 = phi i64 [ 0, %25 ], [ %218, %217 ]
  %32 = phi i64 [ 0, %25 ], [ %222, %217 ]
  %33 = phi i32 [ 0, %25 ], [ %221, %217 ]
  %34 = phi ptr [ null, %25 ], [ %220, %217 ]
  %35 = phi ptr [ null, %25 ], [ %219, %217 ]
  %36 = load ptr, ptr %4, align 8, !tbaa !10
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !24
  %44 = load ptr, ptr %26, align 8, !tbaa !58
  %45 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %37, ptr noundef %44) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %76, label %47

47:                                               ; preds = %27, %69
  %48 = phi ptr [ %71, %69 ], [ %45, %27 ]
  %49 = getelementptr inbounds %struct.occr, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !60
  %51 = tail call fastcc ptr @get_avail_load_store_reg(ptr noundef %50) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

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
  br i1 %59, label %69, label %60

60:                                               ; preds = %54
  %61 = tail call fastcc zeroext i8 @reg_killed_on_edge(ptr noundef %51, ptr noundef nonnull %36) #14, !range !40
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = tail call fastcc zeroext i8 @reg_used_on_edge(ptr noundef %9, ptr noundef nonnull %36) #14, !range !40
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = tail call i32 @reg_set_between_p(ptr noundef %51, ptr noundef %50, ptr noundef %43) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66, %54, %60, %63
  %70 = load ptr, ptr %48, align 8, !tbaa !62
  %71 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %37, ptr noundef %70) #14
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %47, !llvm.loop !78

73:                                               ; preds = %66, %69
  %74 = phi ptr [ null, %69 ], [ %50, %66 ]
  %75 = load ptr, ptr %36, align 8, !tbaa !73
  br label %76

76:                                               ; preds = %73, %27
  %77 = phi ptr [ %37, %27 ], [ %75, %73 ]
  %78 = phi ptr [ null, %27 ], [ %51, %73 ]
  %79 = phi ptr [ null, %27 ], [ %74, %73 ]
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !74
  %82 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %81) #14
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %84, label %97

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !75
  %87 = load ptr, ptr %86, align 8, !tbaa !68
  %88 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %87) #14
  %89 = icmp ugt i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  %92 = load i64, ptr %91, align 8, !tbaa !79
  %93 = add nsw i64 %92, %31
  br label %94

94:                                               ; preds = %90, %84
  %95 = phi i64 [ %93, %90 ], [ %31, %84 ]
  %96 = icmp eq ptr %79, null
  br i1 %96, label %167, label %99

97:                                               ; preds = %76
  %98 = icmp eq ptr %79, null
  br i1 %98, label %171, label %99

99:                                               ; preds = %97, %94
  %100 = phi i64 [ %31, %97 ], [ %95, %94 ]
  %101 = add nsw i32 %33, 1
  %102 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  %103 = load i64, ptr %102, align 8, !tbaa !79
  %104 = add nsw i64 %103, %32
  %105 = tail call ptr @copy_rtx(ptr noundef %9) #13
  %106 = tail call ptr @copy_rtx(ptr noundef %78) #13
  %107 = tail call ptr @gen_move_insn(ptr noundef %105, ptr noundef %106) #13
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !24
  %110 = tail call i32 @set_noop_p(ptr noundef %109) #13
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %217

112:                                              ; preds = %99
  %113 = load ptr, ptr %36, align 8, !tbaa !73
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !74
  %116 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %115) #14
  %117 = icmp ugt i32 %116, 1
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !75
  %121 = load ptr, ptr %120, align 8, !tbaa !68
  %122 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %121) #14
  %123 = icmp ugt i32 %122, 1
  %124 = select i1 %123, i8 1, i8 %30
  br label %125

125:                                              ; preds = %118, %112
  %126 = phi i8 [ %30, %112 ], [ %124, %118 ]
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %127 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %128 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !33
  %129 = ptrtoint ptr %127 to i64
  %130 = ptrtoint ptr %128 to i64
  %131 = sub i64 %129, %130
  %132 = icmp slt i64 %131, 24
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  tail call void @_obstack_newchunk(ptr noundef nonnull @unoccr_obstack, i32 noundef 24) #13
  %134 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %135 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %136

136:                                              ; preds = %125, %133
  %137 = phi ptr [ %128, %125 ], [ %135, %133 ]
  %138 = phi i64 [ 24, %125 ], [ %134, %133 ]
  %139 = getelementptr inbounds i8, ptr %137, i64 %138
  %140 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !34
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  %144 = or i8 %143, 2
  store i8 %144, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  br label %145

145:                                              ; preds = %136, %142
  %146 = ptrtoint ptr %140 to i64
  store i64 %146, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %147 = ptrtoint ptr %139 to i64
  %148 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 6), align 8, !tbaa !35
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = xor i32 %148, -1
  %152 = sext i32 %151 to i64
  %153 = and i64 %150, %152
  %154 = inttoptr i64 %153 to ptr
  %155 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %156 = ptrtoint ptr %155 to i64
  %157 = sub i64 %153, %156
  %158 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %159 = ptrtoint ptr %158 to i64
  %160 = sub i64 %159, %156
  %161 = icmp sgt i64 %157, %160
  %162 = select i1 %161, ptr %158, ptr %154
  store ptr %162, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8
  store ptr %162, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !34
  %163 = getelementptr inbounds %struct.unoccr, ptr %140, i64 0, i32 2
  store ptr %79, ptr %163, align 8, !tbaa !80
  %164 = getelementptr inbounds %struct.unoccr, ptr %140, i64 0, i32 1
  store ptr %36, ptr %164, align 8, !tbaa !82
  store ptr %28, ptr %140, align 8, !tbaa !83
  %165 = icmp eq ptr %34, null
  %166 = select i1 %165, ptr %140, ptr %34
  br label %217

167:                                              ; preds = %94
  %168 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %87) #14
  %169 = icmp ugt i32 %168, 1
  %170 = select i1 %169, i8 1, i8 %30
  br label %171

171:                                              ; preds = %97, %167
  %172 = phi i64 [ %95, %167 ], [ %31, %97 ]
  %173 = phi i8 [ %170, %167 ], [ %30, %97 ]
  %174 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  %175 = load i64, ptr %174, align 8, !tbaa !79
  %176 = add nsw i64 %175, %29
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %177 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %178 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !33
  %179 = ptrtoint ptr %177 to i64
  %180 = ptrtoint ptr %178 to i64
  %181 = sub i64 %179, %180
  %182 = icmp slt i64 %181, 24
  br i1 %182, label %183, label %186

183:                                              ; preds = %171
  tail call void @_obstack_newchunk(ptr noundef nonnull @unoccr_obstack, i32 noundef 24) #13
  %184 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %185 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %186

186:                                              ; preds = %171, %183
  %187 = phi ptr [ %178, %171 ], [ %185, %183 ]
  %188 = phi i64 [ 24, %171 ], [ %184, %183 ]
  %189 = getelementptr inbounds i8, ptr %187, i64 %188
  %190 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !34
  %191 = icmp eq ptr %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  %194 = or i8 %193, 2
  store i8 %194, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 10), align 8
  br label %195

195:                                              ; preds = %186, %192
  %196 = ptrtoint ptr %190 to i64
  store i64 %196, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %197 = ptrtoint ptr %189 to i64
  %198 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 6), align 8, !tbaa !35
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = xor i32 %198, -1
  %202 = sext i32 %201 to i64
  %203 = and i64 %200, %202
  %204 = inttoptr i64 %203 to ptr
  %205 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %206 = ptrtoint ptr %205 to i64
  %207 = sub i64 %203, %206
  %208 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %209 = ptrtoint ptr %208 to i64
  %210 = sub i64 %209, %206
  %211 = icmp sgt i64 %207, %210
  %212 = select i1 %211, ptr %208, ptr %204
  store ptr %212, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8
  store ptr %212, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !34
  %213 = getelementptr inbounds %struct.unoccr, ptr %190, i64 0, i32 2
  store ptr null, ptr %213, align 8, !tbaa !80
  %214 = getelementptr inbounds %struct.unoccr, ptr %190, i64 0, i32 1
  store ptr %36, ptr %214, align 8, !tbaa !82
  store ptr %35, ptr %190, align 8, !tbaa !83
  %215 = icmp eq ptr %34, null
  %216 = select i1 %215, ptr %190, ptr %34
  br label %217

217:                                              ; preds = %195, %145, %99
  %218 = phi i64 [ %100, %99 ], [ %100, %145 ], [ %172, %195 ]
  %219 = phi ptr [ %35, %99 ], [ %35, %145 ], [ %190, %195 ]
  %220 = phi ptr [ %34, %99 ], [ %166, %145 ], [ %216, %195 ]
  %221 = phi i32 [ %101, %99 ], [ %101, %145 ], [ %33, %195 ]
  %222 = phi i64 [ %104, %99 ], [ %104, %145 ], [ %32, %195 ]
  %223 = phi i8 [ %30, %99 ], [ %126, %145 ], [ %173, %195 ]
  %224 = phi i64 [ %29, %99 ], [ %29, %145 ], [ %176, %195 ]
  %225 = phi ptr [ %28, %99 ], [ %140, %145 ], [ %28, %195 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #14
  %226 = load i32, ptr %5, align 8
  %227 = load ptr, ptr %22, align 8
  %228 = call fastcc zeroext i8 @ei_cond(i32 %226, ptr %227, ptr noundef nonnull %4) #14, !range !40
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %27, !llvm.loop !84

230:                                              ; preds = %217
  %231 = icmp eq i32 %221, 0
  br i1 %231, label %354, label %232

232:                                              ; preds = %230
  %233 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %0) #13
  %234 = icmp ne i8 %233, 0
  %235 = icmp sgt i32 %221, 1
  %236 = and i1 %234, %235
  br i1 %236, label %354, label %237

237:                                              ; preds = %232
  %238 = load ptr, ptr @profile_info, align 8, !tbaa !10
  %239 = icmp ne ptr %238, null
  %240 = load i32, ptr @flag_branch_probabilities, align 4
  %241 = icmp ne i32 %240, 0
  %242 = select i1 %239, i1 %241, i1 false
  br i1 %242, label %243, label %249

243:                                              ; preds = %237
  %244 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !85
  %245 = tail call zeroext i8 %244() #13
  %246 = icmp ne i8 %245, 0
  %247 = icmp ne i8 %223, 0
  %248 = select i1 %246, i1 %247, i1 false
  br i1 %248, label %354, label %251

249:                                              ; preds = %237
  %250 = icmp eq i8 %223, 0
  br i1 %250, label %251, label %354

251:                                              ; preds = %249, %243
  %252 = load ptr, ptr @compiler_params, align 8, !tbaa !10
  %253 = getelementptr inbounds %struct.param_info, ptr %252, i64 24, i32 1
  %254 = load i32, ptr %253, align 8, !tbaa !97
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %224, %255
  %257 = icmp slt i64 %222, %256
  br i1 %257, label %354, label %258

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.param_info, ptr %252, i64 25, i32 1
  %260 = load i32, ptr %259, align 8, !tbaa !97
  %261 = sext i32 %260 to i64
  %262 = mul nsw i64 %218, %261
  %263 = icmp slt i64 %222, %262
  br i1 %263, label %354, label %264

264:                                              ; preds = %258
  %265 = icmp eq ptr %225, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %296, %264
  %267 = icmp eq ptr %219, null
  br i1 %267, label %325, label %299

268:                                              ; preds = %264, %296
  %269 = phi ptr [ %297, %296 ], [ %225, %264 ]
  %270 = getelementptr inbounds %struct.unoccr, ptr %269, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !80
  %272 = getelementptr inbounds %struct.unoccr, ptr %269, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !82
  store ptr %273, ptr %4, align 8, !tbaa !10
  %274 = tail call fastcc ptr @get_avail_load_store_reg(ptr noundef %271) #14
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1093, ptr noundef nonnull @.str.7) #13
  br label %277

277:                                              ; preds = %268, %276
  %278 = tail call ptr @copy_rtx(ptr noundef %9) #13
  %279 = tail call ptr @copy_rtx(ptr noundef %274) #13
  %280 = tail call ptr @gen_move_insn(ptr noundef %278, ptr noundef %279) #13
  tail call void @insert_insn_on_edge(ptr noundef %280, ptr noundef %273) #13
  %281 = load i32, ptr @stats, align 4, !tbaa !14
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr @stats, align 4, !tbaa !14
  %283 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %284 = icmp eq ptr %283, null
  br i1 %284, label %296, label %285

285:                                              ; preds = %277
  %286 = tail call fastcc i32 @rhs_regno(ptr noundef %274) #14
  %287 = tail call fastcc i32 @rhs_regno(ptr noundef %9) #14
  %288 = load ptr, ptr %273, align 8, !tbaa !73
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 9
  %290 = load i32, ptr %289, align 8, !tbaa !99
  %291 = getelementptr inbounds %struct.edge_def, ptr %273, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !75
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 9
  %294 = load i32, ptr %293, align 8, !tbaa !99
  %295 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %283, ptr noundef nonnull @.str.16, i32 noundef %286, i32 noundef %287, i32 noundef %290, i32 noundef %294) #14
  br label %296

296:                                              ; preds = %277, %285
  %297 = load ptr, ptr %269, align 8, !tbaa !83
  %298 = icmp eq ptr %297, null
  br i1 %298, label %266, label %268, !llvm.loop !100

299:                                              ; preds = %266, %322
  %300 = phi ptr [ %323, %322 ], [ %219, %266 ]
  %301 = getelementptr inbounds %struct.unoccr, ptr %300, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !82
  store ptr %302, ptr %4, align 8, !tbaa !10
  %303 = load ptr, ptr %6, align 8, !tbaa !24
  %304 = tail call ptr @copy_insn(ptr noundef %303) #13
  tail call void @insert_insn_on_edge(ptr noundef %304, ptr noundef %302) #13
  %305 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !12
  %306 = add nsw i32 %305, 1
  store i32 %306, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 1), align 4, !tbaa !12
  %307 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %308 = icmp eq ptr %307, null
  br i1 %308, label %322, label %309

309:                                              ; preds = %299
  %310 = load ptr, ptr %302, align 8, !tbaa !73
  %311 = getelementptr inbounds %struct.basic_block_def, ptr %310, i64 0, i32 9
  %312 = load i32, ptr %311, align 8, !tbaa !99
  %313 = getelementptr inbounds %struct.edge_def, ptr %302, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !75
  %315 = getelementptr inbounds %struct.basic_block_def, ptr %314, i64 0, i32 9
  %316 = load i32, ptr %315, align 8, !tbaa !99
  %317 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %307, ptr noundef nonnull @.str.17, i32 noundef %312, i32 noundef %316) #14
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %319 = load ptr, ptr %6, align 8, !tbaa !24
  tail call void @print_rtl(ptr noundef %318, ptr noundef %319) #13
  %320 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %321 = tail call i32 @fputc(i32 10, ptr %320)
  br label %322

322:                                              ; preds = %299, %309
  %323 = load ptr, ptr %300, align 8, !tbaa !83
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %299, !llvm.loop !101

325:                                              ; preds = %322, %266
  %326 = getelementptr inbounds %struct.expr, ptr %2, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !58
  %328 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %0, ptr noundef %327) #14
  %329 = icmp eq ptr %328, null
  br i1 %329, label %339, label %330

330:                                              ; preds = %325, %335
  %331 = phi ptr [ %337, %335 ], [ %328, %325 ]
  %332 = getelementptr inbounds %struct.occr, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !60
  %334 = icmp eq ptr %333, %1
  br i1 %334, label %352, label %335

335:                                              ; preds = %330
  %336 = load ptr, ptr %331, align 8, !tbaa !62
  %337 = tail call fastcc ptr @get_bb_avail_insn(ptr noundef %0, ptr noundef %336) #14
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %330, !llvm.loop !102

339:                                              ; preds = %335, %325
  %340 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !15
  %341 = add nsw i32 %340, 1
  store i32 %341, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !15
  %342 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %343 = icmp eq ptr %342, null
  br i1 %343, label %350, label %344

344:                                              ; preds = %339
  %345 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %342)
  %346 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %347 = tail call i32 @print_rtl_single(ptr noundef %346, ptr noundef %1) #13
  %348 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %349 = tail call i32 @fputc(i32 10, ptr %348)
  br label %350

350:                                              ; preds = %344, %339
  %351 = tail call ptr @delete_insn(ptr noundef %1) #13
  br label %354

352:                                              ; preds = %330
  %353 = getelementptr inbounds %struct.occr, ptr %331, i64 0, i32 2
  store i8 1, ptr %353, align 8, !tbaa !63
  br label %354

354:                                              ; preds = %350, %352, %258, %251, %230, %249, %232, %243
  %355 = icmp eq ptr %220, null
  br i1 %355, label %371, label %356

356:                                              ; preds = %354
  %357 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 1), align 8, !tbaa !36
  %358 = ptrtoint ptr %220 to i64
  %359 = ptrtoint ptr %357 to i64
  %360 = sub i64 %358, %359
  store i64 %360, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 5), align 8, !tbaa !30
  %361 = icmp sgt i64 %360, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %356
  %363 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 4), align 8, !tbaa !32
  %364 = ptrtoint ptr %363 to i64
  %365 = sub i64 %364, %359
  %366 = icmp slt i64 %360, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = getelementptr inbounds i8, ptr %357, i64 %360
  store ptr %368, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 2), align 8, !tbaa !34
  store ptr %368, ptr getelementptr inbounds (%struct.obstack, ptr @unoccr_obstack, i64 0, i32 3), align 8, !tbaa !33
  br label %371

369:                                              ; preds = %362, %356
  %370 = getelementptr inbounds i8, ptr %357, i64 %360
  tail call void @obstack_free(ptr noundef nonnull @unoccr_obstack, ptr noundef %370) #13
  br label %371

371:                                              ; preds = %20, %354, %369, %367, %3, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !103
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !40
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !10
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #14
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.7) #13
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !105
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !105
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #14
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.7) #13
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @reg_used_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_bb_avail_insn(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #10 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %11
  %5 = phi ptr [ %12, %11 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.occr, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !62
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !107

14:                                               ; preds = %4, %11, %2
  %15 = phi ptr [ null, %2 ], [ null, %11 ], [ %5, %4 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_avail_load_store_reg(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 906, ptr noundef nonnull @.str.7) #13
  %16 = load ptr, ptr %2, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !24
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
define internal fastcc noundef zeroext i8 @reg_killed_on_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

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
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !108

19:                                               ; preds = %12, %15, %2
  %20 = phi i8 [ 0, %2 ], [ 0, %15 ], [ 1, %12 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reg_used_on_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2, %17
  %7 = phi ptr [ %19, %17 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %14) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6, %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !llvm.loop !109

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
define internal noundef i32 @delete_redundant_insns_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2, %30
  %8 = phi ptr [ %31, %30 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.occr, ptr %8, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !63
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @dbg_cnt(i32 noundef 13) #13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.occr, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = tail call ptr @delete_insn(ptr noundef %17) #13
  %19 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !15
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr getelementptr inbounds (%struct.anon, ptr @stats, i64 0, i32 2), align 4, !tbaa !15
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %21)
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %26 = load ptr, ptr %16, align 8, !tbaa !60
  %27 = tail call i32 @print_rtl_single(ptr noundef %25, ptr noundef %26) #13
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %29 = tail call i32 @fputc(i32 10, ptr %28)
  br label %30

30:                                               ; preds = %7, %12, %23, %15
  %31 = load ptr, ptr %8, align 8, !tbaa !10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !110

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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !7, i64 4}
!13 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!14 = !{!13, !7, i64 0}
!15 = !{!13, !7, i64 8}
!16 = !{!17, !11, i64 8}
!17 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!18 = !{!19, !11, i64 0}
!19 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!20 = !{!19, !11, i64 8}
!21 = !{!22, !11, i64 56}
!22 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !23, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!23 = !{!"long", !8, i64 0}
!24 = !{!8, !8, i64 0}
!25 = !{!26, !11, i64 8}
!26 = !{!"rtl_bb_info", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!31, !23, i64 40}
!31 = !{!"obstack", !23, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !23, i64 40, !7, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !7, i64 80, !7, i64 80, !7, i64 80}
!32 = !{!31, !11, i64 32}
!33 = !{!31, !11, i64 24}
!34 = !{!31, !11, i64 16}
!35 = !{!31, !7, i64 48}
!36 = !{!31, !11, i64 8}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = !{i8 0, i8 2}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = !{!44, !7, i64 8}
!44 = !{!"expr", !11, i64 0, !7, i64 8, !11, i64 16}
!45 = !{!44, !11, i64 0}
!46 = distinct !{!46, !28}
!47 = !{!23, !23, i64 0}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = !{!52, !11, i64 0}
!52 = !{!"modifies_mem", !11, i64 0, !11, i64 8}
!53 = !{!52, !11, i64 8}
!54 = !{!55, !7, i64 0}
!55 = !{!"rtvec_def", !7, i64 0, !8, i64 8}
!56 = distinct !{!56, !28}
!57 = distinct !{!57, !28}
!58 = !{!44, !11, i64 16}
!59 = distinct !{!59, !28}
!60 = !{!61, !11, i64 8}
!61 = !{!"occr", !11, i64 0, !11, i64 8, !8, i64 16}
!62 = !{!61, !11, i64 0}
!63 = !{!61, !8, i64 16}
!64 = distinct !{!64, !28}
!65 = distinct !{!65, !28}
!66 = distinct !{!66, !28}
!67 = distinct !{!67, !28}
!68 = !{!22, !11, i64 0}
!69 = !{i64 0, i64 4, !6, i64 8, i64 8, !10}
!70 = !{i64 0, i64 8, !10}
!71 = !{!72, !7, i64 48}
!72 = !{!"edge_def", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !23, i64 56}
!73 = !{!72, !11, i64 0}
!74 = !{!22, !11, i64 8}
!75 = !{!72, !11, i64 8}
!76 = distinct !{!76, !28}
!77 = !{!26, !11, i64 0}
!78 = distinct !{!78, !28}
!79 = !{!72, !23, i64 56}
!80 = !{!81, !11, i64 16}
!81 = !{!"unoccr", !11, i64 0, !11, i64 8, !11, i64 16}
!82 = !{!81, !11, i64 8}
!83 = !{!81, !11, i64 0}
!84 = distinct !{!84, !28}
!85 = !{!86, !11, i64 976}
!86 = !{!"gcc_target", !87, i64 0, !89, i64 368, !90, i64 664, !7, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !11, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !11, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048, !11, i64 1056, !23, i64 1064, !23, i64 1072, !11, i64 1080, !11, i64 1088, !11, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !11, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !91, i64 1176, !11, i64 1232, !11, i64 1240, !11, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !11, i64 1280, !11, i64 1288, !11, i64 1296, !11, i64 1304, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !11, i64 1360, !11, i64 1368, !11, i64 1376, !11, i64 1384, !11, i64 1392, !11, i64 1400, !11, i64 1408, !11, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448, !11, i64 1456, !23, i64 1464, !92, i64 1472, !11, i64 1664, !11, i64 1672, !11, i64 1680, !11, i64 1688, !11, i64 1696, !11, i64 1704, !11, i64 1712, !11, i64 1720, !11, i64 1728, !11, i64 1736, !11, i64 1744, !11, i64 1752, !11, i64 1760, !11, i64 1768, !11, i64 1776, !93, i64 1784, !94, i64 1792, !95, i64 1896, !96, i64 1968, !11, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!87 = !{!"asm_out", !11, i64 0, !11, i64 8, !11, i64 16, !88, i64 24, !88, i64 56, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360}
!88 = !{!"asm_int_op", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!89 = !{!"sched", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!90 = !{!"vectorize", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!91 = !{!"addr_space", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!92 = !{!"calls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184}
!93 = !{!"c", !11, i64 0}
!94 = !{!"cxx", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!95 = !{!"emutls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !8, i64 64, !8, i64 65}
!96 = !{!"target_option_hooks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!97 = !{!98, !7, i64 8}
!98 = !{!"param_info", !11, i64 0, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 20, !11, i64 24}
!99 = !{!22, !7, i64 80}
!100 = distinct !{!100, !28}
!101 = distinct !{!101, !28}
!102 = distinct !{!102, !28}
!103 = !{!104, !7, i64 0}
!104 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!105 = !{!106, !7, i64 0}
!106 = !{!"", !7, i64 0, !11, i64 8}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !28}
!109 = distinct !{!109, !28}
!110 = distinct !{!110, !28}
