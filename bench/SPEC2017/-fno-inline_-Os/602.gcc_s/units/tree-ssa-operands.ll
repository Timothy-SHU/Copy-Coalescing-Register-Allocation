; ModuleID = 'tree-ssa-operands.c'
source_filename = "tree-ssa-operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.anon = type { i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.def_optype_d = type { ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_operand_memory_d = type { ptr, [1 x i8] }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }

@cfun = external local_unnamed_addr global ptr, align 8
@n_initialized = internal unnamed_addr global i32 0, align 4
@build_defs = internal global ptr null, align 8
@build_uses = internal global ptr null, align 8
@build_vuse = internal unnamed_addr global ptr null, align 8
@build_vdef = internal unnamed_addr global ptr null, align 8
@operands_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"tree-ssa-operands.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@clobber_stats = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c".MEM\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Original clobbered vars:           %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Static write clobbers avoided:     %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Static read clobbers avoided:      %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unescapable clobbers avoided:      %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Original read-only clobbers:       %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Static read-only clobbers avoided: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@optimize = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c" STMT MODIFIED. - <%p> \00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c" IMM ERROR : (use_p : tree - %p:%p)\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" : -->\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c" no uses.\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c" single use.\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%d uses.\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"***end of stmt iterator marker***\0A\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"Immediate_uses: \0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ssa_operands_active() local_unnamed_addr #0 !prof !230 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !231
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3, !prof !235

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !236
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !239

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef nonnull %1) #21
  %9 = getelementptr inbounds %struct.ssa_operands, ptr %8, i64 0, i32 3
  %10 = load i8, ptr %9, align 8, !tbaa !240
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %7, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %7 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @gimple_ssa_operands(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !242 !PGOFuncName !243 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 11
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_ssa_operands() local_unnamed_addr #2 !prof !244 {
  %1 = load i32, ptr @n_initialized, align 4, !tbaa !245
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @n_initialized, align 4, !tbaa !245
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !246

4:                                                ; preds = %0
  %5 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 5) #21
  store ptr %5, ptr @build_defs, align 8, !tbaa !231
  %6 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 10) #21
  store ptr %6, ptr @build_uses, align 8, !tbaa !231
  store ptr null, ptr @build_vuse, align 8, !tbaa !231
  store ptr null, ptr @build_vdef, align 8, !tbaa !231
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @operands_bitmap_obstack) #22
  br label %7

7:                                                ; preds = %4, %0
  %8 = load ptr, ptr @cfun, align 8, !tbaa !231
  %9 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %8) #21
  %10 = load ptr, ptr %9, align 8, !tbaa !247
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !248

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @.str.1) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !231
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi ptr [ %8, %7 ], [ %13, %12 ]
  %16 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %15) #21
  %17 = getelementptr inbounds %struct.ssa_operands, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !249
  %19 = getelementptr inbounds %struct.ssa_operands, ptr %16, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !250
  %20 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %15) #21
  %21 = getelementptr inbounds %struct.ssa_operands, ptr %20, i64 0, i32 3
  store i8 1, ptr %21, align 8, !tbaa !240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) @clobber_stats, i8 0, i64 24, i1 false)
  %22 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %15) #21
  %23 = getelementptr inbounds %struct.ssa_operands, ptr %22, i64 0, i32 2
  store i32 0, ptr %23, align 4, !tbaa !249
  tail call fastcc void @create_vop_var() #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #2 !prof !251 !PGOFuncName !252 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #22
  ret ptr %2
}

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_vop_var() unnamed_addr #2 !prof !244 !PGOFuncName !253 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !231
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !254
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !248

7:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %0, %7
  %9 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #22
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !231
  %11 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 32, ptr noundef %9, ptr noundef %10) #22
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = load i64, ptr %11, align 8
  %15 = or i64 %13, 33558528
  store i64 %15, ptr %12, align 8
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 4
  store ptr null, ptr %16, align 8, !tbaa !257
  %17 = and i64 %14, -85721089
  %18 = or disjoint i64 %17, 83886080
  store i64 %18, ptr %11, align 8
  %19 = tail call ptr @create_var_ann(ptr noundef nonnull %11) #22
  %20 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %11) #22
  %21 = load ptr, ptr @cfun, align 8, !tbaa !231
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !236
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 3
  store ptr %11, ptr %24, align 8, !tbaa !254
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fini_ssa_operands() local_unnamed_addr #2 !prof !244 {
  %1 = load i32, ptr @n_initialized, align 4, !tbaa !245
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @n_initialized, align 4, !tbaa !245
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5, !prof !246

4:                                                ; preds = %0
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull @build_defs) #21
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull @build_uses) #21
  store ptr null, ptr @build_vdef, align 8, !tbaa !231
  store ptr null, ptr @build_vuse, align 8, !tbaa !231
  br label %5

5:                                                ; preds = %4, %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !231
  %7 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %6) #21
  %8 = getelementptr inbounds %struct.ssa_operands, ptr %7, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !258
  %9 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %6) #21
  %10 = getelementptr inbounds %struct.ssa_operands, ptr %9, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !259
  %11 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %6) #21
  %12 = load ptr, ptr %11, align 8, !tbaa !247
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14, !prof !260

14:                                               ; preds = %5, %14
  %15 = phi ptr [ %20, %14 ], [ %12, %5 ]
  %16 = phi ptr [ %19, %14 ], [ %11, %5 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !261
  store ptr %17, ptr %16, align 8, !tbaa !247
  tail call void @ggc_free(ptr noundef nonnull %15) #22
  %18 = load ptr, ptr @cfun, align 8, !tbaa !231
  %19 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %18) #21
  %20 = load ptr, ptr %19, align 8, !tbaa !247
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %14, !prof !263, !llvm.loop !264

22:                                               ; preds = %14, %5
  %23 = phi ptr [ %6, %5 ], [ %18, %14 ]
  %24 = phi ptr [ %11, %5 ], [ %19, %14 ]
  %25 = getelementptr inbounds %struct.ssa_operands, ptr %24, i64 0, i32 3
  store i8 0, ptr %25, align 8, !tbaa !240
  %26 = load i32, ptr @n_initialized, align 4, !tbaa !245
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30, !prof !246

28:                                               ; preds = %22
  tail call void @bitmap_obstack_release(ptr noundef nonnull @operands_bitmap_obstack) #22
  %29 = load ptr, ptr @cfun, align 8, !tbaa !231
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %29, %28 ], [ %23, %22 ]
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !236
  %34 = getelementptr inbounds %struct.gimple_df, ptr %33, i64 0, i32 3
  store ptr null, ptr %34, align 8, !tbaa !254
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !231
  %36 = icmp eq ptr %35, null
  br i1 %36, label %59, label %37, !prof !248

37:                                               ; preds = %30
  %38 = load i32, ptr @dump_flags, align 4, !tbaa !245
  %39 = and i32 %38, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr @clobber_stats, align 4, !tbaa !266
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %35, ptr noundef nonnull @.str.3, i32 noundef %42) #21
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !231
  %45 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @clobber_stats, i64 0, i32 1), align 4, !tbaa !268
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.4, i32 noundef %45) #21
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !231
  %48 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @clobber_stats, i64 0, i32 2), align 4, !tbaa !269
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.5, i32 noundef %48) #21
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !231
  %51 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @clobber_stats, i64 0, i32 3), align 4, !tbaa !270
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.6, i32 noundef %51) #21
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !231
  %54 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @clobber_stats, i64 0, i32 4), align 4, !tbaa !271
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.7, i32 noundef %54) #21
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !231
  %57 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @clobber_stats, i64 0, i32 5), align 4, !tbaa !272
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.8, i32 noundef %57) #21
  br label %59

59:                                               ; preds = %41, %37, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #6 !prof !251 !PGOFuncName !273 {
  %2 = load ptr, ptr %0, align 8, !tbaa !231
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !274

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !231
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_stmt_operands(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !275 {
  %2 = tail call fastcc ptr @gimple_def_ops(ptr noundef %0) #21
  %3 = tail call fastcc ptr @gimple_use_ops(ptr noundef %0) #21
  %4 = icmp eq ptr %2, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %2, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !276
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !278

9:                                                ; preds = %5
  %10 = load ptr, ptr @cfun, align 8, !tbaa !231
  %11 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %10) #21
  %12 = getelementptr inbounds %struct.ssa_operands, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !258
  store ptr %13, ptr %6, align 8, !tbaa !276
  %14 = load ptr, ptr @cfun, align 8, !tbaa !231
  %15 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %14) #21
  %16 = getelementptr inbounds %struct.ssa_operands, ptr %15, i64 0, i32 4
  store ptr %2, ptr %16, align 8, !tbaa !258
  tail call fastcc void @gimple_set_def_ops(ptr noundef %0, ptr noundef null) #21
  br label %17

17:                                               ; preds = %9, %1
  %18 = icmp eq ptr %3, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %3, align 8, !tbaa !279
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %25, %22 ], [ %3, %19 ]
  %24 = getelementptr inbounds %struct.use_optype_d, ptr %23, i64 0, i32 1
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %24) #21
  %25 = load ptr, ptr %23, align 8, !tbaa !279
  %26 = load ptr, ptr %25, align 8, !tbaa !279
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %22, !llvm.loop !282

28:                                               ; preds = %22, %19
  %29 = phi ptr [ %3, %19 ], [ %25, %22 ]
  %30 = getelementptr inbounds %struct.use_optype_d, ptr %29, i64 0, i32 1
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %30) #21
  %31 = load ptr, ptr @cfun, align 8, !tbaa !231
  %32 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %31) #21
  %33 = getelementptr inbounds %struct.ssa_operands, ptr %32, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !259
  store ptr %34, ptr %29, align 8, !tbaa !279
  %35 = load ptr, ptr @cfun, align 8, !tbaa !231
  %36 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %35) #21
  %37 = getelementptr inbounds %struct.ssa_operands, ptr %36, i64 0, i32 5
  store ptr %3, ptr %37, align 8, !tbaa !259
  tail call fastcc void @gimple_set_use_ops(ptr noundef %0, ptr noundef null) #21
  br label %38

38:                                               ; preds = %28, %17
  %39 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !283
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call fastcc void @gimple_set_vuse(ptr noundef %0, ptr noundef null) #21
  tail call fastcc void @gimple_set_vdef(ptr noundef %0, ptr noundef null) #21
  br label %42

42:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !284 !PGOFuncName !285 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !283
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !286

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !287 !PGOFuncName !288 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !283
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !289

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_def_ops(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !290 !PGOFuncName !291 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !283
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !292

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1305, ptr noundef nonnull @.str.1) #22
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #9 !prof !293 !PGOFuncName !294 {
  %2 = load ptr, ptr %0, align 8, !tbaa !295
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !296

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !297
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !297
  store ptr %2, ptr %6, align 8, !tbaa !295
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_use_ops(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !284 !PGOFuncName !298 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !283
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !286

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1326, ptr noundef nonnull @.str.1) #22
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !299 !PGOFuncName !300 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !301
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !302 !PGOFuncName !303 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !283
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !304

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1407, ptr noundef nonnull @.str.1) #22
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !257
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vdef(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !305 !PGOFuncName !306 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !283
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !307

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1416, ptr noundef nonnull @.str.1) #22
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !308 !PGOFuncName !309 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !301
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !310 !PGOFuncName !311 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_stmt_operands(ptr noundef %0) local_unnamed_addr #2 !prof !312 {
  %2 = tail call zeroext i8 @ssa_operands_active() #21, !range !283
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %16, label %4, !prof !313

4:                                                ; preds = %1
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !257
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7, !prof !314

7:                                                ; preds = %4
  tail call void @timevar_push_1(i32 noundef 61) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %0) #21, !range !283
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !286

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1129, ptr noundef nonnull @.str.1) #22
  br label %12

12:                                               ; preds = %8, %11
  tail call fastcc void @build_ssa_operands(ptr noundef %0) #21
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 0) #22
  %13 = load i8, ptr @timevar_enable, align 1, !tbaa !257
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !314

15:                                               ; preds = %12
  tail call void @timevar_pop_1(i32 noundef 61) #22
  br label %16

16:                                               ; preds = %12, %15, %1
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !284 !PGOFuncName !315 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !283
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !286

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 13
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_ssa_operands(ptr noundef %0) unnamed_addr #2 !prof !284 !PGOFuncName !316 {
  tail call fastcc void @gimple_set_has_volatile_ops(ptr noundef %0, i8 noundef zeroext 0) #21
  tail call fastcc void @start_ssa_stmt_operands() #21
  tail call fastcc void @parse_ssa_operands(ptr noundef %0) #21
  tail call fastcc void @finalize_ssa_stmt_operands(ptr noundef %0) #21
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_has_volatile_ops(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #10 !prof !317 !PGOFuncName !318 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !283
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5, !prof !319

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i8 %1, 1
  %8 = zext nneg i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 14
  %10 = and i32 %6, -16385
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %0, align 8
  br label %12

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @start_ssa_stmt_operands() unnamed_addr #2 !prof !284 !PGOFuncName !320 {
  %1 = load ptr, ptr @build_defs, align 8
  %2 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !314

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 570, ptr noundef nonnull @.str.1) #22
  br label %5

5:                                                ; preds = %0, %4
  %6 = load ptr, ptr @build_uses, align 8
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !314

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 571, ptr noundef nonnull @.str.1) #22
  br label %10

10:                                               ; preds = %5, %9
  %11 = load ptr, ptr @build_vuse, align 8, !tbaa !231
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !314

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 572, ptr noundef nonnull @.str.1) #22
  br label %14

14:                                               ; preds = %10, %13
  %15 = load ptr, ptr @build_vdef, align 8, !tbaa !231
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !314

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 573, ptr noundef nonnull @.str.1) #22
  br label %18

18:                                               ; preds = %14, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @parse_ssa_operands(ptr noundef %0) unnamed_addr #2 !prof !284 !PGOFuncName !321 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !301
  %3 = icmp eq i32 %2, 7
  br i1 %3, label %4, label %5, !prof !286

4:                                                ; preds = %1
  tail call fastcc void @get_asm_expr_operands(ptr noundef %0) #21
  br label %36

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #21, !range !283
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8, !prof !314

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %0) #21, !range !283
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) #21, !range !283
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @gimple_debug_bind_get_value_ptr(ptr noundef %0) #21
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef %15, i32 noundef 2) #21
  br label %36

16:                                               ; preds = %5
  %17 = icmp eq i32 %2, 8
  %18 = trunc i32 %2 to i8
  switch i8 %18, label %21 [
    i8 8, label %19
    i8 6, label %19
  ]

19:                                               ; preds = %16, %16
  %20 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #21
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef %20, i32 noundef 1) #21
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi i64 [ 1, %19 ], [ 0, %16 ]
  %23 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %34, !prof !322

26:                                               ; preds = %21, %26
  %27 = phi i64 [ %30, %26 ], [ %22, %21 ]
  %28 = trunc i64 %27 to i32
  %29 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %28) #21
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef %29, i32 noundef 0) #21
  %30 = add nuw nsw i64 %27, 1
  %31 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %26, label %34, !prof !323, !llvm.loop !324

34:                                               ; preds = %26, %21
  br i1 %17, label %35, label %36, !prof !325

35:                                               ; preds = %34
  tail call fastcc void @maybe_add_call_vops(ptr noundef %0) #21
  br label %36

36:                                               ; preds = %34, %35, %14, %11, %8, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_ssa_stmt_operands(ptr noundef %0) unnamed_addr #2 !prof !284 !PGOFuncName !326 {
  tail call fastcc void @finalize_ssa_defs(ptr noundef %0) #21
  tail call fastcc void @finalize_ssa_uses(ptr noundef %0) #21
  tail call fastcc void @cleanup_build_arrays() #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #1 !prof !327 !PGOFuncName !328 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !329

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !330
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_asm_expr_operands(ptr noundef %0) unnamed_addr #2 !prof !275 !PGOFuncName !332 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  %6 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #21, !range !301
  %7 = shl nuw nsw i32 %6, 3
  %8 = zext nneg i32 %7 to i64
  %9 = alloca i8, i64 %8, align 16
  %10 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #21, !range !301
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %51, %1
  %13 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #21, !range !301
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %57, label %60

15:                                               ; preds = %1, %51
  %16 = phi i64 [ %53, %51 ], [ 0, %1 ]
  %17 = trunc i64 %16 to i32
  %18 = call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %17) #21
  %19 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !257
  %21 = getelementptr inbounds %struct.tree_list, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !257
  %23 = getelementptr inbounds %struct.tree_string, ptr %22, i64 0, i32 2
  store ptr %23, ptr %2, align 8, !tbaa !231
  %24 = getelementptr inbounds ptr, ptr %9, i64 %16
  store ptr %23, ptr %24, align 8, !tbaa !231
  %25 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %2, i32 noundef %17, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %26 = load i8, ptr %4, align 1, !tbaa !257
  %27 = icmp ne i8 %26, 0
  %28 = load i8, ptr %5, align 1
  %29 = icmp ne i8 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 796, ptr noundef nonnull @.str.1) #22
  %32 = load i8, ptr %4, align 1, !tbaa !257
  br label %33

33:                                               ; preds = %15, %31
  %34 = phi i8 [ %26, %15 ], [ %32, %31 ]
  %35 = icmp eq i8 %34, 0
  %36 = load i8, ptr %3, align 1
  %37 = icmp ne i8 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !257
  %42 = call ptr @get_base_address(ptr noundef %41) #22
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load i64, ptr %42, align 8
  %46 = and i64 %45, 65535
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !245
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  call fastcc void @mark_address_taken(ptr noundef nonnull %42) #21
  br label %51

51:                                               ; preds = %39, %44, %50, %33
  %52 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 2
  call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %52, i32 noundef 1) #21
  %53 = add nuw nsw i64 %16, 1
  %54 = call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #21, !range !301
  %55 = zext nneg i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %15, label %12, !llvm.loop !333

57:                                               ; preds = %87, %12
  %58 = call fastcc i32 @gimple_asm_nclobbers(ptr noundef %0) #21, !range !301
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %108, label %98

60:                                               ; preds = %12, %87
  %61 = phi i64 [ %89, %87 ], [ 0, %12 ]
  %62 = trunc i64 %61 to i32
  %63 = call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %62) #21
  %64 = getelementptr inbounds %struct.tree_list, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !257
  %66 = getelementptr inbounds %struct.tree_list, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !257
  %68 = getelementptr inbounds %struct.tree_string, ptr %67, i64 0, i32 2
  store ptr %68, ptr %2, align 8, !tbaa !231
  %69 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef 0, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %70 = load i8, ptr %4, align 1, !tbaa !257
  %71 = icmp eq i8 %70, 0
  %72 = load i8, ptr %3, align 1
  %73 = icmp ne i8 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %87

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.tree_list, ptr %63, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !257
  %78 = call ptr @get_base_address(ptr noundef %77) #22
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load i64, ptr %78, align 8
  %82 = and i64 %81, 65535
  %83 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !245
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  call fastcc void @mark_address_taken(ptr noundef nonnull %78) #21
  br label %87

87:                                               ; preds = %75, %80, %86, %60
  %88 = getelementptr inbounds %struct.tree_list, ptr %63, i64 0, i32 2
  call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %88, i32 noundef 0) #21
  %89 = add nuw nsw i64 %61, 1
  %90 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #21, !range !301
  %91 = zext nneg i32 %90 to i64
  %92 = icmp ult i64 %89, %91
  br i1 %92, label %60, label %57, !llvm.loop !334

93:                                               ; preds = %98
  %94 = add nuw nsw i64 %99, 1
  %95 = call fastcc i32 @gimple_asm_nclobbers(ptr noundef %0) #21, !range !301
  %96 = zext nneg i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %108, !llvm.loop !335

98:                                               ; preds = %57, %93
  %99 = phi i64 [ %94, %93 ], [ 0, %57 ]
  %100 = trunc i64 %99 to i32
  %101 = call fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %100) #21
  %102 = getelementptr inbounds %struct.tree_list, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !257
  %104 = getelementptr inbounds %struct.tree_string, ptr %103, i64 0, i32 2
  %105 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %104, ptr noundef nonnull dereferenceable(7) @.str.10) #21
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %93

107:                                              ; preds = %98
  call fastcc void @add_virtual_operand(ptr noundef %0, i32 noundef 1) #21
  br label %108

108:                                              ; preds = %93, %57, %107
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !336 !PGOFuncName !337 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !301
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !275 !PGOFuncName !338 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #21, !range !283
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = icmp ult i32 %5, 65536
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) unnamed_addr #2 !prof !275 !PGOFuncName !339 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_expr_operands(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !340 !PGOFuncName !341 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !231
  %6 = icmp eq ptr %5, null
  br i1 %6, label %109, label %7, !prof !342

7:                                                ; preds = %3, %32
  %8 = phi ptr [ %35, %32 ], [ %5, %3 ]
  %9 = phi i32 [ %34, %32 ], [ %2, %3 ]
  %10 = phi ptr [ %33, %32 ], [ %1, %3 ]
  %11 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #21, !range !283
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !343

13:                                               ; preds = %7
  %14 = and i32 %9, 2
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ %14, %13 ], [ 0, %7 ]
  %17 = load i64, ptr %8, align 8
  %18 = trunc i64 %17 to i16
  %19 = and i64 %17, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !245
  switch i16 %18, label %100 [
    i16 121, label %22
    i16 141, label %37
    i16 32, label %38
    i16 34, label %38
    i16 36, label %38
    i16 37, label %39
    i16 49, label %43
    i16 48, label %45
    i16 47, label %45
    i16 152, label %46
    i16 45, label %47
    i16 46, label %47
    i16 41, label %47
    i16 43, label %47
    i16 44, label %47
    i16 150, label %66
    i16 56, label %69
    i16 57, label %69
    i16 51, label %73
    i16 42, label %87
    i16 96, label %91
    i16 118, label %91
    i16 93, label %93
    i16 94, label %93
    i16 95, label %93
    i16 52, label %93
    i16 50, label %93
    i16 148, label %93
    i16 167, label %96
    i16 151, label %96
    i16 29, label %109
    i16 30, label %109
    i16 33, label %109
    i16 139, label %109
  ], !prof !344

22:                                               ; preds = %15
  br i1 %12, label %23, label %26, !prof !345

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !257
  tail call fastcc void @mark_address_taken(ptr noundef %25) #21
  br label %26

26:                                               ; preds = %23, %22
  %27 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %8) #22
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %109, !prof !346

29:                                               ; preds = %26
  %30 = or i32 %9, 2
  %31 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  br label %32

32:                                               ; preds = %29, %60, %62, %66, %69, %91, %93, %96
  %33 = phi ptr [ %31, %29 ], [ %61, %60 ], [ %65, %62 ], [ %67, %66 ], [ %72, %69 ], [ %92, %91 ], [ %95, %93 ], [ %99, %96 ]
  %34 = phi i32 [ %30, %29 ], [ %16, %60 ], [ %16, %62 ], [ %9, %66 ], [ %16, %69 ], [ %9, %91 ], [ %9, %93 ], [ %9, %96 ]
  %35 = load ptr, ptr %33, align 8, !tbaa !231
  %36 = icmp eq ptr %35, null
  br i1 %36, label %109, label %7, !prof !347

37:                                               ; preds = %15
  tail call fastcc void @add_stmt_operand(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %9) #21
  br label %109

38:                                               ; preds = %15, %15, %15
  tail call fastcc void @add_stmt_operand(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %9) #21
  br label %109

39:                                               ; preds = %15
  %40 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %0) #21, !range !283
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %109

42:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 899, ptr noundef nonnull @.str.1) #22
  br label %109

43:                                               ; preds = %15
  %44 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %44, i32 noundef %9) #21
  br label %45

45:                                               ; preds = %15, %15, %43
  tail call fastcc void @get_indirect_ref_operands(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %9) #21
  br label %109

46:                                               ; preds = %15
  tail call fastcc void @get_tmr_operands(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %9) #21
  br label %109

47:                                               ; preds = %15, %15, %15, %15, %15
  %48 = and i64 %17, 524288
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %51, label %50, !prof !348

50:                                               ; preds = %47
  tail call fastcc void @gimple_set_has_volatile_ops(ptr noundef %0, i8 noundef zeroext 1) #21
  br label %51

51:                                               ; preds = %50, %47
  %52 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %52, i32 noundef %9) #21
  switch i16 %18, label %109 [
    i16 41, label %53
    i16 45, label %62
    i16 46, label %62
  ], !prof !349

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !257
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 524288
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %60, label %59, !prof !350

59:                                               ; preds = %53
  tail call fastcc void @gimple_set_has_volatile_ops(ptr noundef %0, i8 noundef zeroext 1) #21
  br label %60

60:                                               ; preds = %59, %53
  %61 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  br label %32

62:                                               ; preds = %51, %51
  %63 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %63, i32 noundef %16) #21
  %64 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %64, i32 noundef %16) #21
  %65 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 2
  br label %32

66:                                               ; preds = %15
  %67 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %68 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %68, i32 noundef %16) #21
  br label %32

69:                                               ; preds = %15, %15
  %70 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %70, i32 noundef %16) #21
  %71 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %71, i32 noundef %16) #21
  %72 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  br label %32

73:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %74 = getelementptr inbounds %struct.tree_constructor, ptr %8, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !257
  %76 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %75, i32 noundef 0, ptr noundef nonnull %4) #21, !range !351
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73, %78
  %79 = phi i32 [ %82, %78 ], [ 0, %73 ]
  %80 = load ptr, ptr %4, align 8, !tbaa !231
  %81 = getelementptr inbounds %struct.constructor_elt_d, ptr %80, i64 0, i32 1
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %81, i32 noundef %16) #21
  %82 = add i32 %79, 1
  %83 = load ptr, ptr %74, align 8, !tbaa !257
  %84 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %83, i32 noundef %82, ptr noundef nonnull %4) #21, !range !351
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %78, !llvm.loop !352

86:                                               ; preds = %78, %73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %109

87:                                               ; preds = %15
  %88 = and i64 %17, 524288
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %91, label %90, !prof !353

90:                                               ; preds = %87
  tail call fastcc void @gimple_set_has_volatile_ops(ptr noundef %0, i8 noundef zeroext 1) #21
  br label %91

91:                                               ; preds = %100, %15, %15, %90, %87
  %92 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  br label %32

93:                                               ; preds = %102, %15, %15, %15, %15, %15, %15
  %94 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %94, i32 noundef %9) #21
  %95 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  br label %32

96:                                               ; preds = %15, %15
  %97 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %97, i32 noundef %9) #21
  %98 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %98, i32 noundef %9) #21
  %99 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  br label %32

100:                                              ; preds = %15
  %101 = icmp eq i32 %21, 6
  br i1 %101, label %91, label %102, !prof !354

102:                                              ; preds = %100
  %103 = and i32 %21, -3
  %104 = icmp eq i32 %103, 5
  br i1 %104, label %93, label %105, !prof !355

105:                                              ; preds = %102
  %106 = add i32 %21, -1
  %107 = icmp ult i32 %106, 2
  br i1 %107, label %109, label %108, !prof !356

108:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1026, ptr noundef nonnull @.str.1) #22
  br label %109

109:                                              ; preds = %32, %26, %51, %15, %15, %15, %15, %3, %105, %42, %39, %108, %86, %46, %45, %38, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_value_ptr(ptr noundef %0) unnamed_addr #2 !prof !275 !PGOFuncName !357 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !358 !PGOFuncName !359 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !283
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !360

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !361 !PGOFuncName !362 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !257
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_add_call_vops(ptr noundef %0) unnamed_addr #2 !prof !363 !PGOFuncName !364 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #22
  %3 = and i32 %2, 512
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13, !prof !365

5:                                                ; preds = %1
  %6 = and i32 %2, 11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8, !prof !366

8:                                                ; preds = %5
  %9 = and i32 %2, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !367

11:                                               ; preds = %8, %5
  %12 = phi i32 [ 1, %5 ], [ 0, %8 ]
  tail call fastcc void @add_virtual_operand(ptr noundef %0, i32 noundef %12) #21
  br label %13

13:                                               ; preds = %11, %8, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !275 !PGOFuncName !368 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !257
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !275 !PGOFuncName !369 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !257
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2655, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !257
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #21
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_address_taken(ptr noundef %0) unnamed_addr #2 !prof !370 !PGOFuncName !371 {
  %2 = tail call ptr @get_base_address(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4, !prof !372

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !245
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %12, !prof !373

10:                                               ; preds = %4
  %11 = or i64 %5, 262144
  store i64 %11, ptr %2, align 8
  br label %12

12:                                               ; preds = %10, %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !275 !PGOFuncName !374 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !257
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !275 !PGOFuncName !375 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !257
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2622, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #21
  ret ptr %9
}

; Function Attrs: optsize
declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nclobbers(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !275 !PGOFuncName !376 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !257
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !275 !PGOFuncName !377 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !257
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2688, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !257
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !257
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #21
  ret ptr %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_virtual_operand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !378 !PGOFuncName !379 {
  %3 = and i32 %1, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16, !prof !380

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #21, !range !283
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !381

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 638, ptr noundef nonnull @.str.1) #22
  br label %9

9:                                                ; preds = %5, %8
  %10 = and i32 %1, 1
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr @cfun, align 8, !tbaa !231
  %13 = tail call fastcc ptr @gimple_vop(ptr noundef %12) #21
  br i1 %11, label %15, label %14, !prof !382

14:                                               ; preds = %9
  tail call fastcc void @append_vdef(ptr noundef %13) #21
  br label %16

15:                                               ; preds = %9
  tail call fastcc void @append_vuse(ptr noundef %13) #21
  br label %16

16:                                               ; preds = %2, %15, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !275 !PGOFuncName !383 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !283
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !231
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #2 !prof !358 !PGOFuncName !384 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #21
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !385
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !360

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !358 !PGOFuncName !387 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !301
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 !prof !358 !PGOFuncName !388 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !245
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @append_vdef(ptr noundef %0) unnamed_addr #2 !prof !389 !PGOFuncName !390 {
  %2 = load i32, ptr @optimize, align 4, !tbaa !245
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %16, label %4, !prof !391

4:                                                ; preds = %1
  %5 = load ptr, ptr @build_vdef, align 8, !tbaa !231
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !392

7:                                                ; preds = %4
  %8 = icmp eq ptr %5, %0
  br i1 %8, label %9, label %14, !prof !393

9:                                                ; preds = %7, %4
  %10 = load ptr, ptr @build_vuse, align 8, !tbaa !231
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12, !prof !394

12:                                               ; preds = %9
  %13 = icmp eq ptr %10, %0
  br i1 %13, label %15, label %14, !prof !395

14:                                               ; preds = %12, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 606, ptr noundef nonnull @.str.1) #22
  br label %15

15:                                               ; preds = %9, %12, %14
  store ptr %0, ptr @build_vdef, align 8, !tbaa !231
  store ptr %0, ptr @build_vuse, align 8, !tbaa !231
  br label %16

16:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #2 !prof !396 !PGOFuncName !397 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !398

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !236
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10, !prof !398

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 51, ptr noundef nonnull @.str.1) #22
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !236
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !254
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @append_vuse(ptr noundef %0) unnamed_addr #2 !prof !399 !PGOFuncName !400 {
  %2 = load i32, ptr @optimize, align 4, !tbaa !245
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4, !prof !401

4:                                                ; preds = %1
  %5 = load ptr, ptr @build_vuse, align 8, !tbaa !231
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !402

7:                                                ; preds = %4
  %8 = icmp eq ptr %5, %0
  br i1 %8, label %10, label %9, !prof !403

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 622, ptr noundef nonnull @.str.1) #22
  br label %10

10:                                               ; preds = %4, %7, %9
  store ptr %0, ptr @build_vuse, align 8, !tbaa !231
  br label %11

11:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_stmt_operand(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #2 !prof !404 !PGOFuncName !405 {
  %4 = load ptr, ptr %0, align 8, !tbaa !231
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %12 [
    i16 32, label %15
    i16 34, label %15
    i16 36, label %15
    i16 141, label %7
  ], !prof !406

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !257
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %15
    i16 34, label %15
    i16 36, label %15
  ], !prof !407

12:                                               ; preds = %7, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 657, ptr noundef nonnull @.str.1) #22
  %13 = load ptr, ptr %0, align 8, !tbaa !231
  %14 = load i64, ptr %13, align 8
  br label %15

15:                                               ; preds = %7, %7, %7, %3, %3, %3, %12
  %16 = phi i64 [ %5, %7 ], [ %5, %7 ], [ %5, %7 ], [ %5, %3 ], [ %5, %3 ], [ %5, %3 ], [ %14, %12 ]
  %17 = phi ptr [ %4, %7 ], [ %4, %7 ], [ %4, %7 ], [ %4, %3 ], [ %4, %3 ], [ %4, %3 ], [ %13, %12 ]
  %18 = and i64 %16, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %24, !prof !408

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !257
  %23 = load i64, ptr %22, align 8
  br label %24

24:                                               ; preds = %15, %20
  %25 = phi i64 [ %23, %20 ], [ %16, %15 ]
  %26 = phi ptr [ %22, %20 ], [ %17, %15 ]
  %27 = and i64 %25, 524288
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %30, label %29, !prof !409

29:                                               ; preds = %24
  tail call fastcc void @gimple_set_has_volatile_ops(ptr noundef %1, i8 noundef zeroext 1) #21
  br label %30

30:                                               ; preds = %29, %24
  %31 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %26) #22
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33, !prof !410

33:                                               ; preds = %30
  %34 = and i32 %2, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36, !prof !411

36:                                               ; preds = %33
  tail call fastcc void @append_def(ptr noundef nonnull %0) #21
  br label %39

37:                                               ; preds = %33
  tail call fastcc void @append_use(ptr noundef nonnull %0) #21
  br label %39

38:                                               ; preds = %30
  tail call fastcc void @add_virtual_operand(ptr noundef %1, i32 noundef %2) #21
  br label %39

39:                                               ; preds = %36, %37, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_indirect_ref_operands(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !412 !PGOFuncName !413 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 524288
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7, !prof !414

7:                                                ; preds = %3
  tail call fastcc void @gimple_set_has_volatile_ops(ptr noundef %0, i8 noundef zeroext 1) #21
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  tail call fastcc void @add_virtual_operand(ptr noundef %0, i32 noundef %2) #21
  %10 = and i32 %2, 2
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %10) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_tmr_operands(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !415 !PGOFuncName !416 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 524288
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7, !prof !417

7:                                                ; preds = %3
  tail call fastcc void @gimple_set_has_volatile_ops(ptr noundef %0, i8 noundef zeroext 1) #21
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %11 = and i32 %2, 2
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %11) #21
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %11) #21
  %13 = load ptr, ptr %9, align 8, !tbaa !257
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !418

15:                                               ; preds = %8
  tail call fastcc void @mark_address_taken(ptr noundef nonnull %13) #21
  br label %16

16:                                               ; preds = %15, %8
  tail call fastcc void @add_virtual_operand(ptr noundef %0, i32 noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_constructor_elt_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !275 !PGOFuncName !419 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !420
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !231
  ret i32 %13
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @append_def(ptr noundef %0) unnamed_addr #2 !prof !422 !PGOFuncName !423 {
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull @build_defs, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @append_use(ptr noundef %0) unnamed_addr #2 !prof !424 !PGOFuncName !425 {
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull @build_uses, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !426 !PGOFuncName !427 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !231
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #2 !prof !428 !PGOFuncName !429 {
  %2 = load ptr, ptr %0, align 8, !tbaa !231
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !430

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #22
  store ptr %6, ptr %0, align 8, !tbaa !231
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !426 !PGOFuncName !431 {
  %3 = load i32, ptr %0, align 8, !tbaa !330
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !330
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #1 !prof !428 !PGOFuncName !432 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !433

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !434
  %6 = load i32, ptr %0, align 8, !tbaa !330
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_ssa_defs(ptr noundef %0) unnamed_addr #2 !prof !284 !PGOFuncName !435 {
  %2 = alloca %struct.def_optype_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  %3 = load ptr, ptr @build_defs, align 8
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #21
  %5 = icmp eq ptr %0, null
  br i1 %5, label %11, label %6, !prof !286

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %0) #21, !range !301
  %8 = icmp ne i32 %7, 6
  %9 = icmp ult i32 %4, 2
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %14, label %13, !prof !436

11:                                               ; preds = %1
  %12 = icmp ult i32 %4, 2
  br i1 %12, label %14, label %13, !prof !437

13:                                               ; preds = %6, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 419, ptr noundef nonnull @.str.1) #22
  br label %14

14:                                               ; preds = %6, %11, %13
  %15 = load ptr, ptr @build_vdef, align 8, !tbaa !231
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !438

17:                                               ; preds = %14
  store ptr null, ptr %2, align 8, !tbaa !276
  %18 = tail call fastcc ptr @gimple_def_ops(ptr noundef %0) #21
  br label %39

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22, !prof !439

22:                                               ; preds = %19
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %29, !prof !440

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !257
  br label %29

29:                                               ; preds = %26, %22, %19
  %30 = phi ptr [ %28, %26 ], [ %20, %22 ], [ null, %19 ]
  %31 = icmp eq ptr %30, %15
  br i1 %31, label %33, label %32, !prof !441

32:                                               ; preds = %29
  tail call fastcc void @gimple_set_vdef(ptr noundef %0, ptr noundef nonnull %15) #21
  br label %33

33:                                               ; preds = %29, %32
  %34 = tail call fastcc ptr @gimple_vdef_ptr(ptr noundef %0) #21
  tail call fastcc void @VEC_tree_heap_safe_insert(ptr noundef nonnull @build_defs, ptr noundef %34) #21
  %35 = add i32 %4, 1
  %36 = load ptr, ptr @build_vdef, align 8, !tbaa !231
  store ptr null, ptr %2, align 8, !tbaa !276
  %37 = tail call fastcc ptr @gimple_def_ops(ptr noundef %0) #21
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %51, !prof !442

39:                                               ; preds = %17, %33
  %40 = phi ptr [ %18, %17 ], [ %37, %33 ]
  %41 = phi i32 [ %4, %17 ], [ %35, %33 ]
  %42 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44, !prof !443

44:                                               ; preds = %39
  %45 = load i64, ptr %42, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 141
  br i1 %47, label %48, label %50, !prof !444

48:                                               ; preds = %44
  tail call void @unlink_stmt_vdef(ptr noundef %0) #21
  %49 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #21
  tail call void @release_ssa_name(ptr noundef %49) #22
  br label %50

50:                                               ; preds = %48, %44
  tail call fastcc void @gimple_set_vdef(ptr noundef %0, ptr noundef null) #21
  br label %51

51:                                               ; preds = %50, %39, %33
  %52 = phi ptr [ %40, %50 ], [ %40, %39 ], [ %37, %33 ]
  %53 = phi i32 [ %41, %50 ], [ %41, %39 ], [ %35, %33 ]
  %54 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56, !prof !438

56:                                               ; preds = %51
  %57 = load i64, ptr %54, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 141
  br i1 %59, label %61, label %60, !prof !445

60:                                               ; preds = %56
  tail call void @mark_sym_for_renaming(ptr noundef nonnull %54) #22
  br label %61

61:                                               ; preds = %60, %56, %51
  %62 = icmp eq ptr %52, null
  br i1 %62, label %82, label %63, !prof !446

63:                                               ; preds = %61
  %64 = load ptr, ptr %52, align 8, !tbaa !276
  %65 = icmp eq ptr %64, null
  %66 = icmp eq i32 %53, 1
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %74, !prof !447

68:                                               ; preds = %63
  %69 = load ptr, ptr @build_defs, align 8
  %70 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %69, i32 noundef 0) #21
  %71 = getelementptr inbounds %struct.def_optype_d, ptr %52, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !448
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %94, label %74, !prof !449

74:                                               ; preds = %63, %68
  %75 = load ptr, ptr @cfun, align 8, !tbaa !231
  %76 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %75) #21
  %77 = getelementptr inbounds %struct.ssa_operands, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !258
  store ptr %78, ptr %52, align 8, !tbaa !276
  %79 = load ptr, ptr @cfun, align 8, !tbaa !231
  %80 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %79) #21
  %81 = getelementptr inbounds %struct.ssa_operands, ptr %80, i64 0, i32 4
  store ptr %52, ptr %81, align 8, !tbaa !258
  br label %82

82:                                               ; preds = %61, %74
  %83 = icmp eq i32 %53, 0
  br i1 %83, label %92, label %84, !prof !450

84:                                               ; preds = %82, %84
  %85 = phi ptr [ %89, %84 ], [ %2, %82 ]
  %86 = phi i32 [ %90, %84 ], [ 0, %82 ]
  %87 = load ptr, ptr @build_defs, align 8
  %88 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %87, i32 noundef %86) #21
  %89 = call fastcc ptr @add_def_op(ptr noundef %88, ptr noundef %85) #21
  %90 = add nuw i32 %86, 1
  %91 = icmp eq i32 %90, %53
  br i1 %91, label %92, label %84, !prof !451, !llvm.loop !452

92:                                               ; preds = %84, %82
  %93 = load ptr, ptr %2, align 8, !tbaa !276
  tail call fastcc void @gimple_set_def_ops(ptr noundef %0, ptr noundef %93) #21
  br label %94

94:                                               ; preds = %68, %92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_ssa_uses(ptr noundef %0) unnamed_addr #2 !prof !284 !PGOFuncName !453 {
  %2 = alloca %struct.use_optype_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #23
  %3 = load ptr, ptr @build_vuse, align 8, !tbaa !231
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !454

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !tbaa !279
  %6 = tail call fastcc ptr @gimple_use_ops(ptr noundef %0) #21
  br label %26

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !455

10:                                               ; preds = %7
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %17, !prof !456

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !257
  br label %17

17:                                               ; preds = %7, %10, %14
  %18 = phi ptr [ %16, %14 ], [ %8, %10 ], [ null, %7 ]
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %21, label %20, !prof !457

20:                                               ; preds = %17
  tail call fastcc void @gimple_set_vuse(ptr noundef %0, ptr noundef null) #21
  br label %21

21:                                               ; preds = %17, %20
  %22 = tail call fastcc ptr @gimple_vuse_ptr(ptr noundef %0) #21
  tail call fastcc void @VEC_tree_heap_safe_insert(ptr noundef nonnull @build_uses, ptr noundef %22) #21
  %23 = load ptr, ptr @build_vuse, align 8, !tbaa !231
  store ptr null, ptr %2, align 8, !tbaa !279
  %24 = tail call fastcc ptr @gimple_use_ops(ptr noundef %0) #21
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %31, !prof !442

26:                                               ; preds = %5, %21
  %27 = phi ptr [ %6, %5 ], [ %24, %21 ]
  %28 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !458

30:                                               ; preds = %26
  tail call fastcc void @gimple_set_vuse(ptr noundef %0, ptr noundef null) #21
  br label %31

31:                                               ; preds = %30, %26, %21
  %32 = phi ptr [ %27, %30 ], [ %27, %26 ], [ %24, %21 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34, !prof !459

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %37, %34 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.use_optype_d, ptr %35, i64 0, i32 1
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %36) #21
  %37 = load ptr, ptr %35, align 8, !tbaa !279
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %34, !prof !460, !llvm.loop !461

39:                                               ; preds = %34
  %40 = load ptr, ptr @cfun, align 8, !tbaa !231
  %41 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %40) #21
  %42 = getelementptr inbounds %struct.ssa_operands, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !259
  store ptr %43, ptr %32, align 8, !tbaa !279
  %44 = load ptr, ptr @cfun, align 8, !tbaa !231
  %45 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %44) #21
  %46 = getelementptr inbounds %struct.ssa_operands, ptr %45, i64 0, i32 5
  store ptr %32, ptr %46, align 8, !tbaa !259
  br label %47

47:                                               ; preds = %39, %31
  %48 = load ptr, ptr @build_vuse, align 8, !tbaa !231
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50, !prof !454

50:                                               ; preds = %47
  %51 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #21
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %58, !prof !455

53:                                               ; preds = %50
  %54 = load ptr, ptr @cfun, align 8, !tbaa !231
  %55 = tail call fastcc ptr @gimple_vop(ptr noundef %54) #21
  tail call fastcc void @gimple_set_vuse(ptr noundef %0, ptr noundef %55) #21
  %56 = load ptr, ptr @cfun, align 8, !tbaa !231
  %57 = tail call fastcc ptr @gimple_vop(ptr noundef %56) #21
  tail call void @mark_sym_for_renaming(ptr noundef %57) #22
  br label %58

58:                                               ; preds = %53, %50, %47
  %59 = load ptr, ptr @build_uses, align 8
  %60 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %59) #21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62, !prof !462

62:                                               ; preds = %58, %62
  %63 = phi ptr [ %69, %62 ], [ %59, %58 ]
  %64 = phi ptr [ %67, %62 ], [ %2, %58 ]
  %65 = phi i32 [ %68, %62 ], [ 0, %58 ]
  %66 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %63, i32 noundef %65) #21
  %67 = call fastcc ptr @add_use_op(ptr noundef %0, ptr noundef %66, ptr noundef %64) #21
  %68 = add nuw i32 %65, 1
  %69 = load ptr, ptr @build_uses, align 8
  %70 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %69) #21
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %62, label %72, !prof !463, !llvm.loop !464

72:                                               ; preds = %62, %58
  %73 = load ptr, ptr %2, align 8, !tbaa !279
  tail call fastcc void @gimple_set_use_ops(ptr noundef %0, ptr noundef %73) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @cleanup_build_arrays() unnamed_addr #13 !prof !284 !PGOFuncName !465 {
  store ptr null, ptr @build_vdef, align 8, !tbaa !231
  store ptr null, ptr @build_vuse, align 8, !tbaa !231
  %1 = load ptr, ptr @build_defs, align 8
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %1) #21
  %2 = load ptr, ptr @build_uses, align 8
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !466 !PGOFuncName !467 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !283
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !468

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_insert(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !469 !PGOFuncName !470 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !231
  tail call fastcc void @VEC_tree_base_quick_insert(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef_ptr(ptr noundef readonly %0) unnamed_addr #1 !prof !471 !PGOFuncName !472 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !283
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %5 = select i1 %3, ptr null, ptr %4, !prof !473
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unlink_stmt_vdef(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !474 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #23
  %3 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5, !prof !475

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %34, !prof !476

9:                                                ; preds = %5
  call fastcc void @first_imm_use_stmt(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %10 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #21, !range !283
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %25, !prof !477

12:                                               ; preds = %9, %22
  %13 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %2) #21
  %14 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #21, !range !283
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22, !prof !478

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %19, %16 ], [ %13, %12 ]
  %18 = call fastcc ptr @gimple_vuse(ptr noundef %0) #21
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %17, ptr noundef %18) #21
  %19 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %2) #21
  %20 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #21, !range !283
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %16, label %22, !prof !479, !llvm.loop !480

22:                                               ; preds = %16, %12
  call fastcc void @next_imm_use_stmt(ptr noundef nonnull %2) #21
  %23 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #21, !range !283
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %12, label %25, !prof !481, !llvm.loop !482

25:                                               ; preds = %22, %9
  %26 = call fastcc ptr @gimple_vdef(ptr noundef %0) #21
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 4194304
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30, !prof !483

30:                                               ; preds = %25
  %31 = call fastcc ptr @gimple_vuse(ptr noundef %0) #21
  %32 = load i64, ptr %31, align 8
  %33 = or i64 %32, 4194304
  store i64 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %25, %30, %1, %5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare void @release_ssa_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !484 !PGOFuncName !485 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !231
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @add_def_op(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 !prof !486 !PGOFuncName !487 {
  %3 = tail call fastcc ptr @alloc_def() #21
  %4 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !448
  store ptr %3, ptr %1, align 8, !tbaa !276
  store ptr null, ptr %3, align 8, !tbaa !276
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_insert(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !469 !PGOFuncName !488 {
  %3 = load i32, ptr %0, align 8, !tbaa !330
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 1
  %6 = add i32 %3, 1
  store i32 %6, ptr %0, align 8, !tbaa !330
  %7 = zext i32 %3 to i64
  %8 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %4, i64 %8, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_def() unnamed_addr #2 !prof !486 !PGOFuncName !489 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !231
  %2 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %1) #21
  %3 = getelementptr inbounds %struct.ssa_operands, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !258
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !490

6:                                                ; preds = %0
  %7 = load ptr, ptr %4, align 8, !tbaa !276
  store ptr %7, ptr %3, align 8, !tbaa !258
  br label %10

8:                                                ; preds = %0
  %9 = tail call fastcc ptr @ssa_operand_alloc(i32 noundef 16) #21
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %4, %6 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @ssa_operand_alloc(i32 noundef %0) unnamed_addr #2 !prof !491 !PGOFuncName !492 {
  switch i32 %0, label %2 [
    i32 40, label %3
    i32 16, label %3
  ]

2:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 299, ptr noundef nonnull @.str.1) #22
  br label %3

3:                                                ; preds = %1, %1, %2
  %4 = load ptr, ptr @cfun, align 8, !tbaa !231
  %5 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.ssa_operands, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !250
  %8 = add i32 %7, %0
  %9 = getelementptr inbounds %struct.ssa_operands, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !249
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %34, label %12, !prof !493

12:                                               ; preds = %3
  switch i32 %10, label %16 [
    i32 0, label %13
    i32 1016, label %14
    i32 4088, label %15
    i32 16376, label %15
  ], !prof !494

13:                                               ; preds = %12
  store i32 1016, ptr %9, align 4, !tbaa !249
  br label %18

14:                                               ; preds = %12
  store i32 4088, ptr %9, align 4, !tbaa !249
  br label %18

15:                                               ; preds = %12, %12
  store i32 16376, ptr %9, align 4, !tbaa !249
  br label %18

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 319, ptr noundef nonnull @.str.1) #22
  %17 = load ptr, ptr @cfun, align 8, !tbaa !231
  br label %18

18:                                               ; preds = %16, %15, %14, %13
  %19 = phi ptr [ %17, %16 ], [ %4, %15 ], [ %4, %14 ], [ %4, %13 ]
  %20 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %19) #21
  %21 = getelementptr inbounds %struct.ssa_operands, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !249
  %23 = zext i32 %22 to i64
  %24 = add nuw nsw i64 %23, 8
  %25 = tail call ptr @ggc_alloc_stat(i64 noundef %24) #22
  %26 = load ptr, ptr @cfun, align 8, !tbaa !231
  %27 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %26) #21
  %28 = load ptr, ptr %27, align 8, !tbaa !247
  store ptr %28, ptr %25, align 8, !tbaa !261
  %29 = load ptr, ptr @cfun, align 8, !tbaa !231
  %30 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %29) #21
  store ptr %25, ptr %30, align 8, !tbaa !247
  %31 = load ptr, ptr @cfun, align 8, !tbaa !231
  %32 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %31) #21
  %33 = getelementptr inbounds %struct.ssa_operands, ptr %32, i64 0, i32 1
  store i32 0, ptr %33, align 8, !tbaa !250
  br label %34

34:                                               ; preds = %18, %3
  %35 = phi ptr [ %31, %18 ], [ %4, %3 ]
  %36 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %35) #21
  %37 = load ptr, ptr %36, align 8, !tbaa !247
  %38 = getelementptr inbounds %struct.ssa_operands, ptr %36, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !250
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ssa_operand_memory_d, ptr %37, i64 0, i32 1, i64 %40
  %42 = add i32 %39, %0
  store i32 %42, ptr %38, align 8, !tbaa !250
  ret ptr %41
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !495 !PGOFuncName !496 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !283
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !497

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse_ptr(ptr noundef readonly %0) unnamed_addr #1 !prof !498 !PGOFuncName !499 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !283
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %5 = select i1 %3, ptr null, ptr %4, !prof !500
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @add_use_op(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !501 !PGOFuncName !502 {
  %4 = tail call fastcc ptr @alloc_use() #21
  %5 = getelementptr inbounds %struct.use_optype_d, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %4, i64 0, i32 1, i32 3
  store ptr %1, ptr %6, align 8, !tbaa !503
  %7 = load ptr, ptr %1, align 8, !tbaa !231
  tail call fastcc void @link_imm_use_stmt(ptr noundef nonnull %5, ptr noundef %7, ptr noundef %0) #21
  store ptr %4, ptr %2, align 8, !tbaa !279
  store ptr null, ptr %4, align 8, !tbaa !279
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_use() unnamed_addr #2 !prof !501 !PGOFuncName !504 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !231
  %2 = tail call fastcc ptr @gimple_ssa_operands(ptr noundef %1) #21
  %3 = getelementptr inbounds %struct.ssa_operands, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !259
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !505

6:                                                ; preds = %0
  %7 = load ptr, ptr %4, align 8, !tbaa !279
  store ptr %7, ptr %3, align 8, !tbaa !259
  br label %10

8:                                                ; preds = %0
  %9 = tail call fastcc ptr @ssa_operand_alloc(i32 noundef 40) #21
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %4, %6 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #15 !prof !501 !PGOFuncName !506 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1, !prof !507
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %5) #21
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !508 !PGOFuncName !509 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !510

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !511

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !295
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #21
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !512 !PGOFuncName !513 {
  store ptr %1, ptr %0, align 8, !tbaa !295
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !297
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !297
  store ptr %0, ptr %4, align 8, !tbaa !295
  store ptr %0, ptr %3, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0) unnamed_addr #16 !prof !514 !PGOFuncName !515 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !516

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !330
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @swap_tree_operands(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #17 !prof !517 {
  %4 = load ptr, ptr %1, align 8, !tbaa !231
  %5 = load ptr, ptr %2, align 8, !tbaa !231
  %6 = tail call zeroext i8 @ssa_operands_active() #21, !range !283
  %7 = icmp eq i8 %6, 0
  %8 = icmp eq ptr %4, %5
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %37, label %10, !prof !518

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @gimple_use_ops(ptr noundef %0) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13, !prof !519

13:                                               ; preds = %10, %18
  %14 = phi ptr [ %19, %18 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.use_optype_d, ptr %14, i64 0, i32 1, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !503
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %21, label %18, !prof !520

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !279
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !prof !521, !llvm.loop !522

21:                                               ; preds = %18, %13
  %22 = phi ptr [ null, %18 ], [ %14, %13 ]
  br i1 %12, label %37, label %23, !prof !442

23:                                               ; preds = %21, %28
  %24 = phi ptr [ %29, %28 ], [ %11, %21 ]
  %25 = getelementptr inbounds %struct.use_optype_d, ptr %24, i64 0, i32 1, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !503
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %31, label %28, !prof !523

28:                                               ; preds = %23
  %29 = load ptr, ptr %24, align 8, !tbaa !279
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %23, !prof !524, !llvm.loop !525

31:                                               ; preds = %23
  %32 = icmp eq ptr %22, null
  br i1 %32, label %37, label %33, !prof !526

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.use_optype_d, ptr %24, i64 0, i32 1, i32 3
  %35 = getelementptr inbounds %struct.use_optype_d, ptr %22, i64 0, i32 1, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !503
  store ptr %36, ptr %34, align 8, !tbaa !503
  store ptr %2, ptr %35, align 8, !tbaa !503
  br label %37

37:                                               ; preds = %28, %10, %21, %31, %33, %3
  store ptr %5, ptr %1, align 8, !tbaa !231
  store ptr %4, ptr %2, align 8, !tbaa !231
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @verify_imm_links(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 !prof !275 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !527
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1198, ptr noundef nonnull @.str.1) #22
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !295
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !297
  br i1 %15, label %18, label %21

18:                                               ; preds = %13
  %19 = icmp eq ptr %17, null
  br i1 %19, label %73, label %20

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1202, ptr noundef nonnull @.str.1) #22
  br label %73

21:                                               ; preds = %13, %36
  %22 = phi ptr [ %38, %36 ], [ %17, %13 ]
  %23 = phi ptr [ %22, %36 ], [ %8, %13 ]
  %24 = phi i32 [ %39, %36 ], [ 0, %13 ]
  %25 = icmp eq ptr %22, %8
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 8, !tbaa !295
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %22, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !527
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !231
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %22, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !297
  %39 = add nuw nsw i32 %24, 1
  %40 = icmp eq i32 %39, 50000002
  br i1 %40, label %56, label %21, !llvm.loop !528

41:                                               ; preds = %21, %50
  %42 = phi ptr [ %51, %50 ], [ %14, %21 ]
  %43 = phi ptr [ %42, %50 ], [ %8, %21 ]
  %44 = phi i32 [ %52, %50 ], [ %24, %21 ]
  %45 = icmp eq ptr %42, %8
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %42, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !297
  %49 = icmp eq ptr %43, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load ptr, ptr %42, align 8, !tbaa !295
  %52 = add nsw i32 %44, -1
  %53 = icmp slt i32 %44, 0
  br i1 %53, label %56, label %41, !llvm.loop !529

54:                                               ; preds = %41
  %55 = icmp eq i32 %44, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %36, %33, %29, %26, %50, %46, %54
  %57 = phi ptr [ %8, %54 ], [ %51, %50 ], [ %42, %46 ], [ %38, %36 ], [ %22, %33 ], [ %22, %29 ], [ %22, %26 ]
  %58 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !257
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef nonnull %59) #21, !range !283
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %59) #21
  %66 = load ptr, ptr %58, align 8, !tbaa !257
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %66, i32 noundef 0, i32 noundef 2) #22
  br label %67

67:                                               ; preds = %64, %61, %56
  %68 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %57, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !527
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %57, ptr noundef %69) #21
  %71 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %57) #21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %71, i32 noundef 2) #22
  %72 = tail call i32 @fputc(i32 10, ptr %0)
  br label %73

73:                                               ; preds = %54, %20, %18, %67
  %74 = phi i8 [ 1, %67 ], [ 0, %18 ], [ 0, %20 ], [ 0, %54 ]
  ret i8 %74
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !530 !PGOFuncName !531 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !527
  %4 = load ptr, ptr %3, align 8, !tbaa !231
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_immediate_uses_for(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !275 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #23
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1266, ptr noundef nonnull @.str.1) #22
  br label %10

10:                                               ; preds = %5, %9
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 2) #22
  %11 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 6, i64 1, ptr %0)
  %12 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef %1) #21
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 10, i64 1, ptr %0)
  br label %24

16:                                               ; preds = %10
  %17 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %1) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 13, i64 1, ptr %0)
  br label %24

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @num_imm_uses(ptr noundef %1) #21
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %22) #21
  br label %24

24:                                               ; preds = %19, %21, %14
  %25 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %1) #21
  %26 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #21, !range !283
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24, %46
  %29 = phi ptr [ %47, %46 ], [ %25, %24 ]
  %30 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !257
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %29, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !527
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 34, i64 1, ptr %0)
  br label %46

39:                                               ; preds = %33, %28
  %40 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %29) #21
  %41 = tail call zeroext i8 @is_gimple_reg(ptr noundef %40) #22
  %42 = icmp eq i8 %41, 0
  %43 = load ptr, ptr %30, align 8, !tbaa !257
  br i1 %42, label %44, label %45

44:                                               ; preds = %39
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %43, i32 noundef 0, i32 noundef 16448) #22
  br label %46

45:                                               ; preds = %39
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %43, i32 noundef 0, i32 noundef 2) #22
  br label %46

46:                                               ; preds = %37, %45, %44
  %47 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #21
  %48 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #21, !range !283
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %28, label %50, !llvm.loop !532

50:                                               ; preds = %46, %24
  %51 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #2 !prof !275 !PGOFuncName !533 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !297
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !245
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #22
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #2 !prof !275 !PGOFuncName !534 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !297
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !297
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !257
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #21, !range !283
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !245
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #22
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @num_imm_uses(ptr noundef readonly %0) unnamed_addr #18 !prof !275 !PGOFuncName !535 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !245
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !297
  %7 = icmp eq ptr %6, %2
  br i1 %4, label %8, label %16

8:                                                ; preds = %1
  br i1 %7, label %29, label %9

9:                                                ; preds = %8, %9
  %10 = phi ptr [ %14, %9 ], [ %6, %8 ]
  %11 = phi i32 [ %12, %9 ], [ 0, %8 ]
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !297
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %29, label %9, !llvm.loop !536

16:                                               ; preds = %1
  br i1 %7, label %29, label %17

17:                                               ; preds = %16, %17
  %18 = phi ptr [ %27, %17 ], [ %6, %16 ]
  %19 = phi i32 [ %25, %17 ], [ 0, %16 ]
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !257
  %22 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %21) #21, !range !283
  %23 = xor i8 %22, 1
  %24 = zext nneg i8 %23 to i32
  %25 = add i32 %19, %24
  %26 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %18, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !297
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %17, !llvm.loop !537

29:                                               ; preds = %17, %9, %16, %8
  %30 = phi i32 [ 0, %8 ], [ 0, %16 ], [ %12, %9 ], [ %25, %17 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #10 !prof !275 !PGOFuncName !538 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !539
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !297
  store ptr %6, ptr %0, align 8, !tbaa !541
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #21, !range !283
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !275 !PGOFuncName !542 {
  %2 = load ptr, ptr %0, align 8, !tbaa !541
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !539
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #19 !prof !275 !PGOFuncName !543 {
  %2 = load ptr, ptr %0, align 8, !tbaa !541
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !297
  store ptr %4, ptr %0, align 8, !tbaa !541
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #21, !range !283
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_immediate_uses(ptr noundef %0) local_unnamed_addr #2 !prof !275 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 18, i64 1, ptr %0)
  %3 = load ptr, ptr @cfun, align 8, !tbaa !231
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !236
  %6 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !544
  %8 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %7) #21
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %1, %18
  %11 = phi ptr [ %19, %18 ], [ %3, %1 ]
  %12 = phi ptr [ %24, %18 ], [ %7, %1 ]
  %13 = phi i32 [ %20, %18 ], [ 1, %1 ]
  %14 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %12, i32 noundef %13) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  tail call void @dump_immediate_uses_for(ptr noundef %0, ptr noundef nonnull %14) #21
  %17 = load ptr, ptr @cfun, align 8, !tbaa !231
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi ptr [ %11, %10 ], [ %17, %16 ]
  %20 = add nuw i32 %13, 1
  %21 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !236
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !544
  %25 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %24) #21
  %26 = icmp ult i32 %20, %25
  br i1 %26, label %10, label %27, !llvm.loop !545

27:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_immediate_uses() local_unnamed_addr #2 !prof !275 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !231
  tail call void @dump_immediate_uses(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_immediate_uses_for(ptr noundef %0) local_unnamed_addr #2 !prof !275 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !231
  tail call void @dump_immediate_uses_for(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !546 !PGOFuncName !547 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !539
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !297
  store ptr %6, ptr %0, align 8, !tbaa !541
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #21, !range !283
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !548

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #21
  br label %11

11:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !549 !PGOFuncName !550 {
  %2 = load ptr, ptr %0, align 8, !tbaa !541
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !539
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #19 !prof !551 !PGOFuncName !552 {
  %2 = load ptr, ptr %0, align 8, !tbaa !541
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !297
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !553
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #1 !prof !554 !PGOFuncName !555 {
  %2 = load ptr, ptr %0, align 8, !tbaa !541
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !556 !PGOFuncName !557 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !527
  store ptr %1, ptr %4, align 8, !tbaa !231
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #19 !prof !556 !PGOFuncName !558 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !553
  store ptr %3, ptr %0, align 8, !tbaa !541
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #21, !range !283
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !559

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !297
  store ptr %8, ptr %2, align 8, !tbaa !553
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @next_imm_use_stmt(ptr noundef %0) unnamed_addr #2 !prof !551 !PGOFuncName !560 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !561
  store ptr %4, ptr %0, align 8, !tbaa !541
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #21, !range !283
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !562

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !563
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !564

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #21
  br label %12

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #21
  br label %12

12:                                               ; preds = %7, %10, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !551 !PGOFuncName !565 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !257
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #23
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #22
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #21, !range !301
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !566

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #21
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !567

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #21
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !568

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #21
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !569, !llvm.loop !570

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !571

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #21
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #21
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #21
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !572

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #21
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !prof !573

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #21
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53, !prof !571

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #21
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !563
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !574

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #21
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !575 !PGOFuncName !576 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #21
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #21
  store i8 0, ptr %0, align 8, !tbaa !577
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !579

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 918, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #22
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !579

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !577
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !580
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #21
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !581
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !582
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #21
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !583 !PGOFuncName !584 {
  %2 = load i8, ptr %0, align 8, !tbaa !577
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #9 !prof !556 !PGOFuncName !585 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !586

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !297
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !587

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #21
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #21
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #2 !prof !583 !PGOFuncName !588 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !589
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !590

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !279
  store ptr %7, ptr %2, align 8, !tbaa !589
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !591
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !581
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !592

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !580
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !591
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #21
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !577
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !prof !275 !PGOFuncName !593 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 771, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !582
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #0 !prof !594 !PGOFuncName !595 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !283
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4, !prof !573

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !573

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !503
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null, !prof !571
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !575 !PGOFuncName !596 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !257
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #16 !prof !575 !PGOFuncName !597 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !577
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !575 !PGOFuncName !598 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !257
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !599 !PGOFuncName !600 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !599 !PGOFuncName !601 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !257
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !602

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !prof !275 !PGOFuncName !603 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 747, ptr noundef nonnull @.str.1) #22
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !604
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #21
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !604
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !276
  store ptr %22, ptr %16, align 8, !tbaa !604
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !589
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #21
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !589
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !279
  store ptr %36, ptr %29, align 8, !tbaa !589
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !577
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!229}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!36 = !{ptr @ssa_operands_active, ptr @gimple_ssa_operands, i64 6060703}
!37 = !{ptr @init_ssa_operands, ptr @VEC_tree_heap_alloc, i64 4}
!38 = !{ptr @init_ssa_operands, ptr @bitmap_obstack_initialize, i64 2}
!39 = !{ptr @init_ssa_operands, ptr @gimple_ssa_operands, i64 43100}
!40 = !{ptr @init_ssa_operands, ptr @fancy_abort, i64 1}
!41 = !{ptr @init_ssa_operands, ptr @create_vop_var, i64 10775}
!42 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 2}
!43 = !{ptr @create_vop_var, ptr @fancy_abort, i64 1}
!44 = !{ptr @create_vop_var, ptr @get_identifier, i64 10775}
!45 = !{ptr @create_vop_var, ptr @build_decl_stat, i64 10775}
!46 = !{ptr @create_vop_var, ptr @create_var_ann, i64 10775}
!47 = !{ptr @create_vop_var, ptr @add_referenced_var, i64 10775}
!48 = !{ptr @fini_ssa_operands, ptr @VEC_tree_heap_free, i64 4}
!49 = !{ptr @fini_ssa_operands, ptr @gimple_ssa_operands, i64 62712}
!50 = !{ptr @fini_ssa_operands, ptr @ggc_free, i64 30387}
!51 = !{ptr @fini_ssa_operands, ptr @bitmap_obstack_release, i64 2}
!52 = !{ptr @VEC_tree_heap_free, ptr @free, i64 2}
!53 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 3462603}
!54 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 3463527}
!55 = !{ptr @gimple_set_def_ops, ptr @gimple_has_ops, i64 2065290}
!56 = !{ptr @gimple_set_def_ops, ptr @fancy_abort, i64 1}
!57 = !{ptr @gimple_set_use_ops, ptr @gimple_has_ops, i64 3462603}
!58 = !{ptr @gimple_set_use_ops, ptr @fancy_abort, i64 1}
!59 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 20502370}
!60 = !{ptr @gimple_set_vuse, ptr @gimple_has_mem_ops, i64 1368703}
!61 = !{ptr @gimple_set_vuse, ptr @fancy_abort, i64 1}
!62 = !{ptr @gimple_set_vdef, ptr @gimple_has_mem_ops, i64 220929}
!63 = !{ptr @gimple_set_vdef, ptr @fancy_abort, i64 1}
!64 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 25371480}
!65 = !{ptr @update_stmt_operands, ptr @ssa_operands_active, i64 4032415}
!66 = !{ptr @update_stmt_operands, ptr @timevar_push_1, i64 1}
!67 = !{ptr @update_stmt_operands, ptr @gimple_modified_p, i64 3462602}
!68 = !{ptr @update_stmt_operands, ptr @fancy_abort, i64 1}
!69 = !{ptr @update_stmt_operands, ptr @build_ssa_operands, i64 3462602}
!70 = !{ptr @update_stmt_operands, ptr @gimple_set_modified, i64 3462602}
!71 = !{ptr @update_stmt_operands, ptr @timevar_pop_1, i64 1}
!72 = !{ptr @gimple_modified_p, ptr @gimple_has_ops, i64 3462603}
!73 = !{ptr @build_ssa_operands, ptr @gimple_set_has_volatile_ops, i64 3462603}
!74 = !{ptr @build_ssa_operands, ptr @start_ssa_stmt_operands, i64 3462603}
!75 = !{ptr @build_ssa_operands, ptr @parse_ssa_operands, i64 3462603}
!76 = !{ptr @build_ssa_operands, ptr @finalize_ssa_stmt_operands, i64 3462603}
!77 = !{ptr @gimple_set_has_volatile_ops, ptr @gimple_has_mem_ops, i64 3462612}
!78 = !{ptr @start_ssa_stmt_operands, ptr @VEC_tree_base_length, i64 6925206}
!79 = !{ptr @start_ssa_stmt_operands, ptr @fancy_abort, i64 4}
!80 = !{ptr @parse_ssa_operands, ptr @gimple_code, i64 3462603}
!81 = !{ptr @parse_ssa_operands, ptr @get_asm_expr_operands, i64 1}
!82 = !{ptr @parse_ssa_operands, ptr @is_gimple_debug, i64 3462602}
!83 = !{ptr @parse_ssa_operands, ptr @gimple_debug_bind_p, i64 1}
!84 = !{ptr @parse_ssa_operands, ptr @gimple_debug_bind_has_value_p, i64 1}
!85 = !{ptr @parse_ssa_operands, ptr @gimple_op_ptr, i64 8924386}
!86 = !{ptr @parse_ssa_operands, ptr @get_expr_operands, i64 8924386}
!87 = !{ptr @parse_ssa_operands, ptr @gimple_num_ops, i64 10078586}
!88 = !{ptr @parse_ssa_operands, ptr @maybe_add_call_vops, i64 395956}
!89 = !{ptr @finalize_ssa_stmt_operands, ptr @finalize_ssa_defs, i64 3462603}
!90 = !{ptr @finalize_ssa_stmt_operands, ptr @finalize_ssa_uses, i64 3462603}
!91 = !{ptr @finalize_ssa_stmt_operands, ptr @cleanup_build_arrays, i64 3462603}
!92 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 17919454}
!93 = !{ptr @get_expr_operands, ptr @is_gimple_debug, i64 18690021}
!94 = !{ptr @get_expr_operands, ptr @mark_address_taken, i64 764515}
!95 = !{ptr @get_expr_operands, ptr @is_gimple_min_invariant, i64 764516}
!96 = !{ptr @get_expr_operands, ptr @add_stmt_operand, i64 10163436}
!97 = !{ptr @get_expr_operands, ptr @gimple_debug_bind_p, i64 2}
!98 = !{ptr @get_expr_operands, ptr @fancy_abort, i64 2}
!99 = !{ptr @get_expr_operands, ptr @get_expr_operands, i64 4839814}
!100 = !{ptr @get_expr_operands, ptr @get_indirect_ref_operands, i64 1393193}
!101 = !{ptr @get_expr_operands, ptr @get_tmr_operands, i64 18004}
!102 = !{ptr @get_expr_operands, ptr @gimple_set_has_volatile_ops, i64 6}
!103 = !{ptr @get_expr_operands, ptr @VEC_constructor_elt_base_iterate, i64 32}
!104 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 9454854}
!105 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 9454853}
!106 = !{ptr @maybe_add_call_vops, ptr @gimple_call_flags, i64 395955}
!107 = !{ptr @maybe_add_call_vops, ptr @add_virtual_operand, i64 390972}
!108 = !{ptr @mark_address_taken, ptr @get_base_address, i64 504792}
!109 = !{ptr @add_virtual_operand, ptr @is_gimple_debug, i64 1645566}
!110 = !{ptr @add_virtual_operand, ptr @fancy_abort, i64 1}
!111 = !{ptr @add_virtual_operand, ptr @gimple_vop, i64 1645566}
!112 = !{ptr @add_virtual_operand, ptr @append_vdef, i64 568727}
!113 = !{ptr @add_virtual_operand, ptr @append_vuse, i64 1076839}
!114 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 9454854}
!115 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!116 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 9454854}
!117 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 9454854}
!118 = !{ptr @append_vdef, ptr @fancy_abort, i64 2}
!119 = !{ptr @gimple_vop, ptr @fancy_abort, i64 2}
!120 = !{ptr @append_vuse, ptr @fancy_abort, i64 1}
!121 = !{ptr @add_stmt_operand, ptr @fancy_abort, i64 1}
!122 = !{ptr @add_stmt_operand, ptr @gimple_set_has_volatile_ops, i64 10}
!123 = !{ptr @add_stmt_operand, ptr @is_gimple_reg, i64 6692883}
!124 = !{ptr @add_stmt_operand, ptr @append_def, i64 2427353}
!125 = !{ptr @add_stmt_operand, ptr @append_use, i64 3911741}
!126 = !{ptr @add_stmt_operand, ptr @add_virtual_operand, i64 353789}
!127 = !{ptr @get_indirect_ref_operands, ptr @gimple_set_has_volatile_ops, i64 1}
!128 = !{ptr @get_indirect_ref_operands, ptr @add_virtual_operand, i64 917451}
!129 = !{ptr @get_indirect_ref_operands, ptr @get_expr_operands, i64 917451}
!130 = !{ptr @get_tmr_operands, ptr @gimple_set_has_volatile_ops, i64 1}
!131 = !{ptr @get_tmr_operands, ptr @get_expr_operands, i64 23710}
!132 = !{ptr @get_tmr_operands, ptr @mark_address_taken, i64 1340}
!133 = !{ptr @get_tmr_operands, ptr @add_virtual_operand, i64 11855}
!134 = !{ptr @append_def, ptr @VEC_tree_heap_safe_push, i64 2427353}
!135 = !{ptr @append_use, ptr @VEC_tree_heap_safe_push, i64 3911742}
!136 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 6339095}
!137 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 6339095}
!138 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 8547050}
!139 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 2}
!140 = !{ptr @finalize_ssa_defs, ptr @VEC_tree_base_length, i64 3462603}
!141 = !{ptr @finalize_ssa_defs, ptr @gimple_code, i64 3462602}
!142 = !{ptr @finalize_ssa_defs, ptr @fancy_abort, i64 1}
!143 = !{ptr @finalize_ssa_defs, ptr @gimple_def_ops, i64 3462603}
!144 = !{ptr @finalize_ssa_defs, ptr @gimple_vdef, i64 6929741}
!145 = !{ptr @finalize_ssa_defs, ptr @gimple_set_vdef, i64 220930}
!146 = !{ptr @finalize_ssa_defs, ptr @gimple_vdef_ptr, i64 568500}
!147 = !{ptr @finalize_ssa_defs, ptr @VEC_tree_heap_safe_insert, i64 568500}
!148 = !{ptr @finalize_ssa_defs, ptr @unlink_stmt_vdef, i64 4535}
!149 = !{ptr @finalize_ssa_defs, ptr @release_ssa_name, i64 4535}
!150 = !{ptr @finalize_ssa_defs, ptr @mark_sym_for_renaming, i64 459385}
!151 = !{ptr @finalize_ssa_defs, ptr @VEC_tree_base_index, i64 3000782}
!152 = !{ptr @finalize_ssa_defs, ptr @gimple_ssa_operands, i64 198708}
!153 = !{ptr @finalize_ssa_defs, ptr @add_def_op, i64 1598541}
!154 = !{ptr @finalize_ssa_defs, ptr @gimple_set_def_ops, i64 2065293}
!155 = !{ptr @finalize_ssa_uses, ptr @gimple_use_ops, i64 3462603}
!156 = !{ptr @finalize_ssa_uses, ptr @gimple_vuse, i64 5102059}
!157 = !{ptr @finalize_ssa_uses, ptr @gimple_set_vuse, i64 1368704}
!158 = !{ptr @finalize_ssa_uses, ptr @gimple_vuse_ptr, i64 1639456}
!159 = !{ptr @finalize_ssa_uses, ptr @VEC_tree_heap_safe_insert, i64 1639456}
!160 = !{ptr @finalize_ssa_uses, ptr @delink_imm_use, i64 3000647}
!161 = !{ptr @finalize_ssa_uses, ptr @gimple_ssa_operands, i64 3490158}
!162 = !{ptr @finalize_ssa_uses, ptr @gimple_vop, i64 1285268}
!163 = !{ptr @finalize_ssa_uses, ptr @mark_sym_for_renaming, i64 642634}
!164 = !{ptr @finalize_ssa_uses, ptr @VEC_tree_base_length, i64 9013800}
!165 = !{ptr @finalize_ssa_uses, ptr @VEC_tree_base_index, i64 5551197}
!166 = !{ptr @finalize_ssa_uses, ptr @add_use_op, i64 5551197}
!167 = !{ptr @finalize_ssa_uses, ptr @gimple_set_use_ops, i64 3462603}
!168 = !{ptr @cleanup_build_arrays, ptr @VEC_tree_base_truncate, i64 6925206}
!169 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 8076558}
!170 = !{ptr @VEC_tree_heap_safe_insert, ptr @VEC_tree_heap_reserve, i64 2207955}
!171 = !{ptr @VEC_tree_heap_safe_insert, ptr @VEC_tree_base_quick_insert, i64 2207955}
!172 = !{ptr @gimple_vdef_ptr, ptr @gimple_has_mem_ops, i64 568499}
!173 = !{ptr @unlink_stmt_vdef, ptr @gimple_vdef, i64 97396}
!174 = !{ptr @unlink_stmt_vdef, ptr @first_imm_use_stmt, i64 17002}
!175 = !{ptr @unlink_stmt_vdef, ptr @end_imm_use_stmt_p, i64 52169}
!176 = !{ptr @unlink_stmt_vdef, ptr @first_imm_use_on_stmt, i64 35167}
!177 = !{ptr @unlink_stmt_vdef, ptr @end_imm_use_on_stmt_p, i64 71186}
!178 = !{ptr @unlink_stmt_vdef, ptr @gimple_vuse, i64 36020}
!179 = !{ptr @unlink_stmt_vdef, ptr @set_ssa_use_from_ptr, i64 36019}
!180 = !{ptr @unlink_stmt_vdef, ptr @next_imm_use_on_stmt, i64 36019}
!181 = !{ptr @unlink_stmt_vdef, ptr @next_imm_use_stmt, i64 35167}
!182 = !{ptr @add_def_op, ptr @alloc_def, i64 1598539}
!183 = !{ptr @alloc_def, ptr @gimple_ssa_operands, i64 1598539}
!184 = !{ptr @alloc_def, ptr @ssa_operand_alloc, i64 1499197}
!185 = !{ptr @ssa_operand_alloc, ptr @fancy_abort, i64 1768691}
!186 = !{ptr @ssa_operand_alloc, ptr @gimple_ssa_operands, i64 10733700}
!187 = !{ptr @ssa_operand_alloc, ptr @ggc_alloc_stat, i64 30390}
!188 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 5138079}
!189 = !{ptr @gimple_vuse_ptr, ptr @gimple_has_mem_ops, i64 1639456}
!190 = !{ptr @add_use_op, ptr @alloc_use, i64 5551198}
!191 = !{ptr @add_use_op, ptr @link_imm_use_stmt, i64 5551198}
!192 = !{ptr @alloc_use, ptr @gimple_ssa_operands, i64 5551198}
!193 = !{ptr @alloc_use, ptr @ssa_operand_alloc, i64 3806872}
!194 = !{ptr @link_imm_use_stmt, ptr @link_imm_use, i64 5551198}
!195 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 3647313}
!196 = !{ptr @swap_tree_operands, ptr @ssa_operands_active, i64 462}
!197 = !{ptr @swap_tree_operands, ptr @gimple_use_ops, i64 460}
!198 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 17002}
!199 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 15692}
!200 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 36020}
!201 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 36020}
!202 = !{ptr @next_imm_use_on_stmt, ptr @end_imm_use_on_stmt_p, i64 36020}
!203 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 35168}
!204 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 15692}
!205 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 19475}
!206 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 109913}
!207 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 35168}
!208 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 35168}
!209 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 7635}
!210 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 54850}
!211 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 36020}
!212 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 47214}
!213 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 1}
!214 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 27532}
!215 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 19475}
!216 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 35168}
!217 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 7634}
!218 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 7634}
!219 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!220 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 7634}
!221 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 7633}
!222 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 7633}
!223 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 526}
!224 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 526}
!225 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 47202}
!226 = !{ptr @gimple_vuse_op, ptr @gimple_has_mem_ops, i64 27534}
!227 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 47204}
!228 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!229 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!230 = !{!"function_entry_count", i64 7179293}
!231 = !{!232, !232, i64 0}
!232 = !{!"any pointer", !233, i64 0}
!233 = !{!"omnipotent char", !234, i64 0}
!234 = !{!"Simple C/C++ TBAA"}
!235 = !{!"branch_weights", i32 1, i32 7179294}
!236 = !{!237, !232, i64 24}
!237 = !{!"function", !232, i64 0, !232, i64 8, !232, i64 16, !232, i64 24, !232, i64 32, !232, i64 40, !232, i64 48, !232, i64 56, !232, i64 64, !232, i64 72, !232, i64 80, !232, i64 88, !232, i64 96, !238, i64 104, !238, i64 108, !238, i64 112, !238, i64 116, !238, i64 120, !238, i64 124, !232, i64 128, !238, i64 136, !238, i64 137, !238, i64 138, !238, i64 138, !238, i64 138, !238, i64 138, !238, i64 138, !238, i64 138, !238, i64 138, !238, i64 139, !238, i64 139, !238, i64 139, !238, i64 139, !238, i64 139, !238, i64 139, !238, i64 139}
!238 = !{!"int", !233, i64 0}
!239 = !{!"branch_weights", i32 1118589, i32 6060706}
!240 = !{!241, !233, i64 16}
!241 = !{!"ssa_operands", !232, i64 0, !238, i64 8, !238, i64 12, !233, i64 16, !232, i64 24, !232, i64 32}
!242 = !{!"function_entry_count", i64 49331129}
!243 = !{!"tree-ssa-operands.c:gimple_ssa_operands"}
!244 = !{!"function_entry_count", i64 10775}
!245 = !{!238, !238, i64 0}
!246 = !{!"branch_weights", i32 2, i32 10775}
!247 = !{!241, !232, i64 0}
!248 = !{!"branch_weights", i32 10776, i32 1}
!249 = !{!241, !238, i64 12}
!250 = !{!241, !238, i64 8}
!251 = !{!"function_entry_count", i64 2}
!252 = !{!"tree-ssa-operands.c:VEC_tree_heap_alloc"}
!253 = !{!"tree-ssa-operands.c:create_vop_var"}
!254 = !{!255, !232, i64 24}
!255 = !{!"gimple_df", !232, i64 0, !232, i64 8, !232, i64 16, !232, i64 24, !256, i64 32, !256, i64 48, !232, i64 64, !232, i64 72, !232, i64 80, !232, i64 88, !238, i64 96, !241, i64 104}
!256 = !{!"pt_solution", !238, i64 0, !238, i64 0, !238, i64 0, !238, i64 0, !238, i64 0, !238, i64 0, !232, i64 8}
!257 = !{!233, !233, i64 0}
!258 = !{!241, !232, i64 24}
!259 = !{!241, !232, i64 32}
!260 = !{!"branch_weights", i32 1, i32 10775}
!261 = !{!262, !232, i64 0}
!262 = !{!"ssa_operand_memory_d", !232, i64 0, !233, i64 8}
!263 = !{!"branch_weights", i32 10775, i32 19615}
!264 = distinct !{!264, !265}
!265 = !{!"llvm.loop.mustprogress"}
!266 = !{!267, !238, i64 0}
!267 = !{!"", !238, i64 0, !238, i64 4, !238, i64 8, !238, i64 12, !238, i64 16, !238, i64 20}
!268 = !{!267, !238, i64 4}
!269 = !{!267, !238, i64 8}
!270 = !{!267, !238, i64 12}
!271 = !{!267, !238, i64 16}
!272 = !{!267, !238, i64 20}
!273 = !{!"tree-ssa-operands.c:VEC_tree_heap_free"}
!274 = !{!"branch_weights", i32 1, i32 3}
!275 = !{!"function_entry_count", i64 0}
!276 = !{!277, !232, i64 0}
!277 = !{!"def_optype_d", !232, i64 0, !232, i64 8}
!278 = distinct !{!278, !265}
!279 = !{!280, !232, i64 0}
!280 = !{!"use_optype_d", !232, i64 0, !281, i64 8}
!281 = !{!"ssa_use_operand_d", !232, i64 0, !232, i64 8, !233, i64 16, !232, i64 24}
!282 = distinct !{!282, !265}
!283 = !{i8 0, i8 2}
!284 = !{!"function_entry_count", i64 3462603}
!285 = !{!"tree-ssa-operands.c:gimple_def_ops"}
!286 = !{!"branch_weights", i32 1, i32 3462604}
!287 = !{!"function_entry_count", i64 3463527}
!288 = !{!"tree-ssa-operands.c:gimple_use_ops"}
!289 = !{!"branch_weights", i32 1, i32 3463528}
!290 = !{!"function_entry_count", i64 2065290}
!291 = !{!"tree-ssa-operands.c:gimple_set_def_ops"}
!292 = !{!"branch_weights", i32 1, i32 2065291}
!293 = !{!"function_entry_count", i64 3072362}
!294 = !{!"tree-ssa-operands.c:delink_imm_use"}
!295 = !{!281, !232, i64 0}
!296 = !{!"branch_weights", i32 802407, i32 2269957}
!297 = !{!281, !232, i64 8}
!298 = !{!"tree-ssa-operands.c:gimple_set_use_ops"}
!299 = !{!"function_entry_count", i64 20502370}
!300 = !{!"tree-ssa-operands.c:gimple_has_mem_ops"}
!301 = !{i32 0, i32 256}
!302 = !{!"function_entry_count", i64 1368703}
!303 = !{!"tree-ssa-operands.c:gimple_set_vuse"}
!304 = !{!"branch_weights", i32 1, i32 1368704}
!305 = !{!"function_entry_count", i64 220929}
!306 = !{!"tree-ssa-operands.c:gimple_set_vdef"}
!307 = !{!"branch_weights", i32 1, i32 220930}
!308 = !{!"function_entry_count", i64 25371480}
!309 = !{!"tree-ssa-operands.c:gimple_has_ops"}
!310 = !{!"function_entry_count", i64 123652359}
!311 = !{!"tree-ssa-operands.c:gimple_code"}
!312 = !{!"function_entry_count", i64 4032415}
!313 = !{!"branch_weights", i32 569813, i32 3462604}
!314 = !{!"branch_weights", i32 3462604, i32 1}
!315 = !{!"tree-ssa-operands.c:gimple_modified_p"}
!316 = !{!"tree-ssa-operands.c:build_ssa_operands"}
!317 = !{!"function_entry_count", i64 3462612}
!318 = !{!"tree-ssa-operands.c:gimple_set_has_volatile_ops"}
!319 = !{!"branch_weights", i32 607421, i32 2855193}
!320 = !{!"tree-ssa-operands.c:start_ssa_stmt_operands"}
!321 = !{!"tree-ssa-operands.c:parse_ssa_operands"}
!322 = !{!"branch_weights", i32 3462603, i32 1}
!323 = !{!"branch_weights", i32 3153388, i32 3462603}
!324 = distinct !{!324, !265}
!325 = !{!"branch_weights", i32 395956, i32 3066649}
!326 = !{!"tree-ssa-operands.c:finalize_ssa_stmt_operands"}
!327 = !{!"function_entry_count", i64 19401610}
!328 = !{!"tree-ssa-operands.c:VEC_tree_base_length"}
!329 = !{!"branch_weights", i32 1, i32 19401611}
!330 = !{!331, !238, i64 0}
!331 = !{!"VEC_tree_base", !238, i64 0, !238, i64 4, !233, i64 8}
!332 = !{!"tree-ssa-operands.c:get_asm_expr_operands"}
!333 = distinct !{!333, !265}
!334 = distinct !{!334, !265}
!335 = distinct !{!335, !265}
!336 = !{!"function_entry_count", i64 17919454}
!337 = !{!"tree-ssa-operands.c:is_gimple_debug"}
!338 = !{!"tree-ssa-operands.c:gimple_debug_bind_p"}
!339 = !{!"tree-ssa-operands.c:gimple_debug_bind_has_value_p"}
!340 = !{!"function_entry_count", i64 16068807}
!341 = !{!"tree-ssa-operands.c:get_expr_operands"}
!342 = !{!"branch_weights", i32 1, i32 3760976}
!343 = !{!"branch_weights", i32 12307832, i32 1}
!344 = !{!"branch_weights", i32 1887905, i32 503454, i32 5301153, i32 1283813, i32 107396, i32 525, i32 1, i32 1, i32 1, i32 917452, i32 11856, i32 376850, i32 1, i32 1423010, i32 1, i32 1, i32 1, i32 152, i32 1, i32 1, i32 22779, i32 1, i32 79, i32 1, i32 1, i32 1, i32 1, i32 1, i32 315192, i32 1, i32 1, i32 1, i32 90984, i32 1, i32 65247}
!345 = !{!"branch_weights", i32 503454, i32 1}
!346 = !{!"branch_weights", i32 28502, i32 474953}
!347 = !{!"branch_weights", i32 3760976, i32 8546856}
!348 = !{!"branch_weights", i32 1799859, i32 1}
!349 = !{!"branch_weights", i32 1472, i32 -105414628, i32 1109499394, i32 1472}
!350 = !{!"branch_weights", i32 1423010, i32 1}
!351 = !{i32 0, i32 2}
!352 = distinct !{!352, !265}
!353 = !{!"branch_weights", i32 22779, i32 1}
!354 = !{!"branch_weights", i32 1087, i32 1886819}
!355 = !{!"branch_weights", i32 585197978, i32 -1408519661}
!356 = !{!"branch_weights", i32 3137539, i32 1}
!357 = !{!"tree-ssa-operands.c:gimple_debug_bind_get_value_ptr"}
!358 = !{!"function_entry_count", i64 9454854}
!359 = !{!"tree-ssa-operands.c:gimple_op_ptr"}
!360 = !{!"branch_weights", i32 1, i32 9454855}
!361 = !{!"function_entry_count", i64 10078593}
!362 = !{!"tree-ssa-operands.c:gimple_num_ops"}
!363 = !{!"function_entry_count", i64 395955}
!364 = !{!"tree-ssa-operands.c:maybe_add_call_vops"}
!365 = !{!"branch_weights", i32 395954, i32 3}
!366 = !{!"branch_weights", i32 326729, i32 69226}
!367 = !{!"branch_weights", i32 64247, i32 4980}
!368 = !{!"tree-ssa-operands.c:gimple_asm_noutputs"}
!369 = !{!"tree-ssa-operands.c:gimple_asm_output_op"}
!370 = !{!"function_entry_count", i64 504792}
!371 = !{!"tree-ssa-operands.c:mark_address_taken"}
!372 = !{!"branch_weights", i32 395522, i32 109272}
!373 = !{!"branch_weights", i32 40977, i32 68296}
!374 = !{!"tree-ssa-operands.c:gimple_asm_ninputs"}
!375 = !{!"tree-ssa-operands.c:gimple_asm_input_op"}
!376 = !{!"tree-ssa-operands.c:gimple_asm_nclobbers"}
!377 = !{!"tree-ssa-operands.c:gimple_asm_clobber_op"}
!378 = !{!"function_entry_count", i64 1674068}
!379 = !{!"tree-ssa-operands.c:add_virtual_operand"}
!380 = !{!"branch_weights", i32 1645568, i32 28502}
!381 = !{!"branch_weights", i32 1645568, i32 1}
!382 = !{!"branch_weights", i32 1076841, i32 568728}
!383 = !{!"tree-ssa-operands.c:gimple_op"}
!384 = !{!"tree-ssa-operands.c:gimple_ops"}
!385 = !{!386, !386, i64 0}
!386 = !{!"long", !233, i64 0}
!387 = !{!"tree-ssa-operands.c:gimple_statement_structure"}
!388 = !{!"tree-ssa-operands.c:gss_for_code"}
!389 = !{!"function_entry_count", i64 568727}
!390 = !{!"tree-ssa-operands.c:append_vdef"}
!391 = !{!"branch_weights", i32 1, i32 568728}
!392 = !{!"branch_weights", i32 568500, i32 229}
!393 = !{!"branch_weights", i32 229, i32 1}
!394 = !{!"branch_weights", i32 567628, i32 1101}
!395 = !{!"branch_weights", i32 1101, i32 1}
!396 = !{!"function_entry_count", i64 2930835}
!397 = !{!"tree-ssa-operands.c:gimple_vop"}
!398 = !{!"branch_weights", i32 1, i32 2930836}
!399 = !{!"function_entry_count", i64 1076840}
!400 = !{!"tree-ssa-operands.c:append_vuse"}
!401 = !{!"branch_weights", i32 1, i32 1076841}
!402 = !{!"branch_weights", i32 1071830, i32 5012}
!403 = !{!"branch_weights", i32 5012, i32 1}
!404 = !{!"function_entry_count", i64 6692883}
!405 = !{!"tree-ssa-operands.c:add_stmt_operand"}
!406 = !{!"branch_weights", i32 527, i32 677124660, i32 56644125, i32 276901, i32 -1498968651}
!407 = !{!"branch_weights", i32 359, i32 -747416546, i32 264796207, i32 359}
!408 = !{!"branch_weights", i32 5301153, i32 1391732}
!409 = !{!"branch_weights", i32 6692875, i32 10}
!410 = !{!"branch_weights", i32 353789, i32 6339096}
!411 = !{!"branch_weights", i32 3911743, i32 2427354}
!412 = !{!"function_entry_count", i64 917451}
!413 = !{!"tree-ssa-operands.c:get_indirect_ref_operands"}
!414 = !{!"branch_weights", i32 917452, i32 1}
!415 = !{!"function_entry_count", i64 11855}
!416 = !{!"tree-ssa-operands.c:get_tmr_operands"}
!417 = !{!"branch_weights", i32 11856, i32 1}
!418 = !{!"branch_weights", i32 10517, i32 1340}
!419 = !{!"tree-ssa-operands.c:VEC_constructor_elt_base_iterate"}
!420 = !{!421, !238, i64 0}
!421 = !{!"VEC_constructor_elt_base", !238, i64 0, !238, i64 4, !233, i64 8}
!422 = !{!"function_entry_count", i64 2427353}
!423 = !{!"tree-ssa-operands.c:append_def"}
!424 = !{!"function_entry_count", i64 3911742}
!425 = !{!"tree-ssa-operands.c:append_use"}
!426 = !{!"function_entry_count", i64 6339095}
!427 = !{!"tree-ssa-operands.c:VEC_tree_heap_safe_push"}
!428 = !{!"function_entry_count", i64 8547050}
!429 = !{!"tree-ssa-operands.c:VEC_tree_heap_reserve"}
!430 = !{!"branch_weights", i32 2, i32 8547050}
!431 = !{!"tree-ssa-operands.c:VEC_tree_base_quick_push"}
!432 = !{!"tree-ssa-operands.c:VEC_tree_base_space"}
!433 = !{!"branch_weights", i32 1, i32 8547051}
!434 = !{!331, !238, i64 4}
!435 = !{!"tree-ssa-operands.c:finalize_ssa_defs"}
!436 = !{!"branch_weights", i32 -164677550, i32 1192}
!437 = !{!"branch_weights", i32 2442910, i32 1}
!438 = !{!"branch_weights", i32 2894105, i32 568500}
!439 = !{!"branch_weights", i32 216395, i32 352106}
!440 = !{!"branch_weights", i32 109115, i32 242992}
!441 = !{!"branch_weights", i32 352106, i32 216395}
!442 = !{!"branch_weights", i32 0, i32 -2147483648}
!443 = !{!"branch_weights", i32 2889570, i32 4536}
!444 = !{!"branch_weights", i32 4536, i32 1}
!445 = !{!"branch_weights", i32 109115, i32 459386}
!446 = !{!"branch_weights", i32 1965940, i32 1496665}
!447 = !{!"branch_weights", i32 -454470207, i32 258607999}
!448 = !{!277, !232, i64 8}
!449 = !{!"branch_weights", i32 1397314, i32 4931}
!450 = !{!"branch_weights", i32 466751, i32 1598540}
!451 = !{!"branch_weights", i32 1598540, i32 0}
!452 = distinct !{!452, !265}
!453 = !{!"tree-ssa-operands.c:finalize_ssa_uses"}
!454 = !{!"branch_weights", i32 1823148, i32 1639457}
!455 = !{!"branch_weights", i32 642635, i32 996823}
!456 = !{!"branch_weights", i32 295180, i32 701644}
!457 = !{!"branch_weights", i32 996823, i32 642635}
!458 = !{!"branch_weights", i32 1739713, i32 83436}
!459 = !{!"branch_weights", i32 1717525, i32 1745080}
!460 = !{!"branch_weights", i32 1745080, i32 1255569}
!461 = distinct !{!461, !265}
!462 = !{!"branch_weights", i32 1, i32 3462603}
!463 = !{!"branch_weights", i32 2088596, i32 3462603}
!464 = distinct !{!464, !265}
!465 = !{!"tree-ssa-operands.c:cleanup_build_arrays"}
!466 = !{!"function_entry_count", i64 8076558}
!467 = !{!"tree-ssa-operands.c:gimple_vdef"}
!468 = !{!"branch_weights", i32 1215209, i32 6861351}
!469 = !{!"function_entry_count", i64 2207955}
!470 = !{!"tree-ssa-operands.c:VEC_tree_heap_safe_insert"}
!471 = !{!"function_entry_count", i64 568499}
!472 = !{!"tree-ssa-operands.c:gimple_vdef_ptr"}
!473 = !{!"branch_weights", i32 1, i32 568500}
!474 = !{!"function_entry_count", i64 80394}
!475 = !{!"branch_weights", i32 52722, i32 27674}
!476 = !{!"branch_weights", i32 17003, i32 10672}
!477 = !{!"branch_weights", i32 17002, i32 1}
!478 = !{!"branch_weights", i32 35168, i32 1}
!479 = !{!"branch_weights", i32 853, i32 35168}
!480 = distinct !{!480, !265}
!481 = !{!"branch_weights", i32 18167, i32 17002}
!482 = distinct !{!482, !265}
!483 = !{!"branch_weights", i32 17003, i32 1}
!484 = !{!"function_entry_count", i64 8551980}
!485 = !{!"tree-ssa-operands.c:VEC_tree_base_index"}
!486 = !{!"function_entry_count", i64 1598539}
!487 = !{!"tree-ssa-operands.c:add_def_op"}
!488 = !{!"tree-ssa-operands.c:VEC_tree_base_quick_insert"}
!489 = !{!"tree-ssa-operands.c:alloc_def"}
!490 = !{!"branch_weights", i32 1499199, i32 99342}
!491 = !{!"function_entry_count", i64 5306070}
!492 = !{!"tree-ssa-operands.c:ssa_operand_alloc"}
!493 = !{!"branch_weights", i32 5275682, i32 30390}
!494 = !{!"branch_weights", i32 1, i32 10712, i32 8361, i32 4044, i32 7276}
!495 = !{!"function_entry_count", i64 5138079}
!496 = !{!"tree-ssa-operands.c:gimple_vuse"}
!497 = !{!"branch_weights", i32 607421, i32 4530660}
!498 = !{!"function_entry_count", i64 1639456}
!499 = !{!"tree-ssa-operands.c:gimple_vuse_ptr"}
!500 = !{!"branch_weights", i32 1, i32 1639457}
!501 = !{!"function_entry_count", i64 5551198}
!502 = !{!"tree-ssa-operands.c:add_use_op"}
!503 = !{!280, !232, i64 32}
!504 = !{!"tree-ssa-operands.c:alloc_use"}
!505 = !{!"branch_weights", i32 3806873, i32 1744327}
!506 = !{!"tree-ssa-operands.c:link_imm_use_stmt"}
!507 = !{!"branch_weights", i32 1, i32 5551199}
!508 = !{!"function_entry_count", i64 5587218}
!509 = !{!"tree-ssa-operands.c:link_imm_use"}
!510 = !{!"branch_weights", i32 1, i32 5587219}
!511 = !{!"branch_weights", i32 3647315, i32 1939905}
!512 = !{!"function_entry_count", i64 3683008}
!513 = !{!"tree-ssa-operands.c:link_imm_use_to_list"}
!514 = !{!"function_entry_count", i64 6925206}
!515 = !{!"tree-ssa-operands.c:VEC_tree_base_truncate"}
!516 = !{!"branch_weights", i32 1, i32 6925207}
!517 = !{!"function_entry_count", i64 462}
!518 = !{!"branch_weights", i32 927, i32 214369}
!519 = !{!"branch_weights", i32 1, i32 127}
!520 = !{!"branch_weights", i32 463, i32 1}
!521 = !{!"branch_weights", i32 127, i32 59137}
!522 = distinct !{!522, !265}
!523 = !{!"branch_weights", i32 365, i32 463}
!524 = !{!"branch_weights", i32 197, i32 1457}
!525 = distinct !{!525, !265}
!526 = !{!"branch_weights", i32 4075351, i32 2143408297}
!527 = !{!281, !232, i64 24}
!528 = distinct !{!528, !265}
!529 = distinct !{!529, !265}
!530 = !{!"function_entry_count", i64 109906}
!531 = !{!"tree-ssa-operands.c:get_use_from_ptr"}
!532 = distinct !{!532, !265}
!533 = !{!"tree-ssa-operands.c:has_zero_uses"}
!534 = !{!"tree-ssa-operands.c:has_single_use"}
!535 = !{!"tree-ssa-operands.c:num_imm_uses"}
!536 = distinct !{!536, !265}
!537 = distinct !{!537, !265}
!538 = !{!"tree-ssa-operands.c:first_readonly_imm_use"}
!539 = !{!540, !232, i64 8}
!540 = !{!"immediate_use_iterator_d", !232, i64 0, !232, i64 8, !281, i64 16, !232, i64 48}
!541 = !{!540, !232, i64 0}
!542 = !{!"tree-ssa-operands.c:end_readonly_imm_use_p"}
!543 = !{!"tree-ssa-operands.c:next_readonly_imm_use"}
!544 = !{!255, !232, i64 16}
!545 = distinct !{!545, !265}
!546 = !{!"function_entry_count", i64 17002}
!547 = !{!"tree-ssa-operands.c:first_imm_use_stmt"}
!548 = !{!"branch_weights", i32 15694, i32 1310}
!549 = !{!"function_entry_count", i64 104340}
!550 = !{!"tree-ssa-operands.c:end_imm_use_stmt_p"}
!551 = !{!"function_entry_count", i64 35168}
!552 = !{!"tree-ssa-operands.c:first_imm_use_on_stmt"}
!553 = !{!540, !232, i64 48}
!554 = !{!"function_entry_count", i64 107208}
!555 = !{!"tree-ssa-operands.c:end_imm_use_on_stmt_p"}
!556 = !{!"function_entry_count", i64 36020}
!557 = !{!"tree-ssa-operands.c:set_ssa_use_from_ptr"}
!558 = !{!"tree-ssa-operands.c:next_imm_use_on_stmt"}
!559 = !{!"branch_weights", i32 853, i32 35169}
!560 = !{!"tree-ssa-operands.c:next_imm_use_stmt"}
!561 = !{!540, !232, i64 24}
!562 = !{!"branch_weights", i32 19476, i32 15694}
!563 = !{!540, !232, i64 16}
!564 = !{!"branch_weights", i32 1, i32 15694}
!565 = !{!"tree-ssa-operands.c:link_use_stmts_after"}
!566 = !{!"branch_weights", i32 7635, i32 27535}
!567 = !{!"branch_weights", i32 7634, i32 1}
!568 = !{!"branch_weights", i32 8487, i32 38719}
!569 = !{!"branch_weights", i32 39571, i32 7634}
!570 = distinct !{!570, !265}
!571 = !{!"branch_weights", i32 27535, i32 1}
!572 = distinct !{!572, !265}
!573 = !{!"branch_weights", i32 1, i32 27535}
!574 = !{!"branch_weights", i32 15694, i32 19476}
!575 = !{!"function_entry_count", i64 7634}
!576 = !{!"tree-ssa-operands.c:op_iter_init_phiuse"}
!577 = !{!578, !233, i64 0}
!578 = !{!"ssa_operand_iterator_d", !233, i64 0, !238, i64 4, !232, i64 8, !232, i64 16, !238, i64 24, !238, i64 28, !232, i64 32}
!579 = !{!"branch_weights", i32 1, i32 7635}
!580 = !{!578, !232, i64 32}
!581 = !{!578, !238, i64 28}
!582 = !{!578, !238, i64 4}
!583 = !{!"function_entry_count", i64 54838}
!584 = !{!"tree-ssa-operands.c:op_iter_done"}
!585 = !{!"tree-ssa-operands.c:move_use_after_head"}
!586 = !{!"branch_weights", i32 35169, i32 853}
!587 = !{!"branch_weights", i32 327, i32 527}
!588 = !{!"tree-ssa-operands.c:op_iter_next_use"}
!589 = !{!578, !232, i64 16}
!590 = !{!"branch_weights", i32 54839, i32 1}
!591 = !{!578, !238, i64 24}
!592 = !{!"branch_weights", i32 47205, i32 7635}
!593 = !{!"tree-ssa-operands.c:op_iter_init_use"}
!594 = !{!"function_entry_count", i64 27534}
!595 = !{!"tree-ssa-operands.c:gimple_vuse_op"}
!596 = !{!"tree-ssa-operands.c:gimple_phi_result"}
!597 = !{!"tree-ssa-operands.c:clear_and_done_ssa_iter"}
!598 = !{!"tree-ssa-operands.c:gimple_phi_num_args"}
!599 = !{!"function_entry_count", i64 47204}
!600 = !{!"tree-ssa-operands.c:gimple_phi_arg_imm_use_ptr"}
!601 = !{!"tree-ssa-operands.c:gimple_phi_arg"}
!602 = !{!"branch_weights", i32 1, i32 47205}
!603 = !{!"tree-ssa-operands.c:op_iter_init"}
!604 = !{!578, !232, i64 8}
